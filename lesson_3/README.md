# System design. Technical requirements

[Notion link](https://flame-chips-9f3.notion.site/System-Design-186e6a9d0269807d9a82f91c00285d25?pvs=4)

## Technical requirements for a social network like Facebook

1. Define functional and non-functional requirements.  
2. Approximately calculate:  
   - The database size required to store messages for 5 years.  
   - Incoming traffic for creating posts.  
   - The number of disks needed to store data for 5 years.  
   - RPS (Requests Per Second) for creating and reading posts.  


**Functional requirements**:

| Friends | add/delete/view |
| --- | --- |
| Feed  | post/view |
| Feed type | home/user |
| Posts | post/edit/delete |
| Post type | text / text + media |
| User profile | add/edit/view |

**Non-functional requirements**:

| DAU | 70,000,000 |
| --- | --- |
| Avg. post size | 4000 bytes |
| Max. post size | 10000 bytes |
| Avg. post read / day | 20 |
| Avg. post write / day | 5 |
| Avg. profile view / day | 10 |
| Response time send | 1 s |
| Response time read | 5 s |
| Post storage age | Infinity |
| Max group members count | 1000 |
| Max channel subscribers | 100,000 |
| Users geolocation/region | USA/EU |

**Load**:

| Avg.post size | 4000 bytes / 4 kb |  |
| --- | --- | --- |
| RPS read  | 70,000,000 * 20 / 86400 | 16200  |
| Bandwidth read / second | 16200 * 4000 | 64mb / s |
| Bandwidth read / day | 64mb * 86400 | 5.5 gb / day |
| RPS write  | 70,000,000 * 5 / 86400 | 4050  |
| Bandwidth write / second | 4050 * 4000 | 1.6mb / s |
| Bandwidth write / day | 1.6mb * 86400  | 138 gb / day |
| Bandwidth write / year | 138 * 365 | 50 TB |
| Total bandwidth / year | 50 + (50*4)  | 250 TB |
| Storage 1 year |  | 250 TB |
| Storage approx for 5 years  | 250*5 | 1.25 PT |
| Replication factor of 3 | 1.25 * 3 | 3.75 PT |
| + backups | ~ 10-25% | 4-4.5 PT |
|  |  |  |
| **Total Disks** | **1 replica + backups** |  |
| 1 year | 300 TB / 6 TB(DISK) | 50 disks |
| Shards | 50 disks / 8 disks per physical server | 7 shards + each to have 2 replicas |
|  |  |  |
| 5 years | 1.5 PT / 6 TB | 250 disks |
|  | 250 / 8  | 32 shards + each to have 2 replicas |
|  |  |  |