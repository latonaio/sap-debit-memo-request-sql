# sap-debit-memo-request-sql

sap-debit-memo-request-sql は、主にエッジアプリケーションにおいて、SAPと連携されたデビットメモ依頼データを保存するSQLテーブルを作成するためのレポジトリです。    
sap-debit-memo-request-sql は、そのままクラウド環境におけるアプリケーションにも、適用可能です。    

## 前提条件  
sap-debit-memo-request-sql は、SQL の SAP とのデータ連携にあたり、オンプレミス版である（＝クラウド版ではない）SAPS4HANA API の利用を前提としています。    
クラウド版APIを利用する場合は、ご注意ください。  
https://api.sap.com/api/OP_API_DEBIT_MEMO_REQUEST_SRV_0001/overview     
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。    

## sqlの設定ファイル

sap-debit-memo-request-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* sap-debit-memo-request-sql-header-data.sql（SAP デビットメモ依頼 - ヘッダデータ）
* sap-debit-memo-request-sql-header-partner-data.sql（SAP デビットメモ依頼 - ヘッダ取引先データ）
* sap-debit-memo-request-sql-item-data.sql（SAP デビットメモ依頼 - 明細データ）  
* sap-debit-memo-request-sql-item-pricing-element-data.sql（SAP デビットメモ依頼 - 明細価格条件データ）  

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  