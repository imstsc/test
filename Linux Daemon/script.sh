[Unit]
Description=simple daemon
After=network.target
Wants=application.service

[Service]
User=app
Group=app
WorkingDirectory=/opt/my-app/app
ExecStart=/opt/my-app/app --bind-adress:0.0.0.0

[Install]
WantedBy=multi-user.target





