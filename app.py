def handler(event, context):
    return {
        'body': 'Hello world',
        'headers': {
            'Content-Type': 'text/plain'
        },
        'statusCode': 200
    }
