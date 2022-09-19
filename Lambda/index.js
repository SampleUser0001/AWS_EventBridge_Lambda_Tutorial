'use strict';

exports.handler = (event, context, callback) => {
    console.log('calledByEventBridge');
    console.log('Received event:', JSON.stringify(event, null, 2));
    callback(null, 'Finished');
};
