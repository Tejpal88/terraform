rg-details = {
  Tejpal = "Brazil South"
}

stg-details = {
  sa1 = {
    name                     = "tejpal4647392vats"
    resource_group_name      = "Tejpal"
    location                 = "south india"
    account_replication_type = "LRS"
  }
  sa2 = {
    name                     = "amit7392kjfsakjfvats"
    resource_group_name      = "Amit"
    location                 = "Brazil South"
    account_replication_type = "LRS"
  }
  sa3 = {
    name                     = "yogesh7392kjisakjfvats"
    resource_group_name      = "Yogesh"
    location                 = "east us"
    account_replication_type = "LRS"
  }
}

vnet-details = {
  vnet1 = {
    name                = "Tejpal-network"
    location            = "Brazil South"
    resource_group_name = "Tejpal"
    address_space       = ["10.0.0.0/16"]
  }


}

subnet-details = {
  subnet1 = {
    name                 = "Tejpal-subnet"
    resource_group_name  = "Tejpal"
    virtual_network_name = "Tejpal-network"
    address_prefixes     = ["10.0.0.0/24"]
    location             = "Brazil South"
    security_name        = "rule1"
    nsg_name             = "nsg1"
  }

  # subnet3 = {
  #   name                 = "Tejpal-subnet2"
  #   resource_group_name  = "Tejpal"
  #   virtual_network_name = "Tejpal-network"
  #   address_prefixes     = ["10.0.2.0/24"]
  #  location="Brazil South"
  #  security_name="rule3"
  #  nsg_name="nsg3"
  # }
  # subnet4 = {
  #   name                 = "Tejpal-subnet3"
  #   resource_group_name  = "Tejpal"
  #   virtual_network_name = "Tejpal-network"
  #   address_prefixes     = ["10.0.3.0/24"]
  #  location="Brazil South"
  #  security_name="rule4"
  #  nsg_name="nsg4"
  # }
}


vm-details = {
  Frontendvm = {
    resource_group_name = "Tejpal"
    location            = "Brazil South"
    size                = "Standard_F2"
    sub_name            = "Tejpal-subnet"
    virtual_net_name    = "Tejpal-network"

  }
  Backendvm = {
    resource_group_name = "Tejpal"
    location            = "Brazil South"
    size                = "Standard_F2"
    sub_name            = "Tejpal-subnet"
    virtual_net_name    = "Tejpal-network"
  }
}

bastion-details = {
  bas1 = {
    pip_name             = "Bation-pip"
    location             = "Brazil South"
    resource_group_name  = "Tejpal"
    bas_name             = "Tejpal-bastion"
    ip_bas_name          = "Tejpal-configuration"
    virtual_network_name = "Tejpal-network"
    address_prefixes     = ["10.0.1.0/26"]
  }
}
