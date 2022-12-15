module storageAccounts {
  param kind {
    type: string
    allowedValues: [ 'BlobStorage', 'FileStorage', 'BlockBlobStorage' ]
  }

  param accessTier {
    type: string
    allowedValues: [ 'Hot', 'Cool' ]
  }

  param location default: resourceGroup().location {
    type: string
  }

  for i in [1, 2] {
    storageAccount storageAccount${i} {
      name: "<yourname>finalexam${i}"
      location: location
      kind: kind
      accessTier: accessTier
    }
  }
}
