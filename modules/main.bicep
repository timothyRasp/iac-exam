param deployApp {
  type: bool
}

param MYSECRET {
  type: string
}

module storageAccounts {
  // ...
}

storageAccounts storageAccounts1 {
  kind: 'BlobStorage'
  accessTier: 'Hot'
}

appServicePlan appServicePlan1 {
  name: "<your name>-asp"
  sku: 'B1'
}

if deployApp {
  webApp webApp1 {
    name: "<your name>-app"
    appServicePlan: appServicePlan1
    appSettings: [
      'MYSECRET': MYSECRET
    ]
  }
}

