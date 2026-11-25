
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

#### Installation

`brew install openspec`

Openspec has gone to v2.x  On Nov 16, 2026

```
(base) lmurdock@Larrys-M3 swift-dev % openspec -V
2.1.1
```
2.2.0 got released Nov 24. 2026 so there is a lot of change going very fast.    2.1.1 came out last week, and brew had it, but not 2.2.0 which came out 7 hours ago (this is night of 24th) 

cd to swift-dev
```
(base) lmurdock@Larrys-M3 swift-dev % openspec init
Note: OpenSpec collects anonymous usage stats. Opt out: OPENSPEC_TELEMETRY=0 or openspec config set telemetry.enabled false
✔ Select tools to set up (87 available) OpenCode
▌ OpenSpec structure created

OpenSpec Setup Complete

Created: OpenCode
6 skills in ~/.agents/skills/ for every project on this machine
Config: openspec/config.yaml (schema: spec-driven)
```

#### What Got Added with Init? 

In the repo 
```
(base) lmurdock@Larrys-M3 swift-dev % tree openspec
openspec
├── changes
│   └── archive
├── config.yaml
└── specs
```

config.yaml  has commented out potential restrictions on the main openspec changes. 

The rest are empty directories for the future changes. 

in `\~/.agents/skills`
there are 6 skills.. each skill directory has a SKILLS.md and they are 12-25K long!    

#### Plan mode and Proposal skill

Open code has a build and plan mode.  The plan mode has all writing turned off but it puts together a plan.  Build allows it to do anything 

There are proposals and plugins out there that create a new OpenCode agent that has a better tuned agent with read on most things but the ability to write in the openspec directory.    

THe thing is openspec has just gone to 2.0 with lots of breaking changes, adn they went throught 2.1 and 2.2 in 2 weeks.  so lots of change going on, and probably not the time to inject something that messes with the structure.    

As it is, it runs in build, and just doesn't do any implementation because the skill sez don't.  :)   


