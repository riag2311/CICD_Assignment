FROM pandas/pandas

ENV APP /app

WORKDIR $APP

COPY . $APP

RUN python3 -m pip install --no-cache-dir -r $APP/requirements.txt

RUN python3 $APP/train.py

RUN chmod +x $APP/test.py

ENTRYPOINT $APP/test.py
