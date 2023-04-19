### Ruby version
  - ruby "3.0.4"
  - rails 7
 
### System dependencies
  - **redis-server** for turbo stream
  
### Run
- install gems
  ```console
    bundle install
  ```
- Db: migrate + seed
  ```console
    rails db:migrate
    rails db:seed
  ```
- Start server
  ```console
    rails s
  ```

