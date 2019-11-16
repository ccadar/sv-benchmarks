struct device;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef __kernel_long_t __kernel_suseconds_t;
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
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
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
struct mutex;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
struct __anonstruct____missing_field_name_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_10 {
   u16 limit0 ;
   u16 base0 ;
   unsigned int base1 : 8 ;
   unsigned int type : 4 ;
   unsigned int s : 1 ;
   unsigned int dpl : 2 ;
   unsigned int p : 1 ;
   unsigned int limit : 4 ;
   unsigned int avl : 1 ;
   unsigned int l : 1 ;
   unsigned int d : 1 ;
   unsigned int g : 1 ;
   unsigned int base2 : 8 ;
};
union __anonunion____missing_field_name_8 {
   struct __anonstruct____missing_field_name_9 __annonCompField4 ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_8 __annonCompField6 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_12 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_12 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_15 __annonCompField7 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_17 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_16 {
   s64 lock ;
   struct __anonstruct____missing_field_name_17 __annonCompField8 ;
};
typedef union __anonunion_arch_rwlock_t_16 arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned int flags : 8 ;
};
struct file_operations;
struct completion;
struct pid;
struct lockdep_map;
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
union __anonunion____missing_field_name_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_18 __annonCompField9 ;
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
struct static_key;
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
struct __anonstruct____missing_field_name_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_22 {
   struct __anonstruct____missing_field_name_23 __annonCompField13 ;
   struct __anonstruct____missing_field_name_24 __annonCompField14 ;
};
union __anonunion____missing_field_name_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_22 __annonCompField15 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_25 __annonCompField16 ;
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
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
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
   unsigned int class_idx : 13 ;
   unsigned int irq_context : 2 ;
   unsigned int trylock : 1 ;
   unsigned int read : 2 ;
   unsigned int check : 2 ;
   unsigned int hardirqs_off : 1 ;
   unsigned int references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_29 __annonCompField18 ;
};
struct spinlock {
   union __anonunion____missing_field_name_28 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_30 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_30 rwlock_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct jump_entry;
struct static_key_mod;
struct static_key {
   atomic_t enabled ;
   struct jump_entry *entries ;
   struct static_key_mod *next ;
};
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
struct idr_layer {
   int prefix ;
   unsigned long bitmap[4U] ;
   struct idr_layer *ary[256U] ;
   int count ;
   int layer ;
   struct callback_head callback_head ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   struct idr_layer *id_free ;
   int layers ;
   int id_free_cnt ;
   int cur ;
   spinlock_t lock ;
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
};
union __anonunion_u_36 {
   struct completion *completion ;
   struct kernfs_node *removed_list ;
};
union __anonunion____missing_field_name_37 {
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
   union __anonunion_u_36 u ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_37 __annonCompField21 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_dir_ops {
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   struct ida ino_ida ;
   struct kernfs_dir_ops *dir_ops ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
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
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_38 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_38 kuid_t;
struct __anonstruct_kgid_t_39 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_39 kgid_t;
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
   bool ignore_lockdep : 1 ;
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
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
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
struct backing_dev_info;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_41 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_40 {
   struct __anonstruct____missing_field_name_41 __annonCompField22 ;
};
struct lockref {
   union __anonunion____missing_field_name_40 __annonCompField23 ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct____missing_field_name_43 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_42 {
   struct __anonstruct____missing_field_name_43 __annonCompField24 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_42 __annonCompField25 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_44 {
   struct list_head d_child ;
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
   union __anonunion_d_u_44 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
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
struct __anonstruct_nodemask_t_45 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_45 nodemask_t;
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct radix_tree_node;
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
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
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
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   bool early_init : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   bool syscore : 1 ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned int disable_depth : 3 ;
   unsigned int idle_notification : 1 ;
   unsigned int request_pending : 1 ;
   unsigned int deferred_resume : 1 ;
   unsigned int run_wake : 1 ;
   unsigned int runtime_auto : 1 ;
   unsigned int no_callbacks : 1 ;
   unsigned int irq_safe : 1 ;
   unsigned int use_autosuspend : 1 ;
   unsigned int timer_autosuspends : 1 ;
   unsigned int memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct __anonstruct_mm_context_t_112 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_112 mm_context_t;
struct device_node;
struct block_device;
struct io_context;
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
struct swap_info_struct;
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
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
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
struct __anonstruct_kprojid_t_139 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_139 kprojid_t;
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
union __anonunion____missing_field_name_140 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_140 __annonCompField37 ;
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
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
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
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
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
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct address_space;
struct writeback_control;
union __anonunion_arg_142 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_141 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_142 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_141 read_descriptor_t;
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
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
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
union __anonunion____missing_field_name_143 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_144 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
union __anonunion____missing_field_name_145 {
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
   union __anonunion____missing_field_name_143 __annonCompField38 ;
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
   union __anonunion____missing_field_name_144 __annonCompField39 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_145 __annonCompField40 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
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
union __anonunion_f_u_146 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_146 f_u ;
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
   unsigned long f_mnt_write_state ;
};
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
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
struct __anonstruct_afs_148 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_147 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_148 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
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
   union __anonunion_fl_u_147 fl_u ;
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
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
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
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
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
   int (*freeze_fs)(struct super_block * ) ;
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
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
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
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct pdev_archdata {
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
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
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
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
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
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
   bool offline_disabled : 1 ;
   bool offline : 1 ;
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
   bool active : 1 ;
   bool autosleep_enabled : 1 ;
};
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
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
   bool prevent_deferred_probe ;
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
struct __anonstruct____missing_field_name_154 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_155 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_153 {
   struct __anonstruct____missing_field_name_154 __annonCompField42 ;
   struct __anonstruct____missing_field_name_155 __annonCompField43 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_153 __annonCompField44 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
union __anonunion____missing_field_name_156 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_158 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_162 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_161 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_162 __annonCompField47 ;
   int units ;
};
struct __anonstruct____missing_field_name_160 {
   union __anonunion____missing_field_name_161 __annonCompField48 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_159 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_160 __annonCompField49 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_157 {
   union __anonunion____missing_field_name_158 __annonCompField46 ;
   union __anonunion____missing_field_name_159 __annonCompField50 ;
};
struct __anonstruct____missing_field_name_164 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_163 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_164 __annonCompField52 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_165 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_156 __annonCompField45 ;
   struct __anonstruct____missing_field_name_157 __annonCompField51 ;
   union __anonunion____missing_field_name_163 __annonCompField53 ;
   union __anonunion____missing_field_name_165 __annonCompField54 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_167 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_166 {
   struct __anonstruct_linear_167 linear ;
   struct list_head nonlinear ;
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
   union __anonunion_shared_166 shared ;
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
   struct vm_area_struct *mmap_cache ;
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
};
struct user_struct;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct proc_dir_entry;
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
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
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
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
struct __anonstruct_sigset_t_170 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_170 sigset_t;
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
struct __anonstruct__kill_172 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_173 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_174 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_175 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_176 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_177 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_178 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_171 {
   int _pad[28U] ;
   struct __anonstruct__kill_172 _kill ;
   struct __anonstruct__timer_173 _timer ;
   struct __anonstruct__rt_174 _rt ;
   struct __anonstruct__sigchld_175 _sigchld ;
   struct __anonstruct__sigfault_176 _sigfault ;
   struct __anonstruct__sigpoll_177 _sigpoll ;
   struct __anonstruct__sigsys_178 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_171 _sifields ;
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
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct rb_root waiters ;
   struct rb_node *waiters_leftmost ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
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
struct nsproxy;
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
union __anonunion____missing_field_name_183 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_184 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_186 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_185 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_186 __annonCompField60 ;
};
union __anonunion_type_data_187 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_189 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_188 {
   union __anonunion_payload_189 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_183 __annonCompField58 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_184 __annonCompField59 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_185 __annonCompField61 ;
   union __anonunion_type_data_187 type_data ;
   union __anonunion____missing_field_name_188 __annonCompField62 ;
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
   unsigned int is_child_subreaper : 1 ;
   unsigned int has_child_subreaper : 1 ;
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
   atomic_t files ;
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
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
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
   struct hrtimer dl_timer ;
};
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned int may_oom : 1 ;
};
struct sched_class;
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
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned int brk_randomized : 1 ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int no_new_privs : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
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
   struct timespec start_time ;
   struct timespec real_start_time ;
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
   struct task_struct *pi_top_task ;
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
   int numa_migrate_deferred ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer ;
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
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct proc_dir_entry *pde ;
   struct kref kref ;
   unsigned long _flags ;
   void *data ;
};
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
struct i2c_algorithm;
struct i2c_adapter;
struct i2c_client;
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
};
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_bus_recovery_info * ) ;
   void (*unprepare_recovery)(struct i2c_bus_recovery_info * ) ;
   int scl_gpio ;
   int sda_gpio ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
   struct i2c_bus_recovery_info *bus_recovery_info ;
};
struct mfd_cell {
   char const *name ;
   int id ;
   atomic_t *usage_count ;
   int (*enable)(struct platform_device * ) ;
   int (*disable)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * ) ;
   int (*resume)(struct platform_device * ) ;
   void *platform_data ;
   size_t pdata_size ;
   char const *of_compatible ;
   int num_resources ;
   struct resource const *resources ;
   bool ignore_resource_conflicts ;
   bool pm_runtime_no_callbacks ;
   char const **parent_supplies ;
   int num_parent_supplies ;
};
struct wl1273_fm_platform_data {
   int (*request_resources)(struct i2c_client * ) ;
   void (*free_resources)(void) ;
   void (*enable)(void) ;
   void (*disable)(void) ;
   u8 forbidden_modes ;
   unsigned int children ;
};
struct wl1273_core {
   struct mfd_cell cells[2U] ;
   struct wl1273_fm_platform_data *pdata ;
   unsigned int mode ;
   unsigned int i2s_mode ;
   unsigned int volume ;
   unsigned int audio_mode ;
   unsigned int channel_number ;
   struct mutex lock ;
   struct i2c_client *client ;
   int (*read)(struct wl1273_core * , u8 , u16 * ) ;
   int (*write)(struct wl1273_core * , u8 , u16 ) ;
   int (*write_data)(struct wl1273_core * , u8 * , u16 ) ;
   int (*set_audio)(struct wl1273_core * , unsigned int ) ;
   int (*set_volume)(struct wl1273_core * , unsigned int ) ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct____missing_field_name_192 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_193 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_191 {
   struct __anonstruct____missing_field_name_192 __annonCompField64 ;
   struct __anonstruct____missing_field_name_193 __annonCompField65 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_191 __annonCompField66 ;
};
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
union __anonunion____missing_field_name_198 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_198 __annonCompField67 ;
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
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
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
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
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
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef struct poll_table_struct poll_table;
enum v4l2_buf_type {
    V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
    V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
    V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
    V4L2_BUF_TYPE_VBI_CAPTURE = 4,
    V4L2_BUF_TYPE_VBI_OUTPUT = 5,
    V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
    V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
    V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = 9,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = 10,
    V4L2_BUF_TYPE_PRIVATE = 128
} ;
enum v4l2_priority {
    V4L2_PRIORITY_UNSET = 0,
    V4L2_PRIORITY_BACKGROUND = 1,
    V4L2_PRIORITY_INTERACTIVE = 2,
    V4L2_PRIORITY_RECORD = 3,
    V4L2_PRIORITY_DEFAULT = 2
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __u32 width ;
   __u32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 device_caps ;
   __u32 reserved[3U] ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion____missing_field_name_200 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_200 __annonCompField68 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_201 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_201 __annonCompField69 ;
   __u32 reserved[2U] ;
};
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_202 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_202 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_203 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
   __s32 fd ;
};
struct v4l2_buffer {
   __u32 index ;
   __u32 type ;
   __u32 bytesused ;
   __u32 flags ;
   __u32 field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   __u32 memory ;
   union __anonunion_m_203 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_exportbuffer {
   __u32 type ;
   __u32 index ;
   __u32 plane ;
   __u32 flags ;
   __s32 fd ;
   __u32 reserved[11U] ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct v4l2_pix_format fmt ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   __u32 field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   __u32 type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   __u32 type ;
   struct v4l2_rect c ;
};
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
};
typedef __u64 v4l2_std_id;
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 standards ;
   __u32 flags ;
   __u32 reserved[14U] ;
};
union __anonunion____missing_field_name_204 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_204 __annonCompField70 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 reserved[3U] ;
   struct v4l2_dv_timings timings ;
};
struct v4l2_bt_timings_cap {
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u64 min_pixelclock ;
   __u64 max_pixelclock ;
   __u32 standards ;
   __u32 capabilities ;
   __u32 reserved[16U] ;
};
union __anonunion____missing_field_name_205 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 reserved[3U] ;
   union __anonunion____missing_field_name_205 __annonCompField71 ;
};
struct v4l2_input {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 tuner ;
   v4l2_std_id std ;
   __u32 status ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_output {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 modulator ;
   v4l2_std_id std ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion____missing_field_name_206 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_206 __annonCompField72 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
enum v4l2_ctrl_type {
    V4L2_CTRL_TYPE_INTEGER = 1,
    V4L2_CTRL_TYPE_BOOLEAN = 2,
    V4L2_CTRL_TYPE_MENU = 3,
    V4L2_CTRL_TYPE_BUTTON = 4,
    V4L2_CTRL_TYPE_INTEGER64 = 5,
    V4L2_CTRL_TYPE_CTRL_CLASS = 6,
    V4L2_CTRL_TYPE_STRING = 7,
    V4L2_CTRL_TYPE_BITMASK = 8,
    V4L2_CTRL_TYPE_INTEGER_MENU = 9
} ;
struct v4l2_queryctrl {
   __u32 id ;
   __u32 type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
union __anonunion____missing_field_name_207 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_207 __annonCompField73 ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   __u32 type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_frequency_band {
   __u32 tuner ;
   __u32 type ;
   __u32 index ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 modulation ;
   __u32 reserved[9U] ;
};
struct v4l2_hw_freq_seek {
   __u32 tuner ;
   __u32 type ;
   __u32 seek_upward ;
   __u32 wrap_around ;
   __u32 spacing ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 reserved[5U] ;
};
struct v4l2_rds_data {
   __u8 lsb ;
   __u8 msb ;
   __u8 block ;
};
struct v4l2_audio {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx_entry {
   __u64 offset ;
   __u64 pts ;
   __u32 length ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx {
   __u32 entries ;
   __u32 entries_cap ;
   __u32 reserved[4U] ;
   struct v4l2_enc_idx_entry entry[64U] ;
};
struct __anonstruct_raw_209 {
   __u32 data[8U] ;
};
union __anonunion____missing_field_name_208 {
   struct __anonstruct_raw_209 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_208 __annonCompField74 ;
};
struct __anonstruct_stop_211 {
   __u64 pts ;
};
struct __anonstruct_start_212 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_213 {
   __u32 data[16U] ;
};
union __anonunion____missing_field_name_210 {
   struct __anonstruct_stop_211 stop ;
   struct __anonstruct_start_212 start ;
   struct __anonstruct_raw_213 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_210 __annonCompField75 ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
struct v4l2_plane_pix_format {
   __u32 sizeimage ;
   __u16 bytesperline ;
   __u16 reserved[7U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 reserved[11U] ;
};
union __anonunion_fmt_215 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_215 fmt ;
};
union __anonunion_parm_216 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_216 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_219 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_219 __annonCompField78 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
};
struct media_pipeline {
};
struct media_pad;
struct media_link {
   struct media_pad *source ;
   struct media_pad *sink ;
   struct media_link *reverse ;
   unsigned long flags ;
};
struct media_entity;
struct media_pad {
   struct media_entity *entity ;
   u16 index ;
   unsigned long flags ;
};
struct media_entity_operations {
   int (*link_setup)(struct media_entity * , struct media_pad const * , struct media_pad const * ,
                     u32 ) ;
   int (*link_validate)(struct media_link * ) ;
};
struct media_device;
struct __anonstruct_v4l_225 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_226 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_227 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_224 {
   struct __anonstruct_v4l_225 v4l ;
   struct __anonstruct_fb_226 fb ;
   struct __anonstruct_alsa_227 alsa ;
   int dvb ;
};
struct media_entity {
   struct list_head list ;
   struct media_device *parent ;
   u32 id ;
   char const *name ;
   u32 type ;
   u32 revision ;
   unsigned long flags ;
   u32 group_id ;
   u16 num_pads ;
   u16 num_links ;
   u16 num_backlinks ;
   u16 max_links ;
   struct media_pad *pads ;
   struct media_link *links ;
   struct media_entity_operations const *ops ;
   int stream_count ;
   int use_count ;
   struct media_pipeline *pipe ;
   union __anonunion_info_224 info ;
};
struct video_device;
struct v4l2_device;
struct v4l2_ctrl_handler;
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct vb2_queue;
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct v4l2_device *v4l2_dev ;
   struct device *dev_parent ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct vb2_queue *queue ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int vfl_dir ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int debug ;
   v4l2_std_id tvnorms ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct v4l2_subdev;
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
struct v4l2_fh;
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
union __anonunion____missing_field_name_229 {
   u32 step ;
   u32 menu_skip_mask ;
};
union __anonunion____missing_field_name_230 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
union __anonunion_cur_231 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
union __anonunion____missing_field_name_232 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
struct v4l2_ctrl {
   struct list_head node ;
   struct list_head ev_subs ;
   struct v4l2_ctrl_handler *handler ;
   struct v4l2_ctrl **cluster ;
   unsigned int ncontrols ;
   unsigned int done : 1 ;
   unsigned int is_new : 1 ;
   unsigned int is_private : 1 ;
   unsigned int is_auto : 1 ;
   unsigned int has_volatiles : 1 ;
   unsigned int call_notify : 1 ;
   unsigned int manual_mode_value : 8 ;
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 minimum ;
   s32 maximum ;
   s32 default_value ;
   union __anonunion____missing_field_name_229 __annonCompField80 ;
   union __anonunion____missing_field_name_230 __annonCompField81 ;
   unsigned long flags ;
   union __anonunion_cur_231 cur ;
   union __anonunion____missing_field_name_232 __annonCompField82 ;
   void *priv ;
};
struct v4l2_ctrl_ref {
   struct list_head node ;
   struct v4l2_ctrl_ref *next ;
   struct v4l2_ctrl *ctrl ;
   struct v4l2_ctrl_helper *helper ;
};
struct v4l2_ctrl_handler {
   struct mutex _lock ;
   struct mutex *lock ;
   struct list_head ctrls ;
   struct list_head ctrl_refs ;
   struct v4l2_ctrl_ref *cached ;
   struct v4l2_ctrl_ref **buckets ;
   void (*notify)(struct v4l2_ctrl * , void * ) ;
   void *notify_priv ;
   u16 nr_of_buckets ;
   int error ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct media_devnode {
   struct media_file_operations const *fops ;
   struct device dev ;
   struct cdev cdev ;
   struct device *parent ;
   int minor ;
   unsigned long flags ;
   void (*release)(struct media_devnode * ) ;
};
struct media_device {
   struct device *dev ;
   struct media_devnode devnode ;
   char model[32U] ;
   char serial[40U] ;
   char bus_info[32U] ;
   u32 hw_revision ;
   u32 driver_version ;
   u32 entity_id ;
   struct list_head entities ;
   spinlock_t lock ;
   struct mutex graph_mutex ;
   int (*link_notify)(struct media_link * , u32 , unsigned int ) ;
};
enum v4l2_mbus_pixelcode {
    V4L2_MBUS_FMT_FIXED = 1,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_BE = 4097,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_LE = 4098,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_BE = 4099,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_LE = 4100,
    V4L2_MBUS_FMT_BGR565_2X8_BE = 4101,
    V4L2_MBUS_FMT_BGR565_2X8_LE = 4102,
    V4L2_MBUS_FMT_RGB565_2X8_BE = 4103,
    V4L2_MBUS_FMT_RGB565_2X8_LE = 4104,
    V4L2_MBUS_FMT_RGB666_1X18 = 4105,
    V4L2_MBUS_FMT_RGB888_1X24 = 4106,
    V4L2_MBUS_FMT_RGB888_2X12_BE = 4107,
    V4L2_MBUS_FMT_RGB888_2X12_LE = 4108,
    V4L2_MBUS_FMT_ARGB8888_1X32 = 4109,
    V4L2_MBUS_FMT_Y8_1X8 = 8193,
    V4L2_MBUS_FMT_UV8_1X8 = 8213,
    V4L2_MBUS_FMT_UYVY8_1_5X8 = 8194,
    V4L2_MBUS_FMT_VYUY8_1_5X8 = 8195,
    V4L2_MBUS_FMT_YUYV8_1_5X8 = 8196,
    V4L2_MBUS_FMT_YVYU8_1_5X8 = 8197,
    V4L2_MBUS_FMT_UYVY8_2X8 = 8198,
    V4L2_MBUS_FMT_VYUY8_2X8 = 8199,
    V4L2_MBUS_FMT_YUYV8_2X8 = 8200,
    V4L2_MBUS_FMT_YVYU8_2X8 = 8201,
    V4L2_MBUS_FMT_Y10_1X10 = 8202,
    V4L2_MBUS_FMT_YUYV10_2X10 = 8203,
    V4L2_MBUS_FMT_YVYU10_2X10 = 8204,
    V4L2_MBUS_FMT_Y12_1X12 = 8211,
    V4L2_MBUS_FMT_UYVY8_1X16 = 8207,
    V4L2_MBUS_FMT_VYUY8_1X16 = 8208,
    V4L2_MBUS_FMT_YUYV8_1X16 = 8209,
    V4L2_MBUS_FMT_YVYU8_1X16 = 8210,
    V4L2_MBUS_FMT_YDYUYDYV8_1X16 = 8212,
    V4L2_MBUS_FMT_YUYV10_1X20 = 8205,
    V4L2_MBUS_FMT_YVYU10_1X20 = 8206,
    V4L2_MBUS_FMT_YUV10_1X30 = 8214,
    V4L2_MBUS_FMT_AYUV8_1X32 = 8215,
    V4L2_MBUS_FMT_SBGGR8_1X8 = 12289,
    V4L2_MBUS_FMT_SGBRG8_1X8 = 12307,
    V4L2_MBUS_FMT_SGRBG8_1X8 = 12290,
    V4L2_MBUS_FMT_SRGGB8_1X8 = 12308,
    V4L2_MBUS_FMT_SBGGR10_ALAW8_1X8 = 12309,
    V4L2_MBUS_FMT_SGBRG10_ALAW8_1X8 = 12310,
    V4L2_MBUS_FMT_SGRBG10_ALAW8_1X8 = 12311,
    V4L2_MBUS_FMT_SRGGB10_ALAW8_1X8 = 12312,
    V4L2_MBUS_FMT_SBGGR10_DPCM8_1X8 = 12299,
    V4L2_MBUS_FMT_SGBRG10_DPCM8_1X8 = 12300,
    V4L2_MBUS_FMT_SGRBG10_DPCM8_1X8 = 12297,
    V4L2_MBUS_FMT_SRGGB10_DPCM8_1X8 = 12301,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_BE = 12291,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE = 12292,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_BE = 12293,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_LE = 12294,
    V4L2_MBUS_FMT_SBGGR10_1X10 = 12295,
    V4L2_MBUS_FMT_SGBRG10_1X10 = 12302,
    V4L2_MBUS_FMT_SGRBG10_1X10 = 12298,
    V4L2_MBUS_FMT_SRGGB10_1X10 = 12303,
    V4L2_MBUS_FMT_SBGGR12_1X12 = 12296,
    V4L2_MBUS_FMT_SGBRG12_1X12 = 12304,
    V4L2_MBUS_FMT_SGRBG12_1X12 = 12305,
    V4L2_MBUS_FMT_SRGGB12_1X12 = 12306,
    V4L2_MBUS_FMT_JPEG_1X8 = 16385,
    V4L2_MBUS_FMT_S5C_UYVY_JPEG_1X8 = 20481,
    V4L2_MBUS_FMT_AHSV8888_1X32 = 24577
} ;
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u32 reserved[7U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_crop {
   __u32 which ;
   __u32 pad ;
   struct v4l2_rect rect ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval {
   __u32 pad ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 width ;
   __u32 height ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
};
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_234 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_235 {
   char const *name ;
};
struct __anonstruct_i2c_236 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_237 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_233 {
   struct __anonstruct_of_234 of ;
   struct __anonstruct_device_name_235 device_name ;
   struct __anonstruct_i2c_236 i2c ;
   struct __anonstruct_custom_237 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_233 match ;
   struct list_head list ;
};
struct v4l2_async_notifier {
   unsigned int num_subdevs ;
   struct v4l2_async_subdev **subdevs ;
   struct v4l2_device *v4l2_dev ;
   struct list_head waiting ;
   struct list_head done ;
   struct list_head list ;
   int (*bound)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
   int (*complete)(struct v4l2_async_notifier * ) ;
   void (*unbind)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
};
struct v4l2_m2m_ctx;
struct v4l2_fh {
   struct list_head list ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   enum v4l2_priority prio ;
   wait_queue_head_t wait ;
   struct list_head subscribed ;
   struct list_head available ;
   unsigned int navailable ;
   u32 sequence ;
   struct v4l2_m2m_ctx *m2m_ctx ;
};
enum v4l2_mbus_type {
    V4L2_MBUS_PARALLEL = 0,
    V4L2_MBUS_BT656 = 1,
    V4L2_MBUS_CSI2 = 2
} ;
struct v4l2_mbus_config {
   enum v4l2_mbus_type type ;
   unsigned int flags ;
};
struct v4l2_subdev_fh;
struct tuner_setup;
struct v4l2_mbus_frame_desc;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register const * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency const * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner const * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator const * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_mbus_frame_desc_entry {
   u16 flags ;
   u32 pixelcode ;
   u32 length ;
};
struct v4l2_mbus_frame_desc {
   struct v4l2_mbus_frame_desc_entry entry[4U] ;
   unsigned short num_entries ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop const * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*enum_framesizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*enum_frameintervals)(struct v4l2_subdev * , struct v4l2_frmivalenum * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_mbus_fmt)(struct v4l2_subdev * , unsigned int , enum v4l2_mbus_pixelcode * ) ;
   int (*enum_mbus_fsizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*g_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*try_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*s_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
   int (*s_rx_buffer)(struct v4l2_subdev * , void * , unsigned int * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
   int (*g_skip_frames)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*link_validate)(struct v4l2_subdev * , struct media_link * , struct v4l2_subdev_format * ,
                        struct v4l2_subdev_format * ) ;
   int (*get_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
   int (*set_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
   struct v4l2_subdev_pad_ops const *pad ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
   int (*open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
   int (*close)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
};
struct regulator_bulk_data;
struct v4l2_subdev_platform_data {
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   void *host_priv ;
};
struct v4l2_subdev {
   struct media_entity entity ;
   struct list_head list ;
   struct module *owner ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
   struct video_device *devnode ;
   struct device *dev ;
   struct list_head async_list ;
   struct v4l2_async_subdev *asd ;
   struct v4l2_async_notifier *notifier ;
   struct v4l2_subdev_platform_data *pdata ;
};
struct __anonstruct_pad_238 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_238 *pad ;
};
struct v4l2_device {
   struct device *dev ;
   struct media_device *mdev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state prio ;
   struct mutex ioctl_lock ;
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
struct v4l2_ioctl_ops {
   int (*vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
   int (*vidioc_g_priority)(struct file * , void * , enum v4l2_priority * ) ;
   int (*vidioc_s_priority)(struct file * , void * , enum v4l2_priority ) ;
   int (*vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
   int (*vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_expbuf)(struct file * , void * , struct v4l2_exportbuffer * ) ;
   int (*vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
   int (*vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_overlay)(struct file * , void * , unsigned int ) ;
   int (*vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
   int (*vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer const * ) ;
   int (*vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_g_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_s_std)(struct file * , void * , v4l2_std_id ) ;
   int (*vidioc_querystd)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
   int (*vidioc_g_input)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_input)(struct file * , void * , unsigned int ) ;
   int (*vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
   int (*vidioc_g_output)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_output)(struct file * , void * , unsigned int ) ;
   int (*vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
   int (*vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
   int (*vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_s_audio)(struct file * , void * , struct v4l2_audio const * ) ;
   int (*vidioc_enumaudout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_g_audout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_s_audout)(struct file * , void * , struct v4l2_audioout const * ) ;
   int (*vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
   int (*vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator const * ) ;
   int (*vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
   int (*vidioc_g_crop)(struct file * , void * , struct v4l2_crop * ) ;
   int (*vidioc_s_crop)(struct file * , void * , struct v4l2_crop const * ) ;
   int (*vidioc_g_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_s_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_g_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression * ) ;
   int (*vidioc_s_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression const * ) ;
   int (*vidioc_g_enc_index)(struct file * , void * , struct v4l2_enc_idx * ) ;
   int (*vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_try_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner const * ) ;
   int (*vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency const * ) ;
   int (*vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
   int (*vidioc_g_sliced_vbi_cap)(struct file * , void * , struct v4l2_sliced_vbi_cap * ) ;
   int (*vidioc_log_status)(struct file * , void * ) ;
   int (*vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek const * ) ;
   int (*vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register const * ) ;
   int (*vidioc_g_chip_info)(struct file * , void * , struct v4l2_dbg_chip_info * ) ;
   int (*vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
   int (*vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
   int (*vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
   int (*vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
   int (*vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   int (*vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   long (*vidioc_default)(struct file * , void * , bool , unsigned int , void * ) ;
};
struct wl1273_device {
   char *bus_type ;
   u8 forbidden ;
   unsigned int preemphasis ;
   unsigned int spacing ;
   unsigned int tx_power ;
   unsigned int rx_frequency ;
   unsigned int tx_frequency ;
   unsigned int rangelow ;
   unsigned int rangehigh ;
   unsigned int band ;
   bool stereo ;
   unsigned int rds_on ;
   wait_queue_head_t read_queue ;
   struct mutex lock ;
   struct completion busy ;
   unsigned char *buffer ;
   unsigned int buf_size ;
   unsigned int rd_index ;
   unsigned int wr_index ;
   u16 irq_flags ;
   u16 irq_received ;
   struct v4l2_ctrl_handler ctrl_handler ;
   struct v4l2_device v4l2dev ;
   struct video_device videodev ;
   struct device *dev ;
   struct wl1273_core *core ;
   struct file *owner ;
   char *write_buf ;
   unsigned int rds_users ;
};
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
struct device_private {
   void *driver_data ;
};
typedef u64 dma_addr_t;
enum hrtimer_restart;
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
   wait_queue_head_t done ;
   struct kthread_worker *worker ;
};
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
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   struct completion xfer_completion ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   unsigned int cs_change : 1 ;
   unsigned int tx_nbits : 3 ;
   unsigned int rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned int is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
struct ldv_thread;
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
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
static void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_40(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_30(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_32(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_35(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_38(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_42(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_44(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_46(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_48(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_50(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_52(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_54(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_56(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_58(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_or_killable_lock_of_wl1273_core(struct mutex *lock ) ;
void ldv_mutex_lock_lock_of_wl1273_core(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_wl1273_core(struct mutex *lock ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void *external_allocated_data(void) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern struct module __this_module ;
extern int printk(char const * , ...) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
extern void might_fault(void) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
static void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_55(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_59(struct mutex *ldv_func_arg1 ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  }
  return;
}
}
__inline static void reinit_completion(struct completion *x )
{
  {
  x->done = 0U;
  return;
}
}
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void *devm_kmalloc(struct device * , size_t , gfp_t ) ;
__inline static void *devm_kzalloc(struct device *dev , size_t size , gfp_t gfp )
{
  void *tmp ;
  {
  {
  tmp = devm_kmalloc(dev, size, gfp | 32768U);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_12(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_20(struct device const *dev ) ;
static int ldv_dev_set_drvdata_13(struct device *dev , void *data ) ;
static int ldv_dev_set_drvdata_21(struct device *dev , void *data ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
extern int __platform_driver_register(struct platform_driver * , struct module * ) ;
static int ldv___platform_driver_register_63(struct platform_driver *ldv_func_arg1 ,
                                             struct module *ldv_func_arg2 ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
static void ldv_platform_driver_unregister_64(struct platform_driver *ldv_func_arg1 ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_12(& pdev->dev);
  }
  return (tmp);
}
}
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_13(& pdev->dev, data);
  }
  return;
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
extern void msleep(unsigned int ) ;
extern void usleep_range(unsigned long , unsigned long ) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
static int ldv_request_threaded_irq_61(unsigned int ldv_func_arg1 , irqreturn_t (*ldv_func_arg2)(int ,
                                                                                                 void * ) ,
                                       irqreturn_t (*ldv_func_arg3)(int , void * ) ,
                                       unsigned long ldv_func_arg4 , char const *ldv_func_arg5 ,
                                       void *ldv_func_arg6 ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_60(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_62(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void schedule(void) ;
extern int i2c_transfer(struct i2c_adapter * , struct i2c_msg * , int ) ;
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
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device(struct video_device *vdev , int type , int nr )
{
  int tmp ;
  {
  {
  tmp = __video_register_device(vdev, type, nr, 1, (vdev->fops)->owner);
  }
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_20((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_21(& vdev->dev, data);
  }
  return;
}
}
extern struct video_device *video_devdata(struct file * ) ;
extern int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler * , unsigned int ,
                                        struct lock_class_key * , char const * ) ;
extern void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                           u32 , s32 , s32 , u32 , s32 ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std_menu(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                                u32 , s32 , s32 , s32 ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
static int radio_nr ;
static unsigned int rds_buf = 100U;
static int wl1273_fm_write_fw(struct wl1273_core *core , __u8 *fw , int len )
{
  struct i2c_client *client ;
  struct i2c_msg msg ;
  int i ;
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  {
  client = core->client;
  r = 0;
  msg.addr = client->addr;
  msg.flags = 0U;
  i = 0;
  goto ldv_33272;
  ldv_33271:
  {
  msg.len = (__u16 )*fw;
  msg.buf = fw + 1UL;
  fw = fw + ((unsigned long )msg.len + 1UL);
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_write_fw";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s:len[%d]: %d\n";
  descriptor.lineno = 122U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& client->dev), "%s:len[%d]: %d\n",
                      "wl1273_fm_write_fw", i, (int )msg.len);
    }
  } else {
  }
  {
  r = i2c_transfer(client->adapter, & msg, 1);
  }
  if (r < 0 && i < len + 1) {
    goto ldv_33270;
  } else {
  }
  i = i + 1;
  ldv_33272: ;
  if (i <= len) {
    goto ldv_33271;
  } else {
  }
  ldv_33270:
  {
  descriptor___0.modname = "radio_wl1273";
  descriptor___0.function = "wl1273_fm_write_fw";
  descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___0.format = "%s: i: %d\n";
  descriptor___0.lineno = 129U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& client->dev),
                      "%s: i: %d\n", "wl1273_fm_write_fw", i);
    }
  } else {
  }
  {
  descriptor___1.modname = "radio_wl1273";
  descriptor___1.function = "wl1273_fm_write_fw";
  descriptor___1.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___1.format = "%s: len + 1: %d\n";
  descriptor___1.lineno = 130U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& client->dev),
                      "%s: len + 1: %d\n", "wl1273_fm_write_fw", len + 1);
    }
  } else {
  }
  if (i == len || r == 1) {
    r = 0;
  } else {
  }
  return (r);
}
}
static int wl1273_fm_rds(struct wl1273_device *radio )
{
  struct wl1273_core *core ;
  struct i2c_client *client ;
  u16 val ;
  u8 b0 ;
  u8 status ;
  struct v4l2_rds_data rds ;
  struct i2c_msg msg[2U] ;
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  core = radio->core;
  client = core->client;
  b0 = 5U;
  rds.lsb = 0U;
  rds.msb = 0U;
  rds.block = 0U;
  msg[0].addr = client->addr;
  msg[0].flags = 0U;
  msg[0].len = 1U;
  msg[0].buf = & b0;
  msg[1].addr = client->addr;
  msg[1].flags = 1U;
  msg[1].len = 3U;
  msg[1].buf = (__u8 *)(& rds);
  if (core->mode != 1U) {
    return (0);
  } else {
  }
  {
  r = (*(core->read))(core, 4, & val);
  }
  if (r != 0) {
    return (r);
  } else {
  }
  if (((int )val & 1) == 0) {
    return (-11);
  } else {
  }
  ldv_33293:
  {
  r = i2c_transfer(client->adapter, (struct i2c_msg *)(& msg), 2);
  }
  if (r != 2) {
    {
    dev_err((struct device const *)radio->dev, "wl1273-fm: %s: read_rds error r == %i)\n",
            "wl1273_fm_rds", r);
    }
  } else {
  }
  status = rds.block;
  if (((unsigned int )status & 32U) == 0U) {
    goto ldv_33291;
  } else {
  }
  rds.block = (unsigned int )status & 7U;
  rds.block = (__u8 )((int )((signed char )rds.block) | (int )((signed char )((int )rds.block << 3)));
  if (((unsigned int )status & 16U) != 0U) {
    rds.block = (__u8 )((unsigned int )rds.block | 128U);
    rds.block = (unsigned int )rds.block & 191U;
  } else
  if (((unsigned int )status & 8U) != 0U) {
    rds.block = (unsigned int )rds.block & 127U;
    rds.block = (__u8 )((unsigned int )rds.block | 64U);
  } else {
  }
  {
  memcpy((void *)radio->buffer + (unsigned long )radio->wr_index, (void const *)(& rds),
         3UL);
  radio->wr_index = radio->wr_index + 3U;
  }
  if (radio->wr_index >= radio->buf_size) {
    radio->wr_index = 0U;
  } else {
  }
  if (radio->wr_index == radio->rd_index) {
    {
    descriptor.modname = "radio_wl1273";
    descriptor.function = "wl1273_fm_rds";
    descriptor.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor.format = "RDS OVERFLOW";
    descriptor.lineno = 215U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "RDS OVERFLOW");
      }
    } else {
    }
    radio->rd_index = 0U;
    radio->wr_index = 0U;
    goto ldv_33291;
  } else {
  }
  if (((unsigned int )status & 32U) != 0U) {
    goto ldv_33293;
  } else {
  }
  ldv_33291: ;
  if (radio->wr_index != radio->rd_index) {
    {
    __wake_up(& radio->read_queue, 1U, 1, (void *)0);
    }
  } else {
  }
  return (0);
}
}
static irqreturn_t wl1273_fm_irq_thread_handler(int irq , void *dev_id )
{
  struct wl1273_device *radio ;
  struct wl1273_core *core ;
  u16 flags ;
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  u16 level ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  struct _ddebug descriptor___3 ;
  long tmp___3 ;
  struct _ddebug descriptor___4 ;
  long tmp___4 ;
  struct _ddebug descriptor___5 ;
  long tmp___5 ;
  struct _ddebug descriptor___6 ;
  long tmp___6 ;
  struct _ddebug descriptor___7 ;
  long tmp___7 ;
  struct _ddebug descriptor___8 ;
  long tmp___8 ;
  struct _ddebug descriptor___9 ;
  long tmp___9 ;
  struct _ddebug descriptor___10 ;
  long tmp___10 ;
  struct _ddebug descriptor___11 ;
  long tmp___11 ;
  u16 freq ;
  struct _ddebug descriptor___12 ;
  long tmp___12 ;
  struct _ddebug descriptor___13 ;
  long tmp___13 ;
  struct _ddebug descriptor___14 ;
  long tmp___14 ;
  struct _ddebug descriptor___15 ;
  long tmp___15 ;
  {
  {
  radio = (struct wl1273_device *)dev_id;
  core = radio->core;
  r = (*(core->read))(core, 3, & flags);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  if (((unsigned long )flags & 2UL) != 0UL) {
    {
    radio->irq_received = flags;
    descriptor.modname = "radio_wl1273";
    descriptor.function = "wl1273_fm_irq_thread_handler";
    descriptor.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor.format = "IRQ: BL\n";
    descriptor.lineno = 243U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "IRQ: BL\n");
      }
    } else {
    }
  } else {
  }
  if (((unsigned long )flags & 4UL) != 0UL) {
    {
    msleep(200U);
    wl1273_fm_rds(radio);
    }
  } else {
  }
  if (((unsigned long )flags & 8UL) != 0UL) {
    {
    descriptor___0.modname = "radio_wl1273";
    descriptor___0.function = "wl1273_fm_irq_thread_handler";
    descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___0.format = "IRQ: BBLK\n";
    descriptor___0.lineno = 253U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)radio->dev, "IRQ: BBLK\n");
      }
    } else {
    }
  } else {
  }
  if (((unsigned long )flags & 16UL) != 0UL) {
    {
    descriptor___1.modname = "radio_wl1273";
    descriptor___1.function = "wl1273_fm_irq_thread_handler";
    descriptor___1.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___1.format = "IRQ: LSYNC\n";
    descriptor___1.lineno = 256U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)radio->dev, "IRQ: LSYNC\n");
      }
    } else {
    }
  } else {
  }
  if (((unsigned long )flags & 32UL) != 0UL) {
    {
    r = (*(core->read))(core, 1, & level);
    }
    if (r != 0) {
      goto out;
    } else {
    }
    if ((unsigned int )level > 14U) {
      {
      descriptor___2.modname = "radio_wl1273";
      descriptor___2.function = "wl1273_fm_irq_thread_handler";
      descriptor___2.filename = "drivers/media/radio/radio-wl1273.c";
      descriptor___2.format = "IRQ: LEV: 0x%x04\n";
      descriptor___2.lineno = 266U;
      descriptor___2.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___2 != 0L) {
        {
        __dynamic_dev_dbg(& descriptor___2, (struct device const *)radio->dev, "IRQ: LEV: 0x%x04\n",
                          (int )level);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if (((unsigned long )flags & 64UL) != 0UL) {
    {
    descriptor___3.modname = "radio_wl1273";
    descriptor___3.function = "wl1273_fm_irq_thread_handler";
    descriptor___3.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___3.format = "IRQ: IFFR\n";
    descriptor___3.lineno = 270U;
    descriptor___3.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)radio->dev, "IRQ: IFFR\n");
      }
    } else {
    }
  } else {
  }
  if (((unsigned long )flags & 128UL) != 0UL) {
    {
    descriptor___4.modname = "radio_wl1273";
    descriptor___4.function = "wl1273_fm_irq_thread_handler";
    descriptor___4.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___4.format = "IRQ: PI\n";
    descriptor___4.lineno = 273U;
    descriptor___4.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___4, (struct device const *)radio->dev, "IRQ: PI\n");
      }
    } else {
    }
  } else {
  }
  if (((unsigned long )flags & 256UL) != 0UL) {
    {
    descriptor___5.modname = "radio_wl1273";
    descriptor___5.function = "wl1273_fm_irq_thread_handler";
    descriptor___5.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___5.format = "IRQ: PD\n";
    descriptor___5.lineno = 276U;
    descriptor___5.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    }
    if (tmp___5 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___5, (struct device const *)radio->dev, "IRQ: PD\n");
      }
    } else {
    }
  } else {
  }
  if (((unsigned long )flags & 512UL) != 0UL) {
    {
    descriptor___6.modname = "radio_wl1273";
    descriptor___6.function = "wl1273_fm_irq_thread_handler";
    descriptor___6.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___6.format = "IRQ: STIC\n";
    descriptor___6.lineno = 279U;
    descriptor___6.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    }
    if (tmp___6 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___6, (struct device const *)radio->dev, "IRQ: STIC\n");
      }
    } else {
    }
  } else {
  }
  if (((unsigned long )flags & 1024UL) != 0UL) {
    {
    descriptor___7.modname = "radio_wl1273";
    descriptor___7.function = "wl1273_fm_irq_thread_handler";
    descriptor___7.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___7.format = "IRQ: MAL\n";
    descriptor___7.lineno = 282U;
    descriptor___7.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    }
    if (tmp___7 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___7, (struct device const *)radio->dev, "IRQ: MAL\n");
      }
    } else {
    }
  } else {
  }
  if (((unsigned long )flags & 2048UL) != 0UL) {
    {
    complete(& radio->busy);
    descriptor___8.modname = "radio_wl1273";
    descriptor___8.function = "wl1273_fm_irq_thread_handler";
    descriptor___8.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___8.format = "NOT BUSY\n";
    descriptor___8.lineno = 286U;
    descriptor___8.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
    }
    if (tmp___8 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___8, (struct device const *)radio->dev, "NOT BUSY\n");
      }
    } else {
    }
    {
    descriptor___9.modname = "radio_wl1273";
    descriptor___9.function = "wl1273_fm_irq_thread_handler";
    descriptor___9.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___9.format = "IRQ: POW_ENB\n";
    descriptor___9.lineno = 287U;
    descriptor___9.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
    }
    if (tmp___9 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___9, (struct device const *)radio->dev, "IRQ: POW_ENB\n");
      }
    } else {
    }
  } else {
  }
  if (((unsigned long )flags & 4096UL) != 0UL) {
    {
    descriptor___10.modname = "radio_wl1273";
    descriptor___10.function = "wl1273_fm_irq_thread_handler";
    descriptor___10.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___10.format = "IRQ: SCAN_OVER\n";
    descriptor___10.lineno = 291U;
    descriptor___10.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
    }
    if (tmp___10 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___10, (struct device const *)radio->dev, "IRQ: SCAN_OVER\n");
      }
    } else {
    }
  } else {
  }
  if (((unsigned long )flags & 8192UL) != 0UL) {
    {
    descriptor___11.modname = "radio_wl1273";
    descriptor___11.function = "wl1273_fm_irq_thread_handler";
    descriptor___11.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___11.format = "IRQ: ERROR\n";
    descriptor___11.lineno = 294U;
    descriptor___11.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___11.flags & 1L, 0L);
    }
    if (tmp___11 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___11, (struct device const *)radio->dev, "IRQ: ERROR\n");
      }
    } else {
    }
  } else {
  }
  if ((int )flags & 1) {
    {
    descriptor___12.modname = "radio_wl1273";
    descriptor___12.function = "wl1273_fm_irq_thread_handler";
    descriptor___12.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___12.format = "IRQ: FR:\n";
    descriptor___12.lineno = 299U;
    descriptor___12.flags = 0U;
    tmp___12 = ldv__builtin_expect((long )descriptor___12.flags & 1L, 0L);
    }
    if (tmp___12 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___12, (struct device const *)radio->dev, "IRQ: FR:\n");
      }
    } else {
    }
    if (core->mode == 1U) {
      {
      r = (*(core->write))(core, 45, 0);
      }
      if (r != 0) {
        {
        dev_err((struct device const *)radio->dev, "%s: TUNER_MODE_SET fails: %d\n",
                "wl1273_fm_irq_thread_handler", r);
        }
        goto out;
      } else {
      }
      {
      r = (*(core->read))(core, 10, & freq);
      }
      if (r != 0) {
        goto out;
      } else {
      }
      if (radio->band == 1U) {
        radio->rx_frequency = (unsigned int )((int )freq * 50 + 76000);
      } else {
        radio->rx_frequency = (unsigned int )((int )freq * 50 + 87500);
      }
      {
      usleep_range(10000UL, 15000UL);
      descriptor___13.modname = "radio_wl1273";
      descriptor___13.function = "wl1273_fm_irq_thread_handler";
      descriptor___13.filename = "drivers/media/radio/radio-wl1273.c";
      descriptor___13.format = "%dkHz\n";
      descriptor___13.lineno = 327U;
      descriptor___13.flags = 0U;
      tmp___13 = ldv__builtin_expect((long )descriptor___13.flags & 1L, 0L);
      }
      if (tmp___13 != 0L) {
        {
        __dynamic_dev_dbg(& descriptor___13, (struct device const *)radio->dev,
                          "%dkHz\n", radio->rx_frequency);
        }
      } else {
      }
    } else {
      {
      r = (*(core->read))(core, 55, & freq);
      }
      if (r != 0) {
        goto out;
      } else {
      }
      {
      descriptor___14.modname = "radio_wl1273";
      descriptor___14.function = "wl1273_fm_irq_thread_handler";
      descriptor___14.filename = "drivers/media/radio/radio-wl1273.c";
      descriptor___14.format = "%dkHz\n";
      descriptor___14.lineno = 334U;
      descriptor___14.flags = 0U;
      tmp___14 = ldv__builtin_expect((long )descriptor___14.flags & 1L, 0L);
      }
      if (tmp___14 != 0L) {
        {
        __dynamic_dev_dbg(& descriptor___14, (struct device const *)radio->dev,
                          "%dkHz\n", (int )freq);
        }
      } else {
      }
    }
    {
    descriptor___15.modname = "radio_wl1273";
    descriptor___15.function = "wl1273_fm_irq_thread_handler";
    descriptor___15.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___15.format = "%s: NOT BUSY\n";
    descriptor___15.lineno = 336U;
    descriptor___15.flags = 0U;
    tmp___15 = ldv__builtin_expect((long )descriptor___15.flags & 1L, 0L);
    }
    if (tmp___15 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___15, (struct device const *)radio->dev, "%s: NOT BUSY\n",
                        "wl1273_fm_irq_thread_handler");
      }
    } else {
    }
  } else {
  }
  out:
  {
  (*(core->write))(core, 26, (int )radio->irq_flags);
  complete(& radio->busy);
  }
  return (1);
}
}
static int wl1273_fm_set_tx_freq(struct wl1273_device *radio , unsigned int freq )
{
  struct wl1273_core *core ;
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  unsigned long tmp___3 ;
  unsigned long tmp___4 ;
  struct _ddebug descriptor___1 ;
  long tmp___5 ;
  {
  core = radio->core;
  r = 0;
  if (freq <= 75999U) {
    {
    dev_err((struct device const *)radio->dev, "Frequency out of range: %d < %d\n",
            freq, 76000);
    }
    return (-34);
  } else {
  }
  if (freq > 108000U) {
    {
    dev_err((struct device const *)radio->dev, "Frequency out of range: %d > %d\n",
            freq, 108000);
    }
    return (-34);
  } else {
  }
  {
  usleep_range(5000UL, 10000UL);
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_set_tx_freq";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s: freq: %d kHz\n";
  descriptor.lineno = 371U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s: freq: %d kHz\n",
                      "wl1273_fm_set_tx_freq", freq);
    }
  } else {
  }
  {
  r = (*(core->write))(core, 55, (int )((u16 )(freq / 10U)));
  }
  if (r != 0) {
    return (r);
  } else {
  }
  {
  reinit_completion(& radio->busy);
  tmp___0 = msecs_to_jiffies(2000U);
  tmp___1 = wait_for_completion_timeout(& radio->busy, tmp___0);
  r = (int )tmp___1;
  }
  if (r == 0) {
    return (-110);
  } else {
  }
  {
  descriptor___0.modname = "radio_wl1273";
  descriptor___0.function = "wl1273_fm_set_tx_freq";
  descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___0.format = "WL1273_CHANL_SET: %d\n";
  descriptor___0.lineno = 385U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)radio->dev, "WL1273_CHANL_SET: %d\n",
                      r);
    }
  } else {
  }
  {
  r = (*(core->write))(core, 90, 1);
  }
  if (r != 0) {
    return (r);
  } else {
  }
  {
  reinit_completion(& radio->busy);
  tmp___3 = msecs_to_jiffies(1000U);
  tmp___4 = wait_for_completion_timeout(& radio->busy, tmp___3);
  r = (int )tmp___4;
  }
  if (r == 0) {
    return (-110);
  } else {
  }
  {
  radio->tx_frequency = freq;
  descriptor___1.modname = "radio_wl1273";
  descriptor___1.function = "wl1273_fm_set_tx_freq";
  descriptor___1.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___1.format = "WL1273_POWER_ENB_SET: %d\n";
  descriptor___1.lineno = 400U;
  descriptor___1.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)radio->dev, "WL1273_POWER_ENB_SET: %d\n",
                      r);
    }
  } else {
  }
  return (0);
}
}
static int wl1273_fm_set_rx_freq(struct wl1273_device *radio , unsigned int freq )
{
  struct wl1273_core *core ;
  int r ;
  int f ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  core = radio->core;
  if (freq < radio->rangelow) {
    {
    dev_err((struct device const *)radio->dev, "Frequency out of range: %d < %d\n",
            freq, radio->rangelow);
    r = -34;
    }
    goto err;
  } else {
  }
  if (freq > radio->rangehigh) {
    {
    dev_err((struct device const *)radio->dev, "Frequency out of range: %d > %d\n",
            freq, radio->rangehigh);
    r = -34;
    }
    goto err;
  } else {
  }
  {
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_set_rx_freq";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s: %dkHz\n";
  descriptor.lineno = 426U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s: %dkHz\n",
                      "wl1273_fm_set_rx_freq", freq);
    }
  } else {
  }
  {
  (*(core->write))(core, 26, (int )radio->irq_flags);
  }
  if (radio->band == 1U) {
    f = (int )((freq - 76000U) / 50U);
  } else {
    f = (int )((freq - 87500U) / 50U);
  }
  {
  r = (*(core->write))(core, 10, (int )((u16 )f));
  }
  if (r != 0) {
    {
    dev_err((struct device const *)radio->dev, "FREQ_SET fails\n");
    }
    goto err;
  } else {
  }
  {
  r = (*(core->write))(core, 45, 1);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)radio->dev, "TUNER_MODE_SET fails\n");
    }
    goto err;
  } else {
  }
  {
  reinit_completion(& radio->busy);
  tmp___0 = msecs_to_jiffies(2000U);
  tmp___1 = wait_for_completion_timeout(& radio->busy, tmp___0);
  r = (int )tmp___1;
  }
  if (r == 0) {
    {
    dev_err((struct device const *)radio->dev, "%s: TIMEOUT\n", "wl1273_fm_set_rx_freq");
    }
    return (-110);
  } else {
  }
  radio->rd_index = 0U;
  radio->wr_index = 0U;
  radio->rx_frequency = freq;
  return (0);
  err: ;
  return (r);
}
}
static int wl1273_fm_get_freq(struct wl1273_device *radio )
{
  struct wl1273_core *core ;
  unsigned int freq ;
  u16 f ;
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  core = radio->core;
  if (core->mode == 1U) {
    {
    r = (*(core->read))(core, 10, & f);
    }
    if (r != 0) {
      return (r);
    } else {
    }
    {
    descriptor.modname = "radio_wl1273";
    descriptor.function = "wl1273_fm_get_freq";
    descriptor.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor.format = "Freq get: 0x%04x\n";
    descriptor.lineno = 475U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "Freq get: 0x%04x\n",
                        (int )f);
      }
    } else {
    }
    if (radio->band == 1U) {
      freq = (unsigned int )((int )f * 50 + 76000);
    } else {
      freq = (unsigned int )((int )f * 50 + 87500);
    }
  } else {
    {
    r = (*(core->read))(core, 55, & f);
    }
    if (r != 0) {
      return (r);
    } else {
    }
    freq = (unsigned int )((int )f * 10);
  }
  return ((int )freq);
}
}
static int wl1273_fm_upload_firmware_patch(struct wl1273_device *radio )
{
  struct wl1273_core *core ;
  unsigned int packet_num ;
  struct firmware const *fw_p ;
  char const *fw_name ;
  struct device *dev ;
  __u8 *ptr ;
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  {
  {
  core = radio->core;
  fw_name = "radio-wl1273-fw.bin";
  dev = radio->dev;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_upload_firmware_patch";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s:\n";
  descriptor.lineno = 509U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "%s:\n", "wl1273_fm_upload_firmware_patch");
    }
  } else {
  }
  {
  tmp___0 = request_firmware(& fw_p, fw_name, dev);
  }
  if (tmp___0 != 0) {
    {
    _dev_info((struct device const *)dev, "%s - %s not found\n", "wl1273_fm_upload_firmware_patch",
              fw_name);
    }
    return (0);
  } else {
  }
  {
  ptr = (__u8 *)fw_p->data;
  packet_num = (unsigned int )*ptr;
  descriptor___0.modname = "radio_wl1273";
  descriptor___0.function = "wl1273_fm_upload_firmware_patch";
  descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___0.format = "%s: packets: %d\n";
  descriptor___0.lineno = 523U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev, "%s: packets: %d\n",
                      "wl1273_fm_upload_firmware_patch", packet_num);
    }
  } else {
  }
  {
  r = wl1273_fm_write_fw(core, ptr + 1UL, (int )packet_num);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)dev, "FW upload error: %d\n", r);
    }
    goto out;
  } else {
  }
  {
  (*(core->write))(core, 102, 0);
  descriptor___1.modname = "radio_wl1273";
  descriptor___1.function = "wl1273_fm_upload_firmware_patch";
  descriptor___1.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___1.format = "%s - download OK, r: %d\n";
  descriptor___1.lineno = 534U;
  descriptor___1.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev, "%s - download OK, r: %d\n",
                      "wl1273_fm_upload_firmware_patch", r);
    }
  } else {
  }
  out:
  {
  release_firmware(fw_p);
  }
  return (r);
}
}
static int wl1273_fm_stop(struct wl1273_device *radio )
{
  struct wl1273_core *core ;
  int r ;
  int tmp ;
  int r___0 ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  core = radio->core;
  if (core->mode == 1U) {
    {
    tmp = (*(core->write))(core, 32, 0);
    r = tmp;
    }
    if (r != 0) {
      {
      dev_err((struct device const *)radio->dev, "%s: POWER_SET fails: %d\n", "wl1273_fm_stop",
              r);
      }
    } else {
    }
  } else
  if (core->mode == 2U) {
    {
    tmp___0 = (*(core->write))(core, 91, 0);
    r___0 = tmp___0;
    }
    if (r___0 != 0) {
      {
      dev_err((struct device const *)radio->dev, "%s: PUPD_SET fails: %d\n", "wl1273_fm_stop",
              r___0);
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )(core->pdata)->disable != (unsigned long )((void (*)(void))0)) {
    {
    (*((core->pdata)->disable))();
    descriptor.modname = "radio_wl1273";
    descriptor.function = "wl1273_fm_stop";
    descriptor.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor.format = "Back to reset\n";
    descriptor.lineno = 560U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "Back to reset\n");
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int wl1273_fm_start(struct wl1273_device *radio , int new_mode )
{
  struct wl1273_core *core ;
  struct wl1273_fm_platform_data *pdata ;
  struct device *dev ;
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  u16 val ;
  u16 val___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  core = radio->core;
  pdata = core->pdata;
  dev = radio->dev;
  r = -22;
  if ((unsigned long )pdata->enable != (unsigned long )((void (*)(void))0) && core->mode == 4U) {
    {
    descriptor.modname = "radio_wl1273";
    descriptor.function = "wl1273_fm_start";
    descriptor.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor.format = "Out of reset\n";
    descriptor.lineno = 574U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "Out of reset\n");
      }
    } else {
    }
    {
    (*(pdata->enable))();
    msleep(250U);
    }
  } else {
  }
  if (new_mode == 1) {
    val = 1U;
    if (radio->rds_on != 0U) {
      val = (u16 )((unsigned int )val | 2U);
    } else {
    }
    {
    r = (*(core->write))(core, 32, (int )val);
    }
    if (r != 0) {
      {
      msleep(100U);
      r = (*(core->write))(core, 32, (int )val);
      }
      if (r != 0) {
        {
        dev_err((struct device const *)dev, "%s: POWER_SET fails\n", "wl1273_fm_start");
        }
        goto fail;
      } else {
      }
    } else {
    }
    radio->wr_index = 0U;
    radio->rd_index = 0U;
  } else
  if (new_mode == 2) {
    {
    r = (*(core->write))(core, 91, 1);
    }
    if (r != 0) {
      {
      msleep(100U);
      r = (*(core->write))(core, 91, 1);
      }
      if (r != 0) {
        {
        dev_err((struct device const *)dev, "%s: PUPD_SET fails\n", "wl1273_fm_start");
        }
        goto fail;
      } else {
      }
    } else {
    }
    if (radio->rds_on != 0U) {
      {
      r = (*(core->write))(core, 94, 1);
      }
    } else {
      {
      r = (*(core->write))(core, 94, 0);
      }
    }
  } else {
    {
    dev_warn((struct device const *)dev, "%s: Illegal mode.\n", "wl1273_fm_start");
    }
  }
  if (core->mode == 4U) {
    {
    r = wl1273_fm_upload_firmware_patch(radio);
    }
    if (r != 0) {
      {
      dev_warn((struct device const *)dev, "Firmware upload failed.\n");
      }
    } else {
    }
    if (new_mode == 1) {
      val___0 = 1U;
      if (radio->rds_on != 0U) {
        val___0 = (u16 )((unsigned int )val___0 | 2U);
      } else {
      }
      {
      r = (*(core->write))(core, 32, (int )val___0);
      }
      if (r != 0) {
        {
        dev_err((struct device const *)dev, "%s: POWER_SET fails\n", "wl1273_fm_start");
        }
        goto fail;
      } else {
      }
    } else
    if (new_mode == 2) {
      {
      r = (*(core->write))(core, 91, 1);
      }
      if (r != 0) {
        {
        dev_err((struct device const *)dev, "%s: PUPD_SET fails\n", "wl1273_fm_start");
        }
        goto fail;
      } else {
      }
    } else {
    }
  } else {
  }
  return (0);
  fail: ;
  if ((unsigned long )pdata->disable != (unsigned long )((void (*)(void))0)) {
    {
    (*(pdata->disable))();
    }
  } else {
  }
  {
  descriptor___0.modname = "radio_wl1273";
  descriptor___0.function = "wl1273_fm_start";
  descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___0.format = "%s: return: %d\n";
  descriptor___0.lineno = 658U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev, "%s: return: %d\n",
                      "wl1273_fm_start", r);
    }
  } else {
  }
  return (r);
}
}
static int wl1273_fm_suspend(struct wl1273_device *radio )
{
  struct wl1273_core *core ;
  int r ;
  {
  core = radio->core;
  r = 0;
  if (core->mode == 1U) {
    {
    r = (*(core->write))(core, 32, 16);
    }
  } else
  if (core->mode == 2U) {
    {
    r = (*(core->write))(core, 91, 16);
    }
  } else {
    r = -22;
  }
  if (r != 0) {
    {
    dev_err((struct device const *)radio->dev, "%s: POWER_SET fails: %d\n", "wl1273_fm_suspend",
            r);
    }
    goto out;
  } else {
  }
  out: ;
  return (r);
}
}
static int wl1273_fm_set_mode(struct wl1273_device *radio , int mode )
{
  struct wl1273_core *core ;
  struct device *dev ;
  int old_mode ;
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  {
  {
  core = radio->core;
  dev = radio->dev;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_set_mode";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 693U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "%s\n", "wl1273_fm_set_mode");
    }
  } else {
  }
  {
  descriptor___0.modname = "radio_wl1273";
  descriptor___0.function = "wl1273_fm_set_mode";
  descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___0.format = "Forbidden modes: 0x%02x\n";
  descriptor___0.lineno = 694U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev, "Forbidden modes: 0x%02x\n",
                      (int )radio->forbidden);
    }
  } else {
  }
  old_mode = (int )core->mode;
  if ((mode & (int )radio->forbidden) != 0) {
    r = -1;
    goto out;
  } else {
  }
  {
  if (mode == 1) {
    goto case_1;
  } else {
  }
  if (mode == 2) {
    goto case_2;
  } else {
  }
  if (mode == 4) {
    goto case_4;
  } else {
  }
  if (mode == 8) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_2:
  {
  r = wl1273_fm_start(radio, mode);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)dev, "%s: Cannot start.\n", "wl1273_fm_set_mode");
    wl1273_fm_stop(radio);
    }
    goto out;
  } else {
  }
  {
  core->mode = (unsigned int )mode;
  r = (*(core->write))(core, 26, (int )radio->irq_flags);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)dev, "INT_MASK_SET fails.\n");
    }
    goto out;
  } else {
  }
  if (mode == 1) {
    {
    r = wl1273_fm_set_rx_freq(radio, radio->rx_frequency);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)dev, "set freq fails: %d.\n", r);
      }
      goto out;
    } else {
    }
    {
    r = (*(core->set_volume))(core, core->volume);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)dev, "set volume fails: %d.\n", r);
      }
      goto out;
    } else {
    }
    {
    descriptor___1.modname = "radio_wl1273";
    descriptor___1.function = "wl1273_fm_set_mode";
    descriptor___1.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___1.format = "%s: Set vol: %d.\n";
    descriptor___1.lineno = 734U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev, "%s: Set vol: %d.\n",
                        "wl1273_fm_set_mode", core->volume);
      }
    } else {
    }
  } else {
    {
    r = wl1273_fm_set_tx_freq(radio, radio->tx_frequency);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)dev, "set freq fails: %d.\n", r);
      }
      goto out;
    } else {
    }
  }
  {
  descriptor___2.modname = "radio_wl1273";
  descriptor___2.function = "wl1273_fm_set_mode";
  descriptor___2.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___2.format = "%s: Set audio mode.\n";
  descriptor___2.lineno = 743U;
  descriptor___2.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)radio->dev, "%s: Set audio mode.\n",
                      "wl1273_fm_set_mode");
    }
  } else {
  }
  {
  r = (*(core->set_audio))(core, core->audio_mode);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)dev, "Cannot set audio mode.\n");
    }
  } else {
  }
  goto ldv_33412;
  case_4:
  {
  r = wl1273_fm_stop(radio);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)dev, "%s: Off fails: %d\n", "wl1273_fm_set_mode",
            r);
    }
  } else {
    core->mode = 4U;
  }
  goto ldv_33412;
  case_8:
  {
  r = wl1273_fm_suspend(radio);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)dev, "%s: Suspend fails: %d\n", "wl1273_fm_set_mode",
            r);
    }
  } else {
    core->mode = 8U;
  }
  goto ldv_33412;
  switch_default:
  {
  dev_err((struct device const *)dev, "%s: Unknown mode: %d\n", "wl1273_fm_set_mode",
          mode);
  r = -22;
  }
  goto ldv_33412;
  switch_break: ;
  }
  ldv_33412: ;
  out: ;
  if (r != 0) {
    core->mode = (unsigned int )old_mode;
  } else {
  }
  return (r);
}
}
static int wl1273_fm_set_seek(struct wl1273_device *radio , unsigned int wrap_around ,
                              unsigned int seek_upward , int level )
{
  struct wl1273_core *core ;
  int r ;
  unsigned int dir ;
  unsigned int f ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  unsigned long tmp___5 ;
  struct _ddebug descriptor___4 ;
  long tmp___6 ;
  {
  {
  core = radio->core;
  r = 0;
  dir = seek_upward != 0U;
  f = radio->rx_frequency;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_set_seek";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "rx_frequency: %d\n";
  descriptor.lineno = 791U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "rx_frequency: %d\n",
                      f);
    }
  } else {
  }
  if (dir != 0U && f + radio->spacing <= radio->rangehigh) {
    {
    r = wl1273_fm_set_rx_freq(radio, f + radio->spacing);
    }
  } else
  if (dir != 0U && wrap_around != 0U) {
    {
    r = wl1273_fm_set_rx_freq(radio, radio->rangelow);
    }
  } else
  if (f - radio->spacing >= radio->rangelow) {
    {
    r = wl1273_fm_set_rx_freq(radio, f - radio->spacing);
    }
  } else
  if (wrap_around != 0U) {
    {
    r = wl1273_fm_set_rx_freq(radio, radio->rangehigh);
    }
  } else {
  }
  if (r != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )level - 4294967168U > 255U) {
    return (-22);
  } else {
  }
  {
  reinit_completion(& radio->busy);
  descriptor___0.modname = "radio_wl1273";
  descriptor___0.function = "wl1273_fm_set_seek";
  descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___0.format = "%s: BUSY\n";
  descriptor___0.lineno = 809U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)radio->dev, "%s: BUSY\n",
                      "wl1273_fm_set_seek");
    }
  } else {
  }
  {
  r = (*(core->write))(core, 26, (int )radio->irq_flags);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  {
  descriptor___1.modname = "radio_wl1273";
  descriptor___1.function = "wl1273_fm_set_seek";
  descriptor___1.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___1.format = "%s\n";
  descriptor___1.lineno = 815U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)radio->dev, "%s\n",
                      "wl1273_fm_set_seek");
    }
  } else {
  }
  {
  r = (*(core->write))(core, 15, (int )((u16 )level));
  }
  if (r != 0) {
    goto out;
  } else {
  }
  {
  r = (*(core->write))(core, 27, (int )((u16 )dir));
  }
  if (r != 0) {
    goto out;
  } else {
  }
  {
  r = (*(core->write))(core, 45, 2);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  {
  tmp___2 = msecs_to_jiffies(1000U);
  wait_for_completion_timeout(& radio->busy, tmp___2);
  }
  if (((unsigned long )radio->irq_received & 2UL) == 0UL) {
    goto out;
  } else {
  }
  radio->irq_received = (unsigned int )radio->irq_received & 65533U;
  if (wrap_around == 0U) {
    goto out;
  } else {
  }
  {
  descriptor___2.modname = "radio_wl1273";
  descriptor___2.function = "wl1273_fm_set_seek";
  descriptor___2.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___2.format = "Wrap around in HW seek.\n";
  descriptor___2.lineno = 839U;
  descriptor___2.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)radio->dev, "Wrap around in HW seek.\n");
    }
  } else {
  }
  if (seek_upward != 0U) {
    f = radio->rangelow;
  } else {
    f = radio->rangehigh;
  }
  {
  r = wl1273_fm_set_rx_freq(radio, f);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  {
  reinit_completion(& radio->busy);
  descriptor___3.modname = "radio_wl1273";
  descriptor___3.function = "wl1273_fm_set_seek";
  descriptor___3.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___3.format = "%s: BUSY\n";
  descriptor___3.lineno = 851U;
  descriptor___3.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)radio->dev, "%s: BUSY\n",
                      "wl1273_fm_set_seek");
    }
  } else {
  }
  {
  r = (*(core->write))(core, 45, 2);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  {
  tmp___5 = msecs_to_jiffies(1000U);
  wait_for_completion_timeout(& radio->busy, tmp___5);
  }
  out:
  {
  descriptor___4.modname = "radio_wl1273";
  descriptor___4.function = "wl1273_fm_set_seek";
  descriptor___4.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___4.format = "%s: Err: %d\n";
  descriptor___4.lineno = 859U;
  descriptor___4.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  }
  if (tmp___6 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)radio->dev, "%s: Err: %d\n",
                      "wl1273_fm_set_seek", r);
    }
  } else {
  }
  return (r);
}
}
static unsigned int wl1273_fm_get_tx_ctune(struct wl1273_device *radio )
{
  struct wl1273_core *core ;
  struct device *dev ;
  u16 val ;
  int r ;
  {
  core = radio->core;
  dev = radio->dev;
  if (core->mode == 4U || core->mode == 8U) {
    return (4294967295U);
  } else {
  }
  {
  r = (*(core->read))(core, 104, & val);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)dev, "%s: read error: %d\n", "wl1273_fm_get_tx_ctune",
            r);
    }
    goto out;
  } else {
  }
  out: ;
  return ((unsigned int )val);
}
}
static int wl1273_fm_set_preemphasis(struct wl1273_device *radio , unsigned int preemphasis )
{
  struct wl1273_core *core ;
  int r ;
  u16 em ;
  {
  core = radio->core;
  if (core->mode == 4U || core->mode == 8U) {
    return (-1);
  } else {
  }
  {
  ldv_mutex_lock_28(& core->lock);
  }
  {
  if (preemphasis == 0U) {
    goto case_0;
  } else {
  }
  if (preemphasis == 1U) {
    goto case_1;
  } else {
  }
  if (preemphasis == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0:
  em = 1U;
  goto ldv_33451;
  case_1:
  em = 0U;
  goto ldv_33451;
  case_2:
  em = 2U;
  goto ldv_33451;
  switch_default:
  r = -22;
  goto out;
  switch_break: ;
  }
  ldv_33451:
  {
  r = (*(core->write))(core, 64, (int )em);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  radio->preemphasis = preemphasis;
  out:
  {
  ldv_mutex_unlock_29(& core->lock);
  }
  return (r);
}
}
static int wl1273_fm_rds_on(struct wl1273_device *radio )
{
  struct wl1273_core *core ;
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  core = radio->core;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_rds_on";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 940U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_rds_on");
    }
  } else {
  }
  if (radio->rds_on != 0U) {
    return (0);
  } else {
  }
  {
  r = (*(core->write))(core, 32, 3);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  {
  r = wl1273_fm_set_rx_freq(radio, radio->rx_frequency);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)radio->dev, "set freq fails: %d.\n", r);
    }
  } else {
  }
  out: ;
  return (r);
}
}
static int wl1273_fm_rds_off(struct wl1273_device *radio )
{
  struct wl1273_core *core ;
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  core = radio->core;
  if (radio->rds_on == 0U) {
    return (0);
  } else {
  }
  {
  radio->irq_flags = (unsigned int )radio->irq_flags & 65531U;
  r = (*(core->write))(core, 26, (int )radio->irq_flags);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  {
  __wake_up(& radio->read_queue, 1U, 1, (void *)0);
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_rds_off";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 973U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_rds_off");
    }
  } else {
  }
  {
  r = (*(core->write))(core, 32, 1);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  {
  r = wl1273_fm_set_rx_freq(radio, radio->rx_frequency);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)radio->dev, "set freq fails: %d.\n", r);
    }
  } else {
  }
  out:
  {
  descriptor___0.modname = "radio_wl1273";
  descriptor___0.function = "wl1273_fm_rds_off";
  descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___0.format = "%s: exiting...\n";
  descriptor___0.lineno = 983U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)radio->dev, "%s: exiting...\n",
                      "wl1273_fm_rds_off");
    }
  } else {
  }
  return (r);
}
}
static int wl1273_fm_set_rds(struct wl1273_device *radio , unsigned int new_mode )
{
  int r ;
  struct wl1273_core *core ;
  {
  r = 0;
  core = radio->core;
  if (core->mode == 4U || core->mode == 8U) {
    return (-1);
  } else {
  }
  if (new_mode == 2U) {
    {
    r = (*(core->write))(core, 47, 1);
    }
    return (r);
  } else {
  }
  if (core->mode == 2U && new_mode == 0U) {
    {
    r = (*(core->write))(core, 94, 0);
    }
  } else
  if (core->mode == 2U && new_mode == 1U) {
    {
    r = (*(core->write))(core, 94, 1);
    }
  } else
  if (core->mode == 1U && new_mode == 0U) {
    {
    r = wl1273_fm_rds_off(radio);
    }
  } else
  if (core->mode == 1U && new_mode == 1U) {
    {
    r = wl1273_fm_rds_on(radio);
    }
  } else {
    {
    dev_err((struct device const *)radio->dev, "%s: Unknown mode: %d\n", "wl1273_fm_set_rds",
            new_mode);
    r = -22;
    }
  }
  if (r == 0) {
    radio->rds_on = new_mode == 1U;
  } else {
  }
  return (r);
}
}
static ssize_t wl1273_fm_fops_write(struct file *file , char const *buf , size_t count ,
                                    loff_t *ppos )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct wl1273_core *core ;
  u16 val ;
  int r ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  unsigned long tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  struct _ddebug descriptor___1 ;
  long tmp___5 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  core = radio->core;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_fops_write";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1030U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_fops_write");
    }
  } else {
  }
  if (core->mode != 2U) {
    return ((ssize_t )count);
  } else {
  }
  if (radio->rds_users == 0U) {
    {
    dev_warn((struct device const *)radio->dev, "%s: RDS not on.\n", "wl1273_fm_fops_write");
    }
    return (0L);
  } else {
  }
  {
  tmp___2 = ldv_mutex_lock_interruptible_30(& core->lock);
  }
  if (tmp___2 != 0) {
    return (-4L);
  } else {
  }
  if ((unsigned long )radio->owner != (unsigned long )((struct file *)0) && (unsigned long )radio->owner != (unsigned long )file) {
    r = -16;
    goto out;
  } else {
  }
  radio->owner = file;
  if (count > 255UL) {
    val = 255U;
  } else {
    val = (u16 )count;
  }
  {
  (*(core->write))(core, 98, (int )val);
  tmp___3 = copy_from_user((void *)radio->write_buf + 1U, (void const *)buf, (unsigned long )val);
  }
  if (tmp___3 != 0UL) {
    r = -14;
    goto out;
  } else {
  }
  {
  descriptor___0.modname = "radio_wl1273";
  descriptor___0.function = "wl1273_fm_fops_write";
  descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___0.format = "Count: %d\n";
  descriptor___0.lineno = 1065U;
  descriptor___0.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)radio->dev, "Count: %d\n",
                      (int )val);
    }
  } else {
  }
  {
  descriptor___1.modname = "radio_wl1273";
  descriptor___1.function = "wl1273_fm_fops_write";
  descriptor___1.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___1.format = "From user: \"%s\"\n";
  descriptor___1.lineno = 1066U;
  descriptor___1.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)radio->dev, "From user: \"%s\"\n",
                      radio->write_buf);
    }
  } else {
  }
  {
  *(radio->write_buf) = 99;
  (*(core->write_data))(core, (u8 *)radio->write_buf, (int )((unsigned int )val + 1U));
  r = (int )val;
  }
  out:
  {
  ldv_mutex_unlock_31(& core->lock);
  }
  return ((ssize_t )r);
}
}
static unsigned int wl1273_fm_fops_poll(struct file *file , struct poll_table_struct *pts )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct wl1273_core *core ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  core = radio->core;
  }
  if ((unsigned long )radio->owner != (unsigned long )((struct file *)0) && (unsigned long )radio->owner != (unsigned long )file) {
    return (4294967280U);
  } else {
  }
  radio->owner = file;
  if (core->mode == 1U) {
    {
    poll_wait(file, & radio->read_queue, pts);
    }
    if (radio->rd_index != radio->wr_index) {
      return (65U);
    } else {
    }
  } else
  if (core->mode == 2U) {
    return (260U);
  } else {
  }
  return (0U);
}
}
static int wl1273_fm_fops_open(struct file *file )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct wl1273_core *core ;
  int r ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  core = radio->core;
  r = 0;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_fops_open";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1108U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_fops_open");
    }
  } else {
  }
  if ((core->mode == 1U && radio->rds_on != 0U) && radio->rds_users == 0U) {
    {
    descriptor___0.modname = "radio_wl1273";
    descriptor___0.function = "wl1273_fm_fops_open";
    descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___0.format = "%s: Mode: %d\n";
    descriptor___0.lineno = 1112U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)radio->dev, "%s: Mode: %d\n",
                        "wl1273_fm_fops_open", core->mode);
      }
    } else {
    }
    {
    tmp___3 = ldv_mutex_lock_interruptible_32(& core->lock);
    }
    if (tmp___3 != 0) {
      return (-4);
    } else {
    }
    {
    radio->irq_flags = (u16 )((unsigned int )radio->irq_flags | 4U);
    r = (*(core->write))(core, 26, (int )radio->irq_flags);
    }
    if (r != 0) {
      {
      ldv_mutex_unlock_33(& core->lock);
      }
      goto out;
    } else {
    }
    {
    radio->rds_users = radio->rds_users + 1U;
    ldv_mutex_unlock_34(& core->lock);
    }
  } else {
  }
  out: ;
  return (r);
}
}
static int wl1273_fm_fops_release(struct file *file )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct wl1273_core *core ;
  int r ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  core = radio->core;
  r = 0;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_fops_release";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1140U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_fops_release");
    }
  } else {
  }
  if (radio->rds_users != 0U) {
    radio->rds_users = radio->rds_users - 1U;
    if (radio->rds_users == 0U) {
      {
      tmp___2 = ldv_mutex_lock_interruptible_35(& core->lock);
      }
      if (tmp___2 != 0) {
        return (-4);
      } else {
      }
      radio->irq_flags = (unsigned int )radio->irq_flags & 65531U;
      if (core->mode == 1U) {
        {
        r = (*(core->write))(core, 26, (int )radio->irq_flags);
        }
        if (r != 0) {
          {
          ldv_mutex_unlock_36(& core->lock);
          }
          goto out;
        } else {
        }
      } else {
      }
      {
      ldv_mutex_unlock_37(& core->lock);
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )file == (unsigned long )radio->owner) {
    radio->owner = (struct file *)0;
  } else {
  }
  out: ;
  return (r);
}
}
static ssize_t wl1273_fm_fops_read(struct file *file , char *buf , size_t count ,
                                   loff_t *ppos )
{
  int r ;
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct wl1273_core *core ;
  unsigned int block_count ;
  u16 val ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___4 ;
  unsigned long tmp___5 ;
  struct _ddebug descriptor___1 ;
  long tmp___6 ;
  {
  {
  r = 0;
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  core = radio->core;
  block_count = 0U;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_fops_read";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1178U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_fops_read");
    }
  } else {
  }
  if (core->mode != 1U) {
    return (0L);
  } else {
  }
  if (radio->rds_users == 0U) {
    {
    dev_warn((struct device const *)radio->dev, "%s: RDS not on.\n", "wl1273_fm_fops_read");
    }
    return (0L);
  } else {
  }
  {
  tmp___2 = ldv_mutex_lock_interruptible_38(& core->lock);
  }
  if (tmp___2 != 0) {
    return (-4L);
  } else {
  }
  if ((unsigned long )radio->owner != (unsigned long )((struct file *)0) && (unsigned long )radio->owner != (unsigned long )file) {
    r = -16;
    goto out;
  } else {
  }
  {
  radio->owner = file;
  r = (*(core->read))(core, 4, & val);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)radio->dev, "%s: Get RDS_SYNC fails.\n", "wl1273_fm_fops_read");
    }
    goto out;
  } else
  if ((unsigned int )val == 0U) {
    {
    _dev_info((struct device const *)radio->dev, "RDS_SYNC: Not synchronized\n");
    r = -61;
    }
    goto out;
  } else {
  }
  goto ldv_33545;
  ldv_33544: ;
  if ((file->f_flags & 2048U) != 0U) {
    r = -11;
    goto out;
  } else {
  }
  {
  descriptor___0.modname = "radio_wl1273";
  descriptor___0.function = "wl1273_fm_fops_read";
  descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___0.format = "%s: Wait for RDS data.\n";
  descriptor___0.lineno = 1218U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)radio->dev, "%s: Wait for RDS data.\n",
                      "wl1273_fm_fops_read");
    }
  } else {
  }
  __ret = 0;
  if (radio->wr_index == radio->rd_index) {
    {
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_33541:
    {
    tmp___4 = prepare_to_wait_event(& radio->read_queue, & __wait, 1);
    __int = tmp___4;
    }
    if (radio->wr_index != radio->rd_index) {
      goto ldv_33540;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_33540;
    } else {
    }
    {
    schedule();
    }
    goto ldv_33541;
    ldv_33540:
    {
    finish_wait(& radio->read_queue, & __wait);
    }
    __ret = (int )__ret___0;
  } else {
  }
  if (__ret < 0) {
    r = -4;
    goto out;
  } else {
  }
  ldv_33545: ;
  if (radio->wr_index == radio->rd_index) {
    goto ldv_33544;
  } else {
  }
  count = count / 3UL;
  goto ldv_33549;
  ldv_33548: ;
  if (radio->rd_index == radio->wr_index) {
    goto ldv_33547;
  } else {
  }
  {
  tmp___5 = copy_to_user((void *)buf, (void const *)radio->buffer + (unsigned long )radio->rd_index,
                         3UL);
  }
  if (tmp___5 != 0UL) {
    goto ldv_33547;
  } else {
  }
  radio->rd_index = radio->rd_index + 3U;
  if (radio->rd_index >= radio->buf_size) {
    radio->rd_index = 0U;
  } else {
  }
  block_count = block_count + 1U;
  buf = buf + 3UL;
  r = r + 3;
  ldv_33549: ;
  if ((size_t )block_count < count) {
    goto ldv_33548;
  } else {
  }
  ldv_33547: ;
  out:
  {
  descriptor___1.modname = "radio_wl1273";
  descriptor___1.function = "wl1273_fm_fops_read";
  descriptor___1.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___1.format = "%s: exit\n";
  descriptor___1.lineno = 1252U;
  descriptor___1.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___6 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)radio->dev, "%s: exit\n",
                      "wl1273_fm_fops_read");
    }
  } else {
  }
  {
  ldv_mutex_unlock_39(& core->lock);
  }
  return ((ssize_t )r);
}
}
static struct v4l2_file_operations const wl1273_fops =
     {& __this_module, & wl1273_fm_fops_read, & wl1273_fm_fops_write, & wl1273_fm_fops_poll,
    0, & video_ioctl2, 0, 0, 0, & wl1273_fm_fops_open, & wl1273_fm_fops_release};
