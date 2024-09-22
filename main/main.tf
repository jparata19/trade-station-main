provider "aws" {
    region = "us-west-2"

    default_tags{
        environment = "DEV"
        application = "TradeStation-test"
    }
}

module "trate-station-test" {
#    source = "https://github.com/jparata19/trade-station-common-modules//common-modules?ref=main"
    source = ""
    bucket_name = "bull-media"
}