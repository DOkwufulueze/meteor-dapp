import { Template } from 'meteor/templating';

import './main.html';

Template.block.onCreated(function blockOnCreated() {
  EthBlocks.init();
});

Template.block.helpers({
  currentBlock() {
    return EthBlocks.latest.number;
  }
});
