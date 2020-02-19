'use strict';

const AWS = require('../Network.AWS').aws();

exports.getConfig = aws => {
    return aws.config;
};

exports.getPromisesDependency = () => {
    return AWS.config.getPromisesDependency();
};

exports.loadConfigFromPath = path => {
    return () => {
        return AWS.config.loadFromPath(path);
    };
};

exports.updateConfig = options => {
    return () => {
        AWS.config.update(options);
    };
};

exports.setPromisesDependency = dep => {
    return () => {
        AWS.config.setPromisesDependency(dep);
    };
};
