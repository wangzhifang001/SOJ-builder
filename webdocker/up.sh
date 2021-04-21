#!/bin/bash
service ntp restart
service apache2 restart
service mysql restart
exec bash