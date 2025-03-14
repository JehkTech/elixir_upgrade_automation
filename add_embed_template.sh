#!/bin/bash

# Loop through all files ending with `HTML.ex` in the `smartpay_web/controllers` directory
# for file in smartpay_web/controllers/*HTML.ex; do
for file in *html.ex; do
  # Extract the module name (e.g., "AirtelWalletTxn" from "AirtelWalletTxnHTML.ex")
  module_name=$(basename "$file" .ex)

  # Construct the template directory name (e.g., "airtel_wallet_txn_html")
  template_dir="${module_name,,}_html"  # Convert to lowercase

  # Add the `embed_templates` line after the `use SmartpayWeb, :html` line
  sed -i "/use SmartpayWeb, :html/a \  embed_templates \"${template_dir}/*\"" "$file"
done