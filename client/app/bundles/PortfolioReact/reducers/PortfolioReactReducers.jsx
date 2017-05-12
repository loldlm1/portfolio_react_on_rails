import { combineReducers } from 'redux';
import * as actionTypes from '../constants/PortfolioReactConstants';

const name = (state = '', action) => {
  switch (action.type) {
    case HELLO_WORLD_NAME_UPDATE:
      return action.text;
    default:
      return state;
  }
};

const helloWorldReducer = combineReducers({ name });

export default helloWorldReducer;
