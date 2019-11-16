struct device;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
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
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __be64;
typedef __u32 __wsum;
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
typedef unsigned char u_char;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
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
struct net_device;
struct file_operations;
struct completion;
struct pid;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_35 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_35 seqlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
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
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct __anonstruct_nodemask_t_40 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_40 nodemask_t;
struct path;
struct inode;
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
struct ctl_table;
struct pci_dev;
struct pci_bus;
struct __anonstruct_mm_context_t_105 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_105 mm_context_t;
struct device_node;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
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
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_LATENCY = 1,
    DEV_PM_QOS_FLAGS = 2
} ;
union __anonunion_data_133 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_133 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints latency ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *latency_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
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
struct __anonstruct____missing_field_name_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_135 {
   struct __anonstruct____missing_field_name_136 __annonCompField34 ;
   struct __anonstruct____missing_field_name_137 __annonCompField35 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_135 __annonCompField36 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion____missing_field_name_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_144 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_143 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_144 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_142 {
   union __anonunion____missing_field_name_143 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_141 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_142 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_139 {
   union __anonunion____missing_field_name_140 __annonCompField38 ;
   union __anonunion____missing_field_name_141 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_145 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_146 __annonCompField44 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_139 __annonCompField43 ;
   union __anonunion____missing_field_name_145 __annonCompField45 ;
   union __anonunion____missing_field_name_147 __annonCompField46 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
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
   union __anonunion_shared_148 shared ;
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
struct file_ra_state;
struct user_struct;
struct writeback_control;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
typedef s32 dma_cookie_t;
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
typedef unsigned short __kernel_sa_family_t;
struct cred;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct __anonstruct_sync_serial_settings_151 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_151 sync_serial_settings;
struct __anonstruct_te1_settings_152 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_152 te1_settings;
struct __anonstruct_raw_hdlc_proto_153 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_153 raw_hdlc_proto;
struct __anonstruct_fr_proto_154 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_154 fr_proto;
struct __anonstruct_fr_proto_pvc_155 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_155 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_156 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_156 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_157 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_157 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_158 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_158 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_159 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_160 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_159 ifr_ifrn ;
   union __anonunion_ifr_ifru_160 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_163 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_162 {
   struct __anonstruct____missing_field_name_163 __annonCompField47 ;
};
struct lockref {
   union __anonunion____missing_field_name_162 __annonCompField48 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_165 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_164 {
   struct __anonstruct____missing_field_name_165 __annonCompField49 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_164 __annonCompField50 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_166 {
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
   union __anonunion_d_u_166 d_u ;
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
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct cgroup_subsys_state;
struct export_operations;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
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
struct __anonstruct_kprojid_t_168 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_168 kprojid_t;
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
union __anonunion____missing_field_name_169 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_169 __annonCompField51 ;
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
union __anonunion_arg_171 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_170 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_171 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_170 read_descriptor_t;
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
struct backing_dev_info;
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
union __anonunion____missing_field_name_172 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_173 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_174 {
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
   union __anonunion____missing_field_name_172 __annonCompField52 ;
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
   union __anonunion____missing_field_name_173 __annonCompField53 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_174 __annonCompField54 ;
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
union __anonunion_f_u_175 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_175 f_u ;
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
struct net;
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
struct __anonstruct_afs_177 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_176 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_177 afs ;
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
   union __anonunion_fl_u_176 fl_u ;
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
typedef unsigned long cputime_t;
struct __anonstruct_sigset_t_178 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_178 sigset_t;
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
struct __anonstruct__kill_180 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_181 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_183 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_184 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_185 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_186 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_179 {
   int _pad[28U] ;
   struct __anonstruct__kill_180 _kill ;
   struct __anonstruct__timer_181 _timer ;
   struct __anonstruct__rt_182 _rt ;
   struct __anonstruct__sigchld_183 _sigchld ;
   struct __anonstruct__sigfault_184 _sigfault ;
   struct __anonstruct__sigpoll_185 _sigpoll ;
   struct __anonstruct__sigsys_186 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_179 _sifields ;
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
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
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
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct____missing_field_name_190 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_189 {
   struct __anonstruct____missing_field_name_190 __annonCompField55 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_189 __annonCompField56 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
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
union __anonunion____missing_field_name_191 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_192 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_194 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_193 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_194 __annonCompField59 ;
};
union __anonunion_type_data_195 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_197 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_196 {
   union __anonunion_payload_197 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_191 __annonCompField57 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_192 __annonCompField58 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_193 __annonCompField60 ;
   union __anonunion_type_data_195 type_data ;
   union __anonunion____missing_field_name_196 __annonCompField61 ;
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
struct uts_namespace;
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
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
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
struct __anonstruct____missing_field_name_214 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_215 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_213 {
   struct __anonstruct____missing_field_name_214 __annonCompField63 ;
   struct __anonstruct____missing_field_name_215 __annonCompField64 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_213 __annonCompField65 ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct sk_buff;
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
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
typedef u64 netdev_features_t;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_217 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_217 page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
   ktime_t syststamp ;
};
struct skb_shared_info {
   unsigned char nr_frags ;
   __u8 tx_flags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   __be32 ip6_frag_id ;
   atomic_t dataref ;
   void *destructor_arg ;
   skb_frag_t frags[17U] ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct____missing_field_name_219 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_218 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_219 __annonCompField67 ;
};
union __anonunion____missing_field_name_220 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion____missing_field_name_221 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   ktime_t tstamp ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion____missing_field_name_218 __annonCompField68 ;
   __u32 priority ;
   __u8 local_df : 1 ;
   __u8 cloned : 1 ;
   __u8 ip_summed : 2 ;
   __u8 nohdr : 1 ;
   __u8 nfctinfo : 3 ;
   __u8 pkt_type : 3 ;
   __u8 fclone : 2 ;
   __u8 ipvs_property : 1 ;
   __u8 peeked : 1 ;
   __u8 nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 rxhash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   __u8 ndisc_nodetype : 2 ;
   __u8 pfmemalloc : 1 ;
   __u8 ooo_okay : 1 ;
   __u8 l4_rxhash : 1 ;
   __u8 wifi_acked_valid : 1 ;
   __u8 wifi_acked : 1 ;
   __u8 no_fcs : 1 ;
   __u8 head_frag : 1 ;
   __u8 encapsulation : 1 ;
   union __anonunion____missing_field_name_220 __annonCompField69 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_221 __annonCompField70 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh_indir)(struct net_device * , u32 * ) ;
   int (*set_rxfh_indir)(struct net_device * , u32 const * ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[36U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[8U] ;
};
struct linux_mib {
   unsigned long mibs[97U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct proc_dir_entry;
struct netns_mib {
   struct tcp_mib *tcp_statistics[1U] ;
   struct ipstats_mib *ip_statistics[1U] ;
   struct linux_mib *net_statistics[1U] ;
   struct udp_mib *udp_statistics[1U] ;
   struct udp_mib *udplite_statistics[1U] ;
   struct icmp_mib *icmp_statistics[1U] ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[1U] ;
   struct udp_mib *udplite_stats_in6[1U] ;
   struct ipstats_mib *ipv6_statistics[1U] ;
   struct icmpv6_mib *icmpv6_statistics[1U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics[1U] ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   struct list_head lru_list ;
   spinlock_t lru_lock ;
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
};
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *xfrm4_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   struct local_ports sysctl_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   kgid_t sysctl_ping_group_range[2U] ;
   atomic_t dev_addr_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *xfrm6_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int flowlabel_consistency ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t rt_genid ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics[1U] ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
struct nlattr;
struct nf_logger;
struct netns_nf {
   struct proc_dir_entry *proc_netfilter ;
   struct nf_logger const *nf_loggers[13U] ;
   struct ctl_table_header *nf_log_dir_header ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   bool notrack_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
   bool ulog_warn_deprecated ;
   bool ebt_ulog_warn_deprecated ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   u8 gencursor ;
   u8 genctr ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   spinlock_t xfrm_state_lock ;
   spinlock_t xfrm_policy_sk_bundle_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   unsigned int dev_unreg_count ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct xattr_handler {
   char const *prefix ;
   int flags ;
   size_t (*list)(struct dentry * , char * , size_t , char const * , size_t ,
                  int ) ;
   int (*get)(struct dentry * , char const * , void * , size_t , int ) ;
   int (*set)(struct dentry * , char const * , void const * , size_t , int ,
              int ) ;
};
struct simple_xattrs {
   struct list_head head ;
   spinlock_t lock ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_t count ;
   unsigned int *pcpu_count ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_kill ;
   struct callback_head rcu ;
};
struct cgroupfs_root;
struct cgroup_subsys;
struct cgroup;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   unsigned long flags ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct cgroup_name {
   struct callback_head callback_head ;
   char name[] ;
};
struct cgroup {
   unsigned long flags ;
   int id ;
   int nr_css ;
   struct list_head sibling ;
   struct list_head children ;
   struct list_head files ;
   struct cgroup *parent ;
   struct dentry *dentry ;
   u64 serial_nr ;
   struct cgroup_name *name ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroupfs_root *root ;
   struct list_head cset_links ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct cgroup_subsys_state dummy_css ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
   struct simple_xattrs xattrs ;
};
struct cgroupfs_root {
   struct super_block *sb ;
   unsigned long subsys_mask ;
   int hierarchy_id ;
   struct cgroup top_cgroup ;
   int number_of_cgroups ;
   struct list_head root_list ;
   unsigned long flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cgrp_links ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct callback_head callback_head ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   int (*write_string)(struct cgroup_subsys_state * , struct cftype * , char const * ) ;
   int (*trigger)(struct cgroup_subsys_state * , unsigned int ) ;
};
struct cftype_set {
   struct list_head node ;
   struct cftype *cfts ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int subsys_id ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   char const *name ;
   struct cgroupfs_root *root ;
   struct list_head cftsets ;
   struct cftype *base_cftypes ;
   struct cftype_set base_cftset ;
   struct module *module ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 tx_rate ;
   __u32 spoofchk ;
   __u32 linkstate ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct list_head dev_list ;
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
};
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct netdev_phys_port_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * , gfp_t ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_port_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
};
enum ldv_27995 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_27996 {
    RTNL_LINK_INITIALIZED = 0,
    RTNL_LINK_INITIALIZING = 1
} ;
struct __anonstruct_adj_list_235 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_236 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct forwarding_accel_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_237 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
   struct pcpu_dstats *dstats ;
   struct pcpu_vstats *vstats ;
};
struct garp_port;
struct mrp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct __anonstruct_adj_list_235 adj_list ;
   struct __anonstruct_all_adj_list_236 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct forwarding_accel_ops const *fwd_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   struct tipc_bearer *tipc_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   unsigned char broadcast[32U] ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   struct cpu_rmap *rx_cpu_rmap ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   enum ldv_27995 reg_state : 8 ;
   bool dismantle ;
   enum ldv_27996 rtnl_link_state : 16 ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion____missing_field_name_237 __annonCompField74 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
typedef unsigned long kernel_ulong_t;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
};
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
struct hotplug_slot;
struct pci_slot {
   struct pci_bus *bus ;
   struct list_head list ;
   struct hotplug_slot *hotplug ;
   unsigned char number ;
   struct kobject kobj ;
};
typedef int pci_power_t;
typedef unsigned int pci_channel_state_t;
enum pci_channel_state {
    pci_channel_io_normal = 1,
    pci_channel_io_frozen = 2,
    pci_channel_io_perm_failure = 3
} ;
typedef unsigned short pci_dev_flags_t;
typedef unsigned short pci_bus_flags_t;
struct pcie_link_state;
struct pci_vpd;
struct pci_sriov;
struct pci_ats;
struct pci_driver;
union __anonunion____missing_field_name_241 {
   struct pci_sriov *sriov ;
   struct pci_dev *physfn ;
};
struct pci_dev {
   struct list_head bus_list ;
   struct pci_bus *bus ;
   struct pci_bus *subordinate ;
   void *sysdata ;
   struct proc_dir_entry *procent ;
   struct pci_slot *slot ;
   unsigned int devfn ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   unsigned int class ;
   u8 revision ;
   u8 hdr_type ;
   u8 pcie_cap ;
   u8 msi_cap ;
   u8 msix_cap ;
   u8 pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned int pme_support : 5 ;
   unsigned int pme_interrupt : 1 ;
   unsigned int pme_poll : 1 ;
   unsigned int d1_support : 1 ;
   unsigned int d2_support : 1 ;
   unsigned int no_d1d2 : 1 ;
   unsigned int no_d3cold : 1 ;
   unsigned int d3cold_allowed : 1 ;
   unsigned int mmio_always_on : 1 ;
   unsigned int wakeup_prepared : 1 ;
   unsigned int runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned int transparent : 1 ;
   unsigned int multifunction : 1 ;
   unsigned int is_added : 1 ;
   unsigned int is_busmaster : 1 ;
   unsigned int no_msi : 1 ;
   unsigned int block_cfg_access : 1 ;
   unsigned int broken_parity_status : 1 ;
   unsigned int irq_reroute_variant : 2 ;
   unsigned int msi_enabled : 1 ;
   unsigned int msix_enabled : 1 ;
   unsigned int ari_enabled : 1 ;
   unsigned int is_managed : 1 ;
   unsigned int needs_freset : 1 ;
   unsigned int state_saved : 1 ;
   unsigned int is_physfn : 1 ;
   unsigned int is_virtfn : 1 ;
   unsigned int reset_fn : 1 ;
   unsigned int is_hotplug_bridge : 1 ;
   unsigned int __aer_firmware_first_valid : 1 ;
   unsigned int __aer_firmware_first : 1 ;
   unsigned int broken_intx_masking : 1 ;
   unsigned int io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct attribute_group const **msi_irq_groups ;
   struct pci_vpd *vpd ;
   union __anonunion____missing_field_name_241 __annonCompField75 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
};
struct pci_ops;
struct msi_chip;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct resource busn_res ;
   struct pci_ops *ops ;
   struct msi_chip *msi ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48U] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned int is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus * , unsigned int , int , int , u32 * ) ;
   int (*write)(struct pci_bus * , unsigned int , int , int , u32 ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev * , enum pci_channel_state ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev * ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev * ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev * ) ;
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   int (*sriov_configure)(struct pci_dev * , int ) ;
   struct pci_error_handlers const *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
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
union __anonunion____missing_field_name_246 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_246 __annonCompField76 ;
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
struct __anonstruct_isl38xx_fragment_247 {
   __le32 address ;
   __le16 size ;
   __le16 flags ;
};
typedef struct __anonstruct_isl38xx_fragment_247 isl38xx_fragment;
struct isl38xx_cb {
   __le32 driver_curr_frag[6U] ;
   __le32 device_curr_frag[6U] ;
   isl38xx_fragment rx_data_low[8U] ;
   isl38xx_fragment tx_data_low[32U] ;
   isl38xx_fragment rx_data_high[8U] ;
   isl38xx_fragment tx_data_high[32U] ;
   isl38xx_fragment rx_data_mgmt[4U] ;
   isl38xx_fragment tx_data_mgmt[4U] ;
};
typedef struct isl38xx_cb isl38xx_control_block;
struct iw_param {
   __s32 value ;
   __u8 fixed ;
   __u8 disabled ;
   __u16 flags ;
};
struct iw_point {
   void *pointer ;
   __u16 length ;
   __u16 flags ;
};
struct iw_freq {
   __s32 m ;
   __s16 e ;
   __u8 i ;
   __u8 flags ;
};
struct iw_quality {
   __u8 qual ;
   __u8 level ;
   __u8 noise ;
   __u8 updated ;
};
struct iw_discarded {
   __u32 nwid ;
   __u32 code ;
   __u32 fragment ;
   __u32 retries ;
   __u32 misc ;
};
struct iw_missed {
   __u32 beacon ;
};
struct iw_statistics {
   __u16 status ;
   struct iw_quality qual ;
   struct iw_discarded discard ;
   struct iw_missed miss ;
};
union iwreq_data {
   char name[16U] ;
   struct iw_point essid ;
   struct iw_param nwid ;
   struct iw_freq freq ;
   struct iw_param sens ;
   struct iw_param bitrate ;
   struct iw_param txpower ;
   struct iw_param rts ;
   struct iw_param frag ;
   __u32 mode ;
   struct iw_param retry ;
   struct iw_point encoding ;
   struct iw_param power ;
   struct iw_quality qual ;
   struct sockaddr ap_addr ;
   struct sockaddr addr ;
   struct iw_param param ;
   struct iw_point data ;
};
struct iw_priv_args {
   __u32 cmd ;
   __u16 set_args ;
   __u16 get_args ;
   char name[16U] ;
};
struct iw_request_info {
   __u16 cmd ;
   __u16 flags ;
};
typedef int (*iw_handler)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
                          char * );
struct iw_handler_def {
   iw_handler (* const *standard)(struct net_device * , struct iw_request_info * ,
                                   union iwreq_data * , char * ) ;
   __u16 num_standard ;
   __u16 num_private ;
   __u16 num_private_args ;
   iw_handler (* const *private)(struct net_device * , struct iw_request_info * ,
                                  union iwreq_data * , char * ) ;
   struct iw_priv_args const *private_args ;
   struct iw_statistics *(*get_wireless_stats)(struct net_device * ) ;
};
struct iw_spy_data {
   int spy_number ;
   u_char spy_address[8U][6U] ;
   struct iw_quality spy_stat[8U] ;
   struct iw_quality spy_thr_low ;
   struct iw_quality spy_thr_high ;
   u_char spy_thr_under[8U] ;
};
struct libipw_device;
struct iw_public_data {
   struct iw_spy_data *spy_data ;
   struct libipw_device *libipw ;
};
struct __anonstruct_pimfor_header_t_249 {
   u8 version ;
   u8 operation ;
   u32 oid ;
   u8 device_id ;
   u8 flags ;
   u32 length ;
};
typedef struct __anonstruct_pimfor_header_t_249 pimfor_header_t;
struct islpci_mgmtframe {
   struct net_device *ndev ;
   pimfor_header_t *header ;
   void *data ;
   struct work_struct ws ;
   char buf[0U] ;
};
typedef int islpci_state_t;
struct islpci_acl {
   int policy ;
   struct list_head mac_list ;
   int size ;
   struct mutex lock ;
};
struct islpci_membuf {
   int size ;
   void *mem ;
   dma_addr_t pci_addr ;
};
struct __anonstruct_islpci_private_250 {
   spinlock_t slock ;
   u32 priv_oid ;
   u32 iw_mode ;
   struct rw_semaphore mib_sem ;
   void **mib ;
   char nickname[33U] ;
   struct work_struct stats_work ;
   struct mutex stats_lock ;
   unsigned long stats_timestamp ;
   struct iw_statistics local_iwstatistics ;
   struct iw_statistics iwstatistics ;
   struct iw_spy_data spy_data ;
   struct iw_public_data wireless_data ;
   int monitor_type ;
   struct islpci_acl acl ;
   struct pci_dev *pdev ;
   char firmware[33U] ;
   void *device_base ;
   void *driver_mem_address ;
   dma_addr_t device_host_address ;
   dma_addr_t device_psm_buffer ;
   struct net_device *ndev ;
   struct isl38xx_cb *control_block ;
   u32 index_mgmt_rx ;
   u32 index_mgmt_tx ;
   u32 free_data_rx ;
   u32 free_data_tx ;
   u32 data_low_tx_full ;
   struct islpci_membuf mgmt_tx[4U] ;
   struct islpci_membuf mgmt_rx[4U] ;
   struct sk_buff *data_low_tx[32U] ;
   struct sk_buff *data_low_rx[8U] ;
   dma_addr_t pci_map_tx_address[32U] ;
   dma_addr_t pci_map_rx_address[8U] ;
   wait_queue_head_t reset_done ;
   struct mutex mgmt_lock ;
   struct islpci_mgmtframe *mgmt_received ;
   wait_queue_head_t mgmt_wqueue ;
   islpci_state_t state ;
   int state_off ;
   int wpa ;
   struct list_head bss_wpa_list ;
   int num_bss_wpa ;
   struct mutex wpa_lock ;
   u8 wpa_ie[64U] ;
   size_t wpa_ie_len ;
   struct work_struct reset_task ;
   int reset_task_pending ;
};
typedef struct __anonstruct_islpci_private_250 islpci_private;
struct rfmon_header {
   __le16 unk0 ;
   __le16 length ;
   __le32 clock ;
   u8 flags ;
   u8 unk1 ;
   u8 rate ;
   u8 unk2 ;
   __le16 freq ;
   __le16 unk3 ;
   u8 rssi ;
   u8 padding[3U] ;
};
struct rx_annex_header {
   u8 addr1[6U] ;
   u8 addr2[6U] ;
   struct rfmon_header rfmon ;
};
struct avs_80211_1_header {
   __be32 version ;
   __be32 length ;
   __be64 mactime ;
   __be64 hosttime ;
   __be32 phytype ;
   __be32 channel ;
   __be32 datarate ;
   __be32 antenna ;
   __be32 priority ;
   __be32 ssi_type ;
   __be32 ssi_signal ;
   __be32 ssi_noise ;
   __be32 preamble ;
   __be32 encoding ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct iw_encode_ext {
   __u32 ext_flags ;
   __u8 tx_seq[8U] ;
   __u8 rx_seq[8U] ;
   struct sockaddr addr ;
   __u16 alg ;
   __u16 key_len ;
   __u8 key[0U] ;
};
struct iw_range {
   __u32 throughput ;
   __u32 min_nwid ;
   __u32 max_nwid ;
   __u16 old_num_channels ;
   __u8 old_num_frequency ;
   __u8 scan_capa ;
   __u32 event_capa[6U] ;
   __s32 sensitivity ;
   struct iw_quality max_qual ;
   struct iw_quality avg_qual ;
   __u8 num_bitrates ;
   __s32 bitrate[32U] ;
   __s32 min_rts ;
   __s32 max_rts ;
   __s32 min_frag ;
   __s32 max_frag ;
   __s32 min_pmp ;
   __s32 max_pmp ;
   __s32 min_pmt ;
   __s32 max_pmt ;
   __u16 pmp_flags ;
   __u16 pmt_flags ;
   __u16 pm_capa ;
   __u16 encoding_size[8U] ;
   __u8 num_encoding_sizes ;
   __u8 max_encoding_tokens ;
   __u8 encoding_login_index ;
   __u16 txpower_capa ;
   __u8 num_txpower ;
   __s32 txpower[8U] ;
   __u8 we_version_compiled ;
   __u8 we_version_source ;
   __u16 retry_capa ;
   __u16 retry_flags ;
   __u16 r_time_flags ;
   __s32 min_retry ;
   __s32 max_retry ;
   __s32 min_r_time ;
   __s32 max_r_time ;
   __u16 num_channels ;
   __u8 num_frequency ;
   struct iw_freq freq[32U] ;
   __u32 enc_capa ;
};
struct iw_event {
   __u16 len ;
   __u16 cmd ;
   union iwreq_data u ;
};
struct obj_ssid {
   u8 length ;
   char octets[33U] ;
};
struct obj_key {
   u8 type ;
   u8 length ;
   char key[32U] ;
};
struct obj_mlme {
   u8 address[6U] ;
   u16 id ;
   u16 state ;
   u16 code ;
};
struct obj_mlmeex {
   u8 address[6U] ;
   u16 id ;
   u16 state ;
   u16 code ;
   u16 size ;
   u8 data[0U] ;
};
struct obj_buffer {
   u32 size ;
   u32 addr ;
};
struct obj_bss {
   u8 address[6U] ;
   int ;
   char state ;
   char reserved ;
   short age ;
   char quality ;
   char rssi ;
   struct obj_ssid ssid ;
   short channel ;
   char beacon_period ;
   char dtim_period ;
   short capinfo ;
   short rates ;
   short basic_rates ;
   int ;
};
struct obj_bsslist {
   u32 nr ;
   struct obj_bss bsslist[0U] ;
};
struct obj_frequencies {
   u16 nr ;
   u16 mhz[0U] ;
};
struct obj_attachment {
   char type ;
   char reserved ;
   short id ;
   short size ;
   char data[0U] ;
};
enum oid_num_t {
    GEN_OID_MACADDRESS = 0,
    GEN_OID_LINKSTATE = 1,
    GEN_OID_WATCHDOG = 2,
    GEN_OID_MIBOP = 3,
    GEN_OID_OPTIONS = 4,
    GEN_OID_LEDCONFIG = 5,
    DOT11_OID_BSSTYPE = 6,
    DOT11_OID_BSSID = 7,
    DOT11_OID_SSID = 8,
    DOT11_OID_STATE = 9,
    DOT11_OID_AID = 10,
    DOT11_OID_COUNTRYSTRING = 11,
    DOT11_OID_SSIDOVERRIDE = 12,
    DOT11_OID_MEDIUMLIMIT = 13,
    DOT11_OID_BEACONPERIOD = 14,
    DOT11_OID_DTIMPERIOD = 15,
    DOT11_OID_ATIMWINDOW = 16,
    DOT11_OID_LISTENINTERVAL = 17,
    DOT11_OID_CFPPERIOD = 18,
    DOT11_OID_CFPDURATION = 19,
    DOT11_OID_AUTHENABLE = 20,
    DOT11_OID_PRIVACYINVOKED = 21,
    DOT11_OID_EXUNENCRYPTED = 22,
    DOT11_OID_DEFKEYID = 23,
    DOT11_OID_DEFKEYX = 24,
    DOT11_OID_STAKEY = 25,
    DOT11_OID_REKEYTHRESHOLD = 26,
    DOT11_OID_STASC = 27,
    DOT11_OID_PRIVTXREJECTED = 28,
    DOT11_OID_PRIVRXPLAIN = 29,
    DOT11_OID_PRIVRXFAILED = 30,
    DOT11_OID_PRIVRXNOKEY = 31,
    DOT11_OID_RTSTHRESH = 32,
    DOT11_OID_FRAGTHRESH = 33,
    DOT11_OID_SHORTRETRIES = 34,
    DOT11_OID_LONGRETRIES = 35,
    DOT11_OID_MAXTXLIFETIME = 36,
    DOT11_OID_MAXRXLIFETIME = 37,
    DOT11_OID_AUTHRESPTIMEOUT = 38,
    DOT11_OID_ASSOCRESPTIMEOUT = 39,
    DOT11_OID_ALOFT_TABLE = 40,
    DOT11_OID_ALOFT_CTRL_TABLE = 41,
    DOT11_OID_ALOFT_RETREAT = 42,
    DOT11_OID_ALOFT_PROGRESS = 43,
    DOT11_OID_ALOFT_FIXEDRATE = 44,
    DOT11_OID_ALOFT_RSSIGRAPH = 45,
    DOT11_OID_ALOFT_CONFIG = 46,
    DOT11_OID_VDCFX = 47,
    DOT11_OID_MAXFRAMEBURST = 48,
    DOT11_OID_PSM = 49,
    DOT11_OID_CAMTIMEOUT = 50,
    DOT11_OID_RECEIVEDTIMS = 51,
    DOT11_OID_ROAMPREFERENCE = 52,
    DOT11_OID_BRIDGELOCAL = 53,
    DOT11_OID_CLIENTS = 54,
    DOT11_OID_CLIENTSASSOCIATED = 55,
    DOT11_OID_CLIENTX = 56,
    DOT11_OID_CLIENTFIND = 57,
    DOT11_OID_WDSLINKADD = 58,
    DOT11_OID_WDSLINKREMOVE = 59,
    DOT11_OID_EAPAUTHSTA = 60,
    DOT11_OID_EAPUNAUTHSTA = 61,
    DOT11_OID_DOT1XENABLE = 62,
    DOT11_OID_MICFAILURE = 63,
    DOT11_OID_REKEYINDICATE = 64,
    DOT11_OID_MPDUTXSUCCESSFUL = 65,
    DOT11_OID_MPDUTXONERETRY = 66,
    DOT11_OID_MPDUTXMULTIPLERETRIES = 67,
    DOT11_OID_MPDUTXFAILED = 68,
    DOT11_OID_MPDURXSUCCESSFUL = 69,
    DOT11_OID_MPDURXDUPS = 70,
    DOT11_OID_RTSSUCCESSFUL = 71,
    DOT11_OID_RTSFAILED = 72,
    DOT11_OID_ACKFAILED = 73,
    DOT11_OID_FRAMERECEIVES = 74,
    DOT11_OID_FRAMEERRORS = 75,
    DOT11_OID_FRAMEABORTS = 76,
    DOT11_OID_FRAMEABORTSPHY = 77,
    DOT11_OID_SLOTTIME = 78,
    DOT11_OID_CWMIN = 79,
    DOT11_OID_CWMAX = 80,
    DOT11_OID_ACKWINDOW = 81,
    DOT11_OID_ANTENNARX = 82,
    DOT11_OID_ANTENNATX = 83,
    DOT11_OID_ANTENNADIVERSITY = 84,
    DOT11_OID_CHANNEL = 85,
    DOT11_OID_EDTHRESHOLD = 86,
    DOT11_OID_PREAMBLESETTINGS = 87,
    DOT11_OID_RATES = 88,
    DOT11_OID_CCAMODESUPPORTED = 89,
    DOT11_OID_CCAMODE = 90,
    DOT11_OID_RSSIVECTOR = 91,
    DOT11_OID_OUTPUTPOWERTABLE = 92,
    DOT11_OID_OUTPUTPOWER = 93,
    DOT11_OID_SUPPORTEDRATES = 94,
    DOT11_OID_FREQUENCY = 95,
    DOT11_OID_SUPPORTEDFREQUENCIES = 96,
    DOT11_OID_NOISEFLOOR = 97,
    DOT11_OID_FREQUENCYACTIVITY = 98,
    DOT11_OID_IQCALIBRATIONTABLE = 99,
    DOT11_OID_NONERPPROTECTION = 100,
    DOT11_OID_SLOTSETTINGS = 101,
    DOT11_OID_NONERPTIMEOUT = 102,
    DOT11_OID_PROFILES = 103,
    DOT11_OID_EXTENDEDRATES = 104,
    DOT11_OID_DEAUTHENTICATE = 105,
    DOT11_OID_AUTHENTICATE = 106,
    DOT11_OID_DISASSOCIATE = 107,
    DOT11_OID_ASSOCIATE = 108,
    DOT11_OID_SCAN = 109,
    DOT11_OID_BEACON = 110,
    DOT11_OID_PROBE = 111,
    DOT11_OID_DEAUTHENTICATEEX = 112,
    DOT11_OID_AUTHENTICATEEX = 113,
    DOT11_OID_DISASSOCIATEEX = 114,
    DOT11_OID_ASSOCIATEEX = 115,
    DOT11_OID_REASSOCIATE = 116,
    DOT11_OID_REASSOCIATEEX = 117,
    DOT11_OID_NONERPSTATUS = 118,
    DOT11_OID_STATIMEOUT = 119,
    DOT11_OID_MLMEAUTOLEVEL = 120,
    DOT11_OID_BSSTIMEOUT = 121,
    DOT11_OID_ATTACHMENT = 122,
    DOT11_OID_PSMBUFFER = 123,
    DOT11_OID_BSSS = 124,
    DOT11_OID_BSSX = 125,
    DOT11_OID_BSSFIND = 126,
    DOT11_OID_BSSLIST = 127,
    OID_INL_TUNNEL = 128,
    OID_INL_MEMADDR = 129,
    OID_INL_MEMORY = 130,
    OID_INL_MODE = 131,
    OID_INL_COMPONENT_NR = 132,
    OID_INL_VERSION = 133,
    OID_INL_INTERFACE_ID = 134,
    OID_INL_COMPONENT_ID = 135,
    OID_INL_CONFIG = 136,
    OID_INL_DOT11D_CONFORMANCE = 137,
    OID_INL_PHYCAPABILITIES = 138,
    OID_INL_OUTPUTPOWER = 139,
    OID_NUM_LAST = 140
} ;
struct oid_t {
   enum oid_num_t oid ;
   short range ;
   short size ;
   char flags ;
};
union oid_res_t {
   void *ptr ;
   u32 u ;
};
struct mac_entry {
   struct list_head _list ;
   char addr[6U] ;
};
struct islpci_bss_wpa_ie {
   struct list_head list ;
   unsigned long last_update ;
   u8 bssid[6U] ;
   u8 wpa_ie[64U] ;
   size_t wpa_ie_len ;
};
struct ieee80211_beacon_phdr {
   u8 timestamp[8U] ;
   u16 beacon_int ;
   u16 capab_info ;
};
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
enum hrtimer_restart;
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
typedef struct net_device *ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
enum hrtimer_restart;
typedef int ldv_func_ret_type___1;
enum hrtimer_restart;
struct device_private {
   void *driver_data ;
};
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
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
__inline static __u32 __fswab32(__u32 val )
{
  int tmp ;
  {
  {
  tmp = __builtin_bswap32(val);
  }
  return ((__u32 )tmp);
}
}
__inline static __u64 __fswab64(__u64 val )
{
  long tmp ;
  {
  {
  tmp = __builtin_bswap64(val);
  }
  return ((__u64 )tmp);
}
}
__inline static void le32_add_cpu(__le32 *var , u32 val )
{
  {
  *var = *var + val;
  return;
}
}
extern int printk(char const * , ...) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField19.rlock, flags);
  }
  return;
}
}
extern unsigned long volatile jiffies ;
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
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void __const_udelay(unsigned long ) ;
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((unsigned int )dma_direction <= 2U);
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  }
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  }
  return (addr);
}
}
__inline static void dma_unmap_single_attrs(struct device *dev , dma_addr_t addr ,
                                            size_t size , enum dma_data_direction dir ,
                                            struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
    }
  } else {
  }
  {
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  }
  return;
}
}
extern void consume_skb(struct sk_buff * ) ;
extern struct sk_buff *skb_copy_expand(struct sk_buff const * , int , int , gfp_t ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static int skb_cloned(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned int )*((unsigned char *)skb + 124UL) != 0U) {
    {
    tmp = skb_end_pointer(skb);
    tmp___0 = atomic_read((atomic_t const *)(& ((struct skb_shared_info *)tmp)->dataref));
    }
    if ((tmp___0 & 65535) != 1) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_push(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
}
}
__inline static int skb_tailroom(struct sk_buff const *skb )
{
  bool tmp ;
  {
  {
  tmp = skb_is_nonlinear(skb);
  }
  return ((int )tmp ? 0 : (int )((unsigned int )skb->end - (unsigned int )skb->tail));
}
}
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
__inline static void skb_reset_mac_header(struct sk_buff *skb )
{
  {
  skb->mac_header = (int )((__u16 )((long )skb->data)) - (int )((__u16 )((long )skb->head));
  return;
}
}
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *netdev_alloc_skb(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  {
  tmp = __netdev_alloc_skb(dev, length, 32U);
  }
  return (tmp);
}
}
__inline static struct sk_buff *dev_alloc_skb(unsigned int length )
{
  struct sk_buff *tmp ;
  {
  {
  tmp = netdev_alloc_skb((struct net_device *)0, length);
  }
  return (tmp);
}
}
__inline static void skb_copy_from_linear_data(struct sk_buff const *skb , void *to ,
                                               unsigned int const len )
{
  {
  {
  memcpy(to, (void const *)skb->data, (size_t )len);
  }
  return;
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3200U);
}
}
extern int netpoll_trap(void) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static void netif_tx_wake_queue(struct netdev_queue *dev_queue )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = netpoll_trap();
  }
  if (tmp != 0) {
    {
    netif_tx_start_queue(dev_queue);
    }
    return;
  } else {
  }
  {
  tmp___0 = test_and_clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  if (tmp___0 != 0) {
    {
    __netif_schedule(dev_queue->qdisc);
    }
  } else {
  }
  return;
}
}
__inline static void netif_wake_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_wake_queue(tmp);
  }
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  {
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("include/linux/netdevice.h", 2128);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\016netif_stop_queue() cannot be called before register_netdev()\n");
    }
    return;
  } else {
  }
  {
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
  }
  return;
}
}
extern void __dev_kfree_skb_irq(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_irq(struct sk_buff *skb )
{
  {
  {
  __dev_kfree_skb_irq(skb, 1);
  }
  return;
}
}
extern int netif_rx(struct sk_buff * ) ;
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             ptr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  }
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         dma_addr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  }
  return;
}
}
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
__inline static void isl38xx_w32_flush(void *base , u32 val , unsigned long offset )
{
  {
  {
  writel(val, (void volatile *)(base + offset));
  readl((void const volatile *)base + 24U);
  }
  return;
}
}
void isl38xx_trigger_device(int asleep , void *device_base ) ;
extern void wireless_spy_update(struct net_device * , unsigned char * , struct iw_quality * ) ;
int pc_debug ;
__inline static islpci_state_t islpci_get_state(islpci_private *priv )
{
  {
  return (priv->state);
}
}
int islpci_reset(islpci_private *priv , int reload_firmware ) ;
__inline static void islpci_trigger(islpci_private *priv )
{
  islpci_state_t tmp ;
  {
  {
  tmp = islpci_get_state(priv);
  isl38xx_trigger_device((unsigned int )tmp == 7U, priv->device_base);
  }
  return;
}
}
void islpci_eth_cleanup_transmit(islpci_private *priv , isl38xx_control_block *control_block ) ;
netdev_tx_t islpci_eth_transmit(struct sk_buff *skb , struct net_device *ndev ) ;
int islpci_eth_receive(islpci_private *priv ) ;
void islpci_eth_tx_timeout(struct net_device *ndev ) ;
void islpci_do_reset_and_wake(struct work_struct *work ) ;
int channel_of_freq(int f ) ;
void islpci_eth_cleanup_transmit(islpci_private *priv , isl38xx_control_block *control_block )
{
  struct sk_buff *skb ;
  u32 index ;
  {
  goto ldv_43226;
  ldv_43225:
  index = priv->free_data_tx & 31U;
  if (priv->pci_map_tx_address[index] != 0ULL) {
    {
    skb = priv->data_low_tx[index];
    pci_unmap_single(priv->pdev, priv->pci_map_tx_address[index], (size_t )skb->len,
                     1);
    dev_kfree_skb_irq(skb);
    skb = (struct sk_buff *)0;
    }
  } else {
  }
  priv->free_data_tx = priv->free_data_tx + 1U;
  ldv_43226: ;
  if (priv->free_data_tx != control_block->device_curr_frag[1]) {
    goto ldv_43225;
  } else {
  }
  return;
}
}
netdev_tx_t islpci_eth_transmit(struct sk_buff *skb , struct net_device *ndev )
{
  islpci_private *priv ;
  void *tmp ;
  isl38xx_control_block *cb ;
  u32 index ;
  dma_addr_t pci_map_address ;
  int frame_size ;
  isl38xx_fragment *fragment ;
  int offset ;
  struct sk_buff *newskb ;
  int newskb_offset ;
  unsigned long flags ;
  u32 curr_frag ;
  raw_spinlock_t *tmp___0 ;
  long tmp___1 ;
  unsigned char *src ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  cb = priv->control_block;
  tmp___0 = spinlock_check(& priv->slock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  curr_frag = cb->driver_curr_frag[1];
  tmp___1 = ldv__builtin_expect(curr_frag - priv->free_data_tx > 31U, 0L);
  }
  if (tmp___1 != 0L) {
    {
    printk("\v%s: transmit device queue full when awake\n", (char *)(& ndev->name));
    netif_stop_queue(ndev);
    isl38xx_w32_flush(priv->device_base, 2U, 0UL);
    __const_udelay(42950UL);
    }
    goto drop_free;
  } else {
  }
  {
  tmp___5 = ldv__builtin_expect(((long )skb->data & 3L) != 0L, 1L);
  }
  if (tmp___5 != 0L) {
    {
    offset = (int )(- ((unsigned int )((long )skb->data))) & 3;
    offset = offset;
    tmp___3 = skb_cloned((struct sk_buff const *)skb);
    }
    if (tmp___3 == 0) {
      {
      tmp___4 = skb_tailroom((struct sk_buff const *)skb);
      }
      if (tmp___4 >= offset) {
        {
        src = skb->data;
        skb_reserve(skb, (int )(- ((unsigned int )((long )skb->data))) & 3);
        memmove((void *)skb->data, (void const *)src, (size_t )skb->len);
        }
      } else {
        goto _L;
      }
    } else {
      _L:
      {
      newskb = dev_alloc_skb(skb->len);
      tmp___2 = ldv__builtin_expect((unsigned long )newskb == (unsigned long )((struct sk_buff *)0),
                                 0L);
      }
      if (tmp___2 != 0L) {
        {
        printk("\v%s: Cannot allocate skb\n", (char *)(& ndev->name));
        }
        goto drop_free;
      } else {
      }
      newskb_offset = (int )(- ((unsigned int )((long )newskb->data))) & 3;
      if (newskb_offset != 0) {
        {
        skb_reserve(newskb, newskb_offset);
        }
      } else {
      }
      {
      skb_put(newskb, skb->len);
      skb_copy_from_linear_data((struct sk_buff const *)skb, (void *)newskb->data,
                                skb->len);
      newskb->dev = skb->dev;
      dev_kfree_skb_irq(skb);
      skb = newskb;
      }
    }
  } else {
  }
  {
  pci_map_address = pci_map_single(priv->pdev, (void *)skb->data, (size_t )skb->len,
                                   1);
  tmp___6 = ldv__builtin_expect(pci_map_address == 0ULL, 0L);
  }
  if (tmp___6 != 0L) {
    {
    printk("\f%s: cannot map buffer to PCI\n", (char *)(& ndev->name));
    }
    goto drop_free;
  } else {
  }
  index = curr_frag & 31U;
  fragment = (isl38xx_fragment *)(& cb->tx_data_low) + (unsigned long )index;
  priv->pci_map_tx_address[index] = pci_map_address;
  priv->data_low_tx[index] = skb;
  frame_size = (int )skb->len;
  fragment->size = (unsigned short )frame_size;
  fragment->flags = 0U;
  fragment->address = (unsigned int )pci_map_address;
  curr_frag = curr_frag + 1U;
  __asm__ volatile ("sfence": : : "memory");
  cb->driver_curr_frag[1] = curr_frag;
  if ((curr_frag - priv->free_data_tx) + 4U > 32U) {
    {
    netif_stop_queue(ndev);
    priv->data_low_tx_full = 1U;
    }
  } else {
  }
  {
  ndev->stats.tx_packets = ndev->stats.tx_packets + 1UL;
  ndev->stats.tx_bytes = ndev->stats.tx_bytes + (unsigned long )skb->len;
  islpci_trigger(priv);
  spin_unlock_irqrestore(& priv->slock, flags);
  }
  return (0);
  drop_free:
  {
  ndev->stats.tx_dropped = ndev->stats.tx_dropped + 1UL;
  spin_unlock_irqrestore(& priv->slock, flags);
  consume_skb(skb);
  }
  return (0);
}
}
__inline static int islpci_monitor_rx(islpci_private *priv , struct sk_buff **skb )
{
  struct rfmon_header *hdr ;
  struct avs_80211_1_header *avs ;
  u32 clock ;
  u8 rate ;
  u16 freq ;
  u8 rssi ;
  struct sk_buff *newskb ;
  struct sk_buff *tmp ;
  unsigned int tmp___0 ;
  unsigned char *tmp___1 ;
  __u64 tmp___2 ;
  __u64 tmp___3 ;
  int tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  {
  hdr = (struct rfmon_header *)(*skb)->data;
  if ((int )hdr->flags & 1) {
    return (-1);
  } else {
  }
  if ((unsigned int )(priv->ndev)->type == 802U) {
    {
    clock = hdr->clock;
    rate = hdr->rate;
    freq = hdr->freq;
    rssi = hdr->rssi;
    skb_pull(*skb, 20U);
    tmp___0 = skb_headroom((struct sk_buff const *)*skb);
    }
    if (tmp___0 <= 63U) {
      {
      tmp = skb_copy_expand((struct sk_buff const *)*skb, 64, 0, 32U);
      newskb = tmp;
      }
      if ((unsigned long )newskb != (unsigned long )((struct sk_buff *)0)) {
        {
        dev_kfree_skb_irq(*skb);
        *skb = newskb;
        }
      } else {
        return (-1);
      }
    } else {
    }
    {
    tmp___1 = skb_push(*skb, 64U);
    avs = (struct avs_80211_1_header *)tmp___1;
    avs->version = 17834368U;
    avs->length = 1073741824U;
    tmp___2 = __fswab64((__u64 )clock);
    avs->mactime = tmp___2;
    tmp___3 = __fswab64((__u64 )jiffies);
    avs->hosttime = tmp___3;
    avs->phytype = 100663296U;
    tmp___4 = channel_of_freq((int )freq);
    tmp___5 = __fswab32((__u32 )tmp___4);
    avs->channel = tmp___5;
    tmp___6 = __fswab32((__u32 )((int )rate * 5));
    avs->datarate = tmp___6;
    avs->antenna = 0U;
    avs->priority = 0U;
    avs->ssi_type = 50331648U;
    tmp___7 = __fswab32((__u32 )rssi & 127U);
    avs->ssi_signal = tmp___7;
    tmp___8 = __fswab32((__u32 )priv->local_iwstatistics.qual.noise);
    avs->ssi_noise = tmp___8;
    avs->preamble = 0U;
    avs->encoding = 0U;
    }
  } else {
    {
    skb_pull(*skb, 20U);
    }
  }
  {
  (*skb)->protocol = 1024U;
  skb_reset_mac_header(*skb);
  (*skb)->pkt_type = 3U;
  }
  return (0);
}
}
int islpci_eth_receive(islpci_private *priv )
{
  struct net_device *ndev ;
  isl38xx_control_block *control_block ;
  struct sk_buff *skb ;
  u16 size ;
  u32 index ;
  u32 offset ;
  int discard ;
  struct iw_quality wstats ;
  struct rx_annex_header *annex ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  {
  ndev = priv->ndev;
  control_block = priv->control_block;
  discard = 0;
  index = priv->free_data_rx & 7U;
  size = control_block->rx_data_low[index].size;
  skb = priv->data_low_rx[index];
  offset = (control_block->rx_data_low[index].address - (u32 )((long )skb->data)) & 3U;
  pci_unmap_single(priv->pdev, priv->pci_map_rx_address[index], 1602UL, 2);
  skb_put(skb, (unsigned int )size);
  }
  if (offset != 0U) {
    {
    skb_pull(skb, 2U);
    skb_put(skb, 2U);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(priv->iw_mode == 6U, 0L);
  }
  if (tmp___0 != 0L) {
    {
    skb->dev = ndev;
    discard = islpci_monitor_rx(priv, & skb);
    }
  } else {
    {
    tmp = ldv__builtin_expect((unsigned int )*(skb->data + 12UL) == 0U, 0L);
    }
    if (tmp != 0L) {
      {
      annex = (struct rx_annex_header *)skb->data;
      wstats.level = annex->rfmon.rssi;
      wstats.noise = priv->local_iwstatistics.qual.noise;
      wstats.qual = (int )wstats.level - (int )wstats.noise;
      wstats.updated = 7U;
      wireless_spy_update(ndev, (unsigned char *)(& annex->addr2), & wstats);
      skb_copy_from_linear_data((struct sk_buff const *)skb, (void *)skb->data + 20U,
                                12U);
      skb_pull(skb, 20U);
      }
    } else {
    }
    {
    skb->protocol = eth_type_trans(skb, ndev);
    }
  }
  {
  skb->ip_summed = 0U;
  ndev->stats.rx_packets = ndev->stats.rx_packets + 1UL;
  ndev->stats.rx_bytes = ndev->stats.rx_bytes + (unsigned long )size;
  tmp___1 = ldv__builtin_expect(discard != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    dev_kfree_skb_irq(skb);
    skb = (struct sk_buff *)0;
    }
  } else {
    {
    netif_rx(skb);
    }
  }
  priv->free_data_rx = priv->free_data_rx + 1U;
  goto ldv_43275;
  ldv_43274:
  {
  skb = dev_alloc_skb(1602U);
  tmp___2 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                             0L);
  }
  if (tmp___2 != 0L) {
    if (pc_debug & 1) {
      {
      printk("\017Error allocating skb\n");
      }
    } else {
    }
    goto ldv_43273;
  } else {
  }
  {
  skb_reserve(skb, (int )(- ((unsigned int )((long )skb->data))) & 3);
  index = index & 7U;
  priv->data_low_rx[index] = skb;
  priv->pci_map_rx_address[index] = pci_map_single(priv->pdev, (void *)skb->data,
                                                   1602UL, 2);
  tmp___3 = ldv__builtin_expect(priv->pci_map_rx_address[index] == 0ULL, 0L);
  }
  if (tmp___3 != 0L) {
    if (pc_debug & 1) {
      {
      printk("\017Error mapping DMA address\n");
      }
    } else {
    }
    {
    dev_kfree_skb_irq(skb);
    skb = (struct sk_buff *)0;
    }
    goto ldv_43273;
  } else {
  }
  {
  control_block->rx_data_low[index].address = (unsigned int )priv->pci_map_rx_address[index];
  __asm__ volatile ("sfence": : : "memory");
  le32_add_cpu((__le32 *)(& control_block->driver_curr_frag), 1U);
  }
  ldv_43275:
  index = control_block->driver_curr_frag[0];
  if (index - priv->free_data_rx <= 7U) {
    goto ldv_43274;
  } else {
  }
  ldv_43273:
  {
  islpci_trigger(priv);
  }
  return (0);
}
}
void islpci_do_reset_and_wake(struct work_struct *work )
{
  islpci_private *priv ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)work;
  priv = (islpci_private *)__mptr + 0xfffffffffffff638UL;
  islpci_reset(priv, 1);
  priv->reset_task_pending = 0;
  __asm__ volatile ("": : : "memory");
  netif_wake_queue(priv->ndev);
  }
  return;
}
}
void islpci_eth_tx_timeout(struct net_device *ndev )
{
  islpci_private *priv ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  ndev->stats.tx_errors = ndev->stats.tx_errors + 1UL;
  }
  if (priv->reset_task_pending == 0) {
    {
    printk("\f%s: tx_timeout, scheduling reset", (char *)(& ndev->name));
    netif_stop_queue(ndev);
    priv->reset_task_pending = 1;
    schedule_work(& priv->reset_task);
    }
  } else {
    {
    printk("\f%s: tx_timeout, waiting for reset", (char *)(& ndev->name));
    }
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_15(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_or_killable_mgmt_lock_of_NOT_ARG_SIGN(struct mutex *lock ) ;
void ldv_mutex_unlock_mgmt_lock_of_NOT_ARG_SIGN(struct mutex *lock ) ;
__inline static __u32 __swab32p(__u32 const *p )
{
  __u32 tmp ;
  {
  {
  tmp = __fswab32(*p);
  }
  return (tmp);
}
}
__inline static void __swab32s(__u32 *p )
{
  {
  {
  *p = __swab32p((__u32 const *)p);
  }
  return;
}
}
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
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
  goto ldv_3024;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3024;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3024;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3024;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3024: ;
  return (pfo_ret__);
}
}
extern void *memset(void * , int , size_t ) ;
extern void __xchg_wrong_size(void) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
static void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void __init_work(struct work_struct * , int ) ;
extern long schedule_timeout_uninterruptible(long ) ;
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
__inline static void dma_sync_single_for_cpu(struct device *dev , dma_addr_t addr ,
                                             size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (103), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->sync_single_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                             dma_addr_t ,
                                                                             size_t ,
                                                                             enum dma_data_direction ))0)) {
    {
    (*(ops->sync_single_for_cpu))(dev, addr, size, dir);
    }
  } else {
  }
  {
  debug_dma_sync_single_for_cpu(dev, addr, size, (int )dir);
  }
  return;
}
}
__inline static void pci_dma_sync_single_for_cpu(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                 size_t size , int direction )
{
  {
  {
  dma_sync_single_for_cpu((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                          dma_handle, size, (enum dma_data_direction )direction);
  }
  return;
}
}
int islpci_mgt_receive(struct net_device *ndev ) ;
int islpci_mgmt_rx_fill(struct net_device *ndev ) ;
void islpci_mgt_cleanup_transmit(struct net_device *ndev ) ;
int islpci_mgt_transaction(struct net_device *ndev , int operation , unsigned long oid ,
                           void *senddata , int sendlen , struct islpci_mgmtframe **recvframe ) ;
void prism54_process_trap(struct work_struct *work ) ;
int pc_debug = 1;
static void pimfor_encode_header(int operation , u32 oid , u32 length , pimfor_header_t *h )
{
  __u32 tmp ;
  __u32 tmp___0 ;
  {
  {
  h->version = 1U;
  h->operation = (u8 )operation;
  h->device_id = 0U;
  h->flags = 0U;
  tmp = __fswab32(oid);
  h->oid = tmp;
  tmp___0 = __fswab32(length);
  h->length = tmp___0;
  }
  return;
}
}
static pimfor_header_t *pimfor_decode_header(void *data , int len )
{
  pimfor_header_t *h ;
  {
  h = (pimfor_header_t *)data;
  goto ldv_43006;
  ldv_43005: ;
  if (((int )h->flags & 2) != 0) {
  } else {
    {
    __swab32s(& h->oid);
    __swab32s(& h->length);
    }
  }
  if (h->oid != 128U) {
    return (h);
  } else {
  }
  h = h + 1;
  ldv_43006: ;
  if ((unsigned long )((void *)h) < (unsigned long )(data + (unsigned long )len)) {
    goto ldv_43005;
  } else {
  }
  return ((pimfor_header_t *)0);
}
}
int islpci_mgmt_rx_fill(struct net_device *ndev )
{
  islpci_private *priv ;
  void *tmp ;
  isl38xx_control_block *cb ;
  u32 curr ;
  u32 index ;
  struct islpci_membuf *buf ;
  isl38xx_fragment *frag ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  cb = priv->control_block;
  curr = cb->driver_curr_frag[4];
  }
  goto ldv_43018;
  ldv_43017:
  index = curr & 3U;
  buf = (struct islpci_membuf *)(& priv->mgmt_rx) + (unsigned long )index;
  frag = (isl38xx_fragment *)(& cb->rx_data_mgmt) + (unsigned long )index;
  if ((unsigned long )buf->mem == (unsigned long )((void *)0)) {
    {
    buf->mem = kmalloc(1500UL, 32U);
    }
    if ((unsigned long )buf->mem == (unsigned long )((void *)0)) {
      return (-12);
    } else {
    }
    buf->size = 1500;
  } else {
  }
  if (buf->pci_addr == 0ULL) {
    {
    buf->pci_addr = pci_map_single(priv->pdev, buf->mem, 1500UL, 2);
    }
    if (buf->pci_addr == 0ULL) {
      {
      printk("\fFailed to make memory DMA\'able.\n");
      }
      return (-12);
    } else {
    }
  } else {
  }
  frag->size = 1500U;
  frag->flags = 0U;
  frag->address = (unsigned int )buf->pci_addr;
  curr = curr + 1U;
  __asm__ volatile ("sfence": : : "memory");
  cb->driver_curr_frag[4] = curr;
  ldv_43018: ;
  if (curr - priv->index_mgmt_rx <= 3U) {
    goto ldv_43017;
  } else {
  }
  return (0);
}
}
static int islpci_mgt_transmit(struct net_device *ndev , int operation , unsigned long oid ,
                               void *data , int length )
{
  islpci_private *priv ;
  void *tmp ;
  isl38xx_control_block *cb ;
  void *p ;
  int err ;
  unsigned long flags ;
  isl38xx_fragment *frag ;
  struct islpci_membuf buf ;
  u32 curr_frag ;
  int index ;
  int frag_len ;
  raw_spinlock_t *tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  cb = priv->control_block;
  err = -22;
  frag_len = length + 12;
  }
  if (frag_len > 1500) {
    {
    printk("\017%s: mgmt frame too large %d\n", (char *)(& ndev->name), frag_len);
    }
    goto error;
  } else {
  }
  {
  err = -12;
  buf.mem = kmalloc((size_t )frag_len, 208U);
  p = buf.mem;
  }
  if ((unsigned long )buf.mem == (unsigned long )((void *)0)) {
    goto error;
  } else {
  }
  {
  buf.size = frag_len;
  pimfor_encode_header(operation, (u32 )oid, (u32 )length, (pimfor_header_t *)p);
  p = p + 12UL;
  }
  if ((unsigned long )data != (unsigned long )((void *)0)) {
    {
    memcpy(p, (void const *)data, (size_t )length);
    }
  } else {
    {
    memset(p, 0, (size_t )length);
    }
  }
  {
  err = -12;
  buf.pci_addr = pci_map_single(priv->pdev, buf.mem, (size_t )frag_len, 1);
  }
  if (buf.pci_addr == 0ULL) {
    {
    printk("\f%s: cannot map PCI memory for mgmt\n", (char *)(& ndev->name));
    }
    goto error_free;
  } else {
  }
  {
  tmp___0 = spinlock_check(& priv->slock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  curr_frag = cb->driver_curr_frag[5];
  }
  if (curr_frag - priv->index_mgmt_tx > 3U) {
    {
    printk("\f%s: mgmt tx queue is still full\n", (char *)(& ndev->name));
    }
    goto error_unlock;
  } else {
  }
  {
  index = (int )curr_frag & 3;
  priv->mgmt_tx[index] = buf;
  frag = (isl38xx_fragment *)(& cb->tx_data_mgmt) + (unsigned long )index;
  frag->size = (unsigned short )frag_len;
  frag->flags = 0U;
  frag->address = (unsigned int )buf.pci_addr;
  __asm__ volatile ("sfence": : : "memory");
  cb->driver_curr_frag[5] = curr_frag + 1U;
  spin_unlock_irqrestore(& priv->slock, flags);
  islpci_trigger(priv);
  }
  return (0);
  error_unlock:
  {
  spin_unlock_irqrestore(& priv->slock, flags);
  }
  error_free:
  {
  kfree((void const *)buf.mem);
  }
  error: ;
  return (err);
}
}
int islpci_mgt_receive(struct net_device *ndev )
{
  islpci_private *priv ;
  void *tmp ;
  isl38xx_control_block *cb ;
  u32 curr_frag ;
  pimfor_header_t *header ;
  u32 index ;
  struct islpci_membuf *buf ;
  u16 frag_len ;
  int size ;
  struct islpci_mgmtframe *frame ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct islpci_mgmtframe *__ret ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  cb = priv->control_block;
  curr_frag = cb->device_curr_frag[4];
  __asm__ volatile ("": : : "memory");
  }
  goto ldv_43067;
  ldv_43066:
  index = priv->index_mgmt_rx & 3U;
  buf = (struct islpci_membuf *)(& priv->mgmt_rx) + (unsigned long )index;
  if ((unsigned int )cb->rx_data_mgmt[index].flags != 0U) {
    {
    printk("\f%s: unknown flags 0x%04x\n", (char *)(& ndev->name), (int )cb->rx_data_mgmt[index].flags);
    }
    goto ldv_43055;
  } else {
  }
  frag_len = cb->rx_data_mgmt[index].size;
  if ((unsigned int )frag_len > 1500U) {
    {
    printk("\f%s: Bogus packet size of %d (%#x).\n", (char *)(& ndev->name), (int )frag_len,
           (int )frag_len);
    frag_len = 1500U;
    }
  } else {
  }
  {
  pci_dma_sync_single_for_cpu(priv->pdev, buf->pci_addr, (size_t )buf->size, 2);
  header = pimfor_decode_header(buf->mem, (int )frag_len);
  }
  if ((unsigned long )header == (unsigned long )((pimfor_header_t *)0)) {
    {
    printk("\f%s: no PIMFOR header found\n", (char *)(& ndev->name));
    }
    goto ldv_43055;
  } else {
  }
  header->device_id = (u8 )(priv->ndev)->ifindex;
  if ((int )header->flags & 1) {
    {
    printk("\017%s: errant PIMFOR application frame\n", (char *)(& ndev->name));
    }
    goto ldv_43055;
  } else {
  }
  {
  size = (int )(header->length + 12U);
  tmp___0 = kmalloc((unsigned long )size + 104UL, 32U);
  frame = (struct islpci_mgmtframe *)tmp___0;
  }
  if ((unsigned long )frame == (unsigned long )((struct islpci_mgmtframe *)0)) {
    goto ldv_43055;
  } else {
  }
  {
  frame->ndev = ndev;
  memcpy((void *)(& frame->buf), (void const *)header, (size_t )size);
  frame->header = (pimfor_header_t *)(& frame->buf);
  frame->data = (void *)(& frame->buf) + 12U;
  }
  if ((unsigned int )header->operation == 4U) {
    {
    __init_work(& frame->ws, 0);
    __constr_expr_0.counter = 137438953408L;
    frame->ws.data = __constr_expr_0;
    lockdep_init_map(& frame->ws.lockdep_map, "(&frame->ws)", & __key, 0);
    INIT_LIST_HEAD(& frame->ws.entry);
    frame->ws.func = & prism54_process_trap;
    schedule_work(& frame->ws);
    }
  } else {
    __ret = frame;
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
    __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (priv->mgmt_received): : "memory",
                         "cc");
    goto ldv_43060;
    case_2:
    __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (priv->mgmt_received): : "memory",
                         "cc");
    goto ldv_43060;
    case_4:
    __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (priv->mgmt_received): : "memory",
                         "cc");
    goto ldv_43060;
    case_8:
    __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (priv->mgmt_received): : "memory",
                         "cc");
    goto ldv_43060;
    switch_default:
    {
    __xchg_wrong_size();
    }
    switch_break: ;
    }
    ldv_43060:
    frame = __ret;
    if ((unsigned long )frame != (unsigned long )((struct islpci_mgmtframe *)0)) {
      {
      printk("\f%s: mgmt response not collected\n", (char *)(& ndev->name));
      kfree((void const *)frame);
      }
    } else {
    }
    {
    __wake_up(& priv->mgmt_wqueue, 3U, 1, (void *)0);
    }
  }
  ldv_43055:
  priv->index_mgmt_rx = priv->index_mgmt_rx + 1U;
  ldv_43067: ;
  if (priv->index_mgmt_rx < curr_frag) {
    goto ldv_43066;
  } else {
  }
  return (0);
}
}
void islpci_mgt_cleanup_transmit(struct net_device *ndev )
{
  islpci_private *priv ;
  void *tmp ;
  isl38xx_control_block *cb ;
  u32 curr_frag ;
  int index ;
  struct islpci_membuf *buf ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  cb = priv->control_block;
  curr_frag = cb->device_curr_frag[5];
  __asm__ volatile ("": : : "memory");
  }
  goto ldv_43078;
  ldv_43077:
  {
  index = (int )priv->index_mgmt_tx & 3;
  buf = (struct islpci_membuf *)(& priv->mgmt_tx) + (unsigned long )index;
  pci_unmap_single(priv->pdev, buf->pci_addr, (size_t )buf->size, 1);
  buf->pci_addr = 0ULL;
  kfree((void const *)buf->mem);
  buf->mem = (void *)0;
  buf->size = 0;
  priv->index_mgmt_tx = priv->index_mgmt_tx + 1U;
  }
  ldv_43078: ;
  if (priv->index_mgmt_tx < curr_frag) {
    goto ldv_43077;
  } else {
  }
  return;
}
}
int islpci_mgt_transaction(struct net_device *ndev , int operation , unsigned long oid ,
                           void *senddata , int sendlen , struct islpci_mgmtframe **recvframe )
{
  islpci_private *priv ;
  void *tmp ;
  long wait_cycle_jiffies ;
  unsigned long tmp___0 ;
  long timeout_left ;
  int err ;
  wait_queue_t wait ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  int timeleft ;
  struct islpci_mgmtframe *frame ;
  long tmp___3 ;
  struct islpci_mgmtframe *__ret ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  tmp___0 = msecs_to_jiffies(100U);
  wait_cycle_jiffies = (long const )tmp___0;
  timeout_left = wait_cycle_jiffies * 10L;
  tmp___1 = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp___1;
  wait.func = & autoremove_wake_function;
  wait.task_list.next = & wait.task_list;
  wait.task_list.prev = & wait.task_list;
  *recvframe = (struct islpci_mgmtframe *)0;
  tmp___2 = ldv_mutex_lock_interruptible_15(& priv->mgmt_lock);
  }
  if (tmp___2 != 0) {
    return (-512);
  } else {
  }
  {
  prepare_to_wait(& priv->mgmt_wqueue, & wait, 2);
  err = islpci_mgt_transmit(ndev, operation, oid, senddata, sendlen);
  }
  if (err != 0) {
    goto out;
  } else {
  }
  err = -110;
  goto ldv_43105;
  ldv_43104:
  {
  tmp___3 = schedule_timeout_uninterruptible(wait_cycle_jiffies);
  timeleft = (int )tmp___3;
  __ret = (struct islpci_mgmtframe *)0;
  }
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
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (priv->mgmt_received): : "memory",
                       "cc");
  goto ldv_43098;
  case_2:
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (priv->mgmt_received): : "memory",
                       "cc");
  goto ldv_43098;
  case_4:
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (priv->mgmt_received): : "memory",
                       "cc");
  goto ldv_43098;
  case_8:
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (priv->mgmt_received): : "memory",
                       "cc");
  goto ldv_43098;
  switch_default:
  {
  __xchg_wrong_size();
  }
  switch_break: ;
  }
  ldv_43098:
  frame = __ret;
  if ((unsigned long )frame != (unsigned long )((struct islpci_mgmtframe *)0)) {
    if ((unsigned long )(frame->header)->oid == oid) {
      *recvframe = frame;
      err = 0;
      goto out;
    } else {
      {
      printk("\017%s: expecting oid 0x%x, received 0x%x.\n", (char *)(& ndev->name),
             (unsigned int )oid, (frame->header)->oid);
      kfree((void const *)frame);
      frame = (struct islpci_mgmtframe *)0;
      }
    }
  } else {
  }
  if (timeleft == 0) {
    {
    printk("\017%s: timeout waiting for mgmt response %lu, triggering device\n", (char *)(& ndev->name),
           timeout_left);
    islpci_trigger(priv);
    }
  } else {
  }
  timeout_left = timeout_left + ((long )timeleft - wait_cycle_jiffies);
  ldv_43105: ;
  if (timeout_left > 0L) {
    goto ldv_43104;
  } else {
  }
  {
  printk("\f%s: timeout waiting for mgmt response\n", (char *)(& ndev->name));
  }
  out:
  {
  finish_wait(& priv->mgmt_wqueue, & wait);
  ldv_mutex_unlock_16(& priv->mgmt_lock);
  }
  return (err);
}
}
static int ldv_mutex_lock_interruptible_15(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_mgmt_lock_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mgmt_lock_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
int isl38xx_in_queue(isl38xx_control_block *cb , int queue ) ;
void isl38xx_disable_interrupts(void *device ) ;
void isl38xx_enable_common_interrupts(void *device_base ) ;
void isl38xx_handle_sleep_request(isl38xx_control_block *control_block , int *powerstate ,
                                  void *device_base ) ;
void isl38xx_handle_wakeup(isl38xx_control_block *control_block , int *powerstate ,
                           void *device_base ) ;
void isl38xx_interface_reset(void *device_base , dma_addr_t host_address ) ;
void isl38xx_disable_interrupts(void *device )
{
  {
  {
  isl38xx_w32_flush(device, 0U, 24UL);
  __const_udelay(42950UL);
  }
  return;
}
}
void isl38xx_handle_sleep_request(isl38xx_control_block *control_block , int *powerstate ,
                                  void *device_base )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = isl38xx_in_queue(control_block, 1);
  }
  if (tmp != 0) {
    return;
  } else {
  }
  {
  tmp___0 = isl38xx_in_queue(control_block, 5);
  }
  if (tmp___0 != 0) {
    return;
  } else {
  }
  {
  tmp___1 = isl38xx_in_queue(control_block, 0);
  }
  if (tmp___1 != 0) {
    return;
  } else {
  }
  {
  tmp___2 = isl38xx_in_queue(control_block, 4);
  }
  if (tmp___2 != 0) {
    return;
  } else {
  }
  {
  *powerstate = 1;
  isl38xx_w32_flush(device_base, 16U, 0UL);
  __const_udelay(42950UL);
  }
  return;
}
}
void isl38xx_handle_wakeup(isl38xx_control_block *control_block , int *powerstate ,
                           void *device_base )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  *powerstate = 0;
  tmp = isl38xx_in_queue(control_block, 1);
  }
  if (tmp == 0) {
    {
    tmp___0 = isl38xx_in_queue(control_block, 5);
    }
    if (tmp___0 == 0) {
      return;
    } else {
    }
  } else {
  }
  {
  isl38xx_w32_flush(device_base, 2U, 0UL);
  __const_udelay(42950UL);
  }
  return;
}
}
void isl38xx_trigger_device(int asleep , void *device_base )
{
  u32 reg ;
  {
  if (asleep != 0) {
    {
    reg = readl((void const volatile *)device_base + 16U);
    }
    if (reg == 2880305870U) {
      goto ldv_42948;
      ldv_42947:
      {
      __const_udelay(42950UL);
      }
      ldv_42948:
      {
      reg = readl((void const volatile *)device_base + 120U);
      }
      if ((reg & 512U) == 0U) {
        goto ldv_42947;
      } else {
      }
    } else {
    }
    {
    isl38xx_w32_flush(device_base, 8U, 0UL);
    }
  } else {
    {
    isl38xx_w32_flush(device_base, 2U, 0UL);
    }
  }
  return;
}
}
void isl38xx_interface_reset(void *device_base , dma_addr_t host_address )
{
  {
  {
  isl38xx_w32_flush(device_base, (u32 )host_address, 32UL);
  __const_udelay(42950UL);
  isl38xx_w32_flush(device_base, 1U, 0UL);
  __const_udelay(42950UL);
  isl38xx_w32_flush(device_base, 4U, 24UL);
  __const_udelay(42950UL);
  }
  return;
}
}
void isl38xx_enable_common_interrupts(void *device_base )
{
  u32 reg ;
  {
  {
  reg = 26U;
  isl38xx_w32_flush(device_base, reg, 24UL);
  __const_udelay(42950UL);
  }
  return;
}
}
int isl38xx_in_queue(isl38xx_control_block *cb , int queue )
{
  s32 delta ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  {
  delta = (s32 const )(cb->driver_curr_frag[queue] - cb->device_curr_frag[queue]);
  tmp = ldv__builtin_expect(delta < 0, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/isl_38xx.c"),
                         "i" (231), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  if (queue == 5) {
    goto case_5;
  } else {
  }
  if (queue == 1) {
    goto case_1;
  } else {
  }
  if (queue == 3) {
    goto case_3;
  } else {
  }
  if (queue == 4) {
    goto case_4;
  } else {
  }
  if (queue == 0) {
    goto case_0;
  } else {
  }
  if (queue == 2) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_5:
  {
  tmp___0 = ldv__builtin_expect(delta > 4, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/isl_38xx.c"),
                         "i" (236), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  case_1: ;
  case_3:
  {
  tmp___1 = ldv__builtin_expect(delta > 32, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/isl_38xx.c"),
                         "i" (240), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return (delta);
  case_4:
  {
  tmp___2 = ldv__builtin_expect(delta > 4, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/isl_38xx.c"),
                         "i" (245), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return (4 - delta);
  case_0: ;
  case_2:
  {
  tmp___3 = ldv__builtin_expect(delta > 8, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/isl_38xx.c"),
                         "i" (250), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return (8 - delta);
  switch_break: ;
  }
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/isl_38xx.c"),
                       "i" (253), "i" (12UL));
  __builtin_unreachable();
  }
  return (0);
}
}
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
static void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_22(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_24(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_27(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_29(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_or_killable_lock_of_islpci_acl(struct mutex *lock ) ;
void ldv_mutex_lock_lock_of_islpci_acl(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_islpci_acl(struct mutex *lock ) ;
void ldv_mutex_lock_stats_lock_of_NOT_ARG_SIGN(struct mutex *lock ) ;
int ldv_mutex_trylock_stats_lock_of_NOT_ARG_SIGN(struct mutex *lock ) ;
void ldv_mutex_unlock_stats_lock_of_NOT_ARG_SIGN(struct mutex *lock ) ;
void ldv_mutex_lock_wpa_lock_of_NOT_ARG_SIGN(struct mutex *lock ) ;
void ldv_mutex_unlock_wpa_lock_of_NOT_ARG_SIGN(struct mutex *lock ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head, head->next);
  }
  return;
}
}
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head->prev, head);
  }
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
extern void list_del(struct list_head * ) ;
__inline static void list_move(struct list_head *list , struct list_head *head )
{
  {
  {
  __list_del_entry(list);
  list_add(list, head);
  }
  return;
}
}
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static int ldv_mutex_trylock_17(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_16___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_26(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
extern void down_read(struct rw_semaphore * ) ;
extern void down_write(struct rw_semaphore * ) ;
extern void up_read(struct rw_semaphore * ) ;
extern void up_write(struct rw_semaphore * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
__inline static bool ether_addr_equal(u8 const *addr1 , u8 const *addr2 )
{
  u32 fold ;
  {
  fold = ((unsigned int )*((u32 const *)addr1) ^ (unsigned int )*((u32 const *)addr2)) | (unsigned int )((int )((unsigned short )*((u16 const *)addr1 + 4U)) ^ (int )((unsigned short )*((u16 const *)addr2 + 4U)));
  return (fold == 0U);
}
}
__inline static void islpci_mgt_release(struct islpci_mgmtframe *frame )
{
  {
  {
  kfree((void const *)frame);
  }
  return;
}
}
extern void wireless_send_event(struct net_device * , unsigned int , union iwreq_data * ,
                                char const * ) ;
extern int iw_handler_set_spy(struct net_device * , struct iw_request_info * , union iwreq_data * ,
                              char * ) ;
extern int iw_handler_get_spy(struct net_device * , struct iw_request_info * , union iwreq_data * ,
                              char * ) ;
extern int iw_handler_set_thrspy(struct net_device * , struct iw_request_info * ,
                                 union iwreq_data * , char * ) ;
extern int iw_handler_get_thrspy(struct net_device * , struct iw_request_info * ,
                                 union iwreq_data * , char * ) ;
__inline static int iwe_stream_lcp_len(struct iw_request_info *info )
{
  {
  if ((int )info->flags & 1) {
    return (4);
  } else {
  }
  return (8);
}
}
__inline static int iwe_stream_point_len(struct iw_request_info *info )
{
  {
  if ((int )info->flags & 1) {
    return (8);
  } else {
  }
  return (16);
}
}
__inline static int iwe_stream_event_len_adjust(struct iw_request_info *info , int event_len )
{
  {
  if ((int )info->flags & 1) {
    event_len = (int )((unsigned int )event_len - 8U);
    event_len = (int )((unsigned int )event_len + 4U);
  } else {
  }
  return (event_len);
}
}
__inline static char *iwe_stream_add_event(struct iw_request_info *info , char *stream ,
                                           char *ends , struct iw_event *iwe , int event_len )
{
  int lcp_len ;
  int tmp ;
  long tmp___0 ;
  {
  {
  tmp = iwe_stream_lcp_len(info);
  lcp_len = tmp;
  event_len = iwe_stream_event_len_adjust(info, event_len);
  tmp___0 = ldv__builtin_expect((unsigned long )(stream + (unsigned long )event_len) < (unsigned long )ends,
                             1L);
  }
  if (tmp___0 != 0L) {
    {
    iwe->len = (__u16 )event_len;
    memcpy((void *)stream, (void const *)iwe, 4UL);
    memcpy((void *)stream + (unsigned long )lcp_len, (void const *)(& iwe->u), (size_t )(event_len - lcp_len));
    stream = stream + (unsigned long )event_len;
    }
  } else {
  }
  return (stream);
}
}
__inline static char *iwe_stream_add_point(struct iw_request_info *info , char *stream ,
                                           char *ends , struct iw_event *iwe , char *extra )
{
  int event_len ;
  int tmp ;
  int point_len ;
  int tmp___0 ;
  int lcp_len ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = iwe_stream_point_len(info);
  event_len = tmp + (int )iwe->u.data.length;
  tmp___0 = iwe_stream_point_len(info);
  point_len = tmp___0;
  tmp___1 = iwe_stream_lcp_len(info);
  lcp_len = tmp___1;
  tmp___2 = ldv__builtin_expect((unsigned long )(stream + (unsigned long )event_len) < (unsigned long )ends,
                             1L);
  }
  if (tmp___2 != 0L) {
    {
    iwe->len = (__u16 )event_len;
    memcpy((void *)stream, (void const *)iwe, 4UL);
    memcpy((void *)stream + (unsigned long )lcp_len, (void const *)(& iwe->u) + 8U,
           4UL);
    memcpy((void *)stream + (unsigned long )point_len, (void const *)extra, (size_t )iwe->u.data.length);
    stream = stream + (unsigned long )event_len;
    }
  } else {
  }
  return (stream);
}
}
__inline static char *iwe_stream_add_value(struct iw_request_info *info , char *event ,
                                           char *value , char *ends , struct iw_event *iwe ,
                                           int event_len )
{
  int lcp_len ;
  int tmp ;
  long tmp___0 ;
  {
  {
  tmp = iwe_stream_lcp_len(info);
  lcp_len = tmp;
  event_len = (int )((unsigned int )event_len - 8U);
  tmp___0 = ldv__builtin_expect((unsigned long )(value + (unsigned long )event_len) < (unsigned long )ends,
                             1L);
  }
  if (tmp___0 != 0L) {
    {
    memcpy((void *)value, (void const *)(& iwe->u), (size_t )event_len);
    value = value + (unsigned long )event_len;
    iwe->len = (int )((__u16 )((long )value)) - (int )((__u16 )((long )event));
    memcpy((void *)event, (void const *)iwe, (size_t )lcp_len);
    }
  } else {
  }
  return (value);
}
}
void prism54_mib_init(islpci_private *priv ) ;
struct iw_statistics *prism54_get_wireless_stats(struct net_device *ndev ) ;
void prism54_update_stats(struct work_struct *work ) ;
void prism54_acl_init(struct islpci_acl *acl ) ;
void prism54_acl_clean(struct islpci_acl *acl ) ;
void prism54_wpa_bss_ie_init(islpci_private *priv ) ;
void prism54_wpa_bss_ie_clean(islpci_private *priv ) ;
int prism54_set_mac_address(struct net_device *ndev , void *addr ) ;
struct iw_handler_def const prism54_handler_def ;
struct oid_t isl_oid[140U] ;
void mgt_le_to_cpu(int type , void *data ) ;
int mgt_set_request(islpci_private *priv , enum oid_num_t n , int extra , void *data ) ;
int mgt_set_varlen(islpci_private *priv , enum oid_num_t n , void *data , int extra_len ) ;
int mgt_get_request(islpci_private *priv , enum oid_num_t n , int extra , void *data ,
                    union oid_res_t *res ) ;
int mgt_commit_list(islpci_private *priv , enum oid_num_t *l , int n ) ;
void mgt_set(islpci_private *priv , enum oid_num_t n , void *data ) ;
void mgt_get(islpci_private *priv , enum oid_num_t n , void *res ) ;
int mgt_commit(islpci_private *priv ) ;
int mgt_mlme_answer(islpci_private *priv ) ;
enum oid_num_t mgt_oidtonum(u32 oid ) ;
int mgt_response_to_str(enum oid_num_t n , union oid_res_t *r , char *str ) ;
static void prism54_wpa_bss_ie_add(islpci_private *priv , u8 *bssid , u8 *wpa_ie ,
                                   size_t wpa_ie_len ) ;
static size_t prism54_wpa_bss_ie_get(islpci_private *priv , u8 *bssid , u8 *wpa_ie ) ;
static int prism54_set_wpa(struct net_device *ndev , struct iw_request_info *info ,
                           __u32 *uwrq , char *extra ) ;
static unsigned char const scan_rate_list[12U] =
  { 2U, 4U, 11U, 22U,
        12U, 18U, 24U, 36U,
        48U, 72U, 96U, 108U};
static int prism54_mib_mode_helper(islpci_private *priv , u32 iw_mode )
{
  u32 config ;
  u32 mode ;
  u32 bsstype ;
  {
  config = 1U;
  if (iw_mode - 4U <= 1U) {
    {
    printk("\017%s(): Sorry, Repeater mode and Secondary mode are not yet supported by this driver.\n",
           "prism54_mib_mode_helper");
    }
    return (-22);
  } else {
  }
  priv->iw_mode = iw_mode;
  {
  if (iw_mode == 0U) {
    goto case_0;
  } else {
  }
  if (iw_mode == 1U) {
    goto case_1;
  } else {
  }
  if (iw_mode == 2U) {
    goto case_2;
  } else {
  }
  if (iw_mode == 3U) {
    goto case_3;
  } else {
  }
  if (iw_mode == 6U) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_0:
  mode = 1U;
  bsstype = 3U;
  goto ldv_43304;
  case_1:
  mode = 1U;
  bsstype = 2U;
  goto ldv_43304;
  case_2:
  mode = 1U;
  bsstype = 1U;
  goto ldv_43304;
  case_3:
  mode = 2U;
  bsstype = 1U;
  goto ldv_43304;
  case_6:
  mode = 0U;
  bsstype = 3U;
  config = config | 4U;
  goto ldv_43304;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_43304:
  {
  mgt_set(priv, 6, (void *)(& bsstype));
  mgt_set(priv, 136, (void *)(& config));
  mgt_set(priv, 131, (void *)(& mode));
  }
  return (0);
}
}
void prism54_mib_init(islpci_private *priv )
{
  u32 channel ;
  u32 authen ;
  u32 wep ;
  u32 filter ;
  u32 dot1x ;
  u32 mlme ;
  u32 conformance ;
  u32 power ;
  u32 mode ;
  struct obj_buffer psm_buffer ;
  {
  {
  psm_buffer.size = 98304U;
  psm_buffer.addr = (unsigned int )priv->device_psm_buffer;
  channel = 6U;
  authen = 1U;
  wep = 0U;
  filter = 0U;
  dot1x = 0U;
  mlme = 0U;
  conformance = 0U;
  power = 127U;
  mode = 2U;
  mgt_set(priv, 85, (void *)(& channel));
  mgt_set(priv, 20, (void *)(& authen));
  mgt_set(priv, 21, (void *)(& wep));
  mgt_set(priv, 123, (void *)(& psm_buffer));
  mgt_set(priv, 22, (void *)(& filter));
  mgt_set(priv, 62, (void *)(& dot1x));
  mgt_set(priv, 120, (void *)(& mlme));
  mgt_set(priv, 137, (void *)(& conformance));
  mgt_set(priv, 139, (void *)(& power));
  prism54_mib_mode_helper(priv, mode);
  }
  return;
}
}
void prism54_update_stats(struct work_struct *work )
{
  islpci_private *priv ;
  struct work_struct const *__mptr ;
  char *data ;
  int j ;
  struct obj_bss bss ;
  struct obj_bss *bss2 ;
  union oid_res_t r ;
  {
  {
  __mptr = (struct work_struct const *)work;
  priv = (islpci_private *)__mptr + 0xfffffffffffffef0UL;
  ldv_mutex_lock_15(& priv->stats_lock);
  mgt_get_request(priv, 97, 0, (void *)0, & r);
  priv->local_iwstatistics.qual.noise = (__u8 )r.u;
  mgt_get_request(priv, 7, 0, (void *)0, & r);
  data = (char *)r.ptr;
  memcpy((void *)(& bss.address), (void const *)data, 6UL);
  kfree((void const *)data);
  j = mgt_get_request(priv, 126, 0, (void *)(& bss), & r);
  bss2 = (struct obj_bss *)r.ptr;
  priv->local_iwstatistics.qual.level = (__u8 )bss2->rssi;
  priv->local_iwstatistics.qual.qual = (int )((__u8 )bss2->rssi) - (int )priv->iwstatistics.qual.noise;
  kfree((void const *)bss2);
  priv->local_iwstatistics.qual.updated = 7U;
  mgt_get_request(priv, 30, 0, (void *)0, & r);
  priv->local_iwstatistics.discard.code = r.u;
  mgt_get_request(priv, 68, 0, (void *)0, & r);
  priv->local_iwstatistics.discard.retries = r.u;
  ldv_mutex_unlock_16___0(& priv->stats_lock);
  }
  return;
}
}
struct iw_statistics *prism54_get_wireless_stats(struct net_device *ndev )
{
  islpci_private *priv ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  tmp___0 = ldv_mutex_trylock_17(& priv->stats_lock);
  }
  if (tmp___0 != 0) {
    {
    memcpy((void *)(& priv->iwstatistics), (void const *)(& priv->local_iwstatistics),
           32UL);
    priv->local_iwstatistics.qual.updated = 0U;
    ldv_mutex_unlock_18(& priv->stats_lock);
    }
  } else {
    priv->iwstatistics.qual.updated = 0U;
  }
  if (priv->stats_timestamp == 0UL || (long )((priv->stats_timestamp - (unsigned long )jiffies) + 250UL) < 0L) {
    {
    schedule_work(& priv->stats_work);
    priv->stats_timestamp = jiffies;
    }
  } else {
  }
  return (& priv->iwstatistics);
}
}
static int prism54_commit(struct net_device *ndev , struct iw_request_info *info ,
                          char *cwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  }
  if (priv->iw_mode != 6U) {
    {
    tmp___0 = mgt_set_request(priv, 8, 0, (void *)0);
    }
    return (tmp___0);
  } else {
  }
  return (0);
}
}
static int prism54_get_name(struct net_device *ndev , struct iw_request_info *info ,
                            char *cwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  char *capabilities ;
  union oid_res_t r ;
  int rvalue ;
  islpci_state_t tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  tmp___0 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___0 <= 4U) {
    {
    strncpy(cwrq, "NOT READY!", 16UL);
    }
    return (0);
  } else {
  }
  {
  rvalue = mgt_get_request(priv, 138, 0, (void *)0, & r);
  }
  {
  if (r.u == 2U) {
    goto case_2;
  } else {
  }
  if (r.u == 2147483648U) {
    goto case_2147483648;
  } else {
  }
  if (r.u == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_2:
  capabilities = (char *)"IEEE 802.11a/b/g";
  goto ldv_43362;
  case_2147483648:
  capabilities = (char *)"IEEE 802.11b/g - FAA Support";
  goto ldv_43362;
  case_1: ;
  switch_default:
  capabilities = (char *)"IEEE 802.11b/g";
  goto ldv_43362;
  switch_break: ;
  }
  ldv_43362:
  {
  strncpy(cwrq, (char const *)capabilities, 16UL);
  }
  return (rvalue);
}
}
static int prism54_set_freq(struct net_device *ndev , struct iw_request_info *info ,
                            struct iw_freq *fwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  int rvalue ;
  u32 c ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  }
  if (fwrq->m <= 999) {
    c = (u32 )fwrq->m;
  } else
  if ((int )fwrq->e == 1) {
    {
    tmp___0 = channel_of_freq(fwrq->m / 100000);
    c = (u32 )tmp___0;
    }
  } else {
    c = 0U;
  }
  if (c != 0U) {
    {
    tmp___1 = mgt_set_request(priv, 85, 0, (void *)(& c));
    rvalue = tmp___1;
    }
  } else {
    rvalue = -22;
  }
  return (rvalue != 0 ? rvalue : -115);
}
}
static int prism54_get_freq(struct net_device *ndev , struct iw_request_info *info ,
                            struct iw_freq *fwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  union oid_res_t r ;
  int rvalue ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  rvalue = mgt_get_request(priv, 85, 0, (void *)0, & r);
  fwrq->i = (__u8 )r.u;
  tmp___0 = mgt_get_request(priv, 95, 0, (void *)0, & r);
  rvalue = rvalue | tmp___0;
  fwrq->m = (__s32 )r.u;
  fwrq->e = 3;
  }
  return (rvalue);
}
}
static int prism54_set_mode(struct net_device *ndev , struct iw_request_info *info ,
                            __u32 *uwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  u32 mlmeautolevel ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  mlmeautolevel = 0U;
  }
  if (*uwrq > 6U) {
    {
    printk("\017%s: %s() You passed a non-valid init_mode.\n", (char *)(& (priv->ndev)->name),
           "prism54_set_mode");
    }
    return (-22);
  } else {
  }
  {
  down_write(& priv->mib_sem);
  tmp___0 = prism54_mib_mode_helper(priv, *uwrq);
  }
  if (tmp___0 != 0) {
    {
    up_write(& priv->mib_sem);
    }
    return (-95);
  } else {
  }
  if (*uwrq == 3U && (unsigned int )priv->acl.policy != 0U) {
    mlmeautolevel = 1U;
  } else {
  }
  if (priv->wpa != 0) {
    mlmeautolevel = 2U;
  } else {
  }
  {
  mgt_set(priv, 120, (void *)(& mlmeautolevel));
  tmp___1 = mgt_commit(priv);
  }
  if (tmp___1 != 0) {
    {
    up_write(& priv->mib_sem);
    }
    return (-5);
  } else {
  }
  {
  (priv->ndev)->type = priv->iw_mode == 6U ? (unsigned short )priv->monitor_type : 1U;
  up_write(& priv->mib_sem);
  }
  return (0);
}
}
static int prism54_get_mode(struct net_device *ndev , struct iw_request_info *info ,
                            __u32 *uwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  tmp___0 = ldv__builtin_expect(priv->iw_mode > 6U, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/isl_ioctl.c"),
                         "i" (376), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  *uwrq = priv->iw_mode;
  return (0);
}
}
static int prism54_set_sens(struct net_device *ndev , struct iw_request_info *info ,
                            struct iw_param *vwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  u32 sens ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  sens = (unsigned int )vwrq->disabled == 0U ? (u32 )vwrq->value : 20U;
  tmp___0 = mgt_set_request(priv, 86, 0, (void *)(& sens));
  }
  return (tmp___0);
}
}
static int prism54_get_sens(struct net_device *ndev , struct iw_request_info *info ,
                            struct iw_param *vwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  union oid_res_t r ;
  int rvalue ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  rvalue = mgt_get_request(priv, 86, 0, (void *)0, & r);
  vwrq->value = (__s32 )r.u;
  vwrq->disabled = vwrq->value == 0;
  vwrq->fixed = 1U;
  }
  return (rvalue);
}
}
static int prism54_get_range(struct net_device *ndev , struct iw_request_info *info ,
                             struct iw_point *dwrq , char *extra )
{
  struct iw_range *range ;
  islpci_private *priv ;
  void *tmp ;
  u8 *data ;
  int i ;
  int m ;
  int rvalue ;
  struct obj_frequencies *freq ;
  union oid_res_t r ;
  islpci_state_t tmp___0 ;
  int _min1 ;
  int _min2 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  range = (struct iw_range *)extra;
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  memset((void *)range, 0, 568UL);
  dwrq->length = 568U;
  range->we_version_source = 19U;
  range->we_version_compiled = 22U;
  range->num_encoding_sizes = 3U;
  range->encoding_size[0] = 5U;
  range->encoding_size[1] = 13U;
  range->encoding_size[2] = 32U;
  range->max_encoding_tokens = 4U;
  range->max_qual.level = 0U;
  range->max_qual.noise = 0U;
  range->max_qual.qual = 0U;
  range->avg_qual.level = 176U;
  range->avg_qual.noise = 0U;
  range->avg_qual.qual = 0U;
  range->sensitivity = 200;
  range->retry_capa = 12288U;
  range->retry_flags = 4096U;
  range->r_time_flags = 8192U;
  range->min_retry = 1;
  range->max_retry = 65535;
  range->min_r_time = 1024;
  range->max_r_time = 67107840;
  range->txpower_capa = 0U;
  range->event_capa[0] = 69730384U;
  range->event_capa[1] = 1024U;
  range->event_capa[4] = 4U;
  range->enc_capa = 7U;
  tmp___0 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___0 <= 4U) {
    return (0);
  } else {
  }
  {
  rvalue = mgt_get_request(priv, 96, 0, (void *)0, & r);
  freq = (struct obj_frequencies *)r.ptr;
  range->num_channels = freq->nr;
  range->num_frequency = (__u8 )freq->nr;
  _min1 = 32;
  _min2 = (int )freq->nr;
  m = _min1 < _min2 ? _min1 : _min2;
  i = 0;
  }
  goto ldv_43435;
  ldv_43434:
  {
  range->freq[i].m = (__s32 )freq->mhz[i];
  range->freq[i].e = 6;
  tmp___1 = channel_of_freq((int )freq->mhz[i]);
  range->freq[i].i = (__u8 )tmp___1;
  i = i + 1;
  }
  ldv_43435: ;
  if (i < m) {
    goto ldv_43434;
  } else {
  }
  {
  kfree((void const *)freq);
  tmp___2 = mgt_get_request(priv, 94, 0, (void *)0, & r);
  rvalue = rvalue | tmp___2;
  data = (u8 *)r.ptr;
  i = 0;
  }
  goto ldv_43438;
  ldv_43437:
  range->bitrate[i] = (int )*data * 500000;
  i = i + 1;
  data = data + 1;
  ldv_43438: ;
  if (i <= 31 && (unsigned int )*data != 0U) {
    goto ldv_43437;
  } else {
  }
  {
  range->num_bitrates = (__u8 )i;
  kfree((void const *)r.ptr);
  }
  return (rvalue);
}
}
static int prism54_set_wap(struct net_device *ndev , struct iw_request_info *info ,
                           struct sockaddr *awrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  char bssid[6U] ;
  int rvalue ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  }
  if ((unsigned int )awrq->sa_family != 1U) {
    return (-22);
  } else {
  }
  {
  memcpy((void *)(& bssid), (void const *)(& awrq->sa_data), 6UL);
  rvalue = mgt_set_request(priv, 7, 0, (void *)(& bssid));
  }
  return (rvalue != 0 ? rvalue : -115);
}
}
static int prism54_get_wap(struct net_device *ndev , struct iw_request_info *info ,
                           struct sockaddr *awrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  union oid_res_t r ;
  int rvalue ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  rvalue = mgt_get_request(priv, 7, 0, (void *)0, & r);
  memcpy((void *)(& awrq->sa_data), (void const *)r.ptr, 6UL);
  awrq->sa_family = 1U;
  kfree((void const *)r.ptr);
  }
  return (rvalue);
}
}
static int prism54_set_scan(struct net_device *dev , struct iw_request_info *info ,
                            struct iw_param *vwrq , char *extra )
{
  {
  return (0);
}
}
static char *prism54_translate_bss(struct net_device *ndev , struct iw_request_info *info ,
                                   char *current_ev , char *end_buf , struct obj_bss *bss ,
                                   char noise )
{
  struct iw_event iwe ;
  short cap ;
  islpci_private *priv ;
  void *tmp ;
  u8 wpa_ie[64U] ;
  size_t wpa_ie_len ;
  size_t _min1 ;
  unsigned long _min2 ;
  char *current_val ;
  int tmp___0 ;
  int i ;
  int mask ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  memcpy((void *)(& iwe.u.ap_addr.sa_data), (void const *)(& bss->address), 6UL);
  iwe.u.ap_addr.sa_family = 1U;
  iwe.cmd = 35605U;
  current_ev = iwe_stream_add_event(info, current_ev, end_buf, & iwe, 24);
  iwe.u.data.length = (__u16 )bss->ssid.length;
  iwe.u.data.flags = 1U;
  iwe.cmd = 35611U;
  current_ev = iwe_stream_add_point(info, current_ev, end_buf, & iwe, (char *)(& bss->ssid.octets));
  cap = bss->capinfo;
  iwe.u.mode = 0U;
  }
  if ((int )cap & 1) {
    iwe.u.mode = 3U;
  } else
  if (((int )cap & 2) != 0) {
    iwe.u.mode = 1U;
  } else {
  }
  iwe.cmd = 35591U;
  if (iwe.u.mode != 0U) {
    {
    current_ev = iwe_stream_add_event(info, current_ev, end_buf, & iwe, 12);
    }
  } else {
  }
  if (((int )cap & 16) != 0) {
    iwe.u.data.flags = 2048U;
  } else {
    iwe.u.data.flags = 32768U;
  }
  {
  iwe.u.data.length = 0U;
  iwe.cmd = 35627U;
  current_ev = iwe_stream_add_point(info, current_ev, end_buf, & iwe, (char *)0);
  iwe.u.freq.m = (__s32 )bss->channel;
  iwe.u.freq.e = 6;
  iwe.cmd = 35589U;
  current_ev = iwe_stream_add_event(info, current_ev, end_buf, & iwe, 16);
  iwe.u.qual.level = (__u8 )bss->rssi;
  iwe.u.qual.noise = (__u8 )noise;
  iwe.u.qual.qual = (int )((__u8 )bss->rssi) - (int )((__u8 )noise);
  iwe.cmd = 35841U;
  current_ev = iwe_stream_add_event(info, current_ev, end_buf, & iwe, 12);
  wpa_ie_len = prism54_wpa_bss_ie_get(priv, (u8 *)(& bss->address), (u8 *)(& wpa_ie));
  }
  if (wpa_ie_len != 0UL) {
    {
    iwe.cmd = 35845U;
    _min1 = wpa_ie_len;
    _min2 = 64UL;
    iwe.u.data.length = (__u16 )(_min1 < _min2 ? _min1 : _min2);
    current_ev = iwe_stream_add_point(info, current_ev, end_buf, & iwe, (char *)(& wpa_ie));
    }
  } else {
  }
  {
  tmp___0 = iwe_stream_lcp_len(info);
  current_val = current_ev + (unsigned long )tmp___0;
  iwe.cmd = 35617U;
  iwe.u.bitrate.disabled = 0U;
  iwe.u.bitrate.fixed = iwe.u.bitrate.disabled;
  mask = 1;
  i = 0;
  }
  goto ldv_43484;
  ldv_43483: ;
  if (((int )bss->rates & mask) != 0) {
    {
    iwe.u.bitrate.value = (int )scan_rate_list[i] * 500000;
    current_val = iwe_stream_add_value(info, current_ev, current_val, end_buf, & iwe,
                                       16);
    }
  } else {
  }
  mask = mask << 1;
  i = i + 1;
  ldv_43484: ;
  if ((unsigned int )i <= 11U) {
    goto ldv_43483;
  } else {
  }
  {
  tmp___1 = iwe_stream_lcp_len(info);
  }
  if ((long )current_val - (long )current_ev > (long )tmp___1) {
    current_ev = current_val;
  } else {
  }
  return (current_ev);
}
}
static int prism54_get_scan(struct net_device *ndev , struct iw_request_info *info ,
                            struct iw_point *dwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  int i ;
  int rvalue ;
  struct obj_bsslist *bsslist ;
  u32 noise ;
  char *current_ev ;
  union oid_res_t r ;
  islpci_state_t tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  noise = 0U;
  current_ev = extra;
  tmp___0 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___0 <= 4U) {
    dwrq->length = 0U;
    return (0);
  } else {
  }
  {
  rvalue = mgt_get_request(priv, 97, 0, (void *)0, & r);
  noise = r.u;
  tmp___1 = mgt_get_request(priv, 127, 0, (void *)0, & r);
  rvalue = rvalue | tmp___1;
  bsslist = (struct obj_bsslist *)r.ptr;
  i = 0;
  }
  goto ldv_43501;
  ldv_43500:
  {
  current_ev = prism54_translate_bss(ndev, info, current_ev, extra + (unsigned long )dwrq->length,
                                     (struct obj_bss *)(& bsslist->bsslist) + (unsigned long )i,
                                     (int )((char )noise));
  }
  if ((unsigned long )((long )(extra + (unsigned long )dwrq->length) - (long )current_ev) <= 24UL) {
    rvalue = -7;
    goto ldv_43499;
  } else {
  }
  i = i + 1;
  ldv_43501: ;
  if (i < (int )bsslist->nr) {
    goto ldv_43500;
  } else {
  }
  ldv_43499:
  {
  kfree((void const *)bsslist);
  dwrq->length = (int )((__u16 )((long )current_ev)) - (int )((__u16 )((long )extra));
  dwrq->flags = 0U;
  }
  return (rvalue);
}
}
static int prism54_set_essid(struct net_device *ndev , struct iw_request_info *info ,
                             struct iw_point *dwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  struct obj_ssid essid ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  memset((void *)(& essid.octets), 0, 33UL);
  }
  if ((unsigned int )dwrq->flags != 0U && (unsigned int )dwrq->length != 0U) {
    if ((unsigned int )dwrq->length > 32U) {
      return (-7);
    } else {
    }
    {
    essid.length = (u8 )dwrq->length;
    memcpy((void *)(& essid.octets), (void const *)extra, (size_t )dwrq->length);
    }
  } else {
    essid.length = 0U;
  }
  if (priv->iw_mode != 6U) {
    {
    tmp___0 = mgt_set_request(priv, 8, 0, (void *)(& essid));
    }
    return (tmp___0);
  } else {
  }
  {
  mgt_set(priv, 8, (void *)(& essid));
  }
  return (0);
}
}
static int prism54_get_essid(struct net_device *ndev , struct iw_request_info *info ,
                             struct iw_point *dwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  struct obj_ssid *essid ;
  union oid_res_t r ;
  int rvalue ;
  unsigned char _min1 ;
  u8 _min2 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  rvalue = mgt_get_request(priv, 8, 0, (void *)0, & r);
  essid = (struct obj_ssid *)r.ptr;
  }
  if ((unsigned int )essid->length != 0U) {
    dwrq->flags = 1U;
    _min1 = 32U;
    _min2 = essid->length;
    dwrq->length = (__u16 )((int )_min1 < (int )_min2 ? (int )_min1 : (int )_min2);
  } else {
    dwrq->flags = 0U;
    dwrq->length = 0U;
  }
  {
  essid->octets[(int )dwrq->length] = 0;
  memcpy((void *)extra, (void const *)(& essid->octets), (size_t )dwrq->length);
  kfree((void const *)essid);
  }
  return (rvalue);
}
}
static int prism54_set_nick(struct net_device *ndev , struct iw_request_info *info ,
                            struct iw_point *dwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  }
  if ((unsigned int )dwrq->length > 32U) {
    return (-7);
  } else {
  }
  {
  down_write(& priv->mib_sem);
  memset((void *)(& priv->nickname), 0, 33UL);
  memcpy((void *)(& priv->nickname), (void const *)extra, (size_t )dwrq->length);
  up_write(& priv->mib_sem);
  }
  return (0);
}
}
static int prism54_get_nick(struct net_device *ndev , struct iw_request_info *info ,
                            struct iw_point *dwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  size_t tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  dwrq->length = 0U;
  down_read(& priv->mib_sem);
  tmp___0 = strlen((char const *)(& priv->nickname));
  dwrq->length = (__u16 )tmp___0;
  memcpy((void *)extra, (void const *)(& priv->nickname), (size_t )dwrq->length);
  up_read(& priv->mib_sem);
  }
  return (0);
}
}
static int prism54_set_rate(struct net_device *ndev , struct iw_request_info *info ,
                            struct iw_param *vwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  u32 rate ;
  u32 profile ;
  char *data ;
  int ret ;
  int i ;
  union oid_res_t r ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  }
  if (vwrq->value == -1) {
    {
    profile = 1U;
    tmp___0 = mgt_set_request(priv, 103, 0, (void *)(& profile));
    }
    return (tmp___0);
  } else {
  }
  {
  ret = mgt_get_request(priv, 94, 0, (void *)0, & r);
  }
  if (ret != 0) {
    {
    kfree((void const *)r.ptr);
    }
    return (ret);
  } else {
  }
  rate = (unsigned int )(vwrq->value / 500000);
  data = (char *)r.ptr;
  i = 0;
  goto ldv_43552;
  ldv_43551: ;
  if (rate != 0U && (u32 )*(data + (unsigned long )i) == rate) {
    goto ldv_43550;
  } else {
  }
  if (vwrq->value == i) {
    goto ldv_43550;
  } else {
  }
  *(data + (unsigned long )i) = (int )*(data + (unsigned long )i) | -128;
  i = i + 1;
  ldv_43552: ;
  if ((int )((signed char )*(data + (unsigned long )i)) != 0) {
    goto ldv_43551;
  } else {
  }
  ldv_43550: ;
  if ((int )((signed char )*(data + (unsigned long )i)) == 0) {
    {
    kfree((void const *)r.ptr);
    }
    return (-22);
  } else {
  }
  *(data + (unsigned long )i) = (int )*(data + (unsigned long )i) | -128;
  *(data + ((unsigned long )i + 1UL)) = 0;
  if ((unsigned int )vwrq->fixed != 0U) {
    *data = *(data + (unsigned long )i);
    *(data + 1UL) = 0;
  } else {
  }
  {
  profile = 4294967295U;
  ret = mgt_set_request(priv, 103, 0, (void *)(& profile));
  tmp___1 = mgt_set_request(priv, 104, 0, (void *)data);
  ret = ret | tmp___1;
  tmp___2 = mgt_set_request(priv, 88, 0, (void *)data);
  ret = ret | tmp___2;
  kfree((void const *)r.ptr);
  }
  return (ret);
}
}
static int prism54_get_rate(struct net_device *ndev , struct iw_request_info *info ,
                            struct iw_param *vwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  int rvalue ;
  char *data ;
  union oid_res_t r ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  rvalue = mgt_get_request(priv, 1, 0, (void *)0, & r);
  }
  if (rvalue != 0) {
    return (rvalue);
  } else {
  }
  {
  vwrq->value = (__s32 )(r.u * 500000U);
  rvalue = mgt_get_request(priv, 88, 0, (void *)0, & r);
  }
  if (rvalue != 0) {
    {
    kfree((void const *)r.ptr);
    }
    return (rvalue);
  } else {
  }
  {
  data = (char *)r.ptr;
  vwrq->fixed = (__u8 )((int )((signed char )*data) != 0 && (int )((signed char )*(data + 1UL)) == 0);
  kfree((void const *)r.ptr);
  }
  return (0);
}
}
static int prism54_set_rts(struct net_device *ndev , struct iw_request_info *info ,
                           struct iw_param *vwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  tmp___0 = mgt_set_request(priv, 32, 0, (void *)(& vwrq->value));
  }
  return (tmp___0);
}
}
static int prism54_get_rts(struct net_device *ndev , struct iw_request_info *info ,
                           struct iw_param *vwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  union oid_res_t r ;
  int rvalue ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  rvalue = mgt_get_request(priv, 32, 0, (void *)0, & r);
  vwrq->value = (__s32 )r.u;
  }
  return (rvalue);
}
}
static int prism54_set_frag(struct net_device *ndev , struct iw_request_info *info ,
                            struct iw_param *vwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  tmp___0 = mgt_set_request(priv, 33, 0, (void *)(& vwrq->value));
  }
  return (tmp___0);
}
}
static int prism54_get_frag(struct net_device *ndev , struct iw_request_info *info ,
                            struct iw_param *vwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  union oid_res_t r ;
  int rvalue ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  rvalue = mgt_get_request(priv, 33, 0, (void *)0, & r);
  vwrq->value = (__s32 )r.u;
  }
  return (rvalue);
}
}
static int prism54_set_retry(struct net_device *ndev , struct iw_request_info *info ,
                             struct iw_param *vwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  u32 slimit ;
  u32 llimit ;
  u32 lifetime ;
  int rvalue ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  slimit = 0U;
  llimit = 0U;
  lifetime = 0U;
  rvalue = 0;
  }
  if ((unsigned int )vwrq->disabled != 0U) {
    return (-22);
  } else {
  }
  if (((int )vwrq->flags & 4096) != 0) {
    if (((int )vwrq->flags & 16) != 0) {
      slimit = (u32 )vwrq->value;
    } else
    if (((int )vwrq->flags & 32) != 0) {
      llimit = (u32 )vwrq->value;
    } else {
      slimit = (u32 )vwrq->value;
      llimit = (u32 )vwrq->value;
    }
  } else {
  }
  if (((int )vwrq->flags & 8192) != 0) {
    lifetime = (u32 )(vwrq->value / 1024);
  } else {
  }
  if (slimit != 0U) {
    {
    rvalue = mgt_set_request(priv, 34, 0, (void *)(& slimit));
    }
  } else {
  }
  if (llimit != 0U) {
    {
    tmp___0 = mgt_set_request(priv, 35, 0, (void *)(& llimit));
    rvalue = rvalue | tmp___0;
    }
  } else {
  }
  if (lifetime != 0U) {
    {
    tmp___1 = mgt_set_request(priv, 36, 0, (void *)(& lifetime));
    rvalue = rvalue | tmp___1;
    }
  } else {
  }
  return (rvalue);
}
}
static int prism54_get_retry(struct net_device *ndev , struct iw_request_info *info ,
                             struct iw_param *vwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  union oid_res_t r ;
  int rvalue ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  rvalue = 0;
  vwrq->disabled = 0U;
  }
  if (((int )vwrq->flags & 61440) == 8192) {
    {
    rvalue = mgt_get_request(priv, 36, 0, (void *)0, & r);
    vwrq->value = (__s32 )(r.u * 1024U);
    vwrq->flags = 8192U;
    }
  } else
  if (((int )vwrq->flags & 32) != 0) {
    {
    tmp___0 = mgt_get_request(priv, 35, 0, (void *)0, & r);
    rvalue = rvalue | tmp___0;
    vwrq->value = (__s32 )r.u;
    vwrq->flags = 4128U;
    }
  } else {
    {
    tmp___1 = mgt_get_request(priv, 34, 0, (void *)0, & r);
    rvalue = rvalue | tmp___1;
    vwrq->value = (__s32 )r.u;
    vwrq->flags = 4112U;
    }
  }
  return (rvalue);
}
}
static int prism54_set_encode(struct net_device *ndev , struct iw_request_info *info ,
                              struct iw_point *dwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  int rvalue ;
  int force ;
  int authen ;
  int invoke ;
  int exunencrypt ;
  union oid_res_t r ;
  int index ;
  int current_index ;
  struct obj_key key ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  int index___0 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  rvalue = 0;
  force = 0;
  authen = 1;
  invoke = 0;
  exunencrypt = 0;
  }
  if ((unsigned int )dwrq->length != 0U) {
    index = ((int )dwrq->flags & 255) + -1;
    key.type = 0U;
    key.length = 0U;
    key.key[0] = '\000';
    tmp___0 = 1U;
    {
    while (1) {
      while_continue: ;
      if (tmp___0 >= 32U) {
        goto while_break;
      } else {
      }
      key.key[tmp___0] = (char)0;
      tmp___0 = tmp___0 + 1U;
    }
    while_break: ;
    }
    {
    rvalue = mgt_get_request(priv, 23, 0, (void *)0, & r);
    current_index = (int )r.u;
    }
    if (((int )dwrq->flags & 2048) == 0) {
      if ((unsigned int )dwrq->length > 32U) {
        return (-22);
      } else {
      }
      if ((unsigned int )dwrq->length > 13U) {
        key.type = 1U;
        key.length = 32U;
      } else
      if ((unsigned int )dwrq->length > 5U) {
        key.length = 13U;
      } else {
        key.length = 5U;
      }
      {
      memset((void *)(& key.key), 0, 32UL);
      memcpy((void *)(& key.key), (void const *)extra, (size_t )dwrq->length);
      }
      if ((unsigned int )index > 3U) {
        index = current_index;
      } else {
      }
      {
      tmp___1 = mgt_set_request(priv, 24, index, (void *)(& key));
      rvalue = rvalue | tmp___1;
      }
    } else {
    }
    if (index == current_index && (unsigned int )key.length != 0U) {
      force = 1;
    } else {
    }
  } else {
    index___0 = ((int )dwrq->flags & 255) + -1;
    if ((unsigned int )index___0 <= 3U) {
      {
      tmp___2 = mgt_set_request(priv, 23, 0, (void *)(& index___0));
      rvalue = rvalue | tmp___2;
      }
    } else
    if (((int )dwrq->flags & 61440) == 0) {
      return (-22);
    } else {
    }
  }
  if (((int )dwrq->flags & 8192) != 0) {
    invoke = 1;
  } else {
  }
  if ((((int )dwrq->flags & 16384) | force) != 0) {
    authen = 3;
    invoke = 1;
    exunencrypt = 1;
  } else {
  }
  if ((((int )dwrq->flags & 61440) | force) != 0) {
    {
    tmp___3 = mgt_set_request(priv, 20, 0, (void *)(& authen));
    rvalue = rvalue | tmp___3;
    tmp___4 = mgt_set_request(priv, 21, 0, (void *)(& invoke));
    rvalue = rvalue | tmp___4;
    tmp___5 = mgt_set_request(priv, 22, 0, (void *)(& exunencrypt));
    rvalue = rvalue | tmp___5;
    }
  } else {
  }
  return (rvalue);
}
}
static int prism54_get_encode(struct net_device *ndev , struct iw_request_info *info ,
                              struct iw_point *dwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  struct obj_key *key ;
  u32 devindex ;
  u32 index ;
  u32 authen ;
  u32 invoke ;
  u32 exunencrypt ;
  int rvalue ;
  union oid_res_t r ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  index = (u32 )(((int )dwrq->flags & 255) + -1);
  authen = 0U;
  invoke = 0U;
  exunencrypt = 0U;
  rvalue = mgt_get_request(priv, 20, 0, (void *)0, & r);
  authen = r.u;
  tmp___0 = mgt_get_request(priv, 21, 0, (void *)0, & r);
  rvalue = rvalue | tmp___0;
  invoke = r.u;
  tmp___1 = mgt_get_request(priv, 22, 0, (void *)0, & r);
  rvalue = rvalue | tmp___1;
  exunencrypt = r.u;
  }
  if ((invoke != 0U && authen == 3U) && exunencrypt != 0U) {
    dwrq->flags = 16384U;
  } else
  if (authen == 1U && exunencrypt == 0U) {
    if (invoke != 0U) {
      dwrq->flags = 8192U;
    } else {
      dwrq->flags = 32768U;
    }
  } else {
    dwrq->flags = 0U;
  }
  {
  tmp___2 = mgt_get_request(priv, 23, 0, (void *)0, & r);
  rvalue = rvalue | tmp___2;
  devindex = r.u;
  }
  if (index > 3U) {
    index = devindex;
  } else {
  }
  {
  tmp___3 = mgt_get_request(priv, 24, (int )index, (void *)0, & r);
  rvalue = rvalue | tmp___3;
  key = (struct obj_key *)r.ptr;
  dwrq->length = (__u16 )key->length;
  memcpy((void *)extra, (void const *)(& key->key), (size_t )dwrq->length);
  kfree((void const *)key);
  dwrq->flags = (unsigned int )dwrq->flags | ((unsigned int )((__u16 )devindex) + 1U);
  }
  return (rvalue);
}
}
static int prism54_get_txpower(struct net_device *ndev , struct iw_request_info *info ,
                               struct iw_param *vwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  union oid_res_t r ;
  int rvalue ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  rvalue = mgt_get_request(priv, 139, 0, (void *)0, & r);
  vwrq->value = (int )r.u / 4;
  vwrq->fixed = 1U;
  vwrq->disabled = 0U;
  }
  return (rvalue);
}
}
static int prism54_set_txpower(struct net_device *ndev , struct iw_request_info *info ,
                               struct iw_param *vwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  s32 u ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  u = vwrq->value;
  u = u * 4;
  }
  if ((unsigned int )vwrq->disabled != 0U) {
    {
    printk("\017%s: %s() disabling radio is not yet supported.\n", (char *)(& (priv->ndev)->name),
           "prism54_set_txpower");
    }
    return (-524);
  } else
  if ((unsigned int )vwrq->fixed != 0U) {
    {
    tmp___0 = mgt_set_request(priv, 139, 0, (void *)(& u));
    }
    return (tmp___0);
  } else {
    {
    printk("\017%s: %s() auto power will be implemented later.\n", (char *)(& (priv->ndev)->name),
           "prism54_set_txpower");
    }
    return (-524);
  }
}
}
static int prism54_set_genie(struct net_device *ndev , struct iw_request_info *info ,
                             struct iw_point *data , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  int alen ;
  int ret ;
  struct obj_attachment *attach ;
  void *tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  ret = 0;
  }
  if ((unsigned int )data->length > 64U || ((unsigned int )data->length != 0U && (unsigned long )extra == (unsigned long )((char *)0))) {
    return (-22);
  } else {
  }
  {
  memcpy((void *)(& priv->wpa_ie), (void const *)extra, (size_t )data->length);
  priv->wpa_ie_len = (size_t )data->length;
  alen = (int )((unsigned int )priv->wpa_ie_len + 6U);
  tmp___0 = kzalloc((size_t )alen, 208U);
  attach = (struct obj_attachment *)tmp___0;
  }
  if ((unsigned long )attach == (unsigned long )((struct obj_attachment *)0)) {
    return (-12);
  } else {
  }
  {
  attach->type = 0;
  attach->id = -1;
  attach->size = (short )priv->wpa_ie_len;
  memcpy((void *)(& attach->data), (void const *)extra, priv->wpa_ie_len);
  ret = mgt_set_varlen(priv, 122, (void *)attach, (int )priv->wpa_ie_len);
  }
  if (ret == 0) {
    {
    attach->type = 32;
    ret = mgt_set_varlen(priv, 122, (void *)attach, (int )priv->wpa_ie_len);
    }
    if (ret == 0) {
      {
      printk("\017%s: WPA IE Attachment was set\n", (char *)(& ndev->name));
      }
    } else {
    }
  } else {
  }
  {
  kfree((void const *)attach);
  }
  return (ret);
}
}
static int prism54_get_genie(struct net_device *ndev , struct iw_request_info *info ,
                             struct iw_point *data , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  int len ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  len = (int )priv->wpa_ie_len;
  }
  if (len <= 0) {
    data->length = 0U;
    return (0);
  } else {
  }
  if ((int )data->length < len) {
    return (-7);
  } else {
  }
  {
  data->length = (__u16 )len;
  memcpy((void *)extra, (void const *)(& priv->wpa_ie), (size_t )len);
  }
  return (0);
}
}
static int prism54_set_auth(struct net_device *ndev , struct iw_request_info *info ,
                            union iwreq_data *wrqu , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  struct iw_param *param ;
  u32 mlmelevel ;
  u32 authen ;
  u32 dot1x ;
  u32 exunencrypt ;
  u32 privinvoked ;
  u32 wpa ;
  u32 old_wpa ;
  int ret ;
  union oid_res_t r ;
  islpci_state_t tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  param = & wrqu->param;
  mlmelevel = 0U;
  authen = 0U;
  dot1x = 0U;
  exunencrypt = 0U;
  privinvoked = 0U;
  wpa = 0U;
  ret = 0;
  tmp___0 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___0 <= 4U) {
    return (0);
  } else {
  }
  {
  down_write(& priv->mib_sem);
  old_wpa = (u32 )priv->wpa;
  wpa = old_wpa;
  up_write(& priv->mib_sem);
  ret = mgt_get_request(priv, 20, 0, (void *)0, & r);
  authen = r.u;
  ret = mgt_get_request(priv, 21, 0, (void *)0, & r);
  privinvoked = r.u;
  ret = mgt_get_request(priv, 22, 0, (void *)0, & r);
  exunencrypt = r.u;
  ret = mgt_get_request(priv, 62, 0, (void *)0, & r);
  dot1x = r.u;
  ret = mgt_get_request(priv, 120, 0, (void *)0, & r);
  mlmelevel = r.u;
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  if (((int )param->flags & 4095) == 1) {
    goto case_1;
  } else {
  }
  if (((int )param->flags & 4095) == 2) {
    goto case_2;
  } else {
  }
  if (((int )param->flags & 4095) == 3) {
    goto case_3;
  } else {
  }
  if (((int )param->flags & 4095) == 7) {
    goto case_7;
  } else {
  }
  if (((int )param->flags & 4095) == 0) {
    goto case_0;
  } else {
  }
  if (((int )param->flags & 4095) == 8) {
    goto case_8;
  } else {
  }
  if (((int )param->flags & 4095) == 10) {
    goto case_10;
  } else {
  }
  if (((int )param->flags & 4095) == 5) {
    goto case_5;
  } else {
  }
  if (((int )param->flags & 4095) == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_2: ;
  case_3: ;
  goto ldv_43704;
  case_7: ;
  if (param->value != 0) {
    wpa = 1U;
    privinvoked = 1U;
    exunencrypt = 1U;
    dot1x = 1U;
    mlmelevel = 2U;
    authen = 1U;
  } else {
    wpa = 0U;
    privinvoked = 0U;
    exunencrypt = 0U;
    dot1x = 0U;
    mlmelevel = 0U;
  }
  goto ldv_43704;
  case_0: ;
  if (param->value & 1) {
    wpa = 0U;
    privinvoked = 0U;
    exunencrypt = 0U;
    dot1x = 0U;
    mlmelevel = 0U;
  } else {
    if ((param->value & 2) != 0) {
      wpa = 1U;
    } else
    if ((param->value & 4) != 0) {
      wpa = 2U;
    } else {
    }
    privinvoked = 1U;
    exunencrypt = 1U;
    dot1x = 1U;
    mlmelevel = 2U;
    authen = 1U;
  }
  goto ldv_43704;
  case_8:
  dot1x = param->value == 0;
  goto ldv_43704;
  case_10:
  privinvoked = param->value != 0;
  goto ldv_43704;
  case_5:
  exunencrypt = param->value != 0;
  goto ldv_43704;
  case_6: ;
  if ((param->value & 2) != 0) {
    if (wpa != 0U) {
      ret = -22;
      goto out;
    } else {
    }
    authen = 2U;
  } else
  if (param->value & 1) {
    authen = 1U;
  } else {
    ret = -22;
    goto out;
  }
  goto ldv_43704;
  switch_default: ;
  return (-95);
  switch_break: ;
  }
  ldv_43704:
  {
  down_write(& priv->mib_sem);
  priv->wpa = (int )wpa;
  up_write(& priv->mib_sem);
  mgt_set_request(priv, 20, 0, (void *)(& authen));
  mgt_set_request(priv, 21, 0, (void *)(& privinvoked));
  mgt_set_request(priv, 22, 0, (void *)(& exunencrypt));
  mgt_set_request(priv, 62, 0, (void *)(& dot1x));
  mgt_set_request(priv, 120, 0, (void *)(& mlmelevel));
  }
  out: ;
  return (ret);
}
}
static int prism54_get_auth(struct net_device *ndev , struct iw_request_info *info ,
                            union iwreq_data *wrqu , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  struct iw_param *param ;
  u32 wpa ;
  int ret ;
  union oid_res_t r ;
  islpci_state_t tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  param = & wrqu->param;
  wpa = 0U;
  ret = 0;
  tmp___0 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___0 <= 4U) {
    return (0);
  } else {
  }
  {
  down_write(& priv->mib_sem);
  wpa = (u32 )priv->wpa;
  up_write(& priv->mib_sem);
  }
  {
  if (((int )param->flags & 4095) == 1) {
    goto case_1;
  } else {
  }
  if (((int )param->flags & 4095) == 2) {
    goto case_2;
  } else {
  }
  if (((int )param->flags & 4095) == 3) {
    goto case_3;
  } else {
  }
  if (((int )param->flags & 4095) == 0) {
    goto case_0;
  } else {
  }
  if (((int )param->flags & 4095) == 5) {
    goto case_5;
  } else {
  }
  if (((int )param->flags & 4095) == 6) {
    goto case_6;
  } else {
  }
  if (((int )param->flags & 4095) == 7) {
    goto case_7;
  } else {
  }
  if (((int )param->flags & 4095) == 8) {
    goto case_8;
  } else {
  }
  if (((int )param->flags & 4095) == 10) {
    goto case_10;
  } else {
  }
  goto switch_default___1;
  case_1: ;
  case_2: ;
  case_3:
  ret = -95;
  goto ldv_43726;
  case_0: ;
  {
  if (wpa == 1U) {
    goto case_1___0;
  } else {
  }
  if (wpa == 2U) {
    goto case_2___0;
  } else {
  }
  if (wpa == 0U) {
    goto case_0___0;
  } else {
  }
  goto switch_default;
  case_1___0:
  param->value = 2;
  goto ldv_43729;
  case_2___0:
  param->value = 4;
  goto ldv_43729;
  case_0___0: ;
  switch_default:
  param->value = 1;
  goto ldv_43729;
  switch_break___0: ;
  }
  ldv_43729: ;
  goto ldv_43726;
  case_5:
  {
  ret = mgt_get_request(priv, 22, 0, (void *)0, & r);
  }
  if (ret >= 0) {
    param->value = r.u != 0U;
  } else {
  }
  goto ldv_43726;
  case_6:
  {
  ret = mgt_get_request(priv, 20, 0, (void *)0, & r);
  }
  if (ret >= 0) {
    {
    if (r.u == 1U) {
      goto case_1___1;
    } else {
    }
    if (r.u == 3U) {
      goto case_3___0;
    } else {
    }
    if (r.u == 2U) {
      goto case_2___1;
    } else {
    }
    if (r.u == 0U) {
      goto case_0___1;
    } else {
    }
    goto switch_default___0;
    case_1___1:
    param->value = 1;
    goto ldv_43736;
    case_3___0: ;
    case_2___1:
    param->value = 2;
    goto ldv_43736;
    case_0___1: ;
    switch_default___0:
    param->value = 0;
    goto ldv_43736;
    switch_break___1: ;
    }
    ldv_43736: ;
  } else {
  }
  goto ldv_43726;
  case_7:
  param->value = wpa != 0U;
  goto ldv_43726;
  case_8:
  {
  ret = mgt_get_request(priv, 62, 0, (void *)0, & r);
  }
  if (ret >= 0) {
    param->value = r.u != 0U;
  } else {
  }
  goto ldv_43726;
  case_10:
  {
  ret = mgt_get_request(priv, 21, 0, (void *)0, & r);
  }
  if (ret >= 0) {
    param->value = r.u != 0U;
  } else {
  }
  goto ldv_43726;
  switch_default___1: ;
  return (-95);
  switch_break: ;
  }
  ldv_43726: ;
  return (ret);
}
}
static int prism54_set_encodeext(struct net_device *ndev , struct iw_request_info *info ,
                                 union iwreq_data *wrqu , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  struct iw_point *encoding ;
  struct iw_encode_ext *ext ;
  int idx ;
  int alg ;
  int set_key ;
  union oid_res_t r ;
  int authen ;
  int invoke ;
  int exunencrypt ;
  int ret ;
  islpci_state_t tmp___0 ;
  struct obj_key key ;
  unsigned int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  encoding = & wrqu->encoding;
  ext = (struct iw_encode_ext *)extra;
  alg = (int )ext->alg;
  set_key = 1;
  authen = 1;
  invoke = 0;
  exunencrypt = 0;
  ret = 0;
  tmp___0 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___0 <= 4U) {
    return (0);
  } else {
  }
  idx = ((int )encoding->flags & 255) + -1;
  if (idx != 0) {
    if ((unsigned int )idx > 3U) {
      return (-22);
    } else {
    }
  } else {
    {
    ret = mgt_get_request(priv, 23, 0, (void *)0, & r);
    }
    if (ret < 0) {
      goto out;
    } else {
    }
    idx = (int )r.u;
  }
  if ((int )((short )encoding->flags) < 0) {
    alg = 0;
  } else {
  }
  if ((ext->ext_flags & 8U) != 0U) {
    {
    ret = mgt_set_request(priv, 23, 0, (void *)(& idx));
    set_key = (unsigned int )ext->key_len != 0U;
    }
  } else {
  }
  if (set_key != 0) {
    key.type = 0U;
    key.length = 0U;
    key.key[0] = '\000';
    tmp___1 = 1U;
    {
    while (1) {
      while_continue: ;
      if (tmp___1 >= 32U) {
        goto while_break;
      } else {
      }
      key.key[tmp___1] = (char)0;
      tmp___1 = tmp___1 + 1U;
    }
    while_break: ;
    }
    {
    if (alg == 0) {
      goto case_0;
    } else {
    }
    if (alg == 1) {
      goto case_1;
    } else {
    }
    if (alg == 2) {
      goto case_2;
    } else {
    }
    goto switch_default;
    case_0: ;
    goto ldv_43765;
    case_1: ;
    if ((unsigned int )ext->key_len > 13U) {
      ret = -22;
      goto out;
    } else {
    }
    if ((unsigned int )ext->key_len > 5U) {
      key.length = 13U;
    } else {
      key.length = 5U;
    }
    goto ldv_43765;
    case_2: ;
    if ((unsigned int )ext->key_len > 32U) {
      ret = -22;
      goto out;
    } else {
    }
    key.type = 1U;
    key.length = 32U;
    goto ldv_43765;
    switch_default: ;
    return (-22);
    switch_break: ;
    }
    ldv_43765: ;
    if ((unsigned int )key.length != 0U) {
      {
      memset((void *)(& key.key), 0, 32UL);
      memcpy((void *)(& key.key), (void const *)(& ext->key), (size_t )ext->key_len);
      ret = mgt_set_request(priv, 24, idx, (void *)(& key));
      }
      if (ret < 0) {
        goto out;
      } else {
      }
    } else {
    }
  } else {
  }
  if (((int )encoding->flags & 8192) != 0) {
    invoke = 1;
  } else {
  }
  if (((int )encoding->flags & 16384) != 0) {
    authen = 3;
    invoke = 1;
    exunencrypt = 1;
  } else {
  }
  if (((int )encoding->flags & 61440) != 0) {
    {
    ret = mgt_set_request(priv, 20, 0, (void *)(& authen));
    ret = mgt_set_request(priv, 21, 0, (void *)(& invoke));
    ret = mgt_set_request(priv, 22, 0, (void *)(& exunencrypt));
    }
  } else {
  }
  out: ;
  return (ret);
}
}
static int prism54_get_encodeext(struct net_device *ndev , struct iw_request_info *info ,
                                 union iwreq_data *wrqu , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  struct iw_point *encoding ;
  struct iw_encode_ext *ext ;
  int idx ;
  int max_key_len ;
  union oid_res_t r ;
  int authen ;
  int invoke ;
  int exunencrypt ;
  int wpa ;
  int ret ;
  islpci_state_t tmp___0 ;
  struct obj_key *key ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  encoding = & wrqu->encoding;
  ext = (struct iw_encode_ext *)extra;
  authen = 1;
  invoke = 0;
  exunencrypt = 0;
  wpa = 0;
  ret = 0;
  tmp___0 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___0 <= 4U) {
    return (0);
  } else {
  }
  {
  ret = mgt_get_request(priv, 20, 0, (void *)0, & r);
  authen = (int )r.u;
  ret = mgt_get_request(priv, 21, 0, (void *)0, & r);
  invoke = (int )r.u;
  ret = mgt_get_request(priv, 22, 0, (void *)0, & r);
  exunencrypt = (int )r.u;
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  max_key_len = (int )((unsigned int )encoding->length - 40U);
  if (max_key_len < 0) {
    return (-22);
  } else {
  }
  idx = ((int )encoding->flags & 255) + -1;
  if (idx != 0) {
    if ((unsigned int )idx > 3U) {
      return (-22);
    } else {
    }
  } else {
    {
    ret = mgt_get_request(priv, 23, 0, (void *)0, & r);
    }
    if (ret < 0) {
      goto out;
    } else {
    }
    idx = (int )r.u;
  }
  {
  encoding->flags = (unsigned int )((__u16 )idx) + 1U;
  memset((void *)ext, 0, 40UL);
  }
  {
  if (authen == 3) {
    goto case_3;
  } else {
  }
  if (authen == 2) {
    goto case_2;
  } else {
  }
  if (authen == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_3: ;
  case_2:
  wrqu->encoding.flags = (__u16 )((unsigned int )wrqu->encoding.flags | 16384U);
  case_1: ;
  switch_default:
  wrqu->encoding.flags = (__u16 )((unsigned int )wrqu->encoding.flags | 8192U);
  goto ldv_43791;
  switch_break: ;
  }
  ldv_43791:
  {
  down_write(& priv->mib_sem);
  wpa = priv->wpa;
  up_write(& priv->mib_sem);
  }
  if ((authen == 1 && exunencrypt == 0) && (invoke | wpa) == 0) {
    ext->alg = 0U;
    ext->key_len = 0U;
    wrqu->encoding.flags = (__u16 )((unsigned int )wrqu->encoding.flags | 32768U);
  } else {
    {
    ret = mgt_get_request(priv, 24, idx, (void *)0, & r);
    }
    if (ret < 0) {
      goto out;
    } else {
    }
    key = (struct obj_key *)r.ptr;
    if (max_key_len < (int )key->length) {
      ret = -7;
      goto out;
    } else {
    }
    {
    memcpy((void *)(& ext->key), (void const *)(& key->key), (size_t )key->length);
    ext->key_len = (__u16 )key->length;
    }
    {
    if ((int )key->type == 1) {
      goto case_1___0;
    } else {
    }
    if ((int )key->type == 0) {
      goto case_0;
    } else {
    }
    goto switch_default___0;
    case_1___0:
    ext->alg = 2U;
    goto ldv_43794;
    switch_default___0: ;
    case_0:
    ext->alg = 1U;
    goto ldv_43794;
    switch_break___0: ;
    }
    ldv_43794:
    wrqu->encoding.flags = wrqu->encoding.flags;
  }
  out: ;
  return (ret);
}
}
static int prism54_reset(struct net_device *ndev , struct iw_request_info *info ,
                         __u32 *uwrq , char *extra )
{
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  islpci_reset((islpci_private *)tmp, 0);
  }
  return (0);
}
}
static int prism54_get_oid(struct net_device *ndev , struct iw_request_info *info ,
                           struct iw_point *dwrq , char *extra )
{
  union oid_res_t r ;
  int rvalue ;
  enum oid_num_t n ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  n = (enum oid_num_t )dwrq->flags;
  tmp = netdev_priv((struct net_device const *)ndev);
  rvalue = mgt_get_request((islpci_private *)tmp, n, 0, (void *)0, & r);
  tmp___0 = mgt_response_to_str(n, & r, extra);
  dwrq->length = (__u16 )tmp___0;
  }
  if (((int )isl_oid[(unsigned int )n].flags & 127) != 1) {
    {
    kfree((void const *)r.ptr);
    }
  } else {
  }
  return (rvalue);
}
}
static int prism54_set_u32(struct net_device *ndev , struct iw_request_info *info ,
                           __u32 *uwrq , char *extra )
{
  u32 oid ;
  u32 u ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  oid = *uwrq;
  u = *(uwrq + 1UL);
  tmp = netdev_priv((struct net_device const *)ndev);
  tmp___0 = mgt_set_request((islpci_private *)tmp, (enum oid_num_t )oid, 0, (void *)(& u));
  }
  return (tmp___0);
}
}
static int prism54_set_raw(struct net_device *ndev , struct iw_request_info *info ,
                           struct iw_point *dwrq , char *extra )
{
  u32 oid ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  oid = (u32 )dwrq->flags;
  tmp = netdev_priv((struct net_device const *)ndev);
  tmp___0 = mgt_set_request((islpci_private *)tmp, (enum oid_num_t )oid, 0, (void *)extra);
  }
  return (tmp___0);
}
}
void prism54_acl_init(struct islpci_acl *acl )
{
  struct lock_class_key __key ;
  {
  {
  __mutex_init(& acl->lock, "&acl->lock", & __key);
  INIT_LIST_HEAD(& acl->mac_list);
  acl->size = 0;
  acl->policy = 0;
  }
  return;
}
}
static void prism54_clear_mac(struct islpci_acl *acl )
{
  struct list_head *ptr ;
  struct list_head *next ;
  struct mac_entry *entry ;
  struct list_head const *__mptr ;
  {
  {
  ldv_mutex_lock_19(& acl->lock);
  }
  if (acl->size == 0) {
    {
    ldv_mutex_unlock_20(& acl->lock);
    }
    return;
  } else {
  }
  ptr = acl->mac_list.next;
  next = ptr->next;
  goto ldv_43840;
  ldv_43839:
  {
  __mptr = (struct list_head const *)ptr;
  entry = (struct mac_entry *)__mptr;
  list_del(ptr);
  kfree((void const *)entry);
  ptr = next;
  next = ptr->next;
  }
  ldv_43840: ;
  if ((unsigned long )ptr != (unsigned long )(& acl->mac_list)) {
    goto ldv_43839;
  } else {
  }
  {
  acl->size = 0;
  ldv_mutex_unlock_21(& acl->lock);
  }
  return;
}
}
void prism54_acl_clean(struct islpci_acl *acl )
{
  {
  {
  prism54_clear_mac(acl);
  }
  return;
}
}
static int prism54_add_mac(struct net_device *ndev , struct iw_request_info *info ,
                           struct sockaddr *awrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  struct islpci_acl *acl ;
  struct mac_entry *entry ;
  struct sockaddr *addr ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  acl = & priv->acl;
  addr = (struct sockaddr *)extra;
  }
  if ((unsigned int )addr->sa_family != 1U) {
    return (-95);
  } else {
  }
  {
  tmp___0 = kmalloc(24UL, 208U);
  entry = (struct mac_entry *)tmp___0;
  }
  if ((unsigned long )entry == (unsigned long )((struct mac_entry *)0)) {
    return (-12);
  } else {
  }
  {
  memcpy((void *)(& entry->addr), (void const *)(& addr->sa_data), 6UL);
  tmp___1 = ldv_mutex_lock_interruptible_22(& acl->lock);
  }
  if (tmp___1 != 0) {
    {
    kfree((void const *)entry);
    }
    return (-512);
  } else {
  }
  {
  list_add_tail(& entry->_list, & acl->mac_list);
  acl->size = acl->size + 1;
  ldv_mutex_unlock_23(& acl->lock);
  }
  return (0);
}
}
static int prism54_del_mac(struct net_device *ndev , struct iw_request_info *info ,
                           struct sockaddr *awrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  struct islpci_acl *acl ;
  struct mac_entry *entry ;
  struct sockaddr *addr ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  bool tmp___1 ;
  struct list_head const *__mptr___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  acl = & priv->acl;
  addr = (struct sockaddr *)extra;
  }
  if ((unsigned int )addr->sa_family != 1U) {
    return (-95);
  } else {
  }
  {
  tmp___0 = ldv_mutex_lock_interruptible_24(& acl->lock);
  }
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  __mptr = (struct list_head const *)acl->mac_list.next;
  entry = (struct mac_entry *)__mptr;
  goto ldv_43870;
  ldv_43869:
  {
  tmp___1 = ether_addr_equal((u8 const *)(& entry->addr), (u8 const *)(& addr->sa_data));
  }
  if ((int )tmp___1) {
    {
    list_del(& entry->_list);
    acl->size = acl->size - 1;
    kfree((void const *)entry);
    ldv_mutex_unlock_25(& acl->lock);
    }
    return (0);
  } else {
  }
  __mptr___0 = (struct list_head const *)entry->_list.next;
  entry = (struct mac_entry *)__mptr___0;
  ldv_43870: ;
  if ((unsigned long )(& entry->_list) != (unsigned long )(& acl->mac_list)) {
    goto ldv_43869;
  } else {
  }
  {
  ldv_mutex_unlock_26(& acl->lock);
  }
  return (-22);
}
}
static int prism54_get_mac(struct net_device *ndev , struct iw_request_info *info ,
                           struct iw_point *dwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  struct islpci_acl *acl ;
  struct mac_entry *entry ;
  struct sockaddr *dst ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  acl = & priv->acl;
  dst = (struct sockaddr *)extra;
  dwrq->length = 0U;
  tmp___0 = ldv_mutex_lock_interruptible_27(& acl->lock);
  }
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  __mptr = (struct list_head const *)acl->mac_list.next;
  entry = (struct mac_entry *)__mptr;
  goto ldv_43887;
  ldv_43886:
  {
  memcpy((void *)(& dst->sa_data), (void const *)(& entry->addr), 6UL);
  dst->sa_family = 1U;
  dwrq->length = (__u16 )((int )dwrq->length + 1);
  dst = dst + 1;
  __mptr___0 = (struct list_head const *)entry->_list.next;
  entry = (struct mac_entry *)__mptr___0;
  }
  ldv_43887: ;
  if ((unsigned long )(& entry->_list) != (unsigned long )(& acl->mac_list)) {
    goto ldv_43886;
  } else {
  }
  {
  ldv_mutex_unlock_28(& acl->lock);
  }
  return (0);
}
}
static int prism54_set_policy(struct net_device *ndev , struct iw_request_info *info ,
                              __u32 *uwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  struct islpci_acl *acl ;
  u32 mlmeautolevel ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  acl = & priv->acl;
  prism54_clear_mac(acl);
  }
  if (*uwrq > 2U) {
    return (-22);
  } else {
  }
  {
  down_write(& priv->mib_sem);
  acl->policy = (int )*uwrq;
  }
  if (priv->iw_mode == 3U && (unsigned int )acl->policy != 0U) {
    mlmeautolevel = 1U;
  } else {
    mlmeautolevel = 0U;
  }
  if (priv->wpa != 0) {
    mlmeautolevel = 2U;
  } else {
  }
  {
  mgt_set(priv, 120, (void *)(& mlmeautolevel));
  tmp___0 = mgt_commit(priv);
  }
  if (tmp___0 != 0) {
    {
    up_write(& priv->mib_sem);
    }
    return (-5);
  } else {
  }
  {
  up_write(& priv->mib_sem);
  }
  return (0);
}
}
static int prism54_get_policy(struct net_device *ndev , struct iw_request_info *info ,
                              __u32 *uwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  struct islpci_acl *acl ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  acl = & priv->acl;
  *uwrq = (__u32 )acl->policy;
  }
  return (0);
}
}
static int prism54_mac_accept(struct islpci_acl *acl , char *mac )
{
  struct mac_entry *entry ;
  int res ;
  int tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  {
  res = 0;
  tmp = ldv_mutex_lock_interruptible_29(& acl->lock);
  }
  if (tmp != 0) {
    return (-512);
  } else {
  }
  if ((unsigned int )acl->policy == 0U) {
    {
    ldv_mutex_unlock_30(& acl->lock);
    }
    return (1);
  } else {
  }
  __mptr = (struct list_head const *)acl->mac_list.next;
  entry = (struct mac_entry *)__mptr;
  goto ldv_43918;
  ldv_43917:
  {
  tmp___0 = memcmp((void const *)(& entry->addr), (void const *)mac, 6UL);
  }
  if (tmp___0 == 0) {
    res = 1;
    goto ldv_43916;
  } else {
  }
  __mptr___0 = (struct list_head const *)entry->_list.next;
  entry = (struct mac_entry *)__mptr___0;
  ldv_43918: ;
  if ((unsigned long )(& entry->_list) != (unsigned long )(& acl->mac_list)) {
    goto ldv_43917;
  } else {
  }
  ldv_43916:
  {
  res = (unsigned int )acl->policy == 1U ? res == 0 : res;
  ldv_mutex_unlock_31(& acl->lock);
  }
  return (res);
}
}
static int prism54_kick_all(struct net_device *ndev , struct iw_request_info *info ,
                            struct iw_point *dwrq , char *extra )
{
  struct obj_mlme *mlme ;
  int rvalue ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = kmalloc(12UL, 208U);
  mlme = (struct obj_mlme *)tmp;
  }
  if ((unsigned long )mlme == (unsigned long )((struct obj_mlme *)0)) {
    return (-12);
  } else {
  }
  {
  mlme->id = 0U;
  tmp___0 = netdev_priv((struct net_device const *)ndev);
  rvalue = mgt_set_request((islpci_private *)tmp___0, 107, 0, (void *)mlme);
  kfree((void const *)mlme);
  }
  return (rvalue);
}
}
static int prism54_kick_mac(struct net_device *ndev , struct iw_request_info *info ,
                            struct sockaddr *awrq , char *extra )
{
  struct obj_mlme *mlme ;
  struct sockaddr *addr ;
  int rvalue ;
  void *tmp ;
  void *tmp___0 ;
  {
  addr = (struct sockaddr *)extra;
  if ((unsigned int )addr->sa_family != 1U) {
    return (-95);
  } else {
  }
  {
  tmp = kmalloc(12UL, 208U);
  mlme = (struct obj_mlme *)tmp;
  }
  if ((unsigned long )mlme == (unsigned long )((struct obj_mlme *)0)) {
    return (-12);
  } else {
  }
  {
  memcpy((void *)(& mlme->address), (void const *)(& addr->sa_data), 6UL);
  mlme->id = 65535U;
  tmp___0 = netdev_priv((struct net_device const *)ndev);
  rvalue = mgt_set_request((islpci_private *)tmp___0, 107, 0, (void *)mlme);
  kfree((void const *)mlme);
  }
  return (rvalue);
}
}
static void format_event(islpci_private *priv , char *dest , char const *str , struct obj_mlme const *mlme ,
                         u16 *length , int error )
{
  int n ;
  int tmp ;
  long tmp___0 ;
  {
  {
  tmp = snprintf(dest, 256UL, "%s %s %pM %s (%2.2X)", str, priv->iw_mode == 3U ? (char *)"from" : (char *)"to",
                 (u8 const *)(& mlme->address), error != 0 ? ((unsigned int )((unsigned short )mlme->code) != 0U ? (char *)" : REJECTED " : (char *)" : ACCEPTED ") : (char *)"",
                 (int )mlme->code);
  n = tmp;
  tmp___0 = ldv__builtin_expect(n > 256, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/isl_ioctl.c"),
                         "i" (2039), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  *length = (u16 )n;
  return;
}
}
static void send_formatted_event(islpci_private *priv , char const *str , struct obj_mlme const *mlme ,
                                 int error )
{
  union iwreq_data wrqu ;
  char *memptr ;
  void *tmp ;
  {
  {
  tmp = kmalloc(256UL, 208U);
  memptr = (char *)tmp;
  }
  if ((unsigned long )memptr == (unsigned long )((char *)0)) {
    return;
  } else {
  }
  {
  wrqu.data.pointer = (void *)memptr;
  wrqu.data.length = 0U;
  format_event(priv, memptr, str, mlme, & wrqu.data.length, error);
  wireless_send_event(priv->ndev, 35842U, & wrqu, (char const *)memptr);
  kfree((void const *)memptr);
  }
  return;
}
}
static void send_simple_event(islpci_private *priv , char const *str )
{
  union iwreq_data wrqu ;
  char *memptr ;
  int n ;
  size_t tmp ;
  void *tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = strlen(str);
  n = (int )tmp;
  tmp___0 = kmalloc(256UL, 208U);
  memptr = (char *)tmp___0;
  }
  if ((unsigned long )memptr == (unsigned long )((char *)0)) {
    return;
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect(n > 255, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/isl_ioctl.c"),
                         "i" (2071), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  wrqu.data.pointer = (void *)memptr;
  wrqu.data.length = (__u16 )n;
  strcpy(memptr, str);
  wireless_send_event(priv->ndev, 35842U, & wrqu, (char const *)memptr);
  kfree((void const *)memptr);
  }
  return;
}
}
static void link_changed(struct net_device *ndev , u32 bitrate )
{
  islpci_private *priv ;
  void *tmp ;
  union iwreq_data uwrq ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  }
  if (bitrate != 0U) {
    {
    netif_carrier_on(ndev);
    }
    if (priv->iw_mode == 2U) {
      {
      prism54_get_wap(ndev, (struct iw_request_info *)0, (struct sockaddr *)(& uwrq),
                      (char *)0);
      wireless_send_event(ndev, 35605U, & uwrq, (char const *)0);
      }
    } else {
      {
      tmp___0 = netdev_priv((struct net_device const *)ndev);
      send_simple_event((islpci_private *)tmp___0, "Link established");
      }
    }
  } else {
    {
    netif_carrier_off(ndev);
    tmp___1 = netdev_priv((struct net_device const *)ndev);
    send_simple_event((islpci_private *)tmp___1, "Link lost");
    }
  }
  return;
}
}
static u8 wpa_oid[4U] = { 0U, 80U, 242U, 1U};
static void prism54_wpa_bss_ie_add(islpci_private *priv , u8 *bssid , u8 *wpa_ie ,
                                   size_t wpa_ie_len )
{
  struct list_head *ptr ;
  struct islpci_bss_wpa_ie *bss ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  void *tmp___0 ;
  struct list_head const *__mptr___1 ;
  {
  bss = (struct islpci_bss_wpa_ie *)0;
  if (wpa_ie_len > 64UL) {
    wpa_ie_len = 64UL;
  } else {
  }
  {
  ldv_mutex_lock_32(& priv->wpa_lock);
  ptr = priv->bss_wpa_list.next;
  }
  goto ldv_43983;
  ldv_43982:
  {
  __mptr = (struct list_head const *)ptr;
  bss = (struct islpci_bss_wpa_ie *)__mptr;
  tmp = memcmp((void const *)(& bss->bssid), (void const *)bssid, 6UL);
  }
  if (tmp == 0) {
    {
    list_move(& bss->list, & priv->bss_wpa_list);
    }
    goto ldv_43981;
  } else {
  }
  bss = (struct islpci_bss_wpa_ie *)0;
  ptr = ptr->next;
  ldv_43983: ;
  if ((unsigned long )ptr != (unsigned long )(& priv->bss_wpa_list)) {
    goto ldv_43982;
  } else {
  }
  ldv_43981: ;
  if ((unsigned long )bss == (unsigned long )((struct islpci_bss_wpa_ie *)0)) {
    if (priv->num_bss_wpa > 63) {
      {
      __mptr___0 = (struct list_head const *)priv->bss_wpa_list.prev;
      bss = (struct islpci_bss_wpa_ie *)__mptr___0;
      list_del(& bss->list);
      }
    } else {
      {
      tmp___0 = kzalloc(104UL, 32U);
      bss = (struct islpci_bss_wpa_ie *)tmp___0;
      }
      if ((unsigned long )bss != (unsigned long )((struct islpci_bss_wpa_ie *)0)) {
        priv->num_bss_wpa = priv->num_bss_wpa + 1;
      } else {
      }
    }
    if ((unsigned long )bss != (unsigned long )((struct islpci_bss_wpa_ie *)0)) {
      {
      memcpy((void *)(& bss->bssid), (void const *)bssid, 6UL);
      list_add(& bss->list, & priv->bss_wpa_list);
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )bss != (unsigned long )((struct islpci_bss_wpa_ie *)0)) {
    {
    memcpy((void *)(& bss->wpa_ie), (void const *)wpa_ie, wpa_ie_len);
    bss->wpa_ie_len = wpa_ie_len;
    bss->last_update = jiffies;
    }
  } else {
    {
    printk("\017Failed to add BSS WPA entry for %pM\n", bssid);
    }
  }
  goto ldv_43996;
  ldv_43995:
  __mptr___1 = (struct list_head const *)priv->bss_wpa_list.prev;
  bss = (struct islpci_bss_wpa_ie *)__mptr___1;
  if ((long )((bss->last_update - (unsigned long )jiffies) + 15000UL) >= 0L) {
    goto ldv_43994;
  } else {
  }
  {
  list_del(& bss->list);
  priv->num_bss_wpa = priv->num_bss_wpa - 1;
  kfree((void const *)bss);
  }
  ldv_43996: ;
  if (priv->num_bss_wpa > 0) {
    goto ldv_43995;
  } else {
  }
  ldv_43994:
  {
  ldv_mutex_unlock_33(& priv->wpa_lock);
  }
  return;
}
}
static size_t prism54_wpa_bss_ie_get(islpci_private *priv , u8 *bssid , u8 *wpa_ie )
{
  struct list_head *ptr ;
  struct islpci_bss_wpa_ie *bss ;
  size_t len ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  {
  bss = (struct islpci_bss_wpa_ie *)0;
  len = 0UL;
  ldv_mutex_lock_34(& priv->wpa_lock);
  ptr = priv->bss_wpa_list.next;
  }
  goto ldv_44009;
  ldv_44008:
  {
  __mptr = (struct list_head const *)ptr;
  bss = (struct islpci_bss_wpa_ie *)__mptr;
  tmp = memcmp((void const *)(& bss->bssid), (void const *)bssid, 6UL);
  }
  if (tmp == 0) {
    goto ldv_44007;
  } else {
  }
  bss = (struct islpci_bss_wpa_ie *)0;
  ptr = ptr->next;
  ldv_44009: ;
  if ((unsigned long )ptr != (unsigned long )(& priv->bss_wpa_list)) {
    goto ldv_44008;
  } else {
  }
  ldv_44007: ;
  if ((unsigned long )bss != (unsigned long )((struct islpci_bss_wpa_ie *)0)) {
    {
    len = bss->wpa_ie_len;
    memcpy((void *)wpa_ie, (void const *)(& bss->wpa_ie), len);
    }
  } else {
  }
  {
  ldv_mutex_unlock_35(& priv->wpa_lock);
  }
  return (len);
}
}
void prism54_wpa_bss_ie_init(islpci_private *priv )
{
  struct lock_class_key __key ;
  {
  {
  INIT_LIST_HEAD(& priv->bss_wpa_list);
  __mutex_init(& priv->wpa_lock, "&priv->wpa_lock", & __key);
  }
  return;
}
}
void prism54_wpa_bss_ie_clean(islpci_private *priv )
{
  struct islpci_bss_wpa_ie *bss ;
  struct islpci_bss_wpa_ie *n ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)priv->bss_wpa_list.next;
  bss = (struct islpci_bss_wpa_ie *)__mptr;
  __mptr___0 = (struct list_head const *)bss->list.next;
  n = (struct islpci_bss_wpa_ie *)__mptr___0;
  goto ldv_44026;
  ldv_44025:
  {
  kfree((void const *)bss);
  bss = n;
  __mptr___1 = (struct list_head const *)n->list.next;
  n = (struct islpci_bss_wpa_ie *)__mptr___1;
  }
  ldv_44026: ;
  if ((unsigned long )(& bss->list) != (unsigned long )(& priv->bss_wpa_list)) {
    goto ldv_44025;
  } else {
  }
  return;
}
}
static void prism54_process_bss_data(islpci_private *priv , u32 oid , u8 *addr , u8 *payload ,
                                     size_t len )
{
  struct ieee80211_beacon_phdr *hdr ;
  u8 *pos ;
  u8 *end ;
  int tmp ;
  {
  if (priv->wpa == 0) {
    return;
  } else {
  }
  hdr = (struct ieee80211_beacon_phdr *)payload;
  pos = (u8 *)hdr + 1U;
  end = payload + len;
  goto ldv_44039;
  ldv_44038: ;
  if ((unsigned long )(pos + ((unsigned long )*(pos + 1UL) + 2UL)) > (unsigned long )end) {
    {
    printk("\017Parsing Beacon/ProbeResp failed for %pM\n", addr);
    }
    return;
  } else {
  }
  if ((unsigned int )*pos == 221U && (unsigned int )*(pos + 1UL) > 3U) {
    {
    tmp = memcmp((void const *)pos + 2U, (void const *)(& wpa_oid), 4UL);
    }
    if (tmp == 0) {
      {
      prism54_wpa_bss_ie_add(priv, addr, pos, (size_t )((int )*(pos + 1UL) + 2));
      }
      return;
    } else {
    }
  } else {
  }
  pos = pos + (unsigned long )((int )*(pos + 1UL) + 2);
  ldv_44039: ;
  if ((unsigned long )pos < (unsigned long )end) {
    goto ldv_44038;
  } else {
  }
  return;
}
}
static void handle_request(islpci_private *priv , struct obj_mlme *mlme , enum oid_num_t oid )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )mlme->state == 1U || (unsigned int )mlme->state == 3U) {
    {
    tmp___0 = mgt_mlme_answer(priv);
    }
    if (tmp___0 != 0) {
      {
      tmp = prism54_mac_accept(& priv->acl, (char *)(& mlme->address));
      mlme->code = tmp == 0;
      mgt_set_request(priv, oid, 0, (void *)mlme);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static int prism54_process_trap_helper(islpci_private *priv , enum oid_num_t oid ,
                                       char *data )
{
  struct obj_mlme *mlme ;
  struct obj_mlmeex *mlmeex ;
  struct obj_mlmeex *confirm ;
  u8 wpa_ie[64U] ;
  int wpa_ie_len ;
  size_t len ;
  u8 *payload ;
  u8 *pos ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  size_t tmp___1 ;
  void *tmp___2 ;
  size_t tmp___3 ;
  {
  mlme = (struct obj_mlme *)data;
  mlmeex = (struct obj_mlmeex *)data;
  len = 0UL;
  payload = (u8 *)0U;
  pos = (u8 *)0U;
  if ((unsigned int )oid > 109U) {
    len = (size_t )mlmeex->size;
    pos = (u8 *)(& mlmeex->data);
    payload = pos;
  } else {
  }
  if ((unsigned int )oid - 110U <= 1U) {
    {
    prism54_process_bss_data(priv, (u32 )oid, (u8 *)(& mlmeex->address), payload,
                             len);
    }
  } else {
  }
  {
  mgt_le_to_cpu((int )isl_oid[(unsigned int )oid].flags & 127, (void *)mlme);
  }
  {
  if ((unsigned int )oid == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )oid == 63U) {
    goto case_63;
  } else {
  }
  if ((unsigned int )oid == 105U) {
    goto case_105;
  } else {
  }
  if ((unsigned int )oid == 106U) {
    goto case_106;
  } else {
  }
  if ((unsigned int )oid == 107U) {
    goto case_107;
  } else {
  }
  if ((unsigned int )oid == 108U) {
    goto case_108;
  } else {
  }
  if ((unsigned int )oid == 116U) {
    goto case_116;
  } else {
  }
  if ((unsigned int )oid == 110U) {
    goto case_110;
  } else {
  }
  if ((unsigned int )oid == 111U) {
    goto case_111;
  } else {
  }
  if ((unsigned int )oid == 112U) {
    goto case_112;
  } else {
  }
  if ((unsigned int )oid == 113U) {
    goto case_113;
  } else {
  }
  if ((unsigned int )oid == 114U) {
    goto case_114;
  } else {
  }
  if ((unsigned int )oid == 115U) {
    goto case_115;
  } else {
  }
  if ((unsigned int )oid == 117U) {
    goto case_117;
  } else {
  }
  goto switch_default;
  case_1:
  {
  link_changed(priv->ndev, (unsigned int )*data);
  }
  goto ldv_44061;
  case_63:
  {
  send_simple_event(priv, "Mic failure");
  }
  goto ldv_44061;
  case_105:
  {
  send_formatted_event(priv, "DeAuthenticate request", (struct obj_mlme const *)mlme,
                       0);
  }
  goto ldv_44061;
  case_106:
  {
  handle_request(priv, mlme, oid);
  send_formatted_event(priv, "Authenticate request", (struct obj_mlme const *)mlme,
                       1);
  }
  goto ldv_44061;
  case_107:
  {
  send_formatted_event(priv, "Disassociate request", (struct obj_mlme const *)mlme,
                       0);
  }
  goto ldv_44061;
  case_108:
  {
  handle_request(priv, mlme, oid);
  send_formatted_event(priv, "Associate request", (struct obj_mlme const *)mlme,
                       1);
  }
  goto ldv_44061;
  case_116:
  {
  handle_request(priv, mlme, oid);
  send_formatted_event(priv, "ReAssociate request", (struct obj_mlme const *)mlme,
                       1);
  }
  goto ldv_44061;
  case_110:
  {
  send_formatted_event(priv, "Received a beacon from an unknown AP", (struct obj_mlme const *)mlme,
                       0);
  }
  goto ldv_44061;
  case_111:
  {
  send_formatted_event(priv, "Received a probe from client", (struct obj_mlme const *)mlme,
                       0);
  }
  goto ldv_44061;
  case_112:
  {
  send_formatted_event(priv, "DeAuthenticate request", (struct obj_mlme const *)mlme,
                       0);
  }
  goto ldv_44061;
  case_113:
  {
  handle_request(priv, mlme, oid);
  send_formatted_event(priv, "Authenticate request (ex)", (struct obj_mlme const *)mlme,
                       1);
  }
  if (priv->iw_mode != 3U && (unsigned int )mlmeex->state != 1U) {
    goto ldv_44061;
  } else {
  }
  {
  tmp = kmalloc(20UL, 32U);
  confirm = (struct obj_mlmeex *)tmp;
  }
  if ((unsigned long )confirm == (unsigned long )((struct obj_mlmeex *)0)) {
    goto ldv_44061;
  } else {
  }
  {
  memcpy((void *)(& confirm->address), (void const *)(& mlmeex->address), 6UL);
  printk("\017Authenticate from: address:\t%pM\n", (u8 *)(& mlmeex->address));
  confirm->id = 65535U;
  confirm->state = 0U;
  confirm->code = 0U;
  confirm->size = 6U;
  confirm->data[0] = 0U;
  confirm->data[1] = 0U;
  confirm->data[2] = 2U;
  confirm->data[3] = 0U;
  confirm->data[4] = 0U;
  confirm->data[5] = 0U;
  ret = mgt_set_varlen(priv, 115, (void *)confirm, 6);
  kfree((void const *)confirm);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  goto ldv_44061;
  case_114:
  {
  send_formatted_event(priv, "Disassociate request (ex)", (struct obj_mlme const *)mlme,
                       0);
  }
  goto ldv_44061;
  case_115:
  {
  handle_request(priv, mlme, oid);
  send_formatted_event(priv, "Associate request (ex)", (struct obj_mlme const *)mlme,
                       1);
  }
  if (priv->iw_mode != 3U && (unsigned int )mlmeex->state != 3U) {
    goto ldv_44061;
  } else {
  }
  {
  tmp___0 = kmalloc(14UL, 32U);
  confirm = (struct obj_mlmeex *)tmp___0;
  }
  if ((unsigned long )confirm == (unsigned long )((struct obj_mlmeex *)0)) {
    goto ldv_44061;
  } else {
  }
  {
  memcpy((void *)(& confirm->address), (void const *)(& mlmeex->address), 6UL);
  confirm->id = ((struct obj_mlmeex *)mlme)->id;
  confirm->state = 0U;
  confirm->code = 0U;
  tmp___1 = prism54_wpa_bss_ie_get(priv, (u8 *)(& mlmeex->address), (u8 *)(& wpa_ie));
  wpa_ie_len = (int )tmp___1;
  }
  if (wpa_ie_len == 0) {
    {
    printk("\017No WPA IE found from address:\t%pM\n", (u8 *)(& mlmeex->address));
    kfree((void const *)confirm);
    }
    goto ldv_44061;
  } else {
  }
  {
  confirm->size = (u16 )wpa_ie_len;
  memcpy((void *)(& confirm->data), (void const *)(& wpa_ie), (size_t )wpa_ie_len);
  mgt_set_varlen(priv, oid, (void *)confirm, wpa_ie_len);
  kfree((void const *)confirm);
  }
  goto ldv_44061;
  case_117:
  {
  handle_request(priv, mlme, oid);
  send_formatted_event(priv, "Reassociate request (ex)", (struct obj_mlme const *)mlme,
                       1);
  }
  if (priv->iw_mode != 3U && (unsigned int )mlmeex->state != 3U) {
    goto ldv_44061;
  } else {
  }
  {
  tmp___2 = kmalloc(14UL, 32U);
  confirm = (struct obj_mlmeex *)tmp___2;
  }
  if ((unsigned long )confirm == (unsigned long )((struct obj_mlmeex *)0)) {
    goto ldv_44061;
  } else {
  }
  {
  memcpy((void *)(& confirm->address), (void const *)(& mlmeex->address), 6UL);
  confirm->id = mlmeex->id;
  confirm->state = 0U;
  confirm->code = 0U;
  tmp___3 = prism54_wpa_bss_ie_get(priv, (u8 *)(& mlmeex->address), (u8 *)(& wpa_ie));
  wpa_ie_len = (int )tmp___3;
  }
  if (wpa_ie_len == 0) {
    {
    printk("\017No WPA IE found from address:\t%pM\n", (u8 *)(& mlmeex->address));
    kfree((void const *)confirm);
    }
    goto ldv_44061;
  } else {
  }
  {
  confirm->size = (u16 )wpa_ie_len;
  memcpy((void *)(& confirm->data), (void const *)(& wpa_ie), (size_t )wpa_ie_len);
  mgt_set_varlen(priv, oid, (void *)confirm, wpa_ie_len);
  kfree((void const *)confirm);
  }
  goto ldv_44061;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_44061: ;
  return (0);
}
}
void prism54_process_trap(struct work_struct *work )
{
  struct islpci_mgmtframe *frame ;
  struct work_struct const *__mptr ;
  struct net_device *ndev ;
  enum oid_num_t n ;
  enum oid_num_t tmp ;
  void *tmp___0 ;
  {
  {
  __mptr = (struct work_struct const *)work;
  frame = (struct islpci_mgmtframe *)__mptr + 0xffffffffffffffe8UL;
  ndev = frame->ndev;
  tmp = mgt_oidtonum((frame->header)->oid);
  n = tmp;
  }
  if ((unsigned int )n != 140U) {
    {
    tmp___0 = netdev_priv((struct net_device const *)ndev);
    prism54_process_trap_helper((islpci_private *)tmp___0, n, (char *)frame->data);
    }
  } else {
  }
  {
  islpci_mgt_release(frame);
  }
  return;
}
}
int prism54_set_mac_address(struct net_device *ndev , void *addr )
{
  islpci_private *priv ;
  void *tmp ;
  int ret ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  }
  if ((unsigned int )ndev->addr_len != 6U) {
    return (-22);
  } else {
  }
  {
  ret = mgt_set_request(priv, 0, 0, (void *)(& ((struct sockaddr *)addr)->sa_data));
  }
  if (ret == 0) {
    {
    memcpy((void *)(priv->ndev)->dev_addr, (void const *)(& ((struct sockaddr *)addr)->sa_data),
           6UL);
    }
  } else {
  }
  return (ret);
}
}
static int prism54_set_wpa(struct net_device *ndev , struct iw_request_info *info ,
                           __u32 *uwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  u32 mlme ;
  u32 authen ;
  u32 dot1x ;
  u32 filter ;
  u32 wep ;
  islpci_state_t tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  tmp___0 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___0 <= 4U) {
    return (0);
  } else {
  }
  {
  wep = 1U;
  filter = 1U;
  dot1x = 1U;
  mlme = 2U;
  authen = 1U;
  down_write(& priv->mib_sem);
  priv->wpa = (int )*uwrq;
  }
  {
  if (priv->wpa == 0) {
    goto case_0;
  } else {
  }
  if (priv->wpa == 2) {
    goto case_2;
  } else {
  }
  if (priv->wpa == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  switch_default: ;
  case_0:
  {
  wep = 0U;
  filter = 0U;
  dot1x = 0U;
  mlme = 0U;
  printk("%s: Disabling WPA\n", (char *)(& ndev->name));
  }
  goto ldv_44104;
  case_2: ;
  case_1:
  {
  printk("%s: Enabling WPA\n", (char *)(& ndev->name));
  }
  goto ldv_44104;
  switch_break: ;
  }
  ldv_44104:
  {
  up_write(& priv->mib_sem);
  mgt_set_request(priv, 20, 0, (void *)(& authen));
  mgt_set_request(priv, 21, 0, (void *)(& wep));
  mgt_set_request(priv, 22, 0, (void *)(& filter));
  mgt_set_request(priv, 62, 0, (void *)(& dot1x));
  mgt_set_request(priv, 120, 0, (void *)(& mlme));
  }
  return (0);
}
}
static int prism54_get_wpa(struct net_device *ndev , struct iw_request_info *info ,
                           __u32 *uwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  *uwrq = (__u32 )priv->wpa;
  }
  return (0);
}
}
static int prism54_set_prismhdr(struct net_device *ndev , struct iw_request_info *info ,
                                __u32 *uwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  priv->monitor_type = *uwrq != 0U ? 802 : 801;
  }
  if (priv->iw_mode == 6U) {
    (priv->ndev)->type = (unsigned short )priv->monitor_type;
  } else {
  }
  return (0);
}
}
static int prism54_get_prismhdr(struct net_device *ndev , struct iw_request_info *info ,
                                __u32 *uwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  *uwrq = priv->monitor_type == 802;
  }
  return (0);
}
}
static int prism54_debug_oid(struct net_device *ndev , struct iw_request_info *info ,
                             __u32 *uwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  priv->priv_oid = *uwrq;
  printk("%s: oid 0x%08X\n", (char *)(& ndev->name), *uwrq);
  }
  return (0);
}
}
static int prism54_debug_get_oid(struct net_device *ndev , struct iw_request_info *info ,
                                 struct iw_point *data , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  struct islpci_mgmtframe *response ;
  int ret ;
  islpci_state_t tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  ret = -5;
  printk("%s: get_oid 0x%08X\n", (char *)(& ndev->name), priv->priv_oid);
  data->length = 0U;
  tmp___0 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___0 > 4U) {
    {
    ret = islpci_mgt_transaction(priv->ndev, 0, (unsigned long )priv->priv_oid, (void *)extra,
                                 256, & response);
    printk("%s: ret: %i\n", (char *)(& ndev->name), ret);
    }
    if ((ret != 0 || (unsigned long )response == (unsigned long )((struct islpci_mgmtframe *)0)) || (unsigned int )(response->header)->operation == 3U) {
      if ((unsigned long )response != (unsigned long )((struct islpci_mgmtframe *)0)) {
        {
        islpci_mgt_release(response);
        }
      } else {
      }
      {
      printk("%s: EIO\n", (char *)(& ndev->name));
      ret = -5;
      }
    } else {
    }
    if (ret == 0) {
      {
      data->length = (__u16 )(response->header)->length;
      memcpy((void *)extra, (void const *)response->data, (size_t )data->length);
      islpci_mgt_release(response);
      printk("%s: len: %i\n", (char *)(& ndev->name), (int )data->length);
      }
    } else {
    }
  } else {
  }
  return (ret);
}
}
static int prism54_debug_set_oid(struct net_device *ndev , struct iw_request_info *info ,
                                 struct iw_point *data , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  struct islpci_mgmtframe *response ;
  int ret ;
  int response_op ;
  islpci_state_t tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  ret = 0;
  response_op = 3;
  printk("%s: set_oid 0x%08X\tlen: %d\n", (char *)(& ndev->name), priv->priv_oid,
         (int )data->length);
  tmp___0 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___0 > 4U) {
    {
    ret = islpci_mgt_transaction(priv->ndev, 1, (unsigned long )priv->priv_oid, (void *)extra,
                                 (int )data->length, & response);
    printk("%s: ret: %i\n", (char *)(& ndev->name), ret);
    }
    if ((ret != 0 || (unsigned long )response == (unsigned long )((struct islpci_mgmtframe *)0)) || (unsigned int )(response->header)->operation == 3U) {
      if ((unsigned long )response != (unsigned long )((struct islpci_mgmtframe *)0)) {
        {
        islpci_mgt_release(response);
        }
      } else {
      }
      {
      printk("%s: EIO\n", (char *)(& ndev->name));
      ret = -5;
      }
    } else {
    }
    if (ret == 0) {
      {
      response_op = (int )(response->header)->operation;
      printk("%s: response_op: %i\n", (char *)(& ndev->name), response_op);
      islpci_mgt_release(response);
      }
    } else {
    }
  } else {
  }
  return (ret != 0 ? ret : -115);
}
}
static int prism54_set_spy(struct net_device *ndev , struct iw_request_info *info ,
                           union iwreq_data *uwrq , char *extra )
{
  islpci_private *priv ;
  void *tmp ;
  u32 u ;
  enum oid_num_t oid ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  oid = 136;
  down_write(& priv->mib_sem);
  mgt_get(priv, 136, (void *)(& u));
  }
  if ((unsigned int )uwrq->data.length == 0U && priv->spy_data.spy_number > 0) {
    u = u & 4294967291U;
  } else
  if ((unsigned int )uwrq->data.length != 0U && priv->spy_data.spy_number == 0) {
    u = u | 4U;
  } else {
  }
  {
  mgt_set(priv, 136, (void *)(& u));
  mgt_commit_list(priv, & oid, 1);
  up_write(& priv->mib_sem);
  tmp___0 = iw_handler_set_spy(ndev, info, uwrq, extra);
  }
  return (tmp___0);
}
}
static iw_handler prism54_handler[55U] =
  { (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_commit), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_name), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0, (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0,
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_freq), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_freq), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_mode), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_mode),
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_sens), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_sens), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0, (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_range),
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0, (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0, (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0, (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0,
        & prism54_set_spy, & iw_handler_get_spy, & iw_handler_set_thrspy, & iw_handler_get_thrspy,
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_wap), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_wap), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0, (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0,
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_scan), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_scan), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_essid), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_essid),
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_nick), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_nick), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0, (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0,
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_rate), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_rate), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_rts), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_rts),
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_frag), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_frag), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_txpower), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_txpower),
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_retry), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_retry), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_encode), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_encode),
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0, (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0, (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0, (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0,
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_genie), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_genie), & prism54_set_auth, & prism54_get_auth,
        & prism54_set_encodeext, & prism54_get_encodeext, (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0};
static struct iw_priv_args const prism54_private_args[100U] =
  { {35808U, 0U, 0U, {'r', 'e', 's', 'e', 't', '\000'}},
        {35831U, 0U, 18433U, {'g', 'e', 't', '_', 'p', 'r', 'i', 's', 'm', 'h', 'd',
                           'r', '\000'}},
        {35832U, 18433U, 0U, {'s', 'e', 't', '_', 'p', 'r', 'i', 's', 'm', 'h', 'd',
                           'r', '\000'}},
        {35809U, 0U, 18433U, {'g', 'e', 't', 'P', 'o', 'l', 'i', 'c', 'y', '\000'}},
        {35810U, 18433U, 0U, {'s', 'e', 't', 'P', 'o', 'l', 'i', 'c', 'y', '\000'}},
        {35811U, 0U, 24640U, {'g', 'e', 't', 'M', 'a', 'c', '\000'}},
        {35812U, 26625U, 0U, {'a', 'd', 'd', 'M', 'a', 'c', '\000'}},
        {35814U, 26625U, 0U, {'d', 'e', 'l', 'M', 'a', 'c', '\000'}},
        {35816U, 26625U, 0U, {'k', 'i', 'c', 'k', 'M', 'a', 'c', '\000'}},
        {35818U, 0U, 0U, {'k', 'i', 'c', 'k', 'A', 'l', 'l', '\000'}},
        {35819U, 0U, 18433U, {'g', 'e', 't', '_', 'w', 'p', 'a', '\000'}},
        {35820U, 18433U, 0U, {'s', 'e', 't', '_', 'w', 'p', 'a', '\000'}},
        {35822U, 18433U, 0U, {'d', 'b', 'g', '_', 'o', 'i', 'd', '\000'}},
        {35823U, 0U, 4352U, {'d', 'b', 'g', '_', 'g', 'e', 't', '_', 'o', 'i', 'd', '\000'}},
        {35824U,
      4352U, 0U, {'d', 'b', 'g', '_', 's', 'e', 't', '_', 'o', 'i', 'd', '\000'}},
        {35825U,
      0U, 11264U, {'\000'}},
        {35826U, 18433U, 0U, {'\000'}},
        {35828U, 10241U, 0U, {'\000'}},
        {35830U, 26625U, 0U, {'\000'}},
        {0U, 26625U, 0U, {'s', '_', 'a', 'd', 'd', 'r', '\000'}},
        {0U, 0U, 11264U, {'g', '_', 'a', 'd', 'd', 'r', '\000'}},
        {1U, 0U, 11264U, {'g', '_', 'l', 'i', 'n', 'k', 's', 't', 'a', 't', 'e', '\000'}},
        {6U,
      18433U, 0U, {'s', '_', 'b', 's', 's', 't', 'y', 'p', 'e', '\000'}},
        {6U, 0U, 11264U, {'g', '_', 'b', 's', 's', 't', 'y', 'p', 'e', '\000'}},
        {7U, 26625U, 0U, {'s', '_', 'b', 's', 's', 'i', 'd', '\000'}},
        {7U, 0U, 11264U, {'g', '_', 'b', 's', 's', 'i', 'd', '\000'}},
        {9U, 18433U, 0U, {'s', '_', 's', 't', 'a', 't', 'e', '\000'}},
        {9U, 0U, 11264U, {'g', '_', 's', 't', 'a', 't', 'e', '\000'}},
        {10U, 18433U, 0U, {'s', '_', 'a', 'i', 'd', '\000'}},
        {10U, 0U, 11264U, {'g', '_', 'a', 'i', 'd', '\000'}},
        {12U, 10241U, 0U, {'s', '_', 's', 's', 'i', 'd', 'o', 'v', 'e', 'r', 'r', 'i',
                        'd', 'e', '\000'}},
        {12U, 0U, 11264U, {'g', '_', 's', 's', 'i', 'd', 'o', 'v', 'e', 'r', 'r', 'i',
                        'd', 'e', '\000'}},
        {13U, 18433U, 0U, {'s', '_', 'm', 'e', 'd', 'l', 'i', 'm', 'i', 't', '\000'}},
        {13U,
      0U, 11264U, {'g', '_', 'm', 'e', 'd', 'l', 'i', 'm', 'i', 't', '\000'}},
        {14U, 18433U, 0U, {'s', '_', 'b', 'e', 'a', 'c', 'o', 'n', '\000'}},
        {14U, 0U, 11264U, {'g', '_', 'b', 'e', 'a', 'c', 'o', 'n', '\000'}},
        {15U, 18433U, 0U, {'s', '_', 'd', 't', 'i', 'm', 'p', 'e', 'r', 'i', 'o', 'd',
                        '\000'}},
        {15U, 0U, 11264U, {'g', '_', 'd', 't', 'i', 'm', 'p', 'e', 'r', 'i', 'o', 'd',
                        '\000'}},
        {20U, 18433U, 0U, {'s', '_', 'a', 'u', 't', 'h', 'e', 'n', 'a', 'b', 'l', 'e',
                        '\000'}},
        {20U, 0U, 11264U, {'g', '_', 'a', 'u', 't', 'h', 'e', 'n', 'a', 'b', 'l', 'e',
                        '\000'}},
        {21U, 18433U, 0U, {'s', '_', 'p', 'r', 'i', 'v', 'i', 'n', 'v', 'o', 'k', '\000'}},
        {21U,
      0U, 11264U, {'g', '_', 'p', 'r', 'i', 'v', 'i', 'n', 'v', 'o', 'k', '\000'}},
        {22U,
      18433U, 0U, {'s', '_', 'e', 'x', 'u', 'n', 'e', 'n', 'c', 'r', 'y', 'p', 't',
                   '\000'}},
        {22U, 0U, 11264U, {'g', '_', 'e', 'x', 'u', 'n', 'e', 'n', 'c', 'r', 'y', 'p',
                        't', '\000'}},
        {26U, 18433U, 0U, {'s', '_', 'r', 'e', 'k', 'e', 'y', 't', 'h', 'r', 'e', 's',
                        'h', '\000'}},
        {26U, 0U, 11264U, {'g', '_', 'r', 'e', 'k', 'e', 'y', 't', 'h', 'r', 'e', 's',
                        'h', '\000'}},
        {36U, 18433U, 0U, {'s', '_', 'm', 'a', 'x', 't', 'x', 'l', 'i', 'f', 'e', '\000'}},
        {36U,
      0U, 11264U, {'g', '_', 'm', 'a', 'x', 't', 'x', 'l', 'i', 'f', 'e', '\000'}},
        {37U,
      18433U, 0U, {'s', '_', 'm', 'a', 'x', 'r', 'x', 'l', 'i', 'f', 'e', '\000'}},
        {37U,
      0U, 11264U, {'g', '_', 'm', 'a', 'x', 'r', 'x', 'l', 'i', 'f', 'e', '\000'}},
        {44U,
      18433U, 0U, {'s', '_', 'f', 'i', 'x', 'e', 'd', 'r', 'a', 't', 'e', '\000'}},
        {44U,
      0U, 11264U, {'g', '_', 'f', 'i', 'x', 'e', 'd', 'r', 'a', 't', 'e', '\000'}},
        {48U,
      18433U, 0U, {'s', '_', 'f', 'r', 'a', 'm', 'e', 'b', 'u', 'r', 's', 't', '\000'}},
        {48U,
      0U, 11264U, {'g', '_', 'f', 'r', 'a', 'm', 'e', 'b', 'u', 'r', 's', 't', '\000'}},
        {49U,
      18433U, 0U, {'s', '_', 'p', 's', 'm', '\000'}},
        {49U, 0U, 11264U, {'g', '_', 'p', 's', 'm', '\000'}},
        {53U, 18433U, 0U, {'s', '_', 'b', 'r', 'i', 'd', 'g', 'e', '\000'}},
        {53U, 0U, 11264U, {'g', '_', 'b', 'r', 'i', 'd', 'g', 'e', '\000'}},
        {54U, 18433U, 0U, {'s', '_', 'c', 'l', 'i', 'e', 'n', 't', 's', '\000'}},
        {54U, 0U, 11264U, {'g', '_', 'c', 'l', 'i', 'e', 'n', 't', 's', '\000'}},
        {55U, 18433U, 0U, {'s', '_', 'c', 'l', 'i', 'e', 'n', 't', 'a', 's', 's', 'o',
                        'c', '\000'}},
        {55U, 0U, 11264U, {'g', '_', 'c', 'l', 'i', 'e', 'n', 't', 'a', 's', 's', 'o',
                        'c', '\000'}},
        {62U, 18433U, 0U, {'s', '_', 'd', 'o', 't', '1', 'x', 'e', 'n', 'a', 'b', 'l',
                        'e', '\000'}},
        {62U, 0U, 11264U, {'g', '_', 'd', 'o', 't', '1', 'x', 'e', 'n', 'a', 'b', 'l',
                        'e', '\000'}},
        {82U, 18433U, 0U, {'s', '_', 'r', 'x', 'a', 'n', 't', '\000'}},
        {82U, 0U, 11264U, {'g', '_', 'r', 'x', 'a', 'n', 't', '\000'}},
        {83U, 18433U, 0U, {'s', '_', 't', 'x', 'a', 'n', 't', '\000'}},
        {83U, 0U, 11264U, {'g', '_', 't', 'x', 'a', 'n', 't', '\000'}},
        {84U, 18433U, 0U, {'s', '_', 'a', 'n', 't', 'd', 'i', 'v', 'e', 'r', 's', '\000'}},
        {84U,
      0U, 11264U, {'g', '_', 'a', 'n', 't', 'd', 'i', 'v', 'e', 'r', 's', '\000'}},
        {86U,
      18433U, 0U, {'s', '_', 'e', 'd', 't', 'h', 'r', 'e', 's', 'h', '\000'}},
        {86U, 0U, 11264U, {'g', '_', 'e', 'd', 't', 'h', 'r', 'e', 's', 'h', '\000'}},
        {87U,
      18433U, 0U, {'s', '_', 'p', 'r', 'e', 'a', 'm', 'b', 'l', 'e', '\000'}},
        {87U, 0U, 11264U, {'g', '_', 'p', 'r', 'e', 'a', 'm', 'b', 'l', 'e', '\000'}},
        {88U,
      0U, 11264U, {'g', '_', 'r', 'a', 't', 'e', 's', '\000'}},
        {93U, 18433U, 0U, {'s', '_', '.', '1', '1', 'o', 'u', 't', 'p', 'o', 'w', 'e',
                        'r', '\000'}},
        {93U, 0U, 11264U, {'g', '_', '.', '1', '1', 'o', 'u', 't', 'p', 'o', 'w', 'e',
                        'r', '\000'}},
        {94U, 0U, 11264U, {'g', '_', 's', 'u', 'p', 'p', 'r', 'a', 't', 'e', 's', '\000'}},
        {96U,
      0U, 11264U, {'g', '_', 's', 'u', 'p', 'p', 'f', 'r', 'e', 'q', '\000'}},
        {97U, 18433U, 0U, {'s', '_', 'n', 'o', 'i', 's', 'e', 'f', 'l', 'o', 'o', 'r',
                        '\000'}},
        {97U, 0U, 11264U, {'g', '_', 'n', 'o', 'i', 's', 'e', 'f', 'l', 'o', 'o', 'r',
                        '\000'}},
        {98U, 0U, 11264U, {'g', '_', 'f', 'r', 'e', 'q', 'a', 'c', 't', 'i', 'v', 'i',
                        't', 'y', '\000'}},
        {100U, 18433U, 0U, {'s', '_', 'n', 'o', 'n', 'e', 'r', 'p', 'p', 'r', 'o', 't',
                         'e', 'c', '\000'}},
        {100U, 0U, 11264U, {'g', '_', 'n', 'o', 'n', 'e', 'r', 'p', 'p', 'r', 'o', 't',
                         'e', 'c', '\000'}},
        {103U, 18433U, 0U, {'s', '_', 'p', 'r', 'o', 'f', 'i', 'l', 'e', '\000'}},
        {103U, 0U, 11264U, {'g', '_', 'p', 'r', 'o', 'f', 'i', 'l', 'e', '\000'}},
        {104U, 0U, 11264U, {'g', '_', 'e', 'x', 't', 'r', 'a', 't', 'e', 's', '\000'}},
        {120U,
      18433U, 0U, {'s', '_', 'm', 'l', 'm', 'e', 'l', 'e', 'v', 'e', 'l', '\000'}},
        {120U,
      0U, 11264U, {'g', '_', 'm', 'l', 'm', 'e', 'l', 'e', 'v', 'e', 'l', '\000'}},
        {124U,
      0U, 11264U, {'g', '_', 'b', 's', 's', 's', '\000'}},
        {127U, 0U, 11264U, {'g', '_', 'b', 's', 's', 'l', 'i', 's', 't', '\000'}},
        {131U, 18433U, 0U, {'s', '_', 'm', 'o', 'd', 'e', '\000'}},
        {131U, 0U, 11264U, {'g', '_', 'm', 'o', 'd', 'e', '\000'}},
        {136U, 18433U, 0U, {'s', '_', 'c', 'o', 'n', 'f', 'i', 'g', '\000'}},
        {136U, 0U, 11264U, {'g', '_', 'c', 'o', 'n', 'f', 'i', 'g', '\000'}},
        {137U, 18433U, 0U, {'s', '_', '.', '1', '1', 'd', 'c', 'o', 'n', 'f', 'o', 'r',
                         'm', '\000'}},
        {137U, 0U, 11264U, {'g', '_', '.', '1', '1', 'd', 'c', 'o', 'n', 'f', 'o', 'r',
                         'm', '\000'}},
        {138U, 0U, 11264U, {'g', '_', 'p', 'h', 'y', 'c', 'a', 'p', 'a', '\000'}},
        {139U, 18433U, 0U, {'s', '_', 'o', 'u', 't', 'p', 'o', 'w', 'e', 'r', '\000'}},
        {139U,
      0U, 11264U, {'g', '_', 'o', 'u', 't', 'p', 'o', 'w', 'e', 'r', '\000'}}};
static iw_handler prism54_private_handler[25U] =
  { (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_reset), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_policy), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_policy), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_mac),
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_add_mac), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0, (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_del_mac), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0,
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_kick_mac), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0, (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_kick_all), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_wpa),
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_wpa), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0, (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_debug_oid), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_debug_get_oid),
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_debug_set_oid), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_oid), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_u32), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0,
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_raw), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))0, (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_raw), (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_get_prismhdr),
        (int (*)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
              char * ))(& prism54_set_prismhdr)};
