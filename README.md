# Ansible role: `setup-secure-remote-docker-daemon`

Setup and secure a Docker daemon remotely accessible via TLS.

## Requirements

No requirements. The role will install Docker before setting it up.

## Role Variables

### Required parameters

* **rootca_certificate:** Certificate of the RootCA to trust when authenticating client. As Text
* **server_certificate:** Server certificate to authenticate Docker server. As Text
* **server_privatekey:** Server privatekey corresponding to the certificate. As Text

### Optional

* **docker_port:** 2376
* **certificates_dir[default=/docker-tls]:** Where to store certificates on the remote machine

* **cert_filename[default=server-certificate.pem]:** Filename, on the remote machine, of the Server certificate 
* **privkey_filename[default=server-privatekey.pem]:**  Filename, on the remote machine, of the Server private key
* **cacert_filename[default=rootca-certificate.pem]:**  Filename, on the remote machine, of the RootCA certificate

## Example Playbook

Here is an example of a playbook using the Role.  
In that example certificates/privkey are read from files using the `lookup` method from **jinja2**

    - hosts: sandbox

      vars:
        certdir: "/home/my_certificate_directory"

      tasks:
        - include_role:
            name: FlorianKempenich.setup-secure-remote-docker-daemon
          vars:
            rootca_certificate: "{{ lookup('file', '{{ certdir }}/rootca-certificate.pem') }}"
            server_certificate: "{{ lookup('file', '{{ certdir }}/server/server-certificate.pem') }}"
            server_privatekey: "{{ lookup('file',  '{{ certdir }}/server/server-privatekey.pem') }}"


## License

MIT

## Author Information

Follow my work on [The Professional Beginner](https://professionalbeginner.com)
