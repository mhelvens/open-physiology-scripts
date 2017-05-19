# apinatomy-data-converter

This is a script that generates open physiology model resources from MySQL data.

The input data is in the JSON format (apinatomyData.json file).
To obtain these data from the SQL file or another format recognized by MySQL (e.g. CSV):

1) Import the source file (.sql, .csv, etc) to a MySQL database and re-import the whole data as JSON.
2) In the created file (apiNatomomyJSON.txt), replace \' with '
3) To import the data with ES6 loaders, name the arrays in the JSON file (e.g., lyphs, relations, edges, trees),
 	and wrap them to a signle object, e.g., {lyphs: [], relations: [], edges: [], trees: []}.


************************************************
The input data description (by Bernard de Bono):
************************************************

The SQL file can be imported into, say, MySQL to create a database with 6 tables. In practice, only 4 tables are currently relevant: temp_neuro_edges, lyphs, relations, trees

Table: lyphs
Col1: ID;
Col2: Type [Terms allowed are so far: {BAG, GEOMETRIC, MATERIAL, CYST, TUBE, COALESCENCE GROUP}] - COALESCENCE GROUP can be ignored for now;
Col3: name [Text label of lyph] - the name of lyphs that are trees ends with the string "tree" (sorry about this fudge);
Col4: thickness [A range of integer values for the thickness of the lyph delimited by '..' - e.g. 0..2, represents a dimensional scale from 10^0m and 10^-2 m];
Col5: lgth [A range of integer values for the length of the lyph, representing dimensional scales as in Col4];
Col6: ontoref [External reference ontology ID].

Table: relations
Col1: ID;
Col2: relation [Terms allowed so far are: {is_layer_of_in_position, is_housed_in, has_material_type}] - has_material type can be ignored for now;
Col3: subject [lyph ID];
Col4: object [lyph ID];
Col5: extra [used when relation is ternary] - e.g. for layer numbering;
Col6: publicationIDs [not used].

Table: trees
Col1: ID;
Col2: in_lyph [lyph ID of whole tree];
Col3: lyph [lyph ID of lyph conveying flow at that level];
Col4: level [integer enumerating the level in a canonical tree model, value 1 representing the edge closest to the root node];
Col5: branch_factor [A range of integer values x..y for the number of branches emanating from this level n to the next, n+1 - i.e. if the canonical tree model is used to emit a tree, a branch at this level n may emit between x and y of level n+1 branches];
Col6: thickness [scales represented as per lyph table];
Col7: lgth [scales represented as per lyph table];

Table: temp_neuro_edges
Col1: ID;
Col1: lyph_node1 [lyph ID of one of two nodes of an edge representing a neural connection];
Col1: lyph_node2 [lyph ID of the other of two nodes of an edge representing a neural connection];
Col4: label [text label for edge representing a neural connection];

So far, the database only deals with lyphs (i.e. no process edges are described - in that sense, therefore, the PDF is misleading: for example, the green circular process representing outer epithelial flow in the PDF is not represented anywhere on the database).

A number of layered lyphs are defined via the is_layer_of_in_position relation. Also, a number of lyphs are housed in other lyphs via the is_housed_in relation. Ignore has_material_type for now.

For now, dealing with trees is suboptimal, but here goes:
a) there are 9 trees;
b) the tree Systemic arterial tree links the lyph of the Aorta with the tree Renal arterial tree (in preparation to add other trees to the Aorta) - so far, the tree Systemic arterial tree is not continuous with the lyph "Left side of Heart", but will need to be;
c) the same argument as in (b) above holds for the Systemic venous tree, the Renal venous tree and the lyph "Right side of Heart".
d) I could not connect the terminal level of the Renal arterial tree to the lyph "glomerulus" of the Renal cortical blood vessel tree because I still need to add polarity to the data defining lyphs (and looks like a complex endeavour - we may have to fudge this connectivity for now). Same argument holds for the connection of the terminal level of the Renal venous tree to the lyph "cortical peritubular capillary plexus" of the Renal cortical blood vessel tree.
e) The Lower central nervous system tree joins neural lyphs "spinal cord", "Medulla oblongata" and "pons". The Upper central nervous system tree joins neural lyphs "midbrain", "Diencephalon", "Basal Ganglia" and "forebrain". The Cerebello-meningeal tree tree (sorry for the extra 'tree') joins neural lyphs "cerebellum" to "leptomeninges" (N.B. note change in number of layers between former and latter, here - this is deliberate).  So far, the three trees are not joined. The plan is that the Lower central nervous system tree branches to both the Upper central nervous system tree and the Cerebello-meningeal tree tree where the "pons" lyph terminates.

But the biggest fudge of all relates to the data in table temp_neuro_edges. The fudge stems from the need to put in place knowledge about neurons spanning centres in the Central Nervous System (CNS) and organs outside the CNS [BTW: lyph-wise, the CNS is defined as the union of lyphs of the following:  Lower central nervous system tree, Upper central nervous system tree and the Cerebellum]. At this stage, these neurons are represented by edges in this table. Neurons are to be shown as connections between lyphs housed in different parts of the CNS parenchymal layer, as well as lyphs representing tissues outside the set of CNS lyphs (e.g. the "Vagus nerve" conveys control from the brain to the heart muscle). Given the tediously manual nature of the text-based data curation, it is somewhat unrealistic to attempt adding lyphs representing variously-housed segments of neurons that convey the processes depicted by the edges in this table. For example, a neuron for the "Optic tract" would require a 2-layered (inner layer: Cytosol, outer layer: Plasma Membrane) bag in the Retinal layer of the Eye, a tube on the edge between the Eye and the Diencephalon, a tube in the Parenchymal layer of the Diencephalon, another tube in the Parenchymal layer of the Midbrain, and a bag in the Superior colliculus lyph.

The relations table has useful data using has_material_type and sub_type_of relations: we now have lyphs that are a subtype of other lyphs (e.g. Urinary vessel is a subtype of Anatomical vessel and, Lumen of proximal convoluted tubule is a subtype of Lumen of urinary vessel). Given that, now, Lumen of urinary vessel has_material_type Urinary fluid, then we should be able to infer that Lumen of proximal convoluted tubule has_material_type Urinary fluid.