struct iw_handler_def const prism54_handler_def = {(iw_handler (* const *)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
                             char * ))(& prism54_handler), 55U, 25U, 100U, (iw_handler (* const *)(struct net_device * ,
                                                                                                    struct iw_request_info * ,
                                                                                                    union iwreq_data * ,
                                                                                                    char * ))(& prism54_private_handler),
    (struct iw_priv_args const *)(& prism54_private_args), & prism54_get_wireless_stats};
void ldv_dummy_resourceless_instance_callback_3_3(struct iw_statistics *(*arg0)(struct net_device * ) ,
                                                  struct net_device *arg1 ) ;
struct iw_statistics *(*ldv_3_callback_get_wireless_stats)(struct net_device * ) ;
struct iw_statistics *(*ldv_3_callback_get_wireless_stats)(struct net_device * ) = & prism54_get_wireless_stats;
void ldv_dummy_resourceless_instance_callback_3_3(struct iw_statistics *(*arg0)(struct net_device * ) ,
                                                  struct net_device *arg1 )
{
  {
  {
  prism54_get_wireless_stats(arg1);
  }
  return;
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
static void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_stats_lock_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_16___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_stats_lock_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_trylock_17(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_trylock_stats_lock_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_stats_lock_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_islpci_acl(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_islpci_acl(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_islpci_acl(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_22(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_islpci_acl(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_islpci_acl(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_24(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_islpci_acl(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_islpci_acl(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_26(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_islpci_acl(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_27(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_islpci_acl(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_islpci_acl(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_29(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_or_killable_lock_of_islpci_acl(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_islpci_acl(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_islpci_acl(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_wpa_lock_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_wpa_lock_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_wpa_lock_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_wpa_lock_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
extern int ldv_pre_register_netdev(void) ;
void ldv_assume(int expression ) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static struct task_struct *get_current___0(void)
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
  goto ldv_3020;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3020;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3020;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3020;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3020: ;
  return (pfo_ret__);
}
}
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static unsigned long arch_local_save_flags(void)
{
  unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/d4e00c1/linux-kernel-locking-mutex/lkbce/arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static void __writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)));
  return;
}
}
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  {
  tmp = ioremap_nocache(offset, size);
  }
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
static int ldv_dev_set_drvdata_14(struct device *dev , void *data ) ;
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern struct device x86_dma_fallback_dev ;
__inline static unsigned long dma_alloc_coherent_mask(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  {
  dma_mask = 0UL;
  dma_mask = (unsigned long )dev->coherent_dma_mask;
  if (dma_mask == 0UL) {
    dma_mask = (int )gfp & 1 ? 16777215UL : 4294967295UL;
  } else {
  }
  return (dma_mask);
}
}
__inline static gfp_t dma_alloc_coherent_gfp_flags(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  unsigned long tmp ;
  {
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  }
  if ((unsigned long long )dma_mask <= 16777215ULL) {
    gfp = gfp | 1U;
  } else {
  }
  if ((unsigned long long )dma_mask <= 4294967295ULL && (gfp & 1U) == 0U) {
    gfp = gfp | 4U;
  } else {
  }
  return (gfp);
}
}
__inline static void *dma_alloc_attrs(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                      gfp_t gfp , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  void *memory ;
  int tmp___0 ;
  gfp_t tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  }
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  {
  tmp___0 = is_device_dma_capable(dev);
  }
  if (tmp___0 == 0) {
    return ((void *)0);
  } else {
  }
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return ((void *)0);
  } else {
  }
  {
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  }
  return (memory);
}
}
__inline static void dma_free_attrs(struct device *dev , size_t size , void *vaddr ,
                                    dma_addr_t bus , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    warn_slowpath_null("/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/d4e00c1/linux-kernel-locking-mutex/lkbce/arch/x86/include/asm/dma-mapping.h",
                       166);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  }
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
    }
  } else {
  }
  return;
}
}
extern void synchronize_irq(unsigned int ) ;
extern void free_netdev(struct net_device * ) ;
static void ldv_free_netdev_17(struct net_device *ldv_func_arg1 ) ;
__inline static void netif_start_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_start_queue(tmp);
  }
  return;
}
}
extern int register_netdev(struct net_device * ) ;
static int ldv_register_netdev_16(struct net_device *ldv_func_arg1 ) ;
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                        size, dma_handle, 32U, (struct dma_attrs *)0);
  }
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 size, vaddr, dma_handle, (struct dma_attrs *)0);
  }
  return;
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_14(& pdev->dev, data);
  }
  return;
}
}
extern int eth_change_mtu(struct net_device * , int ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
static struct net_device *ldv_alloc_etherdev_mqs_15(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 ) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
islpci_state_t islpci_set_state(islpci_private *priv , islpci_state_t new_state ) ;
irqreturn_t islpci_interrupt(int irq , void *config ) ;
int islpci_free_memory(islpci_private *priv ) ;
struct net_device *islpci_setup(struct pci_dev *pdev ) ;
int mgt_init(islpci_private *priv ) ;
void mgt_clean(islpci_private *priv ) ;
static int prism54_bring_down(islpci_private *priv ) ;
static int islpci_alloc_memory(islpci_private *priv ) ;
static unsigned char const dummy_mac[6U] = { 0U, 48U, 180U, 0U,
        0U, 0U};
static int isl_upload_firmware(islpci_private *priv )
{
  u32 reg ;
  u32 rc ;
  void *device_base ;
  unsigned long __ms ;
  unsigned long tmp ;
  struct firmware const *fw_entry ;
  long fw_len ;
  u32 const *fw_ptr ;
  int tmp___0 ;
  long _fw_len ;
  u32 *dev_fw_ptr ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  device_base = priv->device_base;
  reg = readl((void const volatile *)device_base + 120U);
  reg = reg & 4026531839U;
  reg = reg & 3758096383U;
  writel(reg, (void volatile *)device_base + 120U);
  __asm__ volatile ("sfence": : : "memory");
  __const_udelay(42950UL);
  reg = reg | 268435456U;
  writel(reg, (void volatile *)device_base + 120U);
  __asm__ volatile ("sfence": : : "memory");
  __const_udelay(42950UL);
  reg = reg & 4026531839U;
  writel(reg, (void volatile *)device_base + 120U);
  __asm__ volatile ("sfence": : : "memory");
  __ms = 50UL;
  }
  goto ldv_43271;
  ldv_43270:
  {
  __const_udelay(4295000UL);
  }
  ldv_43271:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_43270;
  } else {
  }
  {
  fw_entry = (struct firmware const *)0;
  tmp___0 = request_firmware(& fw_entry, (char const *)(& priv->firmware), & (priv->pdev)->dev);
  rc = (u32 )tmp___0;
  }
  if (rc != 0U) {
    {
    printk("\v%s: request_firmware() failed for \'%s\'\n", (char *)"prism54", (char *)(& priv->firmware));
    }
    return ((int )rc);
  } else {
  }
  reg = 131072U;
  fw_ptr = (u32 const *)fw_entry->data;
  fw_len = (long )fw_entry->size;
  if (((unsigned long )fw_len & 3UL) != 0UL) {
    {
    printk("\v%s: firmware \'%s\' size is not multiple of 32bit, aborting!\n", (char *)"prism54",
           (char *)(& priv->firmware));
    release_firmware(fw_entry);
    }
    return (-84);
  } else {
  }
  goto ldv_43282;
  ldv_43281:
  {
  _fw_len = 4096L < fw_len ? 4096L : fw_len;
  dev_fw_ptr = (u32 *)device_base + 4096U;
  isl38xx_w32_flush(device_base, reg, 48UL);
  __asm__ volatile ("sfence": : : "memory");
  reg = reg + (u32 )_fw_len;
  fw_len = fw_len - _fw_len;
  }
  goto ldv_43279;
  ldv_43278:
  {
  __writel(*fw_ptr, (void volatile *)dev_fw_ptr);
  fw_ptr = fw_ptr + 1;
  dev_fw_ptr = dev_fw_ptr + 1;
  _fw_len = _fw_len + -4L;
  }
  ldv_43279: ;
  if (_fw_len > 0L) {
    goto ldv_43278;
  } else {
  }
  {
  readl((void const volatile *)device_base + 24U);
  __asm__ volatile ("sfence": : : "memory");
  tmp___1 = ldv__builtin_expect(_fw_len != 0L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/islpci_dev.c"),
                         "i" (144), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  ldv_43282: ;
  if (fw_len > 0L) {
    goto ldv_43281;
  } else {
  }
  {
  tmp___2 = ldv__builtin_expect(fw_len != 0L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/islpci_dev.c"),
                         "i" (147), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  printk("\017%s: firmware version: %.8s\n", (char *)(& (priv->ndev)->name), fw_entry->data + 40UL);
  release_firmware(fw_entry);
  reg = readl((void const volatile *)device_base + 120U);
  reg = reg & 4286578687U;
  reg = reg & 4026531839U;
  reg = reg | 536870912U;
  isl38xx_w32_flush(device_base, reg, 120UL);
  __asm__ volatile ("sfence": : : "memory");
  __const_udelay(42950UL);
  reg = reg | 268435456U;
  writel(reg, (void volatile *)device_base + 120U);
  __asm__ volatile ("sfence": : : "memory");
  __const_udelay(42950UL);
  reg = reg & 4026531839U;
  writel(reg, (void volatile *)device_base + 120U);
  __asm__ volatile ("sfence": : : "memory");
  __const_udelay(42950UL);
  }
  return (0);
}
}
irqreturn_t islpci_interrupt(int irq , void *config )
{
  u32 reg ;
  islpci_private *priv ;
  struct net_device *ndev ;
  void *device ;
  int powerstate ;
  unsigned int tmp ;
  islpci_state_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  islpci_state_t tmp___4 ;
  islpci_state_t tmp___5 ;
  {
  {
  priv = (islpci_private *)config;
  ndev = priv->ndev;
  device = priv->device_base;
  powerstate = 1;
  spin_lock(& priv->slock);
  reg = readl((void const volatile *)device + 120U);
  }
  if ((reg & 512U) != 0U) {
    {
    spin_unlock(& priv->slock);
    }
    return (0);
  } else {
  }
  {
  reg = readl((void const volatile *)device + 16U);
  tmp = readl((void const volatile *)device + 24U);
  reg = reg & tmp;
  reg = reg & 30U;
  }
  if (reg != 0U) {
    {
    tmp___0 = islpci_get_state(priv);
    }
    if ((unsigned int )tmp___0 != 7U) {
      powerstate = 0;
    } else {
    }
    {
    isl38xx_w32_flush(device, reg, 20UL);
    }
    if ((reg & 2U) != 0U) {
      {
      islpci_eth_cleanup_transmit(priv, priv->control_block);
      powerstate = 0;
      tmp___1 = isl38xx_in_queue(priv->control_block, 4);
      }
      if (tmp___1 != 0) {
        {
        islpci_mgt_receive(ndev);
        islpci_mgt_cleanup_transmit(ndev);
        islpci_mgmt_rx_fill(ndev);
        }
      } else {
      }
      goto ldv_43294;
      ldv_43293:
      {
      islpci_eth_receive(priv);
      }
      ldv_43294:
      {
      tmp___2 = isl38xx_in_queue(priv->control_block, 0);
      }
      if (tmp___2 != 0) {
        goto ldv_43293;
      } else {
      }
      if (priv->data_low_tx_full != 0U) {
        {
        tmp___3 = isl38xx_in_queue(priv->control_block, 1);
        }
        if (32 - tmp___3 > 3) {
          {
          netif_wake_queue(priv->ndev);
          priv->data_low_tx_full = 0U;
          }
        } else {
        }
      } else {
      }
    } else {
    }
    if ((reg & 4U) != 0U) {
      {
      __wake_up(& priv->reset_done, 3U, 1, (void *)0);
      }
    } else {
    }
    if ((reg & 16U) != 0U) {
      {
      isl38xx_handle_sleep_request(priv->control_block, & powerstate, priv->device_base);
      }
    } else {
    }
    if ((reg & 8U) != 0U) {
      {
      isl38xx_handle_wakeup(priv->control_block, & powerstate, priv->device_base);
      }
    } else {
    }
  } else {
    {
    spin_unlock(& priv->slock);
    }
    return (0);
  }
  {
  tmp___4 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___4 == 7U && powerstate == 0) {
    {
    islpci_set_state(priv, 6);
    }
  } else {
  }
  {
  tmp___5 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___5 != 7U && powerstate == 1) {
    {
    islpci_set_state(priv, 7);
    }
  } else {
  }
  {
  spin_unlock(& priv->slock);
  }
  return (1);
}
}
static int islpci_open(struct net_device *ndev )
{
  u32 rc ;
  islpci_private *priv ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  tmp___0 = islpci_reset(priv, 1);
  rc = (u32 )tmp___0;
  }
  if (rc != 0U) {
    {
    prism54_bring_down(priv);
    }
    return ((int )rc);
  } else {
  }
  {
  netif_start_queue(ndev);
  }
  if (priv->iw_mode - 1U <= 1U) {
    {
    netif_carrier_off(ndev);
    }
  } else {
    {
    netif_carrier_on(ndev);
    }
  }
  return (0);
}
}
static int islpci_close(struct net_device *ndev )
{
  islpci_private *priv ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp;
  printk("\017%s: islpci_close ()\n", (char *)(& ndev->name));
  netif_stop_queue(ndev);
  tmp___0 = prism54_bring_down(priv);
  }
  return (tmp___0);
}
}
static int prism54_bring_down(islpci_private *priv )
{
  void *device_base ;
  u32 reg ;
  unsigned long tmp ;
  {
  {
  device_base = priv->device_base;
  islpci_set_state(priv, 1);
  isl38xx_disable_interrupts(priv->device_base);
  synchronize_irq((priv->pdev)->irq);
  reg = readl((void const volatile *)device_base + 120U);
  reg = reg & 3489660927U;
  writel(reg, (void volatile *)device_base + 120U);
  __asm__ volatile ("sfence": : : "memory");
  __const_udelay(42950UL);
  reg = reg | 268435456U;
  writel(reg, (void volatile *)device_base + 120U);
  __asm__ volatile ("sfence": : : "memory");
  __const_udelay(42950UL);
  reg = reg & 4026531839U;
  writel(reg, (void volatile *)device_base + 120U);
  __asm__ volatile ("sfence": : : "memory");
  tmp = msecs_to_jiffies(50U);
  schedule_timeout_uninterruptible((long )tmp);
  }
  return (0);
}
}
static int islpci_upload_fw(islpci_private *priv )
{
  islpci_state_t old_state ;
  u32 rc ;
  int tmp ;
  {
  {
  old_state = islpci_set_state(priv, 2);
  printk("\017%s: uploading firmware...\n", (char *)(& (priv->ndev)->name));
  tmp = isl_upload_firmware(priv);
  rc = (u32 )tmp;
  }
  if (rc != 0U) {
    {
    printk("\v%s: could not upload firmware (\'%s\')\n", (char *)(& (priv->ndev)->name),
           (char *)(& priv->firmware));
    islpci_set_state(priv, old_state);
    }
    return ((int )rc);
  } else {
  }
  {
  printk("\017%s: firmware upload complete\n", (char *)(& (priv->ndev)->name));
  islpci_set_state(priv, 3);
  }
  return (0);
}
}
static int islpci_reset_if(islpci_private *priv )
{
  long remaining ;
  int result ;
  int count ;
  wait_queue_t wait ;
  struct task_struct *tmp ;
  {
  {
  result = -62;
  tmp = get_current___0();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & autoremove_wake_function;
  wait.task_list.next = & wait.task_list;
  wait.task_list.prev = & wait.task_list;
  prepare_to_wait(& priv->reset_done, & wait, 2);
  isl38xx_interface_reset(priv->device_base, priv->device_host_address);
  islpci_set_state(priv, 4);
  count = 0;
  }
  goto ldv_43324;
  ldv_43323:
  {
  remaining = schedule_timeout_uninterruptible(250L);
  }
  if (remaining > 0L) {
    result = 0;
    goto ldv_43322;
  } else {
  }
  {
  printk("\v%s: no \'reset complete\' IRQ seen - retrying\n", (char *)(& (priv->ndev)->name));
  count = count + 1;
  }
  ldv_43324: ;
  if (count <= 1 && result != 0) {
    goto ldv_43323;
  } else {
  }
  ldv_43322:
  {
  finish_wait(& priv->reset_done, & wait);
  }
  if (result != 0) {
    {
    printk("\v%s: interface reset failure\n", (char *)(& (priv->ndev)->name));
    }
    return (result);
  } else {
  }
  {
  islpci_set_state(priv, 5);
  isl38xx_enable_common_interrupts(priv->device_base);
  down_write(& priv->mib_sem);
  result = mgt_commit(priv);
  }
  if (result != 0) {
    {
    printk("\v%s: interface reset failure\n", (char *)(& (priv->ndev)->name));
    up_write(& priv->mib_sem);
    }
    return (result);
  } else {
  }
  {
  up_write(& priv->mib_sem);
  islpci_set_state(priv, 6);
  printk("\017%s: interface reset complete\n", (char *)(& (priv->ndev)->name));
  }
  return (0);
}
}
int islpci_reset(islpci_private *priv , int reload_firmware )
{
  isl38xx_control_block *cb ;
  unsigned int counter ;
  int rc ;
  isl38xx_fragment *frag ;
  {
  cb = priv->control_block;
  if (reload_firmware != 0) {
    {
    islpci_set_state(priv, 1);
    }
  } else {
    {
    islpci_set_state(priv, 3);
    }
  }
  {
  printk("\017%s: resetting device...\n", (char *)(& (priv->ndev)->name));
  isl38xx_disable_interrupts(priv->device_base);
  priv->index_mgmt_tx = 0U;
  priv->index_mgmt_rx = 0U;
  counter = 0U;
  }
  goto ldv_43333;
  ldv_43332:
  cb->driver_curr_frag[counter] = 0U;
  cb->device_curr_frag[counter] = 0U;
  counter = counter + 1U;
  ldv_43333: ;
  if (counter <= 5U) {
    goto ldv_43332;
  } else {
  }
  counter = 0U;
  goto ldv_43337;
  ldv_43336:
  frag = (isl38xx_fragment *)(& cb->rx_data_mgmt) + (unsigned long )counter;
  frag->size = 1500U;
  frag->flags = 0U;
  frag->address = (unsigned int )priv->mgmt_rx[counter].pci_addr;
  counter = counter + 1U;
  ldv_43337: ;
  if (counter <= 3U) {
    goto ldv_43336;
  } else {
  }
  counter = 0U;
  goto ldv_43340;
  ldv_43339:
  cb->rx_data_low[counter].address = (unsigned int )priv->pci_map_rx_address[counter];
  counter = counter + 1U;
  ldv_43340: ;
  if (counter <= 7U) {
    goto ldv_43339;
  } else {
  }
  (priv->control_block)->driver_curr_frag[0] = 8U;
  (priv->control_block)->driver_curr_frag[4] = 4U;
  priv->free_data_rx = 0U;
  priv->free_data_tx = 0U;
  priv->data_low_tx_full = 0U;
  if (reload_firmware != 0) {
    {
    rc = islpci_upload_fw(priv);
    }
    if (rc != 0) {
      {
      printk("\v%s: islpci_reset: failure\n", (char *)(& (priv->ndev)->name));
      }
      return (rc);
    } else {
    }
  } else {
  }
  {
  rc = islpci_reset_if(priv);
  }
  if (rc != 0) {
    {
    printk("\vprism54: Your card/socket may be faulty, or IRQ line too busy :(\n");
    }
  } else {
  }
  return (rc);
}
}
static int islpci_alloc_memory(islpci_private *priv )
{
  int counter ;
  void *tmp ;
  int tmp___0 ;
  struct sk_buff *skb ;
  int tmp___1 ;
  {
  {
  tmp = ioremap((priv->pdev)->resource[0].start, 8192UL);
  priv->device_base = tmp;
  }
  if ((unsigned long )tmp == (unsigned long )((void *)0)) {
    {
    printk("\vPCI memory remapping failed\n");
    }
    return (-1);
  } else {
  }
  {
  priv->driver_mem_address = pci_alloc_consistent(priv->pdev, 99328UL, & priv->device_host_address);
  }
  if ((unsigned long )priv->driver_mem_address == (unsigned long )((void *)0)) {
    {
    printk("\v%s: could not allocate DMA memory, aborting!", (char *)"prism54");
    }
    return (-1);
  } else {
  }
  priv->control_block = (struct isl38xx_cb *)priv->driver_mem_address;
  priv->device_psm_buffer = priv->device_host_address + 1024ULL;
  counter = 0;
  goto ldv_43347;
  ldv_43346:
  (priv->control_block)->driver_curr_frag[counter] = 0U;
  (priv->control_block)->device_curr_frag[counter] = 0U;
  counter = counter + 1;
  ldv_43347: ;
  if (counter <= 5) {
    goto ldv_43346;
  } else {
  }
  {
  priv->index_mgmt_rx = 0U;
  memset((void *)(& priv->mgmt_rx), 0, 96UL);
  memset((void *)(& priv->mgmt_tx), 0, 96UL);
  tmp___0 = islpci_mgmt_rx_fill(priv->ndev);
  }
  if (tmp___0 < 0) {
    goto out_free;
  } else {
  }
  {
  memset((void *)(& priv->data_low_rx), 0, 64UL);
  memset((void *)(& priv->pci_map_rx_address), 0, 64UL);
  counter = 0;
  }
  goto ldv_43352;
  ldv_43351:
  {
  skb = dev_alloc_skb(1602U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    printk("\vError allocating skb.\n");
    skb = (struct sk_buff *)0;
    }
    goto out_free;
  } else {
  }
  {
  skb_reserve(skb, (int )(- ((unsigned int )((long )skb->data))) & 3);
  priv->data_low_rx[counter] = skb;
  priv->pci_map_rx_address[counter] = pci_map_single(priv->pdev, (void *)skb->data,
                                                     1602UL, 2);
  }
  if (priv->pci_map_rx_address[counter] == 0ULL) {
    {
    printk("\vfailed to map skb DMA\'able\n");
    }
    goto out_free;
  } else {
  }
  counter = counter + 1;
  ldv_43352: ;
  if (counter <= 7) {
    goto ldv_43351;
  } else {
  }
  {
  prism54_acl_init(& priv->acl);
  prism54_wpa_bss_ie_init(priv);
  tmp___1 = mgt_init(priv);
  }
  if (tmp___1 != 0) {
    goto out_free;
  } else {
  }
  return (0);
  out_free:
  {
  islpci_free_memory(priv);
  }
  return (-1);
}
}
int islpci_free_memory(islpci_private *priv )
{
  int counter ;
  struct islpci_membuf *buf ;
  {
  if ((unsigned long )priv->device_base != (unsigned long )((void *)0)) {
    {
    iounmap((void volatile *)priv->device_base);
    }
  } else {
  }
  priv->device_base = (void *)0;
  if ((unsigned long )priv->driver_mem_address != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(priv->pdev, 99328UL, priv->driver_mem_address, priv->device_host_address);
    }
  } else {
  }
  priv->driver_mem_address = (void *)0;
  priv->device_host_address = 0ULL;
  priv->device_psm_buffer = 0ULL;
  priv->control_block = (struct isl38xx_cb *)0;
  counter = 0;
  goto ldv_43360;
  ldv_43359:
  buf = (struct islpci_membuf *)(& priv->mgmt_rx) + (unsigned long )counter;
  if (buf->pci_addr != 0ULL) {
    {
    pci_unmap_single(priv->pdev, buf->pci_addr, (size_t )buf->size, 2);
    }
  } else {
  }
  {
  buf->pci_addr = 0ULL;
  kfree((void const *)buf->mem);
  buf->size = 0;
  buf->mem = (void *)0;
  counter = counter + 1;
  }
  ldv_43360: ;
  if (counter <= 3) {
    goto ldv_43359;
  } else {
  }
  counter = 0;
  goto ldv_43363;
  ldv_43362: ;
  if (priv->pci_map_rx_address[counter] != 0ULL) {
    {
    pci_unmap_single(priv->pdev, priv->pci_map_rx_address[counter], 1602UL, 2);
    }
  } else {
  }
  priv->pci_map_rx_address[counter] = 0ULL;
  if ((unsigned long )priv->data_low_rx[counter] != (unsigned long )((struct sk_buff *)0)) {
    {
    consume_skb(priv->data_low_rx[counter]);
    }
  } else {
  }
  priv->data_low_rx[counter] = (struct sk_buff *)0;
  counter = counter + 1;
  ldv_43363: ;
  if (counter <= 7) {
    goto ldv_43362;
  } else {
  }
  {
  prism54_acl_clean(& priv->acl);
  prism54_wpa_bss_ie_clean(priv);
  mgt_clean(priv);
  }
  return (0);
}
}
static void islpci_ethtool_get_drvinfo(struct net_device *dev , struct ethtool_drvinfo *info )
{
  {
  {
  strlcpy((char *)(& info->driver), "prism54", 32UL);
  strlcpy((char *)(& info->version), "1.2", 32UL);
  }
  return;
}
}
static struct ethtool_ops const islpci_ethtool_ops =
     {0, 0, & islpci_ethtool_get_drvinfo, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0};