static int wl1273_fm_vidioc_querycap(struct file *file , void *priv , struct v4l2_capability *capability )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_vidioc_querycap";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1273U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_vidioc_querycap");
    }
  } else {
  }
  {
  strlcpy((char *)(& capability->driver), "wl1273-fm", 16UL);
  strlcpy((char *)(& capability->card), "Texas Instruments Wl1273 FM Radio", 32UL);
  strlcpy((char *)(& capability->bus_info), (char const *)radio->bus_type, 32UL);
  capability->capabilities = 986368U;
  }
  return (0);
}
}
static int wl1273_fm_vidioc_g_input(struct file *file , void *priv , unsigned int *i )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_vidioc_g_input";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1295U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_vidioc_g_input");
    }
  } else {
  }
  *i = 0U;
  return (0);
}
}
static int wl1273_fm_vidioc_s_input(struct file *file , void *priv , unsigned int i )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_vidioc_s_input";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1307U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_vidioc_s_input");
    }
  } else {
  }
  if (i != 0U) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int wl1273_fm_set_tx_power(struct wl1273_device *radio , u16 power )
{
  struct wl1273_core *core ;
  int r ;
  {
  core = radio->core;
  if (core->mode == 4U || core->mode == 8U) {
    return (-1);
  } else {
  }
  {
  ldv_mutex_lock_40(& core->lock);
  r = (*(core->write))(core, 59, (int )(122U - (unsigned int )power));
  }
  if (r != 0) {
    goto out;
  } else {
  }
  radio->tx_power = (unsigned int )power;
  out:
  {
  ldv_mutex_unlock_41(& core->lock);
  }
  return (r);
}
}
static int wl1273_fm_tx_set_spacing(struct wl1273_device *radio , unsigned int spacing )
{
  struct wl1273_core *core ;
  int r ;
  {
  core = radio->core;
  if (spacing == 0U) {
    {
    r = (*(core->write))(core, 56, 2);
    radio->spacing = 100U;
    }
  } else
  if (spacing - 50000U <= 24999U) {
    {
    r = (*(core->write))(core, 56, 1);
    radio->spacing = 50U;
    }
  } else
  if (spacing - 100000U <= 49999U) {
    {
    r = (*(core->write))(core, 56, 2);
    radio->spacing = 100U;
    }
  } else {
    {
    r = (*(core->write))(core, 56, 4);
    radio->spacing = 200U;
    }
  }
  return (r);
}
}
static int wl1273_fm_g_volatile_ctrl(struct v4l2_ctrl *ctrl )
{
  struct wl1273_device *radio ;
  struct wl1273_core *core ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  radio = (struct wl1273_device *)ctrl->priv;
  core = radio->core;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_g_volatile_ctrl";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1379U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_g_volatile_ctrl");
    }
  } else {
  }
  {
  tmp___0 = ldv_mutex_lock_interruptible_42(& core->lock);
  }
  if (tmp___0 != 0) {
    return (-4);
  } else {
  }
  {
  if (ctrl->id == 10160498U) {
    goto case_10160498;
  } else {
  }
  goto switch_default;
  case_10160498:
  {
  tmp___1 = wl1273_fm_get_tx_ctune(radio);
  ctrl->__annonCompField82.val = (s32 )tmp___1;
  }
  goto ldv_33597;
  switch_default:
  {
  dev_warn((struct device const *)radio->dev, "%s: Unknown IOCTL: %d\n", "wl1273_fm_g_volatile_ctrl",
           ctrl->id);
  }
  goto ldv_33597;
  switch_break: ;
  }
  ldv_33597:
  {
  ldv_mutex_unlock_43(& core->lock);
  }
  return (0);
}
}
__inline static struct wl1273_device *to_radio(struct v4l2_ctrl *ctrl )
{
  struct v4l2_ctrl_handler const *__mptr ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  return ((struct wl1273_device *)__mptr + 0xfffffffffffffe50UL);
}
}
static int wl1273_fm_vidioc_s_ctrl(struct v4l2_ctrl *ctrl )
{
  struct wl1273_device *radio ;
  struct wl1273_device *tmp ;
  struct wl1273_core *core ;
  int r ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  {
  {
  tmp = to_radio(ctrl);
  radio = tmp;
  core = radio->core;
  r = 0;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_vidioc_s_ctrl";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1417U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_vidioc_s_ctrl");
    }
  } else {
  }
  {
  if (ctrl->id == 9963785U) {
    goto case_9963785;
  } else {
  }
  if (ctrl->id == 9963781U) {
    goto case_9963781;
  } else {
  }
  if (ctrl->id == 10160496U) {
    goto case_10160496;
  } else {
  }
  if (ctrl->id == 10160497U) {
    goto case_10160497;
  } else {
  }
  goto switch_default;
  case_9963785:
  {
  tmp___1 = ldv_mutex_lock_interruptible_44(& core->lock);
  }
  if (tmp___1 != 0) {
    return (-4);
  } else {
  }
  if (core->mode == 1U && ctrl->__annonCompField82.val != 0) {
    {
    r = (*(core->write))(core, 17, 12);
    }
  } else
  if (core->mode == 1U) {
    {
    r = (*(core->write))(core, 17, 0);
    }
  } else
  if (core->mode == 2U && ctrl->__annonCompField82.val != 0) {
    {
    r = (*(core->write))(core, 92, 1);
    }
  } else
  if (core->mode == 2U) {
    {
    r = (*(core->write))(core, 92, 0);
    }
  } else {
  }
  {
  ldv_mutex_unlock_45(& core->lock);
  }
  goto ldv_33613;
  case_9963781: ;
  if (ctrl->__annonCompField82.val == 0) {
    {
    r = wl1273_fm_set_mode(radio, 4);
    }
  } else {
    {
    r = (*(core->set_volume))(core, core->volume);
    }
  }
  goto ldv_33613;
  case_10160496:
  {
  r = wl1273_fm_set_preemphasis(radio, (unsigned int )ctrl->__annonCompField82.val);
  }
  goto ldv_33613;
  case_10160497:
  {
  r = wl1273_fm_set_tx_power(radio, (int )((u16 )ctrl->__annonCompField82.val));
  }
  goto ldv_33613;
  switch_default:
  {
  dev_warn((struct device const *)radio->dev, "%s: Unknown IOCTL: %d\n", "wl1273_fm_vidioc_s_ctrl",
           ctrl->id);
  }
  goto ldv_33613;
  switch_break: ;
  }
  ldv_33613:
  {
  descriptor___0.modname = "radio_wl1273";
  descriptor___0.function = "wl1273_fm_vidioc_s_ctrl";
  descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___0.format = "%s\n";
  descriptor___0.lineno = 1461U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)radio->dev, "%s\n",
                      "wl1273_fm_vidioc_s_ctrl");
    }
  } else {
  }
  return (r);
}
}
static int wl1273_fm_vidioc_g_audio(struct file *file , void *priv , struct v4l2_audio *audio )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_vidioc_g_audio";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1470U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_vidioc_g_audio");
    }
  } else {
  }
  if (audio->index > 1U) {
    return (-22);
  } else {
  }
  {
  strlcpy((char *)(& audio->name), "Radio", 32UL);
  audio->capability = 1U;
  }
  return (0);
}
}
static int wl1273_fm_vidioc_s_audio(struct file *file , void *priv , struct v4l2_audio const *audio )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_vidioc_s_audio";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1486U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_vidioc_s_audio");
    }
  } else {
  }
  if ((unsigned int )audio->index != 0U) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int wl1273_fm_vidioc_g_tuner(struct file *file , void *priv , struct v4l2_tuner *tuner )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct wl1273_core *core ;
  u16 val ;
  int r ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  core = radio->core;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_vidioc_g_tuner";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1505U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_vidioc_g_tuner");
    }
  } else {
  }
  if (tuner->index != 0U) {
    return (-22);
  } else {
  }
  {
  strlcpy((char *)(& tuner->name), "wl1273-fm", 32UL);
  tuner->type = 1U;
  tuner->rangelow = 1216000U;
  tuner->rangehigh = 1728000U;
  tuner->capability = 413U;
  }
  if ((int )radio->stereo) {
    tuner->audmode = 1U;
  } else {
    tuner->audmode = 0U;
  }
  if (core->mode != 1U) {
    return (0);
  } else {
  }
  {
  tmp___2 = ldv_mutex_lock_interruptible_46(& core->lock);
  }
  if (tmp___2 != 0) {
    return (-4);
  } else {
  }
  {
  r = (*(core->read))(core, 0, & val);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )val == 1U) {
    tuner->rxsubchans = 2U;
  } else {
    tuner->rxsubchans = 1U;
  }
  {
  r = (*(core->read))(core, 1, & val);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  {
  tuner->signal = (__s32 )((short )val);
  descriptor___0.modname = "radio_wl1273";
  descriptor___0.function = "wl1273_fm_vidioc_g_tuner";
  descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___0.format = "Signal: %d\n";
  descriptor___0.lineno = 1545U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)radio->dev, "Signal: %d\n",
                      tuner->signal);
    }
  } else {
  }
  {
  tuner->afc = 0;
  r = (*(core->read))(core, 4, & val);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )val == 1U) {
    tuner->rxsubchans = tuner->rxsubchans | 16U;
  } else {
  }
  out:
  {
  ldv_mutex_unlock_47(& core->lock);
  }
  return (r);
}
}
static int wl1273_fm_vidioc_s_tuner(struct file *file , void *priv , struct v4l2_tuner const *tuner )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct wl1273_core *core ;
  int r ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  struct _ddebug descriptor___2 ;
  long tmp___4 ;
  struct _ddebug descriptor___3 ;
  long tmp___5 ;
  struct _ddebug descriptor___4 ;
  long tmp___6 ;
  struct _ddebug descriptor___5 ;
  long tmp___7 ;
  int tmp___8 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  core = radio->core;
  r = 0;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_vidioc_s_tuner";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1568U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_vidioc_s_tuner");
    }
  } else {
  }
  {
  descriptor___0.modname = "radio_wl1273";
  descriptor___0.function = "wl1273_fm_vidioc_s_tuner";
  descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___0.format = "tuner->index: %d\n";
  descriptor___0.lineno = 1569U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)radio->dev, "tuner->index: %d\n",
                      tuner->index);
    }
  } else {
  }
  {
  descriptor___1.modname = "radio_wl1273";
  descriptor___1.function = "wl1273_fm_vidioc_s_tuner";
  descriptor___1.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___1.format = "tuner->name: %s\n";
  descriptor___1.lineno = 1570U;
  descriptor___1.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)radio->dev, "tuner->name: %s\n",
                      (__u8 const *)(& tuner->name));
    }
  } else {
  }
  {
  descriptor___2.modname = "radio_wl1273";
  descriptor___2.function = "wl1273_fm_vidioc_s_tuner";
  descriptor___2.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___2.format = "tuner->capability: 0x%04x\n";
  descriptor___2.lineno = 1571U;
  descriptor___2.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)radio->dev, "tuner->capability: 0x%04x\n",
                      tuner->capability);
    }
  } else {
  }
  {
  descriptor___3.modname = "radio_wl1273";
  descriptor___3.function = "wl1273_fm_vidioc_s_tuner";
  descriptor___3.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___3.format = "tuner->rxsubchans: 0x%04x\n";
  descriptor___3.lineno = 1572U;
  descriptor___3.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)radio->dev, "tuner->rxsubchans: 0x%04x\n",
                      tuner->rxsubchans);
    }
  } else {
  }
  {
  descriptor___4.modname = "radio_wl1273";
  descriptor___4.function = "wl1273_fm_vidioc_s_tuner";
  descriptor___4.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___4.format = "tuner->rangelow: %d\n";
  descriptor___4.lineno = 1573U;
  descriptor___4.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  }
  if (tmp___6 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)radio->dev, "tuner->rangelow: %d\n",
                      tuner->rangelow);
    }
  } else {
  }
  {
  descriptor___5.modname = "radio_wl1273";
  descriptor___5.function = "wl1273_fm_vidioc_s_tuner";
  descriptor___5.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___5.format = "tuner->rangehigh: %d\n";
  descriptor___5.lineno = 1574U;
  descriptor___5.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  }
  if (tmp___7 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)radio->dev, "tuner->rangehigh: %d\n",
                      tuner->rangehigh);
    }
  } else {
  }
  if ((unsigned int )tuner->index != 0U) {
    return (-22);
  } else {
  }
  {
  tmp___8 = ldv_mutex_lock_interruptible_48(& core->lock);
  }
  if (tmp___8 != 0) {
    return (-4);
  } else {
  }
  {
  r = wl1273_fm_set_mode(radio, 1);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  if (((unsigned int )tuner->rxsubchans & 16U) != 0U) {
    {
    r = wl1273_fm_set_rds(radio, 1U);
    }
  } else {
    {
    r = wl1273_fm_set_rds(radio, 0U);
    }
  }
  if (r != 0) {
    {
    dev_warn((struct device const *)radio->dev, "%s: RDS fails: %d\n", "wl1273_fm_vidioc_s_tuner",
             r);
    }
  } else {
  }
  if ((unsigned int )tuner->audmode == 0U) {
    {
    r = (*(core->write))(core, 12, 1);
    }
    if (r < 0) {
      {
      dev_warn((struct device const *)radio->dev, "%s: MOST_MODE fails: %d\n", "wl1273_fm_vidioc_s_tuner",
               r);
      }
      goto out;
    } else {
    }
    radio->stereo = 0;
  } else
  if ((unsigned int )tuner->audmode == 1U) {
    {
    r = (*(core->write))(core, 12, 0);
    }
    if (r < 0) {
      {
      dev_warn((struct device const *)radio->dev, "%s: MOST_MODE fails: %d\n", "wl1273_fm_vidioc_s_tuner",
               r);
      }
      goto out;
    } else {
    }
    radio->stereo = 1;
  } else {
    {
    dev_err((struct device const *)radio->dev, "%s: tuner->audmode: %d\n", "wl1273_fm_vidioc_s_tuner",
            tuner->audmode);
    r = -22;
    }
    goto out;
  }
  out:
  {
  ldv_mutex_unlock_49(& core->lock);
  }
  return (r);
}
}
static int wl1273_fm_vidioc_g_frequency(struct file *file , void *priv , struct v4l2_frequency *freq )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct wl1273_core *core ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  core = radio->core;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_vidioc_g_frequency";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1629U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_vidioc_g_frequency");
    }
  } else {
  }
  {
  tmp___2 = ldv_mutex_lock_interruptible_50(& core->lock);
  }
  if (tmp___2 != 0) {
    return (-4);
  } else {
  }
  {
  freq->type = 1U;
  tmp___3 = wl1273_fm_get_freq(radio);
  freq->frequency = (__u32 )((tmp___3 * 10000) / 625);
  ldv_mutex_unlock_51(& core->lock);
  }
  return (0);
}
}
static int wl1273_fm_vidioc_s_frequency(struct file *file , void *priv , struct v4l2_frequency const *freq )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct wl1273_core *core ;
  int r ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  long tmp___5 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  core = radio->core;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_vidioc_s_frequency";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s: %d\n";
  descriptor.lineno = 1649U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s: %d\n",
                      "wl1273_fm_vidioc_s_frequency", freq->frequency);
    }
  } else {
  }
  if ((unsigned int )freq->type != 1U) {
    {
    descriptor___0.modname = "radio_wl1273";
    descriptor___0.function = "wl1273_fm_vidioc_s_frequency";
    descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___0.format = "freq->type != V4L2_TUNER_RADIO: %d\n";
    descriptor___0.lineno = 1653U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)radio->dev, "freq->type != V4L2_TUNER_RADIO: %d\n",
                        freq->type);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  tmp___3 = ldv_mutex_lock_interruptible_52(& core->lock);
  }
  if (tmp___3 != 0) {
    return (-4);
  } else {
  }
  if (core->mode == 1U) {
    {
    descriptor___1.modname = "radio_wl1273";
    descriptor___1.function = "wl1273_fm_vidioc_s_frequency";
    descriptor___1.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___1.format = "freq: %d\n";
    descriptor___1.lineno = 1661U;
    descriptor___1.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)radio->dev, "freq: %d\n",
                        freq->frequency);
      }
    } else {
    }
    {
    r = wl1273_fm_set_rx_freq(radio, ((unsigned int )freq->frequency * 625U) / 10000U);
    }
    if (r != 0) {
      {
      dev_warn((struct device const *)radio->dev, "wl1273-fm: set frequency failed with %d\n",
               r);
      }
    } else {
    }
  } else {
    {
    r = wl1273_fm_set_tx_freq(radio, ((unsigned int )freq->frequency * 625U) / 10000U);
    }
    if (r != 0) {
      {
      dev_warn((struct device const *)radio->dev, "wl1273-fm: set frequency failed with %d\n",
               r);
      }
    } else {
    }
  }
  {
  ldv_mutex_unlock_53(& core->lock);
  descriptor___2.modname = "radio_wl1273";
  descriptor___2.function = "wl1273_fm_vidioc_s_frequency";
  descriptor___2.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor___2.format = "wl1273_vidioc_s_frequency: DONE\n";
  descriptor___2.lineno = 1678U;
  descriptor___2.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)radio->dev, "wl1273_vidioc_s_frequency: DONE\n");
    }
  } else {
  }
  return (r);
}
}
static int wl1273_fm_vidioc_s_hw_freq_seek(struct file *file , void *priv , struct v4l2_hw_freq_seek const *seek )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct wl1273_core *core ;
  int r ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  core = radio->core;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_vidioc_s_hw_freq_seek";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1691U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_vidioc_s_hw_freq_seek");
    }
  } else {
  }
  if ((unsigned int )seek->tuner != 0U || (unsigned int )seek->type != 1U) {
    return (-22);
  } else {
  }
  if ((file->f_flags & 2048U) != 0U) {
    return (-11);
  } else {
  }
  {
  tmp___2 = ldv_mutex_lock_interruptible_54(& core->lock);
  }
  if (tmp___2 != 0) {
    return (-4);
  } else {
  }
  {
  r = wl1273_fm_set_mode(radio, 1);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  {
  r = wl1273_fm_tx_set_spacing(radio, seek->spacing);
  }
  if (r != 0) {
    {
    dev_warn((struct device const *)radio->dev, "HW seek failed: %d\n", r);
    }
  } else {
  }
  {
  r = wl1273_fm_set_seek(radio, seek->wrap_around, seek->seek_upward, 7);
  }
  if (r != 0) {
    {
    dev_warn((struct device const *)radio->dev, "HW seek failed: %d\n", r);
    }
  } else {
  }
  out:
  {
  ldv_mutex_unlock_55(& core->lock);
  }
  return (r);
}
}
static int wl1273_fm_vidioc_s_modulator(struct file *file , void *priv , struct v4l2_modulator const *modulator )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct wl1273_core *core ;
  int r ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  core = radio->core;
  r = 0;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_vidioc_s_modulator";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1727U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_vidioc_s_modulator");
    }
  } else {
  }
  if ((unsigned int )modulator->index != 0U) {
    return (-22);
  } else {
  }
  {
  tmp___2 = ldv_mutex_lock_interruptible_56(& core->lock);
  }
  if (tmp___2 != 0) {
    return (-4);
  } else {
  }
  {
  r = wl1273_fm_set_mode(radio, 2);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  if (((unsigned int )modulator->txsubchans & 16U) != 0U) {
    {
    r = wl1273_fm_set_rds(radio, 1U);
    }
  } else {
    {
    r = wl1273_fm_set_rds(radio, 0U);
    }
  }
  if ((int )modulator->txsubchans & 1) {
    {
    r = (*(core->write))(core, 66, 0);
    }
  } else {
    {
    r = (*(core->write))(core, 66, 0);
    }
  }
  if (r < 0) {
    {
    dev_warn((struct device const *)radio->dev, "wl1273-fmMONO_SET fails: %d\n",
             r);
    }
  } else {
  }
  out:
  {
  ldv_mutex_unlock_57(& core->lock);
  }
  return (r);
}
}
static int wl1273_fm_vidioc_g_modulator(struct file *file , void *priv , struct v4l2_modulator *modulator )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct wl1273_core *core ;
  u16 val ;
  int r ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  core = radio->core;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_vidioc_g_modulator";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1766U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)radio->dev, "%s\n", "wl1273_fm_vidioc_g_modulator");
    }
  } else {
  }
  {
  strlcpy((char *)(& modulator->name), "wl1273-fm", 32UL);
  modulator->rangelow = 1216000U;
  modulator->rangehigh = 1728000U;
  modulator->capability = 401U;
  }
  if (core->mode != 2U) {
    return (0);
  } else {
  }
  {
  tmp___2 = ldv_mutex_lock_interruptible_58(& core->lock);
  }
  if (tmp___2 != 0) {
    return (-4);
  } else {
  }
  {
  r = (*(core->read))(core, 66, & val);
  }
  if (r != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )val == 1U) {
    modulator->txsubchans = 2U;
  } else {
    modulator->txsubchans = 1U;
  }
  if (radio->rds_on != 0U) {
    modulator->txsubchans = modulator->txsubchans | 16U;
  } else {
  }
  out:
  {
  ldv_mutex_unlock_59(& core->lock);
  }
  return (0);
}
}
static int wl1273_fm_vidioc_log_status(struct file *file , void *priv )
{
  struct wl1273_device *radio ;
  struct video_device *tmp ;
  void *tmp___0 ;
  struct wl1273_core *core ;
  struct device *dev ;
  u16 val ;
  int r ;
  int bf ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  radio = (struct wl1273_device *)tmp___0;
  core = radio->core;
  dev = radio->dev;
  _dev_info((struct device const *)dev, "Wl1273 FM Radio");
  }
  if (core->mode == 4U) {
    {
    _dev_info((struct device const *)dev, "Mode: Off\n");
    }
    return (0);
  } else {
  }
  if (core->mode == 8U) {
    {
    _dev_info((struct device const *)dev, "Mode: Suspended\n");
    }
    return (0);
  } else {
  }
  {
  r = (*(core->read))(core, 43, & val);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)dev, "%s: Get ASIC_ID fails.\n", "wl1273_fm_vidioc_log_status");
    }
  } else {
    {
    _dev_info((struct device const *)dev, "ASIC_ID: 0x%04x\n", (int )val);
    }
  }
  {
  r = (*(core->read))(core, 42, & val);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)dev, "%s: Get ASIC_VER fails.\n", "wl1273_fm_vidioc_log_status");
    }
  } else {
    {
    _dev_info((struct device const *)dev, "ASIC Version: 0x%04x\n", (int )val);
    }
  }
  {
  r = (*(core->read))(core, 41, & val);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)dev, "%s: Get FIRM_VER fails.\n", "wl1273_fm_vidioc_log_status");
    }
  } else {
    {
    _dev_info((struct device const *)dev, "FW version: %d(0x%04x)\n", (int )val,
              (int )val);
    }
  }
  {
  r = (*(core->read))(core, 16, & val);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)dev, "%s: Get BAND fails.\n", "wl1273_fm_vidioc_log_status");
    }
  } else {
    {
    _dev_info((struct device const *)dev, "BAND: %d\n", (int )val);
    }
  }
  if (core->mode == 2U) {
    {
    r = (*(core->read))(core, 91, & val);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)dev, "%s: Get PUPD fails.\n", "wl1273_fm_vidioc_log_status");
      }
    } else {
      {
      _dev_info((struct device const *)dev, "PUPD: 0x%04x\n", (int )val);
      }
    }
    {
    r = (*(core->read))(core, 55, & val);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)dev, "%s: Get CHANL fails.\n", "wl1273_fm_vidioc_log_status");
      }
    } else {
      {
      _dev_info((struct device const *)dev, "Tx frequency: %dkHz\n", (int )val * 10);
      }
    }
  } else
  if (core->mode == 1U) {
    {
    bf = (int )radio->rangelow;
    r = (*(core->read))(core, 10, & val);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)dev, "%s: Get FREQ fails.\n", "wl1273_fm_vidioc_log_status");
      }
    } else {
      {
      _dev_info((struct device const *)dev, "RX Frequency: %dkHz\n", bf + (int )val * 50);
      }
    }
    {
    r = (*(core->read))(core, 12, & val);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)dev, "%s: Get MOST_MODE fails.\n", "wl1273_fm_vidioc_log_status");
      }
    } else
    if ((unsigned int )val == 0U) {
      {
      _dev_info((struct device const *)dev, "MOST_MODE: Stereo according to blend\n");
      }
    } else
    if ((unsigned int )val == 1U) {
      {
      _dev_info((struct device const *)dev, "MOST_MODE: Force mono output\n");
      }
    } else {
      {
      _dev_info((struct device const *)dev, "MOST_MODE: Unexpected value: %d\n",
                (int )val);
      }
    }
    {
    r = (*(core->read))(core, 13, & val);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)dev, "%s: Get MOST_BLEND fails.\n", "wl1273_fm_vidioc_log_status");
      }
    } else
    if ((unsigned int )val == 0U) {
      {
      _dev_info((struct device const *)dev, "MOST_BLEND: Switched blend & hysteresis.\n");
      }
    } else
    if ((unsigned int )val == 1U) {
      {
      _dev_info((struct device const *)dev, "MOST_BLEND: Soft blend.\n");
      }
    } else {
      {
      _dev_info((struct device const *)dev, "MOST_BLEND: Unexpected val: %d\n",
                (int )val);
      }
    }
    {
    r = (*(core->read))(core, 0, & val);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)dev, "%s: Get STEREO fails.\n", "wl1273_fm_vidioc_log_status");
      }
    } else
    if ((unsigned int )val == 0U) {
      {
      _dev_info((struct device const *)dev, "STEREO: Not detected\n");
      }
    } else
    if ((unsigned int )val == 1U) {
      {
      _dev_info((struct device const *)dev, "STEREO: Detected\n");
      }
    } else {
      {
      _dev_info((struct device const *)dev, "STEREO: Unexpected value: %d\n", (int )val);
      }
    }
    {
    r = (*(core->read))(core, 1, & val);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)dev, "%s: Get RSSI_LVL fails.\n", "wl1273_fm_vidioc_log_status");
      }
    } else {
      {
      _dev_info((struct device const *)dev, "RX signal strength: %d\n", (int )((short )val));
      }
    }
    {
    r = (*(core->read))(core, 32, & val);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)dev, "%s: Get POWER fails.\n", "wl1273_fm_vidioc_log_status");
      }
    } else {
      {
      _dev_info((struct device const *)dev, "POWER: 0x%04x\n", (int )val);
      }
    }
    {
    r = (*(core->read))(core, 26, & val);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)dev, "%s: Get INT_MASK fails.\n", "wl1273_fm_vidioc_log_status");
      }
    } else {
      {
      _dev_info((struct device const *)dev, "INT_MASK: 0x%04x\n", (int )val);
      }
    }
    {
    r = (*(core->read))(core, 4, & val);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)dev, "%s: Get RDS_SYNC fails.\n", "wl1273_fm_vidioc_log_status");
      }
    } else
    if ((unsigned int )val == 0U) {
      {
      _dev_info((struct device const *)dev, "RDS_SYNC: Not synchronized\n");
      }
    } else
    if ((unsigned int )val == 1U) {
      {
      _dev_info((struct device const *)dev, "RDS_SYNC: Synchronized\n");
      }
    } else {
      {
      _dev_info((struct device const *)dev, "RDS_SYNC: Unexpected value: %d\n",
                (int )val);
      }
    }
    {
    r = (*(core->read))(core, 31, & val);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)dev, "%s: Get I2S_MODE_CONFIG fails.\n", "wl1273_fm_vidioc_log_status");
      }
    } else {
      {
      _dev_info((struct device const *)dev, "I2S_MODE_CONFIG: 0x%04x\n", (int )val);
      }
    }
    {
    r = (*(core->read))(core, 28, & val);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)dev, "%s: Get VOLUME fails.\n", "wl1273_fm_vidioc_log_status");
      }
    } else {
      {
      _dev_info((struct device const *)dev, "VOLUME: 0x%04x\n", (int )val);
      }
    }
  } else {
  }
  return (0);
}
}
static void wl1273_vdev_release(struct video_device *dev )
{
  {
  return;
}
}
static struct v4l2_ctrl_ops const wl1273_ctrl_ops = {& wl1273_fm_g_volatile_ctrl, 0, & wl1273_fm_vidioc_s_ctrl};
static struct v4l2_ioctl_ops const wl1273_ioctl_ops =
     {& wl1273_fm_vidioc_querycap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & wl1273_fm_vidioc_g_input, & wl1273_fm_vidioc_s_input,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & wl1273_fm_vidioc_g_audio, & wl1273_fm_vidioc_s_audio,
    0, 0, 0, & wl1273_fm_vidioc_g_modulator, & wl1273_fm_vidioc_s_modulator, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & wl1273_fm_vidioc_g_tuner, & wl1273_fm_vidioc_s_tuner,
    & wl1273_fm_vidioc_g_frequency, & wl1273_fm_vidioc_s_frequency, 0, 0, & wl1273_fm_vidioc_log_status,
    & wl1273_fm_vidioc_s_hw_freq_seek, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct video_device wl1273_viddev_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & wl1273_fops,
    {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}},
                                           {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0},
                                            {0, {0, 0}, 0, 0, 0UL}}, 0, 0}, 0U, 0U,
            0U, 0U, 0U}, 0, 0, {{0}, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
                                {0, 0}, 0, 0, 0, {0, {0, 0}, 0, 0, 0UL}}, 0, 0, 0,
     {{0}, 0U, 0U, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0U}}, 0U, 0U, 0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
      {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}}, 0,
      (_Bool)0, (_Bool)0, {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0}, {0, {0, 0},
                                                                        0, 0, 0UL}},
      0UL, {{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}}, {{{{{{0U}}, 0U, 0U, 0, {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}}}},
                                                       {0, 0}}, {0}, {0}, 0U, 0U,
      0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0, 0, 0UL, 0UL, 0UL, 0UL, 0, 0}, 0,
     0, 0, 0, 0ULL, 0, {0, 0}, 0, {0, 0}, 0, {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
     {0, 0}, {0, {0, 0}, {{0}}}, 0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, 0, 0, 0, 0, 0,
    {'w', 'l', '1', '2', '7', '3', '-', 'f', 'm', '\000'}, 0, 1, 0, (unsigned short)0,
    0UL, 0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0ULL, & wl1273_vdev_release,
    & wl1273_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL}, 0};
