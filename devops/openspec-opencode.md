
## OpenSpec on OpenCode

References
- [Openspec website ](https://openspec.dev/)
* [OpenCode Agents](https://opencode.ai/docs/agents/)

### Summary

OpenSpec breaks down the process of creating a change in a repository into:
- Explore -  LLM helps you map out the issue you are trying to solve
- Propose - Actualy draft the spec, and it does so in a set of docs in order.  Each step can be reviewed and modified and redone.
  - Proposal.md - The overall description 
  - specs/ this creates a set of requires
  - Which finally creates a design
  - and finally the tasks to implement the design
- Apply - This is the step of implementing the code creation tasks. 
- Verify -  do the tests of code created vs the specifications
- Archive - THis is where the  change specs are integrated with the repo specs since you are saying this is the new state of the repo.  Ie, accpeting the change.  The documents that defined the change above get archived away.  

OpenCode is one of the 
