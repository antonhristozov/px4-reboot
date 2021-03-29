#ifndef __CHECKPOINT_KEEP_H__
#define __CHECKPOINT_KEEP_H__

#ifdef __cplusplus
extern "C" {
#endif
extern struct timespec64 *ckp_checkpoint_timestamp;
extern struct timespec64 *ckp_rollback_timestamp;
extern int ckpfid;
extern int ckpid;
#ifdef __cplusplus
}
#endif

#endif
