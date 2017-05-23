import './libs/rxjs';
import modelFactory from 'open-physiology-model';
import {loadData, exportData, simplifyData} from './loadData';

let modelRef = modelFactory();
global.module = modelRef;
loadData(modelRef.classes);
exportData(modelRef.classes);

//Generate JSON file with simple definition of lyphs and materials
//simplifyData();
