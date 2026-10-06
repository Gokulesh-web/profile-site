param name string = 'gokulesh-profile'
param location string = 'eastasia' // SWA regions: westus2, centralus, eastus2, westeurope, eastasia

resource swa 'Microsoft.Web/staticSites@2023-12-01' = {
  name: name
  location: location
  sku: { name: 'Free', tier: 'Free' }
  properties: {}
}

output url string = 'https://${swa.properties.defaultHostname}'