static int wl1273_fm_radio_remove(struct platform_device *pdev )
{
  struct wl1273_device *radio ;
  void *tmp ;
  struct wl1273_core *core ;
  {
  {
  tmp = platform_get_drvdata((struct platform_device const *)pdev);
  radio = (struct wl1273_device *)tmp;
  core = radio->core;
  _dev_info((struct device const *)(& pdev->dev), "%s.\n", "wl1273_fm_radio_remove");
  ldv_free_irq_60((unsigned int )(core->client)->irq, (void *)radio);
  (*((core->pdata)->free_resources))();
  v4l2_ctrl_handler_free(& radio->ctrl_handler);
  video_unregister_device(& radio->videodev);
  v4l2_device_unregister(& radio->v4l2dev);
  }
  return (0);
}
}
static int wl1273_fm_radio_probe(struct platform_device *pdev )
{
  struct wl1273_core **core ;
  struct wl1273_device *radio ;
  struct v4l2_ctrl *ctrl ;
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct lock_class_key __key ;
  void *tmp___3 ;
  struct lock_class_key _key ;
  {
  {
  core = (struct wl1273_core **)pdev->dev.platform_data;
  r = 0;
  descriptor.modname = "radio_wl1273";
  descriptor.function = "wl1273_fm_radio_probe";
  descriptor.filename = "drivers/media/radio/radio-wl1273.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 2001U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s\n", "wl1273_fm_radio_probe");
    }
  } else {
  }
  if ((unsigned long )core == (unsigned long )((struct wl1273_core **)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "No platform data.\n");
    r = -22;
    }
    goto pdata_err;
  } else {
  }
  {
  tmp___0 = devm_kzalloc(& pdev->dev, 2888UL, 208U);
  radio = (struct wl1273_device *)tmp___0;
  }
  if ((unsigned long )radio == (unsigned long )((struct wl1273_device *)0)) {
    r = -12;
    goto pdata_err;
  } else {
  }
  {
  radio->buf_size = rds_buf * 3U;
  tmp___1 = devm_kzalloc(& pdev->dev, (size_t )radio->buf_size, 208U);
  radio->buffer = (unsigned char *)tmp___1;
  }
  if ((unsigned long )radio->buffer == (unsigned long )((unsigned char *)0U)) {
    {
    printk("\vCannot allocate memory for RDS buffer.\n");
    r = -12;
    }
    goto pdata_err;
  } else {
  }
  radio->core = *core;
  radio->irq_flags = 2049U;
  radio->dev = & ((radio->core)->client)->dev;
  radio->rds_on = 0U;
  (radio->core)->mode = 4U;
  radio->tx_power = 118U;
  (radio->core)->audio_mode = 1U;
  radio->band = 0U;
  (radio->core)->i2s_mode = 0U;
  (radio->core)->channel_number = 2U;
  (radio->core)->volume = 30904U;
  radio->rx_frequency = 87500U;
  radio->tx_frequency = 108000U;
  radio->rangelow = 87500U;
  radio->rangehigh = 108000U;
  radio->stereo = 1;
  radio->bus_type = (char *)"I2C";
  if ((unsigned long )((radio->core)->pdata)->request_resources != (unsigned long )((int (*)(struct i2c_client * ))0)) {
    {
    r = (*(((radio->core)->pdata)->request_resources))((radio->core)->client);
    }
    if (r != 0) {
      {
      dev_err((struct device const *)radio->dev, "wl1273-fm: Cannot get platform data\n");
      }
      goto pdata_err;
    } else {
    }
    {
    descriptor___0.modname = "radio_wl1273";
    descriptor___0.function = "wl1273_fm_radio_probe";
    descriptor___0.filename = "drivers/media/radio/radio-wl1273.c";
    descriptor___0.format = "irq: %d\n";
    descriptor___0.lineno = 2050U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)radio->dev, "irq: %d\n",
                        ((radio->core)->client)->irq);
      }
    } else {
    }
    {
    r = ldv_request_threaded_irq_61((unsigned int )((radio->core)->client)->irq, (irqreturn_t (*)(int ,
                                                                                                  void * ))0,
                                    & wl1273_fm_irq_thread_handler, 8194UL, "wl1273-fm",
                                    (void *)radio);
    }
    if (r < 0) {
      {
      dev_err((struct device const *)radio->dev, "wl1273-fm: Unable to register IRQ handler: %d\n",
              r);
      }
      goto err_request_irq;
    } else {
    }
  } else {
    {
    dev_err((struct device const *)radio->dev, "wl1273-fm: Core WL1273 IRQ not configured");
    r = -22;
    }
    goto pdata_err;
  }
  {
  init_completion(& radio->busy);
  __init_waitqueue_head(& radio->read_queue, "&radio->read_queue", & __key);
  tmp___3 = devm_kzalloc(& pdev->dev, 256UL, 208U);
  radio->write_buf = (char *)tmp___3;
  }
  if ((unsigned long )radio->write_buf == (unsigned long )((char *)0)) {
    r = -12;
    goto write_buf_err;
  } else {
  }
  {
  radio->dev = & pdev->dev;
  radio->v4l2dev.ctrl_handler = & radio->ctrl_handler;
  radio->rds_users = 0U;
  r = v4l2_device_register(& pdev->dev, & radio->v4l2dev);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot register v4l2_device.\n");
    }
    goto write_buf_err;
  } else {
  }
  {
  radio->videodev = wl1273_viddev_template;
  radio->videodev.v4l2_dev = & radio->v4l2dev;
  v4l2_ctrl_handler_init_class(& radio->ctrl_handler, 6U, & _key, "radio_wl1273:2092:(&radio->ctrl_handler)->_lock");
  v4l2_ctrl_new_std(& radio->ctrl_handler, & wl1273_ctrl_ops, 9963781U, 0, 65535,
                    1U, 30904);
  v4l2_ctrl_new_std(& radio->ctrl_handler, & wl1273_ctrl_ops, 9963785U, 0, 1, 1U,
                    1);
  v4l2_ctrl_new_std_menu(& radio->ctrl_handler, & wl1273_ctrl_ops, 10160496U, 2, 3,
                         1);
  v4l2_ctrl_new_std(& radio->ctrl_handler, & wl1273_ctrl_ops, 10160497U, 91, 122,
                    1U, 118);
  ctrl = v4l2_ctrl_new_std(& radio->ctrl_handler, & wl1273_ctrl_ops, 10160498U, 0,
                           255, 1U, 255);
  }
  if ((unsigned long )ctrl != (unsigned long )((struct v4l2_ctrl *)0)) {
    ctrl->flags = ctrl->flags | 128UL;
  } else {
  }
  if (radio->ctrl_handler.error != 0) {
    {
    r = radio->ctrl_handler.error;
    dev_err((struct device const *)(& pdev->dev), "Ctrl handler error: %d\n", r);
    }
    goto handler_init_err;
  } else {
  }
  {
  video_set_drvdata(& radio->videodev, (void *)radio);
  platform_set_drvdata(pdev, (void *)radio);
  r = video_register_device(& radio->videodev, 2, radio_nr);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "wl1273-fm: Could not register video device\n");
    }
    goto handler_init_err;
  } else {
  }
  return (0);
  handler_init_err:
  {
  v4l2_ctrl_handler_free(& radio->ctrl_handler);
  v4l2_device_unregister(& radio->v4l2dev);
  }
  write_buf_err:
  {
  ldv_free_irq_62((unsigned int )((radio->core)->client)->irq, (void *)radio);
  }
  err_request_irq:
  {
  (*(((radio->core)->pdata)->free_resources))();
  }
  pdata_err: ;
  return (r);
}
}
static struct platform_driver wl1273_fm_radio_driver =
     {& wl1273_fm_radio_probe, & wl1273_fm_radio_remove, 0, 0, 0, {"wl1273_fm_radio",
                                                                 0, & __this_module,
                                                                 0, (_Bool)0, 0, 0,
                                                                 0, 0, 0, 0, 0, 0,
                                                                 0, 0}, 0, (_Bool)0};