static struct net_device_ops const islpci_netdev_ops =
     {0, 0, & islpci_open, & islpci_close, & islpci_eth_transmit, 0, 0, 0, & prism54_set_mac_address,
    & eth_validate_addr, 0, 0, & eth_change_mtu, 0, & islpci_eth_tx_timeout, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct device_type wlan_type = {"wlan", 0, 0, 0, 0, 0};
struct net_device *islpci_setup(struct pci_dev *pdev )
{
  islpci_private *priv ;
  struct net_device *ndev ;
  struct net_device *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___5 ;
  atomic_long_t __constr_expr_1 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = ldv_alloc_etherdev_mqs_15(2592, 1U, 1U);
  ndev = tmp;
  }
  if ((unsigned long )ndev == (unsigned long )((struct net_device *)0)) {
    return (ndev);
  } else {
  }
  {
  pci_set_drvdata(pdev, (void *)ndev);
  ndev->dev.parent = & pdev->dev;
  ndev->dev.type = (struct device_type const *)(& wlan_type);
  ndev->base_addr = (unsigned long )pdev->resource[0].start;
  ndev->irq = (int )pdev->irq;
  ndev->netdev_ops = & islpci_netdev_ops;
  ndev->wireless_handlers = & prism54_handler_def;
  ndev->ethtool_ops = & islpci_ethtool_ops;
  ndev->addr_len = 6U;
  memcpy((void *)ndev->dev_addr, (void const *)(& dummy_mac), 6UL);
  ndev->watchdog_timeo = 500;
  tmp___0 = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp___0;
  priv->ndev = ndev;
  priv->pdev = pdev;
  priv->monitor_type = 801;
  (priv->ndev)->type = priv->iw_mode == 6U ? (unsigned short )priv->monitor_type : 1U;
  priv->wireless_data.spy_data = & priv->spy_data;
  ndev->wireless_data = & priv->wireless_data;
  ndev->mem_start = (unsigned long )priv->device_base;
  ndev->mem_end = ndev->mem_start + 8192UL;
  __init_waitqueue_head(& priv->reset_done, "&priv->reset_done", & __key);
  __mutex_init(& priv->mgmt_lock, "&priv->mgmt_lock", & __key___0);
  priv->mgmt_received = (struct islpci_mgmtframe *)0;
  __init_waitqueue_head(& priv->mgmt_wqueue, "&priv->mgmt_wqueue", & __key___1);
  __mutex_init(& priv->stats_lock, "&priv->stats_lock", & __key___2);
  spinlock_check(& priv->slock);
  __raw_spin_lock_init(& priv->slock.__annonCompField19.rlock, "&(&priv->slock)->rlock",
                       & __key___3);
  priv->state = 0;
  priv->state_off = 1;
  __init_work(& priv->stats_work, 0);
  __constr_expr_0.counter = 137438953408L;
  priv->stats_work.data = __constr_expr_0;
  lockdep_init_map(& priv->stats_work.lockdep_map, "(&priv->stats_work)", & __key___4,
                   0);
  INIT_LIST_HEAD(& priv->stats_work.entry);
  priv->stats_work.func = & prism54_update_stats;
  priv->stats_timestamp = 0UL;
  __init_work(& priv->reset_task, 0);
  __constr_expr_1.counter = 137438953408L;
  priv->reset_task.data = __constr_expr_1;
  lockdep_init_map(& priv->reset_task.lockdep_map, "(&priv->reset_task)", & __key___5,
                   0);
  INIT_LIST_HEAD(& priv->reset_task.entry);
  priv->reset_task.func = & islpci_do_reset_and_wake;
  priv->reset_task_pending = 0;
  tmp___1 = islpci_alloc_memory(priv);
  }
  if (tmp___1 != 0) {
    goto do_free_netdev;
  } else {
  }
  {
  if ((int )pdev->device == 14455) {
    goto case_14455;
  } else {
  }
  if ((int )pdev->device == 14470) {
    goto case_14470;
  } else {
  }
  goto switch_default;
  case_14455:
  {
  strcpy((char *)(& priv->firmware), "isl3877");
  }
  goto ldv_43388;
  case_14470:
  {
  strcpy((char *)(& priv->firmware), "isl3886");
  }
  goto ldv_43388;
  switch_default:
  {
  strcpy((char *)(& priv->firmware), "isl3890");
  }
  goto ldv_43388;
  switch_break: ;
  }
  ldv_43388:
  {
  tmp___2 = ldv_register_netdev_16(ndev);
  }
  if (tmp___2 != 0) {
    if (pc_debug & 1) {
      {
      printk("\017ERROR: register_netdev() failed\n");
      }
    } else {
    }
    goto do_islpci_free_memory;
  } else {
  }
  return (ndev);
  do_islpci_free_memory:
  {
  islpci_free_memory(priv);
  }
  do_free_netdev:
  {
  ldv_free_netdev_17(ndev);
  priv = (islpci_private *)0;
  }
  return ((struct net_device *)0);
}
}
islpci_state_t islpci_set_state(islpci_private *priv , islpci_state_t new_state )
{
  islpci_state_t old_state ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  old_state = priv->state;
  {
  if ((unsigned int )new_state == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )new_state == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0:
  priv->state_off = priv->state_off + 1;
  switch_default:
  priv->state = new_state;
  goto ldv_43399;
  case_1: ;
  if ((unsigned int )old_state == 0U) {
    priv->state_off = priv->state_off - 1;
  } else {
  }
  if (priv->state_off == 0) {
    priv->state = new_state;
  } else {
  }
  goto ldv_43399;
  switch_break: ;
  }
  ldv_43399:
  {
  tmp = ldv__builtin_expect(priv->state_off < 0, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/islpci_dev.c"),
                         "i" (957), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(priv->state_off != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    tmp___1 = ldv__builtin_expect((unsigned int )priv->state != 0U, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/islpci_dev.c"),
                           "i" (958), "i" (12UL));
      __builtin_unreachable();
      }
    } else {
    }
  } else {
  }
  {
  tmp___2 = ldv__builtin_expect(*((unsigned long *)priv + 278UL) == 0UL, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/islpci_dev.c"),
                         "i" (959), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return (old_state);
}
}
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 ) ;
void ldv_dispatch_register_7_4(struct net_device *arg0 ) ;
void ldv_dummy_resourceless_instance_callback_1_10(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_11(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_12(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_13(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_7(int (*arg0)(struct net_device * ,
                                                              int ) , struct net_device *arg1 ,
                                                  int arg2 ) ;
void ldv_free_netdev(void *arg0 , struct net_device *arg1 ) ;
int ldv_register_netdev(int arg0 , struct net_device *arg1 ) ;
int ldv_register_netdev_open_7_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
void ldv_switch_automaton_state_1_5(void) ;
void ldv_unregister_netdev_stop_9_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) ;
int (*ldv_1_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
enum netdev_tx (*ldv_1_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
void (*ldv_1_callback_ndo_tx_timeout)(struct net_device * ) ;
int (*ldv_1_callback_ndo_validate_addr)(struct net_device * ) ;
struct net_device *ldv_1_container_net_device ;
int ldv_statevar_1 ;
void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) = & islpci_ethtool_get_drvinfo;
int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) = & eth_change_mtu;
int (*ldv_1_callback_ndo_set_mac_address)(struct net_device * , void * ) = & prism54_set_mac_address;
enum netdev_tx (*ldv_1_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) = & islpci_eth_transmit;
void (*ldv_1_callback_ndo_tx_timeout)(struct net_device * ) = & islpci_eth_tx_timeout;
int (*ldv_1_callback_ndo_validate_addr)(struct net_device * ) = & eth_validate_addr;
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 )
{
  struct net_device *ldv_4_netdev_net_device ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(3200UL);
    ldv_4_netdev_net_device = (struct net_device *)tmp;
    }
    return (ldv_4_netdev_net_device);
    return (arg0);
  } else {
    return ((struct net_device *)0);
    return (arg0);
  }
  return (arg0);
}
}
void ldv_dispatch_register_7_4(struct net_device *arg0 )
{
  {
  {
  ldv_1_container_net_device = arg0;
  ldv_switch_automaton_state_1_5();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_10(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 )
{
  {
  {
  prism54_set_mac_address(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_11(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  islpci_eth_transmit(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_12(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  islpci_eth_tx_timeout(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_13(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 )
{
  {
  {
  islpci_ethtool_get_drvinfo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_7(int (*arg0)(struct net_device * ,
                                                              int ) , struct net_device *arg1 ,
                                                  int arg2 )
{
  {
  {
  eth_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_free_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_6_netdev_net_device ;
  {
  {
  ldv_6_netdev_net_device = arg1;
  ldv_free((void *)ldv_6_netdev_net_device);
  }
  return;
  return;
}
}
int ldv_register_netdev(int arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_7_netdev_net_device ;
  int ldv_7_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_7_ret_default = 1;
  ldv_7_ret_default = ldv_pre_register_netdev();
  ldv_7_netdev_net_device = arg1;
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_7_ret_default == 0);
    ldv_7_ret_default = ldv_register_netdev_open_7_6((ldv_7_netdev_net_device->netdev_ops)->ndo_open,
                                                     ldv_7_netdev_net_device);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_7_ret_default == 0);
      ldv_assume(ldv_statevar_1 == 5);
      ldv_dispatch_register_7_4(ldv_7_netdev_net_device);
      }
    } else {
      {
      ldv_assume(ldv_7_ret_default != 0);
      }
    }
  } else {
    {
    ldv_assume(ldv_7_ret_default != 0);
    }
  }
  return (ldv_7_ret_default);
  return (arg0);
  return (arg0);
}
}
int ldv_register_netdev_open_7_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = islpci_open(arg1);
  }
  return (tmp);
}
}
void ldv_unregister_netdev_stop_9_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  {
  {
  islpci_close(arg1);
  }
  return;
}
}
static int ldv_dev_set_drvdata_14(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static struct net_device *ldv_alloc_etherdev_mqs_15(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  struct net_device *tmp ;
  struct net_device *tmp___0 ;
  {
  {
  tmp = alloc_etherdev_mqs(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv_alloc_etherdev_mqs(ldv_func_res, ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_register_netdev_16(struct net_device *ldv_func_arg1 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_netdev(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_netdev(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_netdev_17(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
void *ldv_dev_get_drvdata(struct device const *dev ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
void ldv_stop(void) ;
extern void *external_allocated_data(void) ;
extern struct module __this_module ;
static void *ldv_dev_get_drvdata_13(struct device const *dev ) ;
extern int dma_set_mask(struct device * , u64 ) ;
static void ldv_free_netdev_17___0(struct net_device *ldv_func_arg1 ) ;
static void ldv_free_netdev_20(struct net_device *ldv_func_arg1 ) ;
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
extern void unregister_netdev(struct net_device * ) ;
static void ldv_unregister_netdev_16(struct net_device *ldv_func_arg1 ) ;
static void ldv_unregister_netdev_18(struct net_device *ldv_func_arg1 ) ;
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
extern int pci_bus_write_config_byte(struct pci_bus * , unsigned int , int , u8 ) ;
__inline static int pci_read_config_byte(struct pci_dev const *dev , int where ,
                                         u8 *val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
__inline static int pci_read_config_dword(struct pci_dev const *dev , int where ,
                                          u32 *val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_read_config_dword(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
__inline static int pci_write_config_byte(struct pci_dev const *dev , int where ,
                                          u8 val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_write_config_byte(dev->bus, dev->devfn, where, (int )val);
  }
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_try_set_mwi(struct pci_dev * ) ;
extern void pci_clear_mwi(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_21(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_22(struct pci_driver *ldv_func_arg1 ) ;
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_set_mask(& dev->dev, mask);
  }
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_13((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  }
  return (tmp);
}
}
__inline static int ldv_request_irq_15(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_19(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void __compiletime_assert_106(void) ;
extern void __compiletime_assert_107(void) ;
extern void __compiletime_assert_108(void) ;
extern void __compiletime_assert_109(void) ;
extern void __compiletime_assert_110(void) ;
extern void __compiletime_assert_111(void) ;
extern void __compiletime_assert_112(void) ;
extern void __compiletime_assert_113(void) ;
__inline static void __bug_on_wrong_struct_sizes(void)
{
  bool __cond ;
  bool __cond___0 ;
  bool __cond___1 ;
  bool __cond___2 ;
  bool __cond___3 ;
  bool __cond___4 ;
  bool __cond___5 ;
  bool __cond___6 ;
  {
  __cond = 0;
  if ((int )__cond) {
    {
    __compiletime_assert_106();
    }
  } else {
  }
  __cond___0 = 0;
  if ((int )__cond___0) {
    {
    __compiletime_assert_107();
    }
  } else {
  }
  __cond___1 = 0;
  if ((int )__cond___1) {
    {
    __compiletime_assert_108();
    }
  } else {
  }
  __cond___2 = 0;
  if ((int )__cond___2) {
    {
    __compiletime_assert_109();
    }
  } else {
  }
  __cond___3 = 0;
  if ((int )__cond___3) {
    {
    __compiletime_assert_110();
    }
  } else {
  }
  __cond___4 = 0;
  if ((int )__cond___4) {
    {
    __compiletime_assert_111();
    }
  } else {
  }
  __cond___5 = 0;
  if ((int )__cond___5) {
    {
    __compiletime_assert_112();
    }
  } else {
  }
  __cond___6 = 0;
  if ((int )__cond___6) {
    {
    __compiletime_assert_113();
    }
  } else {
  }
  return;
}
}
static int init_pcitm = 0;
static struct pci_device_id const prism54_id_tbl[5U] = { {4704U, 14480U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4279U, 24577U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4704U, 14455U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4704U, 14470U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static int prism54_probe(struct pci_dev *pdev , struct pci_device_id const *id ) ;
static void prism54_remove(struct pci_dev *pdev ) ;
static int prism54_suspend(struct pci_dev *pdev , pm_message_t state ) ;
static int prism54_resume(struct pci_dev *pdev ) ;
static struct pci_driver prism54_driver =
     {{0, 0}, "prism54", (struct pci_device_id const *)(& prism54_id_tbl), & prism54_probe,
    & prism54_remove, & prism54_suspend, 0, 0, & prism54_resume, 0, 0, 0, {0, 0, 0,
                                                                           0, (_Bool)0,
                                                                           0, 0, 0,
                                                                           0, 0, 0,
                                                                           0, 0, 0,
                                                                           0}, {{{{{{0U}},
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}}}},
                                                                                {0,
                                                                                 0}}};
static int prism54_probe(struct pci_dev *pdev , struct pci_device_id const *id )
{
  struct net_device *ndev ;
  u8 latency_tmr ;
  u32 mem_addr ;
  islpci_private *priv ;
  int rvalue ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  {
  {
  tmp = pci_enable_device(pdev);
  }
  if (tmp != 0) {
    {
    printk("\v%s: pci_enable_device() failed.\n", (char *)"prism54");
    }
    return (-19);
  } else {
  }
  {
  pci_read_config_byte((struct pci_dev const *)pdev, 13, & latency_tmr);
  }
  if ((unsigned int )latency_tmr <= 63U) {
    {
    pci_write_config_byte((struct pci_dev const *)pdev, 13, 80);
    }
  } else {
  }
  {
  tmp___0 = pci_set_dma_mask(pdev, 4294967295ULL);
  }
  if (tmp___0 != 0) {
    {
    printk("\v%s: 32-bit PCI DMA not supported", (char *)"prism54");
    }
    goto do_pci_disable_device;
  } else {
  }
  if (init_pcitm >= 0) {
    {
    pci_write_config_byte((struct pci_dev const *)pdev, 64, (int )((unsigned char )init_pcitm));
    pci_write_config_byte((struct pci_dev const *)pdev, 65, (int )((unsigned char )init_pcitm));
    }
  } else {
    {
    printk("\016PCI TRDY/RETRY unchanged\n");
    }
  }
  {
  rvalue = pci_request_regions(pdev, "prism54");
  }
  if (rvalue != 0) {
    {
    printk("\v%s: pci_request_regions failure (rc=%d)\n", (char *)"prism54", rvalue);
    }
    goto do_pci_disable_device;
  } else {
  }
  {
  rvalue = pci_read_config_dword((struct pci_dev const *)pdev, 16, & mem_addr);
  }
  if (rvalue != 0 || mem_addr == 0U) {
    {
    printk("\v%s: PCI device memory region not configured; fix your BIOS or CardBus bridge/drivers\n",
           (char *)"prism54");
    }
    goto do_pci_release_regions;
  } else {
  }
  if ((pc_debug & 8) != 0) {
    {
    printk("\017%s: pci_set_master(pdev)\n", (char *)"prism54");
    }
  } else {
  }
  {
  pci_set_master(pdev);
  pci_try_set_mwi(pdev);
  ndev = islpci_setup(pdev);
  }
  if ((unsigned long )ndev == (unsigned long )((struct net_device *)0)) {
    {
    printk("\v%s: could not configure network device\n", (char *)"prism54");
    }
    goto do_pci_clear_mwi;
  } else {
  }
  {
  tmp___1 = netdev_priv((struct net_device const *)ndev);
  priv = (islpci_private *)tmp___1;
  islpci_set_state(priv, 1);
  isl38xx_disable_interrupts(priv->device_base);
  rvalue = ldv_request_irq_15(pdev->irq, & islpci_interrupt, 128UL, (char const *)(& ndev->name),
                              (void *)priv);
  }
  if (rvalue != 0) {
    {
    printk("\v%s: could not install IRQ handler\n", (char *)(& ndev->name));
    }
    goto do_unregister_netdev;
  } else {
  }
  return (0);
  do_unregister_netdev:
  {
  ldv_unregister_netdev_16(ndev);
  islpci_free_memory(priv);
  ldv_free_netdev_17___0(ndev);
  priv = (islpci_private *)0;
  }
  do_pci_clear_mwi:
  {
  pci_clear_mwi(pdev);
  }
  do_pci_release_regions:
  {
  pci_release_regions(pdev);
  }
  do_pci_disable_device:
  {
  pci_disable_device(pdev);
  }
  return (-5);
}
}
static int volatile __in_cleanup_module = 0;
static void prism54_remove(struct pci_dev *pdev )
{
  struct net_device *ndev ;
  void *tmp ;
  islpci_private *priv ;
  void *tmp___0 ;
  islpci_private *tmp___1 ;
  long tmp___2 ;
  islpci_state_t tmp___3 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  ndev = (struct net_device *)tmp;
  }
  if ((unsigned long )ndev != (unsigned long )((struct net_device *)0)) {
    {
    tmp___0 = netdev_priv((struct net_device const *)ndev);
    tmp___1 = (islpci_private *)tmp___0;
    }
  } else {
    tmp___1 = (islpci_private *)0;
  }
  {
  priv = tmp___1;
  tmp___2 = ldv__builtin_expect((unsigned long )priv == (unsigned long )((islpci_private *)0),
                             0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/islpci_hotplug.c"),
                         "i" (221), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((int )__in_cleanup_module == 0) {
    {
    printk("\017%s: hot unplug detected\n", (char *)(& ndev->name));
    islpci_set_state(priv, 0);
    }
  } else {
  }
  {
  printk("\017%s: removing device\n", (char *)(& ndev->name));
  ldv_unregister_netdev_18(ndev);
  tmp___3 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___3 != 0U) {
    {
    isl38xx_disable_interrupts(priv->device_base);
    islpci_set_state(priv, 0);
    }
  } else {
  }
  {
  ldv_free_irq_19(pdev->irq, (void *)priv);
  islpci_free_memory(priv);
  ldv_free_netdev_20(ndev);
  priv = (islpci_private *)0;
  pci_clear_mwi(pdev);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  }
  return;
}
}
static int prism54_suspend(struct pci_dev *pdev , pm_message_t state )
{
  struct net_device *ndev ;
  void *tmp ;
  islpci_private *priv ;
  void *tmp___0 ;
  islpci_private *tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  ndev = (struct net_device *)tmp;
  }
  if ((unsigned long )ndev != (unsigned long )((struct net_device *)0)) {
    {
    tmp___0 = netdev_priv((struct net_device const *)ndev);
    tmp___1 = (islpci_private *)tmp___0;
    }
  } else {
    tmp___1 = (islpci_private *)0;
  }
  {
  priv = tmp___1;
  tmp___2 = ldv__builtin_expect((unsigned long )priv == (unsigned long )((islpci_private *)0),
                             0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/islpci_hotplug.c"),
                         "i" (263), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  pci_save_state(pdev);
  isl38xx_disable_interrupts(priv->device_base);
  islpci_set_state(priv, 0);
  netif_stop_queue(ndev);
  netif_device_detach(ndev);
  }
  return (0);
}
}
static int prism54_resume(struct pci_dev *pdev )
{
  struct net_device *ndev ;
  void *tmp ;
  islpci_private *priv ;
  void *tmp___0 ;
  islpci_private *tmp___1 ;
  int err ;
  long tmp___2 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  ndev = (struct net_device *)tmp;
  }
  if ((unsigned long )ndev != (unsigned long )((struct net_device *)0)) {
    {
    tmp___0 = netdev_priv((struct net_device const *)ndev);
    tmp___1 = (islpci_private *)tmp___0;
    }
  } else {
    tmp___1 = (islpci_private *)0;
  }
  {
  priv = tmp___1;
  tmp___2 = ldv__builtin_expect((unsigned long )priv == (unsigned long )((islpci_private *)0),
                             0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/islpci_hotplug.c"),
                         "i" (288), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  printk("\r%s: got resume request\n", (char *)(& ndev->name));
  err = pci_enable_device(pdev);
  }
  if (err != 0) {
    {
    printk("\v%s: pci_enable_device failed on resume\n", (char *)(& ndev->name));
    }
    return (err);
  } else {
  }
  {
  pci_restore_state(pdev);
  islpci_reset(priv, 1);
  netif_device_attach(ndev);
  netif_start_queue(ndev);
  }
  return (0);
}
}
static int prism54_module_init(void)
{
  int tmp ;
  {
  {
  printk("\016Loaded %s driver, version %s\n", (char *)"prism54", (char *)"1.2");
  __bug_on_wrong_struct_sizes();
  tmp = ldv___pci_register_driver_21(& prism54_driver, & __this_module, "prism54");
  }
  return (tmp);
}
}
static void prism54_module_exit(void)
{
  {
  {
  __in_cleanup_module = 1;
  ldv_pci_unregister_driver_22(& prism54_driver);
  printk("\016Unloaded %s driver\n", (char *)"prism54");
  __in_cleanup_module = 0;
  }
  return;
}
}
void ldv_EMGentry_exit_prism54_module_exit_12_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_prism54_module_init_12_9(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
void ldv_allocate_external_0(void) ;
void ldv_dispatch_deregister_10_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_9_1(struct net_device *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_12_12_4(void) ;
void ldv_dispatch_irq_deregister_5_1(int arg0 ) ;
void ldv_dispatch_irq_register_8_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_11_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_12_12_5(void) ;
void ldv_dummy_resourceless_instance_callback_1_14(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_entry_EMGentry_12(void *arg0 ) ;
int main(void) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_initialize_external_data(void) ;
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_0(void *arg0 ) ;
void ldv_net_dummy_resourceless_instance_1(void *arg0 ) ;
int ldv_pci_instance_probe_2_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_2_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_2_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_2_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_2_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_2_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_2(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
void ldv_struct_iw_priv_args_dummy_resourceless_instance_3(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
void ldv_switch_automaton_state_0_1(void) ;
void ldv_switch_automaton_state_0_6(void) ;
void ldv_switch_automaton_state_1_1(void) ;
void ldv_switch_automaton_state_2_11(void) ;
void ldv_switch_automaton_state_2_20(void) ;
void ldv_switch_automaton_state_3_1(void) ;
void ldv_switch_automaton_state_3_5(void) ;
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 ) ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) ;
void *ldv_0_data_data ;
int ldv_0_line_line ;
enum irqreturn ldv_0_ret_val_default ;
enum irqreturn (*ldv_0_thread_thread)(int , void * ) ;
void (*ldv_12_exit_prism54_module_exit_default)(void) ;
int (*ldv_12_init_prism54_module_init_default)(void) ;
int ldv_12_ret_default ;
void (*ldv_1_callback_setup)(struct net_device * ) ;
struct net_device *ldv_1_container_net_device ;
struct ethtool_drvinfo *ldv_1_container_struct_ethtool_drvinfo_ptr ;
struct sk_buff *ldv_1_container_struct_sk_buff_ptr ;
int ldv_1_ldv_param_7_1_default ;
struct pci_driver *ldv_2_container_pci_driver ;
struct pci_dev *ldv_2_resource_dev ;
struct pm_message ldv_2_resource_pm_message ;
struct pci_device_id *ldv_2_resource_struct_pci_device_id_ptr ;
int ldv_2_ret_default ;
struct net_device *ldv_3_container_struct_net_device_ptr ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_12 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) = & islpci_interrupt;
void (*ldv_12_exit_prism54_module_exit_default)(void) = & prism54_module_exit;
int (*ldv_12_init_prism54_module_init_default)(void) = & prism54_module_init;
void ldv_EMGentry_exit_prism54_module_exit_12_2(void (*arg0)(void) )
{
  {
  {
  prism54_module_exit();
  }
  return;
}
}
int ldv_EMGentry_init_prism54_module_init_12_9(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = prism54_module_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_11_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_11_pci_driver_pci_driver = arg1;
    ldv_assume(ldv_statevar_2 == 20);
    ldv_dispatch_register_11_2(ldv_11_pci_driver_pci_driver);
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
  {
  {
  ldv_0_data_data = external_allocated_data();
  tmp = external_allocated_data();
  ldv_0_thread_thread = (enum irqreturn (*)(int , void * ))tmp;
  tmp___0 = external_allocated_data();
  ldv_1_callback_setup = (void (*)(struct net_device * ))tmp___0;
  tmp___1 = external_allocated_data();
  ldv_1_container_net_device = (struct net_device *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_1_container_struct_ethtool_drvinfo_ptr = (struct ethtool_drvinfo *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_1_container_struct_sk_buff_ptr = (struct sk_buff *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_2_resource_dev = (struct pci_dev *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_3_container_struct_net_device_ptr = (struct net_device *)tmp___5;
  }
  return;
}
}
void ldv_dispatch_deregister_10_1(struct pci_driver *arg0 )
{
  {
  {
  ldv_2_container_pci_driver = arg0;
  ldv_switch_automaton_state_2_11();
  }
  return;
}
}
void ldv_dispatch_deregister_9_1(struct net_device *arg0 )
{
  {
  {
  ldv_1_container_net_device = arg0;
  ldv_switch_automaton_state_1_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_12_12_4(void)
{
  {
  {
  ldv_switch_automaton_state_3_1();
  }
  return;
}
}
void ldv_dispatch_irq_deregister_5_1(int arg0 )
{
  {
  {
  ldv_0_line_line = arg0;
  ldv_switch_automaton_state_0_1();
  }
  return;
}
}
void ldv_dispatch_irq_register_8_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  {
  {
  ldv_0_line_line = arg0;
  ldv_0_callback_handler = arg1;
  ldv_0_thread_thread = arg2;
  ldv_0_data_data = arg3;
  ldv_switch_automaton_state_0_6();
  }
  return;
}
}
void ldv_dispatch_register_11_2(struct pci_driver *arg0 )
{
  {
  {
  ldv_2_container_pci_driver = arg0;
  ldv_switch_automaton_state_2_20();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_12_12_5(void)
{
  {
  {
  ldv_switch_automaton_state_3_5();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_14(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_entry_EMGentry_12(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_12 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_12 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_12 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_12 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_12 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_12 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_12 == 9) {
    goto case_9;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_2 == 12);
  ldv_EMGentry_exit_prism54_module_exit_12_2(ldv_12_exit_prism54_module_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_12 = 9;
  }
  goto ldv_43698;
  case_3:
  {
  ldv_assume(ldv_statevar_2 == 12);
  ldv_EMGentry_exit_prism54_module_exit_12_2(ldv_12_exit_prism54_module_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_12 = 9;
  }
  goto ldv_43698;
  case_4:
  {
  ldv_assume(ldv_statevar_3 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_12_12_4();
  ldv_statevar_12 = 2;
  }
  goto ldv_43698;
  case_5:
  {
  ldv_assume(ldv_statevar_3 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_12_12_5();
  ldv_statevar_12 = 4;
  }
  goto ldv_43698;
  case_6:
  {
  ldv_assume(ldv_12_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_12 = 3;
  } else {
    ldv_statevar_12 = 5;
  }
  goto ldv_43698;
  case_8:
  {
  ldv_assume(ldv_12_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_12 = 9;
  }
  goto ldv_43698;
  case_9:
  {
  ldv_assume(ldv_statevar_2 == 20);
  ldv_12_ret_default = ldv_EMGentry_init_prism54_module_init_12_9(ldv_12_init_prism54_module_init_default);
  ldv_12_ret_default = ldv_post_init(ldv_12_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_12 = 6;
  } else {
    ldv_statevar_12 = 8;
  }
  goto ldv_43698;
  switch_default: ;
  switch_break: ;
  }
  ldv_43698: ;
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
  ldv_statevar_12 = 9;
  ldv_statevar_0 = 6;
  ldv_statevar_1 = 5;
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  ldv_statevar_3 = 5;
  }
  ldv_43715:
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
  goto switch_default;
  case_0:
  {
  ldv_entry_EMGentry_12((void *)0);
  }
  goto ldv_43709;
  case_1:
  {
  ldv_interrupt_interrupt_instance_0((void *)0);
  }
  goto ldv_43709;
  case_2:
  {
  ldv_net_dummy_resourceless_instance_1((void *)0);
  }
  goto ldv_43709;
  case_3:
  {
  ldv_pci_pci_instance_2((void *)0);
  }
  goto ldv_43709;
  case_4:
  {
  ldv_struct_iw_priv_args_dummy_resourceless_instance_3((void *)0);
  }
  goto ldv_43709;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_43709: ;
  goto ldv_43715;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_5_line_line ;
  {
  {
  ldv_5_line_line = arg1;
  ldv_assume(ldv_statevar_0 == 2);
  ldv_dispatch_irq_deregister_5_1(ldv_5_line_line);
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
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = islpci_interrupt(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_0(void *arg0 )
{
  int tmp ;
  {
  {
  if (ldv_statevar_0 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_0 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_0 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_0 == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume((unsigned int )ldv_0_ret_val_default != 2U);
  ldv_statevar_0 = 6;
  }
  goto ldv_43742;
  case_4:
  {
  ldv_assume((unsigned int )ldv_0_ret_val_default == 2U);
  }
  if ((unsigned long )ldv_0_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                  void * ))0)) {
    {
    ldv_interrupt_instance_thread_0_3(ldv_0_thread_thread, ldv_0_line_line, ldv_0_data_data);
    }
  } else {
  }
  ldv_statevar_0 = 6;
  goto ldv_43742;
  case_5:
  {
  ldv_switch_to_interrupt_context();
  ldv_0_ret_val_default = ldv_interrupt_instance_handler_0_5(ldv_0_callback_handler,
                                                             ldv_0_line_line, ldv_0_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_0 = 2;
  } else {
    ldv_statevar_0 = 4;
  }
  goto ldv_43742;
  case_6: ;
  goto ldv_43742;
  switch_default: ;
  switch_break: ;
  }
  ldv_43742: ;
  return;
}
}
void ldv_net_dummy_resourceless_instance_1(void *arg0 )
{
  {
  {
  if (ldv_statevar_1 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_1 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_1 == 3) {
    goto case_3;
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
  if (ldv_statevar_1 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_1 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_1 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_1 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_1 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_1 == 14) {
    goto case_14;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_43751;
  case_2:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_43751;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_get_drvinfo, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_drvinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_43751;
  case_4:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_43751;
  case_5: ;
  goto ldv_43751;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_1_7(ldv_1_callback_ndo_change_mtu, ldv_1_container_net_device,
                                               ldv_1_ldv_param_7_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_43751;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_1_10(ldv_1_callback_ndo_set_mac_address,
                                                ldv_1_container_net_device, (void *)ldv_1_container_struct_ethtool_drvinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_43751;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_1_11(ldv_1_callback_ndo_start_xmit, ldv_1_container_struct_sk_buff_ptr,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_43751;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_1_12(ldv_1_callback_ndo_tx_timeout, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_43751;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_1_13(ldv_1_callback_ndo_validate_addr,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_43751;
  case_14: ;
  if ((unsigned long )ldv_1_callback_setup != (unsigned long )((void (*)(struct net_device * ))0)) {
    {
    ldv_dummy_resourceless_instance_callback_1_14(ldv_1_callback_setup, ldv_1_container_net_device);
    }
  } else {
  }
  ldv_statevar_1 = 2;
  goto ldv_43751;
  switch_default: ;
  switch_break: ;
  }
  ldv_43751: ;
  return;
}
}
int ldv_pci_instance_probe_2_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = prism54_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  prism54_remove(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_2_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  prism54_resume(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_2_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_2_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_2_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = prism54_suspend(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_pci_instance_suspend_late_2_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_pci_pci_instance_2(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  {
  if (ldv_statevar_2 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_2 == 2) {
    goto case_2;
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
  if (ldv_statevar_2 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_2 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_2 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_2 == 12) {
    goto case_12;
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
  if (ldv_statevar_2 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_2 == 20) {
    goto case_20;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_2 = 12;
  } else {
    ldv_statevar_2 = 17;
  }
  goto ldv_43808;
  case_2:
  {
  ldv_assume(ldv_statevar_0 == 2 || ldv_statevar_1 == 1);
  ldv_pci_instance_release_2_2(ldv_2_container_pci_driver->remove, ldv_2_resource_dev);
  ldv_statevar_2 = 1;
  }
  goto ldv_43808;
  case_3: ;
  if ((unsigned long )ldv_2_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_2_3(ldv_2_container_pci_driver->shutdown, ldv_2_resource_dev);
    }
  } else {
  }
  ldv_statevar_2 = 2;
  goto ldv_43808;
  case_4:
  {
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_43808;
  case_5:
  {
  ldv_pci_instance_resume_2_5(ldv_2_container_pci_driver->resume, ldv_2_resource_dev);
  ldv_statevar_2 = 4;
  }
  goto ldv_43808;
  case_6: ;
  if ((unsigned long )ldv_2_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_2_6(ldv_2_container_pci_driver->resume_early, ldv_2_resource_dev);
    }
  } else {
  }
  ldv_statevar_2 = 5;
  goto ldv_43808;
  case_7: ;
  if ((unsigned long )ldv_2_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_2_ret_default = ldv_pci_instance_suspend_late_2_7(ldv_2_container_pci_driver->suspend_late,
                                                          ldv_2_resource_dev, ldv_2_resource_pm_message);
    }
  } else {
  }
  {
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  ldv_statevar_2 = 6;
  }
  goto ldv_43808;
  case_8:
  {
  ldv_2_ret_default = ldv_pci_instance_suspend_2_8(ldv_2_container_pci_driver->suspend,
                                                   ldv_2_resource_dev, ldv_2_resource_pm_message);
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  ldv_statevar_2 = 7;
  }
  goto ldv_43808;
  case_9:
  {
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_43808;
  case_10:
  ldv_statevar_2 = 9;
  goto ldv_43808;
  case_12:
  {
  ldv_free((void *)ldv_2_resource_dev);
  ldv_free((void *)ldv_2_resource_struct_pci_device_id_ptr);
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  }
  goto ldv_43808;
  case_14:
  {
  ldv_assume(ldv_2_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_2 = 12;
  } else {
    ldv_statevar_2 = 17;
  }
  goto ldv_43808;
  case_16:
  {
  ldv_assume(ldv_2_ret_default == 0);
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_43808;
  case_17:
  {
  ldv_assume((ldv_statevar_0 == 6 || ldv_statevar_1 == 5) || ldv_statevar_1 == 1);
  ldv_pre_probe();
  ldv_2_ret_default = ldv_pci_instance_probe_2_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_2_container_pci_driver->probe,
                                                  ldv_2_resource_dev, ldv_2_resource_struct_pci_device_id_ptr);
  ldv_2_ret_default = ldv_post_probe(ldv_2_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_2 = 14;
  } else {
    ldv_statevar_2 = 16;
  }
  goto ldv_43808;
  case_19:
  {
  tmp___2 = ldv_xmalloc(2936UL);
  ldv_2_resource_dev = (struct pci_dev *)tmp___2;
  tmp___3 = ldv_xmalloc(32UL);
  ldv_2_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___3;
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
    ldv_statevar_2 = 12;
  } else {
    ldv_statevar_2 = 17;
  }
  goto ldv_43808;
  case_20: ;
  goto ldv_43808;
  switch_default: ;
  switch_break: ;
  }
  ldv_43808: ;
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_10_pci_driver_pci_driver ;
  {
  {
  ldv_10_pci_driver_pci_driver = arg1;
  ldv_assume(ldv_statevar_2 == 12);
  ldv_dispatch_deregister_10_1(ldv_10_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_8_callback_handler)(int , void * ) ;
  void *ldv_8_data_data ;
  int ldv_8_line_line ;
  enum irqreturn (*ldv_8_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_8_line_line = (int )arg1;
    ldv_8_callback_handler = arg2;
    ldv_8_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_8_data_data = arg5;
    ldv_assume(ldv_statevar_0 == 6);
    ldv_dispatch_irq_register_8_2(ldv_8_line_line, ldv_8_callback_handler, ldv_8_thread_thread,
                                  ldv_8_data_data);
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
void ldv_struct_iw_priv_args_dummy_resourceless_instance_3(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
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
  goto switch_default;
  case_1: ;
  goto ldv_43852;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_3 = 1;
  } else {
    ldv_statevar_3 = 3;
  }
  goto ldv_43852;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_get_wireless_stats,
                                               ldv_3_container_struct_net_device_ptr);
  ldv_statevar_3 = 2;
  }
  goto ldv_43852;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_3 = 1;
  } else {
    ldv_statevar_3 = 3;
  }
  goto ldv_43852;
  case_5: ;
  goto ldv_43852;
  switch_default: ;
  switch_break: ;
  }
  ldv_43852: ;
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
  return (1);
  case_1: ;
  return (3);
  case_2: ;
  return (8);
  case_3: ;
  return (10);
  case_4: ;
  return (11);
  case_5: ;
  return (12);
  case_6: ;
  return (13);
  case_7: ;
  return (14);
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
  return (8);
  case_2: ;
  return (10);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
void ldv_switch_automaton_state_0_1(void)
{
  {
  ldv_statevar_0 = 6;
  return;
}
}
void ldv_switch_automaton_state_0_6(void)
{
  {
  ldv_statevar_0 = 5;
  return;
}
}
void ldv_switch_automaton_state_1_1(void)
{
  {
  ldv_statevar_1 = 5;
  return;
}
}
void ldv_switch_automaton_state_1_5(void)
{
  {
  ldv_statevar_1 = 4;
  return;
}
}
void ldv_switch_automaton_state_2_11(void)
{
  {
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  return;
}
}
void ldv_switch_automaton_state_2_20(void)
{
  {
  ldv_statevar_2 = 19;
  return;
}
}
void ldv_switch_automaton_state_3_1(void)
{
  {
  ldv_statevar_3 = 5;
  return;
}
}
void ldv_switch_automaton_state_3_5(void)
{
  {
  ldv_statevar_3 = 4;
  return;
}
}
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_9_netdev_net_device ;
  {
  {
  ldv_9_netdev_net_device = arg1;
  ldv_unregister_netdev_stop_9_2((ldv_9_netdev_net_device->netdev_ops)->ndo_stop,
                                 ldv_9_netdev_net_device);
  ldv_assume(ldv_statevar_1 == 1);
  ldv_dispatch_deregister_9_1(ldv_9_netdev_net_device);
  }
  return;
  return;
}
}
static void *ldv_dev_get_drvdata_13(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
__inline static int ldv_request_irq_15(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_irq(ldv_func_res, irq, handler, flags, (char *)name, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_unregister_netdev_16(struct net_device *ldv_func_arg1 )
{
  {
  {
  unregister_netdev(ldv_func_arg1);
  ldv_unregister_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_netdev_17___0(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_unregister_netdev_18(struct net_device *ldv_func_arg1 )
{
  {
  {
  unregister_netdev(ldv_func_arg1);
  ldv_unregister_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_irq_19(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_netdev_20(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv___pci_register_driver_21(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv___pci_register_driver(ldv_func_res, ldv_func_arg1, ldv_func_arg2,
                                      (char *)ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_pci_unregister_driver_22(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
extern void __init_rwsem(struct rw_semaphore * , char const * , struct lock_class_key * ) ;
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  if (size != 0UL && n > 0xffffffffffffffffUL / size) {
    return ((void *)0);
  } else {
  }
  {
  tmp = __kmalloc(n * size, flags);
  }
  return (tmp);
}
}
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  }
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
static int const frequency_list_bg[14U] =
  { 2412, 2417, 2422, 2427,
        2432, 2437, 2442, 2447,
        2452, 2457, 2462, 2467,
        2472, 2484};
int channel_of_freq(int f )
{
  int c ;
  int tmp ;
  {
  c = 0;
  if ((unsigned int )f - 2412U <= 72U) {
    goto ldv_42355;
    ldv_42354:
    c = c + 1;
    ldv_42355: ;
    if (c <= 13 && f != (int )frequency_list_bg[c]) {
      goto ldv_42354;
    } else {
    }
    if (c <= 13) {
      c = c + 1;
      tmp = c;
    } else {
      tmp = 0;
    }
    return (tmp);
  } else
  if ((unsigned int )f - 5000U <= 1000U) {
    return ((f + -5000) / 5);
  } else {
    return (0);
  }
}
}
struct oid_t isl_oid[140U] =
  { {0, 0, 6, 10},
        {1, 0, 4, 1},
        {2, 0, 4, 0},
        {3, 0, 4, 0},
        {4, 0, 4, 0},
        {5, 0, 4, 0},
        {268435456, 0, 4, -127},
        {268435457, 0, 6, -117},
        {268435458, 0, 34, -126},
        {268435459, 0, 4, 1},
        {268435460, 0, 4, 1},
        {268435461, 0, 4, 11},
        {268435462, 0, 34, -126},
        {285212672, 0, 4, 1},
        {285212673, 0, 4, -127},
        {285212674, 0, 4, 1},
        {285212675, 0, 4, 1},
        {285212676, 0, 4, 1},
        {285212677, 0, 4, 1},
        {285212678, 0, 4, 1},
        {301989888, 0, 4, -127},
        {301989889, 0, 4, -127},
        {301989890, 0, 4, -127},
        {301989891, 0, 4, -127},
        {301989892, 3, 34, -125},
        {301989896, 0, 4, 0},
        {301989897, 0, 4, 1},
        {301989898, 0, 4, 0},
        {436207616, 0, 4, 1},
        {436207617, 0, 4, 1},
        {436207618, 0, 4, 1},
        {436207619, 0, 4, 1},
        {318767104, 0, 4, -127},
        {318767105, 0, 4, -127},
        {318767106, 0, 4, -127},
        {318767107, 0, 4, -127},
        {318767108, 0, 4, -127},
        {318767109, 0, 4, 1},
        {318767110, 0, 4, 1},
        {318767111, 0, 4, 1},
        {486539264, 0, 4, 0},
        {486539265, 0, 4, 0},
        {486539266, 0, 4, 0},
        {486539267, 0, 4, 0},
        {486539268, 0, 4, 1},
        {486539269, 0, 4, 0},
        {486539270, 0, 4, 0},
        {452984832, 7, 0, 0},
        {452984840, 0, 4, 1},
        {335544320, 0, 4, 1},
        {335544321, 0, 4, 1},
        {335544322, 0, 4, 1},
        {335544323, 0, 4, 1},
        {352321536, 0, 4, 1},
        {352321537, 0, 4, 1},
        {352321538, 0, 4, 1},
        {352321539, 2006, 0, 0},
        {352323547, 0, 6, 10},
        {352323548, 0, 6, 10},
        {352323549, 0, 6, 10},
        {352323550, 0, 6, 10},
        {352323551, 0, 6, 10},
        {352323552, 0, 4, -127},
        {352323553, 0, 4, 0},
        {352323554, 0, 4, 0},
        {369098752, 0, 4, 1},
        {369098753, 0, 4, 1},
        {369098754, 0, 4, 1},
        {369098755, 0, 4, 1},
        {369098756, 0, 4, 1},
        {369098757, 0, 4, 1},
        {369098758, 0, 4, 1},
        {369098759, 0, 4, 1},
        {369098760, 0, 4, 1},
        {369098761, 0, 4, 1},
        {369098762, 0, 4, 1},
        {369098763, 0, 4, 1},
        {369098764, 0, 4, 1},
        {385875968, 0, 4, 1},
        {385875969, 0, 4, 1},
        {385875970, 0, 4, 1},
        {385875971, 0, 4, 1},
        {385875972, 0, 4, 1},
        {385875973, 0, 4, 1},
        {385875974, 0, 4, 1},
        {385875975, 0, 4, -127},
        {385875976, 0, 4, -127},
        {385875977, 0, 4, 1},
        {385875978, 0, 21, 11},
        {385875979, 0, 4, 1},
        {385875980, 0, 4, 1},
        {385875981, 0, 4, 0},
        {385875982, 0, 4, 0},
        {385875983, 0, 4, 1},
        {385875984, 0, 21, 11},
        {385875985, 0, 4, -127},
        {385875986, 0, 62, 7},
        {385875987, 0, 4, 1},
        {385875988, 0, 31, 11},
        {385875989, 0, 4, 0},
        {385875990, 0, 4, 1},
        {385875991, 0, 4, 1},
        {385875992, 0, 4, 1},
        {385875993, 0, 4, 1},
        {385876000, 0, 21, 11},
        {402653184, 0, 12, 8},
        {402653185, 0, 12, 8},
        {402653186, 0, 12, 8},
        {402653187, 0, 12, 8},
        {402653188, 0, 4, 0},
        {402653189, 0, 14, 9},
        {402653190, 0, 14, 9},
        {402653191, 0, 14, 9},
        {402653192, 0, 14, 9},
        {402653193, 0, 14, 9},
        {402653194, 0, 14, 9},
        {402653195, 0, 14, 9},
        {402653196, 0, 14, 9},
        {503316480, 0, 4, 1},
        {419430400, 0, 4, 1},
        {419430401, 0, 4, -127},
        {419430402, 0, 4, 1},
        {419430403, 0, 6, 12},
        {419430404, 0, 8, -124},
        {469762048, 0, 4, 1},
        {469762049, 63, 60, 5},
        {469762114, 0, 60, 5},
        {469762115, 0, 1444, 6},
        {4278321152U, 0, 4, 0},
        {4278321153U, 0, 4, 0},
        {4278321154U, 0, 4, 0},
        {4278321155U, 0, 4, -127},
        {4278321156U, 0, 4, 0},
        {4278321157U, 0, 8, 11},
        {4278321158U, 0, 4, 0},
        {4278321159U, 0, 4, 0},
        {4278321160U, 0, 4, -127},
        {4278321164U, 0, 4, -127},
        {4278321165U, 0, 4, 1},
        {4278321167U, 0, 4, -127}};
int mgt_init(islpci_private *priv )
{
  int i ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  {
  tmp = kcalloc(140UL, 8UL, 208U);
  priv->mib = (void **)tmp;
  }
  if ((unsigned long )priv->mib == (unsigned long )((void **)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_42363;
  ldv_42362: ;
  if ((int )isl_oid[i].flags < 0) {
    {
    *(priv->mib + (unsigned long )i) = kzalloc((size_t )((int )isl_oid[i].size * ((int )isl_oid[i].range + 1)),
                                               208U);
    }
    if ((unsigned long )*(priv->mib + (unsigned long )i) == (unsigned long )((void *)0)) {
      return (-12);
    } else {
    }
  } else {
    *(priv->mib + (unsigned long )i) = (void *)0;
  }
  i = i + 1;
  ldv_42363: ;
  if (i <= 139) {
    goto ldv_42362;
  } else {
  }
  {
  __init_rwsem(& priv->mib_sem, "&priv->mib_sem", & __key);
  prism54_mib_init(priv);
  }
  return (0);
}
}
void mgt_clean(islpci_private *priv )
{
  int i ;
  {
  if ((unsigned long )priv->mib == (unsigned long )((void **)0)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_42371;
  ldv_42370:
  {
  kfree((void const *)*(priv->mib + (unsigned long )i));
  *(priv->mib + (unsigned long )i) = (void *)0;
  i = i + 1;
  }
  ldv_42371: ;
  if (i <= 139) {
    goto ldv_42370;
  } else {
  }
  {
  kfree((void const *)priv->mib);
  priv->mib = (void **)0;
  }
  return;
}
}
void mgt_le_to_cpu(int type , void *data )
{
  struct obj_buffer *buff ;
  struct obj_bss *bss ;
  struct obj_bsslist *list ;
  int i ;
  struct obj_frequencies *freq ;
  int i___0 ;
  struct obj_mlme *mlme ;
  struct obj_mlmeex *mlme___0 ;
  struct obj_attachment *attach ;
  {
  {
  if (type == 1) {
    goto case_1;
  } else {
  }
  if (type == 4) {
    goto case_4;
  } else {
  }
  if (type == 5) {
    goto case_5;
  } else {
  }
  if (type == 6) {
    goto case_6;
  } else {
  }
  if (type == 7) {
    goto case_7;
  } else {
  }
  if (type == 8) {
    goto case_8;
  } else {
  }
  if (type == 9) {
    goto case_9;
  } else {
  }
  if (type == 12) {
    goto case_12;
  } else {
  }
  if (type == 2) {
    goto case_2;
  } else {
  }
  if (type == 3) {
    goto case_3;
  } else {
  }
  if (type == 10) {
    goto case_10;
  } else {
  }
  if (type == 11) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_1:
  *((u32 *)data) = *((u32 *)data);
  goto ldv_42378;
  case_4:
  buff = (struct obj_buffer *)data;
  buff->size = buff->size;
  buff->addr = buff->addr;
  goto ldv_42378;
  case_5:
  bss = (struct obj_bss *)data;
  bss->age = bss->age;
  bss->channel = bss->channel;
  bss->capinfo = bss->capinfo;
  bss->rates = bss->rates;
  bss->basic_rates = bss->basic_rates;
  goto ldv_42378;
  case_6:
  list = (struct obj_bsslist *)data;
  list->nr = list->nr;
  i = 0;
  goto ldv_42387;
  ldv_42386:
  {
  mgt_le_to_cpu(5, (void *)(& list->bsslist) + (unsigned long )i);
  i = i + 1;
  }
  ldv_42387: ;
  if ((u32 )i < list->nr) {
    goto ldv_42386;
  } else {
  }
  goto ldv_42378;
  case_7:
  freq = (struct obj_frequencies *)data;
  freq->nr = freq->nr;
  i___0 = 0;
  goto ldv_42393;
  ldv_42392:
  freq->mhz[i___0] = freq->mhz[i___0];
  i___0 = i___0 + 1;
  ldv_42393: ;
  if (i___0 < (int )freq->nr) {
    goto ldv_42392;
  } else {
  }
  goto ldv_42378;
  case_8:
  mlme = (struct obj_mlme *)data;
  mlme->id = mlme->id;
  mlme->state = mlme->state;
  mlme->code = mlme->code;
  goto ldv_42378;
  case_9:
  mlme___0 = (struct obj_mlmeex *)data;
  mlme___0->id = mlme___0->id;
  mlme___0->state = mlme___0->state;
  mlme___0->code = mlme___0->code;
  mlme___0->size = mlme___0->size;
  goto ldv_42378;
  case_12:
  attach = (struct obj_attachment *)data;
  attach->id = attach->id;
  attach->size = attach->size;
  goto ldv_42378;
  case_2: ;
  case_3: ;
  case_10: ;
  case_11: ;
  goto ldv_42378;
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/oid_mgt.c"),
                       "i" (342), "i" (12UL));
  __builtin_unreachable();
  }
  switch_break: ;
  }
  ldv_42378: ;
  return;
}
}
static void mgt_cpu_to_le(int type , void *data )
{
  struct obj_buffer *buff ;
  struct obj_bss *bss ;
  struct obj_bsslist *list ;
  int i ;
  struct obj_frequencies *freq ;
  int i___0 ;
  struct obj_mlme *mlme ;
  struct obj_mlmeex *mlme___0 ;
  struct obj_attachment *attach ;
  {
  {
  if (type == 1) {
    goto case_1;
  } else {
  }
  if (type == 4) {
    goto case_4;
  } else {
  }
  if (type == 5) {
    goto case_5;
  } else {
  }
  if (type == 6) {
    goto case_6;
  } else {
  }
  if (type == 7) {
    goto case_7;
  } else {
  }
  if (type == 8) {
    goto case_8;
  } else {
  }
  if (type == 9) {
    goto case_9;
  } else {
  }
  if (type == 12) {
    goto case_12;
  } else {
  }
  if (type == 2) {
    goto case_2;
  } else {
  }
  if (type == 3) {
    goto case_3;
  } else {
  }
  if (type == 10) {
    goto case_10;
  } else {
  }
  if (type == 11) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_1:
  *((u32 *)data) = *((u32 *)data);
  goto ldv_42411;
  case_4:
  buff = (struct obj_buffer *)data;
  buff->size = buff->size;
  buff->addr = buff->addr;
  goto ldv_42411;
  case_5:
  bss = (struct obj_bss *)data;
  bss->age = bss->age;
  bss->channel = bss->channel;
  bss->capinfo = bss->capinfo;
  bss->rates = bss->rates;
  bss->basic_rates = bss->basic_rates;
  goto ldv_42411;
  case_6:
  list = (struct obj_bsslist *)data;
  list->nr = list->nr;
  i = 0;
  goto ldv_42420;
  ldv_42419:
  {
  mgt_cpu_to_le(5, (void *)(& list->bsslist) + (unsigned long )i);
  i = i + 1;
  }
  ldv_42420: ;
  if ((u32 )i < list->nr) {
    goto ldv_42419;
  } else {
  }
  goto ldv_42411;
  case_7:
  freq = (struct obj_frequencies *)data;
  freq->nr = freq->nr;
  i___0 = 0;
  goto ldv_42426;
  ldv_42425:
  freq->mhz[i___0] = freq->mhz[i___0];
  i___0 = i___0 + 1;
  ldv_42426: ;
  if (i___0 < (int )freq->nr) {
    goto ldv_42425;
  } else {
  }
  goto ldv_42411;
  case_8:
  mlme = (struct obj_mlme *)data;
  mlme->id = mlme->id;
  mlme->state = mlme->state;
  mlme->code = mlme->code;
  goto ldv_42411;
  case_9:
  mlme___0 = (struct obj_mlmeex *)data;
  mlme___0->id = mlme___0->id;
  mlme___0->state = mlme___0->state;
  mlme___0->code = mlme___0->code;
  mlme___0->size = mlme___0->size;
  goto ldv_42411;
  case_12:
  attach = (struct obj_attachment *)data;
  attach->id = attach->id;
  attach->size = attach->size;
  goto ldv_42411;
  case_2: ;
  case_3: ;
  case_10: ;
  case_11: ;
  goto ldv_42411;
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/oid_mgt.c"),
                       "i" (411), "i" (12UL));
  __builtin_unreachable();
  }
  switch_break: ;
  }
  ldv_42411: ;
  return;
}
}
int mgt_set_request(islpci_private *priv , enum oid_num_t n , int extra , void *data )
{
  int ret ;
  struct islpci_mgmtframe *response ;
  int response_op ;
  int dlen ;
  void *cache ;
  void *_data___0 ;
  u32 oid ;
  long tmp ;
  long tmp___0 ;
  islpci_state_t tmp___1 ;
  {
  {
  ret = 0;
  response = (struct islpci_mgmtframe *)0;
  response_op = 3;
  _data___0 = data;
  tmp = ldv__builtin_expect((unsigned int )n > 139U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/oid_mgt.c"),
                         "i" (427), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(extra > (int )isl_oid[(unsigned int )n].range, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/oid_mgt.c"),
                         "i" (428), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )priv->mib == (unsigned long )((void **)0)) {
    return (-1);
  } else {
  }
  dlen = (int )isl_oid[(unsigned int )n].size;
  cache = *(priv->mib + (unsigned long )n);
  cache = cache + ((unsigned long )cache != (unsigned long )((void *)0) ? (unsigned long )(extra * dlen) : 0UL);
  oid = (unsigned int )isl_oid[(unsigned int )n].oid + (unsigned int )extra;
  if ((unsigned long )_data___0 == (unsigned long )((void *)0)) {
    _data___0 = cache;
  } else {
    {
    mgt_cpu_to_le((int )isl_oid[(unsigned int )n].flags & 127, _data___0);
    }
  }
  if ((unsigned long )cache != (unsigned long )((void *)0)) {
    {
    down_write(& priv->mib_sem);
    }
  } else {
  }
  {
  tmp___1 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___1 > 5U) {
    {
    ret = islpci_mgt_transaction(priv->ndev, 1, (unsigned long )oid, _data___0, dlen,
                                 & response);
    }
    if (ret == 0) {
      {
      response_op = (int )(response->header)->operation;
      islpci_mgt_release(response);
      }
    } else {
    }
    if (ret != 0 || response_op == 3) {
      ret = -5;
    } else {
    }
  } else
  if ((unsigned long )cache == (unsigned long )((void *)0)) {
    ret = -5;
  } else {
  }
  if ((unsigned long )cache != (unsigned long )((void *)0)) {
    if (ret == 0 && (unsigned long )data != (unsigned long )((void *)0)) {
      {
      memcpy(cache, (void const *)_data___0, (size_t )dlen);
      }
    } else {
    }
    {
    up_write(& priv->mib_sem);
    }
  } else {
  }
  if ((unsigned long )data != (unsigned long )((void *)0)) {
    {
    mgt_le_to_cpu((int )isl_oid[(unsigned int )n].flags & 127, data);
    }
  } else {
  }
  return (ret);
}
}
int mgt_set_varlen(islpci_private *priv , enum oid_num_t n , void *data , int extra_len )
{
  int ret ;
  struct islpci_mgmtframe *response ;
  int response_op ;
  int dlen ;
  u32 oid ;
  long tmp ;
  islpci_state_t tmp___0 ;
  {
  {
  ret = 0;
  response_op = 3;
  tmp = ldv__builtin_expect((unsigned int )n > 139U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/oid_mgt.c"),
                         "i" (488), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  dlen = (int )isl_oid[(unsigned int )n].size;
  oid = (u32 )isl_oid[(unsigned int )n].oid;
  mgt_cpu_to_le((int )isl_oid[(unsigned int )n].flags & 127, data);
  tmp___0 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___0 > 5U) {
    {
    ret = islpci_mgt_transaction(priv->ndev, 1, (unsigned long )oid, data, dlen + extra_len,
                                 & response);
    }
    if (ret == 0) {
      {
      response_op = (int )(response->header)->operation;
      islpci_mgt_release(response);
      }
    } else {
    }
    if (ret != 0 || response_op == 3) {
      ret = -5;
    } else {
    }
  } else {
    ret = -5;
  }
  if ((unsigned long )data != (unsigned long )((void *)0)) {
    {
    mgt_le_to_cpu((int )isl_oid[(unsigned int )n].flags & 127, data);
    }
  } else {
  }
  return (ret);
}
}
int mgt_get_request(islpci_private *priv , enum oid_num_t n , int extra , void *data ,
                    union oid_res_t *res )
{
  int ret ;
  int reslen ;
  struct islpci_mgmtframe *response ;
  int dlen ;
  void *cache ;
  void *_res ;
  u32 oid ;
  long tmp ;
  long tmp___0 ;
  islpci_state_t tmp___1 ;
  long tmp___2 ;
  {
  {
  ret = -5;
  reslen = 0;
  response = (struct islpci_mgmtframe *)0;
  _res = (void *)0;
  tmp = ldv__builtin_expect((unsigned int )n > 139U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/oid_mgt.c"),
                         "i" (527), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(extra > (int )isl_oid[(unsigned int )n].range, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/oid_mgt.c"),
                         "i" (528), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  res->ptr = (void *)0;
  if ((unsigned long )priv->mib == (unsigned long )((void **)0)) {
    return (-1);
  } else {
  }
  dlen = (int )isl_oid[(unsigned int )n].size;
  cache = *(priv->mib + (unsigned long )n);
  cache = cache + ((unsigned long )cache != (unsigned long )((void *)0) ? (unsigned long )(extra * dlen) : 0UL);
  oid = (unsigned int )isl_oid[(unsigned int )n].oid + (unsigned int )extra;
  reslen = dlen;
  if ((unsigned long )cache != (unsigned long )((void *)0)) {
    {
    down_read(& priv->mib_sem);
    }
  } else {
  }
  {
  tmp___1 = islpci_get_state(priv);
  }
  if ((unsigned int )tmp___1 > 5U) {
    {
    ret = islpci_mgt_transaction(priv->ndev, 0, (unsigned long )oid, data, dlen, & response);
    }
    if ((ret != 0 || (unsigned long )response == (unsigned long )((struct islpci_mgmtframe *)0)) || (unsigned int )(response->header)->operation == 3U) {
      if ((unsigned long )response != (unsigned long )((struct islpci_mgmtframe *)0)) {
        {
        islpci_mgt_release(response);
        }
      } else {
      }
      ret = -5;
    } else {
    }
    if (ret == 0) {
      _res = response->data;
      reslen = (int )(response->header)->length;
    } else {
    }
  } else
  if ((unsigned long )cache != (unsigned long )((void *)0)) {
    _res = cache;
    ret = 0;
  } else {
  }
  if (((int )isl_oid[(unsigned int )n].flags & 127) == 1) {
    res->u = ret == 0 ? *((u32 *)_res) : 0U;
  } else {
    {
    res->ptr = kmalloc((size_t )reslen, 208U);
    tmp___2 = ldv__builtin_expect((unsigned long )res->ptr == (unsigned long )((void *)0),
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/oid_mgt.c"),
                           "i" (566), "i" (12UL));
      __builtin_unreachable();
      }
    } else {
    }
    if (ret != 0) {
      {
      memset(res->ptr, 0, (size_t )reslen);
      }
    } else {
      {
      memcpy(res->ptr, (void const *)_res, (size_t )reslen);
      mgt_le_to_cpu((int )isl_oid[(unsigned int )n].flags & 127, res->ptr);
      }
    }
  }
  if ((unsigned long )cache != (unsigned long )((void *)0)) {
    {
    up_read(& priv->mib_sem);
    }
  } else {
  }
  if ((unsigned long )response != (unsigned long )((struct islpci_mgmtframe *)0) && ret == 0) {
    {
    islpci_mgt_release(response);
    }
  } else {
  }
  if (reslen > (int )isl_oid[(unsigned int )n].size) {
    {
    printk("\017mgt_get_request(0x%x): received data length was bigger than expected (%d > %d). Memory is probably corrupted...",
           oid, reslen, (int )isl_oid[(unsigned int )n].size);
    }
  } else {
  }
  return (ret);
}
}
int mgt_commit_list(islpci_private *priv , enum oid_num_t *l , int n )
{
  int i ;
  int ret ;
  struct islpci_mgmtframe *response ;
  struct oid_t *t ;
  void *data ;
  int j ;
  u32 oid ;
  long tmp ;
  int r ;
  int tmp___0 ;
  {
  ret = 0;
  i = 0;
  goto ldv_42494;
  ldv_42493:
  {
  t = (struct oid_t *)(& isl_oid) + (unsigned long )*(l + (unsigned long )i);
  data = *(priv->mib + (unsigned long )*(l + (unsigned long )i));
  j = 0;
  oid = t->oid;
  tmp = ldv__builtin_expect((unsigned long )data == (unsigned long )((void *)0), 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/oid_mgt.c"),
                         "i" (602), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  goto ldv_42491;
  ldv_42490:
  {
  tmp___0 = islpci_mgt_transaction(priv->ndev, 1, (unsigned long )oid, data, (int )t->size,
                                   & response);
  r = tmp___0;
  }
  if ((unsigned long )response != (unsigned long )((struct islpci_mgmtframe *)0)) {
    {
    r = r | ((unsigned int )(response->header)->operation == 3U);
    islpci_mgt_release(response);
    }
  } else {
  }
  if (r != 0) {
    {
    printk("\v%s: mgt_commit_list: failure. oid=%08x err=%d\n", (char *)(& (priv->ndev)->name),
           oid, r);
    }
  } else {
  }
  ret = ret | r;
  j = j + 1;
  oid = oid + 1U;
  data = data + (unsigned long )t->size;
  ldv_42491: ;
  if (j <= (int )t->range) {
    goto ldv_42490;
  } else {
  }
  i = i + 1;
  ldv_42494: ;
  if (i < n) {
    goto ldv_42493;
  } else {
  }
  return (ret);
}
}
void mgt_set(islpci_private *priv , enum oid_num_t n , void *data )
{
  long tmp ;
  long tmp___0 ;
  {
  {
  tmp = ldv__builtin_expect((unsigned int )n > 139U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/oid_mgt.c"),
                         "i" (629), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect((unsigned long )*(priv->mib + (unsigned long )n) == (unsigned long )((void *)0),
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/oid_mgt.c"),
                         "i" (630), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  memcpy(*(priv->mib + (unsigned long )n), (void const *)data, (size_t )isl_oid[(unsigned int )n].size);
  mgt_cpu_to_le((int )isl_oid[(unsigned int )n].flags & 127, *(priv->mib + (unsigned long )n));
  }
  return;
}
}
void mgt_get(islpci_private *priv , enum oid_num_t n , void *res )
{
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = ldv__builtin_expect((unsigned int )n > 139U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/oid_mgt.c"),
                         "i" (639), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect((unsigned long )*(priv->mib + (unsigned long )n) == (unsigned long )((void *)0),
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/oid_mgt.c"),
                         "i" (640), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect((unsigned long )res == (unsigned long )((void *)0), 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/oid_mgt.c"),
                         "i" (641), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  memcpy(res, (void const *)*(priv->mib + (unsigned long )n), (size_t )isl_oid[(unsigned int )n].size);
  mgt_le_to_cpu((int )isl_oid[(unsigned int )n].flags & 127, res);
  }
  return;
}
}
static enum oid_num_t commit_part1[5U] = { 136, 131, 6, 85,
        120};
static enum oid_num_t commit_part2[9U] =
  { 8, 123, 20, 21,
        22, 24, 23, 62,
        137};
static int mgt_update_addr(islpci_private *priv )
{
  struct islpci_mgmtframe *res ;
  int ret ;
  {
  {
  ret = islpci_mgt_transaction(priv->ndev, 0, (unsigned long )isl_oid[0].oid, (void *)0,
                               (int )isl_oid[0].size, & res);
  }
  if ((ret == 0 && (unsigned long )res != (unsigned long )((struct islpci_mgmtframe *)0)) && (unsigned int )(res->header)->operation != 3U) {
    {
    memcpy((void *)(priv->ndev)->dev_addr, (void const *)res->data, 6UL);
    }
  } else {
    ret = -5;
  }
  if ((unsigned long )res != (unsigned long )((struct islpci_mgmtframe *)0)) {
    {
    islpci_mgt_release(res);
    }
  } else {
  }
  if (ret != 0) {
    {
    printk("\v%s: mgt_update_addr: failure\n", (char *)(& (priv->ndev)->name));
    }
  } else {
  }
  return (ret);
}
}
int mgt_commit(islpci_private *priv )
{
  int rvalue ;
  enum oid_num_t u ;
  islpci_state_t tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = islpci_get_state(priv);
  }
  if ((unsigned int )tmp <= 4U) {
    return (0);
  } else {
  }
  {
  rvalue = mgt_commit_list(priv, (enum oid_num_t *)(& commit_part1), 5);
  }
  if (priv->iw_mode != 6U) {
    {
    tmp___0 = mgt_commit_list(priv, (enum oid_num_t *)(& commit_part2), 9);
    rvalue = rvalue | tmp___0;
    }
  } else {
  }
  {
  u = 131;
  tmp___1 = mgt_commit_list(priv, & u, 1);
  rvalue = rvalue | tmp___1;
  tmp___2 = mgt_update_addr(priv);
  rvalue = rvalue | tmp___2;
  }
  if (rvalue != 0) {
    {
    printk("\017%s: mgt_commit: failure\n", (char *)(& (priv->ndev)->name));
    }
  } else {
  }
  return (rvalue);
}
}
int mgt_mlme_answer(islpci_private *priv )
{
  u32 mlmeautolevel ;
  {
  {
  down_read(& priv->mib_sem);
  mlmeautolevel = *((u32 *)*(priv->mib + 120UL));
  up_read(& priv->mib_sem);
  }
  return (priv->iw_mode == 3U && mlmeautolevel != 0U);
}
}
enum oid_num_t mgt_oidtonum(u32 oid )
{
  int i ;
  {
  i = 0;
  goto ldv_42531;
  ldv_42530: ;
  if ((unsigned int )isl_oid[i].oid == oid) {
    return ((enum oid_num_t )i);
  } else {
  }
  i = i + 1;
  ldv_42531: ;
  if (i <= 139) {
    goto ldv_42530;
  } else {
  }
  {
  printk("\017looking for an unknown oid 0x%x", oid);
  }
  return (140);
}
}
int mgt_response_to_str(enum oid_num_t n , union oid_res_t *r , char *str )
{
  int tmp ;
  struct obj_buffer *buff ;
  int tmp___0 ;
  struct obj_bss *bss ;
  int tmp___1 ;
  struct obj_bsslist *list ;
  int i ;
  int k ;
  int tmp___2 ;
  struct obj_frequencies *freq ;
  int i___0 ;
  int t ;
  int tmp___3 ;
  struct obj_mlme *mlme ;
  int tmp___4 ;
  struct obj_mlmeex *mlme___0 ;
  int tmp___5 ;
  struct obj_attachment *attach ;
  int tmp___6 ;
  struct obj_ssid *ssid ;
  int tmp___7 ;
  struct obj_key *key ;
  int t___0 ;
  int i___1 ;
  int tmp___8 ;
  int tmp___9 ;
  unsigned char *buff___0 ;
  int t___1 ;
  int i___2 ;
  int tmp___10 ;
  int tmp___11 ;
  {
  {
  if (((int )isl_oid[(unsigned int )n].flags & 127) == 1) {
    goto case_1;
  } else {
  }
  if (((int )isl_oid[(unsigned int )n].flags & 127) == 4) {
    goto case_4;
  } else {
  }
  if (((int )isl_oid[(unsigned int )n].flags & 127) == 5) {
    goto case_5;
  } else {
  }
  if (((int )isl_oid[(unsigned int )n].flags & 127) == 6) {
    goto case_6;
  } else {
  }
  if (((int )isl_oid[(unsigned int )n].flags & 127) == 7) {
    goto case_7;
  } else {
  }
  if (((int )isl_oid[(unsigned int )n].flags & 127) == 8) {
    goto case_8;
  } else {
  }
  if (((int )isl_oid[(unsigned int )n].flags & 127) == 9) {
    goto case_9;
  } else {
  }
  if (((int )isl_oid[(unsigned int )n].flags & 127) == 12) {
    goto case_12;
  } else {
  }
  if (((int )isl_oid[(unsigned int )n].flags & 127) == 2) {
    goto case_2;
  } else {
  }
  if (((int )isl_oid[(unsigned int )n].flags & 127) == 3) {
    goto case_3;
  } else {
  }
  if (((int )isl_oid[(unsigned int )n].flags & 127) == 11) {
    goto case_11;
  } else {
  }
  if (((int )isl_oid[(unsigned int )n].flags & 127) == 10) {
    goto case_10;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = snprintf(str, 1024UL, "%u\n", r->u);
  }
  return (tmp);
  case_4:
  {
  buff = (struct obj_buffer *)r->ptr;
  tmp___0 = snprintf(str, 1024UL, "size=%u\naddr=0x%X\n", buff->size, buff->addr);
  }
  return (tmp___0);
  case_5:
  {
  bss = (struct obj_bss *)r->ptr;
  tmp___1 = snprintf(str, 1024UL, "age=%u\nchannel=%u\ncapinfo=0x%X\nrates=0x%X\nbasic_rates=0x%X\n",
                     (int )bss->age, (int )bss->channel, (int )bss->capinfo, (int )bss->rates,
                     (int )bss->basic_rates);
  }
  return (tmp___1);
  case_6:
  {
  list = (struct obj_bsslist *)r->ptr;
  k = snprintf(str, 1024UL, "nr=%u\n", list->nr);
  i = 0;
  }
  goto ldv_42548;
  ldv_42547:
  {
  tmp___2 = snprintf(str + (unsigned long )k, (size_t )(1024 - k), "bss[%u] :\nage=%u\nchannel=%u\ncapinfo=0x%X\nrates=0x%X\nbasic_rates=0x%X\n",
                     i, (int )list->bsslist[i].age, (int )list->bsslist[i].channel,
                     (int )list->bsslist[i].capinfo, (int )list->bsslist[i].rates,
                     (int )list->bsslist[i].basic_rates);
  k = k + tmp___2;
  i = i + 1;
  }
  ldv_42548: ;
  if ((u32 )i < list->nr) {
    goto ldv_42547;
  } else {
  }
  return (k);
  case_7:
  {
  freq = (struct obj_frequencies *)r->ptr;
  printk("nr : %u\n", (int )freq->nr);
  t = snprintf(str, 1024UL, "nr=%u\n", (int )freq->nr);
  i___0 = 0;
  }
  goto ldv_42555;
  ldv_42554:
  {
  tmp___3 = snprintf(str + (unsigned long )t, (size_t )(1024 - t), "mhz[%u]=%u\n",
                     i___0, (int )freq->mhz[i___0]);
  t = t + tmp___3;
  i___0 = i___0 + 1;
  }
  ldv_42555: ;
  if (i___0 < (int )freq->nr) {
    goto ldv_42554;
  } else {
  }
  return (t);
  case_8:
  {
  mlme = (struct obj_mlme *)r->ptr;
  tmp___4 = snprintf(str, 1024UL, "id=0x%X\nstate=0x%X\ncode=0x%X\n", (int )mlme->id,
                     (int )mlme->state, (int )mlme->code);
  }
  return (tmp___4);
  case_9:
  {
  mlme___0 = (struct obj_mlmeex *)r->ptr;
  tmp___5 = snprintf(str, 1024UL, "id=0x%X\nstate=0x%X\ncode=0x%X\nsize=0x%X\n", (int )mlme___0->id,
                     (int )mlme___0->state, (int )mlme___0->code, (int )mlme___0->size);
  }
  return (tmp___5);
  case_12:
  {
  attach = (struct obj_attachment *)r->ptr;
  tmp___6 = snprintf(str, 1024UL, "id=%d\nsize=%d\n", (int )attach->id, (int )attach->size);
  }
  return (tmp___6);
  case_2:
  {
  ssid = (struct obj_ssid *)r->ptr;
  tmp___7 = snprintf(str, 1024UL, "length=%u\noctets=%.*s\n", (int )ssid->length,
                     (int )ssid->length, (char *)(& ssid->octets));
  }
  return (tmp___7);
  case_3:
  {
  key = (struct obj_key *)r->ptr;
  t___0 = snprintf(str, 1024UL, "type=0x%X\nlength=0x%X\nkey=0x", (int )key->type,
                   (int )key->length);
  i___1 = 0;
  }
  goto ldv_42570;
  ldv_42569:
  {
  tmp___8 = snprintf(str + (unsigned long )t___0, (size_t )(1024 - t___0), "%02X:",
                     (int )key->key[i___1]);
  t___0 = t___0 + tmp___8;
  i___1 = i___1 + 1;
  }
  ldv_42570: ;
  if (i___1 < (int )key->length) {
    goto ldv_42569;
  } else {
  }
  {
  tmp___9 = snprintf(str + (unsigned long )t___0, (size_t )(1024 - t___0), "\n");
  t___0 = t___0 + tmp___9;
  }
  return (t___0);
  case_11: ;
  case_10:
  {
  buff___0 = (unsigned char *)r->ptr;
  t___1 = snprintf(str, 1024UL, "hex data=");
  i___2 = 0;
  }
  goto ldv_42578;
  ldv_42577:
  {
  tmp___10 = snprintf(str + (unsigned long )t___1, (size_t )(1024 - t___1), "%02X:",
                      (int )*(buff___0 + (unsigned long )i___2));
  t___1 = t___1 + tmp___10;
  i___2 = i___2 + 1;
  }
  ldv_42578: ;
  if (i___2 < (int )isl_oid[(unsigned int )n].size) {
    goto ldv_42577;
  } else {
  }
  {
  tmp___11 = snprintf(str + (unsigned long )t___1, (size_t )(1024 - t___1), "\n");
  t___1 = t___1 + tmp___11;
  }
  return (t___1);
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/wireless/prism54/oid_mgt.c"),
                       "i" (899), "i" (12UL));
  __builtin_unreachable();
  }
  switch_break: ;
  }
  return (0);
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
void *ldv_calloc(size_t nmemb , size_t size ) ;
void *ldv_malloc_unknown_size(void) ;
void *ldv_calloc_unknown_size(void) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
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
ldv_set LDV_MUTEXES_lock_of_islpci_acl ;
void ldv_mutex_lock_lock_of_islpci_acl(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_islpci_acl);
  LDV_MUTEXES_lock_of_islpci_acl = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock_of_islpci_acl(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_islpci_acl);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock_of_islpci_acl = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock_of_islpci_acl(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock_of_islpci_acl) {
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
int ldv_mutex_trylock_lock_of_islpci_acl(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock_of_islpci_acl);
  tmp = ldv_mutex_is_locked_lock_of_islpci_acl(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock_of_islpci_acl = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_islpci_acl(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock_of_islpci_acl(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_islpci_acl(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock_of_islpci_acl);
  LDV_MUTEXES_lock_of_islpci_acl = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_mgmt_lock_of_NOT_ARG_SIGN ;
void ldv_mutex_lock_mgmt_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_mgmt_lock_of_NOT_ARG_SIGN);
  LDV_MUTEXES_mgmt_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_mgmt_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_mgmt_lock_of_NOT_ARG_SIGN);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_mgmt_lock_of_NOT_ARG_SIGN = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_mgmt_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_mgmt_lock_of_NOT_ARG_SIGN) {
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
int ldv_mutex_trylock_mgmt_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_mgmt_lock_of_NOT_ARG_SIGN);
  tmp = ldv_mutex_is_locked_mgmt_lock_of_NOT_ARG_SIGN(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_mgmt_lock_of_NOT_ARG_SIGN = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mgmt_lock_of_NOT_ARG_SIGN(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_mgmt_lock_of_NOT_ARG_SIGN(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_mgmt_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_mgmt_lock_of_NOT_ARG_SIGN);
  LDV_MUTEXES_mgmt_lock_of_NOT_ARG_SIGN = 0;
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
ldv_set LDV_MUTEXES_stats_lock_of_NOT_ARG_SIGN ;
void ldv_mutex_lock_stats_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_stats_lock_of_NOT_ARG_SIGN);
  LDV_MUTEXES_stats_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_stats_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_stats_lock_of_NOT_ARG_SIGN);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_stats_lock_of_NOT_ARG_SIGN = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_stats_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_stats_lock_of_NOT_ARG_SIGN) {
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
int ldv_mutex_trylock_stats_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_stats_lock_of_NOT_ARG_SIGN);
  tmp = ldv_mutex_is_locked_stats_lock_of_NOT_ARG_SIGN(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_stats_lock_of_NOT_ARG_SIGN = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_stats_lock_of_NOT_ARG_SIGN(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_stats_lock_of_NOT_ARG_SIGN(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_stats_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_stats_lock_of_NOT_ARG_SIGN);
  LDV_MUTEXES_stats_lock_of_NOT_ARG_SIGN = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_wpa_lock_of_NOT_ARG_SIGN ;
void ldv_mutex_lock_wpa_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_wpa_lock_of_NOT_ARG_SIGN);
  LDV_MUTEXES_wpa_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_wpa_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_wpa_lock_of_NOT_ARG_SIGN);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_wpa_lock_of_NOT_ARG_SIGN = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_wpa_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_wpa_lock_of_NOT_ARG_SIGN) {
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
int ldv_mutex_trylock_wpa_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_wpa_lock_of_NOT_ARG_SIGN);
  tmp = ldv_mutex_is_locked_wpa_lock_of_NOT_ARG_SIGN(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_wpa_lock_of_NOT_ARG_SIGN = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_wpa_lock_of_NOT_ARG_SIGN(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_wpa_lock_of_NOT_ARG_SIGN(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_wpa_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_wpa_lock_of_NOT_ARG_SIGN);
  LDV_MUTEXES_wpa_lock_of_NOT_ARG_SIGN = 0;
  }
  return;
}
}
void ldv_initialize(void)
{
  {
  LDV_MUTEXES_i_mutex_of_inode = 0;
  LDV_MUTEXES_lock = 0;
  LDV_MUTEXES_lock_of_islpci_acl = 0;
  LDV_MUTEXES_mgmt_lock_of_NOT_ARG_SIGN = 0;
  LDV_MUTEXES_mutex_of_device = 0;
  LDV_MUTEXES_stats_lock_of_NOT_ARG_SIGN = 0;
  LDV_MUTEXES_wpa_lock_of_NOT_ARG_SIGN = 0;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock_of_islpci_acl);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_mgmt_lock_of_NOT_ARG_SIGN);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_stats_lock_of_NOT_ARG_SIGN);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_wpa_lock_of_NOT_ARG_SIGN);
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
void __compiletime_assert_106() {
  return;
}
void __compiletime_assert_107() {
  return;
}
void __compiletime_assert_108() {
  return;
}
void __compiletime_assert_109() {
  return;
}
void __compiletime_assert_110() {
  return;
}
void __compiletime_assert_111() {
  return;
}
void __compiletime_assert_112() {
  return;
}
void __compiletime_assert_113() {
  return;
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __dev_kfree_skb_irq(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __init_rwsem(struct rw_semaphore *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
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
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void *external_alloc(void);
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return (struct sk_buff *)external_alloc();
}
void __netif_schedule(struct Qdisc *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void *external_alloc(void);
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return (struct net_device *)external_alloc();
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void down_read(struct rw_semaphore *arg0) {
  return;
}
void down_write(struct rw_semaphore *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int eth_change_mtu(struct net_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
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
void free_netdev(struct net_device *arg0) {
  return;
}
void *external_alloc(void);
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return (void *)external_alloc();
}
void iounmap(volatile void *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int iw_handler_set_spy(struct net_device *arg0, struct iw_request_info *arg1, union iwreq_data *arg2, char *arg3) {
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
int __VERIFIER_nondet_int(void);
int ldv_pre_register_netdev() {
  return __VERIFIER_nondet_int();
}
void ldv_switch_to_interrupt_context() {
  return;
}
void ldv_switch_to_process_context() {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_carrier_on(struct net_device *arg0) {
  return;
}
void netif_device_attach(struct net_device *arg0) {
  return;
}
void netif_device_detach(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_rx(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netpoll_trap() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_clear_mwi(struct pci_dev *arg0) {
  return;
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_restore_state(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_save_state(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_try_set_mwi(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
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
long __VERIFIER_nondet_long(void);
long int schedule_timeout_uninterruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
void *external_alloc(void);
struct sk_buff *skb_copy_expand(const struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return (struct sk_buff *)external_alloc();
}
void *external_alloc(void);
unsigned char *skb_pull(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void *external_alloc(void);
unsigned char *skb_push(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void synchronize_irq(unsigned int arg0) {
  return;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void up_read(struct rw_semaphore *arg0) {
  return;
}
void up_write(struct rw_semaphore *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void wireless_send_event(struct net_device *arg0, unsigned int arg1, union iwreq_data *arg2, const char *arg3) {
  return;
}
void wireless_spy_update(struct net_device *arg0, unsigned char *arg1, struct iw_quality *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int autoremove_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void * arg3) {
  return __VERIFIER_nondet_int();
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
