import modelFactory from 'open-physiology-model';
import {loadData, exportData} from './loadData';

let modelRef = modelFactory();
global.module = modelRef;
loadData(modelRef.classes);
exportData(modelRef.classes);
