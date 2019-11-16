typedef signed char __s8;
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct class;
struct device;
struct completion;
struct gendisk;
struct module;
struct mutex;
struct request_queue;
struct request;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_8 __annonCompField4 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct____missing_field_name_10 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_11 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion____missing_field_name_9 {
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
   struct __anonstruct____missing_field_name_11 __annonCompField6 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_9 __annonCompField7 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_12 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_12 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_13 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_13 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct cpumask;
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion____missing_field_name_16 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_16 __annonCompField8 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct exec_domain;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct seq_operations;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_21 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_22 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_20 {
   struct __anonstruct____missing_field_name_21 __annonCompField12 ;
   struct __anonstruct____missing_field_name_22 __annonCompField13 ;
};
union __anonunion____missing_field_name_23 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_20 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_23 __annonCompField15 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndreg {
   u64 lower_bound ;
   u64 upper_bound ;
};
struct bndcsr {
   u64 bndcfgu ;
   u64 bndstatus ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndreg bndreg[4U] ;
   struct bndcsr bndcsr ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
   unsigned char fpu_counter ;
};
struct __anonstruct_mm_segment_t_25 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_25 mm_segment_t;
typedef atomic64_t atomic_long_t;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_27 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_26 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_27 __annonCompField17 ;
};
struct spinlock {
   union __anonunion____missing_field_name_26 __annonCompField18 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_28 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_28 rwlock_t;
struct ldv_thread;
struct optimistic_spin_queue {
   atomic_t tail ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_30 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_31 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_32 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_29 {
   struct __anonstruct_futex_30 futex ;
   struct __anonstruct_nanosleep_31 nanosleep ;
   struct __anonstruct_poll_32 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_29 __annonCompField19 ;
};
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
typedef int pao_T_____0;
struct jump_entry;
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_45 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_45 seqlock_t;
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
union __anonunion____missing_field_name_46 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_46 __annonCompField20 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct dentry;
struct iattr;
struct vm_area_struct;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_47 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_47 __annonCompField21 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   char *prealloc_buf ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   bool prealloc ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_48 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_48 kuid_t;
struct __anonstruct_kgid_t_49 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_49 kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
};
struct kref {
   atomic_t refcount ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   struct workqueue_struct *wq ;
   int cpu ;
};
struct execute_work {
   struct work_struct work ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *argv[3U] ;
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct inode;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_51 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_50 {
   struct __anonstruct____missing_field_name_51 __annonCompField22 ;
};
struct lockref {
   union __anonunion____missing_field_name_50 __annonCompField23 ;
};
struct path;
struct vfsmount;
struct __anonstruct____missing_field_name_53 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_52 {
   struct __anonstruct____missing_field_name_53 __annonCompField24 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_52 __annonCompField25 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_54 {
   struct hlist_node d_alias ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   struct list_head d_child ;
   struct list_head d_subdirs ;
   union __anonunion_d_u_54 d_u ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct __anonstruct_nodemask_t_55 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_55 nodemask_t;
struct mem_cgroup;
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   int nid ;
   struct mem_cgroup *memcg ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct list_lru_one {
   struct list_head list ;
   long nr_items ;
};
struct list_lru_memcg {
   struct list_lru_one *lru[0U] ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_lru_one lru ;
   struct list_lru_memcg *memcg_lrus ;
};
struct list_lru {
   struct list_lru_node *node ;
   struct list_head list ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct __anonstruct____missing_field_name_57 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_56 {
   struct __anonstruct____missing_field_name_57 __annonCompField26 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_56 __annonCompField27 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct call_single_data {
   struct llist_node llist ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   unsigned char memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   void (*set_latency_tolerance)(struct device * , s32 ) ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
   void (*detach)(struct device * , bool ) ;
};
struct __anonstruct_mm_context_t_123 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_123 mm_context_t;
struct bio_vec;
struct device_node;
struct bio_set;
struct bio;
struct bio_integrity_payload;
struct block_device;
struct io_context;
struct cgroup_subsys_state;
typedef void bio_end_io_t(struct bio * , int );
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bvec_iter {
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned int bi_idx ;
   unsigned int bi_bvec_done ;
};
union __anonunion____missing_field_name_150 {
   struct bio_integrity_payload *bi_integrity ;
};
struct bio {
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   struct bvec_iter bi_iter ;
   unsigned int bi_phys_segments ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   atomic_t bi_remaining ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   union __anonunion____missing_field_name_150 __annonCompField38 ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct backing_dev_info;
struct export_operations;
struct hd_geometry;
struct iovec;
struct nameidata;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
struct swap_info_struct;
struct iov_iter;
struct vm_fault;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_151 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_151 kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_152 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_152 __annonCompField39 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_max_spc_limit ;
   qsize_t dqi_max_ino_limit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct qc_dqblk {
   int d_fieldmask ;
   u64 d_spc_hardlimit ;
   u64 d_spc_softlimit ;
   u64 d_ino_hardlimit ;
   u64 d_ino_softlimit ;
   u64 d_space ;
   u64 d_ino_count ;
   s64 d_ino_timer ;
   s64 d_spc_timer ;
   int d_ino_warns ;
   int d_spc_warns ;
   u64 d_rt_spc_hardlimit ;
   u64 d_rt_spc_softlimit ;
   u64 d_rt_space ;
   s64 d_rt_spc_timer ;
   int d_rt_spc_warns ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct address_space;
struct writeback_control;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   atomic_t i_mmap_writable ;
   struct rb_root i_mmap ;
   struct rw_semaphore i_mmap_rwsem ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct hd_struct;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion____missing_field_name_155 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_156 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
union __anonunion____missing_field_name_157 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_155 __annonCompField40 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_156 __annonCompField41 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_157 __annonCompField42 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_158 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_158 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
};
typedef void *fl_owner_t;
struct file_lock;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_get_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_put_owner)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , int ) ;
   bool (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock * , int , struct list_head * ) ;
   void (*lm_setup)(struct file_lock * , void ** ) ;
};
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_160 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_159 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_160 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_list ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_159 fl_u ;
};
struct file_lock_context {
   spinlock_t flc_lock ;
   struct list_head flc_flock ;
   struct list_head flc_posix ;
   struct list_head flc_lease ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head s_mounts ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   unsigned int s_quota_types ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
   struct workqueue_struct *s_dio_done_wq ;
   struct hlist_head s_pins ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
   int s_stack_depth ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context;
struct dir_context {
   int (*actor)(struct dir_context * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct block_device_operations;
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   void (*mremap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** , void ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   void (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
   int (*dentry_open)(struct dentry * , struct file * , struct cred const * ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_super)(struct super_block * ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*thaw_super)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   struct dquot **(*get_dquots)(struct inode * ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , struct shrink_control * ) ;
   long (*free_cached_objects)(struct super_block * , struct shrink_control * ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct __anonstruct____missing_field_name_166 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_167 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_165 {
   struct __anonstruct____missing_field_name_166 __annonCompField45 ;
   struct __anonstruct____missing_field_name_167 __annonCompField46 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_165 __annonCompField47 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_168 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_170 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_174 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_173 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_174 __annonCompField50 ;
   int units ;
};
struct __anonstruct____missing_field_name_172 {
   union __anonunion____missing_field_name_173 __annonCompField51 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_171 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_172 __annonCompField52 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_169 {
   union __anonunion____missing_field_name_170 __annonCompField49 ;
   union __anonunion____missing_field_name_171 __annonCompField53 ;
};
struct __anonstruct____missing_field_name_176 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_177 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_175 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_176 __annonCompField55 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_177 __annonCompField56 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_178 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_168 __annonCompField48 ;
   struct __anonstruct____missing_field_name_169 __annonCompField54 ;
   union __anonunion____missing_field_name_175 __annonCompField57 ;
   union __anonunion____missing_field_name_178 __annonCompField58 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_179 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
struct anon_vma;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct __anonstruct_shared_179 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   u32 vmacache_seqnum ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
   atomic_long_t nr_pmds ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
   void *bd_addr ;
};
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct user_struct;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *cow_page ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   struct page *(*find_special_page)(struct vm_area_struct * , unsigned long ) ;
};
struct kvec;
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct __large_struct {
   unsigned long buf[100U] ;
};
struct proc_dir_entry;
struct nsproxy;
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_191 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_191 __annonCompField64 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   bool sig_ok ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   struct jump_entry *jump_entries ;
   unsigned int num_jump_entries ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_192 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_192 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_194 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_195 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_196 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_197 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_199 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_198 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_199 _addr_bnd ;
};
struct __anonstruct__sigpoll_200 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_201 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_193 {
   int _pad[28U] ;
   struct __anonstruct__kill_194 _kill ;
   struct __anonstruct__timer_195 _timer ;
   struct __anonstruct__rt_196 _rt ;
   struct __anonstruct__sigchld_197 _sigchld ;
   struct __anonstruct__sigfault_198 _sigfault ;
   struct __anonstruct__sigpoll_200 _sigpoll ;
   struct __anonstruct__sigsys_201 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_193 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int in_hrtirq ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_204 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_205 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_207 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_206 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_207 __annonCompField67 ;
};
union __anonunion_type_data_208 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_210 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_209 {
   union __anonunion_payload_210 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_204 __annonCompField65 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_205 __annonCompField66 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_206 __annonCompField68 ;
   union __anonunion_type_data_208 type_data ;
   union __anonunion____missing_field_name_209 __annonCompField69 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   struct list_head thread_head ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
   int posix_timer_id ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   seqlock_t stats_lock ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   unsigned int audit_tty_log_passwd ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   u64 blkio_start ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   u64 freepages_start ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   int depth ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   unsigned long rcu_tasks_nvcsw ;
   bool rcu_tasks_holdout ;
   struct list_head rcu_tasks_holdout_list ;
   int rcu_tasks_idle_cpu ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
   unsigned long atomic_flags ;
   struct restart_block restart_block ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   u64 start_time ;
   u64 real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   struct sysv_shm sysvshm ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   unsigned int kasan_depth ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_213 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_213 __annonCompField71 ;
   unsigned long nr_segs ;
};
struct kioctx;
typedef int kiocb_cancel_fn(struct kiocb * );
union __anonunion_ki_obj_214 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_214 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   size_t ki_nbytes ;
   struct list_head ki_list ;
   struct eventfd_ctx *ki_eventfd ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef struct poll_table_struct poll_table;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct device_type;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
};
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct subsys_private;
struct bus_type;
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops const *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct of_device_id;
struct acpi_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct class_interface {
   struct list_head node ;
   struct class *class ;
   int (*add_dev)(struct device * , struct class_interface * ) ;
   void (*remove_dev)(struct device * , struct class_interface * ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
};
struct dma_coherent_mem;
struct cma;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
   bool offline_disabled ;
   bool offline ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active ;
   bool autosleep_enabled ;
};
struct disk_stats {
   unsigned long sectors[2U] ;
   unsigned long ios[2U] ;
   unsigned long merges[2U] ;
   unsigned long ticks[2U] ;
   unsigned long io_ticks ;
   unsigned long time_in_queue ;
};
struct partition_meta_info {
   char uuid[37U] ;
   u8 volname[64U] ;
};
struct hd_struct {
   sector_t start_sect ;
   sector_t nr_sects ;
   seqcount_t nr_sects_seq ;
   sector_t alignment_offset ;
   unsigned int discard_alignment ;
   struct device __dev ;
   struct kobject *holder_dir ;
   int policy ;
   int partno ;
   struct partition_meta_info *info ;
   int make_it_fail ;
   unsigned long stamp ;
   atomic_t in_flight[2U] ;
   struct disk_stats *dkstats ;
   atomic_t ref ;
   struct callback_head callback_head ;
};
struct disk_part_tbl {
   struct callback_head callback_head ;
   int len ;
   struct hd_struct *last_lookup ;
   struct hd_struct *part[] ;
};
struct disk_events;
struct timer_rand_state;
struct blk_integrity;
struct gendisk {
   int major ;
   int first_minor ;
   int minors ;
   char disk_name[32U] ;
   char *(*devnode)(struct gendisk * , umode_t * ) ;
   unsigned int events ;
   unsigned int async_events ;
   struct disk_part_tbl *part_tbl ;
   struct hd_struct part0 ;
   struct block_device_operations const *fops ;
   struct request_queue *queue ;
   void *private_data ;
   int flags ;
   struct device *driverfs_dev ;
   struct kobject *slave_dir ;
   struct timer_rand_state *random ;
   atomic_t sync_io ;
   struct disk_events *ev ;
   struct blk_integrity *integrity ;
   int node_id ;
};
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
};
enum writeback_sync_modes {
    WB_SYNC_NONE = 0,
    WB_SYNC_ALL = 1
} ;
struct writeback_control {
   long nr_to_write ;
   long pages_skipped ;
   loff_t range_start ;
   loff_t range_end ;
   enum writeback_sync_modes sync_mode ;
   unsigned char for_kupdate : 1 ;
   unsigned char for_background : 1 ;
   unsigned char tagged_writepages : 1 ;
   unsigned char for_reclaim : 1 ;
   unsigned char range_cyclic : 1 ;
   unsigned char for_sync : 1 ;
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned long last_old_flush ;
   struct delayed_work dwork ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   struct list_head b_dirty_time ;
   spinlock_t list_lock ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   struct percpu_counter bdi_stat[4U] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
   struct list_head work_list ;
   struct device *dev ;
   struct timer_list laptop_mode_wb_timer ;
   struct dentry *debug_dir ;
   struct dentry *debug_stats ;
};
typedef void *mempool_alloc_t(gfp_t , void * );
typedef void mempool_free_t(void * , void * );
struct mempool_s {
   spinlock_t lock ;
   int min_nr ;
   int curr_nr ;
   void **elements ;
   void *pool_data ;
   mempool_alloc_t *alloc ;
   mempool_free_t *free ;
   wait_queue_head_t wait ;
};
typedef struct mempool_s mempool_t;
union __anonunion____missing_field_name_218 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_219 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_218 __annonCompField74 ;
   union __anonunion____missing_field_name_219 __annonCompField75 ;
   unsigned int flags ;
};
struct io_context {
   atomic_long_t refcount ;
   atomic_t active_ref ;
   atomic_t nr_tasks ;
   spinlock_t lock ;
   unsigned short ioprio ;
   int nr_batch_requests ;
   unsigned long last_waited ;
   struct radix_tree_root icq_tree ;
   struct io_cq *icq_hint ;
   struct hlist_head icq_list ;
   struct work_struct release_work ;
};
struct bio_integrity_payload {
   struct bio *bip_bio ;
   struct bvec_iter bip_iter ;
   bio_end_io_t *bip_end_io ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned short bip_max_vcnt ;
   unsigned short bip_flags ;
   struct work_struct bip_work ;
   struct bio_vec *bip_vec ;
   struct bio_vec bip_inline_vecs[0U] ;
};
struct rq_map_data;
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
};
struct bio_set {
   struct kmem_cache *bio_slab ;
   unsigned int front_pad ;
   mempool_t *bio_pool ;
   mempool_t *bvec_pool ;
   mempool_t *bio_integrity_pool ;
   mempool_t *bvec_integrity_pool ;
   spinlock_t rescue_lock ;
   struct bio_list rescue_list ;
   struct work_struct rescue_work ;
   struct workqueue_struct *rescue_workqueue ;
};
struct bsg_class_device {
   struct device *class_dev ;
   struct device *parent ;
   int minor ;
   struct request_queue *queue ;
   struct kref ref ;
   void (*release)(struct device * ) ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_long_t count ;
   unsigned long percpu_count_ptr ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_switch ;
   bool force_atomic ;
   struct callback_head rcu ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct scsi_ioctl_command;
struct elevator_queue;
struct blk_trace;
struct sg_io_hdr;
struct bsg_job;
struct blkcg_gq;
struct blk_flush_queue;
typedef void rq_end_io_fn(struct request * , int );
struct request_list {
   struct request_queue *q ;
   struct blkcg_gq *blkg ;
   int count[2U] ;
   int starved[2U] ;
   mempool_t *rq_pool ;
   wait_queue_head_t wait[2U] ;
   unsigned int flags ;
};
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_ATA_TASKFILE = 8,
    REQ_TYPE_ATA_PC = 9
} ;
union __anonunion____missing_field_name_220 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion____missing_field_name_221 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion____missing_field_name_222 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_224 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_225 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_223 {
   struct __anonstruct_elv_224 elv ;
   struct __anonstruct_flush_225 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion____missing_field_name_220 __annonCompField76 ;
   struct request_queue *q ;
   struct blk_mq_ctx *mq_ctx ;
   u64 cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   union __anonunion____missing_field_name_221 __annonCompField77 ;
   union __anonunion____missing_field_name_222 __annonCompField78 ;
   union __anonunion____missing_field_name_223 __annonCompField79 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   struct request_list *rl ;
   unsigned long long start_time_ns ;
   unsigned long long io_start_time_ns ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   void *special ;
   int tag ;
   int errors ;
   unsigned char __cmd[16U] ;
   unsigned char *cmd ;
   unsigned short cmd_len ;
   unsigned int extra_len ;
   unsigned int sense_len ;
   unsigned int resid_len ;
   void *sense ;
   unsigned long deadline ;
   struct list_head timeout_list ;
   unsigned int timeout ;
   int retries ;
   rq_end_io_fn *end_io ;
   void *end_io_data ;
   struct request *next_rq ;
};
struct elevator_type;
typedef int elevator_merge_fn(struct request_queue * , struct request ** , struct bio * );
typedef void elevator_merge_req_fn(struct request_queue * , struct request * , struct request * );
typedef void elevator_merged_fn(struct request_queue * , struct request * , int );
typedef int elevator_allow_merge_fn(struct request_queue * , struct request * , struct bio * );
typedef void elevator_bio_merged_fn(struct request_queue * , struct request * , struct bio * );
typedef int elevator_dispatch_fn(struct request_queue * , int );
typedef void elevator_add_req_fn(struct request_queue * , struct request * );
typedef struct request *elevator_request_list_fn(struct request_queue * , struct request * );
typedef void elevator_completed_req_fn(struct request_queue * , struct request * );
typedef int elevator_may_queue_fn(struct request_queue * , int );
typedef void elevator_init_icq_fn(struct io_cq * );
typedef void elevator_exit_icq_fn(struct io_cq * );
typedef int elevator_set_req_fn(struct request_queue * , struct request * , struct bio * ,
                                gfp_t );
typedef void elevator_put_req_fn(struct request * );
typedef void elevator_activate_req_fn(struct request_queue * , struct request * );
typedef void elevator_deactivate_req_fn(struct request_queue * , struct request * );
typedef int elevator_init_fn(struct request_queue * , struct elevator_type * );
typedef void elevator_exit_fn(struct elevator_queue * );
struct elevator_ops {
   elevator_merge_fn *elevator_merge_fn ;
   elevator_merged_fn *elevator_merged_fn ;
   elevator_merge_req_fn *elevator_merge_req_fn ;
   elevator_allow_merge_fn *elevator_allow_merge_fn ;
   elevator_bio_merged_fn *elevator_bio_merged_fn ;
   elevator_dispatch_fn *elevator_dispatch_fn ;
   elevator_add_req_fn *elevator_add_req_fn ;
   elevator_activate_req_fn *elevator_activate_req_fn ;
   elevator_deactivate_req_fn *elevator_deactivate_req_fn ;
   elevator_completed_req_fn *elevator_completed_req_fn ;
   elevator_request_list_fn *elevator_former_req_fn ;
   elevator_request_list_fn *elevator_latter_req_fn ;
   elevator_init_icq_fn *elevator_init_icq_fn ;
   elevator_exit_icq_fn *elevator_exit_icq_fn ;
   elevator_set_req_fn *elevator_set_req_fn ;
   elevator_put_req_fn *elevator_put_req_fn ;
   elevator_may_queue_fn *elevator_may_queue_fn ;
   elevator_init_fn *elevator_init_fn ;
   elevator_exit_fn *elevator_exit_fn ;
};
struct elv_fs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct elevator_queue * , char * ) ;
   ssize_t (*store)(struct elevator_queue * , char const * , size_t ) ;
};
struct elevator_type {
   struct kmem_cache *icq_cache ;
   struct elevator_ops ops ;
   size_t icq_size ;
   size_t icq_align ;
   struct elv_fs_entry *elevator_attrs ;
   char elevator_name[16U] ;
   struct module *elevator_owner ;
   char icq_cache_name[21U] ;
   struct list_head list ;
};
struct elevator_queue {
   struct elevator_type *type ;
   void *elevator_data ;
   struct kobject kobj ;
   struct mutex sysfs_lock ;
   unsigned char registered : 1 ;
   struct hlist_head hash[64U] ;
};
typedef void request_fn_proc(struct request_queue * );
typedef void make_request_fn(struct request_queue * , struct bio * );
typedef int prep_rq_fn(struct request_queue * , struct request * );
typedef void unprep_rq_fn(struct request_queue * , struct request * );
struct bvec_merge_data {
   struct block_device *bi_bdev ;
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned long bi_rw ;
};
typedef int merge_bvec_fn(struct request_queue * , struct bvec_merge_data * , struct bio_vec * );
typedef void softirq_done_fn(struct request * );
typedef int dma_drain_needed_fn(struct request * );
typedef int lld_busy_fn(struct request_queue * );
typedef int bsg_job_fn(struct bsg_job * );
enum blk_eh_timer_return {
    BLK_EH_NOT_HANDLED = 0,
    BLK_EH_HANDLED = 1,
    BLK_EH_RESET_TIMER = 2
} ;
typedef enum blk_eh_timer_return rq_timed_out_fn(struct request * );
struct blk_queue_tag {
   struct request **tag_index ;
   unsigned long *tag_map ;
   int busy ;
   int max_depth ;
   int real_max_depth ;
   atomic_t refcnt ;
   int alloc_policy ;
   int next_tag ;
};
struct queue_limits {
   unsigned long bounce_pfn ;
   unsigned long seg_boundary_mask ;
   unsigned int max_hw_sectors ;
   unsigned int chunk_sectors ;
   unsigned int max_sectors ;
   unsigned int max_segment_size ;
   unsigned int physical_block_size ;
   unsigned int alignment_offset ;
   unsigned int io_min ;
   unsigned int io_opt ;
   unsigned int max_discard_sectors ;
   unsigned int max_write_same_sectors ;
   unsigned int discard_granularity ;
   unsigned int discard_alignment ;
   unsigned short logical_block_size ;
   unsigned short max_segments ;
   unsigned short max_integrity_segments ;
   unsigned char misaligned ;
   unsigned char discard_misaligned ;
   unsigned char cluster ;
   unsigned char discard_zeroes_data ;
   unsigned char raid_partial_stripes_expensive ;
};
struct blk_mq_ops;
struct blk_mq_hw_ctx;
struct throtl_data;
struct blk_mq_tag_set;
struct request_queue {
   struct list_head queue_head ;
   struct request *last_merge ;
   struct elevator_queue *elevator ;
   int nr_rqs[2U] ;
   int nr_rqs_elvpriv ;
   struct request_list root_rl ;
   request_fn_proc *request_fn ;
   make_request_fn *make_request_fn ;
   prep_rq_fn *prep_rq_fn ;
   unprep_rq_fn *unprep_rq_fn ;
   merge_bvec_fn *merge_bvec_fn ;
   softirq_done_fn *softirq_done_fn ;
   rq_timed_out_fn *rq_timed_out_fn ;
   dma_drain_needed_fn *dma_drain_needed ;
   lld_busy_fn *lld_busy_fn ;
   struct blk_mq_ops *mq_ops ;
   unsigned int *mq_map ;
   struct blk_mq_ctx *queue_ctx ;
   unsigned int nr_queues ;
   struct blk_mq_hw_ctx **queue_hw_ctx ;
   unsigned int nr_hw_queues ;
   sector_t end_sector ;
   struct request *boundary_rq ;
   struct delayed_work delay_work ;
   struct backing_dev_info backing_dev_info ;
   void *queuedata ;
   unsigned long queue_flags ;
   int id ;
   gfp_t bounce_gfp ;
   spinlock_t __queue_lock ;
   spinlock_t *queue_lock ;
   struct kobject kobj ;
   struct kobject mq_kobj ;
   struct device *dev ;
   int rpm_status ;
   unsigned int nr_pending ;
   unsigned long nr_requests ;
   unsigned int nr_congestion_on ;
   unsigned int nr_congestion_off ;
   unsigned int nr_batching ;
   unsigned int dma_drain_size ;
   void *dma_drain_buffer ;
   unsigned int dma_pad_mask ;
   unsigned int dma_alignment ;
   struct blk_queue_tag *queue_tags ;
   struct list_head tag_busy_list ;
   unsigned int nr_sorted ;
   unsigned int in_flight[2U] ;
   unsigned int request_fn_active ;
   unsigned int rq_timeout ;
   struct timer_list timeout ;
   struct list_head timeout_list ;
   struct list_head icq_list ;
   unsigned long blkcg_pols[1U] ;
   struct blkcg_gq *root_blkg ;
   struct list_head blkg_list ;
   struct queue_limits limits ;
   unsigned int sg_timeout ;
   unsigned int sg_reserved_size ;
   int node ;
   struct blk_trace *blk_trace ;
   unsigned int flush_flags ;
   unsigned char flush_not_queueable : 1 ;
   struct blk_flush_queue *fq ;
   struct list_head requeue_list ;
   spinlock_t requeue_lock ;
   struct work_struct requeue_work ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   int mq_freeze_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct throtl_data *td ;
   struct callback_head callback_head ;
   wait_queue_head_t mq_freeze_wq ;
   struct percpu_ref mq_usage_counter ;
   struct list_head all_q_node ;
   struct blk_mq_tag_set *tag_set ;
   struct list_head tag_set_list ;
};
struct rq_map_data {
   struct page **pages ;
   int page_order ;
   int nr_entries ;
   unsigned long offset ;
   int null_mapped ;
   int from_user ;
};
struct blk_plug {
   struct list_head list ;
   struct list_head mq_list ;
   struct list_head cb_list ;
};
struct blk_integrity_iter {
   void *prot_buf ;
   void *data_buf ;
   sector_t seed ;
   unsigned int data_size ;
   unsigned short interval ;
   char const *disk_name ;
};
typedef int integrity_processing_fn(struct blk_integrity_iter * );
struct blk_integrity {
   integrity_processing_fn *generate_fn ;
   integrity_processing_fn *verify_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short interval ;
   unsigned short tag_size ;
   char const *name ;
   struct kobject kobj ;
};
struct block_device_operations {
   int (*open)(struct block_device * , fmode_t ) ;
   void (*release)(struct gendisk * , fmode_t ) ;
   int (*rw_page)(struct block_device * , sector_t , struct page * , int ) ;
   int (*ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   long (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ,
                         long ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
struct rchan;
struct rchan_buf {
   void *start ;
   void *data ;
   size_t offset ;
   size_t subbufs_produced ;
   size_t subbufs_consumed ;
   struct rchan *chan ;
   wait_queue_head_t read_wait ;
   struct timer_list timer ;
   struct dentry *dentry ;
   struct kref kref ;
   struct page **page_array ;
   unsigned int page_count ;
   unsigned int finalized ;
   size_t *padding ;
   size_t prev_padding ;
   size_t bytes_consumed ;
   size_t early_bytes ;
   unsigned int cpu ;
};
struct rchan_callbacks;
struct rchan {
   u32 version ;
   size_t subbuf_size ;
   size_t n_subbufs ;
   size_t alloc_size ;
   struct rchan_callbacks *cb ;
   struct kref kref ;
   void *private_data ;
   size_t last_toobig ;
   struct rchan_buf *buf[8192U] ;
   int is_global ;
   struct list_head list ;
   struct dentry *parent ;
   int has_base_filename ;
   char base_filename[255U] ;
};
struct rchan_callbacks {
   int (*subbuf_start)(struct rchan_buf * , void * , void * , size_t ) ;
   void (*buf_mapped)(struct rchan_buf * , struct file * ) ;
   void (*buf_unmapped)(struct rchan_buf * , struct file * ) ;
   struct dentry *(*create_buf_file)(char const * , struct dentry * , umode_t ,
                                     struct rchan_buf * , int * ) ;
   int (*remove_buf_file)(struct dentry * ) ;
};
typedef s32 compat_time_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct blk_trace {
   int trace_state ;
   struct rchan *rchan ;
   unsigned long *sequence ;
   unsigned char *msg_data ;
   u16 act_mask ;
   u64 start_lba ;
   u64 end_lba ;
   u32 pid ;
   u32 dev ;
   struct dentry *dir ;
   struct dentry *dropped_file ;
   struct dentry *msg_file ;
   struct list_head running_list ;
   atomic_t dropped ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
struct scsi_cmnd;
struct scsi_sense_hdr;
enum scsi_device_state {
    SDEV_CREATED = 1,
    SDEV_RUNNING = 2,
    SDEV_CANCEL = 3,
    SDEV_DEL = 4,
    SDEV_QUIESCE = 5,
    SDEV_OFFLINE = 6,
    SDEV_TRANSPORT_OFFLINE = 7,
    SDEV_BLOCK = 8,
    SDEV_CREATED_BLOCK = 9
} ;
struct Scsi_Host;
struct scsi_target;
struct scsi_dh_data;
struct scsi_device {
   struct Scsi_Host *host ;
   struct request_queue *request_queue ;
   struct list_head siblings ;
   struct list_head same_target_siblings ;
   atomic_t device_busy ;
   atomic_t device_blocked ;
   spinlock_t list_lock ;
   struct list_head cmd_list ;
   struct list_head starved_entry ;
   struct scsi_cmnd *current_cmnd ;
   unsigned short queue_depth ;
   unsigned short max_queue_depth ;
   unsigned short last_queue_full_depth ;
   unsigned short last_queue_full_count ;
   unsigned long last_queue_full_time ;
   unsigned long queue_ramp_up_period ;
   unsigned long last_queue_ramp_up ;
   unsigned int id ;
   unsigned int channel ;
   u64 lun ;
   unsigned int manufacturer ;
   unsigned int sector_size ;
   void *hostdata ;
   char type ;
   char scsi_level ;
   char inq_periph_qual ;
   unsigned char inquiry_len ;
   unsigned char *inquiry ;
   char const *vendor ;
   char const *model ;
   char const *rev ;
   int vpd_pg83_len ;
   unsigned char *vpd_pg83 ;
   int vpd_pg80_len ;
   unsigned char *vpd_pg80 ;
   unsigned char current_tag ;
   struct scsi_target *sdev_target ;
   unsigned int sdev_bflags ;
   unsigned int eh_timeout ;
   unsigned char removable : 1 ;
   unsigned char changed : 1 ;
   unsigned char busy : 1 ;
   unsigned char lockable : 1 ;
   unsigned char locked : 1 ;
   unsigned char borken : 1 ;
   unsigned char disconnect : 1 ;
   unsigned char soft_reset : 1 ;
   unsigned char sdtr : 1 ;
   unsigned char wdtr : 1 ;
   unsigned char ppr : 1 ;
   unsigned char tagged_supported : 1 ;
   unsigned char simple_tags : 1 ;
   unsigned char was_reset : 1 ;
   unsigned char expecting_cc_ua : 1 ;
   unsigned char use_10_for_rw : 1 ;
   unsigned char use_10_for_ms : 1 ;
   unsigned char no_report_opcodes : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char use_16_for_rw : 1 ;
   unsigned char skip_ms_page_8 : 1 ;
   unsigned char skip_ms_page_3f : 1 ;
   unsigned char skip_vpd_pages : 1 ;
   unsigned char try_vpd_pages : 1 ;
   unsigned char use_192_bytes_for_3f : 1 ;
   unsigned char no_start_on_add : 1 ;
   unsigned char allow_restart : 1 ;
   unsigned char manage_start_stop : 1 ;
   unsigned char start_stop_pwr_cond : 1 ;
   unsigned char no_uld_attach : 1 ;
   unsigned char select_no_atn : 1 ;
   unsigned char fix_capacity : 1 ;
   unsigned char guess_capacity : 1 ;
   unsigned char retry_hwerror : 1 ;
   unsigned char last_sector_bug : 1 ;
   unsigned char no_read_disc_info : 1 ;
   unsigned char no_read_capacity_16 : 1 ;
   unsigned char try_rc_10_first : 1 ;
   unsigned char is_visible : 1 ;
   unsigned char wce_default_on : 1 ;
   unsigned char no_dif : 1 ;
   unsigned char broken_fua : 1 ;
   unsigned char lun_in_cdb : 1 ;
   atomic_t disk_events_disable_depth ;
   unsigned long supported_events[1U] ;
   unsigned long pending_events[1U] ;
   struct list_head event_list ;
   struct work_struct event_work ;
   unsigned int max_device_blocked ;
   atomic_t iorequest_cnt ;
   atomic_t iodone_cnt ;
   atomic_t ioerr_cnt ;
   struct device sdev_gendev ;
   struct device sdev_dev ;
   struct execute_work ew ;
   struct work_struct requeue_work ;
   struct scsi_dh_data *scsi_dh_data ;
   enum scsi_device_state sdev_state ;
   unsigned long sdev_data[0U] ;
};
struct scsi_device_handler {
   struct list_head list ;
   struct module *module ;
   char const *name ;
   int (*check_sense)(struct scsi_device * , struct scsi_sense_hdr * ) ;
   struct scsi_dh_data *(*attach)(struct scsi_device * ) ;
   void (*detach)(struct scsi_device * ) ;
   int (*activate)(struct scsi_device * , void (*)(void * , int ) , void * ) ;
   int (*prep_fn)(struct scsi_device * , struct request * ) ;
   int (*set_params)(struct scsi_device * , char const * ) ;
   bool (*match)(struct scsi_device * ) ;
};
struct scsi_dh_data {
   struct scsi_device_handler *scsi_dh ;
   struct scsi_device *sdev ;
   struct kref kref ;
};
enum scsi_target_state {
    STARGET_CREATED = 1,
    STARGET_RUNNING = 2,
    STARGET_DEL = 3
} ;
struct scsi_target {
   struct scsi_device *starget_sdev_user ;
   struct list_head siblings ;
   struct list_head devices ;
   struct device dev ;
   struct kref reap_ref ;
   unsigned int channel ;
   unsigned int id ;
   unsigned char create : 1 ;
   unsigned char single_lun : 1 ;
   unsigned char pdt_1f_for_no_lun : 1 ;
   unsigned char no_report_luns : 1 ;
   unsigned char expecting_lun_change : 1 ;
   atomic_t target_busy ;
   atomic_t target_blocked ;
   unsigned int can_queue ;
   unsigned int max_target_blocked ;
   char scsi_level ;
   enum scsi_target_state state ;
   void *hostdata ;
   unsigned long starget_data[0U] ;
};
struct scsi_data_buffer {
   struct sg_table table ;
   unsigned int length ;
   int resid ;
};
struct scsi_pointer {
   char *ptr ;
   int this_residual ;
   struct scatterlist *buffer ;
   int buffers_residual ;
   dma_addr_t dma_handle ;
   int volatile Status ;
   int volatile Message ;
   int volatile have_data_in ;
   int volatile sent_command ;
   int volatile phase ;
};
struct scsi_cmnd {
   struct scsi_device *device ;
   struct list_head list ;
   struct list_head eh_entry ;
   struct delayed_work abort_work ;
   int eh_eflags ;
   unsigned long serial_number ;
   unsigned long jiffies_at_alloc ;
   int retries ;
   int allowed ;
   unsigned char prot_op ;
   unsigned char prot_type ;
   unsigned char prot_flags ;
   unsigned short cmd_len ;
   enum dma_data_direction sc_data_direction ;
   unsigned char *cmnd ;
   struct scsi_data_buffer sdb ;
   struct scsi_data_buffer *prot_sdb ;
   unsigned int underflow ;
   unsigned int transfersize ;
   struct request *request ;
   unsigned char *sense_buffer ;
   void (*scsi_done)(struct scsi_cmnd * ) ;
   struct scsi_pointer SCp ;
   unsigned char *host_scribble ;
   int result ;
   int flags ;
   unsigned char tag ;
};
struct scsi_sense_hdr {
   u8 response_code ;
   u8 sense_key ;
   u8 asc ;
   u8 ascq ;
   u8 byte4 ;
   u8 byte5 ;
   u8 byte6 ;
   u8 additional_length ;
};
struct blk_mq_tags;
struct blk_mq_cpu_notifier {
   struct list_head list ;
   void *data ;
   int (*notify)(void * , unsigned long , unsigned int ) ;
};
struct blk_align_bitmap;
struct blk_mq_ctxmap {
   unsigned int map_size ;
   unsigned int bits_per_word ;
   struct blk_align_bitmap *map ;
};
struct __anonstruct____missing_field_name_252 {
   spinlock_t lock ;
   struct list_head dispatch ;
};
struct blk_mq_hw_ctx {
   struct __anonstruct____missing_field_name_252 __annonCompField80 ;
   unsigned long state ;
   struct delayed_work run_work ;
   struct delayed_work delay_work ;
   cpumask_var_t cpumask ;
   int next_cpu ;
   int next_cpu_batch ;
   unsigned long flags ;
   struct request_queue *queue ;
   struct blk_flush_queue *fq ;
   void *driver_data ;
   struct blk_mq_ctxmap ctx_map ;
   unsigned int nr_ctx ;
   struct blk_mq_ctx **ctxs ;
   atomic_t wait_index ;
   struct blk_mq_tags *tags ;
   unsigned long queued ;
   unsigned long run ;
   unsigned long dispatched[10U] ;
   unsigned int numa_node ;
   unsigned int queue_num ;
   atomic_t nr_active ;
   struct blk_mq_cpu_notifier cpu_notifier ;
   struct kobject kobj ;
};
struct blk_mq_tag_set {
   struct blk_mq_ops *ops ;
   unsigned int nr_hw_queues ;
   unsigned int queue_depth ;
   unsigned int reserved_tags ;
   unsigned int cmd_size ;
   int numa_node ;
   unsigned int timeout ;
   unsigned int flags ;
   void *driver_data ;
   struct blk_mq_tags **tags ;
   struct mutex tag_list_lock ;
   struct list_head tag_list ;
};
struct blk_mq_queue_data {
   struct request *rq ;
   struct list_head *list ;
   bool last ;
};
typedef int queue_rq_fn(struct blk_mq_hw_ctx * , struct blk_mq_queue_data const * );
typedef struct blk_mq_hw_ctx *map_queue_fn(struct request_queue * , int const );
typedef enum blk_eh_timer_return timeout_fn(struct request * , bool );
typedef int init_hctx_fn(struct blk_mq_hw_ctx * , void * , unsigned int );
typedef void exit_hctx_fn(struct blk_mq_hw_ctx * , unsigned int );
typedef int init_request_fn(void * , struct request * , unsigned int , unsigned int ,
                            unsigned int );
typedef void exit_request_fn(void * , struct request * , unsigned int , unsigned int );
struct blk_mq_ops {
   queue_rq_fn *queue_rq ;
   map_queue_fn *map_queue ;
   timeout_fn *timeout ;
   softirq_done_fn *complete ;
   init_hctx_fn *init_hctx ;
   exit_hctx_fn *exit_hctx ;
   init_request_fn *init_request ;
   exit_request_fn *exit_request ;
};
struct scsi_host_cmd_pool;
struct scsi_transport_template;
struct scsi_host_template {
   struct module *module ;
   char const *name ;
   int (*detect)(struct scsi_host_template * ) ;
   int (*release)(struct Scsi_Host * ) ;
   char const *(*info)(struct Scsi_Host * ) ;
   int (*ioctl)(struct scsi_device * , int , void * ) ;
   int (*compat_ioctl)(struct scsi_device * , int , void * ) ;
   int (*queuecommand)(struct Scsi_Host * , struct scsi_cmnd * ) ;
   int (*eh_abort_handler)(struct scsi_cmnd * ) ;
   int (*eh_device_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_target_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_bus_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_host_reset_handler)(struct scsi_cmnd * ) ;
   int (*slave_alloc)(struct scsi_device * ) ;
   int (*slave_configure)(struct scsi_device * ) ;
   void (*slave_destroy)(struct scsi_device * ) ;
   int (*target_alloc)(struct scsi_target * ) ;
   void (*target_destroy)(struct scsi_target * ) ;
   int (*scan_finished)(struct Scsi_Host * , unsigned long ) ;
   void (*scan_start)(struct Scsi_Host * ) ;
   int (*change_queue_depth)(struct scsi_device * , int ) ;
   int (*bios_param)(struct scsi_device * , struct block_device * , sector_t , int * ) ;
   void (*unlock_native_capacity)(struct scsi_device * ) ;
   int (*show_info)(struct seq_file * , struct Scsi_Host * ) ;
   int (*write_info)(struct Scsi_Host * , char * , int ) ;
   enum blk_eh_timer_return (*eh_timed_out)(struct scsi_cmnd * ) ;
   int (*host_reset)(struct Scsi_Host * , int ) ;
   char const *proc_name ;
   struct proc_dir_entry *proc_dir ;
   int can_queue ;
   int this_id ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned int max_sectors ;
   unsigned long dma_boundary ;
   short cmd_per_lun ;
   unsigned char present ;
   int tag_alloc_policy ;
   unsigned char use_blk_tags : 1 ;
   unsigned char track_queue_depth : 1 ;
   unsigned char supported_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char emulated : 1 ;
   unsigned char skip_settle_delay : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char no_async_abort : 1 ;
   unsigned int max_host_blocked ;
   struct device_attribute **shost_attrs ;
   struct device_attribute **sdev_attrs ;
   struct list_head legacy_hosts ;
   u64 vendor_id ;
   unsigned int cmd_size ;
   struct scsi_host_cmd_pool *cmd_pool ;
   bool disable_blk_mq ;
};
enum scsi_host_state {
    SHOST_CREATED = 1,
    SHOST_RUNNING = 2,
    SHOST_CANCEL = 3,
    SHOST_DEL = 4,
    SHOST_RECOVERY = 5,
    SHOST_CANCEL_RECOVERY = 6,
    SHOST_DEL_RECOVERY = 7
} ;
union __anonunion____missing_field_name_253 {
   struct blk_queue_tag *bqt ;
   struct blk_mq_tag_set tag_set ;
};
struct Scsi_Host {
   struct list_head __devices ;
   struct list_head __targets ;
   struct scsi_host_cmd_pool *cmd_pool ;
   spinlock_t free_list_lock ;
   struct list_head free_list ;
   struct list_head starved_list ;
   spinlock_t default_lock ;
   spinlock_t *host_lock ;
   struct mutex scan_mutex ;
   struct list_head eh_cmd_q ;
   struct task_struct *ehandler ;
   struct completion *eh_action ;
   wait_queue_head_t host_wait ;
   struct scsi_host_template *hostt ;
   struct scsi_transport_template *transportt ;
   union __anonunion____missing_field_name_253 __annonCompField81 ;
   atomic_t host_busy ;
   atomic_t host_blocked ;
   unsigned int host_failed ;
   unsigned int host_eh_scheduled ;
   unsigned int host_no ;
   int eh_deadline ;
   unsigned long last_reset ;
   unsigned int max_channel ;
   unsigned int max_id ;
   u64 max_lun ;
   unsigned int unique_id ;
   unsigned short max_cmd_len ;
   int this_id ;
   int can_queue ;
   short cmd_per_lun ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned int max_sectors ;
   unsigned long dma_boundary ;
   unsigned int nr_hw_queues ;
   unsigned long cmd_serial_number ;
   unsigned char active_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char host_self_blocked : 1 ;
   unsigned char reverse_ordering : 1 ;
   unsigned char tmf_in_progress : 1 ;
   unsigned char async_scan : 1 ;
   unsigned char eh_noresume : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char use_blk_mq : 1 ;
   unsigned char use_cmd_list : 1 ;
   char work_q_name[20U] ;
   struct workqueue_struct *work_q ;
   struct workqueue_struct *tmf_work_q ;
   unsigned char no_scsi2_lun_in_cdb : 1 ;
   unsigned int max_host_blocked ;
   unsigned int prot_capabilities ;
   unsigned char prot_guard_type ;
   struct request_queue *uspace_req_q ;
   unsigned long base ;
   unsigned long io_port ;
   unsigned char n_io_port ;
   unsigned char dma_channel ;
   unsigned int irq ;
   enum scsi_host_state shost_state ;
   struct device shost_gendev ;
   struct device shost_dev ;
   struct list_head sht_legacy_list ;
   void *shost_data ;
   struct device *dma_dev ;
   unsigned long hostdata[0U] ;
};
struct scsi_ioctl_command {
   unsigned int inlen ;
   unsigned int outlen ;
   unsigned char data[0U] ;
};
typedef struct scsi_ioctl_command Scsi_Ioctl_Command;
struct sg_io_hdr {
   int interface_id ;
   int dxfer_direction ;
   unsigned char cmd_len ;
   unsigned char mx_sb_len ;
   unsigned short iovec_count ;
   unsigned int dxfer_len ;
   void *dxferp ;
   unsigned char *cmdp ;
   void *sbp ;
   unsigned int timeout ;
   unsigned int flags ;
   int pack_id ;
   void *usr_ptr ;
   unsigned char status ;
   unsigned char masked_status ;
   unsigned char msg_status ;
   unsigned char sb_len_wr ;
   unsigned short host_status ;
   unsigned short driver_status ;
   int resid ;
   unsigned int duration ;
   unsigned int info ;
};
typedef struct sg_io_hdr sg_io_hdr_t;
struct sg_scsi_id {
   int host_no ;
   int channel ;
   int scsi_id ;
   int lun ;
   int scsi_type ;
   short h_cmd_per_lun ;
   short d_queue_depth ;
   int unused[2U] ;
};
typedef struct sg_scsi_id sg_scsi_id_t;
struct sg_req_info {
   char req_state ;
   char orphan ;
   char sg_io_owned ;
   char problem ;
   int pack_id ;
   void *usr_ptr ;
   unsigned int duration ;
   int unused ;
};
typedef struct sg_req_info sg_req_info_t;
struct sg_header {
   int pack_len ;
   int reply_len ;
   int pack_id ;
   int result ;
   unsigned char twelve_byte : 1 ;
   unsigned char target_status : 5 ;
   unsigned char host_status ;
   unsigned char driver_status ;
   unsigned short other_flags : 10 ;
   unsigned char sense_buffer[16U] ;
};
struct sg_scatter_hold {
   unsigned short k_use_sg ;
   unsigned int sglist_len ;
   unsigned int bufflen ;
   struct page **pages ;
   int page_order ;
   char dio_in_use ;
   unsigned char cmd_opcode ;
};
typedef struct sg_scatter_hold Sg_scatter_hold;
struct sg_device;
struct sg_fd;
struct sg_request {
   struct sg_request *nextrp ;
   struct sg_fd *parentfp ;
   Sg_scatter_hold data ;
   sg_io_hdr_t header ;
   unsigned char sense_b[96U] ;
   char res_used ;
   char orphan ;
   char sg_io_owned ;
   char done ;
   struct request *rq ;
   struct bio *bio ;
   struct execute_work ew ;
};
typedef struct sg_request Sg_request;
struct sg_fd {
   struct list_head sfd_siblings ;
   struct sg_device *parentdp ;
   wait_queue_head_t read_wait ;
   rwlock_t rq_list_lock ;
   int timeout ;
   int timeout_user ;
   Sg_scatter_hold reserve ;
   unsigned int save_scat_len ;
   Sg_request *headrp ;
   struct fasync_struct *async_qp ;
   Sg_request req_arr[16U] ;
   char low_dma ;
   char force_packid ;
   char cmd_q ;
   unsigned char next_cmd_len ;
   char keep_orphan ;
   char mmap_called ;
   struct kref f_ref ;
   struct execute_work ew ;
};
typedef struct sg_fd Sg_fd;
struct sg_device {
   struct scsi_device *device ;
   wait_queue_head_t open_wait ;
   struct mutex open_rel_lock ;
   int sg_tablesize ;
   u32 index ;
   struct list_head sfds ;
   rwlock_t sfd_lock ;
   atomic_t detaching ;
   bool exclude ;
   int open_cnt ;
   char sgdebug ;
   struct gendisk *disk ;
   struct cdev *cdev ;
   struct kref d_ref ;
};
typedef struct sg_device Sg_device;
struct sg_proc_leaf {
   char const *name ;
   struct file_operations const *fops ;
};
struct sg_proc_deviter {
   loff_t index ;
   size_t max ;
};
struct ldv_struct_EMGentry_20 {
   int signal_pending ;
};
struct ldv_struct_cdev_del_16 {
   struct file_operations *arg0 ;
   int signal_pending ;
};
struct ldv_struct_dummy_resourceless_instance_14 {
   struct class_interface *arg0 ;
   int signal_pending ;
};
struct ldv_struct_seq_instance_8 {
   struct seq_file *arg0 ;
   struct seq_operations *arg1 ;
   int signal_pending ;
};
typedef struct gendisk *ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
struct device_private {
   void *driver_data ;
};
typedef short s16;
enum hrtimer_restart;
typedef unsigned long kernel_ulong_t;
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct kthread_work;
struct kthread_worker {
   spinlock_t lock ;
   struct list_head work_list ;
   struct task_struct *task ;
   struct kthread_work *current_work ;
};
struct kthread_work {
   struct list_head node ;
   void (*func)(struct kthread_work * ) ;
   struct kthread_worker *worker ;
};
struct dma_chan;
struct spi_master;
struct spi_device {
   struct device dev ;
   struct spi_master *master ;
   u32 max_speed_hz ;
   u8 chip_select ;
   u8 bits_per_word ;
   u16 mode ;
   int irq ;
   void *controller_state ;
   void *controller_data ;
   char modalias[32U] ;
   int cs_gpio ;
};
struct spi_message;
struct spi_transfer;
struct spi_master {
   struct device dev ;
   struct list_head list ;
   s16 bus_num ;
   u16 num_chipselect ;
   u16 dma_alignment ;
   u16 mode_bits ;
   u32 bits_per_word_mask ;
   u32 min_speed_hz ;
   u32 max_speed_hz ;
   u16 flags ;
   spinlock_t bus_lock_spinlock ;
   struct mutex bus_lock_mutex ;
   bool bus_lock_flag ;
   int (*setup)(struct spi_device * ) ;
   int (*transfer)(struct spi_device * , struct spi_message * ) ;
   void (*cleanup)(struct spi_device * ) ;
   bool (*can_dma)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool idling ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   bool cur_msg_mapped ;
   struct completion xfer_completion ;
   size_t max_dma_len ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
   struct dma_chan *dma_tx ;
   struct dma_chan *dma_rx ;
   void *dummy_rx ;
   void *dummy_tx ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   struct sg_table tx_sg ;
   struct sg_table rx_sg ;
   unsigned char cs_change : 1 ;
   unsigned char tx_nbits : 3 ;
   unsigned char rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned char is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
struct notifier_block;
enum hrtimer_restart;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
typedef unsigned int mmc_pm_flag_t;
struct mmc_card;
struct sdio_func;
typedef void sdio_irq_handler_t(struct sdio_func * );
struct sdio_func_tuple {
   struct sdio_func_tuple *next ;
   unsigned char code ;
   unsigned char size ;
   unsigned char data[0U] ;
};
struct sdio_func {
   struct mmc_card *card ;
   struct device dev ;
   sdio_irq_handler_t *irq_handler ;
   unsigned int num ;
   unsigned char class ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned int max_blksize ;
   unsigned int cur_blksize ;
   unsigned int enable_timeout ;
   unsigned int state ;
   u8 tmpbuf[4U] ;
   unsigned int num_info ;
   char const **info ;
   struct sdio_func_tuple *tuples ;
};
enum led_brightness {
    LED_OFF = 0,
    LED_HALF = 127,
    LED_FULL = 255
} ;
struct led_trigger;
struct led_classdev {
   char const *name ;
   enum led_brightness brightness ;
   enum led_brightness max_brightness ;
   int flags ;
   void (*brightness_set)(struct led_classdev * , enum led_brightness ) ;
   int (*brightness_set_sync)(struct led_classdev * , enum led_brightness ) ;
   enum led_brightness (*brightness_get)(struct led_classdev * ) ;
   int (*blink_set)(struct led_classdev * , unsigned long * , unsigned long * ) ;
   struct device *dev ;
   struct attribute_group const **groups ;
   struct list_head node ;
   char const *default_trigger ;
   unsigned long blink_delay_on ;
   unsigned long blink_delay_off ;
   struct timer_list blink_timer ;
   int blink_brightness ;
   void (*flash_resume)(struct led_classdev * ) ;
   struct work_struct set_brightness_work ;
   int delayed_set_value ;
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
   bool activated ;
   struct mutex led_access ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev * ) ;
   void (*deactivate)(struct led_classdev * ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
struct fault_attr {
   unsigned long probability ;
   unsigned long interval ;
   atomic_t times ;
   atomic_t space ;
   unsigned long verbose ;
   u32 task_filter ;
   unsigned long stacktrace_depth ;
   unsigned long require_start ;
   unsigned long require_end ;
   unsigned long reject_start ;
   unsigned long reject_end ;
   unsigned long count ;
   struct ratelimit_state ratelimit_state ;
   struct dentry *dname ;
};
struct mmc_data;
struct mmc_request;
struct mmc_command {
   u32 opcode ;
   u32 arg ;
   u32 resp[4U] ;
   unsigned int flags ;
   unsigned int retries ;
   unsigned int error ;
   unsigned int busy_timeout ;
   bool sanitize_busy ;
   struct mmc_data *data ;
   struct mmc_request *mrq ;
};
struct mmc_data {
   unsigned int timeout_ns ;
   unsigned int timeout_clks ;
   unsigned int blksz ;
   unsigned int blocks ;
   unsigned int error ;
   unsigned int flags ;
   unsigned int bytes_xfered ;
   struct mmc_command *stop ;
   struct mmc_request *mrq ;
   unsigned int sg_len ;
   struct scatterlist *sg ;
   s32 host_cookie ;
};
struct mmc_host;
struct mmc_request {
   struct mmc_command *sbc ;
   struct mmc_command *cmd ;
   struct mmc_data *data ;
   struct mmc_command *stop ;
   struct completion completion ;
   void (*done)(struct mmc_request * ) ;
   struct mmc_host *host ;
};
struct mmc_async_req;
struct mmc_cid {
   unsigned int manfid ;
   char prod_name[8U] ;
   unsigned char prv ;
   unsigned int serial ;
   unsigned short oemid ;
   unsigned short year ;
   unsigned char hwrev ;
   unsigned char fwrev ;
   unsigned char month ;
};
struct mmc_csd {
   unsigned char structure ;
   unsigned char mmca_vsn ;
   unsigned short cmdclass ;
   unsigned short tacc_clks ;
   unsigned int tacc_ns ;
   unsigned int c_size ;
   unsigned int r2w_factor ;
   unsigned int max_dtr ;
   unsigned int erase_size ;
   unsigned int read_blkbits ;
   unsigned int write_blkbits ;
   unsigned int capacity ;
   unsigned char read_partial : 1 ;
   unsigned char read_misalign : 1 ;
   unsigned char write_partial : 1 ;
   unsigned char write_misalign : 1 ;
   unsigned char dsr_imp : 1 ;
};
struct mmc_ext_csd {
   u8 rev ;
   u8 erase_group_def ;
   u8 sec_feature_support ;
   u8 rel_sectors ;
   u8 rel_param ;
   u8 part_config ;
   u8 cache_ctrl ;
   u8 rst_n_function ;
   u8 max_packed_writes ;
   u8 max_packed_reads ;
   u8 packed_event_en ;
   unsigned int part_time ;
   unsigned int sa_timeout ;
   unsigned int generic_cmd6_time ;
   unsigned int power_off_longtime ;
   u8 power_off_notification ;
   unsigned int hs_max_dtr ;
   unsigned int hs200_max_dtr ;
   unsigned int sectors ;
   unsigned int hc_erase_size ;
   unsigned int hc_erase_timeout ;
   unsigned int sec_trim_mult ;
   unsigned int sec_erase_mult ;
   unsigned int trim_timeout ;
   bool partition_setting_completed ;
   unsigned long long enhanced_area_offset ;
   unsigned int enhanced_area_size ;
   unsigned int cache_size ;
   bool hpi_en ;
   bool hpi ;
   unsigned int hpi_cmd ;
   bool bkops ;
   bool man_bkops_en ;
   unsigned int data_sector_size ;
   unsigned int data_tag_unit_size ;
   unsigned int boot_ro_lock ;
   bool boot_ro_lockable ;
   bool ffu_capable ;
   u8 fwrev[8U] ;
   u8 raw_exception_status ;
   u8 raw_partition_support ;
   u8 raw_rpmb_size_mult ;
   u8 raw_erased_mem_count ;
   u8 raw_ext_csd_structure ;
   u8 raw_card_type ;
   u8 out_of_int_time ;
   u8 raw_pwr_cl_52_195 ;
   u8 raw_pwr_cl_26_195 ;
   u8 raw_pwr_cl_52_360 ;
   u8 raw_pwr_cl_26_360 ;
   u8 raw_s_a_timeout ;
   u8 raw_hc_erase_gap_size ;
   u8 raw_erase_timeout_mult ;
   u8 raw_hc_erase_grp_size ;
   u8 raw_sec_trim_mult ;
   u8 raw_sec_erase_mult ;
   u8 raw_sec_feature_support ;
   u8 raw_trim_mult ;
   u8 raw_pwr_cl_200_195 ;
   u8 raw_pwr_cl_200_360 ;
   u8 raw_pwr_cl_ddr_52_195 ;
   u8 raw_pwr_cl_ddr_52_360 ;
   u8 raw_pwr_cl_ddr_200_360 ;
   u8 raw_bkops_status ;
   u8 raw_sectors[4U] ;
   unsigned int feature_support ;
};
struct sd_scr {
   unsigned char sda_vsn ;
   unsigned char sda_spec3 ;
   unsigned char bus_widths ;
   unsigned char cmds ;
};
struct sd_ssr {
   unsigned int au ;
   unsigned int erase_timeout ;
   unsigned int erase_offset ;
};
struct sd_switch_caps {
   unsigned int hs_max_dtr ;
   unsigned int uhs_max_dtr ;
   unsigned int sd3_bus_mode ;
   unsigned int sd3_drv_type ;
   unsigned int sd3_curr_limit ;
};
struct sdio_cccr {
   unsigned int sdio_vsn ;
   unsigned int sd_vsn ;
   unsigned char multi_block : 1 ;
   unsigned char low_speed : 1 ;
   unsigned char wide_bus : 1 ;
   unsigned char high_power : 1 ;
   unsigned char high_speed : 1 ;
   unsigned char disable_cd : 1 ;
};
struct sdio_cis {
   unsigned short vendor ;
   unsigned short device ;
   unsigned short blksize ;
   unsigned int max_dtr ;
};
struct mmc_ios;
struct mmc_part {
   unsigned int size ;
   unsigned int part_cfg ;
   char name[20U] ;
   bool force_ro ;
   unsigned int area_type ;
};
struct mmc_card {
   struct mmc_host *host ;
   struct device dev ;
   u32 ocr ;
   unsigned int rca ;
   unsigned int type ;
   unsigned int state ;
   unsigned int quirks ;
   unsigned int erase_size ;
   unsigned int erase_shift ;
   unsigned int pref_erase ;
   u8 erased_byte ;
   u32 raw_cid[4U] ;
   u32 raw_csd[4U] ;
   u32 raw_scr[2U] ;
   struct mmc_cid cid ;
   struct mmc_csd csd ;
   struct mmc_ext_csd ext_csd ;
   struct sd_scr scr ;
   struct sd_ssr ssr ;
   struct sd_switch_caps sw_caps ;
   unsigned int sdio_funcs ;
   struct sdio_cccr cccr ;
   struct sdio_cis cis ;
   struct sdio_func *sdio_func[7U] ;
   struct sdio_func *sdio_single_irq ;
   unsigned int num_info ;
   char const **info ;
   struct sdio_func_tuple *tuples ;
   unsigned int sd_bus_speed ;
   unsigned int mmc_avail_type ;
   struct dentry *debugfs_root ;
   struct mmc_part part[7U] ;
   unsigned int nr_parts ;
};
struct mmc_ios {
   unsigned int clock ;
   unsigned short vdd ;
   unsigned char bus_mode ;
   unsigned char chip_select ;
   unsigned char power_mode ;
   unsigned char bus_width ;
   unsigned char timing ;
   unsigned char signal_voltage ;
   unsigned char drv_type ;
};
struct mmc_host_ops {
   int (*enable)(struct mmc_host * ) ;
   int (*disable)(struct mmc_host * ) ;
   void (*post_req)(struct mmc_host * , struct mmc_request * , int ) ;
   void (*pre_req)(struct mmc_host * , struct mmc_request * , bool ) ;
   void (*request)(struct mmc_host * , struct mmc_request * ) ;
   void (*set_ios)(struct mmc_host * , struct mmc_ios * ) ;
   int (*get_ro)(struct mmc_host * ) ;
   int (*get_cd)(struct mmc_host * ) ;
   void (*enable_sdio_irq)(struct mmc_host * , int ) ;
   void (*init_card)(struct mmc_host * , struct mmc_card * ) ;
   int (*start_signal_voltage_switch)(struct mmc_host * , struct mmc_ios * ) ;
   int (*card_busy)(struct mmc_host * ) ;
   int (*execute_tuning)(struct mmc_host * , u32 ) ;
   int (*prepare_hs400_tuning)(struct mmc_host * , struct mmc_ios * ) ;
   int (*select_drive_strength)(unsigned int , int , int ) ;
   void (*hw_reset)(struct mmc_host * ) ;
   void (*card_event)(struct mmc_host * ) ;
   int (*multi_io_quirk)(struct mmc_card * , unsigned int , int ) ;
};
struct mmc_async_req {
   struct mmc_request *mrq ;
   int (*err_check)(struct mmc_card * , struct mmc_async_req * ) ;
};
struct mmc_slot {
   int cd_irq ;
   void *handler_priv ;
};
struct mmc_context_info {
   bool is_done_rcv ;
   bool is_new_req ;
   bool is_waiting_last_req ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
};
struct regulator;
struct mmc_pwrseq;
struct mmc_supply {
   struct regulator *vmmc ;
   struct regulator *vqmmc ;
};
struct mmc_bus_ops;
struct mmc_host {
   struct device *parent ;
   struct device class_dev ;
   int index ;
   struct mmc_host_ops const *ops ;
   struct mmc_pwrseq *pwrseq ;
   unsigned int f_min ;
   unsigned int f_max ;
   unsigned int f_init ;
   u32 ocr_avail ;
   u32 ocr_avail_sdio ;
   u32 ocr_avail_sd ;
   u32 ocr_avail_mmc ;
   struct notifier_block pm_notify ;
   u32 max_current_330 ;
   u32 max_current_300 ;
   u32 max_current_180 ;
   u32 caps ;
   u32 caps2 ;
   mmc_pm_flag_t pm_caps ;
   int clk_requests ;
   unsigned int clk_delay ;
   bool clk_gated ;
   struct delayed_work clk_gate_work ;
   unsigned int clk_old ;
   spinlock_t clk_lock ;
   struct mutex clk_gate_mutex ;
   struct device_attribute clkgate_delay_attr ;
   unsigned long clkgate_delay ;
   unsigned int max_seg_size ;
   unsigned short max_segs ;
   unsigned short unused ;
   unsigned int max_req_size ;
   unsigned int max_blk_size ;
   unsigned int max_blk_count ;
   unsigned int max_busy_timeout ;
   spinlock_t lock ;
   struct mmc_ios ios ;
   unsigned char use_spi_crc : 1 ;
   unsigned char claimed : 1 ;
   unsigned char bus_dead : 1 ;
   unsigned char removed : 1 ;
   int rescan_disable ;
   int rescan_entered ;
   bool trigger_card_event ;
   struct mmc_card *card ;
   wait_queue_head_t wq ;
   struct task_struct *claimer ;
   int claim_cnt ;
   struct delayed_work detect ;
   int detect_change ;
   struct mmc_slot slot ;
   struct mmc_bus_ops const *bus_ops ;
   unsigned int bus_refs ;
   unsigned int sdio_irqs ;
   struct task_struct *sdio_irq_thread ;
   bool sdio_irq_pending ;
   atomic_t sdio_irq_thread_abort ;
   mmc_pm_flag_t pm_flags ;
   struct led_trigger *led ;
   bool regulator_enabled ;
   struct mmc_supply supply ;
   struct dentry *debugfs_root ;
   struct mmc_async_req *areq ;
   struct mmc_context_info context_info ;
   struct fault_attr fail_mmc_request ;
   unsigned int actual_clock ;
   unsigned int slotno ;
   int dsr_req ;
   u32 dsr ;
   unsigned long private[0U] ;
};
typedef int ldv_map;
struct usb_device;
struct urb;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
typedef _Bool ldv_set;
long ldv__builtin_expect(long exp , long c ) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_irq_check_alloc_nonatomic(void) ;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void) ;
void ldv_linux_arch_io_check_final_state(void) ;
void ldv_linux_block_genhd_check_final_state(void) ;
void ldv_linux_block_queue_check_final_state(void) ;
void ldv_linux_block_request_check_final_state(void) ;
void *ldv_linux_drivers_base_class_create_class(void) ;
int ldv_linux_drivers_base_class_register_class(void) ;
void ldv_linux_drivers_base_class_destroy_class(struct class *cls ) ;
void ldv_linux_drivers_base_class_check_final_state(void) ;
int ldv_linux_fs_char_dev_register_chrdev_region(void) ;
void ldv_linux_fs_char_dev_unregister_chrdev_region(void) ;
void ldv_linux_fs_char_dev_check_final_state(void) ;
void ldv_linux_fs_sysfs_check_final_state(void) ;
void ldv_linux_kernel_locking_rwlock_check_final_state(void) ;
void ldv_linux_kernel_module_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_check_final_state(void) ;
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_srcu_check_final_state(void) ;
void ldv_linux_lib_find_bit_initialize(void) ;
void ldv_linux_lib_idr_check_final_state(void) ;
void ldv_linux_mmc_sdio_func_check_final_state(void) ;
void ldv_linux_net_register_reset_error_counter(void) ;
void ldv_linux_net_rtnetlink_check_final_state(void) ;
void ldv_linux_net_sock_check_final_state(void) ;
void ldv_linux_usb_coherent_check_final_state(void) ;
void *ldv_linux_usb_gadget_create_class(void) ;
int ldv_linux_usb_gadget_register_class(void) ;
void ldv_linux_usb_gadget_destroy_class(struct class *cls ) ;
int ldv_linux_usb_gadget_register_chrdev_region(void) ;
void ldv_linux_usb_gadget_unregister_chrdev_region(void) ;
void ldv_linux_usb_gadget_check_final_state(void) ;
void ldv_linux_usb_register_reset_error_counter(void) ;
void ldv_linux_usb_urb_check_final_state(void) ;
void ldv_check_alloc_nonatomic(void)
{
  {
  {
  ldv_linux_alloc_irq_check_alloc_nonatomic();
  ldv_linux_alloc_usb_lock_check_alloc_nonatomic();
  }
  return;
}
}
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  {
  ldv_linux_alloc_irq_check_alloc_flags(flags);
  ldv_linux_alloc_usb_lock_check_alloc_flags(flags);
  }
  return;
}
}
void ldv_check_for_read_section(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section();
  ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section();
  ldv_linux_kernel_rcu_update_lock_check_for_read_section();
  ldv_linux_kernel_rcu_srcu_check_for_read_section();
  }
  return;
}
}
void *ldv_create_class(void)
{
  void *res1 ;
  void *tmp ;
  void *res2 ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_linux_drivers_base_class_create_class();
  res1 = tmp;
  tmp___0 = ldv_linux_usb_gadget_create_class();
  res2 = tmp___0;
  ldv_assume((unsigned long )res1 == (unsigned long )res2);
  }
  return (res1);
}
}
int ldv_register_class(void)
{
  int res1 ;
  int tmp ;
  int res2 ;
  int tmp___0 ;
  {
  {
  tmp = ldv_linux_drivers_base_class_register_class();
  res1 = tmp;
  tmp___0 = ldv_linux_usb_gadget_register_class();
  res2 = tmp___0;
  ldv_assume(res1 == res2);
  }
  return (res1);
}
}
void *ldv_err_ptr(long error ) ;
long ldv_ptr_err(void const *ptr ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
int ldv_linux_usb_dev_atomic_sub_and_test(int i , atomic_t *v ) ;
void ldv_linux_usb_dev_atomic_inc(atomic_t *v ) ;
int ldv_linux_usb_dev_atomic_add_return(int i , atomic_t *v ) ;
struct gendisk *ldv_linux_block_genhd_alloc_disk(void) ;
void ldv_linux_block_genhd_put_disk(struct gendisk *disk ) ;
int ldv_undef_int(void) ;
void *ldv_undef_ptr(void) ;
void ldv_linux_lib_idr_idr_alloc_sg_index_idr(void) ;
void ldv_linux_lib_idr_idr_find_sg_index_idr(void) ;
void ldv_linux_lib_idr_idr_remove_sg_index_idr(void) ;
void ldv_linux_lib_idr_idr_destroy_sg_index_idr(void) ;
static void ldv_ldv_initialize_135(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_132(int ldv_func_arg1 ) ;
int ldv_filter_err_code(int ret_val ) ;
static void ldv_ldv_check_final_state_133(void) ;
static void ldv_ldv_check_final_state_134(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
void *ldv_malloc_unknown_size(void) ;
extern void ldv_after_alloc(void * ) ;
void *ldv_alloc_macro(gfp_t flags )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc_unknown_size();
  }
  return (tmp);
}
}
void ldv_linux_kernel_module_module_get(struct module *module ) ;
void ldv_linux_kernel_module_module_put(struct module *module ) ;
static void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_101(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_open_rel_lock_of_sg_device(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_open_rel_lock_of_sg_device(struct mutex *lock ) ;
struct request *ldv_linux_block_request_blk_get_request(gfp_t mask ) ;
void ldv_linux_block_request_put_blk_rq(void) ;
void ldv_linux_kernel_locking_rwlock_read_lock(void) ;
void ldv_linux_kernel_locking_rwlock_read_unlock(void) ;
void ldv_linux_kernel_locking_rwlock_write_lock(void) ;
void ldv_linux_kernel_locking_rwlock_write_unlock(void) ;
extern struct module __this_module ;
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static int fls64(__u64 x )
{
  int bitpos ;
  {
  bitpos = -1;
  __asm__ ("bsrq %1,%q0": "+r" (bitpos): "rm" (x));
  return (bitpos + 1);
}
}
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern void might_fault(void) ;
extern int kstrtoul_from_user(char const * , size_t , unsigned int , unsigned long * ) ;
extern int sprintf(char * , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head->prev, head);
  }
  return;
}
}
extern void list_del(struct list_head * ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  {
  if (8UL == 1UL) {
    goto case_1;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3562;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3562;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3562;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3562;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3562: ;
  return (pfo_ret__);
}
}
__inline static int __get_order(unsigned long size )
{
  int order ;
  {
  {
  size = size - 1UL;
  size = size >> 12;
  order = fls64((__u64 )size);
  }
  return (order);
}
}
extern void *memdup_user(void const * , size_t ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  }
  return (tmp != 0L);
}
}
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static int atomic_sub_and_test(int i , atomic_t *v ) ;
__inline static void atomic_inc(atomic_t *v ) ;
__inline static int atomic_add_return(int i , atomic_t *v ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_96(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_102(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 ) ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  {
  if (8UL == 1UL) {
    goto case_1;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7026;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7026;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7026;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7026;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7026:
  ti = (struct thread_info *)(pfo_ret__ - 32728UL);
  return (ti);
}
}
extern int __preempt_count ;
__inline static void __preempt_count_sub(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_7158;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_7158;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_7158;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_7158;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7158: ;
  return;
}
}
extern void __rwlock_init(rwlock_t * , char const * , struct lock_class_key * ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern void idr_preload(gfp_t ) ;
static int ldv_idr_alloc_108(struct idr *ldv_func_arg1 , void *ldv_func_arg2 , int ldv_func_arg3 ,
                             int ldv_func_arg4 , gfp_t ldv_func_arg5 ) ;
extern int idr_for_each(struct idr * , int (*)(int , void * , void * ) , void * ) ;
static void ldv_idr_remove_110(struct idr *ldv_func_arg1 , int ldv_func_arg2 ) ;
static void ldv_idr_remove_113(struct idr *ldv_func_arg1 , int ldv_func_arg2 ) ;
static void ldv_idr_destroy_123(struct idr *ldv_func_arg1 ) ;
__inline static void idr_preload_end(void)
{
  {
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  }
  return;
}
}
__inline static void *ldv_idr_find_128(struct idr *idr , int id ) ;
extern int sysfs_create_link(struct kobject * , struct kobject * , char const * ) ;
extern void sysfs_remove_link(struct kobject * , char const * ) ;
__inline static void kref_init(struct kref *kref )
{
  {
  {
  atomic_set(& kref->refcount, 1);
  }
  return;
}
}
__inline static void kref_get(struct kref *kref )
{
  bool __warned ;
  int __ret_warn_once ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = atomic_add_return(1, & kref->refcount);
  __ret_warn_once = tmp <= 1;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___0 != 0L) {
      {
      warn_slowpath_null("include/linux/kref.h", 47);
      }
    } else {
    }
    {
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  }
  return;
}
}
__inline static int kref_sub(struct kref *kref , unsigned int count , void (*release)(struct kref * ) )
{
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  {
  __ret_warn_on = (unsigned long )release == (unsigned long )((void (*)(struct kref * ))0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("include/linux/kref.h", 71);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = atomic_sub_and_test((int )count, & kref->refcount);
  }
  if (tmp___0 != 0) {
    {
    (*release)(kref);
    }
    return (1);
  } else {
  }
  return (0);
}
}
__inline static int kref_put(struct kref *kref , void (*release)(struct kref * ) )
{
  int tmp ;
  {
  {
  tmp = kref_sub(kref, 1U, release);
  }
  return (tmp);
}
}
extern unsigned long volatile jiffies ;
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work_on(8192, wq, work);
  }
  return (tmp);
}
}
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work(system_wq, work);
  }
  return (tmp);
}
}
extern struct cdev *cdev_alloc(void) ;
extern int cdev_add(struct cdev * , dev_t , unsigned int ) ;
extern void cdev_del(struct cdev * ) ;
static void ldv_cdev_del_112(struct cdev *ldv_func_arg1 ) ;
static void ldv_cdev_del_115(struct cdev *ldv_func_arg1 ) ;
extern bool capable(int ) ;
extern void dump_page(struct page * , char const * ) ;
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order ) ;
extern void __free_pages(struct page * , unsigned int ) ;
__inline static unsigned int iminor(struct inode const *inode )
{
  {
  return ((unsigned int )inode->i_rdev & 1048575U);
}
}
extern int fasync_helper(int , struct file * , int , struct fasync_struct ** ) ;
extern void kill_fasync(struct fasync_struct ** , int , int ) ;
extern int register_chrdev_region(dev_t , unsigned int , char const * ) ;
static int ldv_register_chrdev_region_116(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          char const *ldv_func_arg3 ) ;
extern void unregister_chrdev_region(dev_t , unsigned int ) ;
static void ldv_unregister_chrdev_region_119(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
static void ldv_unregister_chrdev_region_122(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
extern loff_t no_llseek(struct file * , loff_t , int ) ;
static int ldv_nonseekable_open_100(struct inode *ldv_func_arg1 , struct file *ldv_func_arg2 ) ;
__inline static int PageTail(struct page const *page )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(15L, (unsigned long const volatile *)(& page->flags));
  }
  return (tmp);
}
}
extern bool __get_page_tail(struct page * ) ;
__inline static void get_page(struct page *page )
{
  bool tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  {
  {
  tmp___1 = PageTail((struct page const *)page);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    tmp = __get_page_tail(page);
    tmp___0 = ldv__builtin_expect((long )tmp, 1L);
    }
    if (tmp___0 != 0L) {
      return;
    } else {
    }
  } else {
  }
  {
  tmp___3 = atomic_read((atomic_t const *)(& page->__annonCompField54.__annonCompField53.__annonCompField52._count));
  tmp___4 = ldv__builtin_expect(tmp___3 <= 0, 0L);
  }
  if (tmp___4 != 0L) {
    {
    dump_page(page, "VM_BUG_ON_PAGE(atomic_read(&page->_count) <= 0)");
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/mm.h"),
                         "i" (548), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  atomic_inc(& page->__annonCompField54.__annonCompField53.__annonCompField52._count);
  }
  return;
}
}
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static bool __chk_range_not_ok(unsigned long addr , unsigned long size ,
                                        unsigned long limit )
{
  {
  addr = addr + size;
  if (addr < size) {
    return (1);
  } else {
  }
  return (addr > limit);
}
}
extern int __get_user_bad(void) ;
extern void __put_user_bad(void) ;
extern unsigned long copy_user_enhanced_fast_string(void * , void const * , unsigned int ) ;
extern unsigned long copy_user_generic_string(void * , void const * , unsigned int ) ;
extern unsigned long copy_user_generic_unrolled(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_user_generic(void *to , void const *from , unsigned int len )
{
  unsigned int ret ;
  {
  __asm__ volatile ("661:\n\tcall %P4\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 3*32+16)\n .byte 662b-661b\n .byte 6641f-6631f\n .long 661b - .\n .long 6632f - .\n .word ( 9*32+ 9)\n .byte 662b-661b\n .byte 6642f-6632f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n .byte 0xff + (6642f-6632f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\tcall %P5\n6641:\n\t6632:\n\tcall %P6\n6642:\n\t.popsection": "=a" (ret),
                       "=D" (to), "=S" (from), "=d" (len): [old] "i" (& copy_user_generic_unrolled),
                       [new1] "i" (& copy_user_generic_string), [new2] "i" (& copy_user_enhanced_fast_string),
                       "1" (to), "2" (from), "3" (len): "memory", "rcx", "r8", "r9",
                       "r10", "r11");
  return ((unsigned long )ret);
}
}
__inline static int __copy_from_user_nocheck(void *dst , void const *src , unsigned int size )
{
  int ret ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  {
  {
  ret = 0;
  tmp = copy_user_generic(dst, src, size);
  }
  return ((int )tmp);
  {
  if (size == 1U) {
    goto case_1;
  } else {
  }
  if (size == 2U) {
    goto case_2;
  } else {
  }
  if (size == 4U) {
    goto case_4;
  } else {
  }
  if (size == 8U) {
    goto case_8;
  } else {
  }
  if (size == 10U) {
    goto case_10;
  } else {
  }
  if (size == 16U) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=q" (*((u8 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (1), "0" (ret));
  return (ret);
  case_2:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (2), "0" (ret));
  return (ret);
  case_4:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u32 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (4), "0" (ret));
  return (ret);
  case_8:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (8), "0" (ret));
  return (ret);
  case_10:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (2), "0" (ret));
  return (ret);
  case_16:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (8), "0" (ret));
  return (ret);
  switch_default:
  {
  tmp___2 = copy_user_generic(dst, src, size);
  }
  return ((int )tmp___2);
  switch_break: ;
  }
}
}
__inline static int __copy_from_user(void *dst , void const *src , unsigned int size )
{
  int tmp ;
  {
  {
  might_fault();
  tmp = __copy_from_user_nocheck(dst, src, size);
  }
  return (tmp);
}
}
__inline static int __copy_to_user_nocheck(void *dst , void const *src , unsigned int size )
{
  int ret ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  {
  {
  ret = 0;
  tmp = copy_user_generic(dst, src, size);
  }
  return ((int )tmp);
  {
  if (size == 1U) {
    goto case_1;
  } else {
  }
  if (size == 2U) {
    goto case_2;
  } else {
  }
  if (size == 4U) {
    goto case_4;
  } else {
  }
  if (size == 8U) {
    goto case_8;
  } else {
  }
  if (size == 10U) {
    goto case_10;
  } else {
  }
  if (size == 16U) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "iq" (*((u8 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (1), "0" (ret));
  return (ret);
  case_2:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (2), "0" (ret));
  return (ret);
  case_4:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u32 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (4), "0" (ret));
  return (ret);
  case_8:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (8), "0" (ret));
  return (ret);
  case_10:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src + 4UL)),
                       "m" (*((struct __large_struct *)dst + 4U)), "i" (2), "0" (ret));
  return (ret);
  case_16:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src + 1UL)),
                       "m" (*((struct __large_struct *)dst + 1U)), "i" (8), "0" (ret));
  return (ret);
  switch_default:
  {
  tmp___2 = copy_user_generic(dst, src, size);
  }
  return ((int )tmp___2);
  switch_break: ;
  }
}
}
__inline static int __copy_to_user(void *dst , void const *src , unsigned int size )
{
  int tmp ;
  {
  {
  might_fault();
  tmp = __copy_to_user_nocheck(dst, src, size);
  }
  return (tmp);
}
}
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  long tmp ;
  long tmp___0 ;
  {
  {
  sz = -1;
  might_fault();
  tmp = ldv__builtin_expect(sz < 0, 1L);
  }
  if (tmp != 0L) {
    {
    n = _copy_from_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___0 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    }
    if (tmp___0 != 0L) {
      {
      n = _copy_from_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __copy_from_user_overflow();
      }
    }
  }
  return (n);
}
}
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  long tmp ;
  long tmp___0 ;
  {
  {
  sz = -1;
  might_fault();
  tmp = ldv__builtin_expect(sz < 0, 1L);
  }
  if (tmp != 0L) {
    {
    n = _copy_to_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___0 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    }
    if (tmp___0 != 0L) {
      {
      n = _copy_to_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __copy_to_user_overflow();
      }
    }
  }
  return (n);
}
}
static int sg_version_num = 30536;
static void ldv___module_get_126(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_127(struct module *ldv_func_arg1 ) ;
extern void schedule(void) ;
__inline static size_t iov_length(struct iovec const *iov , unsigned long nr_segs )
{
  unsigned long seg ;
  size_t ret ;
  {
  ret = 0UL;
  seg = 0UL;
  goto ldv_28986;
  ldv_28985:
  ret = ret + (unsigned long )(iov + seg)->iov_len;
  seg = seg + 1UL;
  ldv_28986: ;
  if (seg < nr_segs) {
    goto ldv_28985;
  } else {
  }
  return (ret);
}
}
extern void iov_iter_init(struct iov_iter * , int , struct iovec const * , unsigned long ,
                          size_t ) ;
extern void kfree(void const * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void poll_wait(struct file *filp , wait_queue_head_t *wait_address ,
                               poll_table *p )
{
  {
  if ((unsigned long )p != (unsigned long )((poll_table *)0) && ((unsigned long )p->_qproc != (unsigned long )((void (*)(struct file * ,
                                                                                                                         wait_queue_head_t * ,
                                                                                                                         struct poll_table_struct * ))0) && (unsigned long )wait_address != (unsigned long )((wait_queue_head_t *)0))) {
    {
    (*(p->_qproc))(filp, wait_address, p);
    }
  } else {
  }
  return;
}
}
extern int seq_open(struct file * , struct seq_operations const * ) ;
static int ldv_seq_open_129(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 ) ;
static int ldv_seq_open_130(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 ) ;
static int ldv_seq_open_131(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_release(struct inode * , struct file * ) ;
extern int seq_puts(struct seq_file * , char const * ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
extern int ___ratelimit(struct ratelimit_state * , char const * ) ;
extern void class_interface_unregister(struct class_interface * ) ;
static void ldv_class_interface_unregister_120(struct class_interface *ldv_func_arg1 ) ;
static void ldv_class_destroy_118(struct class *cls ) ;
static void ldv_class_destroy_121(struct class *cls ) ;
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern struct device *device_create(struct class * , struct device * , dev_t , void * ,
                                    char const * , ...) ;
extern void device_destroy(struct class * , dev_t ) ;
extern struct gendisk *alloc_disk(int ) ;
static struct gendisk *ldv_alloc_disk_109(int minors ) ;
extern void put_disk(struct gendisk * ) ;
static void ldv_put_disk_111(struct gendisk *disk ) ;
static void ldv_put_disk_114(struct gendisk *disk ) ;
static void ldv_blk_put_request_125(struct request *ldv_func_arg1 ) ;
static void ldv___blk_put_request_107(struct request_queue *ldv_func_arg1 , struct request *ldv_func_arg2 ) ;
static struct request *ldv_blk_get_request_124(struct request_queue *ldv_func_arg1 ,
                                               int ldv_func_arg2 , gfp_t ldv_func_arg3 ) ;
extern void blk_rq_set_block_pc(struct request * ) ;
extern int sg_scsi_ioctl(struct request_queue * , struct gendisk * , fmode_t , struct scsi_ioctl_command * ) ;
extern int blk_rq_map_user(struct request_queue * , struct request * , struct rq_map_data * ,
                           void * , unsigned long , gfp_t ) ;
extern int blk_rq_unmap_user(struct bio * ) ;
extern int blk_rq_map_user_iov(struct request_queue * , struct request * , struct rq_map_data * ,
                               struct iov_iter const * , gfp_t ) ;
static void ldv_blk_execute_rq_nowait_106(struct request_queue *ldv_func_arg1 , struct gendisk *ldv_func_arg2 ,
                                          struct request *ldv_func_arg3 , int ldv_func_arg4 ,
                                          void (*ldv_func_arg5)(struct request * ,
                                                                int ) ) ;
extern void blk_end_request_all(struct request * , int ) ;
extern int blk_verify_command(unsigned char * , fmode_t ) ;
__inline static unsigned int queue_max_sectors(struct request_queue *q )
{
  {
  return (q->limits.max_sectors);
}
}
__inline static unsigned short queue_max_segments(struct request_queue *q )
{
  {
  return (q->limits.max_segments);
}
}
__inline static int queue_dma_alignment(struct request_queue *q )
{
  {
  return ((unsigned long )q != (unsigned long )((struct request_queue *)0) ? (int )q->dma_alignment : 511);
}
}
__inline static int blk_rq_aligned(struct request_queue *q , unsigned long addr ,
                                   unsigned int len )
{
  unsigned int alignment ;
  int tmp ;
  {
  {
  tmp = queue_dma_alignment(q);
  alignment = (unsigned int )tmp | q->dma_pad_mask;
  }
  return ((addr & (unsigned long )alignment) == 0UL && (len & alignment) == 0U);
}
}
extern int blk_trace_setup(struct request_queue * , char * , dev_t , struct block_device * ,
                           char * ) ;
extern int blk_trace_startstop(struct request_queue * , int ) ;
extern int blk_trace_remove(struct request_queue * ) ;
extern unsigned char const scsi_command_size_tbl[8U] ;
extern void sdev_prefix_printk(char const * , struct scsi_device const * , char const * ,
                               char const * , ...) ;
extern int scsi_device_get(struct scsi_device * ) ;
extern void scsi_device_put(struct scsi_device * ) ;
extern int scsi_autopm_get_device(struct scsi_device * ) ;
extern void scsi_autopm_put_device(struct scsi_device * ) ;
__inline static int scsi_device_online(struct scsi_device *sdev )
{
  {
  return ((unsigned int )sdev->sdev_state - 6U > 1U && (unsigned int )sdev->sdev_state != 4U);
}
}
extern int scsi_block_when_processing_errors(struct scsi_device * ) ;
extern bool scsi_normalize_sense(u8 const * , int , struct scsi_sense_hdr * ) ;
__inline static bool scsi_sense_is_deferred(struct scsi_sense_hdr const *sshdr )
{
  {
  return ((bool )((unsigned int )((unsigned char )sshdr->response_code) > 111U && (int )sshdr->response_code & 1));
}
}
extern void __scsi_print_sense(struct scsi_device const * , char const * , unsigned char const * ,
                               int ) ;
extern int scsi_register_interface(struct class_interface * ) ;
static int ldv_scsi_register_interface_117(struct class_interface *ldv_func_arg1 ) ;
extern int scsi_ioctl_block_when_processing_errors(struct scsi_device * , int , bool ) ;
extern int scsi_ioctl(struct scsi_device * , int , void * ) ;
int sg_big_buff ;
extern unsigned int scsi_logging_level ;
extern struct proc_dir_entry *proc_mkdir(char const * , struct proc_dir_entry * ) ;
extern struct proc_dir_entry *proc_create_data(char const * , umode_t , struct proc_dir_entry * ,
                                               struct file_operations const * ,
                                               void * ) ;
__inline static struct proc_dir_entry *proc_create(char const *name , umode_t mode ,
                                                   struct proc_dir_entry *parent ,
                                                   struct file_operations const *proc_fops )
{
  struct proc_dir_entry *tmp ;
  {
  {
  tmp = proc_create_data(name, (int )mode, parent, proc_fops, (void *)0);
  }
  return (tmp);
}
}
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
static char *sg_version_date = (char *)"20140603";
static int sg_proc_init(void) ;
static void sg_proc_cleanup(void) ;
int sg_big_buff = 32768;
static int def_reserved_size = -1;
static int sg_allow_dio = 0;
static int scatter_elem_sz = 32768;
static int scatter_elem_sz_prev = 32768;
static int sg_add_device(struct device *cl_dev , struct class_interface *cl_intf ) ;
static void sg_remove_device(struct device *cl_dev , struct class_interface *cl_intf ) ;
static struct idr sg_index_idr = {0, 0, 0, 0, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "sg_index_idr.lock",
                                                                  0, 0UL}}}}, 0, 0};
static struct class_interface sg_interface = {{0, 0}, 0, & sg_add_device, & sg_remove_device};
static void sg_rq_end_io(struct request *rq , int uptodate ) ;
static int sg_start_req(Sg_request *srp , unsigned char *cmd ) ;
static int sg_finish_rem_req(Sg_request *srp ) ;
static int sg_build_indirect(Sg_scatter_hold *schp , Sg_fd *sfp , int buff_size ) ;
static ssize_t sg_new_read(Sg_fd *sfp , char *buf , size_t count , Sg_request *srp ) ;
static ssize_t sg_new_write(Sg_fd *sfp , struct file *file , char const *buf , size_t count ,
                            int blocking , int read_only , int sg_io_owned , Sg_request **o_srp ) ;
static int sg_common_write(Sg_fd *sfp , Sg_request *srp , unsigned char *cmnd , int timeout ,
                           int blocking ) ;
static int sg_read_oxfer(Sg_request *srp , char *outp , int num_read_xfer ) ;
static void sg_remove_scat(Sg_fd *sfp , Sg_scatter_hold *schp ) ;
static void sg_build_reserve(Sg_fd *sfp , int req_size ) ;
static void sg_link_reserve(Sg_fd *sfp , Sg_request *srp , int size ) ;
static void sg_unlink_reserve(Sg_fd *sfp , Sg_request *srp ) ;
static Sg_fd *sg_add_sfp(Sg_device *sdp ) ;
static void sg_remove_sfp(struct kref *kref ) ;
static Sg_request *sg_get_rq_mark(Sg_fd *sfp , int pack_id ) ;
static Sg_request *sg_add_request(Sg_fd *sfp ) ;
static int sg_remove_request(Sg_fd *sfp , Sg_request *srp ) ;
static int sg_res_in_use(Sg_fd *sfp ) ;
static Sg_device *sg_get_dev(int dev ) ;
static void sg_device_destroy(struct kref *kref ) ;
static int sg_allow_access(struct file *filp , unsigned char *cmd )
{
  struct sg_fd *sfp ;
  int tmp ;
  {
  sfp = (struct sg_fd *)filp->private_data;
  if ((int )((signed char )((sfp->parentdp)->device)->type) == 6) {
    return (0);
  } else {
  }
  {
  tmp = blk_verify_command(cmd, filp->f_mode & 2U);
  }
  return (tmp);
}
}
static int open_wait(Sg_device *sdp , int flags )
{
  int retval ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int __ret___1 ;
  wait_queue_t __wait___0 ;
  long __ret___2 ;
  long __int___0 ;
  long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  retval = 0;
  if ((flags & 128) != 0) {
    goto ldv_38122;
    ldv_38121:
    {
    ldv_mutex_unlock_96(& sdp->open_rel_lock);
    __ret = 0;
    __might_sleep("drivers/scsi/sg.c", 245, 0);
    tmp___1 = atomic_read((atomic_t const *)(& sdp->detaching));
    }
    if (tmp___1 == 0 && sdp->open_cnt != 0) {
      {
      __ret___0 = 0L;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      }
      ldv_38118:
      {
      tmp = prepare_to_wait_event(& sdp->open_wait, & __wait, 1);
      __int = tmp;
      tmp___0 = atomic_read((atomic_t const *)(& sdp->detaching));
      }
      if (tmp___0 != 0 || sdp->open_cnt == 0) {
        goto ldv_38117;
      } else {
      }
      if (__int != 0L) {
        __ret___0 = __int;
        goto ldv_38117;
      } else {
      }
      {
      schedule();
      }
      goto ldv_38118;
      ldv_38117:
      {
      finish_wait(& sdp->open_wait, & __wait);
      }
      __ret = (int )__ret___0;
    } else {
    }
    {
    retval = __ret;
    ldv_mutex_lock_97(& sdp->open_rel_lock);
    }
    if (retval != 0) {
      return (retval);
    } else {
    }
    {
    tmp___2 = atomic_read((atomic_t const *)(& sdp->detaching));
    }
    if (tmp___2 != 0) {
      return (-19);
    } else {
    }
    ldv_38122: ;
    if (sdp->open_cnt > 0) {
      goto ldv_38121;
    } else {
    }
  } else {
    goto ldv_38134;
    ldv_38133:
    {
    ldv_mutex_unlock_98(& sdp->open_rel_lock);
    __ret___1 = 0;
    __might_sleep("drivers/scsi/sg.c", 258, 0);
    tmp___5 = atomic_read((atomic_t const *)(& sdp->detaching));
    }
    if (tmp___5 == 0 && (int )sdp->exclude) {
      {
      __ret___2 = 0L;
      INIT_LIST_HEAD(& __wait___0.task_list);
      __wait___0.flags = 0U;
      }
      ldv_38130:
      {
      tmp___3 = prepare_to_wait_event(& sdp->open_wait, & __wait___0, 1);
      __int___0 = tmp___3;
      tmp___4 = atomic_read((atomic_t const *)(& sdp->detaching));
      }
      if (tmp___4 != 0 || ! sdp->exclude) {
        goto ldv_38129;
      } else {
      }
      if (__int___0 != 0L) {
        __ret___2 = __int___0;
        goto ldv_38129;
      } else {
      }
      {
      schedule();
      }
      goto ldv_38130;
      ldv_38129:
      {
      finish_wait(& sdp->open_wait, & __wait___0);
      }
      __ret___1 = (int )__ret___2;
    } else {
    }
    {
    retval = __ret___1;
    ldv_mutex_lock_99(& sdp->open_rel_lock);
    }
    if (retval != 0) {
      return (retval);
    } else {
    }
    {
    tmp___6 = atomic_read((atomic_t const *)(& sdp->detaching));
    }
    if (tmp___6 != 0) {
      return (-19);
    } else {
    }
    ldv_38134: ;
    if ((int )sdp->exclude) {
      goto ldv_38133;
    } else {
    }
  }
  return (retval);
}
}
static int sg_open(struct inode *inode , struct file *filp )
{
  int dev ;
  unsigned int tmp ;
  int flags ;
  struct request_queue *q ;
  Sg_device *sdp ;
  Sg_fd *sfp ;
  int retval ;
  long tmp___0 ;
  bool tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  unsigned short tmp___4 ;
  long tmp___5 ;
  bool tmp___6 ;
  {
  {
  tmp = iminor((struct inode const *)inode);
  dev = (int )tmp;
  flags = (int )filp->f_flags;
  ldv_nonseekable_open_100(inode, filp);
  }
  if (((unsigned int )flags & 131U) == 128U) {
    return (-1);
  } else {
  }
  {
  sdp = sg_get_dev(dev);
  tmp___1 = IS_ERR((void const *)sdp);
  }
  if ((int )tmp___1) {
    {
    tmp___0 = PTR_ERR((void const *)sdp);
    }
    return ((int )tmp___0);
  } else {
  }
  {
  tmp___2 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 3U, 0L);
  }
  if (tmp___2 != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                       "sg_open: flags=0x%x\n", flags);
    }
  } else {
  }
  {
  retval = scsi_device_get(sdp->device);
  }
  if (retval != 0) {
    goto sg_put;
  } else {
  }
  {
  retval = scsi_autopm_get_device(sdp->device);
  }
  if (retval != 0) {
    goto sdp_put;
  } else {
  }
  if ((flags & 2048) == 0) {
    {
    tmp___3 = scsi_block_when_processing_errors(sdp->device);
    }
    if (tmp___3 == 0) {
      retval = -6;
      goto error_out;
    } else {
    }
  } else {
  }
  {
  ldv_mutex_lock_101(& sdp->open_rel_lock);
  }
  if ((flags & 2048) != 0) {
    if ((flags & 128) != 0) {
      if (sdp->open_cnt > 0) {
        retval = -16;
        goto error_mutex_locked;
      } else {
      }
    } else
    if ((int )sdp->exclude) {
      retval = -16;
      goto error_mutex_locked;
    } else {
    }
  } else {
    {
    retval = open_wait(sdp, flags);
    }
    if (retval != 0) {
      goto error_mutex_locked;
    } else {
    }
  }
  if ((flags & 128) != 0) {
    sdp->exclude = 1;
  } else {
  }
  if (sdp->open_cnt <= 0) {
    {
    sdp->sgdebug = 0;
    q = (sdp->device)->request_queue;
    tmp___4 = queue_max_segments(q);
    sdp->sg_tablesize = (int )tmp___4;
    }
  } else {
  }
  {
  sfp = sg_add_sfp(sdp);
  tmp___6 = IS_ERR((void const *)sfp);
  }
  if ((int )tmp___6) {
    {
    tmp___5 = PTR_ERR((void const *)sfp);
    retval = (int )tmp___5;
    }
    goto out_undo;
  } else {
  }
  {
  filp->private_data = (void *)sfp;
  sdp->open_cnt = sdp->open_cnt + 1;
  ldv_mutex_unlock_102(& sdp->open_rel_lock);
  retval = 0;
  }
  sg_put:
  {
  kref_put(& sdp->d_ref, & sg_device_destroy);
  }
  return (retval);
  out_undo: ;
  if ((flags & 128) != 0) {
    {
    sdp->exclude = 0;
    __wake_up(& sdp->open_wait, 1U, 1, (void *)0);
    }
  } else {
  }
  error_mutex_locked:
  {
  ldv_mutex_unlock_103(& sdp->open_rel_lock);
  }
  error_out:
  {
  scsi_autopm_put_device(sdp->device);
  }
  sdp_put:
  {
  scsi_device_put(sdp->device);
  }
  goto sg_put;
}
}
static int sg_release(struct inode *inode , struct file *filp )
{
  Sg_device *sdp ;
  Sg_fd *sfp ;
  long tmp ;
  {
  sfp = (Sg_fd *)filp->private_data;
  if ((unsigned long )sfp == (unsigned long )((Sg_fd *)0)) {
    return (-6);
  } else {
    sdp = sfp->parentdp;
    if ((unsigned long )sdp == (unsigned long )((Sg_device *)0)) {
      return (-6);
    } else {
    }
  }
  {
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 3U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                       "sg_release\n");
    }
  } else {
  }
  {
  ldv_mutex_lock_104(& sdp->open_rel_lock);
  scsi_autopm_put_device(sdp->device);
  kref_put(& sfp->f_ref, & sg_remove_sfp);
  sdp->open_cnt = sdp->open_cnt - 1;
  }
  if ((int )sdp->exclude) {
    {
    sdp->exclude = 0;
    __wake_up(& sdp->open_wait, 1U, 0, (void *)0);
    }
  } else
  if (sdp->open_cnt == 0) {
    {
    __wake_up(& sdp->open_wait, 1U, 1, (void *)0);
    }
  } else {
  }
  {
  ldv_mutex_unlock_105(& sdp->open_rel_lock);
  }
  return (0);
}
}
static ssize_t sg_read(struct file *filp , char *buf , size_t count , loff_t *ppos )
{
  Sg_device *sdp ;
  Sg_fd *sfp ;
  Sg_request *srp ;
  int req_pack_id ;
  sg_io_hdr_t *hp ;
  struct sg_header *old_hdr ;
  int retval ;
  long tmp ;
  struct thread_info *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  sg_io_hdr_t *new_hdr ;
  void *tmp___6 ;
  int tmp___7 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  ssize_t tmp___12 ;
  void *tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  {
  req_pack_id = -1;
  old_hdr = (struct sg_header *)0;
  retval = 0;
  sfp = (Sg_fd *)filp->private_data;
  if ((unsigned long )sfp == (unsigned long )((Sg_fd *)0)) {
    return (-6L);
  } else {
    sdp = sfp->parentdp;
    if ((unsigned long )sdp == (unsigned long )((Sg_device *)0)) {
      return (-6L);
    } else {
    }
  }
  {
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 3U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                       "sg_read: count=%d\n", (int )count);
    }
  } else {
  }
  {
  tmp___0 = current_thread_info();
  tmp___1 = __chk_range_not_ok((unsigned long )buf, count, tmp___0->addr_limit.seg);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  {
  tmp___3 = ldv__builtin_expect((long )tmp___2, 1L);
  }
  if (tmp___3 == 0L) {
    return (-14L);
  } else {
  }
  if ((int )((signed char )sfp->force_packid) != 0 && count > 35UL) {
    {
    tmp___4 = kmalloc(36UL, 208U);
    old_hdr = (struct sg_header *)tmp___4;
    }
    if ((unsigned long )old_hdr == (unsigned long )((struct sg_header *)0)) {
      return (-12L);
    } else {
    }
    {
    tmp___5 = __copy_from_user((void *)old_hdr, (void const *)buf, 36U);
    }
    if (tmp___5 != 0) {
      retval = -14;
      goto free_old_hdr;
    } else {
    }
    if (old_hdr->reply_len < 0) {
      if (count > 87UL) {
        {
        tmp___6 = kmalloc(88UL, 208U);
        new_hdr = (sg_io_hdr_t *)tmp___6;
        }
        if ((unsigned long )new_hdr == (unsigned long )((sg_io_hdr_t *)0)) {
          retval = -12;
          goto free_old_hdr;
        } else {
        }
        {
        retval = __copy_from_user((void *)new_hdr, (void const *)buf, 88U);
        req_pack_id = new_hdr->pack_id;
        kfree((void const *)new_hdr);
        }
        if (retval != 0) {
          retval = -14;
          goto free_old_hdr;
        } else {
        }
      } else {
      }
    } else {
      req_pack_id = old_hdr->pack_id;
    }
  } else {
  }
  {
  srp = sg_get_rq_mark(sfp, req_pack_id);
  }
  if ((unsigned long )srp == (unsigned long )((Sg_request *)0)) {
    {
    tmp___7 = atomic_read((atomic_t const *)(& sdp->detaching));
    }
    if (tmp___7 != 0) {
      retval = -19;
      goto free_old_hdr;
    } else {
    }
    if ((filp->f_flags & 2048U) != 0U) {
      retval = -11;
      goto free_old_hdr;
    } else {
    }
    {
    __ret = 0;
    __might_sleep("drivers/scsi/sg.c", 456, 0);
    tmp___10 = atomic_read((atomic_t const *)(& sdp->detaching));
    }
    if (tmp___10 == 0) {
      {
      srp = sg_get_rq_mark(sfp, req_pack_id);
      }
      if ((unsigned long )srp == (unsigned long )((Sg_request *)0)) {
        {
        __ret___0 = 0L;
        INIT_LIST_HEAD(& __wait.task_list);
        __wait.flags = 0U;
        }
        ldv_38179:
        {
        tmp___8 = prepare_to_wait_event(& sfp->read_wait, & __wait, 1);
        __int = tmp___8;
        tmp___9 = atomic_read((atomic_t const *)(& sdp->detaching));
        }
        if (tmp___9 != 0) {
          goto ldv_38178;
        } else {
          {
          srp = sg_get_rq_mark(sfp, req_pack_id);
          }
          if ((unsigned long )srp != (unsigned long )((Sg_request *)0)) {
            goto ldv_38178;
          } else {
          }
        }
        if (__int != 0L) {
          __ret___0 = __int;
          goto ldv_38178;
        } else {
        }
        {
        schedule();
        }
        goto ldv_38179;
        ldv_38178:
        {
        finish_wait(& sfp->read_wait, & __wait);
        }
        __ret = (int )__ret___0;
      } else {
      }
    } else {
    }
    {
    retval = __ret;
    tmp___11 = atomic_read((atomic_t const *)(& sdp->detaching));
    }
    if (tmp___11 != 0) {
      retval = -19;
      goto free_old_hdr;
    } else {
    }
    if (retval != 0) {
      goto free_old_hdr;
    } else {
    }
  } else {
  }
  if (srp->header.interface_id != 0) {
    {
    tmp___12 = sg_new_read(sfp, buf, count, srp);
    retval = (int )tmp___12;
    }
    goto free_old_hdr;
  } else {
  }
  hp = & srp->header;
  if ((unsigned long )old_hdr == (unsigned long )((struct sg_header *)0)) {
    {
    tmp___13 = kmalloc(36UL, 208U);
    old_hdr = (struct sg_header *)tmp___13;
    }
    if ((unsigned long )old_hdr == (unsigned long )((struct sg_header *)0)) {
      retval = -12;
      goto free_old_hdr;
    } else {
    }
  } else {
  }
  {
  memset((void *)old_hdr, 0, 36UL);
  old_hdr->reply_len = (int )hp->timeout;
  old_hdr->pack_len = old_hdr->reply_len;
  old_hdr->pack_id = hp->pack_id;
  old_hdr->twelve_byte = (unsigned char )((unsigned int )srp->data.cmd_opcode > 191U && (unsigned int )hp->cmd_len == 12U);
  old_hdr->target_status = hp->masked_status;
  old_hdr->host_status = (unsigned char )hp->host_status;
  old_hdr->driver_status = (unsigned char )hp->driver_status;
  }
  if ((int )hp->masked_status & 1 || ((unsigned int )hp->driver_status & 8U) != 0U) {
    {
    memcpy((void *)(& old_hdr->sense_buffer), (void const *)(& srp->sense_b),
             16UL);
    }
  } else {
  }
  {
  if ((int )hp->host_status == 0) {
    goto case_0;
  } else {
  }
  if ((int )hp->host_status == 10) {
    goto case_10;
  } else {
  }
  if ((int )hp->host_status == 11) {
    goto case_11;
  } else {
  }
  if ((int )hp->host_status == 1) {
    goto case_1;
  } else {
  }
  if ((int )hp->host_status == 2) {
    goto case_2;
  } else {
  }
  if ((int )hp->host_status == 3) {
    goto case_3;
  } else {
  }
  if ((int )hp->host_status == 4) {
    goto case_4;
  } else {
  }
  if ((int )hp->host_status == 5) {
    goto case_5;
  } else {
  }
  if ((int )hp->host_status == 6) {
    goto case_6;
  } else {
  }
  if ((int )hp->host_status == 8) {
    goto case_8;
  } else {
  }
  if ((int )hp->host_status == 9) {
    goto case_9;
  } else {
  }
  if ((int )hp->host_status == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_0: ;
  case_10: ;
  case_11:
  old_hdr->result = 0;
  goto ldv_38185;
  case_1: ;
  case_2: ;
  case_3:
  old_hdr->result = 16;
  goto ldv_38185;
  case_4: ;
  case_5: ;
  case_6: ;
  case_8: ;
  case_9:
  old_hdr->result = 5;
  goto ldv_38185;
  case_7:
  old_hdr->result = (unsigned int )srp->sense_b[0] == 0U && (unsigned int )hp->masked_status == 0U ? 0 : 5;
  goto ldv_38185;
  switch_default:
  old_hdr->result = 5;
  goto ldv_38185;
  switch_break: ;
  }
  ldv_38185: ;
  if (count > 35UL) {
    {
    tmp___14 = __copy_to_user((void *)buf, (void const *)old_hdr, 36U);
    }
    if (tmp___14 != 0) {
      retval = -14;
      goto free_old_hdr;
    } else {
    }
    buf = buf + 36UL;
    if (count > (size_t )old_hdr->reply_len) {
      count = (size_t )old_hdr->reply_len;
    } else {
    }
    if (count > 36UL) {
      {
      tmp___15 = sg_read_oxfer(srp, buf, (int )((unsigned int )count - 36U));
      }
      if (tmp___15 != 0) {
        retval = -14;
        goto free_old_hdr;
      } else {
      }
    } else {
    }
  } else {
    count = old_hdr->result == 0 ? 0UL : 0xfffffffffffffffbUL;
  }
  {
  sg_finish_rem_req(srp);
  retval = (int )count;
  }
  free_old_hdr:
  {
  kfree((void const *)old_hdr);
  }
  return ((ssize_t )retval);
}
}
static ssize_t sg_new_read(Sg_fd *sfp , char *buf , size_t count , Sg_request *srp )
{
  sg_io_hdr_t *hp ;
  int err ;
  int err2 ;
  int len ;
  int sb_len ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  hp = & srp->header;
  err = 0;
  if (count <= 87UL) {
    err = -22;
    goto err_out;
  } else {
  }
  hp->sb_len_wr = 0U;
  if ((unsigned int )hp->mx_sb_len != 0U && (unsigned long )hp->sbp != (unsigned long )((void *)0)) {
    if ((int )hp->masked_status & 1 || ((unsigned int )hp->driver_status & 8U) != 0U) {
      {
      sb_len = 96;
      sb_len = sb_len < (int )hp->mx_sb_len ? sb_len : (int )hp->mx_sb_len;
      len = (int )srp->sense_b[7] + 8;
      len = sb_len < len ? sb_len : len;
      tmp = copy_to_user(hp->sbp, (void const *)(& srp->sense_b), (unsigned long )len);
      }
      if (tmp != 0UL) {
        err = -14;
        goto err_out;
      } else {
      }
      hp->sb_len_wr = (unsigned char )len;
    } else {
    }
  } else {
  }
  if (*((unsigned long *)hp + 8UL) != 0UL) {
    hp->info = hp->info | 1U;
  } else {
  }
  {
  tmp___0 = copy_to_user((void *)buf, (void const *)hp, 88UL);
  }
  if (tmp___0 != 0UL) {
    err = -14;
    goto err_out;
  } else {
  }
  err_out:
  {
  err2 = sg_finish_rem_req(srp);
  }
  return ((ssize_t )(err != 0 ? (size_t )err : (err2 != 0 ? (size_t )err2 : count)));
}
}
static ssize_t sg_write(struct file *filp , char const *buf , size_t count , loff_t *ppos )
{
  int mxsize ;
  int cmd_size ;
  int k ;
  int input_size ;
  int blocking ;
  unsigned char opcode ;
  Sg_device *sdp ;
  Sg_fd *sfp ;
  Sg_request *srp ;
  struct sg_header old_hdr ;
  sg_io_hdr_t *hp ;
  unsigned char cmnd[252U] ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct thread_info *tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  int tmp___6 ;
  ssize_t tmp___7 ;
  long tmp___8 ;
  int __gu_err ;
  unsigned long __gu_val ;
  int tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  char cmd[16U] ;
  struct ratelimit_state _rs ;
  struct task_struct *tmp___12 ;
  int tmp___13 ;
  struct task_struct *tmp___14 ;
  struct task_struct *tmp___15 ;
  int tmp___16 ;
  {
  sfp = (Sg_fd *)filp->private_data;
  if ((unsigned long )sfp == (unsigned long )((Sg_fd *)0)) {
    return (-6L);
  } else {
    sdp = sfp->parentdp;
    if ((unsigned long )sdp == (unsigned long )((Sg_device *)0)) {
      return (-6L);
    } else {
    }
  }
  {
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 3U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                       "sg_write: count=%d\n", (int )count);
    }
  } else {
  }
  {
  tmp___0 = atomic_read((atomic_t const *)(& sdp->detaching));
  }
  if (tmp___0 != 0) {
    return (-19L);
  } else {
  }
  if ((filp->f_flags & 2048U) == 0U) {
    {
    tmp___1 = scsi_block_when_processing_errors(sdp->device);
    }
    if (tmp___1 == 0) {
      return (-6L);
    } else {
    }
  } else {
  }
  {
  tmp___2 = current_thread_info();
  tmp___3 = __chk_range_not_ok((unsigned long )buf, count, tmp___2->addr_limit.seg);
  }
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  {
  tmp___5 = ldv__builtin_expect((long )tmp___4, 1L);
  }
  if (tmp___5 == 0L) {
    return (-14L);
  } else {
  }
  if (count <= 35UL) {
    return (-5L);
  } else {
  }
  {
  tmp___6 = __copy_from_user((void *)(& old_hdr), (void const *)buf, 36U);
  }
  if (tmp___6 != 0) {
    return (-14L);
  } else {
  }
  blocking = (filp->f_flags & 2048U) == 0U;
  if (old_hdr.reply_len < 0) {
    {
    tmp___7 = sg_new_write(sfp, filp, buf, count, blocking, 0, 0, (Sg_request **)0);
    }
    return (tmp___7);
  } else {
  }
  if (count <= 41UL) {
    return (-5L);
  } else {
  }
  {
  srp = sg_add_request(sfp);
  }
  if ((unsigned long )srp == (unsigned long )((Sg_request *)0)) {
    {
    tmp___8 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 1U, 0L);
    }
    if (tmp___8 != 0L) {
      {
      sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                         "sg_write: queue full\n");
      }
    } else {
    }
    return (-33L);
  } else {
  }
  buf = buf + 36UL;
  __gu_err = 0;
  {
  if (1UL == 1UL) {
    goto case_1;
  } else {
  }
  if (1UL == 2UL) {
    goto case_2;
  } else {
  }
  if (1UL == 4UL) {
    goto case_4;
  } else {
  }
  if (1UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=q" (__gu_val): "m" (*((struct __large_struct *)buf)), "i" (-14),
                       "0" (__gu_err));
  goto ldv_38230;
  case_2:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)buf)), "i" (-14),
                       "0" (__gu_err));
  goto ldv_38230;
  case_4:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)buf)), "i" (-14),
                       "0" (__gu_err));
  goto ldv_38230;
  case_8:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)buf)), "i" (-14),
                       "0" (__gu_err));
  goto ldv_38230;
  switch_default:
  {
  tmp___9 = __get_user_bad();
  __gu_val = (unsigned long )tmp___9;
  }
  switch_break: ;
  }
  ldv_38230:
  opcode = (unsigned char )__gu_val;
  if ((unsigned int )sfp->next_cmd_len != 0U) {
    cmd_size = (int )sfp->next_cmd_len;
    sfp->next_cmd_len = 0U;
  } else {
    cmd_size = (int )scsi_command_size_tbl[((int )opcode >> 5) & 7];
    if ((unsigned int )opcode > 191U && (unsigned int )*((unsigned char *)(& old_hdr) + 16UL) != 0U) {
      cmd_size = 12;
    } else {
    }
  }
  {
  tmp___10 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 4U, 0L);
  }
  if (tmp___10 != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                       "sg_write:   scsi opcode=0x%02x, cmd_size=%d\n", (int )opcode,
                       cmd_size);
    }
  } else {
  }
  input_size = (int )((unsigned int )count - (unsigned int )cmd_size);
  mxsize = input_size > old_hdr.reply_len ? input_size : old_hdr.reply_len;
  mxsize = (int )((unsigned int )mxsize - 36U);
  input_size = (int )((unsigned int )input_size - 36U);
  if (input_size < 0) {
    {
    sg_remove_request(sfp, srp);
    }
    return (-5L);
  } else {
  }
  hp = & srp->header;
  hp->interface_id = 0;
  hp->cmd_len = (unsigned char )cmd_size;
  hp->iovec_count = 0U;
  hp->mx_sb_len = 0U;
  if (input_size > 0) {
    hp->dxfer_direction = (unsigned int )old_hdr.reply_len > 36U ? -4 : -2;
  } else {
    hp->dxfer_direction = mxsize > 0 ? -3 : -1;
  }
  hp->dxfer_len = (unsigned int )mxsize;
  if (hp->dxfer_direction == -2) {
    hp->dxferp = (void *)buf + (unsigned long )cmd_size;
  } else {
    hp->dxferp = (void *)0;
  }
  {
  hp->sbp = (void *)0;
  hp->timeout = (unsigned int )old_hdr.reply_len;
  hp->flags = (unsigned int )input_size;
  hp->pack_id = old_hdr.pack_id;
  hp->usr_ptr = (void *)0;
  tmp___11 = __copy_from_user((void *)(& cmnd), (void const *)buf, (unsigned int )cmd_size);
  }
  if (tmp___11 != 0) {
    return (-14L);
  } else {
  }
  if (hp->dxfer_direction == -4) {
    {
    tmp___15 = get_current();
    tmp___16 = strcmp((char const *)(& tmp___15->comm), (char const *)(& cmd));
    }
    if (tmp___16 != 0) {
      {
      _rs.lock.raw_lock.__annonCompField4.head_tail = 0U;
      _rs.lock.magic = 3735899821U;
      _rs.lock.owner_cpu = 4294967295U;
      _rs.lock.owner = (void *)-1;
      _rs.lock.dep_map.key = 0;
      _rs.lock.dep_map.class_cache[0] = 0;
      _rs.lock.dep_map.class_cache[1] = 0;
      _rs.lock.dep_map.name = "_rs.lock";
      _rs.lock.dep_map.cpu = 0;
      _rs.lock.dep_map.ip = 0UL;
      _rs.interval = 1250;
      _rs.burst = 10;
      _rs.printed = 0;
      _rs.missed = 0;
      _rs.begin = 0UL;
      tmp___13 = ___ratelimit(& _rs, "sg_write");
      }
      if (tmp___13 != 0) {
        {
        tmp___12 = get_current();
        printk("\fsg_write: data in/out %d/%d bytes for SCSI command 0x%x-- guessing data in;\n   program %s not setting count and/or reply_len properly\n",
               old_hdr.reply_len + -36, input_size, (unsigned int )cmnd[0], (char *)(& tmp___12->comm));
        }
      } else {
      }
      {
      tmp___14 = get_current();
      strcpy((char *)(& cmd), (char const *)(& tmp___14->comm));
      }
    } else {
    }
  } else {
  }
  {
  k = sg_common_write(sfp, srp, (unsigned char *)(& cmnd), sfp->timeout, blocking);
  }
  return ((ssize_t )(k < 0 ? (size_t )k : count));
}
}
static ssize_t sg_new_write(Sg_fd *sfp , struct file *file , char const *buf , size_t count ,
                            int blocking , int read_only , int sg_io_owned , Sg_request **o_srp )
{
  int k ;
  Sg_request *srp ;
  sg_io_hdr_t *hp ;
  unsigned char cmnd[252U] ;
  int timeout ;
  unsigned long ul_timeout ;
  struct thread_info *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  struct thread_info *tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  {
  if (count <= 87UL) {
    return (-22L);
  } else {
  }
  {
  tmp = current_thread_info();
  tmp___0 = __chk_range_not_ok((unsigned long )buf, count, tmp->addr_limit.seg);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  {
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  }
  if (tmp___2 == 0L) {
    return (-14L);
  } else {
  }
  {
  sfp->cmd_q = 1;
  srp = sg_add_request(sfp);
  }
  if ((unsigned long )srp == (unsigned long )((Sg_request *)0)) {
    {
    tmp___3 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 1U, 0L);
    }
    if (tmp___3 != 0L) {
      {
      sdev_prefix_printk("\016", (struct scsi_device const *)(sfp->parentdp)->device,
                         (char const *)(& ((sfp->parentdp)->disk)->disk_name), "sg_new_write: queue full\n");
      }
    } else {
    }
    return (-33L);
  } else {
  }
  {
  srp->sg_io_owned = (char )sg_io_owned;
  hp = & srp->header;
  tmp___4 = __copy_from_user((void *)hp, (void const *)buf, 88U);
  }
  if (tmp___4 != 0) {
    {
    sg_remove_request(sfp, srp);
    }
    return (-14L);
  } else {
  }
  if (hp->interface_id != 83) {
    {
    sg_remove_request(sfp, srp);
    }
    return (-38L);
  } else {
  }
  if ((hp->flags & 4U) != 0U) {
    if (hp->dxfer_len > sfp->reserve.bufflen) {
      {
      sg_remove_request(sfp, srp);
      }
      return (-12L);
    } else {
    }
    if ((int )hp->flags & 1) {
      {
      sg_remove_request(sfp, srp);
      }
      return (-22L);
    } else {
    }
    {
    tmp___5 = sg_res_in_use(sfp);
    }
    if (tmp___5 != 0) {
      {
      sg_remove_request(sfp, srp);
      }
      return (-16L);
    } else {
    }
  } else {
  }
  {
  ul_timeout = msecs_to_jiffies(srp->header.timeout);
  timeout = (int )(2147483647UL < ul_timeout ? 2147483647UL : ul_timeout);
  }
  if (((unsigned long )hp->cmdp == (unsigned long )((unsigned char *)0U) || (unsigned int )hp->cmd_len <= 5U) || (unsigned int )hp->cmd_len > 252U) {
    {
    sg_remove_request(sfp, srp);
    }
    return (-90L);
  } else {
  }
  {
  tmp___6 = current_thread_info();
  tmp___7 = __chk_range_not_ok((unsigned long )hp->cmdp, (unsigned long )hp->cmd_len,
                               tmp___6->addr_limit.seg);
  }
  if (tmp___7) {
    tmp___8 = 0;
  } else {
    tmp___8 = 1;
  }
  {
  tmp___9 = ldv__builtin_expect((long )tmp___8, 1L);
  }
  if (tmp___9 == 0L) {
    {
    sg_remove_request(sfp, srp);
    }
    return (-14L);
  } else {
  }
  {
  tmp___10 = __copy_from_user((void *)(& cmnd), (void const *)hp->cmdp, (unsigned int )hp->cmd_len);
  }
  if (tmp___10 != 0) {
    {
    sg_remove_request(sfp, srp);
    }
    return (-14L);
  } else {
  }
  if (read_only != 0) {
    {
    tmp___11 = sg_allow_access(file, (unsigned char *)(& cmnd));
    }
    if (tmp___11 != 0) {
      {
      sg_remove_request(sfp, srp);
      }
      return (-1L);
    } else {
    }
  } else {
  }
  {
  k = sg_common_write(sfp, srp, (unsigned char *)(& cmnd), timeout, blocking);
  }
  if (k < 0) {
    return ((ssize_t )k);
  } else {
  }
  if ((unsigned long )o_srp != (unsigned long )((Sg_request **)0)) {
    *o_srp = srp;
  } else {
  }
  return ((ssize_t )count);
}
}
static int sg_common_write(Sg_fd *sfp , Sg_request *srp , unsigned char *cmnd , int timeout ,
                           int blocking )
{
  int k ;
  int at_head ;
  Sg_device *sdp ;
  sg_io_hdr_t *hp ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  sdp = sfp->parentdp;
  hp = & srp->header;
  srp->data.cmd_opcode = *cmnd;
  hp->status = 0U;
  hp->masked_status = 0U;
  hp->msg_status = 0U;
  hp->info = 0U;
  hp->host_status = 0U;
  hp->driver_status = 0U;
  hp->resid = 0;
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 4U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)(sfp->parentdp)->device,
                       (char const *)(& ((sfp->parentdp)->disk)->disk_name), "sg_common_write:  scsi opcode=0x%02x, cmd_size=%d\n",
                       (int )*cmnd, (int )hp->cmd_len);
    }
  } else {
  }
  {
  k = sg_start_req(srp, cmnd);
  }
  if (k != 0) {
    {
    tmp___0 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 1U, 0L);
    }
    if (tmp___0 != 0L) {
      {
      sdev_prefix_printk("\016", (struct scsi_device const *)(sfp->parentdp)->device,
                         (char const *)(& ((sfp->parentdp)->disk)->disk_name), "sg_common_write: start_req err=%d\n",
                         k);
      }
    } else {
    }
    {
    sg_finish_rem_req(srp);
    }
    return (k);
  } else {
  }
  {
  tmp___1 = atomic_read((atomic_t const *)(& sdp->detaching));
  }
  if (tmp___1 != 0) {
    if ((unsigned long )srp->bio != (unsigned long )((struct bio *)0)) {
      {
      blk_end_request_all(srp->rq, -5);
      }
    } else {
    }
    {
    sg_finish_rem_req(srp);
    }
    return (-19);
  } else {
  }
  {
  hp->duration = jiffies_to_msecs(jiffies);
  }
  if (hp->interface_id != 0 && (hp->flags & 16U) != 0U) {
    at_head = 0;
  } else {
    at_head = 1;
  }
  {
  (srp->rq)->timeout = (unsigned int )timeout;
  kref_get(& sfp->f_ref);
  ldv_blk_execute_rq_nowait_106((sdp->device)->request_queue, sdp->disk, srp->rq,
                                at_head, & sg_rq_end_io);
  }
  return (0);
}
}
static int srp_done(Sg_fd *sfp , Sg_request *srp )
{
  int ret ;
  {
  {
  ldv_linux_kernel_locking_rwlock_read_lock();
  ret = (int )srp->done;
  ldv_linux_kernel_locking_rwlock_read_unlock();
  }
  return (ret);
}
}
static int max_sectors_bytes(struct request_queue *q )
{
  unsigned int max_sectors ;
  unsigned int tmp ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  {
  {
  tmp = queue_max_sectors(q);
  max_sectors = tmp;
  __min1 = max_sectors;
  __min2 = 4194303U;
  max_sectors = __min1 < __min2 ? __min1 : __min2;
  }
  return ((int )(max_sectors << 9));
}
}
static long sg_ioctl(struct file *filp , unsigned int cmd_in , unsigned long arg )
{
  void *p ;
  int *ip ;
  int result ;
  int val ;
  int read_only ;
  Sg_device *sdp ;
  Sg_fd *sfp ;
  Sg_request *srp ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct thread_info *tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  ssize_t tmp___6 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  ssize_t tmp___13 ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  int __ret_gu___0 ;
  register unsigned long __val_gu___0 ;
  int tmp___14 ;
  int tmp___15 ;
  int __ret_pu ;
  int __pu_val ;
  sg_scsi_id_t *sg_idp ;
  int tmp___16 ;
  int __pu_err ;
  int __pu_err___0 ;
  int __pu_err___1 ;
  int __pu_err___2 ;
  int __pu_err___3 ;
  int __pu_err___4 ;
  int __pu_err___5 ;
  int __pu_err___6 ;
  int __pu_err___7 ;
  struct thread_info *tmp___17 ;
  bool tmp___18 ;
  int tmp___19 ;
  long tmp___20 ;
  int __ret_gu___1 ;
  register unsigned long __val_gu___1 ;
  struct thread_info *tmp___21 ;
  bool tmp___22 ;
  int tmp___23 ;
  long tmp___24 ;
  int __pu_err___8 ;
  int __pu_err___9 ;
  int __ret_pu___0 ;
  int __pu_val___0 ;
  int __ret_pu___1 ;
  int __pu_val___1 ;
  int __ret_gu___2 ;
  register unsigned long __val_gu___2 ;
  int __min1 ;
  int __min2 ;
  int tmp___25 ;
  int tmp___26 ;
  int __min1___0 ;
  int __min2___0 ;
  int tmp___27 ;
  int __ret_pu___2 ;
  int __pu_val___2 ;
  int __ret_gu___3 ;
  register unsigned long __val_gu___3 ;
  int __ret_pu___3 ;
  int __pu_val___3 ;
  int __ret_gu___4 ;
  register unsigned long __val_gu___4 ;
  int __ret_pu___4 ;
  int __pu_val___4 ;
  int __ret_gu___5 ;
  register unsigned long __val_gu___5 ;
  int __ret_pu___5 ;
  int __pu_val___5 ;
  int __ret_pu___6 ;
  int __pu_val___6 ;
  sg_req_info_t *rinfo ;
  unsigned int ms ;
  void *tmp___28 ;
  struct thread_info *tmp___29 ;
  bool tmp___30 ;
  int tmp___31 ;
  long tmp___32 ;
  int tmp___33 ;
  int __ret_pu___7 ;
  int __pu_val___7 ;
  int tmp___34 ;
  unsigned char opcode ;
  Scsi_Ioctl_Command *siocp ;
  unsigned long tmp___35 ;
  int tmp___36 ;
  int tmp___37 ;
  int __ret_gu___6 ;
  register unsigned long __val_gu___6 ;
  int __ret_pu___8 ;
  int __pu_val___8 ;
  int tmp___38 ;
  int tmp___39 ;
  int tmp___40 ;
  int tmp___41 ;
  int tmp___42 ;
  int tmp___43 ;
  {
  p = (void *)arg;
  ip = (int *)p;
  sfp = (Sg_fd *)filp->private_data;
  if ((unsigned long )sfp == (unsigned long )((Sg_fd *)0)) {
    return (-6L);
  } else {
    sdp = sfp->parentdp;
    if ((unsigned long )sdp == (unsigned long )((Sg_device *)0)) {
      return (-6L);
    } else {
    }
  }
  {
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 3U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                       "sg_ioctl: cmd=0x%x\n", (int )cmd_in);
    }
  } else {
  }
  read_only = (filp->f_flags & 3U) != 2U;
  {
  if (cmd_in == 8837U) {
    goto case_8837;
  } else {
  }
  if (cmd_in == 8705U) {
    goto case_8705;
  } else {
  }
  if (cmd_in == 8706U) {
    goto case_8706;
  } else {
  }
  if (cmd_in == 8825U) {
    goto case_8825;
  } else {
  }
  if (cmd_in == 8826U) {
    goto case_8826;
  } else {
  }
  if (cmd_in == 8822U) {
    goto case_8822;
  } else {
  }
  if (cmd_in == 8827U) {
    goto case_8827;
  } else {
  }
  if (cmd_in == 8828U) {
    goto case_8828;
  } else {
  }
  if (cmd_in == 8829U) {
    goto case_8829;
  } else {
  }
  if (cmd_in == 8831U) {
    goto case_8831;
  } else {
  }
  if (cmd_in == 8821U) {
    goto case_8821;
  } else {
  }
  if (cmd_in == 8818U) {
    goto case_8818;
  } else {
  }
  if (cmd_in == 8817U) {
    goto case_8817;
  } else {
  }
  if (cmd_in == 8816U) {
    goto case_8816;
  } else {
  }
  if (cmd_in == 8839U) {
    goto case_8839;
  } else {
  }
  if (cmd_in == 8840U) {
    goto case_8840;
  } else {
  }
  if (cmd_in == 8835U) {
    goto case_8835;
  } else {
  }
  if (cmd_in == 8834U) {
    goto case_8834;
  } else {
  }
  if (cmd_in == 8841U) {
    goto case_8841;
  } else {
  }
  if (cmd_in == 8838U) {
    goto case_8838;
  } else {
  }
  if (cmd_in == 8707U) {
    goto case_8707;
  } else {
  }
  if (cmd_in == 1U) {
    goto case_1___19;
  } else {
  }
  if (cmd_in == 8830U) {
    goto case_8830;
  } else {
  }
  if (cmd_in == 4711U) {
    goto case_4711;
  } else {
  }
  if (cmd_in == 3225948787U) {
    goto case_3225948787;
  } else {
  }
  if (cmd_in == 4724U) {
    goto case_4724;
  } else {
  }
  if (cmd_in == 4725U) {
    goto case_4725;
  } else {
  }
  if (cmd_in == 4726U) {
    goto case_4726;
  } else {
  }
  if (cmd_in == 21378U) {
    goto case_21378;
  } else {
  }
  if (cmd_in == 21382U) {
    goto case_21382;
  } else {
  }
  if (cmd_in == 21381U) {
    goto case_21381;
  } else {
  }
  if (cmd_in == 8709U) {
    goto case_8709;
  } else {
  }
  if (cmd_in == 8836U) {
    goto case_8836;
  } else {
  }
  goto switch_default___20;
  case_8837:
  {
  tmp___0 = atomic_read((atomic_t const *)(& sdp->detaching));
  }
  if (tmp___0 != 0) {
    return (-19L);
  } else {
  }
  {
  tmp___1 = scsi_block_when_processing_errors(sdp->device);
  }
  if (tmp___1 == 0) {
    return (-6L);
  } else {
  }
  {
  tmp___2 = current_thread_info();
  tmp___3 = __chk_range_not_ok((unsigned long )p, 88UL, tmp___2->addr_limit.seg);
  }
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  {
  tmp___5 = ldv__builtin_expect((long )tmp___4, 1L);
  }
  if (tmp___5 == 0L) {
    return (-14L);
  } else {
  }
  {
  tmp___6 = sg_new_write(sfp, filp, (char const *)p, 88UL, 1, read_only, 1, & srp);
  result = (int )tmp___6;
  }
  if (result < 0) {
    return ((long )result);
  } else {
  }
  {
  __ret = 0;
  __might_sleep("drivers/scsi/sg.c", 861, 0);
  tmp___10 = srp_done(sfp, srp);
  }
  if (tmp___10 == 0) {
    {
    tmp___11 = atomic_read((atomic_t const *)(& sdp->detaching));
    }
    if (tmp___11 == 0) {
      {
      __ret___0 = 0L;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      }
      ldv_38304:
      {
      tmp___7 = prepare_to_wait_event(& sfp->read_wait, & __wait, 1);
      __int = tmp___7;
      tmp___8 = srp_done(sfp, srp);
      }
      if (tmp___8 != 0) {
        goto ldv_38303;
      } else {
        {
        tmp___9 = atomic_read((atomic_t const *)(& sdp->detaching));
        }
        if (tmp___9 != 0) {
          goto ldv_38303;
        } else {
        }
      }
      if (__int != 0L) {
        __ret___0 = __int;
        goto ldv_38303;
      } else {
      }
      {
      schedule();
      }
      goto ldv_38304;
      ldv_38303:
      {
      finish_wait(& sfp->read_wait, & __wait);
      }
      __ret = (int )__ret___0;
    } else {
    }
  } else {
  }
  {
  result = __ret;
  tmp___12 = atomic_read((atomic_t const *)(& sdp->detaching));
  }
  if (tmp___12 != 0) {
    return (-19L);
  } else {
  }
  {
  ldv_linux_kernel_locking_rwlock_write_lock();
  }
  if ((int )((signed char )srp->done) != 0) {
    {
    srp->done = 2;
    ldv_linux_kernel_locking_rwlock_write_unlock();
    tmp___13 = sg_new_read(sfp, (char *)p, 88UL, srp);
    result = (int )tmp___13;
    }
    return ((long )(0 < result ? 0 : result));
  } else {
  }
  {
  srp->orphan = 1;
  ldv_linux_kernel_locking_rwlock_write_unlock();
  }
  return ((long )result);
  case_8705:
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" (ip),
                       "i" (4UL));
  val = (int )__val_gu;
  result = __ret_gu;
  }
  if (result != 0) {
    return ((long )result);
  } else {
  }
  if (val < 0) {
    return (-5L);
  } else {
  }
  if (val > 858993457) {
    val = 858993458;
  } else {
  }
  sfp->timeout_user = val;
  sfp->timeout = ((val % 100) * 250) / 100 + (val / 100) * 250;
  return (0L);
  case_8706: ;
  return ((long )sfp->timeout_user);
  case_8825:
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___0), "=r" (__val_gu___0): "0" (ip),
                       "i" (4UL));
  val = (int )__val_gu___0;
  result = __ret_gu___0;
  }
  if (result != 0) {
    return ((long )result);
  } else {
  }
  if (val != 0) {
    sfp->low_dma = 1;
    if ((int )((signed char )sfp->low_dma) == 0) {
      {
      tmp___14 = sg_res_in_use(sfp);
      }
      if (tmp___14 == 0) {
        {
        val = (int )sfp->reserve.bufflen;
        sg_remove_scat(sfp, & sfp->reserve);
        sg_build_reserve(sfp, val);
        }
      } else {
      }
    } else {
    }
  } else {
    {
    tmp___15 = atomic_read((atomic_t const *)(& sdp->detaching));
    }
    if (tmp___15 != 0) {
      return (-19L);
    } else {
    }
    sfp->low_dma = (char )((sdp->device)->host)->unchecked_isa_dma;
  }
  return (0L);
  case_8826:
  {
  might_fault();
  __pu_val = (int )sfp->low_dma;
  }
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (ip): "ebx");
  goto ldv_38320;
  case_2:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (ip): "ebx");
  goto ldv_38320;
  case_4:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (ip): "ebx");
  goto ldv_38320;
  case_8:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (ip): "ebx");
  goto ldv_38320;
  switch_default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (ip): "ebx");
  goto ldv_38320;
  switch_break___0: ;
  }
  ldv_38320: ;
  return ((long )__ret_pu);
  case_8822:
  {
  tmp___17 = current_thread_info();
  tmp___18 = __chk_range_not_ok((unsigned long )p, 32UL, tmp___17->addr_limit.seg);
  }
  if (tmp___18) {
    tmp___19 = 0;
  } else {
    tmp___19 = 1;
  }
  {
  tmp___20 = ldv__builtin_expect((long )tmp___19, 1L);
  }
  if (tmp___20 == 0L) {
    return (-14L);
  } else {
    {
    sg_idp = (sg_scsi_id_t *)p;
    tmp___16 = atomic_read((atomic_t const *)(& sdp->detaching));
    }
    if (tmp___16 != 0) {
      return (-19L);
    } else {
    }
    __pu_err = 0;
    {
    if (4UL == 1UL) {
      goto case_1___0;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___0;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___0;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___0;
    } else {
    }
    goto switch_default___0;
    case_1___0:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "iq" ((int )((sdp->device)->host)->host_no),
                         "m" (*((struct __large_struct *)(& sg_idp->host_no))), "i" (-14),
                         "0" (__pu_err));
    goto ldv_38331;
    case_2___0:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" ((int )((sdp->device)->host)->host_no),
                         "m" (*((struct __large_struct *)(& sg_idp->host_no))), "i" (-14),
                         "0" (__pu_err));
    goto ldv_38331;
    case_4___0:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" ((int )((sdp->device)->host)->host_no),
                         "m" (*((struct __large_struct *)(& sg_idp->host_no))), "i" (-14),
                         "0" (__pu_err));
    goto ldv_38331;
    case_8___0:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "er" ((int )((sdp->device)->host)->host_no),
                         "m" (*((struct __large_struct *)(& sg_idp->host_no))), "i" (-14),
                         "0" (__pu_err));
    goto ldv_38331;
    switch_default___0:
    {
    __put_user_bad();
    }
    switch_break___1: ;
    }
    ldv_38331:
    __pu_err___0 = 0;
    {
    if (4UL == 1UL) {
      goto case_1___1;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___1;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___1;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___1;
    } else {
    }
    goto switch_default___1;
    case_1___1:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___0): "iq" ((int )(sdp->device)->channel),
                         "m" (*((struct __large_struct *)(& sg_idp->channel))), "i" (-14),
                         "0" (__pu_err___0));
    goto ldv_38339;
    case_2___1:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___0): "ir" ((int )(sdp->device)->channel),
                         "m" (*((struct __large_struct *)(& sg_idp->channel))), "i" (-14),
                         "0" (__pu_err___0));
    goto ldv_38339;
    case_4___1:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___0): "ir" ((int )(sdp->device)->channel),
                         "m" (*((struct __large_struct *)(& sg_idp->channel))), "i" (-14),
                         "0" (__pu_err___0));
    goto ldv_38339;
    case_8___1:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___0): "er" ((int )(sdp->device)->channel),
                         "m" (*((struct __large_struct *)(& sg_idp->channel))), "i" (-14),
                         "0" (__pu_err___0));
    goto ldv_38339;
    switch_default___1:
    {
    __put_user_bad();
    }
    switch_break___2: ;
    }
    ldv_38339:
    __pu_err___1 = 0;
    {
    if (4UL == 1UL) {
      goto case_1___2;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___2;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___2;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___2;
    } else {
    }
    goto switch_default___2;
    case_1___2:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___1): "iq" ((int )(sdp->device)->id),
                         "m" (*((struct __large_struct *)(& sg_idp->scsi_id))), "i" (-14),
                         "0" (__pu_err___1));
    goto ldv_38347;
    case_2___2:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___1): "ir" ((int )(sdp->device)->id),
                         "m" (*((struct __large_struct *)(& sg_idp->scsi_id))), "i" (-14),
                         "0" (__pu_err___1));
    goto ldv_38347;
    case_4___2:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___1): "ir" ((int )(sdp->device)->id),
                         "m" (*((struct __large_struct *)(& sg_idp->scsi_id))), "i" (-14),
                         "0" (__pu_err___1));
    goto ldv_38347;
    case_8___2:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___1): "er" ((int )(sdp->device)->id),
                         "m" (*((struct __large_struct *)(& sg_idp->scsi_id))), "i" (-14),
                         "0" (__pu_err___1));
    goto ldv_38347;
    switch_default___2:
    {
    __put_user_bad();
    }
    switch_break___3: ;
    }
    ldv_38347:
    __pu_err___2 = 0;
    {
    if (4UL == 1UL) {
      goto case_1___3;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___3;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___3;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___3;
    } else {
    }
    goto switch_default___3;
    case_1___3:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___2): "iq" ((int )(sdp->device)->lun),
                         "m" (*((struct __large_struct *)(& sg_idp->lun))), "i" (-14),
                         "0" (__pu_err___2));
    goto ldv_38355;
    case_2___3:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___2): "ir" ((int )(sdp->device)->lun),
                         "m" (*((struct __large_struct *)(& sg_idp->lun))), "i" (-14),
                         "0" (__pu_err___2));
    goto ldv_38355;
    case_4___3:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___2): "ir" ((int )(sdp->device)->lun),
                         "m" (*((struct __large_struct *)(& sg_idp->lun))), "i" (-14),
                         "0" (__pu_err___2));
    goto ldv_38355;
    case_8___3:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___2): "er" ((int )(sdp->device)->lun),
                         "m" (*((struct __large_struct *)(& sg_idp->lun))), "i" (-14),
                         "0" (__pu_err___2));
    goto ldv_38355;
    switch_default___3:
    {
    __put_user_bad();
    }
    switch_break___4: ;
    }
    ldv_38355:
    __pu_err___3 = 0;
    {
    if (4UL == 1UL) {
      goto case_1___4;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___4;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___4;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___4;
    } else {
    }
    goto switch_default___4;
    case_1___4:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___3): "iq" ((int )(sdp->device)->type),
                         "m" (*((struct __large_struct *)(& sg_idp->scsi_type))),
                         "i" (-14), "0" (__pu_err___3));
    goto ldv_38363;
    case_2___4:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___3): "ir" ((int )(sdp->device)->type),
                         "m" (*((struct __large_struct *)(& sg_idp->scsi_type))),
                         "i" (-14), "0" (__pu_err___3));
    goto ldv_38363;
    case_4___4:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___3): "ir" ((int )(sdp->device)->type),
                         "m" (*((struct __large_struct *)(& sg_idp->scsi_type))),
                         "i" (-14), "0" (__pu_err___3));
    goto ldv_38363;
    case_8___4:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___3): "er" ((int )(sdp->device)->type),
                         "m" (*((struct __large_struct *)(& sg_idp->scsi_type))),
                         "i" (-14), "0" (__pu_err___3));
    goto ldv_38363;
    switch_default___4:
    {
    __put_user_bad();
    }
    switch_break___5: ;
    }
    ldv_38363:
    __pu_err___4 = 0;
    {
    if (2UL == 1UL) {
      goto case_1___5;
    } else {
    }
    if (2UL == 2UL) {
      goto case_2___5;
    } else {
    }
    if (2UL == 4UL) {
      goto case_4___5;
    } else {
    }
    if (2UL == 8UL) {
      goto case_8___5;
    } else {
    }
    goto switch_default___5;
    case_1___5:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___4): "iq" (((sdp->device)->host)->cmd_per_lun),
                         "m" (*((struct __large_struct *)(& sg_idp->h_cmd_per_lun))),
                         "i" (-14), "0" (__pu_err___4));
    goto ldv_38371;
    case_2___5:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___4): "ir" (((sdp->device)->host)->cmd_per_lun),
                         "m" (*((struct __large_struct *)(& sg_idp->h_cmd_per_lun))),
                         "i" (-14), "0" (__pu_err___4));
    goto ldv_38371;
    case_4___5:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___4): "ir" (((sdp->device)->host)->cmd_per_lun),
                         "m" (*((struct __large_struct *)(& sg_idp->h_cmd_per_lun))),
                         "i" (-14), "0" (__pu_err___4));
    goto ldv_38371;
    case_8___5:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___4): "er" (((sdp->device)->host)->cmd_per_lun),
                         "m" (*((struct __large_struct *)(& sg_idp->h_cmd_per_lun))),
                         "i" (-14), "0" (__pu_err___4));
    goto ldv_38371;
    switch_default___5:
    {
    __put_user_bad();
    }
    switch_break___6: ;
    }
    ldv_38371:
    __pu_err___5 = 0;
    {
    if (2UL == 1UL) {
      goto case_1___6;
    } else {
    }
    if (2UL == 2UL) {
      goto case_2___6;
    } else {
    }
    if (2UL == 4UL) {
      goto case_4___6;
    } else {
    }
    if (2UL == 8UL) {
      goto case_8___6;
    } else {
    }
    goto switch_default___6;
    case_1___6:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___5): "iq" ((short )(sdp->device)->queue_depth),
                         "m" (*((struct __large_struct *)(& sg_idp->d_queue_depth))),
                         "i" (-14), "0" (__pu_err___5));
    goto ldv_38379;
    case_2___6:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___5): "ir" ((short )(sdp->device)->queue_depth),
                         "m" (*((struct __large_struct *)(& sg_idp->d_queue_depth))),
                         "i" (-14), "0" (__pu_err___5));
    goto ldv_38379;
    case_4___6:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___5): "ir" ((short )(sdp->device)->queue_depth),
                         "m" (*((struct __large_struct *)(& sg_idp->d_queue_depth))),
                         "i" (-14), "0" (__pu_err___5));
    goto ldv_38379;
    case_8___6:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___5): "er" ((short )(sdp->device)->queue_depth),
                         "m" (*((struct __large_struct *)(& sg_idp->d_queue_depth))),
                         "i" (-14), "0" (__pu_err___5));
    goto ldv_38379;
    switch_default___6:
    {
    __put_user_bad();
    }
    switch_break___7: ;
    }
    ldv_38379:
    __pu_err___6 = 0;
    {
    if (4UL == 1UL) {
      goto case_1___7;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___7;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___7;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___7;
    } else {
    }
    goto switch_default___7;
    case_1___7:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___6): "iq" (0),
                         "m" (*((struct __large_struct *)(& sg_idp->unused))), "i" (-14),
                         "0" (__pu_err___6));
    goto ldv_38387;
    case_2___7:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___6): "ir" (0),
                         "m" (*((struct __large_struct *)(& sg_idp->unused))), "i" (-14),
                         "0" (__pu_err___6));
    goto ldv_38387;
    case_4___7:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___6): "ir" (0),
                         "m" (*((struct __large_struct *)(& sg_idp->unused))), "i" (-14),
                         "0" (__pu_err___6));
    goto ldv_38387;
    case_8___7:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___6): "er" (0),
                         "m" (*((struct __large_struct *)(& sg_idp->unused))), "i" (-14),
                         "0" (__pu_err___6));
    goto ldv_38387;
    switch_default___7:
    {
    __put_user_bad();
    }
    switch_break___8: ;
    }
    ldv_38387:
    __pu_err___7 = 0;
    {
    if (4UL == 1UL) {
      goto case_1___8;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___8;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___8;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___8;
    } else {
    }
    goto switch_default___8;
    case_1___8:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___7): "iq" (0),
                         "m" (*((struct __large_struct *)(& sg_idp->unused) + 1U)),
                         "i" (-14), "0" (__pu_err___7));
    goto ldv_38395;
    case_2___8:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___7): "ir" (0),
                         "m" (*((struct __large_struct *)(& sg_idp->unused) + 1U)),
                         "i" (-14), "0" (__pu_err___7));
    goto ldv_38395;
    case_4___8:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___7): "ir" (0),
                         "m" (*((struct __large_struct *)(& sg_idp->unused) + 1U)),
                         "i" (-14), "0" (__pu_err___7));
    goto ldv_38395;
    case_8___8:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___7): "er" (0),
                         "m" (*((struct __large_struct *)(& sg_idp->unused) + 1U)),
                         "i" (-14), "0" (__pu_err___7));
    goto ldv_38395;
    switch_default___8:
    {
    __put_user_bad();
    }
    switch_break___9: ;
    }
    ldv_38395: ;
    return (0L);
  }
  case_8827:
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___1), "=r" (__val_gu___1): "0" (ip),
                       "i" (4UL));
  val = (int )__val_gu___1;
  result = __ret_gu___1;
  }
  if (result != 0) {
    return ((long )result);
  } else {
  }
  sfp->force_packid = val != 0;
  return (0L);
  case_8828:
  {
  tmp___21 = current_thread_info();
  tmp___22 = __chk_range_not_ok((unsigned long )ip, 4UL, tmp___21->addr_limit.seg);
  }
  if (tmp___22) {
    tmp___23 = 0;
  } else {
    tmp___23 = 1;
  }
  {
  tmp___24 = ldv__builtin_expect((long )tmp___23, 1L);
  }
  if (tmp___24 == 0L) {
    return (-14L);
  } else {
  }
  {
  ldv_linux_kernel_locking_rwlock_read_lock();
  srp = sfp->headrp;
  }
  goto ldv_38416;
  ldv_38415: ;
  if (((unsigned int )((unsigned short )*((short *)srp + 117UL)) & 65535U) == 256U) {
    {
    ldv_linux_kernel_locking_rwlock_read_unlock();
    __pu_err___8 = 0;
    }
    {
    if (4UL == 1UL) {
      goto case_1___9;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___9;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___9;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___9;
    } else {
    }
    goto switch_default___9;
    case_1___9:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___8): "iq" (srp->header.pack_id),
                         "m" (*((struct __large_struct *)ip)), "i" (-14), "0" (__pu_err___8));
    goto ldv_38409;
    case_2___9:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___8): "ir" (srp->header.pack_id),
                         "m" (*((struct __large_struct *)ip)), "i" (-14), "0" (__pu_err___8));
    goto ldv_38409;
    case_4___9:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___8): "ir" (srp->header.pack_id),
                         "m" (*((struct __large_struct *)ip)), "i" (-14), "0" (__pu_err___8));
    goto ldv_38409;
    case_8___9:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___8): "er" (srp->header.pack_id),
                         "m" (*((struct __large_struct *)ip)), "i" (-14), "0" (__pu_err___8));
    goto ldv_38409;
    switch_default___9:
    {
    __put_user_bad();
    }
    switch_break___10: ;
    }
    ldv_38409: ;
    return (0L);
  } else {
  }
  srp = srp->nextrp;
  ldv_38416: ;
  if ((unsigned long )srp != (unsigned long )((Sg_request *)0)) {
    goto ldv_38415;
  } else {
  }
  {
  ldv_linux_kernel_locking_rwlock_read_unlock();
  __pu_err___9 = 0;
  }
  {
  if (4UL == 1UL) {
    goto case_1___10;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___10;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___10;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___10;
  } else {
  }
  goto switch_default___10;
  case_1___10:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___9): "iq" (-1),
                       "m" (*((struct __large_struct *)ip)), "i" (-14), "0" (__pu_err___9));
  goto ldv_38420;
  case_2___10:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___9): "ir" (-1),
                       "m" (*((struct __large_struct *)ip)), "i" (-14), "0" (__pu_err___9));
  goto ldv_38420;
  case_4___10:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___9): "ir" (-1),
                       "m" (*((struct __large_struct *)ip)), "i" (-14), "0" (__pu_err___9));
  goto ldv_38420;
  case_8___10:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___9): "er" (-1),
                       "m" (*((struct __large_struct *)ip)), "i" (-14), "0" (__pu_err___9));
  goto ldv_38420;
  switch_default___10:
  {
  __put_user_bad();
  }
  switch_break___11: ;
  }
  ldv_38420: ;
  return (0L);
  case_8829:
  {
  ldv_linux_kernel_locking_rwlock_read_lock();
  val = 0;
  srp = sfp->headrp;
  }
  goto ldv_38428;
  ldv_38427: ;
  if (((unsigned int )((unsigned short )*((short *)srp + 117UL)) & 65535U) == 256U) {
    val = val + 1;
  } else {
  }
  srp = srp->nextrp;
  ldv_38428: ;
  if ((unsigned long )srp != (unsigned long )((Sg_request *)0)) {
    goto ldv_38427;
  } else {
  }
  {
  ldv_linux_kernel_locking_rwlock_read_unlock();
  might_fault();
  __pu_val___0 = val;
  }
  {
  if (4UL == 1UL) {
    goto case_1___11;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___11;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___11;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___11;
  } else {
  }
  goto switch_default___11;
  case_1___11:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" (ip): "ebx");
  goto ldv_38433;
  case_2___11:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" (ip): "ebx");
  goto ldv_38433;
  case_4___11:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" (ip): "ebx");
  goto ldv_38433;
  case_8___11:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" (ip): "ebx");
  goto ldv_38433;
  switch_default___11:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" (ip): "ebx");
  goto ldv_38433;
  switch_break___12: ;
  }
  ldv_38433: ;
  return ((long )__ret_pu___0);
  case_8831:
  {
  might_fault();
  __pu_val___1 = sdp->sg_tablesize;
  }
  {
  if (4UL == 1UL) {
    goto case_1___12;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___12;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___12;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___12;
  } else {
  }
  goto switch_default___12;
  case_1___12:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" (ip): "ebx");
  goto ldv_38443;
  case_2___12:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" (ip): "ebx");
  goto ldv_38443;
  case_4___12:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" (ip): "ebx");
  goto ldv_38443;
  case_8___12:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" (ip): "ebx");
  goto ldv_38443;
  switch_default___12:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" (ip): "ebx");
  goto ldv_38443;
  switch_break___13: ;
  }
  ldv_38443: ;
  return ((long )__ret_pu___1);
  case_8821:
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___2), "=r" (__val_gu___2): "0" (ip),
                       "i" (4UL));
  val = (int )__val_gu___2;
  result = __ret_gu___2;
  }
  if (result != 0) {
    return ((long )result);
  } else {
  }
  if (val < 0) {
    return (-22L);
  } else {
  }
  {
  __min1 = val;
  tmp___25 = max_sectors_bytes((sdp->device)->request_queue);
  __min2 = tmp___25;
  val = __min1 < __min2 ? __min1 : __min2;
  }
  if ((unsigned int )val != sfp->reserve.bufflen) {
    {
    tmp___26 = sg_res_in_use(sfp);
    }
    if (tmp___26 != 0 || (int )((signed char )sfp->mmap_called) != 0) {
      return (-16L);
    } else {
    }
    {
    sg_remove_scat(sfp, & sfp->reserve);
    sg_build_reserve(sfp, val);
    }
  } else {
  }
  return (0L);
  case_8818:
  {
  __min1___0 = (int )sfp->reserve.bufflen;
  tmp___27 = max_sectors_bytes((sdp->device)->request_queue);
  __min2___0 = tmp___27;
  val = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
  might_fault();
  __pu_val___2 = val;
  }
  {
  if (4UL == 1UL) {
    goto case_1___13;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___13;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___13;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___13;
  } else {
  }
  goto switch_default___13;
  case_1___13:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___2): "0" (__pu_val___2),
                       "c" (ip): "ebx");
  goto ldv_38463;
  case_2___13:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___2): "0" (__pu_val___2),
                       "c" (ip): "ebx");
  goto ldv_38463;
  case_4___13:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___2): "0" (__pu_val___2),
                       "c" (ip): "ebx");
  goto ldv_38463;
  case_8___13:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___2): "0" (__pu_val___2),
                       "c" (ip): "ebx");
  goto ldv_38463;
  switch_default___13:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___2): "0" (__pu_val___2),
                       "c" (ip): "ebx");
  goto ldv_38463;
  switch_break___14: ;
  }
  ldv_38463: ;
  return ((long )__ret_pu___2);
  case_8817:
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___3), "=r" (__val_gu___3): "0" (ip),
                       "i" (4UL));
  val = (int )__val_gu___3;
  result = __ret_gu___3;
  }
  if (result != 0) {
    return ((long )result);
  } else {
  }
  sfp->cmd_q = val != 0;
  return (0L);
  case_8816:
  {
  might_fault();
  __pu_val___3 = (int )sfp->cmd_q;
  }
  {
  if (4UL == 1UL) {
    goto case_1___14;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___14;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___14;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___14;
  } else {
  }
  goto switch_default___14;
  case_1___14:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___3): "0" (__pu_val___3),
                       "c" (ip): "ebx");
  goto ldv_38477;
  case_2___14:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___3): "0" (__pu_val___3),
                       "c" (ip): "ebx");
  goto ldv_38477;
  case_4___14:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___3): "0" (__pu_val___3),
                       "c" (ip): "ebx");
  goto ldv_38477;
  case_8___14:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___3): "0" (__pu_val___3),
                       "c" (ip): "ebx");
  goto ldv_38477;
  switch_default___14:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___3): "0" (__pu_val___3),
                       "c" (ip): "ebx");
  goto ldv_38477;
  switch_break___15: ;
  }
  ldv_38477: ;
  return ((long )__ret_pu___3);
  case_8839:
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___4), "=r" (__val_gu___4): "0" (ip),
                       "i" (4UL));
  val = (int )__val_gu___4;
  result = __ret_gu___4;
  }
  if (result != 0) {
    return ((long )result);
  } else {
  }
  sfp->keep_orphan = (char )val;
  return (0L);
  case_8840:
  {
  might_fault();
  __pu_val___4 = (int )sfp->keep_orphan;
  }
  {
  if (4UL == 1UL) {
    goto case_1___15;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___15;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___15;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___15;
  } else {
  }
  goto switch_default___15;
  case_1___15:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___4): "0" (__pu_val___4),
                       "c" (ip): "ebx");
  goto ldv_38491;
  case_2___15:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___4): "0" (__pu_val___4),
                       "c" (ip): "ebx");
  goto ldv_38491;
  case_4___15:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___4): "0" (__pu_val___4),
                       "c" (ip): "ebx");
  goto ldv_38491;
  case_8___15:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___4): "0" (__pu_val___4),
                       "c" (ip): "ebx");
  goto ldv_38491;
  switch_default___15:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___4): "0" (__pu_val___4),
                       "c" (ip): "ebx");
  goto ldv_38491;
  switch_break___16: ;
  }
  ldv_38491: ;
  return ((long )__ret_pu___4);
  case_8835:
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___5), "=r" (__val_gu___5): "0" (ip),
                       "i" (4UL));
  val = (int )__val_gu___5;
  result = __ret_gu___5;
  }
  if (result != 0) {
    return ((long )result);
  } else {
  }
  sfp->next_cmd_len = (unsigned char )(0 > val ? 0 : val);
  return (0L);
  case_8834:
  {
  might_fault();
  __pu_val___5 = sg_version_num;
  }
  {
  if (4UL == 1UL) {
    goto case_1___16;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___16;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___16;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___16;
  } else {
  }
  goto switch_default___16;
  case_1___16:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___5): "0" (__pu_val___5),
                       "c" (ip): "ebx");
  goto ldv_38505;
  case_2___16:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___5): "0" (__pu_val___5),
                       "c" (ip): "ebx");
  goto ldv_38505;
  case_4___16:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___5): "0" (__pu_val___5),
                       "c" (ip): "ebx");
  goto ldv_38505;
  case_8___16:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___5): "0" (__pu_val___5),
                       "c" (ip): "ebx");
  goto ldv_38505;
  switch_default___16:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___5): "0" (__pu_val___5),
                       "c" (ip): "ebx");
  goto ldv_38505;
  switch_break___17: ;
  }
  ldv_38505: ;
  return ((long )__ret_pu___5);
  case_8841:
  {
  val = (unsigned long )sdp->device != (unsigned long )((struct scsi_device *)0);
  might_fault();
  __pu_val___6 = val;
  }
  {
  if (4UL == 1UL) {
    goto case_1___17;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___17;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___17;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___17;
  } else {
  }
  goto switch_default___17;
  case_1___17:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___6): "0" (__pu_val___6),
                       "c" (ip): "ebx");
  goto ldv_38515;
  case_2___17:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___6): "0" (__pu_val___6),
                       "c" (ip): "ebx");
  goto ldv_38515;
  case_4___17:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___6): "0" (__pu_val___6),
                       "c" (ip): "ebx");
  goto ldv_38515;
  case_8___17:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___6): "0" (__pu_val___6),
                       "c" (ip): "ebx");
  goto ldv_38515;
  switch_default___17:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___6): "0" (__pu_val___6),
                       "c" (ip): "ebx");
  goto ldv_38515;
  switch_break___18: ;
  }
  ldv_38515: ;
  return ((long )__ret_pu___6);
  case_8838:
  {
  tmp___29 = current_thread_info();
  tmp___30 = __chk_range_not_ok((unsigned long )p, 384UL, tmp___29->addr_limit.seg);
  }
  if (tmp___30) {
    tmp___31 = 0;
  } else {
    tmp___31 = 1;
  }
  {
  tmp___32 = ldv__builtin_expect((long )tmp___31, 1L);
  }
  if (tmp___32 == 0L) {
    return (-14L);
  } else {
    {
    tmp___28 = kmalloc(384UL, 208U);
    rinfo = (sg_req_info_t *)tmp___28;
    }
    if ((unsigned long )rinfo == (unsigned long )((sg_req_info_t *)0)) {
      return (-12L);
    } else {
    }
    {
    ldv_linux_kernel_locking_rwlock_read_lock();
    srp = sfp->headrp;
    val = 0;
    }
    goto ldv_38526;
    ldv_38525:
    {
    memset((void *)rinfo + (unsigned long )val, 0, 24UL);
    }
    if ((unsigned long )srp != (unsigned long )((Sg_request *)0)) {
      (rinfo + (unsigned long )val)->req_state = (char )((unsigned int )((unsigned char )srp->done) + 1U);
      (rinfo + (unsigned long )val)->problem = (int )((char )((int )srp->header.masked_status & (int )((unsigned char )srp->header.host_status))) & (int )((char )srp->header.driver_status);
      if ((int )((signed char )srp->done) != 0) {
        (rinfo + (unsigned long )val)->duration = srp->header.duration;
      } else {
        {
        ms = jiffies_to_msecs(jiffies);
        (rinfo + (unsigned long )val)->duration = ms > srp->header.duration ? ms - srp->header.duration : 0U;
        }
      }
      (rinfo + (unsigned long )val)->orphan = srp->orphan;
      (rinfo + (unsigned long )val)->sg_io_owned = srp->sg_io_owned;
      (rinfo + (unsigned long )val)->pack_id = srp->header.pack_id;
      (rinfo + (unsigned long )val)->usr_ptr = srp->header.usr_ptr;
    } else {
    }
    val = val + 1;
    srp = (unsigned long )srp != (unsigned long )((Sg_request *)0) ? srp->nextrp : srp;
    ldv_38526: ;
    if (val <= 15) {
      goto ldv_38525;
    } else {
    }
    {
    ldv_linux_kernel_locking_rwlock_read_unlock();
    result = __copy_to_user(p, (void const *)rinfo, 384U);
    result = result != 0 ? -14 : 0;
    kfree((void const *)rinfo);
    }
    return ((long )result);
  }
  case_8707:
  {
  tmp___33 = atomic_read((atomic_t const *)(& sdp->detaching));
  }
  if (tmp___33 != 0) {
    return (-19L);
  } else {
  }
  {
  might_fault();
  __pu_val___7 = (int )(((sdp->device)->host)->hostt)->emulated;
  }
  {
  if (4UL == 1UL) {
    goto case_1___18;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___18;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___18;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___18;
  } else {
  }
  goto switch_default___18;
  case_1___18:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___7): "0" (__pu_val___7),
                       "c" (ip): "ebx");
  goto ldv_38532;
  case_2___18:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___7): "0" (__pu_val___7),
                       "c" (ip): "ebx");
  goto ldv_38532;
  case_4___18:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___7): "0" (__pu_val___7),
                       "c" (ip): "ebx");
  goto ldv_38532;
  case_8___18:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___7): "0" (__pu_val___7),
                       "c" (ip): "ebx");
  goto ldv_38532;
  switch_default___18:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___7): "0" (__pu_val___7),
                       "c" (ip): "ebx");
  goto ldv_38532;
  switch_break___19: ;
  }
  ldv_38532: ;
  return ((long )__ret_pu___7);
  case_1___19:
  {
  tmp___34 = atomic_read((atomic_t const *)(& sdp->detaching));
  }
  if (tmp___34 != 0) {
    return (-19L);
  } else {
  }
  if (read_only != 0) {
    {
    opcode = 10U;
    siocp = (Scsi_Ioctl_Command *)p;
    tmp___35 = copy_from_user((void *)(& opcode), (void const *)(& siocp->data),
                              1UL);
    }
    if (tmp___35 != 0UL) {
      return (-14L);
    } else {
    }
    {
    tmp___36 = sg_allow_access(filp, & opcode);
    }
    if (tmp___36 != 0) {
      return (-1L);
    } else {
    }
  } else {
  }
  {
  tmp___37 = sg_scsi_ioctl((sdp->device)->request_queue, (struct gendisk *)0, filp->f_mode,
                           (struct scsi_ioctl_command *)p);
  }
  return ((long )tmp___37);
  case_8830:
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___6), "=r" (__val_gu___6): "0" (ip),
                       "i" (4UL));
  val = (int )__val_gu___6;
  result = __ret_gu___6;
  }
  if (result != 0) {
    return ((long )result);
  } else {
  }
  sdp->sgdebug = (char )val;
  return (0L);
  case_4711:
  {
  might_fault();
  __pu_val___8 = max_sectors_bytes((sdp->device)->request_queue);
  }
  {
  if (4UL == 1UL) {
    goto case_1___20;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___19;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___19;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___19;
  } else {
  }
  goto switch_default___19;
  case_1___20:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___8): "0" (__pu_val___8),
                       "c" (ip): "ebx");
  goto ldv_38549;
  case_2___19:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___8): "0" (__pu_val___8),
                       "c" (ip): "ebx");
  goto ldv_38549;
  case_4___19:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___8): "0" (__pu_val___8),
                       "c" (ip): "ebx");
  goto ldv_38549;
  case_8___19:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___8): "0" (__pu_val___8),
                       "c" (ip): "ebx");
  goto ldv_38549;
  switch_default___19:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___8): "0" (__pu_val___8),
                       "c" (ip): "ebx");
  goto ldv_38549;
  switch_break___20: ;
  }
  ldv_38549: ;
  return ((long )__ret_pu___8);
  case_3225948787:
  {
  tmp___38 = blk_trace_setup((sdp->device)->request_queue, (char *)(& (sdp->disk)->disk_name),
                             sdp->index | 22020096U, (struct block_device *)0, (char *)arg);
  }
  return ((long )tmp___38);
  case_4724:
  {
  tmp___39 = blk_trace_startstop((sdp->device)->request_queue, 1);
  }
  return ((long )tmp___39);
  case_4725:
  {
  tmp___40 = blk_trace_startstop((sdp->device)->request_queue, 0);
  }
  return ((long )tmp___40);
  case_4726:
  {
  tmp___41 = blk_trace_remove((sdp->device)->request_queue);
  }
  return ((long )tmp___41);
  case_21378: ;
  case_21382: ;
  case_21381: ;
  case_8709: ;
  case_8836:
  {
  tmp___42 = atomic_read((atomic_t const *)(& sdp->detaching));
  }
  if (tmp___42 != 0) {
    return (-19L);
  } else {
  }
  goto ldv_38564;
  switch_default___20: ;
  if (read_only != 0) {
    return (-1L);
  } else {
  }
  goto ldv_38564;
  switch_break: ;
  }
  ldv_38564:
  {
  result = scsi_ioctl_block_when_processing_errors(sdp->device, (int )cmd_in, (filp->f_flags & 2048U) != 0U);
  }
  if (result != 0) {
    return ((long )result);
  } else {
  }
  {
  tmp___43 = scsi_ioctl(sdp->device, (int )cmd_in, p);
  }
  return ((long )tmp___43);
}
}
static long sg_compat_ioctl(struct file *filp , unsigned int cmd_in , unsigned long arg )
{
  Sg_device *sdp ;
  Sg_fd *sfp ;
  struct scsi_device *sdev ;
  int ret ;
  {
  sfp = (Sg_fd *)filp->private_data;
  if ((unsigned long )sfp == (unsigned long )((Sg_fd *)0)) {
    return (-6L);
  } else {
    sdp = sfp->parentdp;
    if ((unsigned long )sdp == (unsigned long )((Sg_device *)0)) {
      return (-6L);
    } else {
    }
  }
  sdev = sdp->device;
  if ((unsigned long )((sdev->host)->hostt)->compat_ioctl != (unsigned long )((int (*)(struct scsi_device * ,
                                                                                       int ,
                                                                                       void * ))0)) {
    {
    ret = (*(((sdev->host)->hostt)->compat_ioctl))(sdev, (int )cmd_in, (void *)arg);
    }
    return ((long )ret);
  } else {
  }
  return (-515L);
}
}
static unsigned int sg_poll(struct file *filp , poll_table *wait )
{
  unsigned int res ;
  Sg_device *sdp ;
  Sg_fd *sfp ;
  Sg_request *srp ;
  int count ;
  int tmp ;
  long tmp___0 ;
  {
  res = 0U;
  count = 0;
  sfp = (Sg_fd *)filp->private_data;
  if ((unsigned long )sfp == (unsigned long )((Sg_fd *)0)) {
    return (8U);
  } else {
  }
  sdp = sfp->parentdp;
  if ((unsigned long )sdp == (unsigned long )((Sg_device *)0)) {
    return (8U);
  } else {
  }
  {
  poll_wait(filp, & sfp->read_wait, wait);
  ldv_linux_kernel_locking_rwlock_read_lock();
  srp = sfp->headrp;
  }
  goto ldv_38586;
  ldv_38585: ;
  if (res == 0U && ((unsigned int )((unsigned short )*((short *)srp + 117UL)) & 65535U) == 256U) {
    res = 65U;
  } else {
  }
  count = count + 1;
  srp = srp->nextrp;
  ldv_38586: ;
  if ((unsigned long )srp != (unsigned long )((Sg_request *)0)) {
    goto ldv_38585;
  } else {
  }
  {
  ldv_linux_kernel_locking_rwlock_read_unlock();
  tmp = atomic_read((atomic_t const *)(& sdp->detaching));
  }
  if (tmp != 0) {
    res = res | 16U;
  } else
  if ((int )((signed char )sfp->cmd_q) == 0) {
    if (count == 0) {
      res = res | 260U;
    } else {
    }
  } else
  if (count <= 15) {
    res = res | 260U;
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 3U, 0L);
  }
  if (tmp___0 != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                       "sg_poll: res=0x%x\n", (int )res);
    }
  } else {
  }
  return (res);
}
}
static int sg_fasync(int fd , struct file *filp , int mode )
{
  Sg_device *sdp ;
  Sg_fd *sfp ;
  long tmp ;
  int tmp___0 ;
  {
  sfp = (Sg_fd *)filp->private_data;
  if ((unsigned long )sfp == (unsigned long )((Sg_fd *)0)) {
    return (-6);
  } else {
    sdp = sfp->parentdp;
    if ((unsigned long )sdp == (unsigned long )((Sg_device *)0)) {
      return (-6);
    } else {
    }
  }
  {
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 3U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                       "sg_fasync: mode=%d\n", mode);
    }
  } else {
  }
  {
  tmp___0 = fasync_helper(fd, filp, mode, & sfp->async_qp);
  }
  return (tmp___0);
}
}
static int sg_vma_fault(struct vm_area_struct *vma , struct vm_fault *vmf )
{
  Sg_fd *sfp ;
  unsigned long offset ;
  unsigned long len ;
  unsigned long sa ;
  Sg_scatter_hold *rsv_schp ;
  int k ;
  int length ;
  long tmp ;
  struct page *page ;
  {
  if ((unsigned long )vma == (unsigned long )((struct vm_area_struct *)0)) {
    return (2);
  } else {
    sfp = (Sg_fd *)vma->vm_private_data;
    if ((unsigned long )sfp == (unsigned long )((Sg_fd *)0)) {
      return (2);
    } else {
    }
  }
  rsv_schp = & sfp->reserve;
  offset = vmf->pgoff << 12;
  if (offset >= (unsigned long )rsv_schp->bufflen) {
    return (2);
  } else {
  }
  {
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 3U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)(sfp->parentdp)->device,
                       (char const *)(& ((sfp->parentdp)->disk)->disk_name), "sg_vma_fault: offset=%lu, scatg=%d\n",
                       offset, (int )rsv_schp->k_use_sg);
    }
  } else {
  }
  sa = vma->vm_start;
  length = 1 << (rsv_schp->page_order + 12);
  k = 0;
  goto ldv_38608;
  ldv_38607:
  len = vma->vm_end - sa;
  len = len < (unsigned long )length ? len : (unsigned long )length;
  if (offset < len) {
    {
    page = (struct page *)-24189255811072L + ((unsigned long )(((long )*(rsv_schp->pages + (unsigned long )k) + 24189255811072L) / 64L) + (offset >> 12));
    get_page(page);
    vmf->page = page;
    }
    return (0);
  } else {
  }
  sa = sa + len;
  offset = offset - len;
  k = k + 1;
  ldv_38608: ;
  if (k < (int )rsv_schp->k_use_sg && sa < vma->vm_end) {
    goto ldv_38607;
  } else {
  }
  return (2);
}
}
static struct vm_operations_struct const sg_mmap_vm_ops =
     {0, 0, & sg_vma_fault, 0, 0, 0, 0, 0, 0, 0};
static int sg_mmap(struct file *filp , struct vm_area_struct *vma )
{
  Sg_fd *sfp ;
  unsigned long req_sz ;
  unsigned long len ;
  unsigned long sa ;
  Sg_scatter_hold *rsv_schp ;
  int k ;
  int length ;
  long tmp ;
  {
  if ((unsigned long )filp == (unsigned long )((struct file *)0) || (unsigned long )vma == (unsigned long )((struct vm_area_struct *)0)) {
    return (-6);
  } else {
    sfp = (Sg_fd *)filp->private_data;
    if ((unsigned long )sfp == (unsigned long )((Sg_fd *)0)) {
      return (-6);
    } else {
    }
  }
  {
  req_sz = vma->vm_end - vma->vm_start;
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 3U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)(sfp->parentdp)->device,
                       (char const *)(& ((sfp->parentdp)->disk)->disk_name), "sg_mmap starting, vm_start=%p, len=%d\n",
                       (void *)vma->vm_start, (int )req_sz);
    }
  } else {
  }
  if (vma->vm_pgoff != 0UL) {
    return (-22);
  } else {
  }
  rsv_schp = & sfp->reserve;
  if (req_sz > (unsigned long )rsv_schp->bufflen) {
    return (-12);
  } else {
  }
  sa = vma->vm_start;
  length = 1 << (rsv_schp->page_order + 12);
  k = 0;
  goto ldv_38623;
  ldv_38622:
  len = vma->vm_end - sa;
  len = len < (unsigned long )length ? len : (unsigned long )length;
  sa = sa + len;
  k = k + 1;
  ldv_38623: ;
  if (k < (int )rsv_schp->k_use_sg && sa < vma->vm_end) {
    goto ldv_38622;
  } else {
  }
  sfp->mmap_called = 1;
  vma->vm_flags = vma->vm_flags | 67371008UL;
  vma->vm_private_data = (void *)sfp;
  vma->vm_ops = & sg_mmap_vm_ops;
  return (0);
}
}
static void sg_rq_end_io_usercontext(struct work_struct *work )
{
  struct sg_request *srp ;
  struct work_struct const *__mptr ;
  struct sg_fd *sfp ;
  {
  {
  __mptr = (struct work_struct const *)work;
  srp = (struct sg_request *)__mptr + 0xffffffffffffff00UL;
  sfp = srp->parentfp;
  sg_finish_rem_req(srp);
  kref_put(& sfp->f_ref, & sg_remove_sfp);
  }
  return;
}
}
static void sg_rq_end_io(struct request *rq , int uptodate )
{
  struct sg_request *srp ;
  Sg_device *sdp ;
  Sg_fd *sfp ;
  unsigned int ms ;
  char *sense ;
  int result ;
  int resid ;
  int done ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  int __ret_warn_on___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  struct scsi_sense_hdr sshdr ;
  bool tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  long tmp___10 ;
  {
  {
  srp = (struct sg_request *)rq->end_io_data;
  done = 1;
  __ret_warn_on = (int )((signed char )srp->done) != 0;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("drivers/scsi/sg.c", 1289);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return;
  } else {
  }
  {
  sfp = srp->parentfp;
  __ret_warn_on___0 = (unsigned long )sfp == (unsigned long )((Sg_fd *)0);
  tmp___1 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    warn_slowpath_null("drivers/scsi/sg.c", 1293);
    }
  } else {
  }
  {
  tmp___2 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  }
  if (tmp___2 != 0L) {
    return;
  } else {
  }
  {
  sdp = sfp->parentdp;
  tmp___3 = atomic_read((atomic_t const *)(& sdp->detaching));
  tmp___4 = ldv__builtin_expect(tmp___3 != 0, 0L);
  }
  if (tmp___4 != 0L) {
    {
    printk("\016%s: device detaching\n", "sg_rq_end_io");
    }
  } else {
  }
  {
  sense = (char *)rq->sense;
  result = rq->errors;
  resid = (int )rq->resid_len;
  tmp___5 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 4U, 0L);
  }
  if (tmp___5 != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                       "sg_cmd_done: pack_id=%d, res=0x%x\n", srp->header.pack_id,
                       result);
    }
  } else {
  }
  {
  srp->header.resid = resid;
  ms = jiffies_to_msecs(jiffies);
  srp->header.duration = ms > srp->header.duration ? ms - srp->header.duration : 0U;
  }
  if (result != 0) {
    srp->header.status = (unsigned char )result;
    srp->header.masked_status = (unsigned int )((unsigned char )(result >> 1)) & 127U;
    srp->header.msg_status = (unsigned char )(result >> 8);
    srp->header.host_status = (unsigned int )((unsigned short )(result >> 16)) & 255U;
    srp->header.driver_status = (unsigned short )((unsigned int )result >> 24);
    if ((int )((signed char )sdp->sgdebug) > 0 && ((unsigned int )srp->header.masked_status == 1U || (unsigned int )srp->header.masked_status == 17U)) {
      {
      __scsi_print_sense((struct scsi_device const *)sdp->device, "sg_rq_end_io",
                         (unsigned char const *)sense, 96);
      }
    } else {
    }
    if ((unsigned int )result >> 24 != 0U) {
      {
      tmp___6 = scsi_normalize_sense((u8 const *)sense, 96, & sshdr);
      }
      if ((int )tmp___6) {
        {
        tmp___7 = scsi_sense_is_deferred((struct scsi_sense_hdr const *)(& sshdr));
        }
        if (tmp___7) {
          tmp___8 = 0;
        } else {
          tmp___8 = 1;
        }
        if (tmp___8) {
          if ((unsigned int )sshdr.sense_key == 6U) {
            if ((unsigned int )*((unsigned char *)sdp->device + 328UL) != 0U) {
              (sdp->device)->changed = 1U;
            } else {
            }
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  srp->rq = (struct request *)0;
  if ((unsigned long )rq->cmd != (unsigned long )((unsigned char *)(& rq->__cmd))) {
    {
    kfree((void const *)rq->cmd);
    }
  } else {
  }
  {
  ldv___blk_put_request_107(rq->q, rq);
  ldv_linux_kernel_locking_rwlock_write_lock();
  tmp___9 = ldv__builtin_expect((int )((signed char )srp->orphan) != 0, 0L);
  }
  if (tmp___9 != 0L) {
    if ((int )((signed char )sfp->keep_orphan) != 0) {
      srp->sg_io_owned = 0;
    } else {
      done = 0;
    }
  } else {
  }
  {
  srp->done = (char )done;
  ldv_linux_kernel_locking_rwlock_write_unlock();
  tmp___10 = ldv__builtin_expect(done != 0, 1L);
  }
  if (tmp___10 != 0L) {
    {
    __wake_up(& sfp->read_wait, 1U, 1, (void *)0);
    kill_fasync(& sfp->async_qp, 29, 131073);
    kref_put(& sfp->f_ref, & sg_remove_sfp);
    }
  } else {
    {
    __init_work(& srp->ew.work, 0);
    __constr_expr_0.counter = 137438953408L;
    srp->ew.work.data = __constr_expr_0;
    lockdep_init_map(& srp->ew.work.lockdep_map, "(&srp->ew.work)", & __key, 0);
    INIT_LIST_HEAD(& srp->ew.work.entry);
    srp->ew.work.func = & sg_rq_end_io_usercontext;
    schedule_work(& srp->ew.work);
    }
  }
  return;
}
}
static struct file_operations const sg_fops =
     {& __this_module, & no_llseek, & sg_read, & sg_write, 0, 0, 0, 0, 0, & sg_poll,
    & sg_ioctl, & sg_compat_ioctl, & sg_mmap, 0, & sg_open, 0, & sg_release, 0, 0,
    & sg_fasync, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct class *sg_sysfs_class ;
static int sg_sysfs_valid = 0;
static Sg_device *sg_alloc(struct gendisk *disk , struct scsi_device *scsidp )
{
  struct request_queue *q ;
  Sg_device *sdp ;
  int error ;
  u32 k ;
  void *tmp ;
  void *tmp___0 ;
  long tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  unsigned short tmp___2 ;
  void *tmp___3 ;
  {
  {
  q = scsidp->request_queue;
  tmp = kzalloc(392UL, 208U);
  sdp = (Sg_device *)tmp;
  }
  if ((unsigned long )sdp == (unsigned long )((Sg_device *)0)) {
    {
    sdev_prefix_printk("\f", (struct scsi_device const *)scsidp, (char const *)0,
                       "%s: kmalloc Sg_device failure\n", "sg_alloc");
    tmp___0 = ERR_PTR(-12L);
    }
    return ((Sg_device *)tmp___0);
  } else {
  }
  {
  idr_preload(208U);
  ldv_linux_kernel_locking_rwlock_write_lock();
  error = ldv_idr_alloc_108(& sg_index_idr, (void *)sdp, 0, 32768, 0U);
  }
  if (error < 0) {
    if (error == -28) {
      {
      sdev_prefix_printk("\f", (struct scsi_device const *)scsidp, (char const *)0,
                         "Unable to attach sg device type=%d, minor number exceeds %d\n",
                         (int )scsidp->type, 32767);
      error = -19;
      }
    } else {
      {
      sdev_prefix_printk("\f", (struct scsi_device const *)scsidp, (char const *)0,
                         "%s: idr allocation Sg_device failure: %d\n", "sg_alloc",
                         error);
      }
    }
    goto out_unlock;
  } else {
  }
  {
  k = (u32 )error;
  tmp___1 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 3U, 0L);
  }
  if (tmp___1 != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)scsidp, (char const *)0,
                       "sg_alloc: dev=%d \n", k);
    }
  } else {
  }
  {
  sprintf((char *)(& disk->disk_name), "sg%d", k);
  disk->first_minor = (int )k;
  sdp->disk = disk;
  sdp->device = scsidp;
  __mutex_init(& sdp->open_rel_lock, "&sdp->open_rel_lock", & __key);
  INIT_LIST_HEAD(& sdp->sfds);
  __init_waitqueue_head(& sdp->open_wait, "&sdp->open_wait", & __key___0);
  atomic_set(& sdp->detaching, 0);
  __rwlock_init(& sdp->sfd_lock, "&sdp->sfd_lock", & __key___1);
  tmp___2 = queue_max_segments(q);
  sdp->sg_tablesize = (int )tmp___2;
  sdp->index = k;
  kref_init(& sdp->d_ref);
  error = 0;
  }
  out_unlock:
  {
  ldv_linux_kernel_locking_rwlock_write_unlock();
  idr_preload_end();
  }
  if (error != 0) {
    {
    kfree((void const *)sdp);
    tmp___3 = ERR_PTR((long )error);
    }
    return ((Sg_device *)tmp___3);
  } else {
  }
  return (sdp);
}
}
static int sg_add_device(struct device *cl_dev , struct class_interface *cl_intf )
{
  struct scsi_device *scsidp ;
  struct device const *__mptr ;
  struct gendisk *disk ;
  Sg_device *sdp ;
  struct cdev *cdev ;
  int error ;
  long tmp ;
  bool tmp___0 ;
  struct device *sg_class_member ;
  long tmp___1 ;
  bool tmp___2 ;
  {
  {
  __mptr = (struct device const *)cl_dev->parent;
  scsidp = (struct scsi_device *)__mptr + 0xfffffffffffffe28UL;
  sdp = (Sg_device *)0;
  cdev = (struct cdev *)0;
  disk = ldv_alloc_disk_109(1);
  }
  if ((unsigned long )disk == (unsigned long )((struct gendisk *)0)) {
    {
    printk("\f%s: alloc_disk failed\n", "sg_add_device");
    }
    return (-12);
  } else {
  }
  {
  disk->major = 21;
  error = -12;
  cdev = cdev_alloc();
  }
  if ((unsigned long )cdev == (unsigned long )((struct cdev *)0)) {
    {
    printk("\f%s: cdev_alloc failed\n", "sg_add_device");
    }
    goto out;
  } else {
  }
  {
  cdev->owner = & __this_module;
  cdev->ops = & sg_fops;
  sdp = sg_alloc(disk, scsidp);
  tmp___0 = IS_ERR((void const *)sdp);
  }
  if ((int )tmp___0) {
    {
    printk("\f%s: sg_alloc failed\n", "sg_add_device");
    tmp = PTR_ERR((void const *)sdp);
    error = (int )tmp;
    }
    goto out;
  } else {
  }
  {
  error = cdev_add(cdev, sdp->index | 22020096U, 1U);
  }
  if (error != 0) {
    goto cdev_add_err;
  } else {
  }
  sdp->cdev = cdev;
  if (sg_sysfs_valid != 0) {
    {
    sg_class_member = device_create(sg_sysfs_class, cl_dev->parent, sdp->index | 22020096U,
                                    (void *)sdp, "%s", (char *)(& disk->disk_name));
    tmp___2 = IS_ERR((void const *)sg_class_member);
    }
    if ((int )tmp___2) {
      {
      printk("\v%s: device_create failed\n", "sg_add_device");
      tmp___1 = PTR_ERR((void const *)sg_class_member);
      error = (int )tmp___1;
      }
      goto cdev_add_err;
    } else {
    }
    {
    error = sysfs_create_link(& scsidp->sdev_gendev.kobj, & sg_class_member->kobj,
                              "generic");
    }
    if (error != 0) {
      {
      printk("\v%s: unable to make symlink \'generic\' back to sg%d\n", "sg_add_device",
             sdp->index);
      }
    } else {
    }
  } else {
    {
    printk("\f%s: sg_sys Invalid\n", "sg_add_device");
    }
  }
  {
  sdev_prefix_printk("\r", (struct scsi_device const *)scsidp, (char const *)0,
                     "Attached scsi generic sg%d type %d\n", sdp->index, (int )scsidp->type);
  dev_set_drvdata(cl_dev, (void *)sdp);
  }
  return (0);
  cdev_add_err:
  {
  ldv_linux_kernel_locking_rwlock_write_lock();
  ldv_idr_remove_110(& sg_index_idr, (int )sdp->index);
  ldv_linux_kernel_locking_rwlock_write_unlock();
  kfree((void const *)sdp);
  }
  out:
  {
  ldv_put_disk_111(disk);
  }
  if ((unsigned long )cdev != (unsigned long )((struct cdev *)0)) {
    {
    ldv_cdev_del_112(cdev);
    }
  } else {
  }
  return (error);
}
}
static void sg_device_destroy(struct kref *kref )
{
  struct sg_device *sdp ;
  struct kref const *__mptr ;
  long tmp ;
  {
  {
  __mptr = (struct kref const *)kref;
  sdp = (struct sg_device *)__mptr + 0xfffffffffffffe80UL;
  ldv_linux_kernel_locking_rwlock_write_lock();
  ldv_idr_remove_113(& sg_index_idr, (int )sdp->index);
  ldv_linux_kernel_locking_rwlock_write_unlock();
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 3U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                       "sg_device_destroy\n");
    }
  } else {
  }
  {
  ldv_put_disk_114(sdp->disk);
  kfree((void const *)sdp);
  }
  return;
}
}
static void sg_remove_device(struct device *cl_dev , struct class_interface *cl_intf )
{
  struct scsi_device *scsidp ;
  struct device const *__mptr ;
  Sg_device *sdp ;
  void *tmp ;
  Sg_fd *sfp ;
  int val ;
  long tmp___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  {
  __mptr = (struct device const *)cl_dev->parent;
  scsidp = (struct scsi_device *)__mptr + 0xfffffffffffffe28UL;
  tmp = dev_get_drvdata((struct device const *)cl_dev);
  sdp = (Sg_device *)tmp;
  }
  if ((unsigned long )sdp == (unsigned long )((Sg_device *)0)) {
    return;
  } else {
  }
  {
  val = atomic_add_return(1, & sdp->detaching);
  }
  if (val > 1) {
    return;
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 3U, 0L);
  }
  if (tmp___0 != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                       "%s\n", "sg_remove_device");
    }
  } else {
  }
  {
  ldv_linux_kernel_locking_rwlock_read_lock();
  __mptr___0 = (struct list_head const *)sdp->sfds.next;
  sfp = (Sg_fd *)__mptr___0;
  }
  goto ldv_38710;
  ldv_38709:
  {
  __wake_up(& sfp->read_wait, 1U, 0, (void *)0);
  kill_fasync(& sfp->async_qp, 29, 131078);
  __mptr___1 = (struct list_head const *)sfp->sfd_siblings.next;
  sfp = (Sg_fd *)__mptr___1;
  }
  ldv_38710: ;
  if ((unsigned long )(& sfp->sfd_siblings) != (unsigned long )(& sdp->sfds)) {
    goto ldv_38709;
  } else {
  }
  {
  __wake_up(& sdp->open_wait, 1U, 0, (void *)0);
  ldv_linux_kernel_locking_rwlock_read_unlock();
  sysfs_remove_link(& scsidp->sdev_gendev.kobj, "generic");
  device_destroy(sg_sysfs_class, sdp->index | 22020096U);
  ldv_cdev_del_115(sdp->cdev);
  sdp->cdev = (struct cdev *)0;
  kref_put(& sdp->d_ref, & sg_device_destroy);
  }
  return;
}
}
static int init_sg(void)
{
  int rc ;
  void *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  if ((unsigned int )scatter_elem_sz <= 4095U) {
    scatter_elem_sz = 4096;
    scatter_elem_sz_prev = scatter_elem_sz;
  } else {
  }
  if (def_reserved_size >= 0) {
    sg_big_buff = def_reserved_size;
  } else {
    def_reserved_size = sg_big_buff;
  }
  {
  rc = ldv_register_chrdev_region_116(22020096U, 32768U, "sg");
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  tmp = ldv_create_class();
  sg_sysfs_class = (struct class *)tmp;
  tmp___1 = IS_ERR((void const *)sg_sysfs_class);
  }
  if ((int )tmp___1) {
    {
    tmp___0 = PTR_ERR((void const *)sg_sysfs_class);
    rc = (int )tmp___0;
    }
    goto err_out;
  } else {
  }
  {
  sg_sysfs_valid = 1;
  rc = ldv_scsi_register_interface_117(& sg_interface);
  }
  if (rc == 0) {
    {
    sg_proc_init();
    }
    return (0);
  } else {
  }
  {
  ldv_class_destroy_118(sg_sysfs_class);
  }
  err_out:
  {
  ldv_unregister_chrdev_region_119(22020096U, 32768U);
  }
  return (rc);
}
}
static void exit_sg(void)
{
  {
  {
  sg_proc_cleanup();
  ldv_class_interface_unregister_120(& sg_interface);
  ldv_class_destroy_121(sg_sysfs_class);
  sg_sysfs_valid = 0;
  ldv_unregister_chrdev_region_122(22020096U, 32768U);
  ldv_idr_destroy_123(& sg_index_idr);
  }
  return;
}
}
static int sg_start_req(Sg_request *srp , unsigned char *cmd )
{
  int res ;
  struct request *rq ;
  Sg_fd *sfp ;
  sg_io_hdr_t *hp ;
  int dxfer_len ;
  int dxfer_dir ;
  unsigned int iov_count ;
  Sg_scatter_hold *req_schp ;
  Sg_scatter_hold *rsv_schp ;
  struct request_queue *q ;
  struct rq_map_data *md ;
  struct rq_map_data map_data ;
  int rw ;
  unsigned char *long_cmdp ;
  long tmp ;
  void *tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int size ;
  struct iovec *iov ;
  struct iov_iter i ;
  void *tmp___5 ;
  long tmp___6 ;
  bool tmp___7 ;
  size_t __min1 ;
  size_t __min2 ;
  size_t tmp___8 ;
  {
  {
  sfp = srp->parentfp;
  hp = & srp->header;
  dxfer_len = (int )hp->dxfer_len;
  dxfer_dir = hp->dxfer_direction;
  iov_count = (unsigned int )hp->iovec_count;
  req_schp = & srp->data;
  rsv_schp = & sfp->reserve;
  q = ((sfp->parentdp)->device)->request_queue;
  rw = hp->dxfer_direction == -2;
  long_cmdp = (unsigned char *)0U;
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 4U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)(sfp->parentdp)->device,
                       (char const *)(& ((sfp->parentdp)->disk)->disk_name), "sg_start_req: dxfer_len=%d\n",
                       dxfer_len);
    }
  } else {
  }
  if ((unsigned int )hp->cmd_len > 16U) {
    {
    tmp___0 = kzalloc((size_t )hp->cmd_len, 208U);
    long_cmdp = (unsigned char *)tmp___0;
    }
    if ((unsigned long )long_cmdp == (unsigned long )((unsigned char *)0U)) {
      return (-12);
    } else {
    }
  } else {
  }
  {
  rq = ldv_blk_get_request_124(q, rw, 208U);
  tmp___2 = IS_ERR((void const *)rq);
  }
  if ((int )tmp___2) {
    {
    kfree((void const *)long_cmdp);
    tmp___1 = PTR_ERR((void const *)rq);
    }
    return ((int )tmp___1);
  } else {
  }
  {
  blk_rq_set_block_pc(rq);
  }
  if ((unsigned int )hp->cmd_len > 16U) {
    rq->cmd = long_cmdp;
  } else {
  }
  {
  memcpy((void *)rq->cmd, (void const *)cmd, (size_t )hp->cmd_len);
  rq->cmd_len = (unsigned short )hp->cmd_len;
  srp->rq = rq;
  rq->end_io_data = (void *)srp;
  rq->sense = (void *)(& srp->sense_b);
  rq->retries = 0;
  }
  if (dxfer_len <= 0 || dxfer_dir == -1) {
    return (0);
  } else {
  }
  if (((sg_allow_dio != 0 && (((int )hp->flags & 1) != 0 && dxfer_dir != -5)) && iov_count == 0U) && (unsigned int )*((unsigned char *)((sfp->parentdp)->device)->host + 856UL) == 0U) {
    {
    tmp___3 = blk_rq_aligned(q, (unsigned long )hp->dxferp, (unsigned int )dxfer_len);
    }
    if (tmp___3 != 0) {
      md = (struct rq_map_data *)0;
    } else {
      md = & map_data;
    }
  } else {
    md = & map_data;
  }
  if ((unsigned long )md != (unsigned long )((struct rq_map_data *)0)) {
    {
    tmp___4 = sg_res_in_use(sfp);
    }
    if (tmp___4 == 0 && (unsigned int )dxfer_len <= rsv_schp->bufflen) {
      {
      sg_link_reserve(sfp, srp, dxfer_len);
      }
    } else {
      {
      res = sg_build_indirect(req_schp, sfp, dxfer_len);
      }
      if (res != 0) {
        return (res);
      } else {
      }
    }
    md->pages = req_schp->pages;
    md->page_order = req_schp->page_order;
    md->nr_entries = (int )req_schp->k_use_sg;
    md->offset = 0UL;
    md->null_mapped = (unsigned long )hp->dxferp == (unsigned long )((void *)0);
    if (dxfer_dir == -4) {
      md->from_user = 1;
    } else {
      md->from_user = 0;
    }
  } else {
  }
  if (iov_count != 0U) {
    {
    size = (int )(iov_count * 16U);
    tmp___5 = memdup_user((void const *)hp->dxferp, (size_t )size);
    iov = (struct iovec *)tmp___5;
    tmp___7 = IS_ERR((void const *)iov);
    }
    if ((int )tmp___7) {
      {
      tmp___6 = PTR_ERR((void const *)iov);
      }
      return ((int )tmp___6);
    } else {
    }
    {
    __min1 = (size_t )hp->dxfer_len;
    tmp___8 = iov_length((struct iovec const *)iov, (unsigned long )iov_count);
    __min2 = tmp___8;
    iov_iter_init(& i, rw, (struct iovec const *)iov, (unsigned long )iov_count,
                  __min1 < __min2 ? __min1 : __min2);
    res = blk_rq_map_user_iov(q, rq, md, (struct iov_iter const *)(& i), 32U);
    kfree((void const *)iov);
    }
  } else {
    {
    res = blk_rq_map_user(q, rq, md, hp->dxferp, (unsigned long )hp->dxfer_len, 32U);
    }
  }
  if (res == 0) {
    srp->bio = rq->bio;
    if ((unsigned long )md == (unsigned long )((struct rq_map_data *)0)) {
      req_schp->dio_in_use = 1;
      hp->info = hp->info | 2U;
    } else {
    }
  } else {
  }
  return (res);
}
}
static int sg_finish_rem_req(Sg_request *srp )
{
  int ret ;
  Sg_fd *sfp ;
  Sg_scatter_hold *req_schp ;
  long tmp ;
  {
  {
  ret = 0;
  sfp = srp->parentfp;
  req_schp = & srp->data;
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 4U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)(sfp->parentdp)->device,
                       (char const *)(& ((sfp->parentdp)->disk)->disk_name), "sg_finish_rem_req: res_used=%d\n",
                       (int )srp->res_used);
    }
  } else {
  }
  if ((unsigned long )srp->bio != (unsigned long )((struct bio *)0)) {
    {
    ret = blk_rq_unmap_user(srp->bio);
    }
  } else {
  }
  if ((unsigned long )srp->rq != (unsigned long )((struct request *)0)) {
    if ((unsigned long )(srp->rq)->cmd != (unsigned long )((unsigned char *)(& (srp->rq)->__cmd))) {
      {
      kfree((void const *)(srp->rq)->cmd);
      }
    } else {
    }
    {
    ldv_blk_put_request_125(srp->rq);
    }
  } else {
  }
  if ((int )((signed char )srp->res_used) != 0) {
    {
    sg_unlink_reserve(sfp, srp);
    }
  } else {
    {
    sg_remove_scat(sfp, req_schp);
    }
  }
  {
  sg_remove_request(sfp, srp);
  }
  return (ret);
}
}
static int sg_build_sgat(Sg_scatter_hold *schp , Sg_fd const *sfp , int tablesize )
{
  int sg_bufflen ;
  gfp_t gfp_flags ;
  void *tmp ;
  {
  {
  sg_bufflen = (int )((unsigned int )tablesize * 8U);
  gfp_flags = 544U;
  tmp = kzalloc((size_t )sg_bufflen, gfp_flags);
  schp->pages = (struct page **)tmp;
  }
  if ((unsigned long )schp->pages == (unsigned long )((struct page **)0)) {
    return (-12);
  } else {
  }
  schp->sglist_len = (unsigned int )sg_bufflen;
  return (tablesize);
}
}
static int sg_build_indirect(Sg_scatter_hold *schp , Sg_fd *sfp , int buff_size )
{
  int ret_sz ;
  int i ;
  int k ;
  int rem_sz ;
  int num ;
  int mx_sc_elems ;
  int sg_tablesize ;
  int blk_size ;
  int order ;
  gfp_t gfp_mask ;
  long tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  int tmp___75 ;
  long tmp___76 ;
  long tmp___77 ;
  long tmp___78 ;
  {
  ret_sz = 0;
  sg_tablesize = (sfp->parentdp)->sg_tablesize;
  blk_size = buff_size;
  gfp_mask = 16928U;
  if (blk_size < 0) {
    return (-14);
  } else {
  }
  if (blk_size == 0) {
    blk_size = blk_size + 1;
  } else {
  }
  {
  blk_size = (blk_size + 511) & -512;
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 4U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)(sfp->parentdp)->device,
                       (char const *)(& ((sfp->parentdp)->disk)->disk_name), "sg_build_indirect: buff_size=%d, blk_size=%d\n",
                       buff_size, blk_size);
    }
  } else {
  }
  {
  mx_sc_elems = sg_build_sgat(schp, (Sg_fd const *)sfp, sg_tablesize);
  }
  if (mx_sc_elems < 0) {
    return (mx_sc_elems);
  } else {
  }
  {
  num = scatter_elem_sz;
  tmp___0 = ldv__builtin_expect(num != scatter_elem_sz_prev, 0L);
  }
  if (tmp___0 != 0L) {
    if ((unsigned int )num <= 4095U) {
      scatter_elem_sz = 4096;
      scatter_elem_sz_prev = 4096;
    } else {
      scatter_elem_sz_prev = num;
    }
  } else {
  }
  if ((int )((signed char )sfp->low_dma) != 0) {
    gfp_mask = gfp_mask | 1U;
  } else {
  }
  {
  tmp___1 = capable(21);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    gfp_mask = gfp_mask | 32768U;
  } else {
    {
    tmp___3 = capable(17);
    }
    if (tmp___3) {
      tmp___4 = 0;
    } else {
      tmp___4 = 1;
    }
    if (tmp___4) {
      gfp_mask = gfp_mask | 32768U;
    } else {
    }
  }
  {
  tmp___75 = __get_order((unsigned long )num);
  order = tmp___75;
  }
  retry:
  ret_sz = 1 << (order + 12);
  k = 0;
  rem_sz = blk_size;
  goto ldv_38831;
  ldv_38830:
  {
  num = scatter_elem_sz_prev < rem_sz ? scatter_elem_sz_prev : rem_sz;
  *(schp->pages + (unsigned long )k) = alloc_pages(gfp_mask, (unsigned int )order);
  }
  if ((unsigned long )*(schp->pages + (unsigned long )k) == (unsigned long )((struct page *)0)) {
    goto out;
  } else {
  }
  if (num == scatter_elem_sz_prev) {
    {
    tmp___76 = ldv__builtin_expect(ret_sz > scatter_elem_sz_prev, 0L);
    }
    if (tmp___76 != 0L) {
      scatter_elem_sz = ret_sz;
      scatter_elem_sz_prev = ret_sz;
    } else {
    }
  } else {
  }
  {
  tmp___77 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 5U, 0L);
  }
  if (tmp___77 != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)(sfp->parentdp)->device,
                       (char const *)(& ((sfp->parentdp)->disk)->disk_name), "sg_build_indirect: k=%d, num=%d, ret_sz=%d\n",
                       k, num, ret_sz);
    }
  } else {
  }
  k = k + 1;
  rem_sz = rem_sz - ret_sz;
  ldv_38831: ;
  if (rem_sz > 0 && k < mx_sc_elems) {
    goto ldv_38830;
  } else {
  }
  {
  schp->page_order = order;
  schp->k_use_sg = (unsigned short )k;
  tmp___78 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 5U, 0L);
  }
  if (tmp___78 != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)(sfp->parentdp)->device,
                       (char const *)(& ((sfp->parentdp)->disk)->disk_name), "sg_build_indirect: k_use_sg=%d, rem_sz=%d\n",
                       k, rem_sz);
    }
  } else {
  }
  schp->bufflen = (unsigned int )blk_size;
  if (rem_sz > 0) {
    return (-12);
  } else {
  }
  return (0);
  out:
  i = 0;
  goto ldv_38834;
  ldv_38833:
  {
  __free_pages(*(schp->pages + (unsigned long )i), (unsigned int )order);
  i = i + 1;
  }
  ldv_38834: ;
  if (i < k) {
    goto ldv_38833;
  } else {
  }
  order = order - 1;
  if (order >= 0) {
    goto retry;
  } else {
  }
  return (-12);
}
}
static void sg_remove_scat(Sg_fd *sfp , Sg_scatter_hold *schp )
{
  long tmp ;
  int k ;
  long tmp___0 ;
  {
  {
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 4U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)(sfp->parentdp)->device,
                       (char const *)(& ((sfp->parentdp)->disk)->disk_name), "sg_remove_scat: k_use_sg=%d\n",
                       (int )schp->k_use_sg);
    }
  } else {
  }
  if ((unsigned long )schp->pages != (unsigned long )((struct page **)0) && schp->sglist_len != 0U) {
    if ((int )((signed char )schp->dio_in_use) == 0) {
      k = 0;
      goto ldv_38842;
      ldv_38841:
      {
      tmp___0 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 5U, 0L);
      }
      if (tmp___0 != 0L) {
        {
        sdev_prefix_printk("\016", (struct scsi_device const *)(sfp->parentdp)->device,
                           (char const *)(& ((sfp->parentdp)->disk)->disk_name),
                           "sg_remove_scat: k=%d, pg=0x%p\n", k, *(schp->pages + (unsigned long )k));
        }
      } else {
      }
      {
      __free_pages(*(schp->pages + (unsigned long )k), (unsigned int )schp->page_order);
      k = k + 1;
      }
      ldv_38842: ;
      if (k < (int )schp->k_use_sg && (unsigned long )*(schp->pages + (unsigned long )k) != (unsigned long )((struct page *)0)) {
        goto ldv_38841;
      } else {
      }
      {
      kfree((void const *)schp->pages);
      }
    } else {
    }
  } else {
  }
  {
  memset((void *)schp, 0, 32UL);
  }
  return;
}
}
static int sg_read_oxfer(Sg_request *srp , char *outp , int num_read_xfer )
{
  Sg_scatter_hold *schp ;
  int k ;
  int num ;
  long tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  {
  {
  schp = & srp->data;
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 4U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)((srp->parentfp)->parentdp)->device,
                       (char const *)(& (((srp->parentfp)->parentdp)->disk)->disk_name),
                       "sg_read_oxfer: num_read_xfer=%d\n", num_read_xfer);
    }
  } else {
  }
  if ((unsigned long )outp == (unsigned long )((char *)0) || num_read_xfer <= 0) {
    return (0);
  } else {
  }
  num = 1 << (schp->page_order + 12);
  k = 0;
  goto ldv_38854;
  ldv_38853: ;
  if (num > num_read_xfer) {
    {
    tmp___0 = lowmem_page_address((struct page const *)*(schp->pages + (unsigned long )k));
    tmp___1 = __copy_to_user((void *)outp, (void const *)tmp___0, (unsigned int )num_read_xfer);
    }
    if (tmp___1 != 0) {
      return (-14);
    } else {
    }
    goto ldv_38852;
  } else {
    {
    tmp___2 = lowmem_page_address((struct page const *)*(schp->pages + (unsigned long )k));
    tmp___3 = __copy_to_user((void *)outp, (void const *)tmp___2, (unsigned int )num);
    }
    if (tmp___3 != 0) {
      return (-14);
    } else {
    }
    num_read_xfer = num_read_xfer - num;
    if (num_read_xfer <= 0) {
      goto ldv_38852;
    } else {
    }
    outp = outp + (unsigned long )num;
  }
  k = k + 1;
  ldv_38854: ;
  if (k < (int )schp->k_use_sg && (unsigned long )*(schp->pages + (unsigned long )k) != (unsigned long )((struct page *)0)) {
    goto ldv_38853;
  } else {
  }
  ldv_38852: ;
  return (0);
}
}
static void sg_build_reserve(Sg_fd *sfp , int req_size )
{
  Sg_scatter_hold *schp ;
  long tmp ;
  int tmp___0 ;
  {
  {
  schp = & sfp->reserve;
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 4U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)(sfp->parentdp)->device,
                       (char const *)(& ((sfp->parentdp)->disk)->disk_name), "sg_build_reserve: req_size=%d\n",
                       req_size);
    }
  } else {
  }
  ldv_38860: ;
  if ((unsigned int )req_size <= 4095U) {
    req_size = 4096;
  } else {
  }
  {
  tmp___0 = sg_build_indirect(schp, sfp, req_size);
  }
  if (tmp___0 == 0) {
    return;
  } else {
    {
    sg_remove_scat(sfp, schp);
    }
  }
  req_size = req_size >> 1;
  if ((unsigned int )req_size > 2048U) {
    goto ldv_38860;
  } else {
  }
  return;
}
}
static void sg_link_reserve(Sg_fd *sfp , Sg_request *srp , int size )
{
  Sg_scatter_hold *req_schp ;
  Sg_scatter_hold *rsv_schp ;
  int k ;
  int num ;
  int rem ;
  long tmp ;
  long tmp___0 ;
  {
  {
  req_schp = & srp->data;
  rsv_schp = & sfp->reserve;
  srp->res_used = 1;
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 4U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)(sfp->parentdp)->device,
                       (char const *)(& ((sfp->parentdp)->disk)->disk_name), "sg_link_reserve: size=%d\n",
                       size);
    }
  } else {
  }
  rem = size;
  num = 1 << (rsv_schp->page_order + 12);
  k = 0;
  goto ldv_38874;
  ldv_38873: ;
  if (rem <= num) {
    req_schp->k_use_sg = (unsigned int )((unsigned short )k) + 1U;
    req_schp->sglist_len = rsv_schp->sglist_len;
    req_schp->pages = rsv_schp->pages;
    req_schp->bufflen = (unsigned int )size;
    req_schp->page_order = rsv_schp->page_order;
    goto ldv_38872;
  } else {
    rem = rem - num;
  }
  k = k + 1;
  ldv_38874: ;
  if (k < (int )rsv_schp->k_use_sg) {
    goto ldv_38873;
  } else {
  }
  ldv_38872: ;
  if (k >= (int )rsv_schp->k_use_sg) {
    {
    tmp___0 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 1U, 0L);
    }
    if (tmp___0 != 0L) {
      {
      sdev_prefix_printk("\016", (struct scsi_device const *)(sfp->parentdp)->device,
                         (char const *)(& ((sfp->parentdp)->disk)->disk_name), "sg_link_reserve: BAD size\n");
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void sg_unlink_reserve(Sg_fd *sfp , Sg_request *srp )
{
  Sg_scatter_hold *req_schp ;
  long tmp ;
  {
  {
  req_schp = & srp->data;
  tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 4U, 0L);
  }
  if (tmp != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)((srp->parentfp)->parentdp)->device,
                       (char const *)(& (((srp->parentfp)->parentdp)->disk)->disk_name),
                       "sg_unlink_reserve: req->k_use_sg=%d\n", (int )req_schp->k_use_sg);
    }
  } else {
  }
  req_schp->k_use_sg = 0U;
  req_schp->bufflen = 0U;
  req_schp->pages = (struct page **)0;
  req_schp->page_order = 0;
  req_schp->sglist_len = 0U;
  sfp->save_scat_len = 0U;
  srp->res_used = 0;
  return;
}
}
static Sg_request *sg_get_rq_mark(Sg_fd *sfp , int pack_id )
{
  Sg_request *resp ;
  {
  {
  ldv_linux_kernel_locking_rwlock_write_lock();
  resp = sfp->headrp;
  }
  goto ldv_38888;
  ldv_38887: ;
  if (((unsigned int )((unsigned short )*((short *)resp + 117UL)) & 65535U) == 256U && (pack_id == -1 || resp->header.pack_id == pack_id)) {
    resp->done = 2;
    goto ldv_38886;
  } else {
  }
  resp = resp->nextrp;
  ldv_38888: ;
  if ((unsigned long )resp != (unsigned long )((Sg_request *)0)) {
    goto ldv_38887;
  } else {
  }
  ldv_38886:
  {
  ldv_linux_kernel_locking_rwlock_write_unlock();
  }
  return (resp);
}
}
static Sg_request *sg_add_request(Sg_fd *sfp )
{
  int k ;
  Sg_request *resp ;
  Sg_request *rp ;
  {
  {
  rp = (Sg_request *)(& sfp->req_arr);
  ldv_linux_kernel_locking_rwlock_write_lock();
  resp = sfp->headrp;
  }
  if ((unsigned long )resp == (unsigned long )((Sg_request *)0)) {
    {
    memset((void *)rp, 0, 336UL);
    rp->parentfp = sfp;
    resp = rp;
    sfp->headrp = resp;
    }
  } else
  if ((int )((signed char )sfp->cmd_q) == 0) {
    resp = (Sg_request *)0;
  } else {
    k = 0;
    goto ldv_38898;
    ldv_38897: ;
    if ((unsigned long )rp->parentfp == (unsigned long )((struct sg_fd *)0)) {
      goto ldv_38896;
    } else {
    }
    k = k + 1;
    rp = rp + 1;
    ldv_38898: ;
    if (k <= 15) {
      goto ldv_38897;
    } else {
    }
    ldv_38896: ;
    if (k <= 15) {
      {
      memset((void *)rp, 0, 336UL);
      rp->parentfp = sfp;
      }
      goto ldv_38900;
      ldv_38899:
      resp = resp->nextrp;
      ldv_38900: ;
      if ((unsigned long )resp->nextrp != (unsigned long )((struct sg_request *)0)) {
        goto ldv_38899;
      } else {
      }
      resp->nextrp = rp;
      resp = rp;
    } else {
      resp = (Sg_request *)0;
    }
  }
  if ((unsigned long )resp != (unsigned long )((Sg_request *)0)) {
    {
    resp->nextrp = (struct sg_request *)0;
    resp->header.duration = jiffies_to_msecs(jiffies);
    }
  } else {
  }
  {
  ldv_linux_kernel_locking_rwlock_write_unlock();
  }
  return (resp);
}
}
static int sg_remove_request(Sg_fd *sfp , Sg_request *srp )
{
  Sg_request *prev_rp ;
  Sg_request *rp ;
  int res ;
  {
  res = 0;
  if (((unsigned long )sfp == (unsigned long )((Sg_fd *)0) || (unsigned long )srp == (unsigned long )((Sg_request *)0)) || (unsigned long )sfp->headrp == (unsigned long )((Sg_request *)0)) {
    return (res);
  } else {
  }
  {
  ldv_linux_kernel_locking_rwlock_write_lock();
  prev_rp = sfp->headrp;
  }
  if ((unsigned long )srp == (unsigned long )prev_rp) {
    sfp->headrp = prev_rp->nextrp;
    prev_rp->parentfp = (struct sg_fd *)0;
    res = 1;
  } else {
    goto ldv_38912;
    ldv_38911: ;
    if ((unsigned long )srp == (unsigned long )rp) {
      prev_rp->nextrp = rp->nextrp;
      rp->parentfp = (struct sg_fd *)0;
      res = 1;
      goto ldv_38910;
    } else {
    }
    prev_rp = rp;
    ldv_38912:
    rp = prev_rp->nextrp;
    if ((unsigned long )rp != (unsigned long )((Sg_request *)0)) {
      goto ldv_38911;
    } else {
    }
    ldv_38910: ;
  }
  {
  ldv_linux_kernel_locking_rwlock_write_unlock();
  }
  return (res);
}
}
static Sg_fd *sg_add_sfp(Sg_device *sdp )
{
  Sg_fd *sfp ;
  int bufflen ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  int __min1 ;
  int __min2 ;
  int tmp___5 ;
  long tmp___6 ;
  {
  {
  tmp = kzalloc(5720UL, 544U);
  sfp = (Sg_fd *)tmp;
  }
  if ((unsigned long )sfp == (unsigned long )((Sg_fd *)0)) {
    {
    tmp___0 = ERR_PTR(-12L);
    }
    return ((Sg_fd *)tmp___0);
  } else {
  }
  {
  __init_waitqueue_head(& sfp->read_wait, "&sfp->read_wait", & __key);
  __rwlock_init(& sfp->rq_list_lock, "&sfp->rq_list_lock", & __key___0);
  kref_init(& sfp->f_ref);
  sfp->timeout = 15000;
  sfp->timeout_user = 6000;
  sfp->force_packid = 0;
  sfp->low_dma = (char )((sdp->device)->host)->unchecked_isa_dma;
  sfp->cmd_q = 0;
  sfp->keep_orphan = 0;
  sfp->parentdp = sdp;
  ldv_linux_kernel_locking_rwlock_write_lock();
  tmp___2 = atomic_read((atomic_t const *)(& sdp->detaching));
  }
  if (tmp___2 != 0) {
    {
    ldv_linux_kernel_locking_rwlock_write_unlock();
    tmp___1 = ERR_PTR(-19L);
    }
    return ((Sg_fd *)tmp___1);
  } else {
  }
  {
  list_add_tail(& sfp->sfd_siblings, & sdp->sfds);
  ldv_linux_kernel_locking_rwlock_write_unlock();
  tmp___3 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 3U, 0L);
  }
  if (tmp___3 != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                       "sg_add_sfp: sfp=0x%p\n", sfp);
    }
  } else {
  }
  {
  tmp___4 = ldv__builtin_expect(sg_big_buff != def_reserved_size, 0L);
  }
  if (tmp___4 != 0L) {
    sg_big_buff = def_reserved_size;
  } else {
  }
  {
  __min1 = sg_big_buff;
  tmp___5 = max_sectors_bytes((sdp->device)->request_queue);
  __min2 = tmp___5;
  bufflen = __min1 < __min2 ? __min1 : __min2;
  sg_build_reserve(sfp, bufflen);
  tmp___6 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 3U, 0L);
  }
  if (tmp___6 != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                       "sg_add_sfp: bufflen=%d, k_use_sg=%d\n", sfp->reserve.bufflen,
                       (int )sfp->reserve.k_use_sg);
    }
  } else {
  }
  {
  kref_get(& sdp->d_ref);
  ldv___module_get_126(& __this_module);
  }
  return (sfp);
}
}
static void sg_remove_sfp_usercontext(struct work_struct *work )
{
  struct sg_fd *sfp ;
  struct work_struct const *__mptr ;
  struct sg_device *sdp ;
  long tmp ;
  long tmp___0 ;
  {
  __mptr = (struct work_struct const *)work;
  sfp = (struct sg_fd *)__mptr + 0xffffffffffffe9f8UL;
  sdp = sfp->parentdp;
  goto ldv_38932;
  ldv_38931:
  {
  sg_finish_rem_req(sfp->headrp);
  }
  ldv_38932: ;
  if ((unsigned long )sfp->headrp != (unsigned long )((Sg_request *)0)) {
    goto ldv_38931;
  } else {
  }
  if (sfp->reserve.bufflen != 0U) {
    {
    tmp = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 6U, 0L);
    }
    if (tmp != 0L) {
      {
      sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                         "sg_remove_sfp:    bufflen=%d, k_use_sg=%d\n", (int )sfp->reserve.bufflen,
                         (int )sfp->reserve.k_use_sg);
      }
    } else {
    }
    {
    sg_remove_scat(sfp, & sfp->reserve);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(((scsi_logging_level >> 3) & 7U) > 6U, 0L);
  }
  if (tmp___0 != 0L) {
    {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp->device, (char const *)(& (sdp->disk)->disk_name),
                       "sg_remove_sfp: sfp=0x%p\n", sfp);
    }
  } else {
  }
  {
  kfree((void const *)sfp);
  scsi_device_put(sdp->device);
  kref_put(& sdp->d_ref, & sg_device_destroy);
  ldv_module_put_127(& __this_module);
  }
  return;
}
}
static void sg_remove_sfp(struct kref *kref )
{
  struct sg_fd *sfp ;
  struct kref const *__mptr ;
  struct sg_device *sdp ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  {
  __mptr = (struct kref const *)kref;
  sfp = (struct sg_fd *)__mptr + 0xffffffffffffea00UL;
  sdp = sfp->parentdp;
  ldv_linux_kernel_locking_rwlock_write_lock();
  list_del(& sfp->sfd_siblings);
  ldv_linux_kernel_locking_rwlock_write_unlock();
  __init_work(& sfp->ew.work, 0);
  __constr_expr_0.counter = 137438953408L;
  sfp->ew.work.data = __constr_expr_0;
  lockdep_init_map(& sfp->ew.work.lockdep_map, "(&sfp->ew.work)", & __key, 0);
  INIT_LIST_HEAD(& sfp->ew.work.entry);
  sfp->ew.work.func = & sg_remove_sfp_usercontext;
  schedule_work(& sfp->ew.work);
  }
  return;
}
}
static int sg_res_in_use(Sg_fd *sfp )
{
  Sg_request const *srp ;
  {
  {
  ldv_linux_kernel_locking_rwlock_read_lock();
  srp = (Sg_request const *)sfp->headrp;
  }
  goto ldv_38951;
  ldv_38950: ;
  if ((int )((signed char )srp->res_used) != 0) {
    goto ldv_38949;
  } else {
  }
  srp = (Sg_request const *)srp->nextrp;
  ldv_38951: ;
  if ((unsigned long )srp != (unsigned long )((Sg_request const *)0)) {
    goto ldv_38950;
  } else {
  }
  ldv_38949:
  {
  ldv_linux_kernel_locking_rwlock_read_unlock();
  }
  return ((unsigned long )srp != (unsigned long )((Sg_request const *)0));
}
}
static int sg_idr_max_id(int id , void *p , void *data )
{
  int *k ;
  {
  k = (int *)data;
  if (*k < id) {
    *k = id;
  } else {
  }
  return (0);
}
}
static int sg_last_dev(void)
{
  int k ;
  {
  {
  k = -1;
  ldv_linux_kernel_locking_rwlock_read_lock();
  idr_for_each(& sg_index_idr, & sg_idr_max_id, (void *)(& k));
  ldv_linux_kernel_locking_rwlock_read_unlock();
  }
  return (k + 1);
}
}
static Sg_device *sg_lookup_dev(int dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_idr_find_128(& sg_index_idr, dev);
  }
  return ((Sg_device *)tmp);
}
}
static Sg_device *sg_get_dev(int dev )
{
  struct sg_device *sdp ;
  Sg_device *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  {
  ldv_linux_kernel_locking_rwlock_read_lock();
  tmp = sg_lookup_dev(dev);
  sdp = tmp;
  }
  if ((unsigned long )sdp == (unsigned long )((struct sg_device *)0)) {
    {
    tmp___0 = ERR_PTR(-6L);
    sdp = (struct sg_device *)tmp___0;
    }
  } else {
    {
    tmp___2 = atomic_read((atomic_t const *)(& sdp->detaching));
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ERR_PTR(-19L);
      sdp = (struct sg_device *)tmp___1;
      }
    } else {
      {
      kref_get(& sdp->d_ref);
      }
    }
  }
  {
  ldv_linux_kernel_locking_rwlock_read_unlock();
  }
  return (sdp);
}
}
static struct proc_dir_entry *sg_proc_sgp = (struct proc_dir_entry *)0;
static char sg_proc_sg_dirname[8U] =
  { 's', 'c', 's', 'i',
        '/', 's', 'g', '\000'};
static int sg_proc_seq_show_int(struct seq_file *s , void *v ) ;
static int sg_proc_single_open_adio(struct inode *inode , struct file *file ) ;
static ssize_t sg_proc_write_adio(struct file *filp , char const *buffer , size_t count ,
                                  loff_t *off ) ;
static struct file_operations const adio_fops =
     {& __this_module, & seq_lseek, & seq_read, & sg_proc_write_adio, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, & sg_proc_single_open_adio, 0, & single_release, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0};
static int sg_proc_single_open_dressz(struct inode *inode , struct file *file ) ;
static ssize_t sg_proc_write_dressz(struct file *filp , char const *buffer , size_t count ,
                                    loff_t *off ) ;
static struct file_operations const dressz_fops =
     {& __this_module, & seq_lseek, & seq_read, & sg_proc_write_dressz, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, & sg_proc_single_open_dressz, 0, & single_release, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int sg_proc_seq_show_version(struct seq_file *s , void *v ) ;
static int sg_proc_single_open_version(struct inode *inode , struct file *file ) ;
static struct file_operations const version_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & sg_proc_single_open_version,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int sg_proc_seq_show_devhdr(struct seq_file *s , void *v ) ;
static int sg_proc_single_open_devhdr(struct inode *inode , struct file *file ) ;
static struct file_operations const devhdr_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & sg_proc_single_open_devhdr,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int sg_proc_seq_show_dev(struct seq_file *s , void *v ) ;
static int sg_proc_open_dev(struct inode *inode , struct file *file ) ;
static void *dev_seq_start(struct seq_file *s , loff_t *pos ) ;
static void *dev_seq_next(struct seq_file *s , void *v , loff_t *pos ) ;
static void dev_seq_stop(struct seq_file *s , void *v ) ;
static struct file_operations const dev_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & sg_proc_open_dev,
    0, & seq_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct seq_operations const dev_seq_ops = {& dev_seq_start, & dev_seq_stop, & dev_seq_next, & sg_proc_seq_show_dev};
static int sg_proc_seq_show_devstrs(struct seq_file *s , void *v ) ;
static int sg_proc_open_devstrs(struct inode *inode , struct file *file ) ;
static struct file_operations const devstrs_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & sg_proc_open_devstrs,
    0, & seq_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct seq_operations const devstrs_seq_ops = {& dev_seq_start, & dev_seq_stop, & dev_seq_next, & sg_proc_seq_show_devstrs};
static int sg_proc_seq_show_debug(struct seq_file *s , void *v ) ;
static int sg_proc_open_debug(struct inode *inode , struct file *file ) ;
static struct file_operations const debug_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & sg_proc_open_debug,
    0, & seq_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct seq_operations const debug_seq_ops = {& dev_seq_start, & dev_seq_stop, & dev_seq_next, & sg_proc_seq_show_debug};
static struct sg_proc_leaf const sg_proc_leaf_arr[7U] = { {"allow_dio", & adio_fops},
        {"debug", & debug_fops},
        {"def_reserved_size", & dressz_fops},
        {"device_hdr", & devhdr_fops},
        {"devices", & dev_fops},
        {"device_strs", & devstrs_fops},
        {"version", & version_fops}};
static int sg_proc_init(void)
{
  int num_leaves ;
  int k ;
  struct sg_proc_leaf const *leaf ;
  umode_t mask ;
  {
  {
  num_leaves = 7;
  sg_proc_sgp = proc_mkdir((char const *)(& sg_proc_sg_dirname), (struct proc_dir_entry *)0);
  }
  if ((unsigned long )sg_proc_sgp == (unsigned long )((struct proc_dir_entry *)0)) {
    return (1);
  } else {
  }
  k = 0;
  goto ldv_39056;
  ldv_39055:
  {
  leaf = (struct sg_proc_leaf const *)(& sg_proc_leaf_arr) + (unsigned long )k;
  mask = (unsigned long )(leaf->fops)->write != (unsigned long )((ssize_t (* )(struct file * ,
                                                                                          char const * ,
                                                                                          size_t ,
                                                                                          loff_t * ))0) ? 420U : 292U;
  proc_create(leaf->name, (int )mask, sg_proc_sgp, leaf->fops);
  k = k + 1;
  }
  ldv_39056: ;
  if (k < num_leaves) {
    goto ldv_39055;
  } else {
  }
  return (0);
}
}
static void sg_proc_cleanup(void)
{
  int k ;
  int num_leaves ;
  {
  num_leaves = 7;
  if ((unsigned long )sg_proc_sgp == (unsigned long )((struct proc_dir_entry *)0)) {
    return;
  } else {
  }
  k = 0;
  goto ldv_39066;
  ldv_39065:
  {
  remove_proc_entry(sg_proc_leaf_arr[k].name, sg_proc_sgp);
  k = k + 1;
  }
  ldv_39066: ;
  if (k < num_leaves) {
    goto ldv_39065;
  } else {
  }
  {
  remove_proc_entry((char const *)(& sg_proc_sg_dirname), (struct proc_dir_entry *)0);
  }
  return;
}
}
static int sg_proc_seq_show_int(struct seq_file *s , void *v )
{
  {
  {
  seq_printf(s, "%d\n", *((int *)s->private));
  }
  return (0);
}
}
static int sg_proc_single_open_adio(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & sg_proc_seq_show_int, (void *)(& sg_allow_dio));
  }
  return (tmp);
}
}
static ssize_t sg_proc_write_adio(struct file *filp , char const *buffer , size_t count ,
                                  loff_t *off )
{
  int err ;
  unsigned long num ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = capable(21);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13L);
  } else {
    {
    tmp___1 = capable(17);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      return (-13L);
    } else {
    }
  }
  {
  err = kstrtoul_from_user(buffer, count, 0U, & num);
  }
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  sg_allow_dio = num != 0UL;
  return ((ssize_t )count);
}
}
static int sg_proc_single_open_dressz(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & sg_proc_seq_show_int, (void *)(& sg_big_buff));
  }
  return (tmp);
}
}
static ssize_t sg_proc_write_dressz(struct file *filp , char const *buffer , size_t count ,
                                    loff_t *off )
{
  int err ;
  unsigned long k ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  {
  k = 0xffffffffffffffffUL;
  tmp = capable(21);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13L);
  } else {
    {
    tmp___1 = capable(17);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      return (-13L);
    } else {
    }
  }
  {
  err = kstrtoul_from_user(buffer, count, 0U, & k);
  }
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  if (k <= 1048576UL) {
    sg_big_buff = (int )k;
    return ((ssize_t )count);
  } else {
  }
  return (-34L);
}
}
static int sg_proc_seq_show_version(struct seq_file *s , void *v )
{
  {
  {
  seq_printf(s, "%d\t%s [%s]\n", sg_version_num, (char *)"3.5.36", sg_version_date);
  }
  return (0);
}
}
static int sg_proc_single_open_version(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & sg_proc_seq_show_version, (void *)0);
  }
  return (tmp);
}
}
static int sg_proc_seq_show_devhdr(struct seq_file *s , void *v )
{
  {
  {
  seq_puts(s, "host\tchan\tid\tlun\ttype\topens\tqdepth\tbusy\tonline\n");
  }
  return (0);
}
}
static int sg_proc_single_open_devhdr(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & sg_proc_seq_show_devhdr, (void *)0);
  }
  return (tmp);
}
}
static void *dev_seq_start(struct seq_file *s , loff_t *pos )
{
  struct sg_proc_deviter *it ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = kmalloc(16UL, 208U);
  it = (struct sg_proc_deviter *)tmp;
  s->private = (void *)it;
  }
  if ((unsigned long )it == (unsigned long )((struct sg_proc_deviter *)0)) {
    return ((void *)0);
  } else {
  }
  {
  it->index = *pos;
  tmp___0 = sg_last_dev();
  it->max = (size_t )tmp___0;
  }
  if ((unsigned long long )it->index >= (unsigned long long )it->max) {
    return ((void *)0);
  } else {
  }
  return ((void *)it);
}
}
static void *dev_seq_next(struct seq_file *s , void *v , loff_t *pos )
{
  struct sg_proc_deviter *it ;
  {
  it = (struct sg_proc_deviter *)s->private;
  it->index = it->index + 1LL;
  *pos = it->index;
  return ((unsigned long long )it->index < (unsigned long long )it->max ? (void *)it : (void *)0);
}
}
static void dev_seq_stop(struct seq_file *s , void *v )
{
  {
  {
  kfree((void const *)s->private);
  }
  return;
}
}
static int sg_proc_open_dev(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = ldv_seq_open_129(file, & dev_seq_ops);
  }
  return (tmp);
}
}
static int sg_proc_seq_show_dev(struct seq_file *s , void *v )
{
  struct sg_proc_deviter *it ;
  Sg_device *sdp ;
  struct scsi_device *scsidp ;
  Sg_device *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  it = (struct sg_proc_deviter *)v;
  ldv_linux_kernel_locking_rwlock_read_lock();
  }
  if ((unsigned long )it != (unsigned long )((struct sg_proc_deviter *)0)) {
    {
    tmp = sg_lookup_dev((int )it->index);
    sdp = tmp;
    }
  } else {
    sdp = (Sg_device *)0;
  }
  if ((unsigned long )sdp == (unsigned long )((Sg_device *)0) || (unsigned long )sdp->device == (unsigned long )((struct scsi_device *)0)) {
    {
    seq_puts(s, "-1\t-1\t-1\t-1\t-1\t-1\t-1\t-1\t-1\n");
    }
  } else {
    {
    tmp___2 = atomic_read((atomic_t const *)(& sdp->detaching));
    }
    if (tmp___2 != 0) {
      {
      seq_puts(s, "-1\t-1\t-1\t-1\t-1\t-1\t-1\t-1\t-1\n");
      }
    } else {
      {
      scsidp = sdp->device;
      tmp___0 = scsi_device_online(scsidp);
      tmp___1 = atomic_read((atomic_t const *)(& scsidp->device_busy));
      seq_printf(s, "%d\t%d\t%d\t%llu\t%d\t%d\t%d\t%d\t%d\n", (scsidp->host)->host_no,
                 scsidp->channel, scsidp->id, scsidp->lun, (int )scsidp->type, 1,
                 (int )scsidp->queue_depth, tmp___1, tmp___0);
      }
    }
  }
  {
  ldv_linux_kernel_locking_rwlock_read_unlock();
  }
  return (0);
}
}
static int sg_proc_open_devstrs(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = ldv_seq_open_130(file, & devstrs_seq_ops);
  }
  return (tmp);
}
}
static int sg_proc_seq_show_devstrs(struct seq_file *s , void *v )
{
  struct sg_proc_deviter *it ;
  Sg_device *sdp ;
  struct scsi_device *scsidp ;
  Sg_device *tmp ;
  int tmp___0 ;
  {
  {
  it = (struct sg_proc_deviter *)v;
  ldv_linux_kernel_locking_rwlock_read_lock();
  }
  if ((unsigned long )it != (unsigned long )((struct sg_proc_deviter *)0)) {
    {
    tmp = sg_lookup_dev((int )it->index);
    sdp = tmp;
    }
  } else {
    sdp = (Sg_device *)0;
  }
  scsidp = (unsigned long )sdp != (unsigned long )((Sg_device *)0) ? sdp->device : (struct scsi_device *)0;
  if ((unsigned long )sdp != (unsigned long )((Sg_device *)0) && (unsigned long )scsidp != (unsigned long )((struct scsi_device *)0)) {
    {
    tmp___0 = atomic_read((atomic_t const *)(& sdp->detaching));
    }
    if (tmp___0 == 0) {
      {
      seq_printf(s, "%8.8s\t%16.16s\t%4.4s\n", scsidp->vendor, scsidp->model, scsidp->rev);
      }
    } else {
      {
      seq_puts(s, "<no active device>\n");
      }
    }
  } else {
    {
    seq_puts(s, "<no active device>\n");
    }
  }
  {
  ldv_linux_kernel_locking_rwlock_read_unlock();
  }
  return (0);
}
}
static void sg_proc_debug_helper(struct seq_file *s , Sg_device *sdp )
{
  int k ;
  int m ;
  int new_interface ;
  int blen ;
  int usg ;
  Sg_request *srp ;
  Sg_fd *fp ;
  sg_io_hdr_t const *hp ;
  char const *cp ;
  unsigned int ms ;
  struct list_head const *__mptr ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  struct list_head const *__mptr___0 ;
  {
  k = 0;
  __mptr = (struct list_head const *)sdp->sfds.next;
  fp = (Sg_fd *)__mptr;
  goto ldv_39176;
  ldv_39175:
  {
  k = k + 1;
  ldv_linux_kernel_locking_rwlock_read_lock();
  tmp = jiffies_to_msecs((unsigned long const )fp->timeout);
  seq_printf(s, "   FD(%d): timeout=%dms bufflen=%d (res)sgat=%d low_dma=%d\n", k,
             tmp, fp->reserve.bufflen, (int )fp->reserve.k_use_sg, (int )fp->low_dma);
  seq_printf(s, "   cmd_q=%d f_packid=%d k_orphan=%d closed=0\n", (int )fp->cmd_q,
             (int )fp->force_packid, (int )fp->keep_orphan);
  m = 0;
  srp = fp->headrp;
  }
  goto ldv_39173;
  ldv_39172:
  hp = (sg_io_hdr_t const *)(& srp->header);
  new_interface = (int )hp->interface_id != 0;
  if ((int )((signed char )srp->res_used) != 0) {
    if (new_interface != 0 && ((unsigned int )hp->flags & 4U) != 0U) {
      cp = "     mmap>> ";
    } else {
      cp = "     rb>> ";
    }
  } else
  if (((unsigned int )hp->info & 6U) != 0U) {
    cp = "     dio>> ";
  } else {
    cp = "     ";
  }
  {
  seq_puts(s, cp);
  blen = (int )srp->data.bufflen;
  usg = (int )srp->data.k_use_sg;
  seq_puts(s, (int )((signed char )srp->done) != 0 ? ((int )((signed char )srp->done) == 1 ? "rcv:" : "fin:") : "act:");
  seq_printf(s, " id=%d blen=%d", srp->header.pack_id, blen);
  }
  if ((int )((signed char )srp->done) != 0) {
    {
    seq_printf(s, " dur=%d", hp->duration);
    }
  } else {
    {
    ms = jiffies_to_msecs(jiffies);
    }
    if (new_interface != 0) {
      tmp___1 = hp->timeout;
    } else {
      {
      tmp___0 = jiffies_to_msecs((unsigned long const )fp->timeout);
      tmp___1 = (unsigned int const )tmp___0;
      }
    }
    {
    seq_printf(s, " t_o/elap=%d/%d", tmp___1, ms > (unsigned int )hp->duration ? ms - (unsigned int )hp->duration : 0U);
    }
  }
  {
  seq_printf(s, "ms sgat=%d op=0x%02x\n", usg, (int )srp->data.cmd_opcode);
  m = m + 1;
  srp = srp->nextrp;
  }
  ldv_39173: ;
  if ((unsigned long )srp != (unsigned long )((Sg_request *)0)) {
    goto ldv_39172;
  } else {
  }
  if (m == 0) {
    {
    seq_puts(s, "     No requests active\n");
    }
  } else {
  }
  {
  ldv_linux_kernel_locking_rwlock_read_unlock();
  __mptr___0 = (struct list_head const *)fp->sfd_siblings.next;
  fp = (Sg_fd *)__mptr___0;
  }
  ldv_39176: ;
  if ((unsigned long )(& fp->sfd_siblings) != (unsigned long )(& sdp->sfds)) {
    goto ldv_39175;
  } else {
  }
  return;
}
}
static int sg_proc_open_debug(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = ldv_seq_open_131(file, & debug_seq_ops);
  }
  return (tmp);
}
}
static int sg_proc_seq_show_debug(struct seq_file *s , void *v )
{
  struct sg_proc_deviter *it ;
  Sg_device *sdp ;
  Sg_device *tmp ;
  struct scsi_device *scsidp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  it = (struct sg_proc_deviter *)v;
  if ((unsigned long )it != (unsigned long )((struct sg_proc_deviter *)0) && it->index == 0LL) {
    {
    seq_printf(s, "max_active_device=%d  def_reserved_size=%d\n", (int )it->max, sg_big_buff);
    }
  } else {
  }
  {
  ldv_linux_kernel_locking_rwlock_read_lock();
  }
  if ((unsigned long )it != (unsigned long )((struct sg_proc_deviter *)0)) {
    {
    tmp = sg_lookup_dev((int )it->index);
    sdp = tmp;
    }
  } else {
    sdp = (Sg_device *)0;
  }
  if ((unsigned long )sdp == (unsigned long )((Sg_device *)0)) {
    goto skip;
  } else {
  }
  {
  ldv_linux_kernel_locking_rwlock_read_lock();
  tmp___1 = list_empty((struct list_head const *)(& sdp->sfds));
  }
  if (tmp___1 == 0) {
    {
    seq_printf(s, " >>> device=%s ", (char *)(& (sdp->disk)->disk_name));
    tmp___0 = atomic_read((atomic_t const *)(& sdp->detaching));
    }
    if (tmp___0 != 0) {
      {
      seq_puts(s, "detaching pending close ");
      }
    } else
    if ((unsigned long )sdp->device != (unsigned long )((struct scsi_device *)0)) {
      {
      scsidp = sdp->device;
      seq_printf(s, "%d:%d:%d:%llu   em=%d", (scsidp->host)->host_no, scsidp->channel,
                 scsidp->id, scsidp->lun, (int )((scsidp->host)->hostt)->emulated);
      }
    } else {
    }
    {
    seq_printf(s, " sg_tablesize=%d excl=%d open_cnt=%d\n", sdp->sg_tablesize, (int )sdp->exclude,
               sdp->open_cnt);
    sg_proc_debug_helper(s, sdp);
    }
  } else {
  }
  {
  ldv_linux_kernel_locking_rwlock_read_unlock();
  }
  skip:
  {
  ldv_linux_kernel_locking_rwlock_read_unlock();
  }
  return (0);
}
}
void ldv_EMGentry_exit_exit_sg_20_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_init_sg_20_11(int (*arg0)(void) ) ;
void ldv_cdev_del(void *arg0 , struct cdev *arg1 ) ;
void ldv_class_interface_unregister(void *arg0 , struct class_interface *arg1 ) ;
void ldv_dispatch_deregister_16_1(struct file_operations *arg0 ) ;
void ldv_dispatch_deregister_18_1(struct class_interface *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_8_20_4(void) ;
void ldv_dispatch_deregister_seq_instance_4_20_5(void) ;
void ldv_dispatch_register_17_1(struct seq_file *arg0 , struct seq_operations *arg1 ) ;
void ldv_dispatch_register_19_2(struct class_interface *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_8_20_6(void) ;
void ldv_dispatch_register_file_operations_instance_3_20_7(void) ;
void ldv_dummy_resourceless_instance_callback_14_3(int (*arg0)(struct device * , struct class_interface * ) ,
                                                   struct device *arg1 , struct class_interface *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_14_7(void (*arg0)(struct device * ,
                                                                struct class_interface * ) ,
                                                   struct device *arg1 , struct class_interface *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_15_3(int (*arg0)(struct vm_area_struct * ,
                                                               struct vm_fault * ) ,
                                                   struct vm_area_struct *arg1 , struct vm_fault *arg2 ) ;
void ldv_entry_EMGentry_20(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_1(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_2(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_3(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_4(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_5(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_6(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_7(void *arg0 ) ;
void ldv_file_operations_instance_callback_0_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_0_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_0_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_0_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_0_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_0_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_0_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_1_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_1_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_1_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_1_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_1_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_1_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_1_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_2_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_2_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_2_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_2_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_2_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_2_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_2_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_3_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_3_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_3_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_3_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_3_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_3_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_3_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_4_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_4_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_4_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_4_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_4_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_4_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_4_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_5_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_5_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_5_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_5_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_5_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_5_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_5_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_6_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_6_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_6_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_6_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_6_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_6_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_6_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_7_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_7_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_7_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_7_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_7_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_7_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_7_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_2_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_3_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_4_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_5_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_6_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_7_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_1_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_3_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_4_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_5_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_6_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_7_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_1_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_2_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_3_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_4_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_5_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_6_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_7_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
int ldv_scsi_register_interface(int arg0 , struct class_interface *arg1 ) ;
void ldv_seq_instance_next_10_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                                struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_next_11_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                                struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_next_12_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                                struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_next_13_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                                struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_next_8_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_next_9_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_show_10_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
void ldv_seq_instance_show_11_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
void ldv_seq_instance_show_12_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
void ldv_seq_instance_show_13_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
void ldv_seq_instance_show_8_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 ) ;
void ldv_seq_instance_show_9_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 ) ;
void ldv_seq_instance_start_10_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                 struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_start_11_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                 struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_start_12_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                 struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_start_13_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                 struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_start_8_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_start_9_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_stop_10_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                 void *arg2 ) ;
void ldv_seq_instance_stop_11_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                 void *arg2 ) ;
void ldv_seq_instance_stop_12_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                 void *arg2 ) ;
void ldv_seq_instance_stop_13_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                 void *arg2 ) ;
void ldv_seq_instance_stop_8_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
void ldv_seq_instance_stop_9_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
int ldv_seq_open(int arg0 , struct file *arg1 , struct seq_operations *arg2 ) ;
void ldv_seq_operations_seq_instance_10(void *arg0 ) ;
void ldv_seq_operations_seq_instance_11(void *arg0 ) ;
void ldv_seq_operations_seq_instance_12(void *arg0 ) ;
void ldv_seq_operations_seq_instance_13(void *arg0 ) ;
void ldv_seq_operations_seq_instance_8(void *arg0 ) ;
void ldv_seq_operations_seq_instance_9(void *arg0 ) ;
void ldv_struct_class_interface_dummy_resourceless_instance_14(void *arg0 ) ;
void ldv_struct_vm_operations_struct_dummy_resourceless_instance_15(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_10 ;
struct ldv_thread ldv_thread_11 ;
struct ldv_thread ldv_thread_12 ;
struct ldv_thread ldv_thread_13 ;
struct ldv_thread ldv_thread_14 ;
struct ldv_thread ldv_thread_15 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_20 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
struct ldv_thread ldv_thread_8 ;
struct ldv_thread ldv_thread_9 ;
void ldv_EMGentry_exit_exit_sg_20_2(void (*arg0)(void) )
{
  {
  {
  exit_sg();
  }
  return;
}
}
int ldv_EMGentry_init_init_sg_20_11(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = init_sg();
  }
  return (tmp);
}
}
void ldv_cdev_del(void *arg0 , struct cdev *arg1 )
{
  struct cdev *ldv_16_cdev_cdev ;
  struct file_operations *ldv_16_file_operations_file_operations ;
  {
  {
  ldv_16_cdev_cdev = arg1;
  ldv_16_file_operations_file_operations = (struct file_operations *)ldv_16_cdev_cdev->ops;
  ldv_dispatch_deregister_16_1(ldv_16_file_operations_file_operations);
  }
  return;
  return;
}
}
void ldv_class_interface_unregister(void *arg0 , struct class_interface *arg1 )
{
  struct class_interface *ldv_18_struct_class_interface_struct_class_interface ;
  {
  {
  ldv_18_struct_class_interface_struct_class_interface = arg1;
  ldv_dispatch_deregister_18_1(ldv_18_struct_class_interface_struct_class_interface);
  }
  return;
  return;
}
}
void ldv_dispatch_deregister_16_1(struct file_operations *arg0 )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  if (tmp == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_0: ;
  goto ldv_40116;
  case_1: ;
  goto ldv_40116;
  case_2: ;
  goto ldv_40116;
  case_3: ;
  goto ldv_40116;
  case_4: ;
  goto ldv_40116;
  case_5: ;
  goto ldv_40116;
  case_6: ;
  goto ldv_40116;
  case_7: ;
  goto ldv_40116;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_40116: ;
  return;
}
}
void ldv_dispatch_deregister_18_1(struct class_interface *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_8_20_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_seq_instance_4_20_5(void)
{
  {
  return;
}
}
void ldv_dispatch_register_17_1(struct seq_file *arg0 , struct seq_operations *arg1 )
{
  struct ldv_struct_seq_instance_8 *cf_arg_8 ;
  struct ldv_struct_seq_instance_8 *cf_arg_9 ;
  struct ldv_struct_seq_instance_8 *cf_arg_10 ;
  struct ldv_struct_seq_instance_8 *cf_arg_11 ;
  struct ldv_struct_seq_instance_8 *cf_arg_12 ;
  struct ldv_struct_seq_instance_8 *cf_arg_13 ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_0:
  {
  tmp___0 = ldv_xmalloc(24UL);
  cf_arg_8 = (struct ldv_struct_seq_instance_8 *)tmp___0;
  cf_arg_8->arg0 = arg0;
  cf_arg_8->arg1 = arg1;
  ldv_seq_operations_seq_instance_8((void *)cf_arg_8);
  }
  goto ldv_40155;
  case_1:
  {
  tmp___1 = ldv_xmalloc(24UL);
  cf_arg_9 = (struct ldv_struct_seq_instance_8 *)tmp___1;
  cf_arg_9->arg0 = arg0;
  cf_arg_9->arg1 = arg1;
  ldv_seq_operations_seq_instance_9((void *)cf_arg_9);
  }
  goto ldv_40155;
  case_2:
  {
  tmp___2 = ldv_xmalloc(24UL);
  cf_arg_10 = (struct ldv_struct_seq_instance_8 *)tmp___2;
  cf_arg_10->arg0 = arg0;
  cf_arg_10->arg1 = arg1;
  ldv_seq_operations_seq_instance_10((void *)cf_arg_10);
  }
  goto ldv_40155;
  case_3:
  {
  tmp___3 = ldv_xmalloc(24UL);
  cf_arg_11 = (struct ldv_struct_seq_instance_8 *)tmp___3;
  cf_arg_11->arg0 = arg0;
  cf_arg_11->arg1 = arg1;
  ldv_seq_operations_seq_instance_11((void *)cf_arg_11);
  }
  goto ldv_40155;
  case_4:
  {
  tmp___4 = ldv_xmalloc(24UL);
  cf_arg_12 = (struct ldv_struct_seq_instance_8 *)tmp___4;
  cf_arg_12->arg0 = arg0;
  cf_arg_12->arg1 = arg1;
  ldv_seq_operations_seq_instance_12((void *)cf_arg_12);
  }
  goto ldv_40155;
  case_5:
  {
  tmp___5 = ldv_xmalloc(24UL);
  cf_arg_13 = (struct ldv_struct_seq_instance_8 *)tmp___5;
  cf_arg_13->arg0 = arg0;
  cf_arg_13->arg1 = arg1;
  ldv_seq_operations_seq_instance_13((void *)cf_arg_13);
  }
  goto ldv_40155;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_40155: ;
  return;
}
}
void ldv_dispatch_register_19_2(struct class_interface *arg0 )
{
  struct ldv_struct_dummy_resourceless_instance_14 *cf_arg_14 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_14 = (struct ldv_struct_dummy_resourceless_instance_14 *)tmp;
  cf_arg_14->arg0 = arg0;
  ldv_struct_class_interface_dummy_resourceless_instance_14((void *)cf_arg_14);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_8_20_6(void)
{
  struct ldv_struct_EMGentry_20 *cf_arg_15 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_15 = (struct ldv_struct_EMGentry_20 *)tmp;
  ldv_struct_vm_operations_struct_dummy_resourceless_instance_15((void *)cf_arg_15);
  }
  return;
}
}
void ldv_dispatch_register_file_operations_instance_3_20_7(void)
{
  struct ldv_struct_EMGentry_20 *cf_arg_0 ;
  struct ldv_struct_EMGentry_20 *cf_arg_1 ;
  struct ldv_struct_EMGentry_20 *cf_arg_2 ;
  struct ldv_struct_EMGentry_20 *cf_arg_3 ;
  struct ldv_struct_EMGentry_20 *cf_arg_4 ;
  struct ldv_struct_EMGentry_20 *cf_arg_5 ;
  struct ldv_struct_EMGentry_20 *cf_arg_6 ;
  struct ldv_struct_EMGentry_20 *cf_arg_7 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_0 = (struct ldv_struct_EMGentry_20 *)tmp;
  ldv_file_operations_file_operations_instance_0((void *)cf_arg_0);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_1 = (struct ldv_struct_EMGentry_20 *)tmp___0;
  ldv_file_operations_file_operations_instance_1((void *)cf_arg_1);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_2 = (struct ldv_struct_EMGentry_20 *)tmp___1;
  ldv_file_operations_file_operations_instance_2((void *)cf_arg_2);
  tmp___2 = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_EMGentry_20 *)tmp___2;
  ldv_file_operations_file_operations_instance_3((void *)cf_arg_3);
  tmp___3 = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_EMGentry_20 *)tmp___3;
  ldv_file_operations_file_operations_instance_4((void *)cf_arg_4);
  tmp___4 = ldv_xmalloc(4UL);
  cf_arg_5 = (struct ldv_struct_EMGentry_20 *)tmp___4;
  ldv_file_operations_file_operations_instance_5((void *)cf_arg_5);
  tmp___5 = ldv_xmalloc(4UL);
  cf_arg_6 = (struct ldv_struct_EMGentry_20 *)tmp___5;
  ldv_file_operations_file_operations_instance_6((void *)cf_arg_6);
  tmp___6 = ldv_xmalloc(4UL);
  cf_arg_7 = (struct ldv_struct_EMGentry_20 *)tmp___6;
  ldv_file_operations_file_operations_instance_7((void *)cf_arg_7);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_3(int (*arg0)(struct device * , struct class_interface * ) ,
                                                   struct device *arg1 , struct class_interface *arg2 )
{
  {
  {
  sg_add_device(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_7(void (*arg0)(struct device * ,
                                                                struct class_interface * ) ,
                                                   struct device *arg1 , struct class_interface *arg2 )
{
  {
  {
  sg_remove_device(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_3(int (*arg0)(struct vm_area_struct * ,
                                                               struct vm_fault * ) ,
                                                   struct vm_area_struct *arg1 , struct vm_fault *arg2 )
{
  {
  {
  sg_vma_fault(arg1, arg2);
  }
  return;
}
}
void ldv_entry_EMGentry_20(void *arg0 )
{
  void (*ldv_20_exit_exit_sg_default)(void) ;
  int (*ldv_20_init_init_sg_default)(void) ;
  int ldv_20_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_20_ret_default = ldv_EMGentry_init_init_sg_20_11(ldv_20_init_init_sg_default);
  ldv_20_ret_default = ldv_ldv_post_init_132(ldv_20_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_20_ret_default != 0);
    ldv_ldv_check_final_state_133();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_20_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_file_operations_instance_3_20_7();
      ldv_dispatch_register_dummy_resourceless_instance_8_20_6();
      ldv_dispatch_deregister_seq_instance_4_20_5();
      ldv_dispatch_deregister_dummy_resourceless_instance_8_20_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_exit_sg_20_2(ldv_20_exit_exit_sg_default);
    ldv_ldv_check_final_state_134();
    ldv_stop();
    }
    return;
  }
  return;
}
}
int main(void)
{
  {
  {
  ldv_ldv_initialize_135();
  ldv_entry_EMGentry_20((void *)0);
  }
return 0;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  long (*ldv_0_callback_compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
  int (*ldv_0_callback_fasync)(int , struct file * , int ) ;
  long long (*ldv_0_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_0_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_0_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_0_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_0_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_0_container_file_operations ;
  int ldv_0_ldv_param_22_0_default ;
  int ldv_0_ldv_param_22_2_default ;
  long long ldv_0_ldv_param_25_1_default ;
  int ldv_0_ldv_param_25_2_default ;
  char *ldv_0_ldv_param_30_1_default ;
  long long *ldv_0_ldv_param_30_3_default ;
  unsigned int ldv_0_ldv_param_33_1_default ;
  char *ldv_0_ldv_param_4_1_default ;
  long long *ldv_0_ldv_param_4_3_default ;
  unsigned int ldv_0_ldv_param_5_1_default ;
  struct file *ldv_0_resource_file ;
  struct inode *ldv_0_resource_inode ;
  int ldv_0_ret_default ;
  struct poll_table_struct *ldv_0_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_0_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_0_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  {
  ldv_0_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_0_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_0_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_0_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_0;
  return;
  ldv_main_0:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_0_ret_default = ldv_file_operations_instance_probe_0_12(ldv_0_container_file_operations->open,
                                                                ldv_0_resource_inode,
                                                                ldv_0_resource_file);
    ldv_0_ret_default = ldv_filter_err_code(ldv_0_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_0_ret_default == 0);
      }
      goto ldv_call_0;
    } else {
      {
      ldv_assume(ldv_0_ret_default != 0);
      }
      goto ldv_main_0;
    }
  } else {
    {
    ldv_free((void *)ldv_0_resource_file);
    ldv_free((void *)ldv_0_resource_inode);
    }
    return;
  }
  return;
  ldv_call_0:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_0_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
  ldv_file_operations_instance_write_0_4((long (*)(struct file * , char * , unsigned long ,
                                                   long long * ))ldv_0_container_file_operations->write,
                                         ldv_0_resource_file, ldv_0_ldv_param_4_1_default,
                                         ldv_0_size_cnt_write_size, ldv_0_ldv_param_4_3_default);
  ldv_free((void *)ldv_0_ldv_param_4_1_default);
  ldv_free((void *)ldv_0_ldv_param_4_3_default);
  }
  goto ldv_call_0;
  case_2:
  {
  ldv_file_operations_instance_release_0_2(ldv_0_container_file_operations->release,
                                           ldv_0_resource_inode, ldv_0_resource_file);
  }
  goto ldv_main_0;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___7 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___7 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_0_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_0_33(ldv_0_callback_unlocked_ioctl, ldv_0_resource_file,
                                               ldv_0_ldv_param_33_1_default, ldv_0_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_40266;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_30_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_30_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_0_30(ldv_0_callback_read, ldv_0_resource_file,
                                             ldv_0_ldv_param_30_1_default, ldv_0_size_cnt_write_size,
                                             ldv_0_ldv_param_30_3_default);
  ldv_free((void *)ldv_0_ldv_param_30_1_default);
  ldv_free((void *)ldv_0_ldv_param_30_3_default);
  }
  goto ldv_40266;
  case_3___0: ;
  if ((unsigned long )ldv_0_callback_poll != (unsigned long )((unsigned int (*)(struct file * ,
                                                                                struct poll_table_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_0_29(ldv_0_callback_poll, ldv_0_resource_file,
                                               ldv_0_size_cnt_struct_poll_table_struct_ptr);
    }
  } else {
  }
  goto ldv_40266;
  case_4: ;
  if ((unsigned long )ldv_0_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_0_28(ldv_0_callback_mmap, ldv_0_resource_file,
                                               ldv_0_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_40266;
  case_5:
  {
  ldv_file_operations_instance_callback_0_25(ldv_0_callback_llseek, ldv_0_resource_file,
                                             ldv_0_ldv_param_25_1_default, ldv_0_ldv_param_25_2_default);
  }
  goto ldv_40266;
  case_6: ;
  if ((unsigned long )ldv_0_callback_fasync != (unsigned long )((int (*)(int , struct file * ,
                                                                         int ))0)) {
    {
    ldv_file_operations_instance_callback_0_22(ldv_0_callback_fasync, ldv_0_ldv_param_22_0_default,
                                               ldv_0_resource_file, ldv_0_ldv_param_22_2_default);
    }
  } else {
  }
  goto ldv_40266;
  case_7: ;
  if ((unsigned long )ldv_0_callback_compat_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                unsigned int ,
                                                                                unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_0_5(ldv_0_callback_compat_ioctl, ldv_0_resource_file,
                                              ldv_0_ldv_param_5_1_default, ldv_0_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_40266;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_40266: ;
  goto ldv_40274;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_40274: ;
  goto ldv_call_0;
  goto ldv_call_0;
  return;
}
}
void ldv_file_operations_file_operations_instance_1(void *arg0 )
{
  long (*ldv_1_callback_compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
  int (*ldv_1_callback_fasync)(int , struct file * , int ) ;
  long long (*ldv_1_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_1_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_1_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_1_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_1_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_1_container_file_operations ;
  int ldv_1_ldv_param_22_0_default ;
  int ldv_1_ldv_param_22_2_default ;
  long long ldv_1_ldv_param_25_1_default ;
  int ldv_1_ldv_param_25_2_default ;
  char *ldv_1_ldv_param_30_1_default ;
  long long *ldv_1_ldv_param_30_3_default ;
  unsigned int ldv_1_ldv_param_33_1_default ;
  char *ldv_1_ldv_param_4_1_default ;
  long long *ldv_1_ldv_param_4_3_default ;
  unsigned int ldv_1_ldv_param_5_1_default ;
  struct file *ldv_1_resource_file ;
  struct inode *ldv_1_resource_inode ;
  int ldv_1_ret_default ;
  struct poll_table_struct *ldv_1_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_1_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_1_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  {
  ldv_1_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_1_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_1_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_1_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_1;
  return;
  ldv_main_1:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_1_ret_default = ldv_file_operations_instance_probe_1_12(ldv_1_container_file_operations->open,
                                                                ldv_1_resource_inode,
                                                                ldv_1_resource_file);
    ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_1_ret_default == 0);
      }
      goto ldv_call_1;
    } else {
      {
      ldv_assume(ldv_1_ret_default != 0);
      }
      goto ldv_main_1;
    }
  } else {
    {
    ldv_free((void *)ldv_1_resource_file);
    ldv_free((void *)ldv_1_resource_inode);
    }
    return;
  }
  return;
  ldv_call_1:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_1_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
  }
  if ((unsigned long )ldv_1_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_1_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_1_container_file_operations->write,
                                           ldv_1_resource_file, ldv_1_ldv_param_4_1_default,
                                           ldv_1_size_cnt_write_size, ldv_1_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_1_ldv_param_4_1_default);
  ldv_free((void *)ldv_1_ldv_param_4_3_default);
  }
  goto ldv_call_1;
  case_2:
  {
  ldv_file_operations_instance_release_1_2(ldv_1_container_file_operations->release,
                                           ldv_1_resource_inode, ldv_1_resource_file);
  }
  goto ldv_main_1;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___7 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___7 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_1_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_1_33(ldv_1_callback_unlocked_ioctl, ldv_1_resource_file,
                                               ldv_1_ldv_param_33_1_default, ldv_1_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_40329;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_30_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_30_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_1_30(ldv_1_callback_read, ldv_1_resource_file,
                                             ldv_1_ldv_param_30_1_default, ldv_1_size_cnt_write_size,
                                             ldv_1_ldv_param_30_3_default);
  ldv_free((void *)ldv_1_ldv_param_30_1_default);
  ldv_free((void *)ldv_1_ldv_param_30_3_default);
  }
  goto ldv_40329;
  case_3___0: ;
  if ((unsigned long )ldv_1_callback_poll != (unsigned long )((unsigned int (*)(struct file * ,
                                                                                struct poll_table_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_1_29(ldv_1_callback_poll, ldv_1_resource_file,
                                               ldv_1_size_cnt_struct_poll_table_struct_ptr);
    }
  } else {
  }
  goto ldv_40329;
  case_4: ;
  if ((unsigned long )ldv_1_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_1_28(ldv_1_callback_mmap, ldv_1_resource_file,
                                               ldv_1_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_40329;
  case_5:
  {
  ldv_file_operations_instance_callback_1_25(ldv_1_callback_llseek, ldv_1_resource_file,
                                             ldv_1_ldv_param_25_1_default, ldv_1_ldv_param_25_2_default);
  }
  goto ldv_40329;
  case_6: ;
  if ((unsigned long )ldv_1_callback_fasync != (unsigned long )((int (*)(int , struct file * ,
                                                                         int ))0)) {
    {
    ldv_file_operations_instance_callback_1_22(ldv_1_callback_fasync, ldv_1_ldv_param_22_0_default,
                                               ldv_1_resource_file, ldv_1_ldv_param_22_2_default);
    }
  } else {
  }
  goto ldv_40329;
  case_7: ;
  if ((unsigned long )ldv_1_callback_compat_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                unsigned int ,
                                                                                unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_1_5(ldv_1_callback_compat_ioctl, ldv_1_resource_file,
                                              ldv_1_ldv_param_5_1_default, ldv_1_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_40329;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_40329: ;
  goto ldv_40337;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_40337: ;
  goto ldv_call_1;
  goto ldv_call_1;
  return;
}
}
void ldv_file_operations_file_operations_instance_2(void *arg0 )
{
  long (*ldv_2_callback_compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
  int (*ldv_2_callback_fasync)(int , struct file * , int ) ;
  long long (*ldv_2_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_2_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_2_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_2_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_2_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_2_container_file_operations ;
  int ldv_2_ldv_param_22_0_default ;
  int ldv_2_ldv_param_22_2_default ;
  long long ldv_2_ldv_param_25_1_default ;
  int ldv_2_ldv_param_25_2_default ;
  char *ldv_2_ldv_param_30_1_default ;
  long long *ldv_2_ldv_param_30_3_default ;
  unsigned int ldv_2_ldv_param_33_1_default ;
  char *ldv_2_ldv_param_4_1_default ;
  long long *ldv_2_ldv_param_4_3_default ;
  unsigned int ldv_2_ldv_param_5_1_default ;
  struct file *ldv_2_resource_file ;
  struct inode *ldv_2_resource_inode ;
  int ldv_2_ret_default ;
  struct poll_table_struct *ldv_2_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_2_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_2_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  {
  ldv_2_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_2_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_2_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_2_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_2;
  return;
  ldv_main_2:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_2_ret_default = ldv_file_operations_instance_probe_2_12(ldv_2_container_file_operations->open,
                                                                ldv_2_resource_inode,
                                                                ldv_2_resource_file);
    ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_2_ret_default == 0);
      }
      goto ldv_call_2;
    } else {
      {
      ldv_assume(ldv_2_ret_default != 0);
      }
      goto ldv_main_2;
    }
  } else {
    {
    ldv_free((void *)ldv_2_resource_file);
    ldv_free((void *)ldv_2_resource_inode);
    }
    return;
  }
  return;
  ldv_call_2:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_2_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_2_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
  }
  if ((unsigned long )ldv_2_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_2_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_2_container_file_operations->write,
                                           ldv_2_resource_file, ldv_2_ldv_param_4_1_default,
                                           ldv_2_size_cnt_write_size, ldv_2_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_2_ldv_param_4_1_default);
  ldv_free((void *)ldv_2_ldv_param_4_3_default);
  }
  goto ldv_call_2;
  case_2:
  {
  ldv_file_operations_instance_release_2_2(ldv_2_container_file_operations->release,
                                           ldv_2_resource_inode, ldv_2_resource_file);
  }
  goto ldv_main_2;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___7 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___7 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_2_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_2_33(ldv_2_callback_unlocked_ioctl, ldv_2_resource_file,
                                               ldv_2_ldv_param_33_1_default, ldv_2_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_40392;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_30_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_2_ldv_param_30_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_2_30(ldv_2_callback_read, ldv_2_resource_file,
                                             ldv_2_ldv_param_30_1_default, ldv_2_size_cnt_write_size,
                                             ldv_2_ldv_param_30_3_default);
  ldv_free((void *)ldv_2_ldv_param_30_1_default);
  ldv_free((void *)ldv_2_ldv_param_30_3_default);
  }
  goto ldv_40392;
  case_3___0: ;
  if ((unsigned long )ldv_2_callback_poll != (unsigned long )((unsigned int (*)(struct file * ,
                                                                                struct poll_table_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_2_29(ldv_2_callback_poll, ldv_2_resource_file,
                                               ldv_2_size_cnt_struct_poll_table_struct_ptr);
    }
  } else {
  }
  goto ldv_40392;
  case_4: ;
  if ((unsigned long )ldv_2_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_2_28(ldv_2_callback_mmap, ldv_2_resource_file,
                                               ldv_2_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_40392;
  case_5:
  {
  ldv_file_operations_instance_callback_2_25(ldv_2_callback_llseek, ldv_2_resource_file,
                                             ldv_2_ldv_param_25_1_default, ldv_2_ldv_param_25_2_default);
  }
  goto ldv_40392;
  case_6: ;
  if ((unsigned long )ldv_2_callback_fasync != (unsigned long )((int (*)(int , struct file * ,
                                                                         int ))0)) {
    {
    ldv_file_operations_instance_callback_2_22(ldv_2_callback_fasync, ldv_2_ldv_param_22_0_default,
                                               ldv_2_resource_file, ldv_2_ldv_param_22_2_default);
    }
  } else {
  }
  goto ldv_40392;
  case_7: ;
  if ((unsigned long )ldv_2_callback_compat_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                unsigned int ,
                                                                                unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_2_5(ldv_2_callback_compat_ioctl, ldv_2_resource_file,
                                              ldv_2_ldv_param_5_1_default, ldv_2_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_40392;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_40392: ;
  goto ldv_40400;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_40400: ;
  goto ldv_call_2;
  goto ldv_call_2;
  return;
}
}
void ldv_file_operations_file_operations_instance_3(void *arg0 )
{
  long (*ldv_3_callback_compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
  int (*ldv_3_callback_fasync)(int , struct file * , int ) ;
  long long (*ldv_3_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_3_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_3_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_3_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_3_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_3_container_file_operations ;
  int ldv_3_ldv_param_22_0_default ;
  int ldv_3_ldv_param_22_2_default ;
  long long ldv_3_ldv_param_25_1_default ;
  int ldv_3_ldv_param_25_2_default ;
  char *ldv_3_ldv_param_30_1_default ;
  long long *ldv_3_ldv_param_30_3_default ;
  unsigned int ldv_3_ldv_param_33_1_default ;
  char *ldv_3_ldv_param_4_1_default ;
  long long *ldv_3_ldv_param_4_3_default ;
  unsigned int ldv_3_ldv_param_5_1_default ;
  struct file *ldv_3_resource_file ;
  struct inode *ldv_3_resource_inode ;
  int ldv_3_ret_default ;
  struct poll_table_struct *ldv_3_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_3_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_3_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  {
  ldv_3_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_3_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_3_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_3_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_3;
  return;
  ldv_main_3:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_3_ret_default = ldv_file_operations_instance_probe_3_12(ldv_3_container_file_operations->open,
                                                                ldv_3_resource_inode,
                                                                ldv_3_resource_file);
    ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_3_ret_default == 0);
      }
      goto ldv_call_3;
    } else {
      {
      ldv_assume(ldv_3_ret_default != 0);
      }
      goto ldv_main_3;
    }
  } else {
    {
    ldv_free((void *)ldv_3_resource_file);
    ldv_free((void *)ldv_3_resource_inode);
    }
    return;
  }
  return;
  ldv_call_3:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_3_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_3_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
  }
  if ((unsigned long )ldv_3_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_3_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_3_container_file_operations->write,
                                           ldv_3_resource_file, ldv_3_ldv_param_4_1_default,
                                           ldv_3_size_cnt_write_size, ldv_3_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_3_ldv_param_4_1_default);
  ldv_free((void *)ldv_3_ldv_param_4_3_default);
  }
  goto ldv_call_3;
  case_2:
  {
  ldv_file_operations_instance_release_3_2(ldv_3_container_file_operations->release,
                                           ldv_3_resource_inode, ldv_3_resource_file);
  }
  goto ldv_main_3;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___7 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___7 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_3_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_3_33(ldv_3_callback_unlocked_ioctl, ldv_3_resource_file,
                                               ldv_3_ldv_param_33_1_default, ldv_3_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_40455;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_30_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_3_ldv_param_30_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_3_30(ldv_3_callback_read, ldv_3_resource_file,
                                             ldv_3_ldv_param_30_1_default, ldv_3_size_cnt_write_size,
                                             ldv_3_ldv_param_30_3_default);
  ldv_free((void *)ldv_3_ldv_param_30_1_default);
  ldv_free((void *)ldv_3_ldv_param_30_3_default);
  }
  goto ldv_40455;
  case_3___0: ;
  if ((unsigned long )ldv_3_callback_poll != (unsigned long )((unsigned int (*)(struct file * ,
                                                                                struct poll_table_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_3_29(ldv_3_callback_poll, ldv_3_resource_file,
                                               ldv_3_size_cnt_struct_poll_table_struct_ptr);
    }
  } else {
  }
  goto ldv_40455;
  case_4: ;
  if ((unsigned long )ldv_3_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_3_28(ldv_3_callback_mmap, ldv_3_resource_file,
                                               ldv_3_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_40455;
  case_5:
  {
  ldv_file_operations_instance_callback_3_25(ldv_3_callback_llseek, ldv_3_resource_file,
                                             ldv_3_ldv_param_25_1_default, ldv_3_ldv_param_25_2_default);
  }
  goto ldv_40455;
  case_6: ;
  if ((unsigned long )ldv_3_callback_fasync != (unsigned long )((int (*)(int , struct file * ,
                                                                         int ))0)) {
    {
    ldv_file_operations_instance_callback_3_22(ldv_3_callback_fasync, ldv_3_ldv_param_22_0_default,
                                               ldv_3_resource_file, ldv_3_ldv_param_22_2_default);
    }
  } else {
  }
  goto ldv_40455;
  case_7: ;
  if ((unsigned long )ldv_3_callback_compat_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                unsigned int ,
                                                                                unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_3_5(ldv_3_callback_compat_ioctl, ldv_3_resource_file,
                                              ldv_3_ldv_param_5_1_default, ldv_3_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_40455;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_40455: ;
  goto ldv_40463;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_40463: ;
  goto ldv_call_3;
  goto ldv_call_3;
  return;
}
}
void ldv_file_operations_file_operations_instance_4(void *arg0 )
{
  long (*ldv_4_callback_compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
  int (*ldv_4_callback_fasync)(int , struct file * , int ) ;
  long long (*ldv_4_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_4_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_4_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_4_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_4_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_4_container_file_operations ;
  int ldv_4_ldv_param_22_0_default ;
  int ldv_4_ldv_param_22_2_default ;
  long long ldv_4_ldv_param_25_1_default ;
  int ldv_4_ldv_param_25_2_default ;
  char *ldv_4_ldv_param_30_1_default ;
  long long *ldv_4_ldv_param_30_3_default ;
  unsigned int ldv_4_ldv_param_33_1_default ;
  char *ldv_4_ldv_param_4_1_default ;
  long long *ldv_4_ldv_param_4_3_default ;
  unsigned int ldv_4_ldv_param_5_1_default ;
  struct file *ldv_4_resource_file ;
  struct inode *ldv_4_resource_inode ;
  int ldv_4_ret_default ;
  struct poll_table_struct *ldv_4_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_4_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_4_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  {
  ldv_4_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_4_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_4_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_4_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_4;
  return;
  ldv_main_4:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_4_ret_default = ldv_file_operations_instance_probe_4_12(ldv_4_container_file_operations->open,
                                                                ldv_4_resource_inode,
                                                                ldv_4_resource_file);
    ldv_4_ret_default = ldv_filter_err_code(ldv_4_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_4_ret_default == 0);
      }
      goto ldv_call_4;
    } else {
      {
      ldv_assume(ldv_4_ret_default != 0);
      }
      goto ldv_main_4;
    }
  } else {
    {
    ldv_free((void *)ldv_4_resource_file);
    ldv_free((void *)ldv_4_resource_inode);
    }
    return;
  }
  return;
  ldv_call_4:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_4_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_4_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_4_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
  }
  if ((unsigned long )ldv_4_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_4_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_4_container_file_operations->write,
                                           ldv_4_resource_file, ldv_4_ldv_param_4_1_default,
                                           ldv_4_size_cnt_write_size, ldv_4_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_4_ldv_param_4_1_default);
  ldv_free((void *)ldv_4_ldv_param_4_3_default);
  }
  goto ldv_call_4;
  case_2:
  {
  ldv_file_operations_instance_release_4_2(ldv_4_container_file_operations->release,
                                           ldv_4_resource_inode, ldv_4_resource_file);
  }
  goto ldv_main_4;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___7 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___7 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_4_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_4_33(ldv_4_callback_unlocked_ioctl, ldv_4_resource_file,
                                               ldv_4_ldv_param_33_1_default, ldv_4_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_40518;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_4_ldv_param_30_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_4_ldv_param_30_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_4_30(ldv_4_callback_read, ldv_4_resource_file,
                                             ldv_4_ldv_param_30_1_default, ldv_4_size_cnt_write_size,
                                             ldv_4_ldv_param_30_3_default);
  ldv_free((void *)ldv_4_ldv_param_30_1_default);
  ldv_free((void *)ldv_4_ldv_param_30_3_default);
  }
  goto ldv_40518;
  case_3___0: ;
  if ((unsigned long )ldv_4_callback_poll != (unsigned long )((unsigned int (*)(struct file * ,
                                                                                struct poll_table_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_4_29(ldv_4_callback_poll, ldv_4_resource_file,
                                               ldv_4_size_cnt_struct_poll_table_struct_ptr);
    }
  } else {
  }
  goto ldv_40518;
  case_4: ;
  if ((unsigned long )ldv_4_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_4_28(ldv_4_callback_mmap, ldv_4_resource_file,
                                               ldv_4_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_40518;
  case_5:
  {
  ldv_file_operations_instance_callback_4_25(ldv_4_callback_llseek, ldv_4_resource_file,
                                             ldv_4_ldv_param_25_1_default, ldv_4_ldv_param_25_2_default);
  }
  goto ldv_40518;
  case_6: ;
  if ((unsigned long )ldv_4_callback_fasync != (unsigned long )((int (*)(int , struct file * ,
                                                                         int ))0)) {
    {
    ldv_file_operations_instance_callback_4_22(ldv_4_callback_fasync, ldv_4_ldv_param_22_0_default,
                                               ldv_4_resource_file, ldv_4_ldv_param_22_2_default);
    }
  } else {
  }
  goto ldv_40518;
  case_7: ;
  if ((unsigned long )ldv_4_callback_compat_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                unsigned int ,
                                                                                unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_4_5(ldv_4_callback_compat_ioctl, ldv_4_resource_file,
                                              ldv_4_ldv_param_5_1_default, ldv_4_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_40518;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_40518: ;
  goto ldv_40526;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_40526: ;
  goto ldv_call_4;
  goto ldv_call_4;
  return;
}
}
void ldv_file_operations_file_operations_instance_5(void *arg0 )
{
  long (*ldv_5_callback_compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
  int (*ldv_5_callback_fasync)(int , struct file * , int ) ;
  long long (*ldv_5_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_5_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_5_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_5_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_5_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_5_container_file_operations ;
  int ldv_5_ldv_param_22_0_default ;
  int ldv_5_ldv_param_22_2_default ;
  long long ldv_5_ldv_param_25_1_default ;
  int ldv_5_ldv_param_25_2_default ;
  char *ldv_5_ldv_param_30_1_default ;
  long long *ldv_5_ldv_param_30_3_default ;
  unsigned int ldv_5_ldv_param_33_1_default ;
  char *ldv_5_ldv_param_4_1_default ;
  long long *ldv_5_ldv_param_4_3_default ;
  unsigned int ldv_5_ldv_param_5_1_default ;
  struct file *ldv_5_resource_file ;
  struct inode *ldv_5_resource_inode ;
  int ldv_5_ret_default ;
  struct poll_table_struct *ldv_5_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_5_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_5_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  {
  ldv_5_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_5_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_5_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_5_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_5;
  return;
  ldv_main_5:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_5_ret_default = ldv_file_operations_instance_probe_5_12(ldv_5_container_file_operations->open,
                                                                ldv_5_resource_inode,
                                                                ldv_5_resource_file);
    ldv_5_ret_default = ldv_filter_err_code(ldv_5_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_5_ret_default == 0);
      }
      goto ldv_call_5;
    } else {
      {
      ldv_assume(ldv_5_ret_default != 0);
      }
      goto ldv_main_5;
    }
  } else {
    {
    ldv_free((void *)ldv_5_resource_file);
    ldv_free((void *)ldv_5_resource_inode);
    }
    return;
  }
  return;
  ldv_call_5:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_5_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_5_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
  ldv_file_operations_instance_write_5_4((long (*)(struct file * , char * , unsigned long ,
                                                   long long * ))ldv_5_container_file_operations->write,
                                         ldv_5_resource_file, ldv_5_ldv_param_4_1_default,
                                         ldv_5_size_cnt_write_size, ldv_5_ldv_param_4_3_default);
  ldv_free((void *)ldv_5_ldv_param_4_1_default);
  ldv_free((void *)ldv_5_ldv_param_4_3_default);
  }
  goto ldv_call_5;
  case_2:
  {
  ldv_file_operations_instance_release_5_2(ldv_5_container_file_operations->release,
                                           ldv_5_resource_inode, ldv_5_resource_file);
  }
  goto ldv_main_5;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___7 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___7 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_5_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_5_33(ldv_5_callback_unlocked_ioctl, ldv_5_resource_file,
                                               ldv_5_ldv_param_33_1_default, ldv_5_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_40581;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_30_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_5_ldv_param_30_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_5_30(ldv_5_callback_read, ldv_5_resource_file,
                                             ldv_5_ldv_param_30_1_default, ldv_5_size_cnt_write_size,
                                             ldv_5_ldv_param_30_3_default);
  ldv_free((void *)ldv_5_ldv_param_30_1_default);
  ldv_free((void *)ldv_5_ldv_param_30_3_default);
  }
  goto ldv_40581;
  case_3___0: ;
  if ((unsigned long )ldv_5_callback_poll != (unsigned long )((unsigned int (*)(struct file * ,
                                                                                struct poll_table_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_5_29(ldv_5_callback_poll, ldv_5_resource_file,
                                               ldv_5_size_cnt_struct_poll_table_struct_ptr);
    }
  } else {
  }
  goto ldv_40581;
  case_4: ;
  if ((unsigned long )ldv_5_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_5_28(ldv_5_callback_mmap, ldv_5_resource_file,
                                               ldv_5_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_40581;
  case_5:
  {
  ldv_file_operations_instance_callback_5_25(ldv_5_callback_llseek, ldv_5_resource_file,
                                             ldv_5_ldv_param_25_1_default, ldv_5_ldv_param_25_2_default);
  }
  goto ldv_40581;
  case_6: ;
  if ((unsigned long )ldv_5_callback_fasync != (unsigned long )((int (*)(int , struct file * ,
                                                                         int ))0)) {
    {
    ldv_file_operations_instance_callback_5_22(ldv_5_callback_fasync, ldv_5_ldv_param_22_0_default,
                                               ldv_5_resource_file, ldv_5_ldv_param_22_2_default);
    }
  } else {
  }
  goto ldv_40581;
  case_7: ;
  if ((unsigned long )ldv_5_callback_compat_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                unsigned int ,
                                                                                unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_5_5(ldv_5_callback_compat_ioctl, ldv_5_resource_file,
                                              ldv_5_ldv_param_5_1_default, ldv_5_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_40581;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_40581: ;
  goto ldv_40589;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_40589: ;
  goto ldv_call_5;
  goto ldv_call_5;
  return;
}
}
void ldv_file_operations_file_operations_instance_6(void *arg0 )
{
  long (*ldv_6_callback_compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
  int (*ldv_6_callback_fasync)(int , struct file * , int ) ;
  long long (*ldv_6_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_6_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_6_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_6_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_6_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_6_container_file_operations ;
  int ldv_6_ldv_param_22_0_default ;
  int ldv_6_ldv_param_22_2_default ;
  long long ldv_6_ldv_param_25_1_default ;
  int ldv_6_ldv_param_25_2_default ;
  char *ldv_6_ldv_param_30_1_default ;
  long long *ldv_6_ldv_param_30_3_default ;
  unsigned int ldv_6_ldv_param_33_1_default ;
  char *ldv_6_ldv_param_4_1_default ;
  long long *ldv_6_ldv_param_4_3_default ;
  unsigned int ldv_6_ldv_param_5_1_default ;
  struct file *ldv_6_resource_file ;
  struct inode *ldv_6_resource_inode ;
  int ldv_6_ret_default ;
  struct poll_table_struct *ldv_6_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_6_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_6_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  {
  ldv_6_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_6_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_6_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_6_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_6;
  return;
  ldv_main_6:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_6_ret_default = ldv_file_operations_instance_probe_6_12(ldv_6_container_file_operations->open,
                                                                ldv_6_resource_inode,
                                                                ldv_6_resource_file);
    ldv_6_ret_default = ldv_filter_err_code(ldv_6_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_6_ret_default == 0);
      }
      goto ldv_call_6;
    } else {
      {
      ldv_assume(ldv_6_ret_default != 0);
      }
      goto ldv_main_6;
    }
  } else {
    {
    ldv_free((void *)ldv_6_resource_file);
    ldv_free((void *)ldv_6_resource_inode);
    }
    return;
  }
  return;
  ldv_call_6:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_6_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_6_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_6_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
  ldv_file_operations_instance_write_6_4((long (*)(struct file * , char * , unsigned long ,
                                                   long long * ))ldv_6_container_file_operations->write,
                                         ldv_6_resource_file, ldv_6_ldv_param_4_1_default,
                                         ldv_6_size_cnt_write_size, ldv_6_ldv_param_4_3_default);
  ldv_free((void *)ldv_6_ldv_param_4_1_default);
  ldv_free((void *)ldv_6_ldv_param_4_3_default);
  }
  goto ldv_call_6;
  case_2:
  {
  ldv_file_operations_instance_release_6_2(ldv_6_container_file_operations->release,
                                           ldv_6_resource_inode, ldv_6_resource_file);
  }
  goto ldv_main_6;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___7 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___7 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1___0:
  {
  ldv_file_operations_instance_callback_6_33(ldv_6_callback_unlocked_ioctl, ldv_6_resource_file,
                                             ldv_6_ldv_param_33_1_default, ldv_6_size_cnt_write_size);
  }
  goto ldv_40644;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_6_ldv_param_30_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_6_ldv_param_30_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_6_30(ldv_6_callback_read, ldv_6_resource_file,
                                             ldv_6_ldv_param_30_1_default, ldv_6_size_cnt_write_size,
                                             ldv_6_ldv_param_30_3_default);
  ldv_free((void *)ldv_6_ldv_param_30_1_default);
  ldv_free((void *)ldv_6_ldv_param_30_3_default);
  }
  goto ldv_40644;
  case_3___0:
  {
  ldv_file_operations_instance_callback_6_29(ldv_6_callback_poll, ldv_6_resource_file,
                                             ldv_6_size_cnt_struct_poll_table_struct_ptr);
  }
  goto ldv_40644;
  case_4:
  {
  ldv_file_operations_instance_callback_6_28(ldv_6_callback_mmap, ldv_6_resource_file,
                                             ldv_6_size_cnt_struct_vm_area_struct_ptr);
  }
  goto ldv_40644;
  case_5:
  {
  ldv_file_operations_instance_callback_6_25(ldv_6_callback_llseek, ldv_6_resource_file,
                                             ldv_6_ldv_param_25_1_default, ldv_6_ldv_param_25_2_default);
  }
  goto ldv_40644;
  case_6:
  {
  ldv_file_operations_instance_callback_6_22(ldv_6_callback_fasync, ldv_6_ldv_param_22_0_default,
                                             ldv_6_resource_file, ldv_6_ldv_param_22_2_default);
  }
  goto ldv_40644;
  case_7:
  {
  ldv_file_operations_instance_callback_6_5(ldv_6_callback_compat_ioctl, ldv_6_resource_file,
                                            ldv_6_ldv_param_5_1_default, ldv_6_size_cnt_write_size);
  }
  goto ldv_40644;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_40644: ;
  goto ldv_40652;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_40652: ;
  goto ldv_call_6;
  goto ldv_call_6;
  return;
}
}
void ldv_file_operations_file_operations_instance_7(void *arg0 )
{
  long (*ldv_7_callback_compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
  int (*ldv_7_callback_fasync)(int , struct file * , int ) ;
  long long (*ldv_7_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_7_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_7_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_7_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_7_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_7_container_file_operations ;
  int ldv_7_ldv_param_22_0_default ;
  int ldv_7_ldv_param_22_2_default ;
  long long ldv_7_ldv_param_25_1_default ;
  int ldv_7_ldv_param_25_2_default ;
  char *ldv_7_ldv_param_30_1_default ;
  long long *ldv_7_ldv_param_30_3_default ;
  unsigned int ldv_7_ldv_param_33_1_default ;
  char *ldv_7_ldv_param_4_1_default ;
  long long *ldv_7_ldv_param_4_3_default ;
  unsigned int ldv_7_ldv_param_5_1_default ;
  struct file *ldv_7_resource_file ;
  struct inode *ldv_7_resource_inode ;
  int ldv_7_ret_default ;
  struct poll_table_struct *ldv_7_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_7_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_7_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  {
  ldv_7_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_7_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_7_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_7_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_7;
  return;
  ldv_main_7:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_7_ret_default = ldv_file_operations_instance_probe_7_12(ldv_7_container_file_operations->open,
                                                                ldv_7_resource_inode,
                                                                ldv_7_resource_file);
    ldv_7_ret_default = ldv_filter_err_code(ldv_7_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_7_ret_default == 0);
      }
      goto ldv_call_7;
    } else {
      {
      ldv_assume(ldv_7_ret_default != 0);
      }
      goto ldv_main_7;
    }
  } else {
    {
    ldv_free((void *)ldv_7_resource_file);
    ldv_free((void *)ldv_7_resource_inode);
    }
    return;
  }
  return;
  ldv_call_7:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_7_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_7_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_7_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
  }
  if ((unsigned long )ldv_7_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_7_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_7_container_file_operations->write,
                                           ldv_7_resource_file, ldv_7_ldv_param_4_1_default,
                                           ldv_7_size_cnt_write_size, ldv_7_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_7_ldv_param_4_1_default);
  ldv_free((void *)ldv_7_ldv_param_4_3_default);
  }
  goto ldv_call_7;
  case_2:
  {
  ldv_file_operations_instance_release_7_2(ldv_7_container_file_operations->release,
                                           ldv_7_resource_inode, ldv_7_resource_file);
  }
  goto ldv_main_7;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___7 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___7 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_7_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_7_33(ldv_7_callback_unlocked_ioctl, ldv_7_resource_file,
                                               ldv_7_ldv_param_33_1_default, ldv_7_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_40707;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_7_ldv_param_30_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_7_ldv_param_30_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_7_30(ldv_7_callback_read, ldv_7_resource_file,
                                             ldv_7_ldv_param_30_1_default, ldv_7_size_cnt_write_size,
                                             ldv_7_ldv_param_30_3_default);
  ldv_free((void *)ldv_7_ldv_param_30_1_default);
  ldv_free((void *)ldv_7_ldv_param_30_3_default);
  }
  goto ldv_40707;
  case_3___0: ;
  if ((unsigned long )ldv_7_callback_poll != (unsigned long )((unsigned int (*)(struct file * ,
                                                                                struct poll_table_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_7_29(ldv_7_callback_poll, ldv_7_resource_file,
                                               ldv_7_size_cnt_struct_poll_table_struct_ptr);
    }
  } else {
  }
  goto ldv_40707;
  case_4: ;
  if ((unsigned long )ldv_7_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_7_28(ldv_7_callback_mmap, ldv_7_resource_file,
                                               ldv_7_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_40707;
  case_5:
  {
  ldv_file_operations_instance_callback_7_25(ldv_7_callback_llseek, ldv_7_resource_file,
                                             ldv_7_ldv_param_25_1_default, ldv_7_ldv_param_25_2_default);
  }
  goto ldv_40707;
  case_6: ;
  if ((unsigned long )ldv_7_callback_fasync != (unsigned long )((int (*)(int , struct file * ,
                                                                         int ))0)) {
    {
    ldv_file_operations_instance_callback_7_22(ldv_7_callback_fasync, ldv_7_ldv_param_22_0_default,
                                               ldv_7_resource_file, ldv_7_ldv_param_22_2_default);
    }
  } else {
  }
  goto ldv_40707;
  case_7: ;
  if ((unsigned long )ldv_7_callback_compat_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                unsigned int ,
                                                                                unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_7_5(ldv_7_callback_compat_ioctl, ldv_7_resource_file,
                                              ldv_7_ldv_param_5_1_default, ldv_7_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_40707;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_40707: ;
  goto ldv_40715;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_40715: ;
  goto ldv_call_7;
  goto ldv_call_7;
  return;
}
}
void ldv_file_operations_instance_callback_0_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_3_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_3_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_3_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_3_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_3_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_3_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_3_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_4_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_4_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_4_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_4_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_4_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_4_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_4_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_5_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_5_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_5_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_5_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_5_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_5_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_5_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_6_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 )
{
  {
  {
  sg_fasync(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_6_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 )
{
  {
  {
  no_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_6_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  sg_mmap(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_6_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  sg_poll(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_6_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  sg_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_6_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  sg_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_6_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  sg_compat_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_7_22(int (*arg0)(int , struct file * ,
                                                            int ) , int arg1 , struct file *arg2 ,
                                                int arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_7_25(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_7_28(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_7_29(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_7_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_7_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_7_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = sg_proc_single_open_adio(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = sg_proc_open_debug(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_2_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = sg_proc_open_dev(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_3_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = sg_proc_single_open_devhdr(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_4_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = sg_proc_open_devstrs(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_5_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = sg_proc_single_open_dressz(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_6_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = sg_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_7_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = sg_proc_single_open_version(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  single_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_1_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  seq_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  seq_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_3_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  single_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_4_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  seq_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_5_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  single_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_6_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  sg_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_7_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  single_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  sg_proc_write_adio(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_write_1_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_write_2_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_write_3_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_write_4_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_write_5_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  sg_proc_write_dressz(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_write_6_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  sg_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_write_7_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
int ldv_scsi_register_interface(int arg0 , struct class_interface *arg1 )
{
  struct class_interface *ldv_19_struct_class_interface_struct_class_interface ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_19_struct_class_interface_struct_class_interface = arg1;
    ldv_dispatch_register_19_2(ldv_19_struct_class_interface_struct_class_interface);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
void ldv_seq_instance_next_10_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                                struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  dev_seq_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_next_11_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                                struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  dev_seq_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_next_12_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                                struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  dev_seq_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_next_13_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                                struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  dev_seq_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_next_8_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  dev_seq_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_next_9_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  dev_seq_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_show_10_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  sg_proc_seq_show_devstrs(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_show_11_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  sg_proc_seq_show_devhdr(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_show_12_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  sg_proc_seq_show_int(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_show_13_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  sg_proc_seq_show_version(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_show_8_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 )
{
  {
  {
  sg_proc_seq_show_debug(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_show_9_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 )
{
  {
  {
  sg_proc_seq_show_dev(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_10_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                 struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  dev_seq_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_11_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                 struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  dev_seq_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_12_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                 struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  dev_seq_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_13_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                 struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  dev_seq_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_8_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  dev_seq_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_9_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  dev_seq_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_10_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                 void *arg2 )
{
  {
  {
  dev_seq_stop(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_11_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                 void *arg2 )
{
  {
  {
  dev_seq_stop(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_12_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                 void *arg2 )
{
  {
  {
  dev_seq_stop(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_13_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                 void *arg2 )
{
  {
  {
  dev_seq_stop(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_8_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  dev_seq_stop(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_9_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  dev_seq_stop(arg1, arg2);
  }
  return;
}
}
int ldv_seq_open(int arg0 , struct file *arg1 , struct seq_operations *arg2 )
{
  struct seq_operations *ldv_17_ops_seq_operations ;
  struct seq_file *ldv_17_seq_file_seq_file ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(256UL);
  ldv_17_seq_file_seq_file = (struct seq_file *)tmp;
  ldv_17_ops_seq_operations = arg2;
  ldv_dispatch_register_17_1(ldv_17_seq_file_seq_file, ldv_17_ops_seq_operations);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_seq_operations_seq_instance_10(void *arg0 )
{
  void *ldv_10_ldv_param_10_1_default ;
  long long *ldv_10_ldv_param_4_1_default ;
  void *ldv_10_ldv_param_7_1_default ;
  long long *ldv_10_ldv_param_7_2_default ;
  void *ldv_10_ldv_param_8_1_default ;
  struct seq_operations *ldv_10_ops_seq_operations ;
  struct seq_file *ldv_10_seq_file_seq_file ;
  int ldv_10_started_default ;
  struct ldv_struct_seq_instance_8 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_8 *)arg0;
  ldv_10_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_8 *)0)) {
    {
    ldv_10_seq_file_seq_file = data->arg0;
    ldv_10_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_10;
  return;
  ldv_do_10:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_10_started_default == 1);
    tmp = ldv_undef_int();
    }
    {
    if (tmp == 1) {
      goto case_1;
    } else {
    }
    if (tmp == 2) {
      goto case_2;
    } else {
    }
    if (tmp == 3) {
      goto case_3;
    } else {
    }
    goto switch_default;
    case_1:
    {
    ldv_10_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_10_10(ldv_10_ops_seq_operations->stop, ldv_10_seq_file_seq_file,
                                ldv_10_ldv_param_10_1_default);
    ldv_free(ldv_10_ldv_param_10_1_default);
    ldv_10_started_default = 0;
    }
    goto ldv_do_10;
    case_2:
    {
    ldv_10_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_10_8(ldv_10_ops_seq_operations->show, ldv_10_seq_file_seq_file,
                               ldv_10_ldv_param_8_1_default);
    ldv_free(ldv_10_ldv_param_8_1_default);
    }
    goto ldv_do_10;
    goto ldv_do_10;
    case_3:
    {
    ldv_10_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_10_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_10_7(ldv_10_ops_seq_operations->next, ldv_10_seq_file_seq_file,
                               ldv_10_ldv_param_7_1_default, ldv_10_ldv_param_7_2_default);
    ldv_free(ldv_10_ldv_param_7_1_default);
    ldv_free((void *)ldv_10_ldv_param_7_2_default);
    }
    goto ldv_do_10;
    goto ldv_do_10;
    goto ldv_do_10;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_10_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_10_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_10_4(ldv_10_ops_seq_operations->start, ldv_10_seq_file_seq_file,
                                  ldv_10_ldv_param_4_1_default);
      ldv_free((void *)ldv_10_ldv_param_4_1_default);
      ldv_10_started_default = 1;
      }
      goto ldv_do_10;
    } else {
      return;
    }
  }
  return;
}
}
void ldv_seq_operations_seq_instance_11(void *arg0 )
{
  void *ldv_11_ldv_param_10_1_default ;
  long long *ldv_11_ldv_param_4_1_default ;
  void *ldv_11_ldv_param_7_1_default ;
  long long *ldv_11_ldv_param_7_2_default ;
  void *ldv_11_ldv_param_8_1_default ;
  struct seq_operations *ldv_11_ops_seq_operations ;
  struct seq_file *ldv_11_seq_file_seq_file ;
  int ldv_11_started_default ;
  struct ldv_struct_seq_instance_8 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_8 *)arg0;
  ldv_11_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_8 *)0)) {
    {
    ldv_11_seq_file_seq_file = data->arg0;
    ldv_11_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_11;
  return;
  ldv_do_11:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_11_started_default == 1);
    tmp = ldv_undef_int();
    }
    {
    if (tmp == 1) {
      goto case_1;
    } else {
    }
    if (tmp == 2) {
      goto case_2;
    } else {
    }
    if (tmp == 3) {
      goto case_3;
    } else {
    }
    goto switch_default;
    case_1:
    {
    ldv_11_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_11_10(ldv_11_ops_seq_operations->stop, ldv_11_seq_file_seq_file,
                                ldv_11_ldv_param_10_1_default);
    ldv_free(ldv_11_ldv_param_10_1_default);
    ldv_11_started_default = 0;
    }
    goto ldv_do_11;
    case_2:
    {
    ldv_11_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_11_8(ldv_11_ops_seq_operations->show, ldv_11_seq_file_seq_file,
                               ldv_11_ldv_param_8_1_default);
    ldv_free(ldv_11_ldv_param_8_1_default);
    }
    goto ldv_do_11;
    goto ldv_do_11;
    case_3:
    {
    ldv_11_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_11_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_11_7(ldv_11_ops_seq_operations->next, ldv_11_seq_file_seq_file,
                               ldv_11_ldv_param_7_1_default, ldv_11_ldv_param_7_2_default);
    ldv_free(ldv_11_ldv_param_7_1_default);
    ldv_free((void *)ldv_11_ldv_param_7_2_default);
    }
    goto ldv_do_11;
    goto ldv_do_11;
    goto ldv_do_11;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_11_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_11_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_11_4(ldv_11_ops_seq_operations->start, ldv_11_seq_file_seq_file,
                                  ldv_11_ldv_param_4_1_default);
      ldv_free((void *)ldv_11_ldv_param_4_1_default);
      ldv_11_started_default = 1;
      }
      goto ldv_do_11;
    } else {
      return;
    }
  }
  return;
}
}
void ldv_seq_operations_seq_instance_12(void *arg0 )
{
  void *ldv_12_ldv_param_10_1_default ;
  long long *ldv_12_ldv_param_4_1_default ;
  void *ldv_12_ldv_param_7_1_default ;
  long long *ldv_12_ldv_param_7_2_default ;
  void *ldv_12_ldv_param_8_1_default ;
  struct seq_operations *ldv_12_ops_seq_operations ;
  struct seq_file *ldv_12_seq_file_seq_file ;
  int ldv_12_started_default ;
  struct ldv_struct_seq_instance_8 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_8 *)arg0;
  ldv_12_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_8 *)0)) {
    {
    ldv_12_seq_file_seq_file = data->arg0;
    ldv_12_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_12;
  return;
  ldv_do_12:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_12_started_default == 1);
    tmp = ldv_undef_int();
    }
    {
    if (tmp == 1) {
      goto case_1;
    } else {
    }
    if (tmp == 2) {
      goto case_2;
    } else {
    }
    if (tmp == 3) {
      goto case_3;
    } else {
    }
    goto switch_default;
    case_1:
    {
    ldv_12_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_12_10(ldv_12_ops_seq_operations->stop, ldv_12_seq_file_seq_file,
                                ldv_12_ldv_param_10_1_default);
    ldv_free(ldv_12_ldv_param_10_1_default);
    ldv_12_started_default = 0;
    }
    goto ldv_do_12;
    case_2:
    {
    ldv_12_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_12_8(ldv_12_ops_seq_operations->show, ldv_12_seq_file_seq_file,
                               ldv_12_ldv_param_8_1_default);
    ldv_free(ldv_12_ldv_param_8_1_default);
    }
    goto ldv_do_12;
    goto ldv_do_12;
    case_3:
    {
    ldv_12_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_12_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_12_7(ldv_12_ops_seq_operations->next, ldv_12_seq_file_seq_file,
                               ldv_12_ldv_param_7_1_default, ldv_12_ldv_param_7_2_default);
    ldv_free(ldv_12_ldv_param_7_1_default);
    ldv_free((void *)ldv_12_ldv_param_7_2_default);
    }
    goto ldv_do_12;
    goto ldv_do_12;
    goto ldv_do_12;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_12_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_12_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_12_4(ldv_12_ops_seq_operations->start, ldv_12_seq_file_seq_file,
                                  ldv_12_ldv_param_4_1_default);
      ldv_free((void *)ldv_12_ldv_param_4_1_default);
      ldv_12_started_default = 1;
      }
      goto ldv_do_12;
    } else {
      return;
    }
  }
  return;
}
}
void ldv_seq_operations_seq_instance_13(void *arg0 )
{
  void *ldv_13_ldv_param_10_1_default ;
  long long *ldv_13_ldv_param_4_1_default ;
  void *ldv_13_ldv_param_7_1_default ;
  long long *ldv_13_ldv_param_7_2_default ;
  void *ldv_13_ldv_param_8_1_default ;
  struct seq_operations *ldv_13_ops_seq_operations ;
  struct seq_file *ldv_13_seq_file_seq_file ;
  int ldv_13_started_default ;
  struct ldv_struct_seq_instance_8 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_8 *)arg0;
  ldv_13_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_8 *)0)) {
    {
    ldv_13_seq_file_seq_file = data->arg0;
    ldv_13_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_13;
  return;
  ldv_do_13:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_13_started_default == 1);
    tmp = ldv_undef_int();
    }
    {
    if (tmp == 1) {
      goto case_1;
    } else {
    }
    if (tmp == 2) {
      goto case_2;
    } else {
    }
    if (tmp == 3) {
      goto case_3;
    } else {
    }
    goto switch_default;
    case_1:
    {
    ldv_13_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_13_10(ldv_13_ops_seq_operations->stop, ldv_13_seq_file_seq_file,
                                ldv_13_ldv_param_10_1_default);
    ldv_free(ldv_13_ldv_param_10_1_default);
    ldv_13_started_default = 0;
    }
    goto ldv_do_13;
    case_2:
    {
    ldv_13_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_13_8(ldv_13_ops_seq_operations->show, ldv_13_seq_file_seq_file,
                               ldv_13_ldv_param_8_1_default);
    ldv_free(ldv_13_ldv_param_8_1_default);
    }
    goto ldv_do_13;
    goto ldv_do_13;
    case_3:
    {
    ldv_13_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_13_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_13_7(ldv_13_ops_seq_operations->next, ldv_13_seq_file_seq_file,
                               ldv_13_ldv_param_7_1_default, ldv_13_ldv_param_7_2_default);
    ldv_free(ldv_13_ldv_param_7_1_default);
    ldv_free((void *)ldv_13_ldv_param_7_2_default);
    }
    goto ldv_do_13;
    goto ldv_do_13;
    goto ldv_do_13;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_13_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_13_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_13_4(ldv_13_ops_seq_operations->start, ldv_13_seq_file_seq_file,
                                  ldv_13_ldv_param_4_1_default);
      ldv_free((void *)ldv_13_ldv_param_4_1_default);
      ldv_13_started_default = 1;
      }
      goto ldv_do_13;
    } else {
      return;
    }
  }
  return;
}
}
void ldv_seq_operations_seq_instance_8(void *arg0 )
{
  void *ldv_8_ldv_param_10_1_default ;
  long long *ldv_8_ldv_param_4_1_default ;
  void *ldv_8_ldv_param_7_1_default ;
  long long *ldv_8_ldv_param_7_2_default ;
  void *ldv_8_ldv_param_8_1_default ;
  struct seq_operations *ldv_8_ops_seq_operations ;
  struct seq_file *ldv_8_seq_file_seq_file ;
  int ldv_8_started_default ;
  struct ldv_struct_seq_instance_8 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_8 *)arg0;
  ldv_8_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_8 *)0)) {
    {
    ldv_8_seq_file_seq_file = data->arg0;
    ldv_8_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_8;
  return;
  ldv_do_8:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_8_started_default == 1);
    tmp = ldv_undef_int();
    }
    {
    if (tmp == 1) {
      goto case_1;
    } else {
    }
    if (tmp == 2) {
      goto case_2;
    } else {
    }
    if (tmp == 3) {
      goto case_3;
    } else {
    }
    goto switch_default;
    case_1:
    {
    ldv_8_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_8_10(ldv_8_ops_seq_operations->stop, ldv_8_seq_file_seq_file,
                               ldv_8_ldv_param_10_1_default);
    ldv_free(ldv_8_ldv_param_10_1_default);
    ldv_8_started_default = 0;
    }
    goto ldv_do_8;
    case_2:
    {
    ldv_8_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_8_8(ldv_8_ops_seq_operations->show, ldv_8_seq_file_seq_file,
                              ldv_8_ldv_param_8_1_default);
    ldv_free(ldv_8_ldv_param_8_1_default);
    }
    goto ldv_do_8;
    goto ldv_do_8;
    case_3:
    {
    ldv_8_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_8_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_8_7(ldv_8_ops_seq_operations->next, ldv_8_seq_file_seq_file,
                              ldv_8_ldv_param_7_1_default, ldv_8_ldv_param_7_2_default);
    ldv_free(ldv_8_ldv_param_7_1_default);
    ldv_free((void *)ldv_8_ldv_param_7_2_default);
    }
    goto ldv_do_8;
    goto ldv_do_8;
    goto ldv_do_8;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_8_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_8_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_8_4(ldv_8_ops_seq_operations->start, ldv_8_seq_file_seq_file,
                                 ldv_8_ldv_param_4_1_default);
      ldv_free((void *)ldv_8_ldv_param_4_1_default);
      ldv_8_started_default = 1;
      }
      goto ldv_do_8;
    } else {
      return;
    }
  }
  return;
}
}
void ldv_seq_operations_seq_instance_9(void *arg0 )
{
  void *ldv_9_ldv_param_10_1_default ;
  long long *ldv_9_ldv_param_4_1_default ;
  void *ldv_9_ldv_param_7_1_default ;
  long long *ldv_9_ldv_param_7_2_default ;
  void *ldv_9_ldv_param_8_1_default ;
  struct seq_operations *ldv_9_ops_seq_operations ;
  struct seq_file *ldv_9_seq_file_seq_file ;
  int ldv_9_started_default ;
  struct ldv_struct_seq_instance_8 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_8 *)arg0;
  ldv_9_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_8 *)0)) {
    {
    ldv_9_seq_file_seq_file = data->arg0;
    ldv_9_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_9;
  return;
  ldv_do_9:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_9_started_default == 1);
    tmp = ldv_undef_int();
    }
    {
    if (tmp == 1) {
      goto case_1;
    } else {
    }
    if (tmp == 2) {
      goto case_2;
    } else {
    }
    if (tmp == 3) {
      goto case_3;
    } else {
    }
    goto switch_default;
    case_1:
    {
    ldv_9_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_9_10(ldv_9_ops_seq_operations->stop, ldv_9_seq_file_seq_file,
                               ldv_9_ldv_param_10_1_default);
    ldv_free(ldv_9_ldv_param_10_1_default);
    ldv_9_started_default = 0;
    }
    goto ldv_do_9;
    case_2:
    {
    ldv_9_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_9_8(ldv_9_ops_seq_operations->show, ldv_9_seq_file_seq_file,
                              ldv_9_ldv_param_8_1_default);
    ldv_free(ldv_9_ldv_param_8_1_default);
    }
    goto ldv_do_9;
    goto ldv_do_9;
    case_3:
    {
    ldv_9_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_9_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_9_7(ldv_9_ops_seq_operations->next, ldv_9_seq_file_seq_file,
                              ldv_9_ldv_param_7_1_default, ldv_9_ldv_param_7_2_default);
    ldv_free(ldv_9_ldv_param_7_1_default);
    ldv_free((void *)ldv_9_ldv_param_7_2_default);
    }
    goto ldv_do_9;
    goto ldv_do_9;
    goto ldv_do_9;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_9_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_9_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_9_4(ldv_9_ops_seq_operations->start, ldv_9_seq_file_seq_file,
                                 ldv_9_ldv_param_4_1_default);
      ldv_free((void *)ldv_9_ldv_param_4_1_default);
      ldv_9_started_default = 1;
      }
      goto ldv_do_9;
    } else {
      return;
    }
  }
  return;
}
}
void ldv_struct_class_interface_dummy_resourceless_instance_14(void *arg0 )
{
  int (*ldv_14_callback_add_dev)(struct device * , struct class_interface * ) ;
  void (*ldv_14_callback_remove_dev)(struct device * , struct class_interface * ) ;
  struct class_interface *ldv_14_container_struct_class_interface ;
  struct device *ldv_14_container_struct_device_ptr ;
  struct ldv_struct_dummy_resourceless_instance_14 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_14 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_14 *)0)) {
    {
    ldv_14_container_struct_class_interface = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_14;
  return;
  ldv_call_14:
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_14_7(ldv_14_callback_remove_dev, ldv_14_container_struct_device_ptr,
                                                ldv_14_container_struct_class_interface);
  }
  goto ldv_call_14;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_14_3(ldv_14_callback_add_dev, ldv_14_container_struct_device_ptr,
                                                ldv_14_container_struct_class_interface);
  }
  goto ldv_call_14;
  goto ldv_call_14;
  case_3: ;
  return;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_vm_operations_struct_dummy_resourceless_instance_15(void *arg0 )
{
  int (*ldv_15_callback_fault)(struct vm_area_struct * , struct vm_fault * ) ;
  struct vm_area_struct *ldv_15_container_struct_vm_area_struct_ptr ;
  struct vm_fault *ldv_15_container_struct_vm_fault_ptr ;
  int tmp ;
  {
  goto ldv_call_15;
  return;
  ldv_call_15:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_15_3(ldv_15_callback_fault, ldv_15_container_struct_vm_area_struct_ptr,
                                                  ldv_15_container_struct_vm_fault_ptr);
    }
    goto ldv_call_15;
  } else {
    return;
  }
  return;
}
}
__inline static void *ERR_PTR(long error )
{
  void *tmp ;
  {
  {
  tmp = ldv_err_ptr(error);
  }
  return (tmp);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_ptr_err(ptr);
  }
  return (tmp);
}
}
__inline static int atomic_sub_and_test(int i , atomic_t *v )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_usb_dev_atomic_sub_and_test(i, v);
  }
  return (tmp);
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_inc(v);
  }
  return;
}
}
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_usb_dev_atomic_add_return(i, v);
  }
  return (tmp);
}
}
void *ldv_malloc(size_t size ) ;
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct page));
  }
  return ((struct page *)tmp);
}
}
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_malloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = ldv_kzalloc(size, flags);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_96(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_open_rel_lock_of_sg_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_open_rel_lock_of_sg_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_open_rel_lock_of_sg_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_open_rel_lock_of_sg_device(ldv_func_arg1);
  }
  return;
}
}
static int ldv_nonseekable_open_100(struct inode *ldv_func_arg1 , struct file *ldv_func_arg2 )
{
  {
  return (0);
}
}
static void ldv_mutex_lock_101(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_open_rel_lock_of_sg_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_102(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_open_rel_lock_of_sg_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_open_rel_lock_of_sg_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_open_rel_lock_of_sg_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_open_rel_lock_of_sg_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_blk_execute_rq_nowait_106(struct request_queue *ldv_func_arg1 , struct gendisk *ldv_func_arg2 ,
                                          struct request *ldv_func_arg3 , int ldv_func_arg4 ,
                                          void (*ldv_func_arg5)(struct request * ,
                                                                int ) )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  sg_rq_end_io(ldv_func_arg3, tmp);
  }
  return;
}
}
static void ldv___blk_put_request_107(struct request_queue *ldv_func_arg1 , struct request *ldv_func_arg2 )
{
  {
  {
  ldv_linux_block_request_put_blk_rq();
  }
  return;
}
}
static int ldv_idr_alloc_108(struct idr *ldv_func_arg1 , void *ldv_func_arg2 , int ldv_func_arg3 ,
                             int ldv_func_arg4 , gfp_t ldv_func_arg5 )
{
  int tmp ;
  {
  {
  ldv_linux_lib_idr_idr_alloc_sg_index_idr();
  tmp = ldv_undef_int();
  }
  return (tmp);
}
}
static struct gendisk *ldv_alloc_disk_109(int minors )
{
  ldv_func_ret_type___0 ldv_func_res ;
  struct gendisk *tmp ;
  struct gendisk *tmp___0 ;
  {
  {
  tmp = alloc_disk(minors);
  ldv_func_res = tmp;
  tmp___0 = ldv_linux_block_genhd_alloc_disk();
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_idr_remove_110(struct idr *ldv_func_arg1 , int ldv_func_arg2 )
{
  {
  {
  ldv_linux_lib_idr_idr_remove_sg_index_idr();
  }
  return;
}
}
static void ldv_put_disk_111(struct gendisk *disk )
{
  {
  {
  ldv_linux_block_genhd_put_disk(disk);
  put_disk(disk);
  }
  return;
}
}
static void ldv_cdev_del_112(struct cdev *ldv_func_arg1 )
{
  {
  {
  cdev_del(ldv_func_arg1);
  ldv_cdev_del((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_idr_remove_113(struct idr *ldv_func_arg1 , int ldv_func_arg2 )
{
  {
  {
  ldv_linux_lib_idr_idr_remove_sg_index_idr();
  }
  return;
}
}
static void ldv_put_disk_114(struct gendisk *disk )
{
  {
  {
  ldv_linux_block_genhd_put_disk(disk);
  put_disk(disk);
  }
  return;
}
}
static void ldv_cdev_del_115(struct cdev *ldv_func_arg1 )
{
  {
  {
  cdev_del(ldv_func_arg1);
  ldv_cdev_del((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_register_chrdev_region_116(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          char const *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int res1 ;
  int tmp___0 ;
  int res2 ;
  int tmp___1 ;
  {
  {
  tmp = register_chrdev_region(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv_linux_fs_char_dev_register_chrdev_region();
  res1 = tmp___0;
  tmp___1 = ldv_linux_usb_gadget_register_chrdev_region();
  res2 = tmp___1;
  ldv_assume(res1 == res2);
  }
  return (res1);
  return (ldv_func_res);
}
}
static int ldv_scsi_register_interface_117(struct class_interface *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = scsi_register_interface(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_scsi_register_interface(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_class_destroy_118(struct class *cls )
{
  {
  {
  ldv_linux_drivers_base_class_destroy_class(cls);
  ldv_linux_usb_gadget_destroy_class(cls);
  }
  return;
}
}
static void ldv_unregister_chrdev_region_119(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 )
{
  {
  {
  unregister_chrdev_region(ldv_func_arg1, ldv_func_arg2);
  ldv_linux_fs_char_dev_unregister_chrdev_region();
  ldv_linux_usb_gadget_unregister_chrdev_region();
  }
  return;
}
}
static void ldv_class_interface_unregister_120(struct class_interface *ldv_func_arg1 )
{
  {
  {
  class_interface_unregister(ldv_func_arg1);
  ldv_class_interface_unregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_class_destroy_121(struct class *cls )
{
  {
  {
  ldv_linux_drivers_base_class_destroy_class(cls);
  ldv_linux_usb_gadget_destroy_class(cls);
  }
  return;
}
}
static void ldv_unregister_chrdev_region_122(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 )
{
  {
  {
  unregister_chrdev_region(ldv_func_arg1, ldv_func_arg2);
  ldv_linux_fs_char_dev_unregister_chrdev_region();
  ldv_linux_usb_gadget_unregister_chrdev_region();
  }
  return;
}
}
static void ldv_idr_destroy_123(struct idr *ldv_func_arg1 )
{
  {
  {
  ldv_linux_lib_idr_idr_destroy_sg_index_idr();
  }
  return;
}
}
static struct request *ldv_blk_get_request_124(struct request_queue *ldv_func_arg1 ,
                                               int ldv_func_arg2 , gfp_t ldv_func_arg3 )
{
  struct request *tmp ;
  {
  {
  tmp = ldv_linux_block_request_blk_get_request(ldv_func_arg3);
  }
  return (tmp);
}
}
static void ldv_blk_put_request_125(struct request *ldv_func_arg1 )
{
  {
  {
  ldv_linux_block_request_put_blk_rq();
  }
  return;
}
}
static void ldv___module_get_126(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_get(ldv_func_arg1);
  }
  return;
}
}
static void ldv_module_put_127(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
__inline static void *ldv_idr_find_128(struct idr *idr , int id )
{
  void *tmp ;
  {
  {
  ldv_linux_lib_idr_idr_find_sg_index_idr();
  tmp = ldv_undef_ptr();
  }
  return (tmp);
}
}
static int ldv_seq_open_129(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = seq_open(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_seq_open(ldv_func_res, ldv_func_arg1, (struct seq_operations *)ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_seq_open_130(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = seq_open(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_seq_open(ldv_func_res, ldv_func_arg1, (struct seq_operations *)ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_seq_open_131(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = seq_open(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_seq_open(ldv_func_res, ldv_func_arg1, (struct seq_operations *)ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_ldv_post_init_132(int ldv_func_arg1 )
{
  int tmp ;
  {
  {
  ldv_linux_net_register_reset_error_counter();
  ldv_linux_usb_register_reset_error_counter();
  tmp = ldv_post_init(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_ldv_check_final_state_133(void)
{
  {
  {
  ldv_linux_arch_io_check_final_state();
  ldv_linux_block_genhd_check_final_state();
  ldv_linux_block_queue_check_final_state();
  ldv_linux_block_request_check_final_state();
  ldv_linux_drivers_base_class_check_final_state();
  ldv_linux_fs_char_dev_check_final_state();
  ldv_linux_fs_sysfs_check_final_state();
  ldv_linux_kernel_locking_rwlock_check_final_state();
  ldv_linux_kernel_module_check_final_state();
  ldv_linux_kernel_rcu_update_lock_bh_check_final_state();
  ldv_linux_kernel_rcu_update_lock_sched_check_final_state();
  ldv_linux_kernel_rcu_update_lock_check_final_state();
  ldv_linux_kernel_rcu_srcu_check_final_state();
  ldv_linux_lib_idr_check_final_state();
  ldv_linux_mmc_sdio_func_check_final_state();
  ldv_linux_net_rtnetlink_check_final_state();
  ldv_linux_net_sock_check_final_state();
  ldv_linux_usb_coherent_check_final_state();
  ldv_linux_usb_gadget_check_final_state();
  ldv_linux_usb_urb_check_final_state();
  }
  return;
}
}
static void ldv_ldv_check_final_state_134(void)
{
  {
  {
  ldv_linux_arch_io_check_final_state();
  ldv_linux_block_genhd_check_final_state();
  ldv_linux_block_queue_check_final_state();
  ldv_linux_block_request_check_final_state();
  ldv_linux_drivers_base_class_check_final_state();
  ldv_linux_fs_char_dev_check_final_state();
  ldv_linux_fs_sysfs_check_final_state();
  ldv_linux_kernel_locking_rwlock_check_final_state();
  ldv_linux_kernel_module_check_final_state();
  ldv_linux_kernel_rcu_update_lock_bh_check_final_state();
  ldv_linux_kernel_rcu_update_lock_sched_check_final_state();
  ldv_linux_kernel_rcu_update_lock_check_final_state();
  ldv_linux_kernel_rcu_srcu_check_final_state();
  ldv_linux_lib_idr_check_final_state();
  ldv_linux_mmc_sdio_func_check_final_state();
  ldv_linux_net_rtnetlink_check_final_state();
  ldv_linux_net_sock_check_final_state();
  ldv_linux_usb_coherent_check_final_state();
  ldv_linux_usb_gadget_check_final_state();
  ldv_linux_usb_urb_check_final_state();
  }
  return;
}
}
static void ldv_ldv_initialize_135(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
void ldv_assert_linux_alloc_irq__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_irq__wrong_flags(int expr ) ;
bool ldv_in_interrupt_context(void) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags )
{
  bool tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_in_interrupt_context();
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  {
  ldv_assert_linux_alloc_irq__wrong_flags(tmp___0 || flags == 32U);
  }
  return;
}
}
void ldv_linux_alloc_irq_check_alloc_nonatomic(void)
{
  bool tmp ;
  {
  {
  tmp = ldv_in_interrupt_context();
  }
  if ((int )tmp) {
    {
    ldv_assert_linux_alloc_irq__nonatomic(0);
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_spinlock__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_spinlock__wrong_flags(int expr ) ;
int ldv_exclusive_spin_is_locked(void) ;
void ldv_linux_alloc_spinlock_check_alloc_flags(gfp_t flags )
{
  int tmp ;
  {
  if (flags != 32U && flags != 0U) {
    {
    tmp = ldv_exclusive_spin_is_locked();
    ldv_assert_linux_alloc_spinlock__wrong_flags(tmp == 0);
    }
  } else {
  }
  return;
}
}
void ldv_linux_alloc_spinlock_check_alloc_nonatomic(void)
{
  int tmp ;
  {
  {
  tmp = ldv_exclusive_spin_is_locked();
  ldv_assert_linux_alloc_spinlock__nonatomic(tmp == 0);
  }
  return;
}
}
void ldv_assert_linux_alloc_usb_lock__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_usb_lock__wrong_flags(int expr ) ;
int ldv_linux_alloc_usb_lock_lock = 1;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_linux_alloc_usb_lock_lock == 2) {
    {
    ldv_assert_linux_alloc_usb_lock__wrong_flags(flags == 16U || flags == 32U);
    }
  } else {
  }
  return;
}
}
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void)
{
  {
  {
  ldv_assert_linux_alloc_usb_lock__nonatomic(ldv_linux_alloc_usb_lock_lock == 1);
  }
  return;
}
}
void ldv_linux_alloc_usb_lock_usb_lock_device(void)
{
  {
  ldv_linux_alloc_usb_lock_lock = 2;
  return;
}
}
int ldv_linux_alloc_usb_lock_usb_trylock_device(void)
{
  int tmp ;
  {
  if (ldv_linux_alloc_usb_lock_lock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_alloc_usb_lock_lock = 2;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
int ldv_linux_alloc_usb_lock_usb_lock_device_for_reset(void)
{
  int tmp ;
  {
  if (ldv_linux_alloc_usb_lock_lock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_alloc_usb_lock_lock = 2;
      return (0);
    } else {
      return (-1);
    }
  } else {
    return (-1);
  }
}
}
void ldv_linux_alloc_usb_lock_usb_unlock_device(void)
{
  {
  ldv_linux_alloc_usb_lock_lock = 1;
  return;
}
}
void ldv_linux_usb_dev_atomic_add(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return;
}
}
void ldv_linux_usb_dev_atomic_sub(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  return;
}
}
int ldv_linux_usb_dev_atomic_sub_and_test(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
void ldv_linux_usb_dev_atomic_inc(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  return;
}
}
void ldv_linux_usb_dev_atomic_dec(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  return;
}
}
int ldv_linux_usb_dev_atomic_dec_and_test(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_linux_usb_dev_atomic_inc_and_test(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_linux_usb_dev_atomic_add_return(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter);
}
}
int ldv_linux_usb_dev_atomic_add_negative(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter < 0);
}
}
int ldv_linux_usb_dev_atomic_inc_short(short *v )
{
  {
  *v = (short )((unsigned int )((unsigned short )*v) + 1U);
  return ((int )*v);
}
}
void ldv_assert_linux_arch_io__less_initial_decrement(int expr ) ;
void ldv_assert_linux_arch_io__more_initial_at_exit(int expr ) ;
int ldv_linux_arch_io_iomem = 0;
void *ldv_linux_arch_io_io_mem_remap(void)
{
  void *ptr ;
  void *tmp ;
  {
  {
  tmp = ldv_undef_ptr();
  ptr = tmp;
  }
  if ((unsigned long )ptr != (unsigned long )((void *)0)) {
    ldv_linux_arch_io_iomem = ldv_linux_arch_io_iomem + 1;
    return (ptr);
  } else {
  }
  return (ptr);
}
}
void ldv_linux_arch_io_io_mem_unmap(void)
{
  {
  {
  ldv_assert_linux_arch_io__less_initial_decrement(ldv_linux_arch_io_iomem > 0);
  ldv_linux_arch_io_iomem = ldv_linux_arch_io_iomem - 1;
  }
  return;
}
}
void ldv_linux_arch_io_check_final_state(void)
{
  {
  {
  ldv_assert_linux_arch_io__more_initial_at_exit(ldv_linux_arch_io_iomem == 0);
  }
  return;
}
}
void ldv_assert_linux_block_genhd__delete_before_add(int expr ) ;
void ldv_assert_linux_block_genhd__double_allocation(int expr ) ;
void ldv_assert_linux_block_genhd__free_before_allocation(int expr ) ;
void ldv_assert_linux_block_genhd__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_block_genhd__use_before_allocation(int expr ) ;
static int ldv_linux_block_genhd_disk_state = 0;
struct gendisk *ldv_linux_block_genhd_alloc_disk(void)
{
  struct gendisk *res ;
  void *tmp ;
  {
  {
  tmp = ldv_undef_ptr();
  res = (struct gendisk *)tmp;
  ldv_assert_linux_block_genhd__double_allocation(ldv_linux_block_genhd_disk_state == 0);
  }
  if ((unsigned long )res != (unsigned long )((struct gendisk *)0)) {
    ldv_linux_block_genhd_disk_state = 1;
    return (res);
  } else {
  }
  return (res);
}
}
void ldv_linux_block_genhd_add_disk(void)
{
  {
  {
  ldv_assert_linux_block_genhd__use_before_allocation(ldv_linux_block_genhd_disk_state == 1);
  ldv_linux_block_genhd_disk_state = 2;
  }
  return;
}
}
void ldv_linux_block_genhd_del_gendisk(void)
{
  {
  {
  ldv_assert_linux_block_genhd__delete_before_add(ldv_linux_block_genhd_disk_state == 2);
  ldv_linux_block_genhd_disk_state = 1;
  }
  return;
}
}
void ldv_linux_block_genhd_put_disk(struct gendisk *disk )
{
  {
  if ((unsigned long )disk != (unsigned long )((struct gendisk *)0)) {
    {
    ldv_assert_linux_block_genhd__free_before_allocation(ldv_linux_block_genhd_disk_state > 0);
    ldv_linux_block_genhd_disk_state = 0;
    }
  } else {
  }
  return;
}
}
void ldv_linux_block_genhd_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_genhd__more_initial_at_exit(ldv_linux_block_genhd_disk_state == 0);
  }
  return;
}
}
void ldv_assert_linux_block_queue__double_allocation(int expr ) ;
void ldv_assert_linux_block_queue__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_block_queue__use_before_allocation(int expr ) ;
static int ldv_linux_block_queue_queue_state = 0;
struct request_queue *ldv_linux_block_queue_request_queue(void)
{
  struct request_queue *res ;
  void *tmp ;
  {
  {
  tmp = ldv_undef_ptr();
  res = (struct request_queue *)tmp;
  ldv_assert_linux_block_queue__double_allocation(ldv_linux_block_queue_queue_state == 0);
  }
  if ((unsigned long )res != (unsigned long )((struct request_queue *)0)) {
    ldv_linux_block_queue_queue_state = 1;
    return (res);
  } else {
  }
  return (res);
}
}
void ldv_linux_block_queue_blk_cleanup_queue(void)
{
  {
  {
  ldv_assert_linux_block_queue__use_before_allocation(ldv_linux_block_queue_queue_state == 1);
  ldv_linux_block_queue_queue_state = 0;
  }
  return;
}
}
void ldv_linux_block_queue_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_queue__more_initial_at_exit(ldv_linux_block_queue_queue_state == 0);
  }
  return;
}
}
void ldv_assert_linux_block_request__double_get(int expr ) ;
void ldv_assert_linux_block_request__double_put(int expr ) ;
void ldv_assert_linux_block_request__get_at_exit(int expr ) ;
long ldv_is_err(void const *ptr ) ;
int ldv_linux_block_request_blk_rq = 0;
struct request *ldv_linux_block_request_blk_get_request(gfp_t mask )
{
  struct request *res ;
  void *tmp ;
  {
  {
  ldv_assert_linux_block_request__double_get(ldv_linux_block_request_blk_rq == 0);
  tmp = ldv_undef_ptr();
  res = (struct request *)tmp;
  }
  if ((mask == 16U || mask == 208U) || mask == 16U) {
    {
    ldv_assume((unsigned long )res != (unsigned long )((struct request *)0));
    }
  } else {
  }
  if ((unsigned long )res != (unsigned long )((struct request *)0)) {
    ldv_linux_block_request_blk_rq = 1;
  } else {
  }
  return (res);
}
}
struct request *ldv_linux_block_request_blk_make_request(gfp_t mask )
{
  struct request *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  ldv_assert_linux_block_request__double_get(ldv_linux_block_request_blk_rq == 0);
  tmp = ldv_undef_ptr();
  res = (struct request *)tmp;
  ldv_assume((unsigned long )res != (unsigned long )((struct request *)0));
  tmp___0 = ldv_is_err((void const *)res);
  }
  if (tmp___0 == 0L) {
    ldv_linux_block_request_blk_rq = 1;
  } else {
  }
  return (res);
}
}
void ldv_linux_block_request_put_blk_rq(void)
{
  {
  {
  ldv_assert_linux_block_request__double_put(ldv_linux_block_request_blk_rq == 1);
  ldv_linux_block_request_blk_rq = 0;
  }
  return;
}
}
void ldv_linux_block_request_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_request__get_at_exit(ldv_linux_block_request_blk_rq == 0);
  }
  return;
}
}
void ldv_assert_linux_drivers_base_class__double_deregistration(int expr ) ;
void ldv_assert_linux_drivers_base_class__double_registration(int expr ) ;
void ldv_assert_linux_drivers_base_class__registered_at_exit(int expr ) ;
int ldv_undef_int_nonpositive(void) ;
int ldv_linux_drivers_base_class_usb_gadget_class = 0;
void *ldv_linux_drivers_base_class_create_class(void)
{
  void *is_got ;
  long tmp ;
  {
  {
  is_got = ldv_undef_ptr();
  ldv_assume((int )((long )is_got));
  tmp = ldv_is_err((void const *)is_got);
  }
  if (tmp == 0L) {
    {
    ldv_assert_linux_drivers_base_class__double_registration(ldv_linux_drivers_base_class_usb_gadget_class == 0);
    ldv_linux_drivers_base_class_usb_gadget_class = 1;
    }
  } else {
  }
  return (is_got);
}
}
int ldv_linux_drivers_base_class_register_class(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_drivers_base_class__double_registration(ldv_linux_drivers_base_class_usb_gadget_class == 0);
    ldv_linux_drivers_base_class_usb_gadget_class = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_drivers_base_class_unregister_class(void)
{
  {
  {
  ldv_assert_linux_drivers_base_class__double_deregistration(ldv_linux_drivers_base_class_usb_gadget_class == 1);
  ldv_linux_drivers_base_class_usb_gadget_class = 0;
  }
  return;
}
}
void ldv_linux_drivers_base_class_destroy_class(struct class *cls )
{
  long tmp ;
  {
  if ((unsigned long )cls == (unsigned long )((struct class *)0)) {
    return;
  } else {
    {
    tmp = ldv_is_err((void const *)cls);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
  }
  {
  ldv_linux_drivers_base_class_unregister_class();
  }
  return;
}
}
void ldv_linux_drivers_base_class_check_final_state(void)
{
  {
  {
  ldv_assert_linux_drivers_base_class__registered_at_exit(ldv_linux_drivers_base_class_usb_gadget_class == 0);
  }
  return;
}
}
void *ldv_xzalloc(size_t size ) ;
void *ldv_dev_get_drvdata(struct device const *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct device const *)0) && (unsigned long )dev->p != (unsigned long )((struct device_private * )0)) {
    return ((dev->p)->driver_data);
  } else {
  }
  return ((void *)0);
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data )
{
  void *tmp ;
  {
  {
  tmp = ldv_xzalloc(8UL);
  dev->p = (struct device_private *)tmp;
  (dev->p)->driver_data = data;
  }
  return (0);
}
}
void *ldv_zalloc(size_t size ) ;
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2176UL);
  master = (struct spi_master *)tmp;
  }
  if ((unsigned long )master == (unsigned long )((struct spi_master *)0)) {
    return ((struct spi_master *)0);
  } else {
  }
  {
  ldv_dev_set_drvdata(& master->dev, (void *)master + 1U);
  }
  return (master);
}
}
long ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 4294967295UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(4294967295L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(4294967295UL - (unsigned long )ptr));
}
}
long ldv_is_err_or_null(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    {
    tmp = ldv_is_err(ptr);
    }
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((long )tmp___0);
}
}
void ldv_assert_linux_fs_char_dev__double_deregistration(int expr ) ;
void ldv_assert_linux_fs_char_dev__double_registration(int expr ) ;
void ldv_assert_linux_fs_char_dev__registered_at_exit(int expr ) ;
int ldv_linux_fs_char_dev_usb_gadget_chrdev = 0;
int ldv_linux_fs_char_dev_register_chrdev(int major )
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_fs_char_dev__double_registration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
    ldv_linux_fs_char_dev_usb_gadget_chrdev = 1;
    }
    if (major == 0) {
      {
      is_reg = ldv_undef_int();
      ldv_assume(is_reg > 0);
      }
    } else {
    }
  } else {
  }
  return (is_reg);
}
}
int ldv_linux_fs_char_dev_register_chrdev_region(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_fs_char_dev__double_registration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
    ldv_linux_fs_char_dev_usb_gadget_chrdev = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_fs_char_dev_unregister_chrdev_region(void)
{
  {
  {
  ldv_assert_linux_fs_char_dev__double_deregistration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 1);
  ldv_linux_fs_char_dev_usb_gadget_chrdev = 0;
  }
  return;
}
}
void ldv_linux_fs_char_dev_check_final_state(void)
{
  {
  {
  ldv_assert_linux_fs_char_dev__registered_at_exit(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
  }
  return;
}
}
void ldv_assert_linux_fs_sysfs__less_initial_decrement(int expr ) ;
void ldv_assert_linux_fs_sysfs__more_initial_at_exit(int expr ) ;
int ldv_linux_fs_sysfs_sysfs = 0;
int ldv_linux_fs_sysfs_sysfs_create_group(void)
{
  int res ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int_nonpositive();
  res = tmp;
  }
  if (res == 0) {
    ldv_linux_fs_sysfs_sysfs = ldv_linux_fs_sysfs_sysfs + 1;
    return (0);
  } else {
  }
  return (res);
}
}
void ldv_linux_fs_sysfs_sysfs_remove_group(void)
{
  {
  {
  ldv_assert_linux_fs_sysfs__less_initial_decrement(ldv_linux_fs_sysfs_sysfs > 0);
  ldv_linux_fs_sysfs_sysfs = ldv_linux_fs_sysfs_sysfs - 1;
  }
  return;
}
}
void ldv_linux_fs_sysfs_check_final_state(void)
{
  {
  {
  ldv_assert_linux_fs_sysfs__more_initial_at_exit(ldv_linux_fs_sysfs_sysfs == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__double_write_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(int expr ) ;
int ldv_linux_kernel_locking_rwlock_rlock = 1;
int ldv_linux_kernel_locking_rwlock_wlock = 1;
void ldv_linux_kernel_locking_rwlock_read_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(ldv_linux_kernel_locking_rwlock_wlock == 1);
  ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + 1;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(ldv_linux_kernel_locking_rwlock_rlock > 1);
  ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + -1;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_write_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__double_write_lock(ldv_linux_kernel_locking_rwlock_wlock == 1);
  ldv_linux_kernel_locking_rwlock_wlock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_write_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(ldv_linux_kernel_locking_rwlock_wlock != 1);
  ldv_linux_kernel_locking_rwlock_wlock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_rwlock_read_trylock(void)
{
  int tmp ;
  {
  if (ldv_linux_kernel_locking_rwlock_wlock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
int ldv_linux_kernel_locking_rwlock_write_trylock(void)
{
  int tmp ;
  {
  if (ldv_linux_kernel_locking_rwlock_wlock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_kernel_locking_rwlock_wlock = 2;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
void ldv_linux_kernel_locking_rwlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(ldv_linux_kernel_locking_rwlock_rlock == 1);
  ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(ldv_linux_kernel_locking_rwlock_wlock == 1);
  }
  return;
}
}
void ldv_assert_linux_kernel_module__less_initial_decrement(int expr ) ;
void ldv_assert_linux_kernel_module__more_initial_at_exit(int expr ) ;
int ldv_linux_kernel_module_module_refcounter = 1;
void ldv_linux_kernel_module_module_get(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter + 1;
  } else {
  }
  return;
}
}
int ldv_linux_kernel_module_try_module_get(struct module *module )
{
  int tmp ;
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp == 1) {
      ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
  }
  return (0);
}
}
void ldv_linux_kernel_module_module_put(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    {
    ldv_assert_linux_kernel_module__less_initial_decrement(ldv_linux_kernel_module_module_refcounter > 1);
    ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter - 1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_kernel_module_module_put_and_exit(void)
{
  {
  {
  ldv_linux_kernel_module_module_put((struct module *)1);
  }
  LDV_LINUX_KERNEL_MODULE_STOP: ;
  goto LDV_LINUX_KERNEL_MODULE_STOP;
}
}
unsigned int ldv_linux_kernel_module_module_refcount(void)
{
  {
  return ((unsigned int )(ldv_linux_kernel_module_module_refcounter + -1));
}
}
void ldv_linux_kernel_module_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_module__more_initial_at_exit(ldv_linux_kernel_module_module_refcounter == 1);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_srcu__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_srcu_srcu_nested = 0;
void ldv_linux_kernel_rcu_srcu_srcu_read_lock(void)
{
  {
  ldv_linux_kernel_rcu_srcu_srcu_nested = ldv_linux_kernel_rcu_srcu_srcu_nested + 1;
  return;
}
}
void ldv_linux_kernel_rcu_srcu_srcu_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__more_unlocks(ldv_linux_kernel_rcu_srcu_srcu_nested > 0);
  ldv_linux_kernel_rcu_srcu_srcu_nested = ldv_linux_kernel_rcu_srcu_srcu_nested - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(ldv_linux_kernel_rcu_srcu_srcu_nested == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_srcu_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(ldv_linux_kernel_rcu_srcu_srcu_nested == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = 0;
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_lock_bh(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_unlock_bh(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh > 0);
  ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = 0;
void ldv_linux_kernel_rcu_update_lock_sched_rcu_read_lock_sched(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_rcu_read_unlock_sched(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched > 0);
  ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_rcu_nested = 0;
void ldv_linux_kernel_rcu_update_lock_rcu_read_lock(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_rcu_nested = ldv_linux_kernel_rcu_update_lock_rcu_nested + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_rcu_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(ldv_linux_kernel_rcu_update_lock_rcu_nested > 0);
  ldv_linux_kernel_rcu_update_lock_rcu_nested = ldv_linux_kernel_rcu_update_lock_rcu_nested - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_rcu_nested == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(ldv_linux_kernel_rcu_update_lock_rcu_nested == 0);
  }
  return;
}
}
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_filter_positive_int(int val )
{
  {
  {
  ldv_assume(val <= 0);
  }
  return (val);
}
}
int ldv_post_init(int init_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(init_ret_val);
  }
  return (tmp);
}
}
int ldv_post_probe(int probe_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(probe_ret_val);
  }
  return (tmp);
}
}
int ldv_filter_err_code(int ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(ret_val);
  }
  return (tmp);
}
}
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
static bool __ldv_in_interrupt_context = 0;
void ldv_switch_to_interrupt_context(void)
{
  {
  __ldv_in_interrupt_context = 1;
  return;
}
}
void ldv_switch_to_process_context(void)
{
  {
  __ldv_in_interrupt_context = 0;
  return;
}
}
bool ldv_in_interrupt_context(void)
{
  {
  return (__ldv_in_interrupt_context);
}
}
void ldv_assert_linux_lib_find_bit__offset_out_of_range(int expr ) ;
extern int nr_cpu_ids ;
unsigned long ldv_undef_ulong(void) ;
unsigned long ldv_linux_lib_find_bit_find_next_bit(unsigned long size , unsigned long offset )
{
  unsigned long nondet ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_undef_ulong();
  nondet = tmp;
  ldv_assert_linux_lib_find_bit__offset_out_of_range(offset <= size);
  ldv_assume(nondet <= size);
  ldv_assume(1);
  }
  return (nondet);
}
}
unsigned long ldv_linux_lib_find_bit_find_first_bit(unsigned long size )
{
  unsigned long nondet ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_undef_ulong();
  nondet = tmp;
  ldv_assume(nondet <= size);
  ldv_assume(1);
  }
  return (nondet);
}
}
void ldv_linux_lib_find_bit_initialize(void)
{
  {
  {
  ldv_assume(nr_cpu_ids > 0);
  }
  return;
}
}
void *ldv_kzalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_zalloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
void ldv_assert_linux_mmc_sdio_func__double_claim(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__release_without_claim(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__unreleased_at_exit(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__wrong_params(int expr ) ;
unsigned short ldv_linux_mmc_sdio_func_sdio_element = 0U;
void ldv_linux_mmc_sdio_func_check_context(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__wrong_params((int )ldv_linux_mmc_sdio_func_sdio_element == ((func->card)->host)->index);
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_sdio_claim_host(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__double_claim((unsigned int )ldv_linux_mmc_sdio_func_sdio_element == 0U);
  ldv_linux_mmc_sdio_func_sdio_element = (unsigned short )((func->card)->host)->index;
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_sdio_release_host(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__release_without_claim((int )ldv_linux_mmc_sdio_func_sdio_element == ((func->card)->host)->index);
  ldv_linux_mmc_sdio_func_sdio_element = 0U;
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_check_final_state(void)
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__unreleased_at_exit((unsigned int )ldv_linux_mmc_sdio_func_sdio_element == 0U);
  }
  return;
}
}
void ldv_assert_linux_net_register__wrong_return_value(int expr ) ;
int ldv_pre_register_netdev(void) ;
int ldv_linux_net_register_probe_state = 0;
int ldv_pre_register_netdev(void)
{
  int nondet ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  nondet = tmp;
  }
  if (nondet < 0) {
    ldv_linux_net_register_probe_state = 1;
    return (nondet);
  } else {
    return (0);
  }
}
}
void ldv_linux_net_register_reset_error_counter(void)
{
  {
  ldv_linux_net_register_probe_state = 0;
  return;
}
}
void ldv_linux_net_register_check_return_value_probe(int retval )
{
  {
  if (ldv_linux_net_register_probe_state == 1) {
    {
    ldv_assert_linux_net_register__wrong_return_value(retval != 0);
    }
  } else {
  }
  {
  ldv_linux_net_register_reset_error_counter();
  }
  return;
}
}
void ldv_assert_linux_net_rtnetlink__double_lock(int expr ) ;
void ldv_assert_linux_net_rtnetlink__double_unlock(int expr ) ;
void ldv_assert_linux_net_rtnetlink__lock_on_exit(int expr ) ;
int rtnllocknumber = 0;
void ldv_linux_net_rtnetlink_past_rtnl_unlock(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__double_unlock(rtnllocknumber == 1);
  rtnllocknumber = 0;
  }
  return;
}
}
void ldv_linux_net_rtnetlink_past_rtnl_lock(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__double_lock(rtnllocknumber == 0);
  rtnllocknumber = 1;
  }
  return;
}
}
void ldv_linux_net_rtnetlink_before_ieee80211_unregister_hw(void)
{
  {
  {
  ldv_linux_net_rtnetlink_past_rtnl_lock();
  ldv_linux_net_rtnetlink_past_rtnl_unlock();
  }
  return;
}
}
int ldv_linux_net_rtnetlink_rtnl_is_locked(void)
{
  int tmp ;
  {
  if (rtnllocknumber != 0) {
    return (rtnllocknumber);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_net_rtnetlink_rtnl_trylock(void)
{
  int tmp ;
  {
  {
  ldv_assert_linux_net_rtnetlink__double_lock(rtnllocknumber == 0);
  tmp = ldv_linux_net_rtnetlink_rtnl_is_locked();
  }
  if (tmp == 0) {
    rtnllocknumber = 1;
    return (1);
  } else {
    return (0);
  }
}
}
void ldv_linux_net_rtnetlink_check_final_state(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__lock_on_exit(rtnllocknumber == 0);
  }
  return;
}
}
void ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(int expr ) ;
void ldv_assert_linux_net_sock__double_release(int expr ) ;
int locksocknumber = 0;
void ldv_linux_net_sock_past_lock_sock_nested(void)
{
  {
  locksocknumber = locksocknumber + 1;
  return;
}
}
bool ldv_linux_net_sock_lock_sock_fast(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    locksocknumber = locksocknumber + 1;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_linux_net_sock_unlock_sock_fast(void)
{
  {
  {
  ldv_assert_linux_net_sock__double_release(locksocknumber > 0);
  locksocknumber = locksocknumber - 1;
  }
  return;
}
}
void ldv_linux_net_sock_before_release_sock(void)
{
  {
  {
  ldv_assert_linux_net_sock__double_release(locksocknumber > 0);
  locksocknumber = locksocknumber - 1;
  }
  return;
}
}
void ldv_linux_net_sock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(locksocknumber == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_coherent__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_coherent__more_initial_at_exit(int expr ) ;
int ldv_linux_usb_coherent_coherent_state = 0;
void *ldv_linux_usb_coherent_usb_alloc_coherent(void)
{
  void *arbitrary_memory ;
  void *tmp ;
  {
  {
  tmp = ldv_undef_ptr();
  arbitrary_memory = tmp;
  }
  if ((unsigned long )arbitrary_memory == (unsigned long )((void *)0)) {
    return (arbitrary_memory);
  } else {
  }
  ldv_linux_usb_coherent_coherent_state = ldv_linux_usb_coherent_coherent_state + 1;
  return (arbitrary_memory);
}
}
void ldv_linux_usb_coherent_usb_free_coherent(void *addr )
{
  {
  if ((unsigned long )addr != (unsigned long )((void *)0)) {
    {
    ldv_assert_linux_usb_coherent__less_initial_decrement(ldv_linux_usb_coherent_coherent_state > 0);
    ldv_linux_usb_coherent_coherent_state = ldv_linux_usb_coherent_coherent_state + -1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_coherent_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_coherent__more_initial_at_exit(ldv_linux_usb_coherent_coherent_state == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_usb_dev__probe_failed(int expr ) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr ) ;
ldv_map LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS ;
struct usb_device *ldv_linux_usb_dev_usb_get_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS != 0 ? LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS + 1 : 1;
  } else {
  }
  return (dev);
}
}
void ldv_linux_usb_dev_usb_put_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    {
    ldv_assert_linux_usb_dev__unincremented_counter_decrement(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS != 0);
    ldv_assert_linux_usb_dev__less_initial_decrement(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS > 0);
    }
    if (LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS > 1) {
      LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS + -1;
    } else {
      LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = 0;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_dev_check_return_value_probe(int retval )
{
  {
  if (retval != 0) {
    {
    ldv_assert_linux_usb_dev__probe_failed(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS == 0);
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_dev_initialize(void)
{
  {
  LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = 0;
  return;
}
}
void ldv_linux_usb_dev_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_dev__more_initial_at_exit(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(int expr ) ;
void ldv_assert_linux_usb_gadget__double_usb_gadget_registration(int expr ) ;
void ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(int expr ) ;
int ldv_linux_usb_gadget_usb_gadget = 0;
void *ldv_linux_usb_gadget_create_class(void)
{
  void *is_got ;
  long tmp ;
  {
  {
  is_got = ldv_undef_ptr();
  ldv_assume((int )((long )is_got));
  tmp = ldv_is_err((void const *)is_got);
  }
  if (tmp == 0L) {
    {
    ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_got);
}
}
int ldv_linux_usb_gadget_register_class(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_class(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
void ldv_linux_usb_gadget_destroy_class(struct class *cls )
{
  long tmp ;
  {
  if ((unsigned long )cls == (unsigned long )((struct class *)0)) {
    return;
  } else {
    {
    tmp = ldv_is_err((void const *)cls);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
  }
  {
  ldv_linux_usb_gadget_unregister_class();
  }
  return;
}
}
int ldv_linux_usb_gadget_register_chrdev(int major )
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
    if (major == 0) {
      {
      is_reg = ldv_undef_int();
      ldv_assume(is_reg > 0);
      }
    } else {
    }
  } else {
  }
  return (is_reg);
}
}
int ldv_linux_usb_gadget_register_chrdev_region(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_chrdev_region(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
int ldv_linux_usb_gadget_register_usb_gadget(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__double_usb_gadget_registration(ldv_linux_usb_gadget_usb_gadget == 0);
    ldv_linux_usb_gadget_usb_gadget = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_usb_gadget(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(ldv_linux_usb_gadget_usb_gadget == 1);
  ldv_linux_usb_gadget_usb_gadget = 0;
  }
  return;
}
}
void ldv_linux_usb_gadget_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_register__wrong_return_value(int expr ) ;
int ldv_pre_usb_register_driver(void) ;
int ldv_linux_usb_register_probe_state = 0;
int ldv_pre_usb_register_driver(void)
{
  int nondet ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  nondet = tmp;
  }
  if (nondet < 0) {
    ldv_linux_usb_register_probe_state = 1;
    return (nondet);
  } else {
    return (0);
  }
}
}
void ldv_linux_usb_register_reset_error_counter(void)
{
  {
  ldv_linux_usb_register_probe_state = 0;
  return;
}
}
void ldv_linux_usb_register_check_return_value_probe(int retval )
{
  {
  if (ldv_linux_usb_register_probe_state == 1) {
    {
    ldv_assert_linux_usb_register__wrong_return_value(retval != 0);
    }
  } else {
  }
  {
  ldv_linux_usb_register_reset_error_counter();
  }
  return;
}
}
void ldv_assert_linux_usb_urb__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_urb__more_initial_at_exit(int expr ) ;
int ldv_linux_usb_urb_urb_state = 0;
struct urb *ldv_linux_usb_urb_usb_alloc_urb(void)
{
  void *arbitrary_memory ;
  void *tmp ;
  {
  {
  tmp = ldv_undef_ptr();
  arbitrary_memory = tmp;
  }
  if ((unsigned long )arbitrary_memory == (unsigned long )((void *)0)) {
    return ((struct urb *)arbitrary_memory);
  } else {
  }
  ldv_linux_usb_urb_urb_state = ldv_linux_usb_urb_urb_state + 1;
  return ((struct urb *)arbitrary_memory);
}
}
void ldv_linux_usb_urb_usb_free_urb(struct urb *urb )
{
  {
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    {
    ldv_assert_linux_usb_urb__less_initial_decrement(ldv_linux_usb_urb_urb_state > 0);
    ldv_linux_usb_urb_urb_state = ldv_linux_usb_urb_urb_state + -1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_urb_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_urb__more_initial_at_exit(ldv_linux_usb_urb_urb_state == 0);
  }
  return;
}
}
extern void ldv_assert(char const * , int ) ;
void ldv__builtin_trap(void) ;
void ldv_assume(int expression )
{
  {
  if (expression == 0) {
    ldv_assume_label: ;
    goto ldv_assume_label;
  } else {
  }
  return;
}
}
void ldv_stop(void)
{
  {
  ldv_stop_label: ;
  goto ldv_stop_label;
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  {
  ldv_assert("", 0);
  }
  return;
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
extern void *external_allocated_data(void) ;
void *ldv_calloc_unknown_size(void) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
extern void *memset(void * , int , size_t ) ;
void *ldv_malloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = malloc(size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc(size_t nmemb , size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = calloc(nmemb, size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc(1UL, size);
  }
  return (tmp);
}
}
void ldv_free(void *s )
{
  {
  {
  free(s);
  }
  return;
}
}
void *ldv_xmalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = malloc(size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_xzalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = calloc(1UL, size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_malloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    memset(res, 0, 8UL);
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
int ldv_undef_int_negative(void) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
int ldv_undef_int(void)
{
  int tmp ;
  {
  {
  tmp = __VERIFIER_nondet_int();
  }
  return (tmp);
}
}
void *ldv_undef_ptr(void)
{
  void *tmp ;
  {
  {
  tmp = __VERIFIER_nondet_pointer();
  }
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  {
  tmp = __VERIFIER_nondet_ulong();
  }
  return (tmp);
}
}
int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret < 0);
  }
  return (ret);
}
}
int ldv_undef_int_nonpositive(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret <= 0);
  }
  return (ret);
}
}
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data ) ;
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data ) ;
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) ) ;
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ) ;
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data )
{
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    {
    (*function)(data);
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data )
{
  int i ;
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    i = 0;
    goto ldv_1179;
    ldv_1178:
    {
    (*function)(data);
    i = i + 1;
    }
    ldv_1179: ;
    if (i < ldv_thread_set->number) {
      goto ldv_1178;
    } else {
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) )
{
  {
  return (0);
}
}
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) )
{
  {
  return (0);
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr ) ;
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode ;
void ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_i_mutex_of_inode(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt ,
                                                                              struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock ;
void ldv_linux_kernel_locking_mutex_mutex_lock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_lock(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_lock(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_lock(atomic_t *cnt ,
                                                                  struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_lock(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt ,
                                                                             struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_device(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_rel_lock_of_sg_device ;
void ldv_linux_kernel_locking_mutex_mutex_lock_open_rel_lock_of_sg_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_rel_lock_of_sg_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_rel_lock_of_sg_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_open_rel_lock_of_sg_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_rel_lock_of_sg_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_rel_lock_of_sg_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_open_rel_lock_of_sg_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_rel_lock_of_sg_device) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_open_rel_lock_of_sg_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_rel_lock_of_sg_device);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_open_rel_lock_of_sg_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_rel_lock_of_sg_device = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_open_rel_lock_of_sg_device(atomic_t *cnt ,
                                                                                        struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_open_rel_lock_of_sg_device(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_open_rel_lock_of_sg_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_rel_lock_of_sg_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_rel_lock_of_sg_device = 0;
  }
  return;
}
}
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_rel_lock_of_sg_device = 0;
  return;
}
}
void ldv_linux_kernel_locking_mutex_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_rel_lock_of_sg_device);
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2);
  ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_alloc_lock_of_task_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2);
  ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_i_lock_of_inode(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2);
  ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_node_size_lock_of_pglist_data(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_ptl = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_ptl == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 2);
  ldv_linux_kernel_locking_spinlock_spin_ptl = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ptl == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_ptl();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_ptl(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_ptl(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2);
  ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_siglock_of_sighand_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_linux_kernel_locking_spinlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ptl == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_assert_linux_kernel_sched_completion__double_init(int expr ) ;
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr ) ;
static int ldv_linux_kernel_sched_completion_completion = 0;
void ldv_linux_kernel_sched_completion_init_completion(void)
{
  {
  ldv_linux_kernel_sched_completion_completion = 1;
  return;
}
}
void ldv_linux_kernel_sched_completion_init_completion_macro(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__double_init(ldv_linux_kernel_sched_completion_completion != 0);
  ldv_linux_kernel_sched_completion_completion = 1;
  }
  return;
}
}
void ldv_linux_kernel_sched_completion_wait_for_completion(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__wait_without_init(ldv_linux_kernel_sched_completion_completion != 0);
  ldv_linux_kernel_sched_completion_completion = 2;
  }
  return;
}
}
void ldv_assert_linux_lib_idr__destroyed_before_usage(int expr ) ;
void ldv_assert_linux_lib_idr__double_init(int expr ) ;
void ldv_assert_linux_lib_idr__more_at_exit(int expr ) ;
void ldv_assert_linux_lib_idr__not_initialized(int expr ) ;
static int ldv_linux_lib_idr_idr_sg_index_idr = 0;
void ldv_linux_lib_idr_idr_init_sg_index_idr(void)
{
  {
  {
  ldv_assert_linux_lib_idr__double_init(ldv_linux_lib_idr_idr_sg_index_idr == 0);
  ldv_linux_lib_idr_idr_sg_index_idr = 1;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_alloc_sg_index_idr(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr_sg_index_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr_sg_index_idr != 3);
  ldv_linux_lib_idr_idr_sg_index_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_find_sg_index_idr(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr_sg_index_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr_sg_index_idr != 3);
  ldv_linux_lib_idr_idr_sg_index_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_remove_sg_index_idr(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr_sg_index_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr_sg_index_idr != 3);
  ldv_linux_lib_idr_idr_sg_index_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_destroy_sg_index_idr(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr_sg_index_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr_sg_index_idr != 3);
  ldv_linux_lib_idr_idr_sg_index_idr = 3;
  }
  return;
}
}
void ldv_linux_lib_idr_check_final_state(void)
{
  {
  {
  ldv_assert_linux_lib_idr__more_at_exit(ldv_linux_lib_idr_idr_sg_index_idr == 0 || ldv_linux_lib_idr_idr_sg_index_idr == 3);
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_rtnetlink__double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_net_rtnetlink__lock_on_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_net_rtnetlink__double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__double_write_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_lib_idr__double_init(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_lib_idr__not_initialized(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_lib_idr__destroyed_before_usage(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_lib_idr__more_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_sched_completion__double_init(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_register__wrong_return_value(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_fs_char_dev__double_registration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_fs_char_dev__double_deregistration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_fs_char_dev__registered_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_srcu__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_module__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_module__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_spinlock__wrong_flags(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_spinlock__nonatomic(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_lib_find_bit__offset_out_of_range(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_mmc_sdio_func__wrong_params(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_mmc_sdio_func__double_claim(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_mmc_sdio_func__release_without_claim(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_mmc_sdio_func__unreleased_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_coherent__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_coherent__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_net_sock__double_release(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__probe_failed(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__double_usb_gadget_registration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_usb_lock__wrong_flags(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_usb_lock__nonatomic(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_request__double_get(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_request__double_put(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_request__get_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_irq__wrong_flags(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_irq__nonatomic(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_drivers_base_class__double_registration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_drivers_base_class__double_deregistration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_drivers_base_class__registered_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_queue__double_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_queue__use_before_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_queue__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_genhd__double_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__use_before_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__delete_before_add(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__free_before_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_arch_io__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_arch_io__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_register__wrong_return_value(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_fs_sysfs__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_fs_sysfs__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_urb__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_urb__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
int __VERIFIER_nondet_int(void);
int ___ratelimit(struct ratelimit_state *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __free_pages(struct page *arg0, unsigned int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool __get_page_tail(struct page *arg0) {
  return __VERIFIER_nondet_bool();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __rwlock_init(rwlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __scsi_print_sense(const struct scsi_device *arg0, const char *arg1, const unsigned char *arg2, int arg3) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void *external_alloc(void);
struct gendisk *alloc_disk(int arg0) {
  return (struct gendisk *)external_alloc();
}
void blk_end_request_all(struct request *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int blk_rq_map_user(struct request_queue *arg0, struct request *arg1, struct rq_map_data *arg2, void *arg3, unsigned long arg4, gfp_t arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int blk_rq_map_user_iov(struct request_queue *arg0, struct request *arg1, struct rq_map_data *arg2, const struct iov_iter *arg3, gfp_t arg4) {
  return __VERIFIER_nondet_int();
}
void blk_rq_set_block_pc(struct request *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int blk_rq_unmap_user(struct bio *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int blk_trace_remove(struct request_queue *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int blk_trace_setup(struct request_queue *arg0, char *arg1, dev_t arg2, struct block_device *arg3, char *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int blk_trace_startstop(struct request_queue *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int blk_verify_command(unsigned char *arg0, fmode_t arg1) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int cdev_add(struct cdev *arg0, dev_t arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct cdev *cdev_alloc() {
  return (struct cdev *)external_alloc();
}
void cdev_del(struct cdev *arg0) {
  return;
}
void class_interface_unregister(struct class_interface *arg0) {
  return;
}
void *external_alloc(void);
struct device *device_create(struct class *arg0, struct device *arg1, dev_t arg2, void *arg3, const char *arg4, ...) {
  return (struct device *)external_alloc();
}
void device_destroy(struct class *arg0, dev_t arg1) {
  return;
}
void dump_page(struct page *arg0, const char *arg1) {
  return;
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int fasync_helper(int arg0, struct file *arg1, int arg2, struct fasync_struct **arg3) {
  return __VERIFIER_nondet_int();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int idr_for_each(struct idr *arg0, int (*arg1)(int, void *, void *), void *arg2) {
  return __VERIFIER_nondet_int();
}
void idr_preload(gfp_t arg0) {
  return;
}
void iov_iter_init(struct iov_iter *arg0, int arg1, const struct iovec *arg2, unsigned long arg3, size_t arg4) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
void kill_fasync(struct fasync_struct **arg0, int arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int kstrtoul_from_user(const char *arg0, size_t arg1, unsigned int arg2, unsigned long *arg3) {
  return __VERIFIER_nondet_int();
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void *external_alloc(void);
void *memdup_user(const void *arg0, size_t arg1) {
  return (void *)external_alloc();
}
void might_fault() {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
long __VERIFIER_nondet_long(void);
loff_t no_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct proc_dir_entry *proc_create_data(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2, const struct file_operations *arg3, void *arg4) {
  return (struct proc_dir_entry *)external_alloc();
}
void *external_alloc(void);
struct proc_dir_entry *proc_mkdir(const char *arg0, struct proc_dir_entry *arg1) {
  return (struct proc_dir_entry *)external_alloc();
}
void put_disk(struct gendisk *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_chrdev_region(dev_t arg0, unsigned int arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void remove_proc_entry(const char *arg0, struct proc_dir_entry *arg1) {
  return;
}
void schedule() {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_autopm_get_device(struct scsi_device *arg0) {
  return __VERIFIER_nondet_int();
}
void scsi_autopm_put_device(struct scsi_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_block_when_processing_errors(struct scsi_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_device_get(struct scsi_device *arg0) {
  return __VERIFIER_nondet_int();
}
void scsi_device_put(struct scsi_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_ioctl(struct scsi_device *arg0, int arg1, void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_ioctl_block_when_processing_errors(struct scsi_device *arg0, int arg1, bool arg2) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool scsi_normalize_sense(const u8 *arg0, int arg1, struct scsi_sense_hdr *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int scsi_register_interface(struct class_interface *arg0) {
  return __VERIFIER_nondet_int();
}
void sdev_prefix_printk(const char *arg0, const struct scsi_device *arg1, const char *arg2, const char *arg3, ...) {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_open(struct file *arg0, const struct seq_operations *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_puts(struct seq_file *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t seq_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sg_scsi_ioctl(struct request_queue *arg0, struct gendisk *arg1, fmode_t arg2, struct scsi_ioctl_command *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_open(struct file *arg0, int (*arg1)(struct seq_file *, void *), void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_link(struct kobject *arg0, struct kobject *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_link(struct kobject *arg0, const char *arg1) {
  return;
}
void unregister_chrdev_region(dev_t arg0, unsigned int arg1) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