static int wl1273_fm_radio_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv___platform_driver_register_63(& wl1273_fm_radio_driver, & __this_module);
  }
  return (tmp);
}
}
static void wl1273_fm_radio_driver_exit(void)
{
  {
  {
  ldv_platform_driver_unregister_64(& wl1273_fm_radio_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_wl1273_fm_radio_driver_exit_10_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_wl1273_fm_radio_driver_init_10_13(int (*arg0)(void) ) ;
int ldv___platform_driver_register(int arg0 , struct platform_driver *arg1 , struct module *arg2 ) ;
void ldv_allocate_external_0(void) ;
void ldv_dispatch_deregister_8_1(struct platform_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_9_10_4(void) ;
void ldv_dispatch_deregister_file_operations_instance_5_10_5(void) ;
void ldv_dispatch_deregister_io_instance_10_10_6(void) ;
void ldv_dispatch_irq_deregister_7_1(int arg0 ) ;
void ldv_dispatch_irq_register_9_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_pm_deregister_2_5(void) ;
void ldv_dispatch_pm_register_2_6(void) ;
void ldv_dispatch_register_6_2(struct platform_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_9_10_7(void) ;
void ldv_dispatch_register_file_operations_instance_5_10_8(void) ;
void ldv_dispatch_register_io_instance_10_10_9(void) ;
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_7(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 ) ;
void ldv_entry_EMGentry_10(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_initialize_external_data(void) ;
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_1(void *arg0 ) ;
void ldv_io_instance_callback_5_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_5_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_5_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_5_24(int (*arg0)(struct file * , void * , struct v4l2_audio * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_audio *arg3 ) ;
void ldv_io_instance_callback_5_25(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 ) ;
void ldv_io_instance_callback_5_26(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 ) ;
void ldv_io_instance_callback_5_29(int (*arg0)(struct file * , void * , struct v4l2_modulator * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_modulator *arg3 ) ;
void ldv_io_instance_callback_5_30(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 ) ;
void ldv_io_instance_callback_5_31(int (*arg0)(struct file * , void * ) , struct file *arg1 ,
                                   void *arg2 ) ;
void ldv_io_instance_callback_5_32(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 ) ;
void ldv_io_instance_callback_5_33(int (*arg0)(struct file * , void * , struct v4l2_audio * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_audio *arg3 ) ;
void ldv_io_instance_callback_5_34(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 ) ;
void ldv_io_instance_callback_5_35(int (*arg0)(struct file * , void * , struct v4l2_hw_freq_seek * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_hw_freq_seek *arg3 ) ;
void ldv_io_instance_callback_5_36(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_5_39(int (*arg0)(struct file * , void * , struct v4l2_modulator * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_modulator *arg3 ) ;
void ldv_io_instance_callback_5_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 ) ;
void ldv_io_instance_callback_5_40(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 ) ;
void ldv_io_instance_callback_5_41(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
int ldv_io_instance_probe_5_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_5_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_platform_driver_unregister(void *arg0 , struct platform_driver *arg1 ) ;
int ldv_platform_instance_probe_2_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_instance_release_2_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_platform_instance_2(void *arg0 ) ;
void ldv_platform_pm_ops_instance_3(void *arg0 ) ;
void ldv_pm_ops_instance_complete_3_3(void (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_3_15(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_late_3_14(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_noirq_3_12(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_3_9(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_late_3_8(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_noirq_3_6(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_prepare_3_22(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_3_4(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_early_3_7(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_noirq_3_5(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_3_16(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_early_3_17(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_noirq_3_19(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_idle_3_27(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_resume_3_24(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_suspend_3_25(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_3_21(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_late_3_18(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_noirq_3_20(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_3_10(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_early_3_13(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_noirq_3_11(int (*arg0)(struct device * ) , struct device *arg1 ) ;
int ldv_request_threaded_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int ,
                                                                                   void * ) ,
                             enum irqreturn (*arg3)(int , void * ) , unsigned long arg4 ,
                             char *arg5 , void *arg6 ) ;
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_4(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
int ldv_switch_2(void) ;
int ldv_switch_3(void) ;
int ldv_switch_4(void) ;
int ldv_switch_5(void) ;
void ldv_switch_automaton_state_0_15(void) ;
void ldv_switch_automaton_state_0_6(void) ;
void ldv_switch_automaton_state_1_1(void) ;
void ldv_switch_automaton_state_1_6(void) ;
void ldv_switch_automaton_state_2_17(void) ;
void ldv_switch_automaton_state_2_8(void) ;
void ldv_switch_automaton_state_3_1(void) ;
void ldv_switch_automaton_state_3_29(void) ;
void ldv_switch_automaton_state_4_1(void) ;
void ldv_switch_automaton_state_4_5(void) ;
void ldv_switch_automaton_state_5_14(void) ;
void ldv_switch_automaton_state_5_5(void) ;
void ldv_v4l2_file_operations_io_instance_5(void *arg0 ) ;
struct file_operations *ldv_0_container_file_operations ;
char *ldv_0_ldv_param_4_1_default ;
long long *ldv_0_ldv_param_4_3_default ;
struct file *ldv_0_resource_file ;
struct inode *ldv_0_resource_inode ;
int ldv_0_ret_default ;
unsigned long ldv_0_size_cnt_write_size ;
void (*ldv_10_exit_wl1273_fm_radio_driver_exit_default)(void) ;
int (*ldv_10_init_wl1273_fm_radio_driver_init_default)(void) ;
int ldv_10_ret_default ;
enum irqreturn (*ldv_1_callback_handler)(int , void * ) ;
void *ldv_1_data_data ;
int ldv_1_line_line ;
enum irqreturn ldv_1_ret_val_default ;
enum irqreturn (*ldv_1_thread_thread)(int , void * ) ;
struct platform_driver *ldv_2_container_platform_driver ;
int ldv_2_probed_default ;
struct platform_device *ldv_2_resource_platform_device ;
struct device *ldv_3_device_device ;
struct dev_pm_ops *ldv_3_pm_ops_dev_pm_ops ;
int (*ldv_4_callback_g_volatile_ctrl)(struct v4l2_ctrl * ) ;
int (*ldv_4_callback_s_ctrl)(struct v4l2_ctrl * ) ;
struct v4l2_ctrl *ldv_4_container_struct_v4l2_ctrl_ptr ;
void (*ldv_5_callback_func_1_ptr)(struct video_device * ) ;
unsigned int (*ldv_5_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_5_callback_read)(struct file * , char * , unsigned long , long long * ) ;
long (*ldv_5_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
int (*ldv_5_callback_vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
int (*ldv_5_callback_vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
int (*ldv_5_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) ;
int (*ldv_5_callback_vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
int (*ldv_5_callback_vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
int (*ldv_5_callback_vidioc_log_status)(struct file * , void * ) ;
int (*ldv_5_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
int (*ldv_5_callback_vidioc_s_audio)(struct file * , void * , struct v4l2_audio * ) ;
int (*ldv_5_callback_vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
int (*ldv_5_callback_vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek * ) ;
int (*ldv_5_callback_vidioc_s_input)(struct file * , void * , unsigned int ) ;
int (*ldv_5_callback_vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
int (*ldv_5_callback_vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
long (*ldv_5_callback_write)(struct file * , char * , unsigned long , long long * ) ;
struct v4l2_file_operations *ldv_5_container_v4l2_file_operations ;
char *ldv_5_ldv_param_18_1_default ;
unsigned long ldv_5_ldv_param_18_2_default ;
long long *ldv_5_ldv_param_18_3_default ;
unsigned int ldv_5_ldv_param_21_1_default ;
unsigned long ldv_5_ldv_param_21_2_default ;
unsigned int *ldv_5_ldv_param_26_2_default ;
unsigned int ldv_5_ldv_param_36_2_default ;
char *ldv_5_ldv_param_41_1_default ;
unsigned long ldv_5_ldv_param_41_2_default ;
long long *ldv_5_ldv_param_41_3_default ;
struct file *ldv_5_resource_file ;
struct poll_table_struct *ldv_5_resource_struct_poll_table_struct_ptr ;
struct v4l2_audio *ldv_5_resource_struct_v4l2_audio_ptr ;
struct v4l2_capability *ldv_5_resource_struct_v4l2_capability_ptr ;
struct v4l2_frequency *ldv_5_resource_struct_v4l2_frequency_ptr ;
struct v4l2_hw_freq_seek *ldv_5_resource_struct_v4l2_hw_freq_seek_ptr ;
struct v4l2_modulator *ldv_5_resource_struct_v4l2_modulator_ptr ;
struct v4l2_tuner *ldv_5_resource_struct_v4l2_tuner_ptr ;
struct video_device *ldv_5_resource_struct_video_device ;
int ldv_5_ret_default ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_10 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
int ldv_statevar_4 ;
int ldv_statevar_5 ;
void (*ldv_10_exit_wl1273_fm_radio_driver_exit_default)(void) = & wl1273_fm_radio_driver_exit;
int (*ldv_10_init_wl1273_fm_radio_driver_init_default)(void) = & wl1273_fm_radio_driver_init;
enum irqreturn (*ldv_1_thread_thread)(int , void * ) = & wl1273_fm_irq_thread_handler;
int (*ldv_4_callback_g_volatile_ctrl)(struct v4l2_ctrl * ) = & wl1273_fm_g_volatile_ctrl;
int (*ldv_4_callback_s_ctrl)(struct v4l2_ctrl * ) = & wl1273_fm_vidioc_s_ctrl;
void (*ldv_5_callback_func_1_ptr)(struct video_device * ) = & wl1273_vdev_release;
unsigned int (*ldv_5_callback_poll)(struct file * , struct poll_table_struct * ) = & wl1273_fm_fops_poll;
long (*ldv_5_callback_read)(struct file * , char * , unsigned long , long long * ) = & wl1273_fm_fops_read;
long (*ldv_5_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
int (*ldv_5_callback_vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) = & wl1273_fm_vidioc_g_audio;
int (*ldv_5_callback_vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) = & wl1273_fm_vidioc_g_frequency;
int (*ldv_5_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) = & wl1273_fm_vidioc_g_input;
int (*ldv_5_callback_vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) = & wl1273_fm_vidioc_g_modulator;
int (*ldv_5_callback_vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) = & wl1273_fm_vidioc_g_tuner;
int (*ldv_5_callback_vidioc_log_status)(struct file * , void * ) = & wl1273_fm_vidioc_log_status;
int (*ldv_5_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) = & wl1273_fm_vidioc_querycap;
int (*ldv_5_callback_vidioc_s_audio)(struct file * , void * , struct v4l2_audio * ) = (int (*)(struct file * ,
            void * , struct v4l2_audio * ))(& wl1273_fm_vidioc_s_audio);
int (*ldv_5_callback_vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency * ) = (int (*)(struct file * ,
            void * , struct v4l2_frequency * ))(& wl1273_fm_vidioc_s_frequency);
int (*ldv_5_callback_vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek * ) = (int (*)(struct file * ,
            void * , struct v4l2_hw_freq_seek * ))(& wl1273_fm_vidioc_s_hw_freq_seek);
int (*ldv_5_callback_vidioc_s_input)(struct file * , void * , unsigned int ) = & wl1273_fm_vidioc_s_input;
int (*ldv_5_callback_vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator * ) = (int (*)(struct file * ,
            void * , struct v4l2_modulator * ))(& wl1273_fm_vidioc_s_modulator);
int (*ldv_5_callback_vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner * ) = (int (*)(struct file * ,
            void * , struct v4l2_tuner * ))(& wl1273_fm_vidioc_s_tuner);
long (*ldv_5_callback_write)(struct file * , char * , unsigned long , long long * ) = (long (*)(struct file * ,
             char * , unsigned long , long long * ))(& wl1273_fm_fops_write);
void ldv_EMGentry_exit_wl1273_fm_radio_driver_exit_10_2(void (*arg0)(void) )
{
  {
  {
  wl1273_fm_radio_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_wl1273_fm_radio_driver_init_10_13(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = wl1273_fm_radio_driver_init();
  }
  return (tmp);
}
}
int ldv___platform_driver_register(int arg0 , struct platform_driver *arg1 , struct module *arg2 )
{
  struct platform_driver *ldv_6_platform_driver_platform_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_6_platform_driver_platform_driver = arg1;
    ldv_assume(ldv_statevar_2 == 17);
    ldv_dispatch_register_6_2(ldv_6_platform_driver_platform_driver);
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
void ldv_allocate_external_0(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  void *tmp___20 ;
  void *tmp___21 ;
  {
  {
  tmp = external_allocated_data();
  ldv_0_container_file_operations = (struct file_operations *)tmp;
  tmp___0 = external_allocated_data();
  ldv_0_ldv_param_4_1_default = (char *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_0_ldv_param_4_3_default = (long long *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_0_resource_file = (struct file *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_0_resource_inode = (struct inode *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_1_callback_handler = (enum irqreturn (*)(int , void * ))tmp___4;
  ldv_1_data_data = external_allocated_data();
  tmp___5 = external_allocated_data();
  ldv_2_resource_platform_device = (struct platform_device *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_3_device_device = (struct device *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_3_pm_ops_dev_pm_ops = (struct dev_pm_ops *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_4_container_struct_v4l2_ctrl_ptr = (struct v4l2_ctrl *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_5_ldv_param_18_1_default = (char *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_5_ldv_param_18_3_default = (long long *)tmp___10;
  tmp___11 = external_allocated_data();
  ldv_5_ldv_param_26_2_default = (unsigned int *)tmp___11;
  tmp___12 = external_allocated_data();
  ldv_5_ldv_param_41_1_default = (char *)tmp___12;
  tmp___13 = external_allocated_data();
  ldv_5_ldv_param_41_3_default = (long long *)tmp___13;
  tmp___14 = external_allocated_data();
  ldv_5_resource_file = (struct file *)tmp___14;
  tmp___15 = external_allocated_data();
  ldv_5_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___15;
  tmp___16 = external_allocated_data();
  ldv_5_resource_struct_v4l2_audio_ptr = (struct v4l2_audio *)tmp___16;
  tmp___17 = external_allocated_data();
  ldv_5_resource_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___17;
  tmp___18 = external_allocated_data();
  ldv_5_resource_struct_v4l2_frequency_ptr = (struct v4l2_frequency *)tmp___18;
  tmp___19 = external_allocated_data();
  ldv_5_resource_struct_v4l2_hw_freq_seek_ptr = (struct v4l2_hw_freq_seek *)tmp___19;
  tmp___20 = external_allocated_data();
  ldv_5_resource_struct_v4l2_modulator_ptr = (struct v4l2_modulator *)tmp___20;
  tmp___21 = external_allocated_data();
  ldv_5_resource_struct_v4l2_tuner_ptr = (struct v4l2_tuner *)tmp___21;
  }
  return;
}
}
void ldv_dispatch_deregister_8_1(struct platform_driver *arg0 )
{
  {
  {
  ldv_2_container_platform_driver = arg0;
  ldv_switch_automaton_state_2_8();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_9_10_4(void)
{
  {
  {
  ldv_switch_automaton_state_4_1();
  }
  return;
}
}
void ldv_dispatch_deregister_file_operations_instance_5_10_5(void)
{
  {
  {
  ldv_switch_automaton_state_0_6();
  }
  return;
}
}
void ldv_dispatch_deregister_io_instance_10_10_6(void)
{
  {
  {
  ldv_switch_automaton_state_5_5();
  }
  return;
}
}
void ldv_dispatch_irq_deregister_7_1(int arg0 )
{
  {
  {
  ldv_1_line_line = arg0;
  ldv_switch_automaton_state_1_1();
  }
  return;
}
}
void ldv_dispatch_irq_register_9_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  {
  {
  ldv_1_line_line = arg0;
  ldv_1_callback_handler = arg1;
  ldv_1_thread_thread = arg2;
  ldv_1_data_data = arg3;
  ldv_switch_automaton_state_1_6();
  }
  return;
}
}
void ldv_dispatch_pm_deregister_2_5(void)
{
  {
  {
  ldv_switch_automaton_state_3_1();
  }
  return;
}
}
void ldv_dispatch_pm_register_2_6(void)
{
  {
  {
  ldv_switch_automaton_state_3_29();
  }
  return;
}
}
void ldv_dispatch_register_6_2(struct platform_driver *arg0 )
{
  {
  {
  ldv_2_container_platform_driver = arg0;
  ldv_switch_automaton_state_2_17();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_9_10_7(void)
{
  {
  {
  ldv_switch_automaton_state_4_5();
  }
  return;
}
}
void ldv_dispatch_register_file_operations_instance_5_10_8(void)
{
  {
  {
  ldv_switch_automaton_state_0_15();
  }
  return;
}
}
void ldv_dispatch_register_io_instance_10_10_9(void)
{
  {
  {
  ldv_switch_automaton_state_5_14();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 )
{
  {
  {
  wl1273_fm_g_volatile_ctrl(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_7(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 )
{
  {
  {
  wl1273_fm_vidioc_s_ctrl(arg1);
  }
  return;
}
}
void ldv_entry_EMGentry_10(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_10 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_10 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_10 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_10 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_10 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_10 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_10 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_10 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_10 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_10 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_10 == 13) {
    goto case_13;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_2 == 9);
  ldv_EMGentry_exit_wl1273_fm_radio_driver_exit_10_2(ldv_10_exit_wl1273_fm_radio_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_10 = 13;
  }
  goto ldv_34469;
  case_3:
  {
  ldv_assume(ldv_statevar_2 == 9);
  ldv_EMGentry_exit_wl1273_fm_radio_driver_exit_10_2(ldv_10_exit_wl1273_fm_radio_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_10 = 13;
  }
  goto ldv_34469;
  case_4:
  {
  ldv_assume(ldv_statevar_4 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_9_10_4();
  ldv_statevar_10 = 2;
  }
  goto ldv_34469;
  case_5:
  {
  ldv_assume(ldv_statevar_0 == 7);
  ldv_dispatch_deregister_file_operations_instance_5_10_5();
  ldv_statevar_10 = 4;
  }
  goto ldv_34469;
  case_6:
  {
  ldv_assume(ldv_statevar_5 == 6);
  ldv_dispatch_deregister_io_instance_10_10_6();
  ldv_statevar_10 = 5;
  }
  goto ldv_34469;
  case_7:
  {
  ldv_assume(ldv_statevar_4 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_9_10_7();
  ldv_statevar_10 = 6;
  }
  goto ldv_34469;
  case_8:
  {
  ldv_assume(ldv_statevar_0 == 15);
  ldv_dispatch_register_file_operations_instance_5_10_8();
  ldv_statevar_10 = 7;
  }
  goto ldv_34469;
  case_9:
  {
  ldv_assume(ldv_statevar_5 == 14);
  ldv_dispatch_register_io_instance_10_10_9();
  ldv_statevar_10 = 8;
  }
  goto ldv_34469;
  case_10:
  {
  ldv_assume(ldv_10_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_10 = 3;
  } else {
    ldv_statevar_10 = 9;
  }
  goto ldv_34469;
  case_12:
  {
  ldv_assume(ldv_10_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_10 = 13;
  }
  goto ldv_34469;
  case_13:
  {
  ldv_assume(ldv_statevar_2 == 17);
  ldv_10_ret_default = ldv_EMGentry_init_wl1273_fm_radio_driver_init_10_13(ldv_10_init_wl1273_fm_radio_driver_init_default);
  ldv_10_ret_default = ldv_post_init(ldv_10_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_10 = 10;
  } else {
    ldv_statevar_10 = 12;
  }
  goto ldv_34469;
  switch_default: ;
  switch_break: ;
  }
  ldv_34469: ;
  return;
}
}
int main(void)
{
  int tmp ;
  {
  {
  ldv_initialize();
  ldv_initialize_external_data();
  ldv_statevar_10 = 13;
  ldv_0_ret_default = 1;
  ldv_statevar_0 = 15;
  ldv_statevar_1 = 6;
  ldv_2_probed_default = 1;
  ldv_statevar_2 = 17;
  ldv_statevar_3 = 29;
  ldv_statevar_4 = 5;
  ldv_5_ret_default = 1;
  ldv_statevar_5 = 14;
  }
  ldv_34492:
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
  goto switch_default;
  case_0:
  {
  ldv_entry_EMGentry_10((void *)0);
  }
  goto ldv_34484;
  case_1:
  {
  ldv_file_operations_file_operations_instance_0((void *)0);
  }
  goto ldv_34484;
  case_2:
  {
  ldv_interrupt_interrupt_instance_1((void *)0);
  }
  goto ldv_34484;
  case_3:
  {
  ldv_platform_platform_instance_2((void *)0);
  }
  goto ldv_34484;
  case_4:
  {
  ldv_platform_pm_ops_instance_3((void *)0);
  }
  goto ldv_34484;
  case_5:
  {
  ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_4((void *)0);
  }
  goto ldv_34484;
  case_6:
  {
  ldv_v4l2_file_operations_io_instance_5((void *)0);
  }
  goto ldv_34484;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_34484: ;
  goto ldv_34492;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  {
  {
  if (ldv_statevar_0 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_0 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_0 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_0 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_0 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_0 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_0 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_0 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_0 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_0 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_0 == 18) {
    goto case_18;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_0 = 7;
  } else {
    ldv_statevar_0 = 12;
  }
  goto ldv_34497;
  case_2:
  ldv_statevar_0 = 1;
  goto ldv_34497;
  case_3:
  {
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_34497;
  case_5:
  ldv_statevar_0 = 3;
  goto ldv_34497;
  case_7:
  {
  ldv_free((void *)ldv_0_resource_file);
  ldv_free((void *)ldv_0_resource_inode);
  ldv_0_ret_default = 1;
  ldv_statevar_0 = 15;
  }
  goto ldv_34497;
  case_9:
  {
  ldv_assume(ldv_0_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_0 = 7;
  } else {
    ldv_statevar_0 = 12;
  }
  goto ldv_34497;
  case_11:
  {
  ldv_assume(ldv_0_ret_default == 0);
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_34497;
  case_12: ;
  if ((unsigned long )ldv_0_container_file_operations->open != (unsigned long )((int (*)(struct inode * ,
                                                                                         struct file * ))0)) {
    {
    ldv_0_ret_default = ldv_file_operations_instance_probe_0_12(ldv_0_container_file_operations->open,
                                                                ldv_0_resource_inode,
                                                                ldv_0_resource_file);
    }
  } else {
  }
  {
  ldv_0_ret_default = ldv_filter_err_code(ldv_0_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_0 = 9;
  } else {
    ldv_statevar_0 = 11;
  }
  goto ldv_34497;
  case_14:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_0_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(1032UL);
  ldv_0_resource_inode = (struct inode *)tmp___3;
  tmp___4 = ldv_undef_int();
  ldv_0_size_cnt_write_size = (unsigned long )tmp___4;
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    ldv_statevar_0 = 7;
  } else {
    ldv_statevar_0 = 12;
  }
  goto ldv_34497;
  case_15: ;
  goto ldv_34497;
  case_18:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_4_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_4_3_default = (long long *)tmp___7;
  ldv_assume(ldv_0_size_cnt_write_size <= 2147479552UL);
  ldv_file_operations_instance_write_0_4((long (*)(struct file * , char * , unsigned long ,
                                                   long long * ))ldv_0_container_file_operations->write,
                                         ldv_0_resource_file, ldv_0_ldv_param_4_1_default,
                                         ldv_0_size_cnt_write_size, ldv_0_ldv_param_4_3_default);
  ldv_free((void *)ldv_0_ldv_param_4_1_default);
  ldv_free((void *)ldv_0_ldv_param_4_3_default);
  ldv_statevar_0 = 3;
  }
  goto ldv_34497;
  switch_default: ;
  switch_break: ;
  }
  ldv_34497: ;
  return;
}
}
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  wl1273_fm_fops_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_7_line_line ;
  {
  {
  ldv_7_line_line = arg1;
  ldv_assume(ldv_statevar_1 == 2);
  ldv_dispatch_irq_deregister_7_1(ldv_7_line_line);
  }
  return;
  return;
}
}
void ldv_initialize_external_data(void)
{
  {
  {
  ldv_allocate_external_0();
  }
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  enum irqreturn tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  wl1273_fm_irq_thread_handler(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_1(void *arg0 )
{
  int tmp ;
  {
  {
  if (ldv_statevar_1 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_1 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_1 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_1 == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume((unsigned int )ldv_1_ret_val_default != 2U);
  ldv_statevar_1 = 6;
  }
  goto ldv_34553;
  case_4:
  {
  ldv_assume((unsigned int )ldv_1_ret_val_default == 2U);
  ldv_interrupt_instance_thread_1_3(ldv_1_thread_thread, ldv_1_line_line, ldv_1_data_data);
  ldv_statevar_1 = 6;
  }
  goto ldv_34553;
  case_5:
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_1_callback_handler != (unsigned long )((enum irqreturn (*)(int ,
                                                                                     void * ))0)) {
    {
    ldv_1_ret_val_default = ldv_interrupt_instance_handler_1_5(ldv_1_callback_handler,
                                                               ldv_1_line_line, ldv_1_data_data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_1 = 2;
  } else {
    ldv_statevar_1 = 4;
  }
  goto ldv_34553;
  case_6: ;
  goto ldv_34553;
  switch_default: ;
  switch_break: ;
  }
  ldv_34553: ;
  return;
}
}
void ldv_io_instance_callback_5_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  wl1273_fm_fops_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_5_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  wl1273_fm_fops_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_5_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_5_24(int (*arg0)(struct file * , void * , struct v4l2_audio * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_audio *arg3 )
{
  {
  {
  wl1273_fm_vidioc_g_audio(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_5_25(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 )
{
  {
  {
  wl1273_fm_vidioc_g_frequency(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_5_26(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 )
{
  {
  {
  wl1273_fm_vidioc_g_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_5_29(int (*arg0)(struct file * , void * , struct v4l2_modulator * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_modulator *arg3 )
{
  {
  {
  wl1273_fm_vidioc_g_modulator(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_5_30(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 )
{
  {
  {
  wl1273_fm_vidioc_g_tuner(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_5_31(int (*arg0)(struct file * , void * ) , struct file *arg1 ,
                                   void *arg2 )
{
  {
  {
  wl1273_fm_vidioc_log_status(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_5_32(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 )
{
  {
  {
  wl1273_fm_vidioc_querycap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_5_33(int (*arg0)(struct file * , void * , struct v4l2_audio * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_audio *arg3 )
{
  {
  {
  wl1273_fm_vidioc_s_audio(arg1, arg2, (struct v4l2_audio const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_5_34(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 )
{
  {
  {
  wl1273_fm_vidioc_s_frequency(arg1, arg2, (struct v4l2_frequency const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_5_35(int (*arg0)(struct file * , void * , struct v4l2_hw_freq_seek * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_hw_freq_seek *arg3 )
{
  {
  {
  wl1273_fm_vidioc_s_hw_freq_seek(arg1, arg2, (struct v4l2_hw_freq_seek const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_5_36(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 )
{
  {
  {
  wl1273_fm_vidioc_s_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_5_39(int (*arg0)(struct file * , void * , struct v4l2_modulator * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_modulator *arg3 )
{
  {
  {
  wl1273_fm_vidioc_s_modulator(arg1, arg2, (struct v4l2_modulator const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_5_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 )
{
  {
  {
  wl1273_vdev_release(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_5_40(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 )
{
  {
  {
  wl1273_fm_vidioc_s_tuner(arg1, arg2, (struct v4l2_tuner const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_5_41(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  wl1273_fm_fops_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
int ldv_io_instance_probe_5_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = wl1273_fm_fops_open(arg1);
  }
  return (tmp);
}
}
void ldv_io_instance_release_5_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  wl1273_fm_fops_release(arg1);
  }
  return;
}
}
void ldv_platform_driver_unregister(void *arg0 , struct platform_driver *arg1 )
{
  struct platform_driver *ldv_8_platform_driver_platform_driver ;
  {
  {
  ldv_8_platform_driver_platform_driver = arg1;
  ldv_assume(ldv_statevar_2 == 9);
  ldv_dispatch_deregister_8_1(ldv_8_platform_driver_platform_driver);
  }
  return;
  return;
}
}
int ldv_platform_instance_probe_2_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = wl1273_fm_radio_probe(arg1);
  }
  return (tmp);
}
}
void ldv_platform_instance_release_2_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  {
  {
  wl1273_fm_radio_remove(arg1);
  }
  return;
}
}
void ldv_platform_platform_instance_2(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  {
  {
  if (ldv_statevar_2 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_2 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_2 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_2 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_2 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_2 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_2 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_2 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_2 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_2 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_2 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_2 == 17) {
    goto case_17;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_2 = 9;
  } else {
    ldv_statevar_2 = 14;
  }
  goto ldv_34745;
  case_3:
  {
  ldv_assume(ldv_statevar_1 == 2);
  ldv_platform_instance_release_2_3(ldv_2_container_platform_driver->remove, ldv_2_resource_platform_device);
  ldv_2_probed_default = 1;
  ldv_statevar_2 = 1;
  }
  goto ldv_34745;
  case_4:
  {
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_34745;
  case_5:
  {
  ldv_assume(ldv_statevar_3 == 1);
  ldv_dispatch_pm_deregister_2_5();
  ldv_statevar_2 = 4;
  }
  goto ldv_34745;
  case_6:
  {
  ldv_assume(ldv_statevar_3 == 29);
  ldv_dispatch_pm_register_2_6();
  ldv_statevar_2 = 5;
  }
  goto ldv_34745;
  case_7:
  ldv_statevar_2 = 4;
  goto ldv_34745;
  case_9:
  {
  ldv_free((void *)ldv_2_resource_platform_device);
  ldv_2_probed_default = 1;
  ldv_statevar_2 = 17;
  }
  goto ldv_34745;
  case_11:
  {
  ldv_assume(ldv_2_probed_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_2 = 9;
  } else {
    ldv_statevar_2 = 14;
  }
  goto ldv_34745;
  case_13:
  {
  ldv_assume(ldv_2_probed_default == 0);
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_34745;
  case_14:
  {
  ldv_assume(ldv_statevar_1 == 2 || ldv_statevar_1 == 6);
  ldv_pre_probe();
  ldv_2_probed_default = ldv_platform_instance_probe_2_14(ldv_2_container_platform_driver->probe,
                                                          ldv_2_resource_platform_device);
  ldv_2_probed_default = ldv_post_probe(ldv_2_probed_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_2 = 11;
  } else {
    ldv_statevar_2 = 13;
  }
  goto ldv_34745;
  case_16:
  {
  tmp___2 = ldv_xmalloc(1432UL);
  ldv_2_resource_platform_device = (struct platform_device *)tmp___2;
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    ldv_statevar_2 = 9;
  } else {
    ldv_statevar_2 = 14;
  }
  goto ldv_34745;
  case_17: ;
  goto ldv_34745;
  switch_default: ;
  switch_break: ;
  }
  ldv_34745: ;
  return;
}
}
void ldv_platform_pm_ops_instance_3(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  if (ldv_statevar_3 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_3 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_3 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_3 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_3 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_3 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_3 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_3 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_3 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_3 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_3 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_3 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_3 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_3 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_3 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_3 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_3 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_3 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_3 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_3 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_3 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_3 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_3 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_3 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_3 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_3 == 26) {
    goto case_26;
  } else {
  }
  if (ldv_statevar_3 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_3 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_3 == 29) {
    goto case_29;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_34762;
  case_2:
  {
  ldv_statevar_3 = ldv_switch_2();
  }
  goto ldv_34762;
  case_3: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->complete != (unsigned long )((void (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_complete_3_3(ldv_3_pm_ops_dev_pm_ops->complete, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 2;
  goto ldv_34762;
  case_4: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->restore != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_restore_3_4(ldv_3_pm_ops_dev_pm_ops->restore, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 3;
  goto ldv_34762;
  case_5: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->restore_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_restore_noirq_3_5(ldv_3_pm_ops_dev_pm_ops->restore_noirq,
                                          ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 4;
  goto ldv_34762;
  case_6: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->poweroff_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_poweroff_noirq_3_6(ldv_3_pm_ops_dev_pm_ops->poweroff_noirq,
                                           ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 5;
  goto ldv_34762;
  case_7: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->restore_early != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_restore_early_3_7(ldv_3_pm_ops_dev_pm_ops->restore_early,
                                          ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 4;
  goto ldv_34762;
  case_8: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->poweroff_late != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_poweroff_late_3_8(ldv_3_pm_ops_dev_pm_ops->poweroff_late,
                                          ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 7;
  goto ldv_34762;
  case_9: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->poweroff != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_poweroff_3_9(ldv_3_pm_ops_dev_pm_ops->poweroff, ldv_3_device_device);
    }
  } else {
  }
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_3 = 6;
  } else {
    ldv_statevar_3 = 8;
  }
  goto ldv_34762;
  case_10: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->thaw != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_thaw_3_10(ldv_3_pm_ops_dev_pm_ops->thaw, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 3;
  goto ldv_34762;
  case_11: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->thaw_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_thaw_noirq_3_11(ldv_3_pm_ops_dev_pm_ops->thaw_noirq, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 10;
  goto ldv_34762;
  case_12: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->freeze_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_freeze_noirq_3_12(ldv_3_pm_ops_dev_pm_ops->freeze_noirq, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 11;
  goto ldv_34762;
  case_13: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->thaw_early != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_thaw_early_3_13(ldv_3_pm_ops_dev_pm_ops->thaw_early, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 10;
  goto ldv_34762;
  case_14: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->freeze_late != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_freeze_late_3_14(ldv_3_pm_ops_dev_pm_ops->freeze_late, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 13;
  goto ldv_34762;
  case_15: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->freeze != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_freeze_3_15(ldv_3_pm_ops_dev_pm_ops->freeze, ldv_3_device_device);
    }
  } else {
  }
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_3 = 12;
  } else {
    ldv_statevar_3 = 14;
  }
  goto ldv_34762;
  case_16: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->resume != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_resume_3_16(ldv_3_pm_ops_dev_pm_ops->resume, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 3;
  goto ldv_34762;
  case_17: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->resume_early != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_resume_early_3_17(ldv_3_pm_ops_dev_pm_ops->resume_early, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 16;
  goto ldv_34762;
  case_18: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->suspend_late != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_suspend_late_3_18(ldv_3_pm_ops_dev_pm_ops->suspend_late, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 17;
  goto ldv_34762;
  case_19: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->resume_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_resume_noirq_3_19(ldv_3_pm_ops_dev_pm_ops->resume_noirq, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 16;
  goto ldv_34762;
  case_20: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->suspend_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_suspend_noirq_3_20(ldv_3_pm_ops_dev_pm_ops->suspend_noirq,
                                           ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 19;
  goto ldv_34762;
  case_21: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->suspend != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_suspend_3_21(ldv_3_pm_ops_dev_pm_ops->suspend, ldv_3_device_device);
    }
  } else {
  }
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_3 = 18;
  } else {
    ldv_statevar_3 = 20;
  }
  goto ldv_34762;
  case_22: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->prepare != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_prepare_3_22(ldv_3_pm_ops_dev_pm_ops->prepare, ldv_3_device_device);
    }
  } else {
  }
  {
  ldv_statevar_3 = ldv_switch_3();
  }
  goto ldv_34762;
  case_23:
  {
  ldv_statevar_3 = ldv_switch_2();
  }
  goto ldv_34762;
  case_24: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->runtime_resume != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_resume_3_24(ldv_3_pm_ops_dev_pm_ops->runtime_resume,
                                            ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 23;
  goto ldv_34762;
  case_25: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->runtime_suspend != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_suspend_3_25(ldv_3_pm_ops_dev_pm_ops->runtime_suspend,
                                             ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 24;
  goto ldv_34762;
  case_26:
  {
  ldv_statevar_3 = ldv_switch_2();
  }
  goto ldv_34762;
  case_27: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->runtime_idle != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_idle_3_27(ldv_3_pm_ops_dev_pm_ops->runtime_idle, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 26;
  goto ldv_34762;
  case_28:
  {
  ldv_statevar_3 = ldv_switch_2();
  }
  goto ldv_34762;
  case_29: ;
  goto ldv_34762;
  switch_default: ;
  switch_break: ;
  }
  ldv_34762: ;
  return;
}
}
void ldv_pm_ops_instance_complete_3_3(void (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_3_15(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_late_3_14(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_noirq_3_12(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_3_9(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_late_3_8(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_noirq_3_6(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_prepare_3_22(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_3_4(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_early_3_7(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_noirq_3_5(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_3_16(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_early_3_17(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_noirq_3_19(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_idle_3_27(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_resume_3_24(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_suspend_3_25(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_3_21(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_late_3_18(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_noirq_3_20(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_3_10(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_early_3_13(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_noirq_3_11(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_request_threaded_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int ,
                                                                                   void * ) ,
                             enum irqreturn (*arg3)(int , void * ) , unsigned long arg4 ,
                             char *arg5 , void *arg6 )
{
  enum irqreturn (*ldv_9_callback_handler)(int , void * ) ;
  void *ldv_9_data_data ;
  int ldv_9_line_line ;
  enum irqreturn (*ldv_9_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_9_line_line = (int )arg1;
    ldv_9_callback_handler = arg2;
    ldv_9_thread_thread = arg3;
    ldv_9_data_data = arg6;
    ldv_assume(ldv_statevar_1 == 6);
    ldv_dispatch_irq_register_9_2(ldv_9_line_line, ldv_9_callback_handler, ldv_9_thread_thread,
                                  ldv_9_data_data);
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
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_4(void *arg0 )
{
  {
  {
  if (ldv_statevar_4 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_4 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_4 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_4 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_4 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_4 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_34932;
  case_2:
  {
  ldv_statevar_4 = ldv_switch_4();
  }
  goto ldv_34932;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_g_volatile_ctrl, ldv_4_container_struct_v4l2_ctrl_ptr);
  ldv_statevar_4 = 2;
  }
  goto ldv_34932;
  case_4:
  {
  ldv_statevar_4 = ldv_switch_4();
  }
  goto ldv_34932;
  case_5: ;
  goto ldv_34932;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_4_7(ldv_4_callback_s_ctrl, ldv_4_container_struct_v4l2_ctrl_ptr);
  ldv_statevar_4 = 2;
  }
  goto ldv_34932;
  switch_default: ;
  switch_break: ;
  }
  ldv_34932: ;
  return;
}
}
int ldv_switch_0(void)
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
  goto switch_default;
  case_0: ;
  return (2);
  case_1: ;
  return (5);
  case_2: ;
  return (18);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_1(void)
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
  goto switch_default;
  case_0: ;
  return (3);
  case_1: ;
  return (6);
  case_2: ;
  return (7);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_2(void)
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
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (22);
  case_2: ;
  return (25);
  case_3: ;
  return (27);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_3(void)
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
  goto switch_default;
  case_0: ;
  return (9);
  case_1: ;
  return (15);
  case_2: ;
  return (21);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_4(void)
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
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (3);
  case_2: ;
  return (7);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_5(void)
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
  if (tmp == 8) {
    goto case_8;
  } else {
  }
  if (tmp == 9) {
    goto case_9;
  } else {
  }
  if (tmp == 10) {
    goto case_10;
  } else {
  }
  if (tmp == 11) {
    goto case_11;
  } else {
  }
  if (tmp == 12) {
    goto case_12;
  } else {
  }
  if (tmp == 13) {
    goto case_13;
  } else {
  }
  if (tmp == 14) {
    goto case_14;
  } else {
  }
  if (tmp == 15) {
    goto case_15;
  } else {
  }
  if (tmp == 16) {
    goto case_16;
  } else {
  }
  if (tmp == 17) {
    goto case_17;
  } else {
  }
  if (tmp == 18) {
    goto case_18;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (2);
  case_1: ;
  return (4);
  case_2: ;
  return (17);
  case_3: ;
  return (19);
  case_4: ;
  return (22);
  case_5: ;
  return (24);
  case_6: ;
  return (25);
  case_7: ;
  return (27);
  case_8: ;
  return (29);
  case_9: ;
  return (30);
  case_10: ;
  return (31);
  case_11: ;
  return (32);
  case_12: ;
  return (33);
  case_13: ;
  return (34);
  case_14: ;
  return (35);
  case_15: ;
  return (37);
  case_16: ;
  return (39);
  case_17: ;
  return (40);
  case_18: ;
  return (42);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
void ldv_switch_automaton_state_0_15(void)
{
  {
  ldv_statevar_0 = 14;
  return;
}
}
void ldv_switch_automaton_state_0_6(void)
{
  {
  ldv_0_ret_default = 1;
  ldv_statevar_0 = 15;
  return;
}
}
void ldv_switch_automaton_state_1_1(void)
{
  {
  ldv_statevar_1 = 6;
  return;
}
}
void ldv_switch_automaton_state_1_6(void)
{
  {
  ldv_statevar_1 = 5;
  return;
}
}
void ldv_switch_automaton_state_2_17(void)
{
  {
  ldv_statevar_2 = 16;
  return;
}
}
void ldv_switch_automaton_state_2_8(void)
{
  {
  ldv_2_probed_default = 1;
  ldv_statevar_2 = 17;
  return;
}
}
void ldv_switch_automaton_state_3_1(void)
{
  {
  ldv_statevar_3 = 29;
  return;
}
}
void ldv_switch_automaton_state_3_29(void)
{
  {
  ldv_statevar_3 = 28;
  return;
}
}
void ldv_switch_automaton_state_4_1(void)
{
  {
  ldv_statevar_4 = 5;
  return;
}
}
void ldv_switch_automaton_state_4_5(void)
{
  {
  ldv_statevar_4 = 4;
  return;
}
}
void ldv_switch_automaton_state_5_14(void)
{
  {
  ldv_statevar_5 = 13;
  return;
}
}
void ldv_switch_automaton_state_5_5(void)
{
  {
  ldv_5_ret_default = 1;
  ldv_statevar_5 = 14;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_5(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  int tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  {
  {
  if (ldv_statevar_5 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_5 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_5 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_5 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_5 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_5 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_5 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_5 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_5 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_5 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_5 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_5 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_5 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_5 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_5 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_5 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_5 == 29) {
    goto case_29;
  } else {
  }
  if (ldv_statevar_5 == 30) {
    goto case_30;
  } else {
  }
  if (ldv_statevar_5 == 31) {
    goto case_31;
  } else {
  }
  if (ldv_statevar_5 == 32) {
    goto case_32;
  } else {
  }
  if (ldv_statevar_5 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_5 == 34) {
    goto case_34;
  } else {
  }
  if (ldv_statevar_5 == 35) {
    goto case_35;
  } else {
  }
  if (ldv_statevar_5 == 37) {
    goto case_37;
  } else {
  }
  if (ldv_statevar_5 == 39) {
    goto case_39;
  } else {
  }
  if (ldv_statevar_5 == 40) {
    goto case_40;
  } else {
  }
  if (ldv_statevar_5 == 42) {
    goto case_42;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_5 = 6;
  } else {
    ldv_statevar_5 = 11;
  }
  goto ldv_35020;
  case_2:
  {
  ldv_io_instance_release_5_2(ldv_5_container_v4l2_file_operations->release, ldv_5_resource_file);
  ldv_statevar_5 = 1;
  }
  goto ldv_35020;
  case_3:
  {
  ldv_statevar_5 = ldv_switch_5();
  }
  goto ldv_35020;
  case_4:
  {
  ldv_io_instance_callback_5_4(ldv_5_callback_func_1_ptr, ldv_5_resource_struct_video_device);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_6:
  {
  ldv_free((void *)ldv_5_resource_file);
  ldv_free((void *)ldv_5_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_5_resource_struct_v4l2_audio_ptr);
  ldv_free((void *)ldv_5_resource_struct_v4l2_capability_ptr);
  ldv_free((void *)ldv_5_resource_struct_v4l2_frequency_ptr);
  ldv_free((void *)ldv_5_resource_struct_v4l2_hw_freq_seek_ptr);
  ldv_free((void *)ldv_5_resource_struct_v4l2_modulator_ptr);
  ldv_free((void *)ldv_5_resource_struct_v4l2_tuner_ptr);
  ldv_free((void *)ldv_5_resource_struct_video_device);
  ldv_5_ret_default = 1;
  ldv_statevar_5 = 14;
  }
  goto ldv_35020;
  case_8:
  {
  ldv_assume(ldv_5_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_5 = 6;
  } else {
    ldv_statevar_5 = 11;
  }
  goto ldv_35020;
  case_10:
  {
  ldv_assume(ldv_5_ret_default == 0);
  ldv_statevar_5 = ldv_switch_5();
  }
  goto ldv_35020;
  case_11:
  {
  ldv_5_ret_default = ldv_io_instance_probe_5_11(ldv_5_container_v4l2_file_operations->open,
                                                 ldv_5_resource_file);
  ldv_5_ret_default = ldv_filter_err_code(ldv_5_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_5 = 8;
  } else {
    ldv_statevar_5 = 10;
  }
  goto ldv_35020;
  case_13:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_5_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(16UL);
  ldv_5_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___3;
  tmp___4 = ldv_xmalloc(52UL);
  ldv_5_resource_struct_v4l2_audio_ptr = (struct v4l2_audio *)tmp___4;
  tmp___5 = ldv_xmalloc(104UL);
  ldv_5_resource_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___5;
  tmp___6 = ldv_xmalloc(44UL);
  ldv_5_resource_struct_v4l2_frequency_ptr = (struct v4l2_frequency *)tmp___6;
  tmp___7 = ldv_xmalloc(48UL);
  ldv_5_resource_struct_v4l2_hw_freq_seek_ptr = (struct v4l2_hw_freq_seek *)tmp___7;
  tmp___8 = ldv_xmalloc(68UL);
  ldv_5_resource_struct_v4l2_modulator_ptr = (struct v4l2_modulator *)tmp___8;
  tmp___9 = ldv_xmalloc(84UL);
  ldv_5_resource_struct_v4l2_tuner_ptr = (struct v4l2_tuner *)tmp___9;
  tmp___10 = ldv_xmalloc(1808UL);
  ldv_5_resource_struct_video_device = (struct video_device *)tmp___10;
  tmp___11 = ldv_undef_int();
  }
  if (tmp___11 != 0) {
    ldv_statevar_5 = 6;
  } else {
    ldv_statevar_5 = 11;
  }
  goto ldv_35020;
  case_14: ;
  goto ldv_35020;
  case_17:
  {
  ldv_io_instance_callback_5_17(ldv_5_callback_poll, ldv_5_resource_file, ldv_5_resource_struct_poll_table_struct_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_19:
  {
  tmp___12 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_18_1_default = (char *)tmp___12;
  tmp___13 = ldv_xmalloc(8UL);
  ldv_5_ldv_param_18_3_default = (long long *)tmp___13;
  ldv_io_instance_callback_5_18(ldv_5_callback_read, ldv_5_resource_file, ldv_5_ldv_param_18_1_default,
                                ldv_5_ldv_param_18_2_default, ldv_5_ldv_param_18_3_default);
  ldv_free((void *)ldv_5_ldv_param_18_1_default);
  ldv_free((void *)ldv_5_ldv_param_18_3_default);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_22:
  {
  ldv_io_instance_callback_5_21(ldv_5_callback_unlocked_ioctl, ldv_5_resource_file,
                                ldv_5_ldv_param_21_1_default, ldv_5_ldv_param_21_2_default);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_24:
  {
  ldv_io_instance_callback_5_24(ldv_5_callback_vidioc_g_audio, ldv_5_resource_file,
                                (void *)ldv_5_resource_struct_poll_table_struct_ptr,
                                ldv_5_resource_struct_v4l2_audio_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_25:
  {
  ldv_io_instance_callback_5_25(ldv_5_callback_vidioc_g_frequency, ldv_5_resource_file,
                                (void *)ldv_5_resource_struct_poll_table_struct_ptr,
                                ldv_5_resource_struct_v4l2_frequency_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_27:
  {
  tmp___14 = ldv_xmalloc(4UL);
  ldv_5_ldv_param_26_2_default = (unsigned int *)tmp___14;
  ldv_io_instance_callback_5_26(ldv_5_callback_vidioc_g_input, ldv_5_resource_file,
                                (void *)ldv_5_resource_struct_poll_table_struct_ptr,
                                ldv_5_ldv_param_26_2_default);
  ldv_free((void *)ldv_5_ldv_param_26_2_default);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_29:
  {
  ldv_io_instance_callback_5_29(ldv_5_callback_vidioc_g_modulator, ldv_5_resource_file,
                                (void *)ldv_5_resource_struct_poll_table_struct_ptr,
                                ldv_5_resource_struct_v4l2_modulator_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_30:
  {
  ldv_io_instance_callback_5_30(ldv_5_callback_vidioc_g_tuner, ldv_5_resource_file,
                                (void *)ldv_5_resource_struct_poll_table_struct_ptr,
                                ldv_5_resource_struct_v4l2_tuner_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_31:
  {
  ldv_io_instance_callback_5_31(ldv_5_callback_vidioc_log_status, ldv_5_resource_file,
                                (void *)ldv_5_resource_struct_poll_table_struct_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_32:
  {
  ldv_io_instance_callback_5_32(ldv_5_callback_vidioc_querycap, ldv_5_resource_file,
                                (void *)ldv_5_resource_struct_poll_table_struct_ptr,
                                ldv_5_resource_struct_v4l2_capability_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_33:
  {
  ldv_io_instance_callback_5_33(ldv_5_callback_vidioc_s_audio, ldv_5_resource_file,
                                (void *)ldv_5_resource_struct_poll_table_struct_ptr,
                                ldv_5_resource_struct_v4l2_audio_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_34:
  {
  ldv_io_instance_callback_5_34(ldv_5_callback_vidioc_s_frequency, ldv_5_resource_file,
                                (void *)ldv_5_resource_struct_poll_table_struct_ptr,
                                ldv_5_resource_struct_v4l2_frequency_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_35:
  {
  ldv_io_instance_callback_5_35(ldv_5_callback_vidioc_s_hw_freq_seek, ldv_5_resource_file,
                                (void *)ldv_5_resource_struct_poll_table_struct_ptr,
                                ldv_5_resource_struct_v4l2_hw_freq_seek_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_37:
  {
  ldv_io_instance_callback_5_36(ldv_5_callback_vidioc_s_input, ldv_5_resource_file,
                                (void *)ldv_5_resource_struct_poll_table_struct_ptr,
                                ldv_5_ldv_param_36_2_default);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_39:
  {
  ldv_io_instance_callback_5_39(ldv_5_callback_vidioc_s_modulator, ldv_5_resource_file,
                                (void *)ldv_5_resource_struct_poll_table_struct_ptr,
                                ldv_5_resource_struct_v4l2_modulator_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_40:
  {
  ldv_io_instance_callback_5_40(ldv_5_callback_vidioc_s_tuner, ldv_5_resource_file,
                                (void *)ldv_5_resource_struct_poll_table_struct_ptr,
                                ldv_5_resource_struct_v4l2_tuner_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  case_42:
  {
  tmp___15 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_41_1_default = (char *)tmp___15;
  tmp___16 = ldv_xmalloc(8UL);
  ldv_5_ldv_param_41_3_default = (long long *)tmp___16;
  ldv_io_instance_callback_5_41(ldv_5_callback_write, ldv_5_resource_file, ldv_5_ldv_param_41_1_default,
                                ldv_5_ldv_param_41_2_default, ldv_5_ldv_param_41_3_default);
  ldv_free((void *)ldv_5_ldv_param_41_1_default);
  ldv_free((void *)ldv_5_ldv_param_41_3_default);
  ldv_statevar_5 = 3;
  }
  goto ldv_35020;
  switch_default: ;
  switch_break: ;
  }
  ldv_35020: ;
  return;
}
}
static void *ldv_dev_get_drvdata_12(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_13(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_20(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_21(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_30(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_wl1273_core(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_32(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_wl1273_core(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_35(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_wl1273_core(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_38(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_wl1273_core(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_40(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_42(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_wl1273_core(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_44(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_wl1273_core(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_46(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_wl1273_core(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_48(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_wl1273_core(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_50(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_wl1273_core(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_52(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_wl1273_core(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_54(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_wl1273_core(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_55(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_56(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_wl1273_core(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_58(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_wl1273_core(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_59(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_wl1273_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_irq_60(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static int ldv_request_threaded_irq_61(unsigned int ldv_func_arg1 , irqreturn_t (*ldv_func_arg2)(int ,
                                                                                                 void * ) ,
                                       irqreturn_t (*ldv_func_arg3)(int , void * ) ,
                                       unsigned long ldv_func_arg4 , char const *ldv_func_arg5 ,
                                       void *ldv_func_arg6 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_threaded_irq(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4,
                             ldv_func_arg5, ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_threaded_irq(ldv_func_res, ldv_func_arg1, ldv_func_arg2, ldv_func_arg3,
                                     ldv_func_arg4, (char *)ldv_func_arg5, ldv_func_arg6);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_irq_62(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static int ldv___platform_driver_register_63(struct platform_driver *ldv_func_arg1 ,
                                             struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv___platform_driver_register(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_platform_driver_unregister_64(struct platform_driver *ldv_func_arg1 )
{
  {
  {
  platform_driver_unregister(ldv_func_arg1);
  ldv_platform_driver_unregister((void *)0, ldv_func_arg1);
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
  tmp = ldv_zalloc((unsigned long )size + 2200UL);
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
extern void ldv_check_alloc_flags(gfp_t ) ;
extern void ldv_after_alloc(void * ) ;
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
void *ldv_malloc(size_t size ) ;
void *ldv_calloc(size_t nmemb , size_t size ) ;
void *ldv_malloc_unknown_size(void) ;
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
void *ldv_undef_ptr(void) ;
unsigned long ldv_undef_ulong(void) ;
int ldv_undef_int_negative(void) ;
int ldv_undef_int_nonpositive(void) ;
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
ldv_set LDV_MUTEXES_i_mutex_of_inode ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_i_mutex_of_inode);
  LDV_MUTEXES_i_mutex_of_inode = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_i_mutex_of_inode);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_i_mutex_of_inode = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_i_mutex_of_inode) {
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
int ldv_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_i_mutex_of_inode);
  tmp = ldv_mutex_is_locked_i_mutex_of_inode(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_i_mutex_of_inode = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_i_mutex_of_inode(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_i_mutex_of_inode);
  LDV_MUTEXES_i_mutex_of_inode = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock ;
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock);
  LDV_MUTEXES_lock = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock) {
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
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock);
  tmp = ldv_mutex_is_locked_lock(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock);
  LDV_MUTEXES_lock = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock_of_v4l2_ctrl_handler ;
void ldv_mutex_lock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock_of_v4l2_ctrl_handler) {
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
int ldv_mutex_trylock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  tmp = ldv_mutex_is_locked_lock_of_v4l2_ctrl_handler(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_v4l2_ctrl_handler(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock_of_v4l2_ctrl_handler(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock_of_wl1273_core ;
void ldv_mutex_lock_lock_of_wl1273_core(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_wl1273_core);
  LDV_MUTEXES_lock_of_wl1273_core = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock_of_wl1273_core(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_wl1273_core);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock_of_wl1273_core = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock_of_wl1273_core(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock_of_wl1273_core) {
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
int ldv_mutex_trylock_lock_of_wl1273_core(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock_of_wl1273_core);
  tmp = ldv_mutex_is_locked_lock_of_wl1273_core(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock_of_wl1273_core = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_wl1273_core(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock_of_wl1273_core(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_wl1273_core(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock_of_wl1273_core);
  LDV_MUTEXES_lock_of_wl1273_core = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_mutex_of_device ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_mutex_of_device);
  LDV_MUTEXES_mutex_of_device = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_mutex_of_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_mutex_of_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_mutex_of_device) {
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
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_mutex_of_device);
  tmp = ldv_mutex_is_locked_mutex_of_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_mutex_of_device = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_mutex_of_device(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_mutex_of_device);
  LDV_MUTEXES_mutex_of_device = 0;
  }
  return;
}
}
void ldv_initialize(void)
{
  {
  LDV_MUTEXES_i_mutex_of_inode = 0;
  LDV_MUTEXES_lock = 0;
  LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 0;
  LDV_MUTEXES_lock_of_wl1273_core = 0;
  LDV_MUTEXES_mutex_of_device = 0;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock_of_wl1273_core);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_mutex_of_device);
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
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __platform_driver_register(struct platform_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
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
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void complete(struct completion *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *devm_kmalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  return (void *)external_alloc();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_transfer(struct i2c_adapter *arg0, struct i2c_msg *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_check_alloc_flags(gfp_t arg0) {
  return;
}
void ldv_pre_probe() {
  return;
}
void ldv_switch_to_interrupt_context() {
  return;
}
void ldv_switch_to_process_context() {
  return;
}
void might_fault() {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void msleep(unsigned int arg0) {
  return;
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void usleep_range(unsigned long arg0, unsigned long arg1) {
  return;
}
void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler *arg0, unsigned int arg1, struct lock_class_key *arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s32 arg3, s32 arg4, u32 arg5, s32 arg6) {
  return (struct v4l2_ctrl *)external_alloc();
}
void *external_alloc(void);
struct v4l2_ctrl *v4l2_ctrl_new_std_menu(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s32 arg3, s32 arg4, s32 arg5) {
  return (struct v4l2_ctrl *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
void *external_alloc(void);
struct video_device *video_devdata(struct file *arg0) {
  return (struct video_device *)external_alloc();
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int wait_for_completion_timeout(struct completion *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
