provider "aws" {
    region = "us-west-2"

    default_tags  {
    tags = {
        environment = "DEV"
        application = "TradeStation-test"
        }
    }
}

module "trate-station-test" {
    source = "github.com/jparata19/trade-station-common-modules//common-modules?ref=main"
    bucket_name = "bull-media"
}