#!/bin/bash
sanity documents query --api-version v2022-06-01  '*[_type == "catalog"]._id' | jq -r '.[]' | while read id; do sanity documents delete $id; done
sanity documents query --api-version v2022-06-01  '*[_type == "taxonomy"]._id' | jq -r '.[]' | while read id; do sanity documents delete $id; done
sanity documents query --api-version v2022-06-01  '*[_type == "taxon"]._id' | jq -r '.[]' | while read id; do sanity documents delete $id; done
sanity documents query --api-version v2022-06-01  '*[_type == "product"]._id' | jq -r '.[]' | while read id; do sanity documents delete $id; done
sanity documents query --api-version v2022-06-01  '*[_type == "variant"]._id' | jq -r '.[]' | while read id; do sanity documents delete $id; done

# remove webhooks
sanity hook list | grep Name: | while read name; do sanity hook delete ${name/Name: /}; done


