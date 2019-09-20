# twilio-action


🚨 Very much a WIP!


```yaml
name: Twilio stuff
on: push

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
    - name: List my registered phone numbers
      uses: jakejarvis/twilio-action@master
      with:
        args: phone-numbers:list
      env:
        TWILIO_ACCOUNT_SID: ${{ secrets.TWILIO_ACCOUNT_SID }}
        TWILIO_AUTH_TOKEN: ${{ secrets.TWILIO_AUTH_TOKEN }}
```
