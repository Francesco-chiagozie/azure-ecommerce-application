Performance Testing and Validation



Test Environment



\-Cloud platform: Microsoft Azure

\-Operating system: Ubuntu 24.04.4 LTS

\-Web server: Nginx

\-Test method: HTTP requests issued from a Windows laptop using PowerShell and curl

\-Target: Public IP address of the Azure virtual machine



Baseline Results



| Test                             | Requests | Successful Responses | Success Rate | Average Response Time |

| -------------------------------- | -------: | -------------------: | -----------: | --------------------: |

| Initial sample                   |        3 |                    3 |         100% |             197.40 ms |

| Sequential request test          |       20 |                   20 |         100% |             207.13 ms |

| Larger sequential test           |       50 |                   50 |         100% |             219.28 ms |

| Additional background-job sample |       20 |                   20 |         100% |             210.16 ms |



Observations



\-All recorded requests returned HTTP 200 during the tests.

\-Average response times ranged from approximately 197 ms to 219 ms across the samples.

\-The additional PowerShell background-job test was exploratory; simultaneous execution was not independently verified.



Limitations



These measurements represent short-duration tests of a single virtual machine. They do not establish long-term availability, production capacity, or high availability. Network conditions and test-client overhead may affect response times.



Future Improvements



\-Perform a controlled concurrent-request test.

\-Configure Azure Monitor to collect VM and application metrics.

\-Repeat tests after infrastructure improvements and compare results using the same methodology.



Performance Testing



Overview



A PowerShell script (`performance-test.ps1`) was created to test the response time and availability of the deployed Azure virtual machine web server.



Test Results



\-HTTP Status Code: 200 (OK)

\-Average Response Time: Approximately 0.20 seconds across the initial three tests.

\-Web Server: Nginx running on Ubuntu 24.04 LTS

\-Testing Tool: PowerShell



Key Findings



The web server successfully returned HTTP 200 responses during testing, indicating that the website was reachable and responding to requests.



Future Improvements



\-Conduct larger-scale load testing.

\-Configure Azure Monitor to track server performance.

\-Explore Azure Application Gateway and Virtual Machine Scale Sets to improve availability and scalability.



