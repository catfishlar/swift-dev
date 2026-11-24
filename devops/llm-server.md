## Local LLM Servers

Here we have the installs of LLM Servers

### MTPLX LLM Server

Multi Token Prediction on MLX.   Works with M3+ 

References:
 * https://github.com/youssofal/MTPLX
### Install 

`brew install youssofal/mtplx/mtplx

#### Running

`mtplx start

it then asks which model you want to run.  I  am on a 36G M4 MBP and so I am picking the smallest.  Inlking 2 Mini Bare Speed.

It then asks for how to run it.. and the options are all around not burning up. lol.   I picked Auto (recommended) but there is quite a bit there to digest. 

Then it asks how you want to run it.  Picked WebUI, but you can also use it CLI, integrate with pi, opencode desktop, and another  Swival

> Why Swival
Built for the reality of small context windows, limited resources, and models that need careful prompting to produce good output.

So then it runs and things seem to be pretty new. 

`MTPLX start
[1/4] Checking model: Youssofal/Inkling-2-Mini-MTPLX-Bare-Speed
Warning: You are sending unauthenticated requests to the HF Hub. Please set a HF_TOKEN to enable higher rate limits and faster downloads.
config.json: 100%|██████████████████████████| 16.5k/16.5k [00:00<00:00, 13.5MB/s]
mtplx_runtime.json: 100%|███████████████████| 2.83k/2.83k [00:00<00:00, 2.49MB/s]
error: model cannot run with MTPLX
model: Youssofal/Inkling-2-Mini-MTPLX-Bare-Speed
tier: architecture-compatible-but-unverified
runtime: needs-grafting
reason: Runtime contract exists but local MTP artifact inspection did not pass, and no trunk weights are loadable from this folder; restore the artifact or repair it with Forge.
mtp: exists=true, tensors=54, gate=true
try: add --unsafe-force-unverified --yes to run without support guarantees

So what is happening here is it is expecting it to already be downloaded.   And its looking here. 

`(base) lmurdock@Larrys-M3 swift-dev % mtplx models
MTPLX models
cache: /Users/lmurdock/.mtplx/models
no cached models

Gemini told me that you can do this.. 

` mtplx pull Youssofal/Inkling-2-Mini-MTPLX-Bare-Speed

It wasn't in `mtplx --help

But it works!


