

setupMagicDomainPublicIp() {
  echo "Setting up the Domain"
  if [ -n "${DOMAIN}" ]; then
    echo "The following domain is defined: $DOMAIN"
    export DOMAIN
  else
    echo "No DOMAIN is defined, getting the CODESPACE Domain for port"
    DOMAIN=$CODESPACE_NAME-80.$GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN
    export DOMAIN=$DOMAIN
    echo "codespace domain: $DOMAIN"
  fi
  # Now we save the DOMAIN in a ConfigMap
  kubectl create configmap -n default domain --from-literal=domain=${DOMAIN}
}

readDomain(){
    DOMAIN=$(kubectl get configmap domain -n default -ojsonpath={.data.domain})
    # -n verify if the variable is non-zero
    if [ -n "${DOMAIN}" ]; then
      echo "The following domain is defined in the configmap: $DOMAIN"
      echo "kubectl get cm -n default domain -o=jsonpath='{.data.domain}'"
      export DOMAIN
    else
      echo "The Domain is not defined."
      echo "Setting it up from public ip"
      setupMagicDomainPublicIp
    fi
}
readDomain