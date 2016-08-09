# GoT Hijack

In this challenge competitors are provided with an executable binary running on a remote server and they must use the binary to retrieve access to a file that they do not have permission to.

## Solution

TODO

## Distribution

To run/set-up docker testing 

     docker build -t got-hijack .
     docker run -p 2222:22 --read-only --tmpfs /tmp got-hijack

     rm ~/.ssh/known_hosts
     ssh challenge@localhost -p2222
     