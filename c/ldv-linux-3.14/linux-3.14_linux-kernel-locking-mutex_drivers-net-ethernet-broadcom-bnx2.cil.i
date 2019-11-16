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
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u16 __sum16;
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
struct ldv_thread;
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
enum system_states {
    SYSTEM_BOOTING = 0,
    SYSTEM_RUNNING = 1,
    SYSTEM_HALT = 2,
    SYSTEM_POWER_OFF = 3,
    SYSTEM_RESTART = 4
} ;
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
typedef int pao_T__;
typedef int pao_T_____0;
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
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iovec *msg_iov ;
   __kernel_size_t msg_iovlen ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
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
enum ldv_21651 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_21651 socket_state;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
};
struct proto_ops;
struct socket {
   socket_state state ;
   short type ;
   unsigned long flags ;
   struct socket_wq *wq ;
   struct file *file ;
   struct sock *sk ;
   struct proto_ops const *ops ;
};
struct proto_ops {
   int family ;
   struct module *owner ;
   int (*release)(struct socket * ) ;
   int (*bind)(struct socket * , struct sockaddr * , int ) ;
   int (*connect)(struct socket * , struct sockaddr * , int , int ) ;
   int (*socketpair)(struct socket * , struct socket * ) ;
   int (*accept)(struct socket * , struct socket * , int ) ;
   int (*getname)(struct socket * , struct sockaddr * , int * , int ) ;
   unsigned int (*poll)(struct file * , struct socket * , struct poll_table_struct * ) ;
   int (*ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*listen)(struct socket * , int ) ;
   int (*shutdown)(struct socket * , int ) ;
   int (*setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*sendmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   int (*set_peek_off)(struct sock * , int ) ;
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
struct in6_addr;
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
struct rtable;
enum pkt_hash_types {
    PKT_HASH_TYPE_NONE = 0,
    PKT_HASH_TYPE_L2 = 1,
    PKT_HASH_TYPE_L3 = 2,
    PKT_HASH_TYPE_L4 = 3
} ;
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
struct icmpv6_mib_device {
   atomic_long_t mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6msg_mib_device {
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
union __anonunion_in6_u_224 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_224 in6_u ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct xfrm_policy;
struct xfrm_state;
struct request_sock;
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
struct netdev_hw_addr {
   struct list_head list ;
   unsigned char addr[32U] ;
   unsigned char type ;
   bool global_use ;
   int sync_cnt ;
   int refcount ;
   int synced ;
   struct callback_head callback_head ;
};
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
enum gro_result {
    GRO_MERGED = 0,
    GRO_MERGED_FREE = 1,
    GRO_HELD = 2,
    GRO_NORMAL = 3,
    GRO_DROP = 4
} ;
typedef enum gro_result gro_result_t;
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
enum ldv_28009 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_28010 {
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
   enum ldv_28009 reg_state : 8 ;
   bool dismantle ;
   enum ldv_28010 rtnl_link_state : 16 ;
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
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
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
struct msix_entry {
   u32 vector ;
   u16 entry ;
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
struct mii_ioctl_data {
   __u16 phy_id ;
   __u16 reg_num ;
   __u16 val_in ;
   __u16 val_out ;
};
struct iphdr {
   __u8 ihl : 4 ;
   __u8 version : 4 ;
   __u8 tos ;
   __be16 tot_len ;
   __be16 id ;
   __be16 frag_off ;
   __u8 ttl ;
   __u8 protocol ;
   __sum16 check ;
   __be32 saddr ;
   __be32 daddr ;
};
struct res_counter {
   unsigned long long usage ;
   unsigned long long max_usage ;
   unsigned long long limit ;
   unsigned long long soft_limit ;
   unsigned long long failcnt ;
   spinlock_t lock ;
   struct res_counter *parent ;
};
struct kioctx;
typedef int kiocb_cancel_fn(struct kiocb * );
union __anonunion_ki_obj_251 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_251 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   size_t ki_nbytes ;
   struct list_head ki_list ;
   struct eventfd_ctx *ki_eventfd ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
union __anonunion____missing_field_name_252 {
   struct sock_filter insns[0U] ;
   struct work_struct work ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned int len ;
   struct callback_head rcu ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter const * ) ;
   union __anonunion____missing_field_name_252 __annonCompField77 ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct rtnl_link_ops {
   struct list_head list ;
   char const *kind ;
   size_t priv_size ;
   void (*setup)(struct net_device * ) ;
   int maxtype ;
   struct nla_policy const *policy ;
   int (*validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*newlink)(struct net * , struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   int (*changelink)(struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   void (*dellink)(struct net_device * , struct list_head * ) ;
   size_t (*get_size)(struct net_device const * ) ;
   int (*fill_info)(struct sk_buff * , struct net_device const * ) ;
   size_t (*get_xstats_size)(struct net_device const * ) ;
   int (*fill_xstats)(struct sk_buff * , struct net_device const * ) ;
   unsigned int (*get_num_tx_queues)(void) ;
   unsigned int (*get_num_rx_queues)(void) ;
   int slave_maxtype ;
   struct nla_policy const *slave_policy ;
   int (*slave_validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*slave_changelink)(struct net_device * , struct net_device * , struct nlattr ** ,
                           struct nlattr ** ) ;
   size_t (*get_slave_size)(struct net_device const * , struct net_device const * ) ;
   int (*fill_slave_info)(struct sk_buff * , struct net_device const * , struct net_device const * ) ;
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct neigh_parms *next ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int reachable_time ;
   int data[12U] ;
   unsigned long data_state[1U] ;
};
struct neigh_statistics {
   unsigned long allocs ;
   unsigned long destroys ;
   unsigned long hash_grows ;
   unsigned long res_failed ;
   unsigned long lookups ;
   unsigned long hits ;
   unsigned long rcv_probes_mcast ;
   unsigned long rcv_probes_ucast ;
   unsigned long periodic_gc_runs ;
   unsigned long forced_gc_runs ;
   unsigned long unres_discards ;
};
struct neigh_ops;
struct neighbour {
   struct neighbour *next ;
   struct neigh_table *tbl ;
   struct neigh_parms *parms ;
   unsigned long confirmed ;
   unsigned long updated ;
   rwlock_t lock ;
   atomic_t refcnt ;
   struct sk_buff_head arp_queue ;
   unsigned int arp_queue_len_bytes ;
   struct timer_list timer ;
   unsigned long used ;
   atomic_t probes ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   seqlock_t ha_lock ;
   unsigned char ha[32U] ;
   struct hh_cache hh ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   struct neigh_ops const *ops ;
   struct callback_head rcu ;
   struct net_device *dev ;
   u8 primary_key[0U] ;
};
struct neigh_ops {
   int family ;
   void (*solicit)(struct neighbour * , struct sk_buff * ) ;
   void (*error_report)(struct neighbour * , struct sk_buff * ) ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   int (*connected_output)(struct neighbour * , struct sk_buff * ) ;
};
struct pneigh_entry {
   struct pneigh_entry *next ;
   struct net *net ;
   struct net_device *dev ;
   u8 flags ;
   u8 key[0U] ;
};
struct neigh_hash_table {
   struct neighbour **hash_buckets ;
   unsigned int hash_shift ;
   __u32 hash_rnd[4U] ;
   struct callback_head rcu ;
};
struct neigh_table {
   struct neigh_table *next ;
   int family ;
   int entry_size ;
   int key_len ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   int gc_interval ;
   int gc_thresh1 ;
   int gc_thresh2 ;
   int gc_thresh3 ;
   unsigned long last_flush ;
   struct delayed_work gc_work ;
   struct timer_list proxy_timer ;
   struct sk_buff_head proxy_queue ;
   atomic_t entries ;
   rwlock_t lock ;
   unsigned long last_rand ;
   struct neigh_statistics *stats ;
   struct neigh_hash_table *nht ;
   struct pneigh_entry **phash_buckets ;
};
struct dn_route;
union __anonunion____missing_field_name_254 {
   struct dst_entry *next ;
   struct rtable *rt_next ;
   struct rt6_info *rt6_next ;
   struct dn_route *dn_next ;
};
struct dst_entry {
   struct callback_head callback_head ;
   struct dst_entry *child ;
   struct net_device *dev ;
   struct dst_ops *ops ;
   unsigned long _metrics ;
   unsigned long expires ;
   struct dst_entry *path ;
   struct dst_entry *from ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sk_buff * ) ;
   unsigned short flags ;
   unsigned short pending_confirm ;
   short error ;
   short obsolete ;
   unsigned short header_len ;
   unsigned short trailer_len ;
   __u32 tclassid ;
   long __pad_to_align_refcnt[2U] ;
   atomic_t __refcnt ;
   int __use ;
   unsigned long lastuse ;
   union __anonunion____missing_field_name_254 __annonCompField78 ;
};
struct __anonstruct_socket_lock_t_255 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_255 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_257 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_256 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_257 __annonCompField79 ;
};
union __anonunion____missing_field_name_258 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_260 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_259 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_260 __annonCompField82 ;
};
union __anonunion____missing_field_name_261 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_262 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_256 __annonCompField80 ;
   union __anonunion____missing_field_name_258 __annonCompField81 ;
   union __anonunion____missing_field_name_259 __annonCompField83 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 4 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_261 __annonCompField84 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_262 __annonCompField85 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_263 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_263 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   unsigned int sk_napi_id ;
   unsigned int sk_ll_usec ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct xfrm_policy *sk_policy[2U] ;
   unsigned long sk_flags ;
   struct dst_entry *sk_rx_dst ;
   struct dst_entry *sk_dst_cache ;
   spinlock_t sk_dst_lock ;
   atomic_t sk_wmem_alloc ;
   atomic_t sk_omem_alloc ;
   int sk_sndbuf ;
   struct sk_buff_head sk_write_queue ;
   unsigned int sk_shutdown : 2 ;
   unsigned int sk_no_check : 2 ;
   unsigned int sk_userlocks : 4 ;
   unsigned int sk_protocol : 8 ;
   unsigned int sk_type : 16 ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
   u32 sk_pacing_rate ;
   u32 sk_max_pacing_rate ;
   netdev_features_t sk_route_caps ;
   netdev_features_t sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   u16 sk_gso_max_segs ;
   int sk_rcvlowat ;
   unsigned long sk_lingertime ;
   struct sk_buff_head sk_error_queue ;
   struct proto *sk_prot_creator ;
   rwlock_t sk_callback_lock ;
   int sk_err ;
   int sk_err_soft ;
   unsigned short sk_ack_backlog ;
   unsigned short sk_max_ack_backlog ;
   __u32 sk_priority ;
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   void *sk_protinfo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   struct socket *sk_socket ;
   void *sk_user_data ;
   struct page_frag sk_frag ;
   struct sk_buff *sk_send_head ;
   __s32 sk_peek_off ;
   int sk_write_pending ;
   void *sk_security ;
   __u32 sk_mark ;
   u32 sk_classid ;
   struct cg_proto *sk_cgrp ;
   void (*sk_state_change)(struct sock * ) ;
   void (*sk_data_ready)(struct sock * , int ) ;
   void (*sk_write_space)(struct sock * ) ;
   void (*sk_error_report)(struct sock * ) ;
   int (*sk_backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*sk_destruct)(struct sock * ) ;
};
struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;
struct udp_table;
union __anonunion_h_264 {
   struct inet_hashinfo *hashinfo ;
   struct udp_table *udp_table ;
   struct raw_hashinfo *raw_hash ;
};
struct proto {
   void (*close)(struct sock * , long ) ;
   int (*connect)(struct sock * , struct sockaddr * , int ) ;
   int (*disconnect)(struct sock * , int ) ;
   struct sock *(*accept)(struct sock * , int , int * ) ;
   int (*ioctl)(struct sock * , int , unsigned long ) ;
   int (*init)(struct sock * ) ;
   void (*destroy)(struct sock * ) ;
   void (*shutdown)(struct sock * , int ) ;
   int (*setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_ioctl)(struct sock * , unsigned int , unsigned long ) ;
   int (*sendmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t , int ,
                  int , int * ) ;
   int (*sendpage)(struct sock * , struct page * , int , size_t , int ) ;
   int (*bind)(struct sock * , struct sockaddr * , int ) ;
   int (*backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*release_cb)(struct sock * ) ;
   void (*mtu_reduced)(struct sock * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
   bool (*stream_memory_free)(struct sock const * ) ;
   void (*enter_memory_pressure)(struct sock * ) ;
   atomic_long_t *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   int *sysctl_wmem ;
   int *sysctl_rmem ;
   int max_header ;
   bool no_autobind ;
   struct kmem_cache *slab ;
   unsigned int obj_size ;
   int slab_flags ;
   struct percpu_counter *orphan_count ;
   struct request_sock_ops *rsk_prot ;
   struct timewait_sock_ops *twsk_prot ;
   union __anonunion_h_264 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   struct res_counter memory_allocated ;
   struct percpu_counter sockets_allocated ;
   int memory_pressure ;
   long sysctl_mem[3U] ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
struct request_sock_ops {
   int family ;
   int obj_size ;
   struct kmem_cache *slab ;
   char *slab_name ;
   int (*rtx_syn_ack)(struct sock * , struct request_sock * ) ;
   void (*send_ack)(struct sock * , struct sk_buff * , struct request_sock * ) ;
   void (*send_reset)(struct sock * , struct sk_buff * ) ;
   void (*destructor)(struct request_sock * ) ;
   void (*syn_ack_timeout)(struct sock * , struct request_sock * ) ;
};
struct request_sock {
   struct sock_common __req_common ;
   struct request_sock *dl_next ;
   u16 mss ;
   u8 num_retrans ;
   u8 cookie_ts : 1 ;
   u8 num_timeout : 7 ;
   u32 window_clamp ;
   u32 rcv_wnd ;
   u32 ts_recent ;
   unsigned long expires ;
   struct request_sock_ops const *rsk_ops ;
   struct sock *sk ;
   u32 secid ;
   u32 peer_secid ;
};
struct ipv6_devconf {
   __s32 forwarding ;
   __s32 hop_limit ;
   __s32 mtu6 ;
   __s32 accept_ra ;
   __s32 accept_redirects ;
   __s32 autoconf ;
   __s32 dad_transmits ;
   __s32 rtr_solicits ;
   __s32 rtr_solicit_interval ;
   __s32 rtr_solicit_delay ;
   __s32 force_mld_version ;
   __s32 mldv1_unsolicited_report_interval ;
   __s32 mldv2_unsolicited_report_interval ;
   __s32 use_tempaddr ;
   __s32 temp_valid_lft ;
   __s32 temp_prefered_lft ;
   __s32 regen_max_retry ;
   __s32 max_desync_factor ;
   __s32 max_addresses ;
   __s32 accept_ra_defrtr ;
   __s32 accept_ra_pinfo ;
   __s32 accept_ra_rtr_pref ;
   __s32 rtr_probe_interval ;
   __s32 accept_ra_rt_info_max_plen ;
   __s32 proxy_ndp ;
   __s32 accept_source_route ;
   __s32 optimistic_dad ;
   __s32 mc_forwarding ;
   __s32 disable_ipv6 ;
   __s32 accept_dad ;
   __s32 force_tllao ;
   __s32 ndisc_notify ;
   __s32 suppress_frag_ndisc ;
   void *sysctl ;
};
struct timewait_sock_ops {
   struct kmem_cache *twsk_slab ;
   char *twsk_slab_name ;
   unsigned int twsk_obj_size ;
   int (*twsk_unique)(struct sock * , struct sock * , void * ) ;
   void (*twsk_destructor)(struct sock * ) ;
};
struct tcphdr {
   __be16 source ;
   __be16 dest ;
   __be32 seq ;
   __be32 ack_seq ;
   __u16 res1 : 4 ;
   __u16 doff : 4 ;
   __u16 fin : 1 ;
   __u16 syn : 1 ;
   __u16 rst : 1 ;
   __u16 psh : 1 ;
   __u16 ack : 1 ;
   __u16 urg : 1 ;
   __u16 ece : 1 ;
   __u16 cwr : 1 ;
   __be16 window ;
   __sum16 check ;
   __be16 urg_ptr ;
};
struct ip6_sf_list {
   struct ip6_sf_list *sf_next ;
   struct in6_addr sf_addr ;
   unsigned long sf_count[2U] ;
   unsigned char sf_gsresp ;
   unsigned char sf_oldin ;
   unsigned char sf_crcount ;
};
struct ifmcaddr6 {
   struct in6_addr mca_addr ;
   struct inet6_dev *idev ;
   struct ifmcaddr6 *next ;
   struct ip6_sf_list *mca_sources ;
   struct ip6_sf_list *mca_tomb ;
   unsigned int mca_sfmode ;
   unsigned char mca_crcount ;
   unsigned long mca_sfcount[2U] ;
   struct timer_list mca_timer ;
   unsigned int mca_flags ;
   int mca_users ;
   atomic_t mca_refcnt ;
   spinlock_t mca_lock ;
   unsigned long mca_cstamp ;
   unsigned long mca_tstamp ;
};
struct ifacaddr6 {
   struct in6_addr aca_addr ;
   struct inet6_dev *aca_idev ;
   struct rt6_info *aca_rt ;
   struct ifacaddr6 *aca_next ;
   int aca_users ;
   atomic_t aca_refcnt ;
   spinlock_t aca_lock ;
   unsigned long aca_cstamp ;
   unsigned long aca_tstamp ;
};
struct ipv6_devstat {
   struct proc_dir_entry *proc_dir_entry ;
   struct ipstats_mib *ipv6[1U] ;
   struct icmpv6_mib_device *icmpv6dev ;
   struct icmpv6msg_mib_device *icmpv6msgdev ;
};
struct inet6_dev {
   struct net_device *dev ;
   struct list_head addr_list ;
   struct ifmcaddr6 *mc_list ;
   struct ifmcaddr6 *mc_tomb ;
   spinlock_t mc_lock ;
   unsigned char mc_qrv ;
   unsigned char mc_gq_running ;
   unsigned char mc_ifc_count ;
   unsigned char mc_dad_count ;
   unsigned long mc_v1_seen ;
   unsigned long mc_qi ;
   unsigned long mc_qri ;
   unsigned long mc_maxdelay ;
   struct timer_list mc_gq_timer ;
   struct timer_list mc_ifc_timer ;
   struct timer_list mc_dad_timer ;
   struct ifacaddr6 *ac_list ;
   rwlock_t lock ;
   atomic_t refcnt ;
   __u32 if_flags ;
   int dead ;
   u8 rndid[8U] ;
   struct timer_list regen_timer ;
   struct list_head tempaddr_list ;
   struct in6_addr token ;
   struct neigh_parms *nd_parms ;
   struct ipv6_devconf cnf ;
   struct ipv6_devstat stats ;
   struct timer_list rs_timer ;
   __u8 rs_probes ;
   unsigned long tstamp ;
   struct callback_head rcu ;
};
union __anonunion____missing_field_name_276 {
   __be32 a4 ;
   __be32 a6[4U] ;
};
struct inetpeer_addr_base {
   union __anonunion____missing_field_name_276 __annonCompField86 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion____missing_field_name_277 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct____missing_field_name_279 {
   atomic_t rid ;
   atomic_t ip_id_count ;
};
union __anonunion____missing_field_name_278 {
   struct __anonstruct____missing_field_name_279 __annonCompField88 ;
   struct callback_head rcu ;
   struct inet_peer *gc_next ;
};
struct inet_peer {
   struct inet_peer *avl_left ;
   struct inet_peer *avl_right ;
   struct inetpeer_addr daddr ;
   __u32 avl_height ;
   u32 metrics[15U] ;
   u32 rate_tokens ;
   unsigned long rate_last ;
   union __anonunion____missing_field_name_277 __annonCompField87 ;
   union __anonunion____missing_field_name_278 __annonCompField89 ;
   __u32 dtime ;
   atomic_t refcnt ;
};
struct inet_peer_base {
   struct inet_peer *root ;
   seqlock_t lock ;
   u32 flush_seq ;
   int total ;
};
struct rtable {
   struct dst_entry dst ;
   int rt_genid ;
   unsigned int rt_flags ;
   __u16 rt_type ;
   __u8 rt_is_input ;
   __u8 rt_uses_gateway ;
   int rt_iif ;
   __be32 rt_gateway ;
   u32 rt_pmtu ;
   struct list_head rt_uncached ;
};
struct inet_ehash_bucket {
   struct hlist_nulls_head chain ;
};
struct inet_bind_hashbucket {
   spinlock_t lock ;
   struct hlist_head chain ;
};
struct inet_listen_hashbucket {
   spinlock_t lock ;
   struct hlist_nulls_head head ;
};
struct inet_hashinfo {
   struct inet_ehash_bucket *ehash ;
   spinlock_t *ehash_locks ;
   unsigned int ehash_mask ;
   unsigned int ehash_locks_mask ;
   struct inet_bind_hashbucket *bhash ;
   unsigned int bhash_size ;
   struct kmem_cache *bind_bucket_cachep ;
   struct inet_listen_hashbucket listening_hash[32U] ;
   atomic_t bsockets ;
};
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct fcoe_capabilities {
   u32 capability1 ;
   u32 capability2 ;
   u32 capability3 ;
   u32 capability4 ;
};
struct eth_stats_info {
   u8 version[12U] ;
   u8 mac_local[8U] ;
   u8 mac_add1[8U] ;
   u8 mac_add2[8U] ;
   u32 mtu_size ;
   u32 feature_flags ;
   u32 lso_max_size ;
   u32 lso_min_seg_cnt ;
   u32 ipv4_ofld_cnt ;
   u32 ipv6_ofld_cnt ;
   u32 promiscuous_mode ;
   u32 txq_size ;
   u32 rxq_size ;
   u32 txq_avg_depth ;
   u32 rxq_avg_depth ;
   u32 iov_offload ;
   u32 netq_cnt ;
   u32 vf_cnt ;
};
struct fcoe_stats_info {
   u8 version[12U] ;
   u8 mac_local[8U] ;
   u8 mac_add1[8U] ;
   u8 mac_add2[8U] ;
   u32 qos_priority ;
   u32 txq_size ;
   u32 rxq_size ;
   u32 txq_avg_depth ;
   u32 rxq_avg_depth ;
   u32 rx_frames_lo ;
   u32 rx_frames_hi ;
   u32 rx_bytes_lo ;
   u32 rx_bytes_hi ;
   u32 tx_frames_lo ;
   u32 tx_frames_hi ;
   u32 tx_bytes_lo ;
   u32 tx_bytes_hi ;
};
struct iscsi_stats_info {
   u8 version[12U] ;
   u8 mac_local[8U] ;
   u8 mac_add1[8U] ;
   u32 qos_priority ;
   u8 initiator_name[64U] ;
   u8 ww_port_name[64U] ;
   u8 boot_target_name[64U] ;
   u8 boot_target_ip[16U] ;
   u32 boot_target_portal ;
   u8 boot_init_ip[16U] ;
   u32 max_frame_size ;
   u32 txq_size ;
   u32 rxq_size ;
   u32 txq_avg_depth ;
   u32 rxq_avg_depth ;
   u32 rx_pdus_lo ;
   u32 rx_pdus_hi ;
   u32 rx_bytes_lo ;
   u32 rx_bytes_hi ;
   u32 tx_pdus_lo ;
   u32 tx_pdus_hi ;
   u32 tx_bytes_lo ;
   u32 tx_bytes_hi ;
   u32 pcp_prior_map_tbl ;
};
union drv_info_to_mcp {
   struct eth_stats_info ether_stat ;
   struct fcoe_stats_info fcoe_stat ;
   struct iscsi_stats_info iscsi_stat ;
};
struct kwqe {
   u32 kwqe_op_flag ;
   u32 kwqe_info0 ;
   u32 kwqe_info1 ;
   u32 kwqe_info2 ;
   u32 kwqe_info3 ;
   u32 kwqe_info4 ;
   u32 kwqe_info5 ;
   u32 kwqe_info6 ;
};
struct kwqe_16 {
   u32 kwqe_info0 ;
   u32 kwqe_info1 ;
   u32 kwqe_info2 ;
   u32 kwqe_info3 ;
};
struct cnic_ctl_completion {
   u32 cid ;
   u8 opcode ;
   u8 error ;
};
union __anonunion_data_284 {
   struct cnic_ctl_completion comp ;
   char bytes[64U] ;
};
struct cnic_ctl_info {
   int cmd ;
   union __anonunion_data_284 data ;
};
struct drv_ctl_spq_credit {
   u32 credit_count ;
};
struct drv_ctl_io {
   u32 cid_addr ;
   u32 offset ;
   u32 data ;
   dma_addr_t dma_addr ;
};
struct drv_ctl_l2_ring {
   u32 client_id ;
   u32 cid ;
};
struct drv_ctl_register_data {
   int ulp_type ;
   struct fcoe_capabilities fcoe_features ;
};
union __anonunion_data_285 {
   struct drv_ctl_spq_credit credit ;
   struct drv_ctl_io io ;
   struct drv_ctl_l2_ring ring ;
   int ulp_type ;
   struct drv_ctl_register_data register_data ;
   char bytes[64U] ;
};
struct drv_ctl_info {
   int cmd ;
   union __anonunion_data_285 data ;
};
struct cnic_ops {
   struct module *cnic_owner ;
   int (*cnic_handler)(void * , void * ) ;
   int (*cnic_ctl)(void * , struct cnic_ctl_info * ) ;
};
struct cnic_irq {
   unsigned int vector ;
   void *status_blk ;
   u32 status_blk_num ;
   u32 status_blk_num2 ;
   u32 irq_flags ;
};
struct cnic_eth_dev {
   struct module *drv_owner ;
   u32 drv_state ;
   u32 chip_id ;
   u32 max_kwqe_pending ;
   struct pci_dev *pdev ;
   void *io_base ;
   void *io_base2 ;
   void const *iro_arr ;
   u32 ctx_tbl_offset ;
   u32 ctx_tbl_len ;
   int ctx_blk_size ;
   u32 starting_cid ;
   u32 max_iscsi_conn ;
   u32 max_fcoe_conn ;
   u32 max_rdma_conn ;
   u32 fcoe_init_cid ;
   u32 max_fcoe_exchanges ;
   u32 fcoe_wwn_port_name_hi ;
   u32 fcoe_wwn_port_name_lo ;
   u32 fcoe_wwn_node_name_hi ;
   u32 fcoe_wwn_node_name_lo ;
   u16 iscsi_l2_client_id ;
   u16 iscsi_l2_cid ;
   u8 iscsi_mac[6U] ;
   int num_irq ;
   struct cnic_irq irq_arr[8U] ;
   int (*drv_register_cnic)(struct net_device * , struct cnic_ops * , void * ) ;
   int (*drv_unregister_cnic)(struct net_device * ) ;
   int (*drv_submit_kwqes_32)(struct net_device * , struct kwqe ** , u32 ) ;
   int (*drv_submit_kwqes_16)(struct net_device * , struct kwqe_16 ** , u32 ) ;
   int (*drv_ctl)(struct net_device * , struct drv_ctl_info * ) ;
   unsigned long reserved1[2U] ;
   union drv_info_to_mcp *addr_drv_info_to_mcp ;
};
struct bnx2_tx_bd {
   u32 tx_bd_haddr_hi ;
   u32 tx_bd_haddr_lo ;
   u32 tx_bd_mss_nbytes ;
   u32 tx_bd_vlan_tag_flags ;
};
struct bnx2_rx_bd {
   u32 rx_bd_haddr_hi ;
   u32 rx_bd_haddr_lo ;
   u32 rx_bd_len ;
   u32 rx_bd_flags ;
};
struct status_block {
   u32 status_attn_bits ;
   u32 status_attn_bits_ack ;
   u16 status_tx_quick_consumer_index1 ;
   u16 status_tx_quick_consumer_index0 ;
   u16 status_tx_quick_consumer_index3 ;
   u16 status_tx_quick_consumer_index2 ;
   u16 status_rx_quick_consumer_index1 ;
   u16 status_rx_quick_consumer_index0 ;
   u16 status_rx_quick_consumer_index3 ;
   u16 status_rx_quick_consumer_index2 ;
   u16 status_rx_quick_consumer_index5 ;
   u16 status_rx_quick_consumer_index4 ;
   u16 status_rx_quick_consumer_index7 ;
   u16 status_rx_quick_consumer_index6 ;
   u16 status_rx_quick_consumer_index9 ;
   u16 status_rx_quick_consumer_index8 ;
   u16 status_rx_quick_consumer_index11 ;
   u16 status_rx_quick_consumer_index10 ;
   u16 status_rx_quick_consumer_index13 ;
   u16 status_rx_quick_consumer_index12 ;
   u16 status_rx_quick_consumer_index15 ;
   u16 status_rx_quick_consumer_index14 ;
   u16 status_cmd_consumer_index ;
   u16 status_completion_producer_index ;
   u8 status_blk_num ;
   u8 status_unused ;
   u16 status_idx ;
};
struct status_block_msix {
   u16 status_rx_quick_consumer_index ;
   u16 status_tx_quick_consumer_index ;
   u16 status_cmd_consumer_index ;
   u16 status_completion_producer_index ;
   u32 status_unused ;
   u8 status_blk_num ;
   u8 status_unused2 ;
   u16 status_idx ;
};
struct statistics_block {
   u32 stat_IfHCInOctets_hi ;
   u32 stat_IfHCInOctets_lo ;
   u32 stat_IfHCInBadOctets_hi ;
   u32 stat_IfHCInBadOctets_lo ;
   u32 stat_IfHCOutOctets_hi ;
   u32 stat_IfHCOutOctets_lo ;
   u32 stat_IfHCOutBadOctets_hi ;
   u32 stat_IfHCOutBadOctets_lo ;
   u32 stat_IfHCInUcastPkts_hi ;
   u32 stat_IfHCInUcastPkts_lo ;
   u32 stat_IfHCInMulticastPkts_hi ;
   u32 stat_IfHCInMulticastPkts_lo ;
   u32 stat_IfHCInBroadcastPkts_hi ;
   u32 stat_IfHCInBroadcastPkts_lo ;
   u32 stat_IfHCOutUcastPkts_hi ;
   u32 stat_IfHCOutUcastPkts_lo ;
   u32 stat_IfHCOutMulticastPkts_hi ;
   u32 stat_IfHCOutMulticastPkts_lo ;
   u32 stat_IfHCOutBroadcastPkts_hi ;
   u32 stat_IfHCOutBroadcastPkts_lo ;
   u32 stat_emac_tx_stat_dot3statsinternalmactransmiterrors ;
   u32 stat_Dot3StatsCarrierSenseErrors ;
   u32 stat_Dot3StatsFCSErrors ;
   u32 stat_Dot3StatsAlignmentErrors ;
   u32 stat_Dot3StatsSingleCollisionFrames ;
   u32 stat_Dot3StatsMultipleCollisionFrames ;
   u32 stat_Dot3StatsDeferredTransmissions ;
   u32 stat_Dot3StatsExcessiveCollisions ;
   u32 stat_Dot3StatsLateCollisions ;
   u32 stat_EtherStatsCollisions ;
   u32 stat_EtherStatsFragments ;
   u32 stat_EtherStatsJabbers ;
   u32 stat_EtherStatsUndersizePkts ;
   u32 stat_EtherStatsOverrsizePkts ;
   u32 stat_EtherStatsPktsRx64Octets ;
   u32 stat_EtherStatsPktsRx65Octetsto127Octets ;
   u32 stat_EtherStatsPktsRx128Octetsto255Octets ;
   u32 stat_EtherStatsPktsRx256Octetsto511Octets ;
   u32 stat_EtherStatsPktsRx512Octetsto1023Octets ;
   u32 stat_EtherStatsPktsRx1024Octetsto1522Octets ;
   u32 stat_EtherStatsPktsRx1523Octetsto9022Octets ;
   u32 stat_EtherStatsPktsTx64Octets ;
   u32 stat_EtherStatsPktsTx65Octetsto127Octets ;
   u32 stat_EtherStatsPktsTx128Octetsto255Octets ;
   u32 stat_EtherStatsPktsTx256Octetsto511Octets ;
   u32 stat_EtherStatsPktsTx512Octetsto1023Octets ;
   u32 stat_EtherStatsPktsTx1024Octetsto1522Octets ;
   u32 stat_EtherStatsPktsTx1523Octetsto9022Octets ;
   u32 stat_XonPauseFramesReceived ;
   u32 stat_XoffPauseFramesReceived ;
   u32 stat_OutXonSent ;
   u32 stat_OutXoffSent ;
   u32 stat_FlowControlDone ;
   u32 stat_MacControlFramesReceived ;
   u32 stat_XoffStateEntered ;
   u32 stat_IfInFramesL2FilterDiscards ;
   u32 stat_IfInRuleCheckerDiscards ;
   u32 stat_IfInFTQDiscards ;
   u32 stat_IfInMBUFDiscards ;
   u32 stat_IfInRuleCheckerP4Hit ;
   u32 stat_CatchupInRuleCheckerDiscards ;
   u32 stat_CatchupInFTQDiscards ;
   u32 stat_CatchupInMBUFDiscards ;
   u32 stat_CatchupInRuleCheckerP4Hit ;
   u32 stat_GenStat00 ;
   u32 stat_GenStat01 ;
   u32 stat_GenStat02 ;
   u32 stat_GenStat03 ;
   u32 stat_GenStat04 ;
   u32 stat_GenStat05 ;
   u32 stat_GenStat06 ;
   u32 stat_GenStat07 ;
   u32 stat_GenStat08 ;
   u32 stat_GenStat09 ;
   u32 stat_GenStat10 ;
   u32 stat_GenStat11 ;
   u32 stat_GenStat12 ;
   u32 stat_GenStat13 ;
   u32 stat_GenStat14 ;
   u32 stat_GenStat15 ;
   u32 stat_FwRxDrop ;
};
struct l2_fhdr {
   u32 l2_fhdr_status ;
   u32 l2_fhdr_hash ;
   u16 l2_fhdr_vlan_tag ;
   u16 l2_fhdr_pkt_len ;
   u16 l2_fhdr_tcp_udp_xsum ;
   u16 l2_fhdr_ip_xsum ;
};
struct bnx2_sw_bd {
   u8 *data ;
   dma_addr_t mapping ;
};
struct bnx2_sw_pg {
   struct page *page ;
   dma_addr_t mapping ;
};
struct bnx2_sw_tx_bd {
   struct sk_buff *skb ;
   dma_addr_t mapping ;
   unsigned short is_gso ;
   unsigned short nr_frags ;
};
struct flash_spec {
   u32 strapping ;
   u32 config1 ;
   u32 config2 ;
   u32 config3 ;
   u32 write1 ;
   u32 flags ;
   u32 page_bits ;
   u32 page_size ;
   u32 addr_mask ;
   u32 total_size ;
   u8 *name ;
};
struct bnx2_irq {
   irqreturn_t (*handler)(int , void * ) ;
   unsigned int vector ;
   u8 requested ;
   char name[18U] ;
};
struct bnx2_tx_ring_info {
   u32 tx_prod_bseq ;
   u16 tx_prod ;
   u32 tx_bidx_addr ;
   u32 tx_bseq_addr ;
   struct bnx2_tx_bd *tx_desc_ring ;
   struct bnx2_sw_tx_bd *tx_buf_ring ;
   u16 tx_cons ;
   u16 hw_tx_cons ;
   dma_addr_t tx_desc_mapping ;
};
struct bnx2_rx_ring_info {
   u32 rx_prod_bseq ;
   u16 rx_prod ;
   u16 rx_cons ;
   u32 rx_bidx_addr ;
   u32 rx_bseq_addr ;
   u32 rx_pg_bidx_addr ;
   u16 rx_pg_prod ;
   u16 rx_pg_cons ;
   struct bnx2_sw_bd *rx_buf_ring ;
   struct bnx2_rx_bd *rx_desc_ring[8U] ;
   struct bnx2_sw_pg *rx_pg_ring ;
   struct bnx2_rx_bd *rx_pg_desc_ring[32U] ;
   dma_addr_t rx_desc_mapping[8U] ;
   dma_addr_t rx_pg_desc_mapping[32U] ;
};
struct bnx2;
union __anonunion_status_blk_288 {
   struct status_block *msi ;
   struct status_block_msix *msix ;
};
struct bnx2_napi {
   struct napi_struct napi ;
   struct bnx2 *bp ;
   union __anonunion_status_blk_288 status_blk ;
   u16 *hw_tx_cons_ptr ;
   u16 *hw_rx_cons_ptr ;
   u32 last_status_idx ;
   u32 int_num ;
   u32 cnic_tag ;
   int cnic_present ;
   struct bnx2_rx_ring_info rx_ring ;
   struct bnx2_tx_ring_info tx_ring ;
};
struct bnx2 {
   void *regview ;
   struct net_device *dev ;
   struct pci_dev *pdev ;
   atomic_t intr_sem ;
   u32 flags ;
   struct bnx2_napi bnx2_napi[9U] ;
   u32 rx_buf_use_size ;
   u32 rx_buf_size ;
   u32 rx_copy_thresh ;
   u32 rx_jumbo_thresh ;
   u32 rx_max_ring_idx ;
   u32 rx_max_pg_ring_idx ;
   int tx_ring_size ;
   u32 tx_wake_thresh ;
   struct cnic_ops *cnic_ops ;
   void *cnic_data ;
   unsigned int current_interval ;
   struct timer_list timer ;
   struct work_struct reset_task ;
   spinlock_t phy_lock ;
   spinlock_t indirect_lock ;
   u32 phy_flags ;
   u32 mii_bmcr ;
   u32 mii_bmsr ;
   u32 mii_bmsr1 ;
   u32 mii_adv ;
   u32 mii_lpa ;
   u32 mii_up1 ;
   u32 chip_id ;
   u32 phy_addr ;
   u32 phy_id ;
   u16 bus_speed_mhz ;
   u8 wol ;
   u8 pad ;
   u16 fw_wr_seq ;
   u16 fw_drv_pulse_wr_seq ;
   u32 fw_last_msg ;
   int rx_max_ring ;
   int rx_ring_size ;
   int rx_max_pg_ring ;
   int rx_pg_ring_size ;
   u16 tx_quick_cons_trip ;
   u16 tx_quick_cons_trip_int ;
   u16 rx_quick_cons_trip ;
   u16 rx_quick_cons_trip_int ;
   u16 comp_prod_trip ;
   u16 comp_prod_trip_int ;
   u16 tx_ticks ;
   u16 tx_ticks_int ;
   u16 com_ticks ;
   u16 com_ticks_int ;
   u16 cmd_ticks ;
   u16 cmd_ticks_int ;
   u16 rx_ticks ;
   u16 rx_ticks_int ;
   u32 stats_ticks ;
   dma_addr_t status_blk_mapping ;
   struct statistics_block *stats_blk ;
   struct statistics_block *temp_stats_blk ;
   dma_addr_t stats_blk_mapping ;
   int ctx_pages ;
   void *ctx_blk[4U] ;
   dma_addr_t ctx_blk_mapping[4U] ;
   u32 hc_cmd ;
   u32 rx_mode ;
   u16 req_line_speed ;
   u8 req_duplex ;
   u8 phy_port ;
   u8 link_up ;
   u16 line_speed ;
   u8 duplex ;
   u8 flow_ctrl ;
   u32 advertising ;
   u8 req_flow_ctrl ;
   u8 autoneg ;
   u8 loopback ;
   u8 serdes_an_pending ;
   u8 mac_addr[8U] ;
   u32 shmem_base ;
   char fw_version[32U] ;
   int pm_cap ;
   int pcix_cap ;
   struct flash_spec const *flash_info ;
   u32 flash_size ;
   int status_stats_size ;
   struct bnx2_irq irq_tbl[9U] ;
   int irq_nvecs ;
   u8 func ;
   u8 num_tx_rings ;
   u8 num_rx_rings ;
   int num_req_tx_rings ;
   int num_req_rx_rings ;
   u32 leds_save ;
   u32 idle_chk_status_idx ;
   struct mutex cnic_lock ;
   struct cnic_eth_dev cnic_eth_dev ;
   struct cnic_eth_dev *(*cnic_probe)(struct net_device * ) ;
   struct firmware const *mips_firmware ;
   struct firmware const *rv2p_firmware ;
};
struct cpu_reg {
   u32 mode ;
   u32 mode_value_halt ;
   u32 mode_value_sstep ;
   u32 state ;
   u32 state_value_clear ;
   u32 gpr0 ;
   u32 evmask ;
   u32 pc ;
   u32 inst ;
   u32 bp ;
   u32 spad_base ;
   u32 mips_view_base ;
};
struct bnx2_fw_file_section {
   __be32 addr ;
   __be32 len ;
   __be32 offset ;
};
struct bnx2_mips_fw_file_entry {
   __be32 start_addr ;
   struct bnx2_fw_file_section text ;
   struct bnx2_fw_file_section data ;
   struct bnx2_fw_file_section rodata ;
};
struct bnx2_rv2p_fw_file_entry {
   struct bnx2_fw_file_section rv2p ;
   __be32 fixup[8U] ;
};
struct bnx2_mips_fw_file {
   struct bnx2_mips_fw_file_entry com ;
   struct bnx2_mips_fw_file_entry cp ;
   struct bnx2_mips_fw_file_entry rxp ;
   struct bnx2_mips_fw_file_entry tpat ;
   struct bnx2_mips_fw_file_entry txp ;
};
struct bnx2_rv2p_fw_file {
   struct bnx2_rv2p_fw_file_entry proc1 ;
   struct bnx2_rv2p_fw_file_entry proc2 ;
};
struct __anonstruct_board_info_289 {
   char *name ;
};
struct __anonstruct_reg_tbl_292 {
   u16 offset ;
   u16 flags ;
   u32 rw_mask ;
   u32 ro_mask ;
};
struct mem_entry {
   u32 offset ;
   u32 len ;
};
struct ftq_reg {
   char *name ;
   u32 off ;
};
struct __anonstruct_bnx2_stats_str_arr_294 {
   char string[32U] ;
};
struct __anonstruct_bnx2_tests_str_arr_295 {
   char string[32U] ;
};
struct ldv_struct_dummy_resourceless_instance_1 {
   struct net_device *arg0 ;
   int signal_pending ;
};
struct ldv_struct_free_irq_8 {
   int arg0 ;
   int signal_pending ;
};
struct ldv_struct_interrupt_instance_0 {
   int arg0 ;
   enum irqreturn (*arg1)(int , void * ) ;
   enum irqreturn (*arg2)(int , void * ) ;
   void *arg3 ;
   int signal_pending ;
};
struct ldv_struct_pci_instance_2 {
   struct pci_driver *arg0 ;
   int signal_pending ;
};
struct ldv_struct_platform_instance_4 {
   int signal_pending ;
};
struct ldv_struct_timer_instance_5 {
   struct timer_list *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef struct net_device *ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
typedef int ldv_func_ret_type___10;
typedef int ldv_func_ret_type___11;
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
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
typedef _Bool ldv_set;
void __builtin_prefetch(void const * , ...) ;
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
static void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_21(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cnic_lock_of_bnx2(struct mutex *lock ) ;
void ldv_mutex_unlock_cnic_lock_of_bnx2(struct mutex *lock ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
extern int ldv_pre_register_netdev(void) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
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
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
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
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
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
__inline static unsigned int fls_long(unsigned long l )
{
  int tmp___0 ;
  {
  {
  tmp___0 = fls64((__u64 )l);
  }
  return ((unsigned int )tmp___0);
}
}
__inline static unsigned long __rounddown_pow_of_two(unsigned long n )
{
  unsigned int tmp ;
  {
  {
  tmp = fls_long(n);
  }
  return (1UL << (int )(tmp - 1U));
}
}
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern enum system_states system_state ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __bad_percpu_size(void) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/7cdfae59d3ac602223400f61d8829e28/klever-core-work-dir/46e2119/linux-kernel-locking-mutex/lkbce/arch/x86/include/asm/paravirt.h"),
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
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_dec_and_test(atomic_t *v )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void lock_acquire(struct lockdep_map * , unsigned int , int , int , int ,
                         struct lockdep_map * , unsigned long ) ;
extern void lock_release(struct lockdep_map * , int , unsigned long ) ;
extern int lock_is_held(struct lockdep_map * ) ;
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 ) ;
extern int __preempt_count ;
__inline static void __preempt_count_add(int val )
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
    __asm__ ("incb %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_6430;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6430;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6430;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6430;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6430: ;
  return;
}
}
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
    __asm__ ("incb %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_6442;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6442;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6442;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6442;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6442: ;
  return;
}
}
extern void __local_bh_disable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_disable(void)
{
  {
  {
  __local_bh_disable_ip((unsigned long )((void *)0), 512U);
  }
  return;
}
}
extern void __local_bh_enable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_enable(void)
{
  {
  {
  __local_bh_enable_ip((unsigned long )((void *)0), 512U);
  }
  return;
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_bh(& lock->__annonCompField19.rlock);
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
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_bh(& lock->__annonCompField19.rlock);
  }
  return;
}
}
extern void synchronize_sched(void) ;
__inline static void __rcu_read_lock(void)
{
  {
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  }
  return;
}
}
__inline static void __rcu_read_unlock(void)
{
  {
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  }
  return;
}
}
__inline static void synchronize_rcu(void)
{
  {
  {
  synchronize_sched();
  }
  return;
}
}
extern bool rcu_is_watching(void) ;
extern bool rcu_lockdep_current_cpu_online(void) ;
__inline static void rcu_lock_acquire(struct lockdep_map *map )
{
  {
  {
  lock_acquire(map, 0U, 0, 2, 1, (struct lockdep_map *)0, (unsigned long )((void *)0));
  }
  return;
}
}
__inline static void rcu_lock_release(struct lockdep_map *map )
{
  {
  {
  lock_release(map, 1, (unsigned long )((void *)0));
  }
  return;
}
}
extern struct lockdep_map rcu_lock_map ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static int rcu_read_lock_held(void)
{
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  {
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp == 0) {
    return (1);
  } else {
  }
  {
  tmp___0 = rcu_is_watching();
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  {
  tmp___2 = rcu_lockdep_current_cpu_online();
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (0);
  } else {
  }
  {
  tmp___4 = lock_is_held(& rcu_lock_map);
  }
  return (tmp___4);
}
}
__inline static void rcu_read_lock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  __rcu_read_lock();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    tmp___0 = rcu_is_watching();
    }
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 812, "rcu_read_lock() used illegally while idle");
      }
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    tmp___0 = rcu_is_watching();
    }
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 833, "rcu_read_unlock() used illegally while idle");
      }
    } else {
    }
  } else {
  }
  {
  rcu_lock_release(& rcu_lock_map);
  __rcu_read_unlock();
  }
  return;
}
}
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
static int ldv_mod_timer_23(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_24(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_27(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_30(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
static int ldv_del_timer_sync_28(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_sync_29(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_sync_37(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_sync_39(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_sync_40(struct timer_list *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
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
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
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
__inline static void writew(unsigned short val , void volatile *addr )
{
  {
  __asm__ volatile ("movw %0,%1": : "r" (val), "m" (*((unsigned short volatile *)addr)): "memory");
  return;
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void pci_iounmap(struct pci_dev * , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
extern void *vzalloc(unsigned long ) ;
extern void vfree(void const * ) ;
extern int cpu_number ;
extern void __bad_size_call_parameter(void) ;
extern struct page *alloc_pages_current(gfp_t , unsigned int ) ;
__inline static struct page *alloc_pages(gfp_t gfp_mask , unsigned int order )
{
  struct page *tmp ;
  {
  {
  tmp = alloc_pages_current(gfp_mask, order);
  }
  return (tmp);
}
}
extern void __free_pages(struct page * , unsigned int ) ;
extern void device_set_wakeup_capable(struct device * , bool ) ;
extern int device_set_wakeup_enable(struct device * , bool ) ;
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  {
  tmp = kobject_name(& dev->kobj);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_13(struct device const *dev ) ;
static int ldv_dev_set_drvdata_14(struct device *dev , void *data ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern unsigned long msleep_interruptible(unsigned int ) ;
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
__inline static struct page *compound_head(struct page *page )
{
  struct page *head ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp___1 = PageTail((struct page const *)page);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    head = page->__annonCompField46.first_page;
    __asm__ volatile ("": : : "memory");
    tmp = PageTail((struct page const *)page);
    tmp___0 = ldv__builtin_expect(tmp != 0, 1L);
    }
    if (tmp___0 != 0L) {
      return (head);
    } else {
    }
  } else {
  }
  return (page);
}
}
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static void dql_queued(struct dql *dql , unsigned int count )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect(count > 268435455U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/dynamic_queue_limits.h"),
                         "i" (74), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  dql->num_queued = dql->num_queued + count;
  dql->last_obj_cnt = count;
  return;
}
}
__inline static int dql_avail(struct dql const *dql )
{
  {
  return ((int )((unsigned int )dql->adj_limit - (unsigned int )dql->num_queued));
}
}
extern void dql_completed(struct dql * , unsigned int ) ;
extern void dql_reset(struct dql * ) ;
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
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
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((unsigned int )dma_direction <= 2U);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
extern void debug_dma_sync_single_for_device(struct device * , dma_addr_t , size_t ,
                                             int ) ;
extern struct device x86_dma_fallback_dev ;
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
__inline static dma_addr_t dma_map_page(struct device *dev , struct page *page , size_t offset ,
                                        size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = lowmem_page_address((struct page const *)page);
  kmemcheck_mark_initialized(tmp___0 + offset, (unsigned int )size);
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (79), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  addr = (*(ops->map_page))(dev, page, offset, size, dir, (struct dma_attrs *)0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  }
  return (addr);
}
}
__inline static void dma_unmap_page(struct device *dev , dma_addr_t addr , size_t size ,
                                    enum dma_data_direction dir )
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
                         "i" (91), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    {
    (*(ops->unmap_page))(dev, addr, size, dir, (struct dma_attrs *)0);
    }
  } else {
  }
  {
  debug_dma_unmap_page(dev, addr, size, (int )dir, 0);
  }
  return;
}
}
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
__inline static void dma_sync_single_for_device(struct device *dev , dma_addr_t addr ,
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
                         "i" (115), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->sync_single_for_device != (unsigned long )((void (*)(struct device * ,
                                                                                dma_addr_t ,
                                                                                size_t ,
                                                                                enum dma_data_direction ))0)) {
    {
    (*(ops->sync_single_for_device))(dev, addr, size, dir);
    }
  } else {
  }
  {
  debug_dma_sync_single_for_device(dev, addr, size, (int )dir);
  }
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  }
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    }
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
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
    warn_slowpath_null("/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/7cdfae59d3ac602223400f61d8829e28/klever-core-work-dir/46e2119/linux-kernel-locking-mutex/lkbce/arch/x86/include/asm/dma-mapping.h",
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
__inline static int dma_set_coherent_mask(struct device *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_supported(dev, mask);
  }
  if (tmp == 0) {
    return (-5);
  } else {
  }
  dev->coherent_dma_mask = mask;
  return (0);
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *dma_zalloc_coherent(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                          gfp_t flag )
{
  void *ret ;
  void *tmp ;
  {
  {
  tmp = dma_alloc_attrs(dev, size, dma_handle, flag | 32768U, (struct dma_attrs *)0);
  ret = tmp;
  }
  return (ret);
}
}
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
__inline static void skb_frag_size_set(skb_frag_t *frag , unsigned int size )
{
  {
  frag->size = size;
  return;
}
}
__inline static void skb_frag_size_sub(skb_frag_t *frag , int delta )
{
  {
  frag->size = frag->size - (__u32 )delta;
  return;
}
}
extern void consume_skb(struct sk_buff * ) ;
extern struct sk_buff *build_skb(void * , unsigned int ) ;
__inline static void skb_set_hash(struct sk_buff *skb , __u32 hash , enum pkt_hash_types type )
{
  {
  skb->l4_rxhash = (unsigned int )type == 3U;
  skb->rxhash = hash;
  return;
}
}
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
__inline static void __skb_fill_page_desc(struct sk_buff *skb , int i , struct page *page ,
                                          int off , int size )
{
  skb_frag_t *frag ;
  unsigned char *tmp ;
  {
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  frag = (skb_frag_t *)(& ((struct skb_shared_info *)tmp)->frags) + (unsigned long )i;
  frag->page.p = page;
  frag->page_offset = (__u32 )off;
  skb_frag_size_set(frag, (unsigned int )size);
  page = compound_head(page);
  }
  if ((int )page->__annonCompField43.__annonCompField38.pfmemalloc && (unsigned long )page->__annonCompField37.mapping == (unsigned long )((struct address_space *)0)) {
    skb->pfmemalloc = 1U;
  } else {
  }
  return;
}
}
__inline static void skb_fill_page_desc(struct sk_buff *skb , int i , struct page *page ,
                                        int off , int size )
{
  unsigned char *tmp ;
  {
  {
  __skb_fill_page_desc(skb, i, page, off, size);
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  ((struct skb_shared_info *)tmp)->nr_frags = (unsigned int )((unsigned char )i) + 1U;
  }
  return;
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
__inline static unsigned char *skb_transport_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->transport_header);
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
__inline static int skb_transport_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_transport_header(skb);
  }
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
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
__inline static struct page *skb_frag_page(skb_frag_t const *frag )
{
  {
  return ((struct page *)frag->page.p);
}
}
__inline static void __skb_frag_set_page(skb_frag_t *frag , struct page *page )
{
  {
  frag->page.p = page;
  return;
}
}
__inline static dma_addr_t skb_frag_dma_map(struct device *dev , skb_frag_t const *frag ,
                                            size_t offset , size_t size , enum dma_data_direction dir )
{
  struct page *tmp ;
  dma_addr_t tmp___0 ;
  {
  {
  tmp = skb_frag_page(frag);
  tmp___0 = dma_map_page(dev, tmp, (size_t )frag->page_offset + offset, size, dir);
  }
  return (tmp___0);
}
}
__inline static u16 skb_get_queue_mapping(struct sk_buff const *skb )
{
  {
  return ((u16 )skb->queue_mapping);
}
}
__inline static void skb_record_rx_queue(struct sk_buff *skb , u16 rx_queue )
{
  {
  skb->queue_mapping = (unsigned int )rx_queue + 1U;
  return;
}
}
__inline static bool skb_is_gso(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_end_pointer(skb);
  }
  return ((unsigned int )((struct skb_shared_info *)tmp)->gso_size != 0U);
}
}
__inline static void skb_checksum_none_assert(struct sk_buff const *skb )
{
  {
  return;
}
}
__inline static void ethtool_cmd_speed_set(struct ethtool_cmd *ep , __u32 speed )
{
  {
  ep->speed = (unsigned short )speed;
  ep->speed_hi = (unsigned short )(speed >> 16);
  return;
}
}
__inline static __u32 ethtool_cmd_speed(struct ethtool_cmd const *ep )
{
  {
  return ((__u32 )(((int )ep->speed_hi << 16) | (int )ep->speed));
}
}
extern void synchronize_irq(unsigned int ) ;
extern void __napi_schedule(struct napi_struct * ) ;
__inline static bool napi_disable_pending(struct napi_struct *n )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& n->state));
  }
  return (tmp != 0);
}
}
__inline static bool napi_schedule_prep(struct napi_struct *n )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = napi_disable_pending(n);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    tmp___1 = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
    }
    if (tmp___1 == 0) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  return ((bool )tmp___2);
}
}
__inline static void napi_schedule(struct napi_struct *n )
{
  bool tmp ;
  {
  {
  tmp = napi_schedule_prep(n);
  }
  if ((int )tmp) {
    {
    __napi_schedule(n);
    }
  } else {
  }
  return;
}
}
extern void napi_complete(struct napi_struct * ) ;
__inline static void napi_disable(struct napi_struct *n )
{
  int tmp ;
  {
  {
  __might_sleep("include/linux/netdevice.h", 486, 0);
  set_bit(1L, (unsigned long volatile *)(& n->state));
  }
  goto ldv_37794;
  ldv_37793:
  {
  msleep(1U);
  }
  ldv_37794:
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
  }
  if (tmp != 0) {
    goto ldv_37793;
  } else {
  }
  {
  clear_bit(1L, (unsigned long volatile *)(& n->state));
  }
  return;
}
}
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (502), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  __asm__ volatile ("": : : "memory");
  clear_bit(0L, (unsigned long volatile *)(& n->state));
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
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void netif_napi_del(struct napi_struct * ) ;
extern int dev_close(struct net_device * ) ;
extern void free_netdev(struct net_device * ) ;
static void ldv_free_netdev_35(struct net_device *ldv_func_arg1 ) ;
static void ldv_free_netdev_38(struct net_device *ldv_func_arg1 ) ;
extern int netpoll_trap(void) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_schedule_queue(struct netdev_queue *txq )
{
  {
  if ((txq->state & 3UL) == 0UL) {
    {
    __netif_schedule(txq->qdisc);
    }
  } else {
  }
  return;
}
}
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static void netif_tx_start_all_queues(struct net_device *dev )
{
  unsigned int i ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  i = 0U;
  goto ldv_38689;
  ldv_38688:
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  netif_tx_start_queue(txq);
  i = i + 1U;
  }
  ldv_38689: ;
  if (i < dev->num_tx_queues) {
    goto ldv_38688;
  } else {
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
  tmp___0 = test_and_set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
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
__inline static void netif_tx_wake_all_queues(struct net_device *dev )
{
  unsigned int i ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  i = 0U;
  goto ldv_38703;
  ldv_38702:
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  netif_tx_wake_queue(txq);
  i = i + 1U;
  }
  ldv_38703: ;
  if (i < dev->num_tx_queues) {
    goto ldv_38702;
  } else {
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
__inline static bool netif_tx_queue_stopped(struct netdev_queue const *dev_queue )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev_queue->state));
  }
  return (tmp != 0);
}
}
__inline static void netdev_tx_sent_queue(struct netdev_queue *dev_queue , unsigned int bytes )
{
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  dql_queued(& dev_queue->dql, bytes);
  tmp = dql_avail((struct dql const *)(& dev_queue->dql));
  tmp___0 = ldv__builtin_expect(tmp >= 0, 1L);
  }
  if (tmp___0 != 0L) {
    return;
  } else {
  }
  {
  set_bit(1L, (unsigned long volatile *)(& dev_queue->state));
  __asm__ volatile ("mfence": : : "memory");
  tmp___1 = dql_avail((struct dql const *)(& dev_queue->dql));
  tmp___2 = ldv__builtin_expect(tmp___1 >= 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    clear_bit(1L, (unsigned long volatile *)(& dev_queue->state));
    }
  } else {
  }
  return;
}
}
__inline static void netdev_tx_completed_queue(struct netdev_queue *dev_queue , unsigned int pkts ,
                                               unsigned int bytes )
{
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = ldv__builtin_expect(bytes == 0U, 0L);
  }
  if (tmp != 0L) {
    return;
  } else {
  }
  {
  dql_completed(& dev_queue->dql, bytes);
  __asm__ volatile ("mfence": : : "memory");
  tmp___0 = dql_avail((struct dql const *)(& dev_queue->dql));
  }
  if (tmp___0 < 0) {
    return;
  } else {
  }
  {
  tmp___1 = test_and_set_bit(1L, (unsigned long volatile *)(& dev_queue->state));
  }
  if (tmp___1 != 0) {
    {
    netif_schedule_queue(dev_queue);
    }
  } else {
  }
  return;
}
}
__inline static void netdev_tx_reset_queue(struct netdev_queue *q )
{
  {
  {
  clear_bit(1L, (unsigned long volatile *)(& q->state));
  dql_reset(& q->dql);
  }
  return;
}
}
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev->state));
  }
  return (tmp != 0);
}
}
extern int netif_set_real_num_tx_queues(struct net_device * , unsigned int ) ;
extern int netif_set_real_num_rx_queues(struct net_device * , unsigned int ) ;
extern int netif_get_num_default_rss_queues(void) ;
extern gro_result_t napi_gro_receive(struct napi_struct * , struct sk_buff * ) ;
__inline static bool netif_carrier_ok(struct net_device const *dev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& dev->state));
  }
  return (tmp == 0);
}
}
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
__inline static void __netif_tx_lock(struct netdev_queue *txq , int cpu )
{
  {
  {
  spin_lock(& txq->_xmit_lock);
  txq->xmit_lock_owner = cpu;
  }
  return;
}
}
__inline static void __netif_tx_unlock(struct netdev_queue *txq )
{
  {
  {
  txq->xmit_lock_owner = -1;
  spin_unlock(& txq->_xmit_lock);
  }
  return;
}
}
__inline static void netif_tx_disable(struct net_device *dev )
{
  unsigned int i ;
  int cpu ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  {
  local_bh_disable();
  __vpp_verify = (void const *)0;
  }
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___0;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___1;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___2;
  } else {
  }
  goto switch_default___3;
  case_1: ;
  {
  if (4UL == 1UL) {
    goto case_1___0;
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
  case_1___0:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_39248;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39248;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39248;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39248;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break___0: ;
  }
  ldv_39248:
  pscr_ret__ = pfo_ret__;
  goto ldv_39254;
  case_2___0: ;
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
    goto case_4___0;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___0;
  } else {
  }
  goto switch_default___0;
  case_1___1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39258;
  case_2___1:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39258;
  case_4___0:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39258;
  case_8___0:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39258;
  switch_default___0:
  {
  __bad_percpu_size();
  }
  switch_break___1: ;
  }
  ldv_39258:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_39254;
  case_4___1: ;
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
    goto case_8___1;
  } else {
  }
  goto switch_default___1;
  case_1___2:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39267;
  case_2___2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39267;
  case_4___2:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39267;
  case_8___1:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39267;
  switch_default___1:
  {
  __bad_percpu_size();
  }
  switch_break___2: ;
  }
  ldv_39267:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_39254;
  case_8___2: ;
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
  goto switch_default___2;
  case_1___3:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39276;
  case_2___3:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39276;
  case_4___3:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39276;
  case_8___3:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39276;
  switch_default___2:
  {
  __bad_percpu_size();
  }
  switch_break___3: ;
  }
  ldv_39276:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_39254;
  switch_default___3:
  {
  __bad_size_call_parameter();
  }
  goto ldv_39254;
  switch_break: ;
  }
  ldv_39254:
  cpu = pscr_ret__;
  i = 0U;
  goto ldv_39286;
  ldv_39285:
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  __netif_tx_lock(txq, cpu);
  netif_tx_stop_queue(txq);
  __netif_tx_unlock(txq);
  i = i + 1U;
  }
  ldv_39286: ;
  if (i < dev->num_tx_queues) {
    goto ldv_39285;
  } else {
  }
  {
  local_bh_enable();
  }
  return;
}
}
extern int register_netdev(struct net_device * ) ;
static int ldv_register_netdev_34(struct net_device *ldv_func_arg1 ) ;
extern void unregister_netdev(struct net_device * ) ;
static void ldv_unregister_netdev_36(struct net_device *ldv_func_arg1 ) ;
extern int netdev_err(struct net_device const * , char const * , ...) ;
extern int netdev_warn(struct net_device const * , char const * , ...) ;
extern int netdev_info(struct net_device const * , char const * , ...) ;
extern void pci_dev_put(struct pci_dev * ) ;
extern int pci_find_capability(struct pci_dev * , int ) ;
extern struct pci_dev *pci_get_device(unsigned int , unsigned int , struct pci_dev * ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
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
__inline static int pci_write_config_word(struct pci_dev const *dev , int where ,
                                          u16 val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_write_config_word(dev->bus, dev->devfn, where, (int )val);
  }
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern int __pci_enable_wake(struct pci_dev * , pci_power_t , bool , bool ) ;
extern int pci_wake_from_d3(struct pci_dev * , bool ) ;
__inline static int pci_enable_wake(struct pci_dev *dev , pci_power_t state , bool enable )
{
  int tmp ;
  {
  {
  tmp = __pci_enable_wake(dev, state, 0, (int )enable);
  }
  return (tmp);
}
}
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_41(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_42(struct pci_driver *ldv_func_arg1 ) ;
extern int pci_enable_msi_block(struct pci_dev * , int ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern int pci_enable_msix(struct pci_dev * , struct msix_entry * , int ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
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
__inline static int pci_set_consistent_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_set_coherent_mask(& dev->dev, mask);
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
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_14(& pdev->dev, data);
  }
  return;
}
}
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  {
  tmp = dev_name(& pdev->dev);
  }
  return (tmp);
}
}
__inline static int pci_pcie_cap(struct pci_dev *dev )
{
  {
  return ((int )dev->pcie_cap);
}
}
__inline static bool pci_is_pcie(struct pci_dev *dev )
{
  int tmp ;
  {
  {
  tmp = pci_pcie_cap(dev);
  }
  return (tmp != 0);
}
}
__inline static u16 pci_vpd_lrdt_size(u8 const *lrdt )
{
  {
  return ((int )((u16 )*(lrdt + 1UL)) + ((int )((u16 )*(lrdt + 2UL)) << 8U));
}
}
__inline static u8 pci_vpd_info_field_size(u8 const *info_field )
{
  {
  return ((u8 )*(info_field + 2UL));
}
}
extern int pci_vpd_find_tag(u8 const * , unsigned int , unsigned int , u8 ) ;
extern int pci_vpd_find_info_keyword(u8 const * , unsigned int , unsigned int ,
                                     char const * ) ;
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
__inline static int ldv_request_irq_25(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_26(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
static struct net_device *ldv_alloc_etherdev_mqs_33(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 ) ;
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
}
}
__inline static bool is_multicast_ether_addr(u8 const *addr )
{
  {
  return (((int )*addr & 1) != 0);
}
}
__inline static bool is_valid_ether_addr(u8 const *addr )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = is_multicast_ether_addr(addr);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    tmp___1 = is_zero_ether_addr(addr);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  return ((bool )tmp___3);
}
}
__inline static struct mii_ioctl_data *if_mii(struct ifreq *rq )
{
  {
  return ((struct mii_ioctl_data *)(& rq->ifr_ifru));
}
}
__inline static u32 ethtool_adv_to_mii_adv_t(u32 ethadv )
{
  u32 result ;
  {
  result = 0U;
  if ((int )ethadv & 1) {
    result = result | 32U;
  } else {
  }
  if ((ethadv & 2U) != 0U) {
    result = result | 64U;
  } else {
  }
  if ((ethadv & 4U) != 0U) {
    result = result | 128U;
  } else {
  }
  if ((ethadv & 8U) != 0U) {
    result = result | 256U;
  } else {
  }
  if ((ethadv & 8192U) != 0U) {
    result = result | 1024U;
  } else {
  }
  if ((ethadv & 16384U) != 0U) {
    result = result | 2048U;
  } else {
  }
  return (result);
}
}
__inline static u32 ethtool_adv_to_mii_ctrl1000_t(u32 ethadv )
{
  u32 result ;
  {
  result = 0U;
  if ((ethadv & 16U) != 0U) {
    result = result | 256U;
  } else {
  }
  if ((ethadv & 32U) != 0U) {
    result = result | 512U;
  } else {
  }
  return (result);
}
}
extern void rtnl_lock(void) ;
extern void rtnl_unlock(void) ;
__inline static struct sk_buff *__vlan_hwaccel_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                                       u16 vlan_tci )
{
  {
  skb->vlan_proto = vlan_proto;
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return (skb);
}
}
__inline static struct iphdr *ip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header(skb);
  }
  return ((struct iphdr *)tmp);
}
}
__inline static struct tcphdr *tcp_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_transport_header(skb);
  }
  return ((struct tcphdr *)tmp);
}
}
__inline static unsigned int tcp_optlen(struct sk_buff const *skb )
{
  struct tcphdr *tmp ;
  {
  {
  tmp = tcp_hdr(skb);
  }
  return ((unsigned int )(((int )tmp->doff + -5) * 4));
}
}
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
extern int pci_enable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_disable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_cleanup_aer_uncorrect_error_status(struct pci_dev * ) ;
__inline static struct l2_fhdr *get_l2_fhdr(u8 *data )
{
  int _max1 ;
  int _max2 ;
  {
  _max1 = 32;
  _max2 = 64;
  return ((struct l2_fhdr *)((unsigned long )(_max1 > _max2 ? _max1 : _max2) + (((unsigned long )data + 15UL) & 0xfffffffffffffff0UL)));
}
}
static struct cpu_reg const cpu_reg_com =
     {1069056U, 1024U, 2U, 1069060U, 16777215U, 1069568U, 1069064U, 1069084U, 1069088U,
    1069108U, 1179648U, 134217728U};
static struct cpu_reg const cpu_reg_cp =
     {1593344U, 1024U, 2U, 1593348U, 16777215U, 1593856U, 1593352U, 1593372U, 1593376U,
    1593396U, 1703936U, 134217728U};
static struct cpu_reg const cpu_reg_rxp =
     {806912U, 1024U, 2U, 806916U, 16777215U, 807424U, 806920U, 806940U, 806944U, 806964U,
    917504U, 134217728U};
static struct cpu_reg const cpu_reg_tpat =
     {544768U, 1024U, 2U, 544772U, 16777215U, 545280U, 544776U, 544796U, 544800U, 544820U,
    655360U, 134217728U};
static struct cpu_reg const cpu_reg_txp =
     {282624U, 1024U, 2U, 282628U, 16777215U, 283136U, 282632U, 282652U, 282656U, 282676U,
    393216U, 134217728U};
static char version[79U] =
  { 'B', 'r', 'o', 'a',
        'd', 'c', 'o', 'm',
        ' ', 'N', 'e', 't',
        'X', 't', 'r', 'e',
        'm', 'e', ' ', 'I',
        'I', ' ', 'G', 'i',
        'g', 'a', 'b', 'i',
        't', ' ', 'E', 't',
        'h', 'e', 'r', 'n',
        'e', 't', ' ', 'D',
        'r', 'i', 'v', 'e',
        'r', ' ', 'b', 'n',
        'x', '2', ' ', 'v',
        '2', '.', '2', '.',
        '5', ' ', '(', 'D',
        'e', 'c', 'e', 'm',
        'b', 'e', 'r', ' ',
        '2', '0', ',', ' ',
        '2', '0', '1', '3',
        ')', '\n', '\000'};
static int disable_msi = 0;
static struct __anonstruct_board_info_289 board_info[11U] =
  { {(char *)"Broadcom NetXtreme II BCM5706 1000Base-T"},
        {(char *)"HP NC370T Multifunction Gigabit Server Adapter"},
        {(char *)"HP NC370i Multifunction Gigabit Server Adapter"},
        {(char *)"Broadcom NetXtreme II BCM5706 1000Base-SX"},
        {(char *)"HP NC370F Multifunction Gigabit Server Adapter"},
        {(char *)"Broadcom NetXtreme II BCM5708 1000Base-T"},
        {(char *)"Broadcom NetXtreme II BCM5708 1000Base-SX"},
        {(char *)"Broadcom NetXtreme II BCM5709 1000Base-T"},
        {(char *)"Broadcom NetXtreme II BCM5709 1000Base-SX"},
        {(char *)"Broadcom NetXtreme II BCM5716 1000Base-T"},
        {(char *)"Broadcom NetXtreme II BCM5716 1000Base-SX"}};
static struct pci_device_id const bnx2_pci_tbl[12U] =
  { {5348U, 5706U, 4156U, 12545U, 0U, 0U, 1UL},
        {5348U, 5706U, 4156U, 12550U, 0U, 0U, 2UL},
        {5348U, 5706U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5708U, 4294967295U, 4294967295U, 0U, 0U, 5UL},
        {5348U, 5802U, 4156U, 12546U, 0U, 0U, 4UL},
        {5348U, 5802U, 4294967295U, 4294967295U, 0U, 0U, 3UL},
        {5348U, 5804U, 4294967295U, 4294967295U, 0U, 0U, 6UL},
        {5348U, 5689U, 4294967295U, 4294967295U, 0U, 0U, 7UL},
        {5348U, 5690U, 4294967295U, 4294967295U, 0U, 0U, 8UL},
        {5348U, 5691U, 4294967295U, 4294967295U, 0U, 0U, 9UL},
        {5348U, 5692U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
static struct flash_spec const flash_table[16U] =
  { {0U, 1082327936U, 10420353U, 2709823571U, 2936013824U, 3U, 2U, 4U, 3U, 65536U,
      (u8 *)"EEPROM - slow"},
        {134217730U, 1266713089U, 327809U, 58982995U, 2936144902U, 4U, 8U, 256U, 255U,
      0U, (u8 *)"Entry 0001"},
        {67108865U, 1199604225U, 327809U, 58982995U, 2936144902U, 4U, 8U, 256U, 255U,
      131072U, (u8 *)"Non-buffered flash (128kB)"},
        {201326595U, 1333821953U, 327809U, 58982995U, 2936144902U, 4U, 8U, 256U, 255U,
      262144U, (u8 *)"Non-buffered flash (256kB)"},
        {285212672U, 1400930817U, 327809U, 58982995U, 2936144902U, 4U, 8U, 256U, 255U,
      0U, (u8 *)"Entry 0100"},
        {419430402U, 1535148545U, 327899U, 58982995U, 2936144902U, 4U, 8U, 256U, 255U,
      131072U, (u8 *)"Entry 0101: ST M45PE10 (128kB non-bufferred)"},
        {352321537U, 1468039681U, 327899U, 58982995U, 2936144902U, 4U, 8U, 256U, 255U,
      262144U, (u8 *)"Entry 0110: ST M45PE20 (256kB non-bufferred)"},
        {486539267U, 1602257409U, 327809U, 58982995U, 2936144902U, 4U, 8U, 256U, 255U,
      65536U, (u8 *)"Non-buffered flash (64kB)"},
        {570425344U, 1652589440U, 10420353U, 2709823571U, 2936013824U, 3U, 2U, 4U, 3U,
      65536U, (u8 *)"EEPROM - fast"},
        {704643074U, 1803584001U, 327809U, 58982995U, 2936144902U, 4U, 8U, 256U, 255U,
      0U, (u8 *)"Entry 1001"},
        {637534209U, 1736475137U, 327809U, 58982995U, 2936144902U, 4U, 8U, 256U, 255U,
      0U, (u8 *)"Entry 1010"},
        {771751939U, 1853915763U, 5701761U, 1753514835U, 2936013824U, 3U, 9U, 264U, 511U,
      135168U, (u8 *)"Buffered flash (128kB)"},
        {855638016U, 1937801729U, 327809U, 58982995U, 2936144902U, 4U, 8U, 256U, 255U,
      0U, (u8 *)"Entry 1100"},
        {989855746U, 2072019457U, 327809U, 58982995U, 2936144902U, 4U, 8U, 256U, 255U,
      0U, (u8 *)"Entry 1101"},
        {922746881U, 1988133491U, 5701761U, 1753514835U, 2936013824U, 3U, 9U, 264U, 511U,
      0U, (u8 *)"Entry 1110 (Atmel)"},
        {1056964611U, 2122351219U, 5701761U, 1753514835U, 2936013824U, 3U, 9U, 264U,
      511U, 270336U, (u8 *)"Buffered flash (256kB)"}};
static struct flash_spec const flash_5709 =
     {0U, 0U, 0U, 0U, 0U, 1U, 8U, 256U, 255U, 270336U, (u8 *)"5709 Buffered flash (256kB)"};
struct pci_device_id const __mod_pci_device_table ;
static void bnx2_init_napi(struct bnx2 *bp ) ;
static void bnx2_del_napi(struct bnx2 *bp ) ;
__inline static u32 bnx2_tx_avail(struct bnx2 *bp , struct bnx2_tx_ring_info *txr )
{
  u32 diff ;
  long tmp ;
  {
  {
  __asm__ volatile ("": : : "memory");
  diff = (u32 )((int )txr->tx_prod - (int )txr->tx_cons);
  tmp = ldv__builtin_expect(diff > 255U, 0L);
  }
  if (tmp != 0L) {
    diff = diff & 65535U;
    if (diff == 256U) {
      diff = 255U;
    } else {
    }
  } else {
  }
  return ((u32 )bp->tx_ring_size - diff);
}
}
static u32 bnx2_reg_rd_ind(struct bnx2 *bp , u32 offset )
{
  u32 val ;
  {
  {
  spin_lock_bh(& bp->indirect_lock);
  writel(offset, (void volatile *)bp->regview + 120U);
  val = readl((void const volatile *)bp->regview + 128U);
  spin_unlock_bh(& bp->indirect_lock);
  }
  return (val);
}
}
static void bnx2_reg_wr_ind(struct bnx2 *bp , u32 offset , u32 val )
{
  {
  {
  spin_lock_bh(& bp->indirect_lock);
  writel(offset, (void volatile *)bp->regview + 120U);
  writel(val, (void volatile *)bp->regview + 128U);
  spin_unlock_bh(& bp->indirect_lock);
  }
  return;
}
}
static void bnx2_shmem_wr(struct bnx2 *bp , u32 offset , u32 val )
{
  {
  {
  bnx2_reg_wr_ind(bp, bp->shmem_base + offset, val);
  }
  return;
}
}
static u32 bnx2_shmem_rd(struct bnx2 *bp , u32 offset )
{
  u32 tmp ;
  {
  {
  tmp = bnx2_reg_rd_ind(bp, bp->shmem_base + offset);
  }
  return (tmp);
}
}
static void bnx2_ctx_wr(struct bnx2 *bp , u32 cid_addr , u32 offset , u32 val )
{
  int i ;
  {
  {
  offset = offset + cid_addr;
  spin_lock_bh(& bp->indirect_lock);
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    {
    writel(val, (void volatile *)bp->regview + 4128U);
    writel(offset | 1073741824U, (void volatile *)bp->regview + 4124U);
    i = 0;
    }
    goto ldv_52700;
    ldv_52699:
    {
    val = readl((void const volatile *)bp->regview + 4124U);
    }
    if (((long )val & 1073741824L) == 0L) {
      goto ldv_52698;
    } else {
    }
    {
    __const_udelay(21475UL);
    i = i + 1;
    }
    ldv_52700: ;
    if (i <= 4) {
      goto ldv_52699;
    } else {
    }
    ldv_52698: ;
  } else {
    {
    writel(offset, (void volatile *)bp->regview + 4112U);
    writel(val, (void volatile *)bp->regview + 4116U);
    }
  }
  {
  spin_unlock_bh(& bp->indirect_lock);
  }
  return;
}
}
static int bnx2_drv_ctl(struct net_device *dev , struct drv_ctl_info *info )
{
  struct bnx2 *bp ;
  void *tmp ;
  struct drv_ctl_io *io ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  io = & info->data.io;
  }
  {
  if (info->cmd == 257) {
    goto case_257;
  } else {
  }
  if (info->cmd == 258) {
    goto case_258;
  } else {
  }
  if (info->cmd == 259) {
    goto case_259;
  } else {
  }
  goto switch_default;
  case_257:
  {
  bnx2_reg_wr_ind(bp, io->offset, io->data);
  }
  goto ldv_52708;
  case_258:
  {
  io->data = bnx2_reg_rd_ind(bp, io->offset);
  }
  goto ldv_52708;
  case_259:
  {
  bnx2_ctx_wr(bp, io->cid_addr, io->offset, io->data);
  }
  goto ldv_52708;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_52708: ;
  return (0);
}
}
static void bnx2_setup_cnic_irq_info(struct bnx2 *bp )
{
  struct cnic_eth_dev *cp ;
  struct bnx2_napi *bnapi ;
  int sb_id ;
  {
  cp = & bp->cnic_eth_dev;
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi);
  if ((bp->flags & 1024U) != 0U) {
    cp->drv_state = cp->drv_state | 2U;
    bnapi->cnic_present = 0;
    sb_id = bp->irq_nvecs;
    cp->irq_arr[0].irq_flags = cp->irq_arr[0].irq_flags | 1U;
  } else {
    cp->drv_state = cp->drv_state & 4294967293U;
    bnapi->cnic_tag = bnapi->last_status_idx;
    bnapi->cnic_present = 1;
    sb_id = 0;
    cp->irq_arr[0].irq_flags = cp->irq_arr[0].irq_flags & 4294967294U;
  }
  cp->irq_arr[0].vector = bp->irq_tbl[sb_id].vector;
  cp->irq_arr[0].status_blk = (void *)((unsigned long )bnapi->status_blk.msi + (unsigned long )(sb_id * 128));
  cp->irq_arr[0].status_blk_num = (u32 )sb_id;
  cp->num_irq = 1;
  return;
}
}
static int bnx2_register_cnic(struct net_device *dev , struct cnic_ops *ops , void *data )
{
  struct bnx2 *bp ;
  void *tmp ;
  struct cnic_eth_dev *cp ;
  u32 tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  cp = & bp->cnic_eth_dev;
  }
  if ((unsigned long )ops == (unsigned long )((struct cnic_ops *)0)) {
    return (-22);
  } else {
  }
  if ((int )cp->drv_state & 1) {
    return (-16);
  } else {
  }
  {
  tmp___0 = bnx2_reg_rd_ind(bp, 1704064U);
  }
  if (tmp___0 == 0U) {
    return (-19);
  } else {
  }
  {
  bp->cnic_data = data;
  __asm__ volatile ("": : : "memory");
  *((struct cnic_ops * volatile *)(& bp->cnic_ops)) = ops;
  cp->num_irq = 0;
  cp->drv_state = 1U;
  bnx2_setup_cnic_irq_info(bp);
  }
  return (0);
}
}
static int bnx2_unregister_cnic(struct net_device *dev )
{
  struct bnx2 *bp ;
  void *tmp ;
  struct bnx2_napi *bnapi ;
  struct cnic_eth_dev *cp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi);
  cp = & bp->cnic_eth_dev;
  ldv_mutex_lock_17(& bp->cnic_lock);
  cp->drv_state = 0U;
  bnapi->cnic_present = 0;
  bp->cnic_ops = (struct cnic_ops *)0;
  ldv_mutex_unlock_18(& bp->cnic_lock);
  synchronize_rcu();
  }
  return (0);
}
}
static struct cnic_eth_dev *bnx2_cnic_probe(struct net_device *dev )
{
  struct bnx2 *bp ;
  void *tmp ;
  struct cnic_eth_dev *cp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  cp = & bp->cnic_eth_dev;
  }
  if (cp->max_iscsi_conn == 0U) {
    return ((struct cnic_eth_dev *)0);
  } else {
  }
  cp->drv_owner = & __this_module;
  cp->chip_id = bp->chip_id;
  cp->pdev = bp->pdev;
  cp->io_base = bp->regview;
  cp->drv_ctl = & bnx2_drv_ctl;
  cp->drv_register_cnic = & bnx2_register_cnic;
  cp->drv_unregister_cnic = & bnx2_unregister_cnic;
  return (cp);
}
}
static void bnx2_cnic_stop(struct bnx2 *bp )
{
  struct cnic_ops *c_ops ;
  struct cnic_ctl_info info ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_mutex_lock_19(& bp->cnic_lock);
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    tmp___0 = lock_is_held(& bp->cnic_lock.dep_map);
    }
    if (tmp___0 == 0) {
      {
      __warned = 1;
      lockdep_rcu_suspicious("drivers/net/ethernet/broadcom/bnx2.c", 445, "suspicious rcu_dereference_protected() usage");
      }
    } else {
    }
  } else {
  }
  c_ops = bp->cnic_ops;
  if ((unsigned long )c_ops != (unsigned long )((struct cnic_ops *)0)) {
    {
    info.cmd = 1;
    (*(c_ops->cnic_ctl))(bp->cnic_data, & info);
    }
  } else {
  }
  {
  ldv_mutex_unlock_20(& bp->cnic_lock);
  }
  return;
}
}
static void bnx2_cnic_start(struct bnx2 *bp )
{
  struct cnic_ops *c_ops ;
  struct cnic_ctl_info info ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  struct bnx2_napi *bnapi ;
  {
  {
  ldv_mutex_lock_21(& bp->cnic_lock);
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    tmp___0 = lock_is_held(& bp->cnic_lock.dep_map);
    }
    if (tmp___0 == 0) {
      {
      __warned = 1;
      lockdep_rcu_suspicious("drivers/net/ethernet/broadcom/bnx2.c", 461, "suspicious rcu_dereference_protected() usage");
      }
    } else {
    }
  } else {
  }
  c_ops = bp->cnic_ops;
  if ((unsigned long )c_ops != (unsigned long )((struct cnic_ops *)0)) {
    if ((bp->flags & 1024U) == 0U) {
      bnapi = (struct bnx2_napi *)(& bp->bnx2_napi);
      bnapi->cnic_tag = bnapi->last_status_idx;
    } else {
    }
    {
    info.cmd = 2;
    (*(c_ops->cnic_ctl))(bp->cnic_data, & info);
    }
  } else {
  }
  {
  ldv_mutex_unlock_22(& bp->cnic_lock);
  }
  return;
}
}
static int bnx2_read_phy(struct bnx2 *bp , u32 reg , u32 *val )
{
  u32 val1 ;
  int i ;
  int ret ;
  {
  if ((bp->phy_flags & 256U) != 0U) {
    {
    val1 = readl((void const volatile *)bp->regview + 5300U);
    val1 = val1 & 4294967279U;
    writel(val1, (void volatile *)bp->regview + 5300U);
    readl((void const volatile *)bp->regview + 5300U);
    __const_udelay(171800UL);
    }
  } else {
  }
  {
  val1 = ((bp->phy_addr << 21) | (reg << 16)) | 1744830464U;
  writel(val1, (void volatile *)bp->regview + 5292U);
  i = 0;
  }
  goto ldv_52761;
  ldv_52760:
  {
  __const_udelay(42950UL);
  val1 = readl((void const volatile *)bp->regview + 5292U);
  }
  if (((long )val1 & 536870912L) == 0L) {
    {
    __const_udelay(21475UL);
    val1 = readl((void const volatile *)bp->regview + 5292U);
    val1 = val1 & 65535U;
    }
    goto ldv_52759;
  } else {
  }
  i = i + 1;
  ldv_52761: ;
  if (i <= 49) {
    goto ldv_52760;
  } else {
  }
  ldv_52759: ;
  if (((long )val1 & 536870912L) != 0L) {
    *val = 0U;
    ret = -16;
  } else {
    *val = val1;
    ret = 0;
  }
  if ((bp->phy_flags & 256U) != 0U) {
    {
    val1 = readl((void const volatile *)bp->regview + 5300U);
    val1 = val1 | 16U;
    writel(val1, (void volatile *)bp->regview + 5300U);
    readl((void const volatile *)bp->regview + 5300U);
    __const_udelay(171800UL);
    }
  } else {
  }
  return (ret);
}
}
static int bnx2_write_phy(struct bnx2 *bp , u32 reg , u32 val )
{
  u32 val1 ;
  int i ;
  int ret ;
  {
  if ((bp->phy_flags & 256U) != 0U) {
    {
    val1 = readl((void const volatile *)bp->regview + 5300U);
    val1 = val1 & 4294967279U;
    writel(val1, (void volatile *)bp->regview + 5300U);
    readl((void const volatile *)bp->regview + 5300U);
    __const_udelay(171800UL);
    }
  } else {
  }
  {
  val1 = (((bp->phy_addr << 21) | (reg << 16)) | val) | 1677721600U;
  writel(val1, (void volatile *)bp->regview + 5292U);
  i = 0;
  }
  goto ldv_52772;
  ldv_52771:
  {
  __const_udelay(42950UL);
  val1 = readl((void const volatile *)bp->regview + 5292U);
  }
  if (((long )val1 & 536870912L) == 0L) {
    {
    __const_udelay(21475UL);
    }
    goto ldv_52770;
  } else {
  }
  i = i + 1;
  ldv_52772: ;
  if (i <= 49) {
    goto ldv_52771;
  } else {
  }
  ldv_52770: ;
  if (((long )val1 & 536870912L) != 0L) {
    ret = -16;
  } else {
    ret = 0;
  }
  if ((bp->phy_flags & 256U) != 0U) {
    {
    val1 = readl((void const volatile *)bp->regview + 5300U);
    val1 = val1 | 16U;
    writel(val1, (void volatile *)bp->regview + 5300U);
    readl((void const volatile *)bp->regview + 5300U);
    __const_udelay(171800UL);
    }
  } else {
  }
  return (ret);
}
}
static void bnx2_disable_int(struct bnx2 *bp )
{
  int i ;
  struct bnx2_napi *bnapi ;
  {
  i = 0;
  goto ldv_52779;
  ldv_52778:
  {
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi) + (unsigned long )i;
  writel(bnapi->int_num | 262144U, (void volatile *)bp->regview + 132U);
  i = i + 1;
  }
  ldv_52779: ;
  if (i < bp->irq_nvecs) {
    goto ldv_52778;
  } else {
  }
  {
  readl((void const volatile *)bp->regview + 132U);
  }
  return;
}
}
static void bnx2_enable_int(struct bnx2 *bp )
{
  int i ;
  struct bnx2_napi *bnapi ;
  {
  i = 0;
  goto ldv_52787;
  ldv_52786:
  {
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi) + (unsigned long )i;
  writel((bnapi->int_num | bnapi->last_status_idx) | 327680U, (void volatile *)bp->regview + 132U);
  writel((bnapi->int_num | bnapi->last_status_idx) | 65536U, (void volatile *)bp->regview + 132U);
  i = i + 1;
  }
  ldv_52787: ;
  if (i < bp->irq_nvecs) {
    goto ldv_52786;
  } else {
  }
  {
  writel(bp->hc_cmd | 65536U, (void volatile *)bp->regview + 26624U);
  }
  return;
}
}
static void bnx2_disable_int_sync(struct bnx2 *bp )
{
  int i ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  atomic_inc(& bp->intr_sem);
  tmp = netif_running((struct net_device const *)bp->dev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  {
  bnx2_disable_int(bp);
  i = 0;
  }
  goto ldv_52794;
  ldv_52793:
  {
  synchronize_irq(bp->irq_tbl[i].vector);
  i = i + 1;
  }
  ldv_52794: ;
  if (i < bp->irq_nvecs) {
    goto ldv_52793;
  } else {
  }
  return;
}
}
static void bnx2_napi_disable(struct bnx2 *bp )
{
  int i ;
  {
  i = 0;
  goto ldv_52801;
  ldv_52800:
  {
  napi_disable(& bp->bnx2_napi[i].napi);
  i = i + 1;
  }
  ldv_52801: ;
  if (i < bp->irq_nvecs) {
    goto ldv_52800;
  } else {
  }
  return;
}
}
static void bnx2_napi_enable(struct bnx2 *bp )
{
  int i ;
  {
  i = 0;
  goto ldv_52808;
  ldv_52807:
  {
  napi_enable(& bp->bnx2_napi[i].napi);
  i = i + 1;
  }
  ldv_52808: ;
  if (i < bp->irq_nvecs) {
    goto ldv_52807;
  } else {
  }
  return;
}
}
static void bnx2_netif_stop(struct bnx2 *bp , bool stop_cnic )
{
  bool tmp ;
  {
  if ((int )stop_cnic) {
    {
    bnx2_cnic_stop(bp);
    }
  } else {
  }
  {
  tmp = netif_running((struct net_device const *)bp->dev);
  }
  if ((int )tmp) {
    {
    bnx2_napi_disable(bp);
    netif_tx_disable(bp->dev);
    }
  } else {
  }
  {
  bnx2_disable_int_sync(bp);
  netif_carrier_off(bp->dev);
  }
  return;
}
}
static void bnx2_netif_start(struct bnx2 *bp , bool start_cnic )
{
  bool tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = atomic_dec_and_test(& bp->intr_sem);
  }
  if (tmp___0 != 0) {
    {
    tmp = netif_running((struct net_device const *)bp->dev);
    }
    if ((int )tmp) {
      {
      netif_tx_wake_all_queues(bp->dev);
      spin_lock_bh(& bp->phy_lock);
      }
      if ((unsigned int )bp->link_up != 0U) {
        {
        netif_carrier_on(bp->dev);
        }
      } else {
      }
      {
      spin_unlock_bh(& bp->phy_lock);
      bnx2_napi_enable(bp);
      bnx2_enable_int(bp);
      }
      if ((int )start_cnic) {
        {
        bnx2_cnic_start(bp);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void bnx2_free_tx_mem(struct bnx2 *bp )
{
  int i ;
  struct bnx2_napi *bnapi ;
  struct bnx2_tx_ring_info *txr ;
  {
  i = 0;
  goto ldv_52825;
  ldv_52824:
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi) + (unsigned long )i;
  txr = & bnapi->tx_ring;
  if ((unsigned long )txr->tx_desc_ring != (unsigned long )((struct bnx2_tx_bd *)0)) {
    {
    dma_free_attrs(& (bp->pdev)->dev, 4096UL, (void *)txr->tx_desc_ring, txr->tx_desc_mapping,
                   (struct dma_attrs *)0);
    txr->tx_desc_ring = (struct bnx2_tx_bd *)0;
    }
  } else {
  }
  {
  kfree((void const *)txr->tx_buf_ring);
  txr->tx_buf_ring = (struct bnx2_sw_tx_bd *)0;
  i = i + 1;
  }
  ldv_52825: ;
  if (i < (int )bp->num_tx_rings) {
    goto ldv_52824;
  } else {
  }
  return;
}
}
static void bnx2_free_rx_mem(struct bnx2 *bp )
{
  int i ;
  struct bnx2_napi *bnapi ;
  struct bnx2_rx_ring_info *rxr ;
  int j ;
  {
  i = 0;
  goto ldv_52841;
  ldv_52840:
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi) + (unsigned long )i;
  rxr = & bnapi->rx_ring;
  j = 0;
  goto ldv_52835;
  ldv_52834: ;
  if ((unsigned long )rxr->rx_desc_ring[j] != (unsigned long )((struct bnx2_rx_bd *)0)) {
    {
    dma_free_attrs(& (bp->pdev)->dev, 4096UL, (void *)rxr->rx_desc_ring[j], rxr->rx_desc_mapping[j],
                   (struct dma_attrs *)0);
    }
  } else {
  }
  rxr->rx_desc_ring[j] = (struct bnx2_rx_bd *)0;
  j = j + 1;
  ldv_52835: ;
  if (j < bp->rx_max_ring) {
    goto ldv_52834;
  } else {
  }
  {
  vfree((void const *)rxr->rx_buf_ring);
  rxr->rx_buf_ring = (struct bnx2_sw_bd *)0;
  j = 0;
  }
  goto ldv_52838;
  ldv_52837: ;
  if ((unsigned long )rxr->rx_pg_desc_ring[j] != (unsigned long )((struct bnx2_rx_bd *)0)) {
    {
    dma_free_attrs(& (bp->pdev)->dev, 4096UL, (void *)rxr->rx_pg_desc_ring[j], rxr->rx_pg_desc_mapping[j],
                   (struct dma_attrs *)0);
    }
  } else {
  }
  rxr->rx_pg_desc_ring[j] = (struct bnx2_rx_bd *)0;
  j = j + 1;
  ldv_52838: ;
  if (j < bp->rx_max_pg_ring) {
    goto ldv_52837;
  } else {
  }
  {
  vfree((void const *)rxr->rx_pg_ring);
  rxr->rx_pg_ring = (struct bnx2_sw_pg *)0;
  i = i + 1;
  }
  ldv_52841: ;
  if (i < (int )bp->num_rx_rings) {
    goto ldv_52840;
  } else {
  }
  return;
}
}
static int bnx2_alloc_tx_mem(struct bnx2 *bp )
{
  int i ;
  struct bnx2_napi *bnapi ;
  struct bnx2_tx_ring_info *txr ;
  void *tmp ;
  void *tmp___0 ;
  {
  i = 0;
  goto ldv_52850;
  ldv_52849:
  {
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi) + (unsigned long )i;
  txr = & bnapi->tx_ring;
  tmp = kzalloc(6144UL, 208U);
  txr->tx_buf_ring = (struct bnx2_sw_tx_bd *)tmp;
  }
  if ((unsigned long )txr->tx_buf_ring == (unsigned long )((struct bnx2_sw_tx_bd *)0)) {
    return (-12);
  } else {
  }
  {
  tmp___0 = dma_alloc_attrs(& (bp->pdev)->dev, 4096UL, & txr->tx_desc_mapping, 208U,
                            (struct dma_attrs *)0);
  txr->tx_desc_ring = (struct bnx2_tx_bd *)tmp___0;
  }
  if ((unsigned long )txr->tx_desc_ring == (unsigned long )((struct bnx2_tx_bd *)0)) {
    return (-12);
  } else {
  }
  i = i + 1;
  ldv_52850: ;
  if (i < (int )bp->num_tx_rings) {
    goto ldv_52849;
  } else {
  }
  return (0);
}
}
static int bnx2_alloc_rx_mem(struct bnx2 *bp )
{
  int i ;
  struct bnx2_napi *bnapi ;
  struct bnx2_rx_ring_info *rxr ;
  int j ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  i = 0;
  goto ldv_52866;
  ldv_52865:
  {
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi) + (unsigned long )i;
  rxr = & bnapi->rx_ring;
  tmp = vzalloc((unsigned long )bp->rx_max_ring * 4096UL);
  rxr->rx_buf_ring = (struct bnx2_sw_bd *)tmp;
  }
  if ((unsigned long )rxr->rx_buf_ring == (unsigned long )((struct bnx2_sw_bd *)0)) {
    return (-12);
  } else {
  }
  j = 0;
  goto ldv_52860;
  ldv_52859:
  {
  tmp___0 = dma_alloc_attrs(& (bp->pdev)->dev, 4096UL, (dma_addr_t *)(& rxr->rx_desc_mapping) + (unsigned long )j,
                            208U, (struct dma_attrs *)0);
  rxr->rx_desc_ring[j] = (struct bnx2_rx_bd *)tmp___0;
  }
  if ((unsigned long )rxr->rx_desc_ring[j] == (unsigned long )((struct bnx2_rx_bd *)0)) {
    return (-12);
  } else {
  }
  j = j + 1;
  ldv_52860: ;
  if (j < bp->rx_max_ring) {
    goto ldv_52859;
  } else {
  }
  if (bp->rx_pg_ring_size != 0) {
    {
    tmp___1 = vzalloc((unsigned long )bp->rx_max_pg_ring * 4096UL);
    rxr->rx_pg_ring = (struct bnx2_sw_pg *)tmp___1;
    }
    if ((unsigned long )rxr->rx_pg_ring == (unsigned long )((struct bnx2_sw_pg *)0)) {
      return (-12);
    } else {
    }
  } else {
  }
  j = 0;
  goto ldv_52863;
  ldv_52862:
  {
  tmp___2 = dma_alloc_attrs(& (bp->pdev)->dev, 4096UL, (dma_addr_t *)(& rxr->rx_pg_desc_mapping) + (unsigned long )j,
                            208U, (struct dma_attrs *)0);
  rxr->rx_pg_desc_ring[j] = (struct bnx2_rx_bd *)tmp___2;
  }
  if ((unsigned long )rxr->rx_pg_desc_ring[j] == (unsigned long )((struct bnx2_rx_bd *)0)) {
    return (-12);
  } else {
  }
  j = j + 1;
  ldv_52863: ;
  if (j < bp->rx_max_pg_ring) {
    goto ldv_52862;
  } else {
  }
  i = i + 1;
  ldv_52866: ;
  if (i < (int )bp->num_rx_rings) {
    goto ldv_52865;
  } else {
  }
  return (0);
}
}
static void bnx2_free_mem(struct bnx2 *bp )
{
  int i ;
  struct bnx2_napi *bnapi ;
  {
  {
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi);
  bnx2_free_tx_mem(bp);
  bnx2_free_rx_mem(bp);
  i = 0;
  }
  goto ldv_52874;
  ldv_52873: ;
  if ((unsigned long )bp->ctx_blk[i] != (unsigned long )((void *)0)) {
    {
    dma_free_attrs(& (bp->pdev)->dev, 4096UL, bp->ctx_blk[i], bp->ctx_blk_mapping[i],
                   (struct dma_attrs *)0);
    bp->ctx_blk[i] = (void *)0;
    }
  } else {
  }
  i = i + 1;
  ldv_52874: ;
  if (i < bp->ctx_pages) {
    goto ldv_52873;
  } else {
  }
  if ((unsigned long )bnapi->status_blk.msi != (unsigned long )((struct status_block *)0)) {
    {
    dma_free_attrs(& (bp->pdev)->dev, (size_t )bp->status_stats_size, (void *)bnapi->status_blk.msi,
                   bp->status_blk_mapping, (struct dma_attrs *)0);
    bnapi->status_blk.msi = (struct status_block *)0;
    bp->stats_blk = (struct statistics_block *)0;
    }
  } else {
  }
  return;
}
}
static int bnx2_alloc_mem(struct bnx2 *bp )
{
  int i ;
  int status_blk_size ;
  int err ;
  struct bnx2_napi *bnapi ;
  void *status_blk ;
  struct status_block_msix *sblk ;
  {
  status_blk_size = 64;
  if ((bp->flags & 4U) != 0U) {
    status_blk_size = 1152;
  } else {
  }
  {
  bp->status_stats_size = (int )((unsigned int )status_blk_size + 324U);
  status_blk = dma_zalloc_coherent(& (bp->pdev)->dev, (size_t )bp->status_stats_size,
                                   & bp->status_blk_mapping, 208U);
  }
  if ((unsigned long )status_blk == (unsigned long )((void *)0)) {
    goto alloc_mem_err;
  } else {
  }
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi);
  bnapi->status_blk.msi = (struct status_block *)status_blk;
  bnapi->hw_tx_cons_ptr = & (bnapi->status_blk.msi)->status_tx_quick_consumer_index0;
  bnapi->hw_rx_cons_ptr = & (bnapi->status_blk.msi)->status_rx_quick_consumer_index0;
  if ((bp->flags & 4U) != 0U) {
    i = 1;
    goto ldv_52887;
    ldv_52886:
    bnapi = (struct bnx2_napi *)(& bp->bnx2_napi) + (unsigned long )i;
    sblk = (struct status_block_msix *)status_blk + (unsigned long )(i * 128);
    bnapi->status_blk.msix = sblk;
    bnapi->hw_tx_cons_ptr = & sblk->status_tx_quick_consumer_index;
    bnapi->hw_rx_cons_ptr = & sblk->status_rx_quick_consumer_index;
    bnapi->int_num = (u32 )(i << 24);
    i = i + 1;
    ldv_52887: ;
    if (i < bp->irq_nvecs) {
      goto ldv_52886;
    } else {
    }
  } else {
  }
  bp->stats_blk = (struct statistics_block *)status_blk + (unsigned long )status_blk_size;
  bp->stats_blk_mapping = bp->status_blk_mapping + (dma_addr_t )status_blk_size;
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    bp->ctx_pages = 2;
    if (bp->ctx_pages == 0) {
      bp->ctx_pages = 1;
    } else {
    }
    i = 0;
    goto ldv_52890;
    ldv_52889:
    {
    bp->ctx_blk[i] = dma_alloc_attrs(& (bp->pdev)->dev, 4096UL, (dma_addr_t *)(& bp->ctx_blk_mapping) + (unsigned long )i,
                                     208U, (struct dma_attrs *)0);
    }
    if ((unsigned long )bp->ctx_blk[i] == (unsigned long )((void *)0)) {
      goto alloc_mem_err;
    } else {
    }
    i = i + 1;
    ldv_52890: ;
    if (i < bp->ctx_pages) {
      goto ldv_52889;
    } else {
    }
  } else {
  }
  {
  err = bnx2_alloc_rx_mem(bp);
  }
  if (err != 0) {
    goto alloc_mem_err;
  } else {
  }
  {
  err = bnx2_alloc_tx_mem(bp);
  }
  if (err != 0) {
    goto alloc_mem_err;
  } else {
  }
  return (0);
  alloc_mem_err:
  {
  bnx2_free_mem(bp);
  }
  return (-12);
}
}
static void bnx2_report_fw_link(struct bnx2 *bp )
{
  u32 fw_link_status ;
  u32 bmsr ;
  {
  fw_link_status = 0U;
  if ((bp->phy_flags & 2048U) != 0U) {
    return;
  } else {
  }
  if ((unsigned int )bp->link_up != 0U) {
    {
    if ((int )bp->line_speed == 10) {
      goto case_10;
    } else {
    }
    if ((int )bp->line_speed == 100) {
      goto case_100;
    } else {
    }
    if ((int )bp->line_speed == 1000) {
      goto case_1000;
    } else {
    }
    if ((int )bp->line_speed == 2500) {
      goto case_2500;
    } else {
    }
    goto switch_break;
    case_10: ;
    if ((unsigned int )bp->duplex == 0U) {
      fw_link_status = 2U;
    } else {
      fw_link_status = 4U;
    }
    goto ldv_52898;
    case_100: ;
    if ((unsigned int )bp->duplex == 0U) {
      fw_link_status = 6U;
    } else {
      fw_link_status = 10U;
    }
    goto ldv_52898;
    case_1000: ;
    if ((unsigned int )bp->duplex == 0U) {
      fw_link_status = 12U;
    } else {
      fw_link_status = 14U;
    }
    goto ldv_52898;
    case_2500: ;
    if ((unsigned int )bp->duplex == 0U) {
      fw_link_status = 16U;
    } else {
      fw_link_status = 18U;
    }
    goto ldv_52898;
    switch_break: ;
    }
    ldv_52898:
    fw_link_status = fw_link_status | 1U;
    if ((unsigned int )bp->autoneg != 0U) {
      {
      fw_link_status = fw_link_status | 32U;
      bnx2_read_phy(bp, bp->mii_bmsr, & bmsr);
      bnx2_read_phy(bp, bp->mii_bmsr, & bmsr);
      }
      if ((bmsr & 32U) == 0U || (bp->phy_flags & 4U) != 0U) {
        fw_link_status = fw_link_status | 128U;
      } else {
        fw_link_status = fw_link_status | 64U;
      }
    } else {
    }
  } else {
    fw_link_status = 0U;
  }
  {
  bnx2_shmem_wr(bp, 12U, fw_link_status);
  }
  return;
}
}
static char *bnx2_xceiver_str(struct bnx2 *bp )
{
  {
  return ((unsigned int )bp->phy_port != 3U ? ((int )bp->phy_flags & 1 ? (char *)"Remote Copper" : (char *)"Copper") : (char *)"SerDes");
}
}
static void bnx2_report_link(struct bnx2 *bp )
{
  char *tmp ;
  char *tmp___0 ;
  {
  if ((unsigned int )bp->link_up != 0U) {
    {
    netif_carrier_on(bp->dev);
    tmp = bnx2_xceiver_str(bp);
    netdev_info((struct net_device const *)bp->dev, "NIC %s Link is Up, %d Mbps %s duplex",
                tmp, (int )bp->line_speed, (unsigned int )bp->duplex == 1U ? (char *)"full" : (char *)"half");
    }
    if ((unsigned int )bp->flow_ctrl != 0U) {
      if (((int )bp->flow_ctrl & 2) != 0) {
        {
        printk(", receive ");
        }
        if ((int )bp->flow_ctrl & 1) {
          {
          printk("& transmit ");
          }
        } else {
        }
      } else {
        {
        printk(", transmit ");
        }
      }
      {
      printk("flow control ON");
      }
    } else {
    }
    {
    printk("\n");
    }
  } else {
    {
    netif_carrier_off(bp->dev);
    tmp___0 = bnx2_xceiver_str(bp);
    netdev_err((struct net_device const *)bp->dev, "NIC %s Link is Down\n", tmp___0);
    }
  }
  {
  bnx2_report_fw_link(bp);
  }
  return;
}
}
static void bnx2_resolve_flow_ctrl(struct bnx2 *bp )
{
  u32 local_adv ;
  u32 remote_adv ;
  u32 val ;
  u32 new_local_adv ;
  u32 new_remote_adv ;
  {
  bp->flow_ctrl = 0U;
  if (((int )bp->autoneg & 3) != 3) {
    if ((unsigned int )bp->duplex == 1U) {
      bp->flow_ctrl = bp->req_flow_ctrl;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned int )bp->duplex != 1U) {
    return;
  } else {
  }
  if ((int )bp->phy_flags & 1 && (bp->chip_id & 4294901760U) == 1460142080U) {
    {
    bnx2_read_phy(bp, 20U, & val);
    }
    if ((val & 32U) != 0U) {
      bp->flow_ctrl = (u8 )((unsigned int )bp->flow_ctrl | 1U);
    } else {
    }
    if ((val & 64U) != 0U) {
      bp->flow_ctrl = (u8 )((unsigned int )bp->flow_ctrl | 2U);
    } else {
    }
    return;
  } else {
  }
  {
  bnx2_read_phy(bp, bp->mii_adv, & local_adv);
  bnx2_read_phy(bp, bp->mii_lpa, & remote_adv);
  }
  if ((int )bp->phy_flags & 1) {
    new_local_adv = 0U;
    new_remote_adv = 0U;
    if ((local_adv & 128U) != 0U) {
      new_local_adv = new_local_adv | 1024U;
    } else {
    }
    if ((local_adv & 256U) != 0U) {
      new_local_adv = new_local_adv | 2048U;
    } else {
    }
    if ((remote_adv & 128U) != 0U) {
      new_remote_adv = new_remote_adv | 1024U;
    } else {
    }
    if ((remote_adv & 256U) != 0U) {
      new_remote_adv = new_remote_adv | 2048U;
    } else {
    }
    local_adv = new_local_adv;
    remote_adv = new_remote_adv;
  } else {
  }
  if ((local_adv & 1024U) != 0U) {
    if ((local_adv & 2048U) != 0U) {
      if ((remote_adv & 1024U) != 0U) {
        bp->flow_ctrl = 3U;
      } else
      if ((remote_adv & 2048U) != 0U) {
        bp->flow_ctrl = 2U;
      } else {
      }
    } else
    if ((remote_adv & 1024U) != 0U) {
      bp->flow_ctrl = 3U;
    } else {
    }
  } else
  if ((local_adv & 2048U) != 0U) {
    if ((remote_adv & 3072U) == 3072U) {
      bp->flow_ctrl = 1U;
    } else {
    }
  } else {
  }
  return;
}
}
static int bnx2_5709s_linkup(struct bnx2 *bp )
{
  u32 val ;
  u32 speed ;
  {
  {
  bp->link_up = 1U;
  bnx2_write_phy(bp, 31U, 33056U);
  bnx2_read_phy(bp, 27U, & val);
  bnx2_write_phy(bp, 31U, 65504U);
  }
  if (((int )bp->autoneg & 1) == 0) {
    bp->line_speed = bp->req_line_speed;
    bp->duplex = bp->req_duplex;
    return (0);
  } else {
  }
  speed = val & 16128U;
  {
  if (speed == 0U) {
    goto case_0;
  } else {
  }
  if (speed == 256U) {
    goto case_256;
  } else {
  }
  if (speed == 512U) {
    goto case_512;
  } else {
  }
  if (speed == 3328U) {
    goto case_3328;
  } else {
  }
  if (speed == 768U) {
    goto case_768;
  } else {
  }
  goto switch_break;
  case_0:
  bp->line_speed = 10U;
  goto ldv_52922;
  case_256:
  bp->line_speed = 100U;
  goto ldv_52922;
  case_512: ;
  case_3328:
  bp->line_speed = 1000U;
  goto ldv_52922;
  case_768:
  bp->line_speed = 2500U;
  goto ldv_52922;
  switch_break: ;
  }
  ldv_52922: ;
  if ((val & 8U) != 0U) {
    bp->duplex = 1U;
  } else {
    bp->duplex = 0U;
  }
  return (0);
}
}
static int bnx2_5708s_linkup(struct bnx2 *bp )
{
  u32 val ;
  {
  {
  bp->link_up = 1U;
  bnx2_read_phy(bp, 20U, & val);
  }
  {
  if ((val & 24U) == 0U) {
    goto case_0;
  } else {
  }
  if ((val & 24U) == 8U) {
    goto case_8;
  } else {
  }
  if ((val & 24U) == 16U) {
    goto case_16;
  } else {
  }
  if ((val & 24U) == 24U) {
    goto case_24;
  } else {
  }
  goto switch_break;
  case_0:
  bp->line_speed = 10U;
  goto ldv_52932;
  case_8:
  bp->line_speed = 100U;
  goto ldv_52932;
  case_16:
  bp->line_speed = 1000U;
  goto ldv_52932;
  case_24:
  bp->line_speed = 2500U;
  goto ldv_52932;
  switch_break: ;
  }
  ldv_52932: ;
  if ((val & 4U) != 0U) {
    bp->duplex = 1U;
  } else {
    bp->duplex = 0U;
  }
  return (0);
}
}
static int bnx2_5706s_linkup(struct bnx2 *bp )
{
  u32 bmcr ;
  u32 local_adv ;
  u32 remote_adv ;
  u32 common ;
  {
  {
  bp->link_up = 1U;
  bp->line_speed = 1000U;
  bnx2_read_phy(bp, bp->mii_bmcr, & bmcr);
  }
  if ((bmcr & 256U) != 0U) {
    bp->duplex = 1U;
  } else {
    bp->duplex = 0U;
  }
  if ((bmcr & 4096U) == 0U) {
    return (0);
  } else {
  }
  {
  bnx2_read_phy(bp, bp->mii_adv, & local_adv);
  bnx2_read_phy(bp, bp->mii_lpa, & remote_adv);
  common = local_adv & remote_adv;
  }
  if ((common & 96U) != 0U) {
    if ((common & 32U) != 0U) {
      bp->duplex = 1U;
    } else {
      bp->duplex = 0U;
    }
  } else {
  }
  return (0);
}
}
static int bnx2_copper_linkup(struct bnx2 *bp )
{
  u32 bmcr ;
  u32 local_adv ;
  u32 remote_adv ;
  u32 common ;
  u32 ext_status ;
  {
  {
  bp->phy_flags = bp->phy_flags & 4294950911U;
  bnx2_read_phy(bp, bp->mii_bmcr, & bmcr);
  }
  if ((bmcr & 4096U) != 0U) {
    {
    bnx2_read_phy(bp, 9U, & local_adv);
    bnx2_read_phy(bp, 10U, & remote_adv);
    common = local_adv & (remote_adv >> 2);
    }
    if ((common & 512U) != 0U) {
      bp->line_speed = 1000U;
      bp->duplex = 1U;
    } else
    if ((common & 256U) != 0U) {
      bp->line_speed = 1000U;
      bp->duplex = 0U;
    } else {
      {
      bnx2_read_phy(bp, bp->mii_adv, & local_adv);
      bnx2_read_phy(bp, bp->mii_lpa, & remote_adv);
      common = local_adv & remote_adv;
      }
      if ((common & 256U) != 0U) {
        bp->line_speed = 100U;
        bp->duplex = 1U;
      } else
      if ((common & 128U) != 0U) {
        bp->line_speed = 100U;
        bp->duplex = 0U;
      } else
      if ((common & 64U) != 0U) {
        bp->line_speed = 10U;
        bp->duplex = 1U;
      } else
      if ((common & 32U) != 0U) {
        bp->line_speed = 10U;
        bp->duplex = 0U;
      } else {
        bp->line_speed = 0U;
        bp->link_up = 0U;
      }
    }
  } else {
    if ((bmcr & 8192U) != 0U) {
      bp->line_speed = 100U;
    } else {
      bp->line_speed = 10U;
    }
    if ((bmcr & 256U) != 0U) {
      bp->duplex = 1U;
    } else {
      bp->duplex = 0U;
    }
  }
  if ((unsigned int )bp->link_up != 0U) {
    {
    bnx2_read_phy(bp, 17U, & ext_status);
    }
    if ((ext_status & 8192U) != 0U) {
      bp->phy_flags = bp->phy_flags | 16384U;
    } else {
    }
  } else {
  }
  return (0);
}
}
static void bnx2_init_rx_context(struct bnx2 *bp , u32 cid )
{
  u32 val ;
  u32 rx_cid_addr ;
  {
  rx_cid_addr = cid << 7;
  val = 268435456U;
  val = val | 65536U;
  val = val | 512U;
  if ((int )bp->flow_ctrl & 1) {
    val = val | 255U;
  } else {
  }
  {
  bnx2_ctx_wr(bp, rx_cid_addr, 0U, val);
  }
  return;
}
}
static void bnx2_init_all_rx_contexts(struct bnx2 *bp )
{
  int i ;
  u32 cid ;
  {
  i = 0;
  cid = 0U;
  goto ldv_52963;
  ldv_52962: ;
  if (i == 1) {
    cid = 4U;
  } else {
  }
  {
  bnx2_init_rx_context(bp, cid);
  i = i + 1;
  cid = cid + 1U;
  }
  ldv_52963: ;
  if (i < (int )bp->num_rx_rings) {
    goto ldv_52962;
  } else {
  }
  return;
}
}
static void bnx2_set_mac_link(struct bnx2 *bp )
{
  u32 val ;
  {
  {
  writel(9760U, (void volatile *)bp->regview + 5316U);
  }
  if (((unsigned int )bp->link_up != 0U && (unsigned int )bp->line_speed == 1000U) && (unsigned int )bp->duplex == 0U) {
    {
    writel(9983U, (void volatile *)bp->regview + 5316U);
    }
  } else {
  }
  {
  val = readl((void const volatile *)bp->regview + 5120U);
  val = val & 4294965185U;
  }
  if ((unsigned int )bp->link_up != 0U) {
    {
    if ((int )bp->line_speed == 10) {
      goto case_10;
    } else {
    }
    if ((int )bp->line_speed == 100) {
      goto case_100;
    } else {
    }
    if ((int )bp->line_speed == 2500) {
      goto case_2500;
    } else {
    }
    if ((int )bp->line_speed == 1000) {
      goto case_1000;
    } else {
    }
    goto switch_break;
    case_10: ;
    if ((bp->chip_id & 4294901760U) != 1460011008U) {
      val = val | 12U;
      goto ldv_52970;
    } else {
    }
    case_100:
    val = val | 4U;
    goto ldv_52970;
    case_2500:
    val = val | 32U;
    case_1000:
    val = val | 8U;
    goto ldv_52970;
    switch_break: ;
    }
    ldv_52970: ;
  } else {
    val = val | 8U;
  }
  if ((unsigned int )bp->duplex == 0U) {
    val = val | 2U;
  } else {
  }
  {
  writel(val, (void volatile *)bp->regview + 5120U);
  bp->rx_mode = bp->rx_mode & 4294967291U;
  }
  if (((int )bp->flow_ctrl & 2) != 0) {
    bp->rx_mode = bp->rx_mode | 4U;
  } else {
  }
  {
  writel(bp->rx_mode, (void volatile *)bp->regview + 5320U);
  val = readl((void const volatile *)bp->regview + 5308U);
  val = val & 4294967279U;
  }
  if ((int )bp->flow_ctrl & 1) {
    val = val | 16U;
  } else {
  }
  {
  writel(val, (void volatile *)bp->regview + 5308U);
  writel(4096U, (void volatile *)bp->regview + 5124U);
  bnx2_init_all_rx_contexts(bp);
  }
  return;
}
}
static void bnx2_enable_bmsr1(struct bnx2 *bp )
{
  {
  if ((int )bp->phy_flags & 1 && (bp->chip_id & 4294901760U) == 1460207616U) {
    {
    bnx2_write_phy(bp, 31U, 33056U);
    }
  } else {
  }
  return;
}
}
static void bnx2_disable_bmsr1(struct bnx2 *bp )
{
  {
  if ((int )bp->phy_flags & 1 && (bp->chip_id & 4294901760U) == 1460207616U) {
    {
    bnx2_write_phy(bp, 31U, 65504U);
    }
  } else {
  }
  return;
}
}
static int bnx2_test_and_enable_2g5(struct bnx2 *bp )
{
  u32 up1 ;
  int ret ;
  {
  ret = 1;
  if ((bp->phy_flags & 8U) == 0U) {
    return (0);
  } else {
  }
  if ((int )bp->autoneg & 1) {
    bp->advertising = bp->advertising | 32768U;
  } else {
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    {
    bnx2_write_phy(bp, 31U, 33568U);
    }
  } else {
  }
  {
  bnx2_read_phy(bp, bp->mii_up1, & up1);
  }
  if ((up1 & 1U) == 0U) {
    {
    up1 = up1 | 1U;
    bnx2_write_phy(bp, bp->mii_up1, up1);
    ret = 0;
    }
  } else {
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    {
    bnx2_write_phy(bp, 31U, 65504U);
    }
  } else {
  }
  return (ret);
}
}
static int bnx2_test_and_disable_2g5(struct bnx2 *bp )
{
  u32 up1 ;
  int ret ;
  {
  ret = 0;
  if ((bp->phy_flags & 8U) == 0U) {
    return (0);
  } else {
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    {
    bnx2_write_phy(bp, 31U, 33568U);
    }
  } else {
  }
  {
  bnx2_read_phy(bp, bp->mii_up1, & up1);
  }
  if ((int )up1 & 1) {
    {
    up1 = up1 & 4294967294U;
    bnx2_write_phy(bp, bp->mii_up1, up1);
    ret = 1;
    }
  } else {
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    {
    bnx2_write_phy(bp, 31U, 65504U);
    }
  } else {
  }
  return (ret);
}
}
static void bnx2_enable_forced_2g5(struct bnx2 *bp )
{
  u32 bmcr ;
  int err ;
  u32 val ;
  int tmp ;
  {
  bmcr = bmcr;
  if ((bp->phy_flags & 8U) == 0U) {
    return;
  } else {
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    {
    bnx2_write_phy(bp, 31U, 33536U);
    tmp = bnx2_read_phy(bp, 24U, & val);
    }
    if (tmp == 0) {
      {
      val = val & 4294967280U;
      val = val | 16U;
      bnx2_write_phy(bp, 24U, val);
      }
    } else {
    }
    {
    bnx2_write_phy(bp, 31U, 65504U);
    err = bnx2_read_phy(bp, bp->mii_bmcr, & bmcr);
    }
  } else
  if ((bp->chip_id & 4294901760U) == 1460142080U) {
    {
    err = bnx2_read_phy(bp, bp->mii_bmcr, & bmcr);
    }
    if (err == 0) {
      bmcr = bmcr | 32U;
    } else {
    }
  } else {
    return;
  }
  if (err != 0) {
    return;
  } else {
  }
  if ((int )bp->autoneg & 1) {
    bmcr = bmcr & 4294963199U;
    if ((unsigned int )bp->req_duplex == 1U) {
      bmcr = bmcr | 256U;
    } else {
    }
  } else {
  }
  {
  bnx2_write_phy(bp, bp->mii_bmcr, bmcr);
  }
  return;
}
}
static void bnx2_disable_forced_2g5(struct bnx2 *bp )
{
  u32 bmcr ;
  int err ;
  u32 val ;
  int tmp ;
  {
  bmcr = bmcr;
  if ((bp->phy_flags & 8U) == 0U) {
    return;
  } else {
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    {
    bnx2_write_phy(bp, 31U, 33536U);
    tmp = bnx2_read_phy(bp, 24U, & val);
    }
    if (tmp == 0) {
      {
      val = val & 4294967279U;
      bnx2_write_phy(bp, 24U, val);
      }
    } else {
    }
    {
    bnx2_write_phy(bp, 31U, 65504U);
    err = bnx2_read_phy(bp, bp->mii_bmcr, & bmcr);
    }
  } else
  if ((bp->chip_id & 4294901760U) == 1460142080U) {
    {
    err = bnx2_read_phy(bp, bp->mii_bmcr, & bmcr);
    }
    if (err == 0) {
      bmcr = bmcr & 4294967263U;
    } else {
    }
  } else {
    return;
  }
  if (err != 0) {
    return;
  } else {
  }
  if ((int )bp->autoneg & 1) {
    bmcr = bmcr | 4672U;
  } else {
  }
  {
  bnx2_write_phy(bp, bp->mii_bmcr, bmcr);
  }
  return;
}
}
static void bnx2_5706s_force_link_dn(struct bnx2 *bp , int start )
{
  u32 val ;
  {
  {
  bnx2_write_phy(bp, 23U, 3843U);
  bnx2_read_phy(bp, 21U, & val);
  }
  if (start != 0) {
    {
    bnx2_write_phy(bp, 21U, val & 65295U);
    }
  } else {
    {
    bnx2_write_phy(bp, 21U, val | 192U);
    }
  }
  return;
}
}
static int bnx2_set_link(struct bnx2 *bp )
{
  u32 bmsr ;
  u8 link_up ;
  u32 val ;
  u32 an_dbg ;
  u32 bmcr ;
  {
  if ((unsigned int )bp->loopback - 1U <= 1U) {
    bp->link_up = 1U;
    return (0);
  } else {
  }
  if ((bp->phy_flags & 2048U) != 0U) {
    return (0);
  } else {
  }
  {
  link_up = bp->link_up;
  bnx2_enable_bmsr1(bp);
  bnx2_read_phy(bp, bp->mii_bmsr1, & bmsr);
  bnx2_read_phy(bp, bp->mii_bmsr1, & bmsr);
  bnx2_disable_bmsr1(bp);
  }
  if ((int )bp->phy_flags & 1 && (bp->chip_id & 4294901760U) == 1460011008U) {
    if ((bp->phy_flags & 4096U) != 0U) {
      {
      bnx2_5706s_force_link_dn(bp, 0);
      bp->phy_flags = bp->phy_flags & 4294963199U;
      }
    } else {
    }
    {
    val = readl((void const volatile *)bp->regview + 5124U);
    bnx2_write_phy(bp, 28U, 26624U);
    bnx2_read_phy(bp, 28U, & an_dbg);
    bnx2_read_phy(bp, 28U, & an_dbg);
    }
    if (((long )val & 2048L) != 0L && (an_dbg & 2U) == 0U) {
      bmsr = bmsr | 4U;
    } else {
      bmsr = bmsr & 4294967291U;
    }
  } else {
  }
  if ((bmsr & 4U) != 0U) {
    bp->link_up = 1U;
    if ((int )bp->phy_flags & 1) {
      if ((bp->chip_id & 4294901760U) == 1460011008U) {
        {
        bnx2_5706s_linkup(bp);
        }
      } else
      if ((bp->chip_id & 4294901760U) == 1460142080U) {
        {
        bnx2_5708s_linkup(bp);
        }
      } else
      if ((bp->chip_id & 4294901760U) == 1460207616U) {
        {
        bnx2_5709s_linkup(bp);
        }
      } else {
      }
    } else {
      {
      bnx2_copper_linkup(bp);
      }
    }
    {
    bnx2_resolve_flow_ctrl(bp);
    }
  } else {
    if ((int )bp->phy_flags & 1 && (int )bp->autoneg & 1) {
      {
      bnx2_disable_forced_2g5(bp);
      }
    } else {
    }
    if ((bp->phy_flags & 4U) != 0U) {
      {
      bnx2_read_phy(bp, bp->mii_bmcr, & bmcr);
      bmcr = bmcr | 4096U;
      bnx2_write_phy(bp, bp->mii_bmcr, bmcr);
      bp->phy_flags = bp->phy_flags & 4294967291U;
      }
    } else {
    }
    bp->link_up = 0U;
  }
  if ((int )bp->link_up != (int )link_up) {
    {
    bnx2_report_link(bp);
    }
  } else {
  }
  {
  bnx2_set_mac_link(bp);
  }
  return (0);
}
}
static int bnx2_reset_phy(struct bnx2 *bp )
{
  int i ;
  u32 reg ;
  {
  {
  bnx2_write_phy(bp, bp->mii_bmcr, 32768U);
  i = 0;
  }
  goto ldv_53022;
  ldv_53021:
  {
  __const_udelay(42950UL);
  bnx2_read_phy(bp, bp->mii_bmcr, & reg);
  }
  if ((reg & 32768U) == 0U) {
    {
    __const_udelay(85900UL);
    }
    goto ldv_53020;
  } else {
  }
  i = i + 1;
  ldv_53022: ;
  if (i <= 99) {
    goto ldv_53021;
  } else {
  }
  ldv_53020: ;
  if (i == 100) {
    return (-16);
  } else {
  }
  return (0);
}
}
static u32 bnx2_phy_get_pause_adv(struct bnx2 *bp )
{
  u32 adv ;
  {
  adv = 0U;
  if (((int )bp->req_flow_ctrl & 3) == 3) {
    if ((int )bp->phy_flags & 1) {
      adv = 128U;
    } else {
      adv = 1024U;
    }
  } else
  if ((int )bp->req_flow_ctrl & 1) {
    if ((int )bp->phy_flags & 1) {
      adv = 256U;
    } else {
      adv = 2048U;
    }
  } else
  if (((int )bp->req_flow_ctrl & 2) != 0) {
    if ((int )bp->phy_flags & 1) {
      adv = 384U;
    } else {
      adv = 3072U;
    }
  } else {
  }
  return (adv);
}
}
static int bnx2_fw_sync(struct bnx2 *bp , u32 msg_data , int ack , int silent ) ;
static int bnx2_setup_remote_phy(struct bnx2 *bp , u8 port )
{
  u32 speed_arg ;
  u32 pause_adv ;
  {
  {
  speed_arg = 0U;
  pause_adv = bnx2_phy_get_pause_adv(bp);
  }
  if ((int )bp->autoneg & 1) {
    speed_arg = speed_arg | 1024U;
    if ((int )bp->advertising & 1) {
      speed_arg = speed_arg | 1U;
    } else {
    }
    if ((bp->advertising & 2U) != 0U) {
      speed_arg = speed_arg | 2U;
    } else {
    }
    if ((bp->advertising & 4U) != 0U) {
      speed_arg = speed_arg | 4U;
    } else {
    }
    if ((bp->advertising & 8U) != 0U) {
      speed_arg = speed_arg | 8U;
    } else {
    }
    if ((bp->advertising & 32U) != 0U) {
      speed_arg = speed_arg | 32U;
    } else {
    }
    if ((bp->advertising & 32768U) != 0U) {
      speed_arg = speed_arg | 128U;
    } else {
    }
  } else
  if ((unsigned int )bp->req_line_speed == 2500U) {
    speed_arg = 128U;
  } else
  if ((unsigned int )bp->req_line_speed == 1000U) {
    speed_arg = 32U;
  } else
  if ((unsigned int )bp->req_line_speed == 100U) {
    if ((unsigned int )bp->req_duplex == 1U) {
      speed_arg = 8U;
    } else {
      speed_arg = 4U;
    }
  } else
  if ((unsigned int )bp->req_line_speed == 10U) {
    if ((unsigned int )bp->req_duplex == 1U) {
      speed_arg = 2U;
    } else {
      speed_arg = 1U;
    }
  } else {
  }
  if ((pause_adv & 1152U) != 0U) {
    speed_arg = speed_arg | 4096U;
  } else {
  }
  if ((pause_adv & 2304U) != 0U) {
    speed_arg = speed_arg | 8192U;
  } else {
  }
  if ((unsigned int )port == 0U) {
    speed_arg = speed_arg | 18432U;
  } else {
  }
  {
  bnx2_shmem_wr(bp, 20U, speed_arg);
  spin_unlock_bh(& bp->phy_lock);
  bnx2_fw_sync(bp, 268435456U, 1, 0);
  spin_lock_bh(& bp->phy_lock);
  }
  return (0);
}
}
static int bnx2_setup_serdes_phy(struct bnx2 *bp , u8 port )
{
  u32 adv ;
  u32 bmcr ;
  u32 new_adv ;
  int tmp ;
  u32 new_bmcr ;
  int force_link_down ;
  int tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  new_adv = 0U;
  if ((bp->phy_flags & 2048U) != 0U) {
    {
    tmp = bnx2_setup_remote_phy(bp, (int )port);
    }
    return (tmp);
  } else {
  }
  if (((int )bp->autoneg & 1) == 0) {
    force_link_down = 0;
    if ((unsigned int )bp->req_line_speed == 2500U) {
      {
      tmp___0 = bnx2_test_and_enable_2g5(bp);
      }
      if (tmp___0 == 0) {
        force_link_down = 1;
      } else {
      }
    } else
    if ((unsigned int )bp->req_line_speed == 1000U) {
      {
      tmp___1 = bnx2_test_and_disable_2g5(bp);
      }
      if (tmp___1 != 0) {
        force_link_down = 1;
      } else {
      }
    } else {
    }
    {
    bnx2_read_phy(bp, bp->mii_adv, & adv);
    adv = adv & 4294967199U;
    bnx2_read_phy(bp, bp->mii_bmcr, & bmcr);
    new_bmcr = bmcr & 4294963199U;
    new_bmcr = new_bmcr | 64U;
    }
    if ((bp->chip_id & 4294901760U) == 1460207616U) {
      if ((unsigned int )bp->req_line_speed == 2500U) {
        {
        bnx2_enable_forced_2g5(bp);
        }
      } else
      if ((unsigned int )bp->req_line_speed == 1000U) {
        {
        bnx2_disable_forced_2g5(bp);
        new_bmcr = new_bmcr & 4294959103U;
        }
      } else {
      }
    } else
    if ((bp->chip_id & 4294901760U) == 1460142080U) {
      if ((unsigned int )bp->req_line_speed == 2500U) {
        new_bmcr = new_bmcr | 32U;
      } else {
        new_bmcr = bmcr & 4294967263U;
      }
    } else {
    }
    if ((unsigned int )bp->req_duplex == 1U) {
      adv = adv | 32U;
      new_bmcr = new_bmcr | 256U;
    } else {
      adv = adv | 64U;
      new_bmcr = new_bmcr & 4294967039U;
    }
    if (new_bmcr != bmcr || force_link_down != 0) {
      if ((unsigned int )bp->link_up != 0U) {
        {
        bnx2_write_phy(bp, bp->mii_adv, adv & 4294967199U);
        bnx2_write_phy(bp, bp->mii_bmcr, bmcr | 4608U);
        bp->link_up = 0U;
        netif_carrier_off(bp->dev);
        bnx2_write_phy(bp, bp->mii_bmcr, new_bmcr);
        bnx2_report_link(bp);
        }
      } else {
      }
      {
      bnx2_write_phy(bp, bp->mii_adv, adv);
      bnx2_write_phy(bp, bp->mii_bmcr, new_bmcr);
      }
    } else {
      {
      bnx2_resolve_flow_ctrl(bp);
      bnx2_set_mac_link(bp);
      }
    }
    return (0);
  } else {
  }
  {
  bnx2_test_and_enable_2g5(bp);
  }
  if ((bp->advertising & 32U) != 0U) {
    new_adv = new_adv | 32U;
  } else {
  }
  {
  tmp___2 = bnx2_phy_get_pause_adv(bp);
  new_adv = new_adv | tmp___2;
  bnx2_read_phy(bp, bp->mii_adv, & adv);
  bnx2_read_phy(bp, bp->mii_bmcr, & bmcr);
  bp->serdes_an_pending = 0U;
  }
  if (adv != new_adv || (bmcr & 4096U) == 0U) {
    if ((unsigned int )bp->link_up != 0U) {
      {
      bnx2_write_phy(bp, bp->mii_bmcr, 16384U);
      spin_unlock_bh(& bp->phy_lock);
      msleep(20U);
      spin_lock_bh(& bp->phy_lock);
      }
    } else {
    }
    {
    bnx2_write_phy(bp, bp->mii_adv, new_adv);
    bnx2_write_phy(bp, bp->mii_bmcr, bmcr | 4608U);
    bp->current_interval = 83U;
    bp->serdes_an_pending = 1U;
    ldv_mod_timer_23(& bp->timer, (unsigned long )jiffies + (unsigned long )bp->current_interval);
    }
  } else {
    {
    bnx2_resolve_flow_ctrl(bp);
    bnx2_set_mac_link(bp);
    }
  }
  return (0);
}
}
static void bnx2_set_default_remote_link(struct bnx2 *bp )
{
  u32 link ;
  {
  if ((unsigned int )bp->phy_port == 0U) {
    {
    link = bnx2_shmem_rd(bp, 888U);
    }
  } else {
    {
    link = bnx2_shmem_rd(bp, 884U);
    }
  }
  if ((link & 1024U) != 0U) {
    bp->req_line_speed = 0U;
    bp->autoneg = (u8 )((unsigned int )bp->autoneg | 1U);
    bp->advertising = 64U;
    if ((int )link & 1) {
      bp->advertising = bp->advertising | 1U;
    } else {
    }
    if ((link & 2U) != 0U) {
      bp->advertising = bp->advertising | 2U;
    } else {
    }
    if ((link & 4U) != 0U) {
      bp->advertising = bp->advertising | 4U;
    } else {
    }
    if ((link & 8U) != 0U) {
      bp->advertising = bp->advertising | 8U;
    } else {
    }
    if ((link & 32U) != 0U) {
      bp->advertising = bp->advertising | 32U;
    } else {
    }
    if ((link & 128U) != 0U) {
      bp->advertising = bp->advertising | 32768U;
    } else {
    }
  } else {
    bp->autoneg = 0U;
    bp->advertising = 0U;
    bp->req_duplex = 1U;
    if ((link & 3U) != 0U) {
      bp->req_line_speed = 10U;
      if ((int )link & 1) {
        bp->req_duplex = 0U;
      } else {
      }
    } else {
    }
    if ((link & 12U) != 0U) {
      bp->req_line_speed = 100U;
      if ((link & 4U) != 0U) {
        bp->req_duplex = 0U;
      } else {
      }
    } else {
    }
    if ((link & 32U) != 0U) {
      bp->req_line_speed = 1000U;
    } else {
    }
    if ((link & 128U) != 0U) {
      bp->req_line_speed = 2500U;
    } else {
    }
  }
  return;
}
}
static void bnx2_set_default_link(struct bnx2 *bp )
{
  u32 reg ;
  u16 tmp ;
  {
  if ((bp->phy_flags & 2048U) != 0U) {
    {
    bnx2_set_default_remote_link(bp);
    }
    return;
  } else {
  }
  bp->autoneg = 3U;
  bp->req_line_speed = 0U;
  if ((int )bp->phy_flags & 1) {
    {
    bp->advertising = (bp->phy_flags & 8U) != 0U ? 32800U : 96U;
    reg = bnx2_shmem_rd(bp, 88U);
    reg = reg & 2031616U;
    }
    if (reg == 196608U) {
      bp->autoneg = 0U;
      tmp = 1000U;
      bp->line_speed = tmp;
      bp->req_line_speed = tmp;
      bp->req_duplex = 1U;
    } else {
    }
  } else {
    bp->advertising = 111U;
  }
  return;
}
}
static void bnx2_send_heart_beat(struct bnx2 *bp )
{
  u32 msg ;
  u32 addr ;
  {
  {
  spin_lock(& bp->indirect_lock);
  bp->fw_drv_pulse_wr_seq = (u16 )((int )bp->fw_drv_pulse_wr_seq + 1);
  msg = (unsigned int )bp->fw_drv_pulse_wr_seq & 32767U;
  addr = bp->shmem_base + 16U;
  writel(addr, (void volatile *)bp->regview + 120U);
  writel(msg, (void volatile *)bp->regview + 128U);
  spin_unlock(& bp->indirect_lock);
  }
  return;
}
}
static void bnx2_remote_phy_event(struct bnx2 *bp )
{
  u32 msg ;
  u8 link_up ;
  u8 old_port ;
  u32 speed ;
  {
  {
  link_up = bp->link_up;
  msg = bnx2_shmem_rd(bp, 12U);
  }
  if ((int )msg < 0) {
    {
    bnx2_send_heart_beat(bp);
    }
  } else {
  }
  msg = msg & 2147483647U;
  if ((msg & 1U) == 0U) {
    bp->link_up = 0U;
  } else {
    bp->link_up = 1U;
    speed = msg & 30U;
    bp->duplex = 1U;
    {
    if (speed == 2U) {
      goto case_2;
    } else {
    }
    if (speed == 4U) {
      goto case_4;
    } else {
    }
    if (speed == 6U) {
      goto case_6;
    } else {
    }
    if (speed == 8U) {
      goto case_8;
    } else {
    }
    if (speed == 10U) {
      goto case_10;
    } else {
    }
    if (speed == 12U) {
      goto case_12;
    } else {
    }
    if (speed == 14U) {
      goto case_14;
    } else {
    }
    if (speed == 16U) {
      goto case_16;
    } else {
    }
    if (speed == 18U) {
      goto case_18;
    } else {
    }
    goto switch_default;
    case_2:
    bp->duplex = 0U;
    case_4:
    bp->line_speed = 10U;
    goto ldv_53069;
    case_6:
    bp->duplex = 0U;
    case_8: ;
    case_10:
    bp->line_speed = 100U;
    goto ldv_53069;
    case_12:
    bp->duplex = 0U;
    case_14:
    bp->line_speed = 1000U;
    goto ldv_53069;
    case_16:
    bp->duplex = 0U;
    case_18:
    bp->line_speed = 2500U;
    goto ldv_53069;
    switch_default:
    bp->line_speed = 0U;
    goto ldv_53069;
    switch_break: ;
    }
    ldv_53069:
    bp->flow_ctrl = 0U;
    if (((int )bp->autoneg & 3) != 3) {
      if ((unsigned int )bp->duplex == 1U) {
        bp->flow_ctrl = bp->req_flow_ctrl;
      } else {
      }
    } else {
      if ((msg & 65536U) != 0U) {
        bp->flow_ctrl = (u8 )((unsigned int )bp->flow_ctrl | 1U);
      } else {
      }
      if ((msg & 131072U) != 0U) {
        bp->flow_ctrl = (u8 )((unsigned int )bp->flow_ctrl | 2U);
      } else {
      }
    }
    old_port = bp->phy_port;
    if ((msg & 1048576U) != 0U) {
      bp->phy_port = 3U;
    } else {
      bp->phy_port = 0U;
    }
    if ((int )old_port != (int )bp->phy_port) {
      {
      bnx2_set_default_link(bp);
      }
    } else {
    }
  }
  if ((int )bp->link_up != (int )link_up) {
    {
    bnx2_report_link(bp);
    }
  } else {
  }
  {
  bnx2_set_mac_link(bp);
  }
  return;
}
}
static int bnx2_set_remote_link(struct bnx2 *bp )
{
  u32 evt_code ;
  {
  {
  evt_code = bnx2_shmem_rd(bp, 852U);
  }
  {
  if (evt_code == 1U) {
    goto case_1;
  } else {
  }
  if (evt_code == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_1:
  {
  bnx2_remote_phy_event(bp);
  }
  goto ldv_53083;
  case_0: ;
  switch_default:
  {
  bnx2_send_heart_beat(bp);
  }
  goto ldv_53083;
  switch_break: ;
  }
  ldv_53083: ;
  return (0);
}
}
static int bnx2_setup_copper_phy(struct bnx2 *bp )
{
  u32 bmcr ;
  u32 adv_reg ;
  u32 new_adv ;
  u32 new_bmcr ;
  u32 tmp ;
  u32 adv1000_reg ;
  u32 new_adv1000 ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 bmsr ;
  {
  {
  new_adv = 0U;
  bnx2_read_phy(bp, bp->mii_bmcr, & bmcr);
  bnx2_read_phy(bp, bp->mii_adv, & adv_reg);
  adv_reg = adv_reg & 3553U;
  tmp = ethtool_adv_to_mii_adv_t(bp->advertising);
  new_adv = tmp | 1U;
  }
  if ((int )bp->autoneg & 1) {
    {
    new_adv1000 = 0U;
    tmp___0 = bnx2_phy_get_pause_adv(bp);
    new_adv = new_adv | tmp___0;
    bnx2_read_phy(bp, 9U, & adv1000_reg);
    adv1000_reg = adv1000_reg & 768U;
    tmp___1 = ethtool_adv_to_mii_ctrl1000_t(bp->advertising);
    new_adv1000 = new_adv1000 | tmp___1;
    }
    if ((adv1000_reg != new_adv1000 || adv_reg != new_adv) || (bmcr & 4096U) == 0U) {
      {
      bnx2_write_phy(bp, bp->mii_adv, new_adv);
      bnx2_write_phy(bp, 9U, new_adv1000);
      bnx2_write_phy(bp, bp->mii_bmcr, 4608U);
      }
    } else
    if ((unsigned int )bp->link_up != 0U) {
      {
      bnx2_resolve_flow_ctrl(bp);
      bnx2_set_mac_link(bp);
      }
    } else {
    }
    return (0);
  } else {
  }
  if (adv_reg != new_adv) {
    {
    bnx2_write_phy(bp, bp->mii_adv, new_adv);
    }
  } else {
  }
  new_bmcr = 0U;
  if ((unsigned int )bp->req_line_speed == 100U) {
    new_bmcr = new_bmcr | 8192U;
  } else {
  }
  if ((unsigned int )bp->req_duplex == 1U) {
    new_bmcr = new_bmcr | 256U;
  } else {
  }
  if (new_bmcr != bmcr) {
    {
    bnx2_read_phy(bp, bp->mii_bmsr, & bmsr);
    bnx2_read_phy(bp, bp->mii_bmsr, & bmsr);
    }
    if ((bmsr & 4U) != 0U) {
      {
      bnx2_write_phy(bp, bp->mii_bmcr, 16384U);
      spin_unlock_bh(& bp->phy_lock);
      msleep(50U);
      spin_lock_bh(& bp->phy_lock);
      bnx2_read_phy(bp, bp->mii_bmsr, & bmsr);
      bnx2_read_phy(bp, bp->mii_bmsr, & bmsr);
      }
    } else {
    }
    {
    bnx2_write_phy(bp, bp->mii_bmcr, new_bmcr);
    }
    if ((bmsr & 4U) != 0U) {
      {
      bp->line_speed = bp->req_line_speed;
      bp->duplex = bp->req_duplex;
      bnx2_resolve_flow_ctrl(bp);
      bnx2_set_mac_link(bp);
      }
    } else {
    }
  } else {
    {
    bnx2_resolve_flow_ctrl(bp);
    bnx2_set_mac_link(bp);
    }
  }
  return (0);
}
}
static int bnx2_setup_phy(struct bnx2 *bp , u8 port )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )bp->loopback == 1U) {
    return (0);
  } else {
  }
  if ((int )bp->phy_flags & 1) {
    {
    tmp = bnx2_setup_serdes_phy(bp, (int )port);
    }
    return (tmp);
  } else {
    {
    tmp___0 = bnx2_setup_copper_phy(bp);
    }
    return (tmp___0);
  }
}
}
static int bnx2_init_5709s_phy(struct bnx2 *bp , int reset_phy )
{
  u32 val ;
  {
  {
  bp->mii_bmcr = 16U;
  bp->mii_bmsr = 17U;
  bp->mii_bmsr1 = 27U;
  bp->mii_adv = 20U;
  bp->mii_lpa = 21U;
  bp->mii_up1 = 25U;
  bnx2_write_phy(bp, 31U, 65488U);
  bnx2_write_phy(bp, 30U, 14336U);
  bnx2_write_phy(bp, 31U, 65504U);
  }
  if (reset_phy != 0) {
    {
    bnx2_reset_phy(bp);
    }
  } else {
  }
  {
  bnx2_write_phy(bp, 31U, 33536U);
  bnx2_read_phy(bp, 16U, & val);
  val = val & 4294967279U;
  val = val | 1U;
  bnx2_write_phy(bp, 16U, val);
  bnx2_write_phy(bp, 31U, 33568U);
  bnx2_read_phy(bp, 25U, & val);
  }
  if ((bp->phy_flags & 8U) != 0U) {
    val = val | 1U;
  } else {
    val = val & 4294967294U;
  }
  {
  bnx2_write_phy(bp, 25U, val);
  bnx2_write_phy(bp, 31U, 33616U);
  bnx2_read_phy(bp, 16U, & val);
  val = val | 3U;
  bnx2_write_phy(bp, 16U, val);
  bnx2_write_phy(bp, 31U, 33648U);
  val = 57344U;
  bnx2_write_phy(bp, 18U, val);
  bnx2_write_phy(bp, 31U, 65504U);
  }
  return (0);
}
}
static int bnx2_init_5708s_phy(struct bnx2 *bp , int reset_phy )
{
  u32 val ;
  u32 tmp ;
  u32 is_backplane ;
  {
  if (reset_phy != 0) {
    {
    bnx2_reset_phy(bp);
    }
  } else {
  }
  {
  bp->mii_up1 = 11U;
  bnx2_write_phy(bp, 31U, 2U);
  bnx2_write_phy(bp, 16U, 1U);
  bnx2_write_phy(bp, 31U, 0U);
  bnx2_read_phy(bp, 16U, & val);
  val = val | 17U;
  bnx2_write_phy(bp, 16U, val);
  bnx2_read_phy(bp, 17U, & val);
  val = val | 1U;
  bnx2_write_phy(bp, 17U, val);
  }
  if ((bp->phy_flags & 8U) != 0U) {
    {
    bnx2_read_phy(bp, 11U, & val);
    val = val | 1U;
    bnx2_write_phy(bp, 11U, val);
    }
  } else {
  }
  if (((bp->chip_id & 4294967280U) == 1460142080U || (bp->chip_id & 4294967280U) == 1460146176U) || (bp->chip_id & 4294967280U) == 1460146192U) {
    {
    bnx2_write_phy(bp, 31U, 5U);
    bnx2_read_phy(bp, 21U, & val);
    val = val & 4294967247U;
    bnx2_write_phy(bp, 21U, val);
    bnx2_write_phy(bp, 31U, 0U);
    }
  } else {
  }
  {
  tmp = bnx2_shmem_rd(bp, 88U);
  val = tmp & 65535U;
  }
  if (val != 0U) {
    {
    is_backplane = bnx2_shmem_rd(bp, 60U);
    }
    if ((is_backplane & 64U) != 0U) {
      {
      bnx2_write_phy(bp, 31U, 5U);
      bnx2_write_phy(bp, 23U, val);
      bnx2_write_phy(bp, 31U, 0U);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int bnx2_init_5706s_phy(struct bnx2 *bp , int reset_phy )
{
  u32 val ;
  u32 val___0 ;
  {
  if (reset_phy != 0) {
    {
    bnx2_reset_phy(bp);
    }
  } else {
  }
  bp->phy_flags = bp->phy_flags & 4294967291U;
  if ((bp->chip_id & 4294901760U) == 1460011008U) {
    {
    writel(768U, (void volatile *)bp->regview + 2236U);
    }
  } else {
  }
  if ((bp->dev)->mtu > 1500U) {
    {
    bnx2_write_phy(bp, 24U, 7U);
    bnx2_read_phy(bp, 24U, & val);
    bnx2_write_phy(bp, 24U, (val & 49144U) | 16384U);
    bnx2_write_phy(bp, 28U, 27648U);
    bnx2_read_phy(bp, 28U, & val);
    bnx2_write_phy(bp, 28U, (val & 1021U) | 60418U);
    }
  } else {
    {
    bnx2_write_phy(bp, 24U, 7U);
    bnx2_read_phy(bp, 24U, & val___0);
    bnx2_write_phy(bp, 24U, val___0 & 4294950904U);
    bnx2_write_phy(bp, 28U, 27648U);
    bnx2_read_phy(bp, 28U, & val___0);
    bnx2_write_phy(bp, 28U, (val___0 & 1021U) | 60416U);
    }
  }
  return (0);
}
}
static int bnx2_init_copper_phy(struct bnx2 *bp , int reset_phy )
{
  u32 val ;
  {
  if (reset_phy != 0) {
    {
    bnx2_reset_phy(bp);
    }
  } else {
  }
  if ((bp->phy_flags & 2U) != 0U) {
    {
    bnx2_write_phy(bp, 24U, 3072U);
    bnx2_write_phy(bp, 23U, 10U);
    bnx2_write_phy(bp, 21U, 12555U);
    bnx2_write_phy(bp, 23U, 8223U);
    bnx2_write_phy(bp, 21U, 38150U);
    bnx2_write_phy(bp, 23U, 16415U);
    bnx2_write_phy(bp, 21U, 5346U);
    bnx2_write_phy(bp, 24U, 1024U);
    }
  } else {
  }
  if ((bp->phy_flags & 1024U) != 0U) {
    {
    bnx2_write_phy(bp, 23U, 3848U);
    bnx2_read_phy(bp, 21U, & val);
    val = val & 4294967039U;
    bnx2_write_phy(bp, 21U, val);
    }
  } else {
  }
  if ((bp->dev)->mtu > 1500U) {
    {
    bnx2_write_phy(bp, 24U, 7U);
    bnx2_read_phy(bp, 24U, & val);
    bnx2_write_phy(bp, 24U, val | 16384U);
    bnx2_read_phy(bp, 16U, & val);
    bnx2_write_phy(bp, 16U, val | 1U);
    }
  } else {
    {
    bnx2_write_phy(bp, 24U, 7U);
    bnx2_read_phy(bp, 24U, & val);
    bnx2_write_phy(bp, 24U, val & 4294950904U);
    bnx2_read_phy(bp, 16U, & val);
    bnx2_write_phy(bp, 16U, val & 4294967294U);
    }
  }
  {
  bnx2_write_phy(bp, 24U, 28679U);
  bnx2_read_phy(bp, 24U, & val);
  val = val | 32784U;
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    val = val | 512U;
  } else {
  }
  {
  bnx2_write_phy(bp, 24U, val);
  }
  return (0);
}
}
static int bnx2_init_phy(struct bnx2 *bp , int reset_phy )
{
  u32 val ;
  int rc ;
  {
  {
  rc = 0;
  bp->phy_flags = bp->phy_flags & 4294966527U;
  bp->phy_flags = bp->phy_flags | 512U;
  bp->mii_bmcr = 0U;
  bp->mii_bmsr = 1U;
  bp->mii_bmsr1 = 1U;
  bp->mii_adv = 4U;
  bp->mii_lpa = 5U;
  writel(2048U, (void volatile *)bp->regview + 5128U);
  }
  if ((bp->phy_flags & 2048U) != 0U) {
    goto setup_phy;
  } else {
  }
  {
  bnx2_read_phy(bp, 2U, & val);
  bp->phy_id = val << 16;
  bnx2_read_phy(bp, 3U, & val);
  bp->phy_id = bp->phy_id | (val & 65535U);
  }
  if ((int )bp->phy_flags & 1) {
    if ((bp->chip_id & 4294901760U) == 1460011008U) {
      {
      rc = bnx2_init_5706s_phy(bp, reset_phy);
      }
    } else
    if ((bp->chip_id & 4294901760U) == 1460142080U) {
      {
      rc = bnx2_init_5708s_phy(bp, reset_phy);
      }
    } else
    if ((bp->chip_id & 4294901760U) == 1460207616U) {
      {
      rc = bnx2_init_5709s_phy(bp, reset_phy);
      }
    } else {
    }
  } else {
    {
    rc = bnx2_init_copper_phy(bp, reset_phy);
    }
  }
  setup_phy: ;
  if (rc == 0) {
    {
    rc = bnx2_setup_phy(bp, (int )bp->phy_port);
    }
  } else {
  }
  return (rc);
}
}
static int bnx2_set_mac_loopback(struct bnx2 *bp )
{
  u32 mac_mode ;
  {
  {
  mac_mode = readl((void const volatile *)bp->regview + 5120U);
  mac_mode = mac_mode & 4294967283U;
  mac_mode = mac_mode | 2064U;
  writel(mac_mode, (void volatile *)bp->regview + 5120U);
  bp->link_up = 1U;
  }
  return (0);
}
}
static int bnx2_test_link(struct bnx2 *bp ) ;
static int bnx2_set_phy_loopback(struct bnx2 *bp )
{
  u32 mac_mode ;
  int rc ;
  int i ;
  int tmp ;
  {
  {
  spin_lock_bh(& bp->phy_lock);
  rc = bnx2_write_phy(bp, bp->mii_bmcr, 16704U);
  spin_unlock_bh(& bp->phy_lock);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  i = 0;
  goto ldv_53143;
  ldv_53142:
  {
  tmp = bnx2_test_link(bp);
  }
  if (tmp == 0) {
    goto ldv_53141;
  } else {
  }
  {
  msleep(100U);
  i = i + 1;
  }
  ldv_53143: ;
  if (i <= 9) {
    goto ldv_53142;
  } else {
  }
  ldv_53141:
  {
  mac_mode = readl((void const volatile *)bp->regview + 5120U);
  mac_mode = mac_mode & 4294965185U;
  mac_mode = mac_mode | 8U;
  writel(mac_mode, (void volatile *)bp->regview + 5120U);
  bp->link_up = 1U;
  }
  return (0);
}
}
static void bnx2_dump_mcp_state(struct bnx2 *bp )
{
  struct net_device *dev ;
  u32 mcp_p0 ;
  u32 mcp_p1 ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  u32 tmp___10 ;
  u32 tmp___11 ;
  u32 tmp___12 ;
  u32 tmp___13 ;
  u32 tmp___14 ;
  u32 tmp___15 ;
  u32 tmp___16 ;
  u32 tmp___17 ;
  u32 tmp___18 ;
  u32 tmp___19 ;
  u32 tmp___20 ;
  u32 tmp___21 ;
  u32 tmp___22 ;
  u32 tmp___23 ;
  u32 tmp___24 ;
  u32 tmp___25 ;
  u32 tmp___26 ;
  u32 tmp___27 ;
  u32 tmp___28 ;
  u32 tmp___29 ;
  u32 tmp___30 ;
  {
  {
  dev = bp->dev;
  netdev_err((struct net_device const *)dev, "<--- start MCP states dump --->\n");
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    mcp_p0 = 1506760U;
    mcp_p1 = 1505736U;
  } else {
    mcp_p0 = 1482184U;
    mcp_p1 = 1481160U;
  }
  {
  tmp = bnx2_reg_rd_ind(bp, mcp_p1);
  tmp___0 = bnx2_reg_rd_ind(bp, mcp_p0);
  netdev_err((struct net_device const *)dev, "DEBUG: MCP_STATE_P0[%08x] MCP_STATE_P1[%08x]\n",
             tmp___0, tmp);
  tmp___1 = bnx2_reg_rd_ind(bp, 1331208U);
  tmp___2 = bnx2_reg_rd_ind(bp, 1331204U);
  tmp___3 = bnx2_reg_rd_ind(bp, 1331200U);
  netdev_err((struct net_device const *)dev, "DEBUG: MCP mode[%08x] state[%08x] evt_mask[%08x]\n",
             tmp___3, tmp___2, tmp___1);
  tmp___4 = bnx2_reg_rd_ind(bp, 1331232U);
  tmp___5 = bnx2_reg_rd_ind(bp, 1331228U);
  tmp___6 = bnx2_reg_rd_ind(bp, 1331228U);
  netdev_err((struct net_device const *)dev, "DEBUG: pc[%08x] pc[%08x] instr[%08x]\n",
             tmp___6, tmp___5, tmp___4);
  netdev_err((struct net_device const *)dev, "DEBUG: shmem states:\n");
  tmp___7 = bnx2_shmem_rd(bp, 12U);
  tmp___8 = bnx2_shmem_rd(bp, 8U);
  tmp___9 = bnx2_shmem_rd(bp, 4U);
  netdev_err((struct net_device const *)dev, "DEBUG: drv_mb[%08x] fw_mb[%08x] link_status[%08x]",
             tmp___9, tmp___8, tmp___7);
  tmp___10 = bnx2_shmem_rd(bp, 16U);
  printk(" drv_pulse_mb[%08x]\n", tmp___10);
  tmp___11 = bnx2_shmem_rd(bp, 448U);
  tmp___12 = bnx2_shmem_rd(bp, 32U);
  netdev_err((struct net_device const *)dev, "DEBUG: dev_info_signature[%08x] reset_type[%08x]",
             tmp___12, tmp___11);
  tmp___13 = bnx2_shmem_rd(bp, 456U);
  printk(" condition[%08x]\n", tmp___13);
  tmp___14 = bnx2_shmem_rd(bp, 460U);
  tmp___15 = bnx2_shmem_rd(bp, 456U);
  tmp___16 = bnx2_shmem_rd(bp, 452U);
  tmp___17 = bnx2_shmem_rd(bp, 448U);
  netdev_err((struct net_device const *)bp->dev, "DEBUG: %08x: %08x %08x %08x %08x\n",
             448, tmp___17, tmp___16, tmp___15, tmp___14);
  tmp___18 = bnx2_shmem_rd(bp, 984U);
  tmp___19 = bnx2_shmem_rd(bp, 980U);
  tmp___20 = bnx2_shmem_rd(bp, 976U);
  tmp___21 = bnx2_shmem_rd(bp, 972U);
  netdev_err((struct net_device const *)bp->dev, "DEBUG: %08x: %08x %08x %08x %08x\n",
             972, tmp___21, tmp___20, tmp___19, tmp___18);
  tmp___22 = bnx2_shmem_rd(bp, 1000U);
  tmp___23 = bnx2_shmem_rd(bp, 996U);
  tmp___24 = bnx2_shmem_rd(bp, 992U);
  tmp___25 = bnx2_shmem_rd(bp, 988U);
  netdev_err((struct net_device const *)bp->dev, "DEBUG: %08x: %08x %08x %08x %08x\n",
             988, tmp___25, tmp___24, tmp___23, tmp___22);
  tmp___26 = bnx2_shmem_rd(bp, 1016U);
  tmp___27 = bnx2_shmem_rd(bp, 1012U);
  tmp___28 = bnx2_shmem_rd(bp, 1008U);
  tmp___29 = bnx2_shmem_rd(bp, 1004U);
  netdev_err((struct net_device const *)bp->dev, "DEBUG: %08x: %08x %08x %08x %08x\n",
             1004, tmp___29, tmp___28, tmp___27, tmp___26);
  tmp___30 = bnx2_shmem_rd(bp, 1020U);
  netdev_err((struct net_device const *)dev, "DEBUG: 0x3fc[%08x]\n", tmp___30);
  netdev_err((struct net_device const *)dev, "<--- end MCP states dump --->\n");
  }
  return;
}
}
static int bnx2_fw_sync(struct bnx2 *bp , u32 msg_data , int ack , int silent )
{
  int i ;
  u32 val ;
  {
  {
  bp->fw_wr_seq = (u16 )((int )bp->fw_wr_seq + 1);
  msg_data = msg_data | (u32 )bp->fw_wr_seq;
  bp->fw_last_msg = msg_data;
  bnx2_shmem_wr(bp, 4U, msg_data);
  }
  if (ack == 0) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_53160;
  ldv_53159:
  {
  msleep(10U);
  val = bnx2_shmem_rd(bp, 8U);
  }
  if (((val ^ msg_data) & 65535U) == 0U) {
    goto ldv_53158;
  } else {
  }
  i = i + 1;
  ldv_53160: ;
  if (i <= 99) {
    goto ldv_53159;
  } else {
  }
  ldv_53158: ;
  if ((msg_data & 16711680U) == 65536U) {
    return (0);
  } else {
  }
  if (((val ^ msg_data) & 65535U) != 0U) {
    {
    msg_data = msg_data & 16777215U;
    msg_data = msg_data | 83886080U;
    bnx2_shmem_wr(bp, 4U, msg_data);
    }
    if (silent == 0) {
      {
      printk("\vbnx2: fw sync timeout, reset code = %x\n", msg_data);
      bnx2_dump_mcp_state(bp);
      }
    } else {
    }
    return (-16);
  } else {
  }
  if ((val & 16711680U) != 0U) {
    return (-5);
  } else {
  }
  return (0);
}
}
static int bnx2_init_5709_context(struct bnx2 *bp )
{
  int i ;
  int ret ;
  u32 val ;
  int j ;
  {
  {
  ret = 0;
  val = 12289U;
  val = val | 262144U;
  writel(val, (void volatile *)bp->regview + 4096U);
  i = 0;
  }
  goto ldv_53169;
  ldv_53168:
  {
  val = readl((void const volatile *)bp->regview + 4096U);
  }
  if (((long )val & 8192L) == 0L) {
    goto ldv_53167;
  } else {
  }
  {
  __const_udelay(8590UL);
  i = i + 1;
  }
  ldv_53169: ;
  if (i <= 9) {
    goto ldv_53168;
  } else {
  }
  ldv_53167: ;
  if (((long )val & 8192L) != 0L) {
    return (-16);
  } else {
  }
  i = 0;
  goto ldv_53176;
  ldv_53175: ;
  if ((unsigned long )bp->ctx_blk[i] != (unsigned long )((void *)0)) {
    {
    memset(bp->ctx_blk[i], 0, 4096UL);
    }
  } else {
    return (-12);
  }
  {
  writel((unsigned int )bp->ctx_blk_mapping[i] | 1U, (void volatile *)bp->regview + 4300U);
  writel((unsigned int )(bp->ctx_blk_mapping[i] >> 32), (void volatile *)bp->regview + 4304U);
  writel((unsigned int )(i | 1073741824), (void volatile *)bp->regview + 4296U);
  j = 0;
  }
  goto ldv_53173;
  ldv_53172:
  {
  val = readl((void const volatile *)bp->regview + 4296U);
  }
  if (((long )val & 1073741824L) == 0L) {
    goto ldv_53171;
  } else {
  }
  {
  __const_udelay(21475UL);
  j = j + 1;
  }
  ldv_53173: ;
  if (j <= 9) {
    goto ldv_53172;
  } else {
  }
  ldv_53171: ;
  if (((long )val & 1073741824L) != 0L) {
    ret = -16;
    goto ldv_53174;
  } else {
  }
  i = i + 1;
  ldv_53176: ;
  if (i < bp->ctx_pages) {
    goto ldv_53175;
  } else {
  }
  ldv_53174: ;
  return (ret);
}
}
static void bnx2_init_context(struct bnx2 *bp )
{
  u32 vcid ;
  u32 vcid_addr ;
  u32 pcid_addr ;
  u32 offset ;
  int i ;
  u32 new_vcid ;
  {
  vcid = 96U;
  goto ldv_53193;
  ldv_53192:
  vcid = vcid - 1U;
  if ((bp->chip_id & 4294967280U) == 1460011008U) {
    vcid_addr = vcid << 6;
    if ((vcid & 8U) != 0U) {
      new_vcid = (vcid & 247U) + 96U;
    } else {
      new_vcid = vcid;
    }
    pcid_addr = new_vcid << 6;
  } else {
    vcid_addr = vcid << 7;
    pcid_addr = vcid_addr;
  }
  i = 0;
  goto ldv_53190;
  ldv_53189:
  {
  vcid_addr = vcid_addr + (u32 )(i << 6);
  pcid_addr = pcid_addr + (u32 )(i << 6);
  writel(vcid_addr, (void volatile *)bp->regview + 4104U);
  writel(pcid_addr, (void volatile *)bp->regview + 4108U);
  offset = 0U;
  }
  goto ldv_53187;
  ldv_53186:
  {
  bnx2_ctx_wr(bp, vcid_addr, offset, 0U);
  offset = offset + 4U;
  }
  ldv_53187: ;
  if (offset <= 63U) {
    goto ldv_53186;
  } else {
  }
  i = i + 1;
  ldv_53190: ;
  if (i <= 1) {
    goto ldv_53189;
  } else {
  }
  ldv_53193: ;
  if (vcid != 0U) {
    goto ldv_53192;
  } else {
  }
  return;
}
}
static int bnx2_alloc_bad_rbuf(struct bnx2 *bp )
{
  u16 *good_mbuf ;
  u32 good_mbuf_cnt ;
  u32 val ;
  void *tmp ;
  {
  {
  tmp = kmalloc(1024UL, 208U);
  good_mbuf = (u16 *)tmp;
  }
  if ((unsigned long )good_mbuf == (unsigned long )((u16 *)0U)) {
    return (-12);
  } else {
  }
  {
  writel(4096U, (void volatile *)bp->regview + 2064U);
  good_mbuf_cnt = 0U;
  val = bnx2_reg_rd_ind(bp, 2097156U);
  }
  goto ldv_53202;
  ldv_53201:
  {
  bnx2_reg_wr_ind(bp, 2097152U, 32U);
  val = bnx2_reg_rd_ind(bp, 2097168U);
  val = val & 65408U;
  }
  if ((val & 512U) == 0U) {
    *(good_mbuf + (unsigned long )good_mbuf_cnt) = (unsigned short )val;
    good_mbuf_cnt = good_mbuf_cnt + 1U;
  } else {
  }
  {
  val = bnx2_reg_rd_ind(bp, 2097156U);
  }
  ldv_53202: ;
  if (((long )val & 1023L) != 0L) {
    goto ldv_53201;
  } else {
  }
  goto ldv_53205;
  ldv_53204:
  {
  good_mbuf_cnt = good_mbuf_cnt - 1U;
  val = (u32 )*(good_mbuf + (unsigned long )good_mbuf_cnt);
  val = ((val << 9) | val) | 1U;
  bnx2_reg_wr_ind(bp, 2097172U, val);
  }
  ldv_53205: ;
  if (good_mbuf_cnt != 0U) {
    goto ldv_53204;
  } else {
  }
  {
  kfree((void const *)good_mbuf);
  }
  return (0);
}
}
static void bnx2_set_mac_addr(struct bnx2 *bp , u8 *mac_addr , u32 pos )
{
  u32 val ;
  {
  {
  val = (u32 )(((int )*mac_addr << 8) | (int )*(mac_addr + 1UL));
  writel(val, (void volatile *)(bp->regview + ((unsigned long )(pos * 8U) + 5136UL)));
  val = (u32 )(((((int )*(mac_addr + 2UL) << 24) | ((int )*(mac_addr + 3UL) << 16)) | ((int )*(mac_addr + 4UL) << 8)) | (int )*(mac_addr + 5UL));
  writel(val, (void volatile *)(bp->regview + ((unsigned long )(pos * 8U) + 5140UL)));
  }
  return;
}
}
__inline static int bnx2_alloc_rx_page(struct bnx2 *bp , struct bnx2_rx_ring_info *rxr ,
                                       u16 index , gfp_t gfp )
{
  dma_addr_t mapping ;
  struct bnx2_sw_pg *rx_pg ;
  struct bnx2_rx_bd *rxbd ;
  struct page *page ;
  struct page *tmp ;
  int tmp___0 ;
  {
  {
  rx_pg = rxr->rx_pg_ring + (unsigned long )index;
  rxbd = rxr->rx_pg_desc_ring[((unsigned long )index & 0xffffffffffffff00UL) >> 8] + ((unsigned long )index & 255UL);
  tmp = alloc_pages(gfp, 0U);
  page = tmp;
  }
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    return (-12);
  } else {
  }
  {
  mapping = dma_map_page(& (bp->pdev)->dev, page, 0UL, 4096UL, 2);
  tmp___0 = dma_mapping_error(& (bp->pdev)->dev, mapping);
  }
  if (tmp___0 != 0) {
    {
    __free_pages(page, 0U);
    }
    return (-5);
  } else {
  }
  rx_pg->page = page;
  rx_pg->mapping = mapping;
  rxbd->rx_bd_haddr_hi = (u32 )(mapping >> 32);
  rxbd->rx_bd_haddr_lo = (u32 )mapping;
  return (0);
}
}
static void bnx2_free_rx_page(struct bnx2 *bp , struct bnx2_rx_ring_info *rxr , u16 index )
{
  struct bnx2_sw_pg *rx_pg ;
  struct page *page ;
  {
  rx_pg = rxr->rx_pg_ring + (unsigned long )index;
  page = rx_pg->page;
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    return;
  } else {
  }
  {
  dma_unmap_page(& (bp->pdev)->dev, rx_pg->mapping, 4096UL, 2);
  __free_pages(page, 0U);
  rx_pg->page = (struct page *)0;
  }
  return;
}
}
__inline static int bnx2_alloc_rx_data(struct bnx2 *bp , struct bnx2_rx_ring_info *rxr ,
                                       u16 index , gfp_t gfp )
{
  u8 *data ;
  struct bnx2_sw_bd *rx_buf ;
  dma_addr_t mapping ;
  struct bnx2_rx_bd *rxbd ;
  void *tmp ;
  struct l2_fhdr *tmp___0 ;
  int tmp___1 ;
  {
  {
  rx_buf = rxr->rx_buf_ring + (unsigned long )index;
  rxbd = rxr->rx_desc_ring[((unsigned long )index & 0xffffffffffffff00UL) >> 8] + ((unsigned long )index & 255UL);
  tmp = kmalloc((size_t )bp->rx_buf_size, gfp);
  data = (u8 *)tmp;
  }
  if ((unsigned long )data == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  {
  tmp___0 = get_l2_fhdr(data);
  mapping = dma_map_single_attrs(& (bp->pdev)->dev, (void *)tmp___0, (size_t )bp->rx_buf_use_size,
                                 2, (struct dma_attrs *)0);
  tmp___1 = dma_mapping_error(& (bp->pdev)->dev, mapping);
  }
  if (tmp___1 != 0) {
    {
    kfree((void const *)data);
    }
    return (-5);
  } else {
  }
  rx_buf->data = data;
  rx_buf->mapping = mapping;
  rxbd->rx_bd_haddr_hi = (u32 )(mapping >> 32);
  rxbd->rx_bd_haddr_lo = (u32 )mapping;
  rxr->rx_prod_bseq = rxr->rx_prod_bseq + bp->rx_buf_use_size;
  return (0);
}
}
static int bnx2_phy_event_is_set(struct bnx2 *bp , struct bnx2_napi *bnapi , u32 event )
{
  struct status_block *sblk ;
  u32 new_link_state ;
  u32 old_link_state ;
  int is_set ;
  {
  sblk = bnapi->status_blk.msi;
  is_set = 1;
  new_link_state = sblk->status_attn_bits & event;
  old_link_state = sblk->status_attn_bits_ack & event;
  if (new_link_state != old_link_state) {
    if (new_link_state != 0U) {
      {
      writel(event, (void volatile *)bp->regview + 136U);
      }
    } else {
      {
      writel(event, (void volatile *)bp->regview + 140U);
      }
    }
  } else {
    is_set = 0;
  }
  return (is_set);
}
}
static void bnx2_phy_int(struct bnx2 *bp , struct bnx2_napi *bnapi )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  spin_lock(& bp->phy_lock);
  tmp = bnx2_phy_event_is_set(bp, bnapi, 1U);
  }
  if (tmp != 0) {
    {
    bnx2_set_link(bp);
    }
  } else {
  }
  {
  tmp___0 = bnx2_phy_event_is_set(bp, bnapi, 16777216U);
  }
  if (tmp___0 != 0) {
    {
    bnx2_set_remote_link(bp);
    }
  } else {
  }
  {
  spin_unlock(& bp->phy_lock);
  }
  return;
}
}
__inline static u16 bnx2_get_hw_tx_cons(struct bnx2_napi *bnapi )
{
  u16 cons ;
  long tmp ;
  {
  {
  __asm__ volatile ("": : : "memory");
  cons = *(bnapi->hw_tx_cons_ptr);
  __asm__ volatile ("": : : "memory");
  tmp = ldv__builtin_expect(((unsigned long )cons & 255UL) == 255UL, 0L);
  }
  if (tmp != 0L) {
    cons = (u16 )((int )cons + 1);
  } else {
  }
  return (cons);
}
}
static int bnx2_tx_int(struct bnx2 *bp , struct bnx2_napi *bnapi , int budget )
{
  struct bnx2_tx_ring_info *txr ;
  u16 hw_cons ;
  u16 sw_cons ;
  u16 sw_ring_cons ;
  int tx_pkt ;
  int index ;
  unsigned int tx_bytes ;
  struct netdev_queue *txq ;
  struct bnx2_sw_tx_bd *tx_buf ;
  struct sk_buff *skb ;
  int i ;
  int last ;
  u16 last_idx ;
  u16 last_ring_idx ;
  long tmp ;
  unsigned int tmp___0 ;
  struct bnx2_sw_tx_bd *tx_buf___0 ;
  unsigned char *tmp___1 ;
  unsigned int tmp___2 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  bool tmp___3 ;
  u32 tmp___4 ;
  bool tmp___5 ;
  long tmp___6 ;
  u32 tmp___7 ;
  {
  {
  txr = & bnapi->tx_ring;
  tx_pkt = 0;
  tx_bytes = 0U;
  index = (int )(((long )bnapi - (long )(& bp->bnx2_napi)) / 960L);
  txq = netdev_get_tx_queue((struct net_device const *)bp->dev, (unsigned int )index);
  hw_cons = bnx2_get_hw_tx_cons(bnapi);
  sw_cons = txr->tx_cons;
  }
  goto ldv_53282;
  ldv_53281:
  {
  sw_ring_cons = (unsigned int )sw_cons & 255U;
  tx_buf = txr->tx_buf_ring + (unsigned long )sw_ring_cons;
  skb = tx_buf->skb;
  __builtin_prefetch((void const *)(& skb->end));
  }
  if ((unsigned int )tx_buf->is_gso != 0U) {
    {
    last_idx = (unsigned int )((int )sw_cons + (int )tx_buf->nr_frags) + 1U;
    last_ring_idx = (unsigned int )((int )sw_ring_cons + (int )tx_buf->nr_frags) + 1U;
    tmp = ldv__builtin_expect((unsigned int )last_ring_idx > 254U, 0L);
    }
    if (tmp != 0L) {
      last_idx = (u16 )((int )last_idx + 1);
    } else {
    }
    if ((int )((short )((int )last_idx - (int )hw_cons)) > 0) {
      goto ldv_53276;
    } else {
    }
  } else {
  }
  {
  tmp___0 = skb_headlen((struct sk_buff const *)skb);
  dma_unmap_single_attrs(& (bp->pdev)->dev, tx_buf->mapping, (size_t )tmp___0, 1,
                         (struct dma_attrs *)0);
  tx_buf->skb = (struct sk_buff *)0;
  last = (int )tx_buf->nr_frags;
  i = 0;
  }
  goto ldv_53279;
  ldv_53278:
  {
  sw_cons = ((unsigned long )sw_cons & 254UL) == 254UL ? (unsigned int )sw_cons + 2U : (unsigned int )sw_cons + 1U;
  tx_buf___0 = txr->tx_buf_ring + ((unsigned long )sw_cons & 255UL);
  tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
  tmp___2 = skb_frag_size((skb_frag_t const *)(& ((struct skb_shared_info *)tmp___1)->frags) + (unsigned long )i);
  dma_unmap_page(& (bp->pdev)->dev, tx_buf___0->mapping, (size_t )tmp___2, 1);
  i = i + 1;
  }
  ldv_53279: ;
  if (i < last) {
    goto ldv_53278;
  } else {
  }
  {
  sw_cons = ((unsigned long )sw_cons & 254UL) == 254UL ? (unsigned int )sw_cons + 2U : (unsigned int )sw_cons + 1U;
  tx_bytes = tx_bytes + skb->len;
  consume_skb(skb);
  tx_pkt = tx_pkt + 1;
  }
  if (tx_pkt == budget) {
    goto ldv_53276;
  } else {
  }
  if ((int )hw_cons == (int )sw_cons) {
    {
    hw_cons = bnx2_get_hw_tx_cons(bnapi);
    }
  } else {
  }
  ldv_53282: ;
  if ((int )sw_cons != (int )hw_cons) {
    goto ldv_53281;
  } else {
  }
  ldv_53276:
  {
  netdev_tx_completed_queue(txq, (unsigned int )tx_pkt, tx_bytes);
  txr->hw_tx_cons = hw_cons;
  txr->tx_cons = sw_cons;
  __asm__ volatile ("mfence": : : "memory");
  tmp___5 = netif_tx_queue_stopped((struct netdev_queue const *)txq);
  tmp___6 = ldv__builtin_expect((long )tmp___5, 0L);
  }
  if (tmp___6 != 0L) {
    {
    tmp___7 = bnx2_tx_avail(bp, txr);
    }
    if (tmp___7 > bp->tx_wake_thresh) {
      __vpp_verify = (void const *)0;
      {
      if (4UL == 1UL) {
        goto case_1;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___0;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___1;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___2;
      } else {
      }
      goto switch_default___3;
      case_1: ;
      {
      if (4UL == 1UL) {
        goto case_1___0;
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
      case_1___0:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
      goto ldv_53288;
      case_2:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_53288;
      case_4:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_53288;
      case_8:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_53288;
      switch_default:
      {
      __bad_percpu_size();
      }
      switch_break___0: ;
      }
      ldv_53288:
      pscr_ret__ = pfo_ret__;
      goto ldv_53294;
      case_2___0: ;
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
        goto case_4___0;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___0;
      } else {
      }
      goto switch_default___0;
      case_1___1:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_53298;
      case_2___1:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_53298;
      case_4___0:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_53298;
      case_8___0:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_53298;
      switch_default___0:
      {
      __bad_percpu_size();
      }
      switch_break___1: ;
      }
      ldv_53298:
      pscr_ret__ = pfo_ret_____0;
      goto ldv_53294;
      case_4___1: ;
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
        goto case_8___1;
      } else {
      }
      goto switch_default___1;
      case_1___2:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_53307;
      case_2___2:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_53307;
      case_4___2:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_53307;
      case_8___1:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_53307;
      switch_default___1:
      {
      __bad_percpu_size();
      }
      switch_break___2: ;
      }
      ldv_53307:
      pscr_ret__ = pfo_ret_____1;
      goto ldv_53294;
      case_8___2: ;
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
      goto switch_default___2;
      case_1___3:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_53316;
      case_2___3:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_53316;
      case_4___3:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_53316;
      case_8___3:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_53316;
      switch_default___2:
      {
      __bad_percpu_size();
      }
      switch_break___3: ;
      }
      ldv_53316:
      pscr_ret__ = pfo_ret_____2;
      goto ldv_53294;
      switch_default___3:
      {
      __bad_size_call_parameter();
      }
      goto ldv_53294;
      switch_break: ;
      }
      ldv_53294:
      {
      __netif_tx_lock(txq, pscr_ret__);
      tmp___3 = netif_tx_queue_stopped((struct netdev_queue const *)txq);
      }
      if ((int )tmp___3) {
        {
        tmp___4 = bnx2_tx_avail(bp, txr);
        }
        if (tmp___4 > bp->tx_wake_thresh) {
          {
          netif_tx_wake_queue(txq);
          }
        } else {
        }
      } else {
      }
      {
      __netif_tx_unlock(txq);
      }
    } else {
    }
  } else {
  }
  return (tx_pkt);
}
}
static void bnx2_reuse_rx_skb_pages(struct bnx2 *bp , struct bnx2_rx_ring_info *rxr ,
                                    struct sk_buff *skb , int count )
{
  struct bnx2_sw_pg *cons_rx_pg ;
  struct bnx2_sw_pg *prod_rx_pg ;
  struct bnx2_rx_bd *cons_bd ;
  struct bnx2_rx_bd *prod_bd ;
  int i ;
  u16 hw_prod ;
  u16 prod ;
  u16 cons ;
  struct page *page ;
  struct skb_shared_info *shinfo ;
  unsigned char *tmp ;
  {
  cons = rxr->rx_pg_cons;
  cons_rx_pg = rxr->rx_pg_ring + (unsigned long )cons;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    {
    tmp = skb_end_pointer((struct sk_buff const *)skb);
    shinfo = (struct skb_shared_info *)tmp;
    shinfo->nr_frags = (unsigned char )((int )shinfo->nr_frags - 1);
    page = skb_frag_page((skb_frag_t const *)(& shinfo->frags) + (unsigned long )shinfo->nr_frags);
    __skb_frag_set_page((skb_frag_t *)(& shinfo->frags) + (unsigned long )shinfo->nr_frags,
                        (struct page *)0);
    cons_rx_pg->page = page;
    consume_skb(skb);
    }
  } else {
  }
  hw_prod = rxr->rx_pg_prod;
  i = 0;
  goto ldv_53341;
  ldv_53340:
  prod = (int )hw_prod & (int )((u16 )bp->rx_max_pg_ring_idx);
  prod_rx_pg = rxr->rx_pg_ring + (unsigned long )prod;
  cons_rx_pg = rxr->rx_pg_ring + (unsigned long )cons;
  cons_bd = rxr->rx_pg_desc_ring[((unsigned long )cons & 0xffffffffffffff00UL) >> 8] + ((unsigned long )cons & 255UL);
  prod_bd = rxr->rx_pg_desc_ring[((unsigned long )prod & 0xffffffffffffff00UL) >> 8] + ((unsigned long )prod & 255UL);
  if ((int )prod != (int )cons) {
    prod_rx_pg->page = cons_rx_pg->page;
    cons_rx_pg->page = (struct page *)0;
    prod_rx_pg->mapping = cons_rx_pg->mapping;
    prod_bd->rx_bd_haddr_hi = cons_bd->rx_bd_haddr_hi;
    prod_bd->rx_bd_haddr_lo = cons_bd->rx_bd_haddr_lo;
  } else {
  }
  cons = (((unsigned long )cons & 254UL) == 254UL ? (unsigned int )cons + 2U : (unsigned int )cons + 1U) & (unsigned int )((u16 )bp->rx_max_pg_ring_idx);
  hw_prod = ((unsigned long )hw_prod & 254UL) == 254UL ? (unsigned int )hw_prod + 2U : (unsigned int )hw_prod + 1U;
  i = i + 1;
  ldv_53341: ;
  if (i < count) {
    goto ldv_53340;
  } else {
  }
  rxr->rx_pg_prod = hw_prod;
  rxr->rx_pg_cons = cons;
  return;
}
}
__inline static void bnx2_reuse_rx_data(struct bnx2 *bp , struct bnx2_rx_ring_info *rxr ,
                                        u8 *data , u16 cons , u16 prod )
{
  struct bnx2_sw_bd *cons_rx_buf ;
  struct bnx2_sw_bd *prod_rx_buf ;
  struct bnx2_rx_bd *cons_bd ;
  struct bnx2_rx_bd *prod_bd ;
  {
  {
  cons_rx_buf = rxr->rx_buf_ring + (unsigned long )cons;
  prod_rx_buf = rxr->rx_buf_ring + (unsigned long )prod;
  dma_sync_single_for_device(& (bp->pdev)->dev, cons_rx_buf->mapping, 146UL, 2);
  rxr->rx_prod_bseq = rxr->rx_prod_bseq + bp->rx_buf_use_size;
  prod_rx_buf->data = data;
  }
  if ((int )cons == (int )prod) {
    return;
  } else {
  }
  prod_rx_buf->mapping = cons_rx_buf->mapping;
  cons_bd = rxr->rx_desc_ring[((unsigned long )cons & 0xffffffffffffff00UL) >> 8] + ((unsigned long )cons & 255UL);
  prod_bd = rxr->rx_desc_ring[((unsigned long )prod & 0xffffffffffffff00UL) >> 8] + ((unsigned long )prod & 255UL);
  prod_bd->rx_bd_haddr_hi = cons_bd->rx_bd_haddr_hi;
  prod_bd->rx_bd_haddr_lo = cons_bd->rx_bd_haddr_lo;
  return;
}
}
static struct sk_buff *bnx2_rx_skb(struct bnx2 *bp , struct bnx2_rx_ring_info *rxr ,
                                   u8 *data , unsigned int len , unsigned int hdr_len ,
                                   dma_addr_t dma_addr , u32 ring_idx )
{
  int err ;
  u16 prod ;
  struct sk_buff *skb ;
  unsigned int raw_len ;
  int pages ;
  long tmp ;
  struct l2_fhdr *tmp___0 ;
  unsigned int i ;
  unsigned int frag_len ;
  unsigned int frag_size ;
  unsigned int pages___0 ;
  struct bnx2_sw_pg *rx_pg ;
  u16 pg_cons ;
  u16 pg_prod ;
  dma_addr_t mapping_old ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int tail ;
  skb_frag_t *frag ;
  unsigned char *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  {
  prod = (u16 )ring_idx;
  err = bnx2_alloc_rx_data(bp, rxr, (int )prod, 32U);
  tmp = ldv__builtin_expect(err != 0, 0L);
  }
  if (tmp != 0L) {
    {
    bnx2_reuse_rx_data(bp, rxr, data, (int )((unsigned short )(ring_idx >> 16)), (int )prod);
    }
    error: ;
    if (hdr_len != 0U) {
      {
      raw_len = len + 4U;
      pages = (int )(((raw_len - hdr_len) + 4095U) >> 12);
      bnx2_reuse_rx_skb_pages(bp, rxr, (struct sk_buff *)0, pages);
      }
    } else {
    }
    return ((struct sk_buff *)0);
  } else {
  }
  {
  dma_unmap_single_attrs(& (bp->pdev)->dev, dma_addr, (size_t )bp->rx_buf_use_size,
                         2, (struct dma_attrs *)0);
  skb = build_skb((void *)data, 0U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    kfree((void const *)data);
    }
    goto error;
  } else {
  }
  {
  tmp___0 = get_l2_fhdr(data);
  skb_reserve(skb, (int )(((unsigned int )((long )tmp___0) - (unsigned int )((long )data)) + 18U));
  }
  if (hdr_len == 0U) {
    {
    skb_put(skb, len);
    }
    return (skb);
  } else {
    {
    pg_cons = rxr->rx_pg_cons;
    pg_prod = rxr->rx_pg_prod;
    frag_size = (len - hdr_len) + 4U;
    pages___0 = (frag_size + 4095U) >> 12;
    skb_put(skb, hdr_len);
    i = 0U;
    }
    goto ldv_53383;
    ldv_53382:
    {
    _min1 = frag_size;
    _min2 = 4096U;
    frag_len = _min1 < _min2 ? _min1 : _min2;
    tmp___2 = ldv__builtin_expect(frag_len <= 4U, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tail = 4U - frag_len;
      rxr->rx_pg_cons = pg_cons;
      rxr->rx_pg_prod = pg_prod;
      bnx2_reuse_rx_skb_pages(bp, rxr, (struct sk_buff *)0, (int )(pages___0 - i));
      skb->len = skb->len - tail;
      }
      if (i == 0U) {
        skb->tail = skb->tail - tail;
      } else {
        {
        tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
        frag = (skb_frag_t *)(& ((struct skb_shared_info *)tmp___1)->frags) + (unsigned long )(i - 1U);
        skb_frag_size_sub(frag, (int )tail);
        skb->data_len = skb->data_len - tail;
        }
      }
      return (skb);
    } else {
    }
    rx_pg = rxr->rx_pg_ring + (unsigned long )pg_cons;
    mapping_old = rx_pg->mapping;
    if (i == pages___0 - 1U) {
      frag_len = frag_len - 4U;
    } else {
    }
    {
    skb_fill_page_desc(skb, (int )i, rx_pg->page, 0, (int )frag_len);
    rx_pg->page = (struct page *)0;
    err = bnx2_alloc_rx_page(bp, rxr, (int )pg_prod & (int )((u16 )bp->rx_max_pg_ring_idx),
                             32U);
    tmp___3 = ldv__builtin_expect(err != 0, 0L);
    }
    if (tmp___3 != 0L) {
      {
      rxr->rx_pg_cons = pg_cons;
      rxr->rx_pg_prod = pg_prod;
      bnx2_reuse_rx_skb_pages(bp, rxr, skb, (int )(pages___0 - i));
      }
      return ((struct sk_buff *)0);
    } else {
    }
    {
    dma_unmap_page(& (bp->pdev)->dev, mapping_old, 4096UL, 2);
    frag_size = frag_size - frag_len;
    skb->data_len = skb->data_len + frag_len;
    skb->truesize = skb->truesize + 4096U;
    skb->len = skb->len + frag_len;
    pg_prod = ((unsigned long )pg_prod & 254UL) == 254UL ? (unsigned int )pg_prod + 2U : (unsigned int )pg_prod + 1U;
    pg_cons = (((unsigned long )pg_cons & 254UL) == 254UL ? (unsigned int )pg_cons + 2U : (unsigned int )pg_cons + 1U) & (unsigned int )((u16 )bp->rx_max_pg_ring_idx);
    i = i + 1U;
    }
    ldv_53383: ;
    if (i < pages___0) {
      goto ldv_53382;
    } else {
    }
    rxr->rx_pg_prod = pg_prod;
    rxr->rx_pg_cons = pg_cons;
  }
  return (skb);
}
}
__inline static u16 bnx2_get_hw_rx_cons(struct bnx2_napi *bnapi )
{
  u16 cons ;
  long tmp ;
  {
  {
  __asm__ volatile ("": : : "memory");
  cons = *(bnapi->hw_rx_cons_ptr);
  __asm__ volatile ("": : : "memory");
  tmp = ldv__builtin_expect(((unsigned long )cons & 255UL) == 255UL, 0L);
  }
  if (tmp != 0L) {
    cons = (u16 )((int )cons + 1);
  } else {
  }
  return (cons);
}
}
static int bnx2_rx_int(struct bnx2 *bp , struct bnx2_napi *bnapi , int budget )
{
  struct bnx2_rx_ring_info *rxr ;
  u16 hw_cons ;
  u16 sw_cons ;
  u16 sw_ring_cons ;
  u16 sw_prod ;
  u16 sw_ring_prod ;
  struct l2_fhdr *rx_hdr ;
  int rx_pkt ;
  int pg_ring_used ;
  unsigned int len ;
  unsigned int hdr_len ;
  u32 status ;
  struct bnx2_sw_bd *rx_buf ;
  struct bnx2_sw_bd *next_rx_buf ;
  struct sk_buff *skb ;
  dma_addr_t dma_addr ;
  u8 *data ;
  u16 next_ring_idx ;
  struct l2_fhdr *tmp ;
  int pages ;
  long tmp___0 ;
  __u16 tmp___1 ;
  long tmp___2 ;
  {
  {
  rxr = & bnapi->rx_ring;
  rx_pkt = 0;
  pg_ring_used = 0;
  hw_cons = bnx2_get_hw_rx_cons(bnapi);
  sw_cons = rxr->rx_cons;
  sw_prod = rxr->rx_prod;
  __asm__ volatile ("lfence": : : "memory");
  }
  goto ldv_53416;
  ldv_53415:
  {
  sw_ring_cons = (int )sw_cons & (int )((u16 )bp->rx_max_ring_idx);
  sw_ring_prod = (int )sw_prod & (int )((u16 )bp->rx_max_ring_idx);
  rx_buf = rxr->rx_buf_ring + (unsigned long )sw_ring_cons;
  data = rx_buf->data;
  rx_buf->data = (u8 *)0U;
  rx_hdr = get_l2_fhdr(data);
  __builtin_prefetch((void const *)rx_hdr);
  dma_addr = rx_buf->mapping;
  dma_sync_single_for_cpu(& (bp->pdev)->dev, dma_addr, 146UL, 2);
  next_ring_idx = (((unsigned long )sw_cons & 254UL) == 254UL ? (unsigned int )sw_cons + 2U : (unsigned int )sw_cons + 1U) & (unsigned int )((u16 )bp->rx_max_ring_idx);
  next_rx_buf = rxr->rx_buf_ring + (unsigned long )next_ring_idx;
  tmp = get_l2_fhdr(next_rx_buf->data);
  __builtin_prefetch((void const *)tmp);
  len = (unsigned int )rx_hdr->l2_fhdr_pkt_len;
  status = rx_hdr->l2_fhdr_status;
  hdr_len = 0U;
  }
  if ((status & 65536U) != 0U) {
    hdr_len = (unsigned int )rx_hdr->l2_fhdr_ip_xsum;
    pg_ring_used = 1;
  } else
  if (len > bp->rx_jumbo_thresh) {
    hdr_len = bp->rx_jumbo_thresh;
    pg_ring_used = 1;
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect((status & 4063232U) != 0U, 0L);
  }
  if (tmp___0 != 0L) {
    {
    bnx2_reuse_rx_data(bp, rxr, data, (int )sw_ring_cons, (int )sw_ring_prod);
    }
    if (pg_ring_used != 0) {
      {
      pages = (int )(((len - hdr_len) + 4095U) >> 12);
      bnx2_reuse_rx_skb_pages(bp, rxr, (struct sk_buff *)0, pages);
      }
    } else {
    }
    goto next_rx;
  } else {
  }
  len = len - 4U;
  if (len <= bp->rx_copy_thresh) {
    {
    skb = netdev_alloc_skb(bp->dev, len + 6U);
    }
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      {
      bnx2_reuse_rx_data(bp, rxr, data, (int )sw_ring_cons, (int )sw_ring_prod);
      }
      goto next_rx;
    } else {
    }
    {
    memcpy((void *)skb->data, (void const *)rx_hdr + 12U, (size_t )(len + 6U));
    skb_reserve(skb, 6);
    skb_put(skb, len);
    bnx2_reuse_rx_data(bp, rxr, data, (int )sw_ring_cons, (int )sw_ring_prod);
    }
  } else {
    {
    skb = bnx2_rx_skb(bp, rxr, data, len, hdr_len, dma_addr, (u32 )(((int )sw_ring_cons << 16) | (int )sw_ring_prod));
    }
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      goto next_rx;
    } else {
    }
  }
  if ((status & 64U) != 0U && ((long )bp->rx_mode & 1024L) == 0L) {
    {
    __vlan_hwaccel_put_tag(skb, 129, (int )rx_hdr->l2_fhdr_vlan_tag);
    }
  } else {
  }
  {
  skb->protocol = eth_type_trans(skb, bp->dev);
  }
  if (len > (bp->dev)->mtu + 14U) {
    {
    tmp___1 = __fswab16((int )skb->protocol);
    }
    if ((unsigned int )tmp___1 != 33024U) {
      {
      consume_skb(skb);
      }
      goto next_rx;
    } else {
    }
  } else {
  }
  {
  skb_checksum_none_assert((struct sk_buff const *)skb);
  }
  if (((bp->dev)->features & 4294967296ULL) != 0ULL && (status & 49152U) != 0U) {
    {
    tmp___2 = ldv__builtin_expect((status & 2415919104U) == 0U, 1L);
    }
    if (tmp___2 != 0L) {
      skb->ip_summed = 1U;
    } else {
    }
  } else {
  }
  if (((bp->dev)->features & 2147483648ULL) != 0ULL && (status & 16640U) == 16640U) {
    {
    skb_set_hash(skb, rx_hdr->l2_fhdr_hash, 2);
    }
  } else {
  }
  {
  skb_record_rx_queue(skb, (int )((u16 )(((long )bnapi - (long )(& bp->bnx2_napi)) / 960L)));
  napi_gro_receive(& bnapi->napi, skb);
  rx_pkt = rx_pkt + 1;
  }
  next_rx:
  sw_cons = ((unsigned long )sw_cons & 254UL) == 254UL ? (unsigned int )sw_cons + 2U : (unsigned int )sw_cons + 1U;
  sw_prod = ((unsigned long )sw_prod & 254UL) == 254UL ? (unsigned int )sw_prod + 2U : (unsigned int )sw_prod + 1U;
  if (rx_pkt == budget) {
    goto ldv_53414;
  } else {
  }
  if ((int )sw_cons == (int )hw_cons) {
    {
    hw_cons = bnx2_get_hw_rx_cons(bnapi);
    __asm__ volatile ("lfence": : : "memory");
    }
  } else {
  }
  ldv_53416: ;
  if ((int )sw_cons != (int )hw_cons) {
    goto ldv_53415;
  } else {
  }
  ldv_53414:
  rxr->rx_cons = sw_cons;
  rxr->rx_prod = sw_prod;
  if (pg_ring_used != 0) {
    {
    writew((int )rxr->rx_pg_prod, (void volatile *)bp->regview + (unsigned long )rxr->rx_pg_bidx_addr);
    }
  } else {
  }
  {
  writew((int )sw_prod, (void volatile *)bp->regview + (unsigned long )rxr->rx_bidx_addr);
  writel(rxr->rx_prod_bseq, (void volatile *)bp->regview + (unsigned long )rxr->rx_bseq_addr);
  __asm__ volatile ("": : : "memory");
  }
  return (rx_pkt);
}
}
static irqreturn_t bnx2_msi(int irq , void *dev_instance )
{
  struct bnx2_napi *bnapi ;
  struct bnx2 *bp ;
  int tmp ;
  long tmp___0 ;
  {
  {
  bnapi = (struct bnx2_napi *)dev_instance;
  bp = bnapi->bp;
  __builtin_prefetch((void const *)bnapi->status_blk.msi);
  writel(393216U, (void volatile *)bp->regview + 132U);
  tmp = atomic_read((atomic_t const *)(& bp->intr_sem));
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return (1);
  } else {
  }
  {
  napi_schedule(& bnapi->napi);
  }
  return (1);
}
}
static irqreturn_t bnx2_msi_1shot(int irq , void *dev_instance )
{
  struct bnx2_napi *bnapi ;
  struct bnx2 *bp ;
  int tmp ;
  long tmp___0 ;
  {
  {
  bnapi = (struct bnx2_napi *)dev_instance;
  bp = bnapi->bp;
  __builtin_prefetch((void const *)bnapi->status_blk.msi);
  tmp = atomic_read((atomic_t const *)(& bp->intr_sem));
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return (1);
  } else {
  }
  {
  napi_schedule(& bnapi->napi);
  }
  return (1);
}
}
static irqreturn_t bnx2_interrupt(int irq , void *dev_instance )
{
  struct bnx2_napi *bnapi ;
  struct bnx2 *bp ;
  struct status_block *sblk ;
  unsigned int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  {
  bnapi = (struct bnx2_napi *)dev_instance;
  bp = bnapi->bp;
  sblk = bnapi->status_blk.msi;
  if ((u32 )sblk->status_idx == bnapi->last_status_idx) {
    {
    tmp = readl((void const volatile *)bp->regview + 108U);
    }
    if ((int )tmp & 1) {
      return (0);
    } else {
    }
  } else {
  }
  {
  writel(393216U, (void volatile *)bp->regview + 132U);
  readl((void const volatile *)bp->regview + 132U);
  tmp___0 = atomic_read((atomic_t const *)(& bp->intr_sem));
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  }
  if (tmp___1 != 0L) {
    return (1);
  } else {
  }
  {
  tmp___2 = napi_schedule_prep(& bnapi->napi);
  }
  if ((int )tmp___2) {
    {
    bnapi->last_status_idx = (u32 )sblk->status_idx;
    __napi_schedule(& bnapi->napi);
    }
  } else {
  }
  return (1);
}
}
__inline static int bnx2_has_fast_work(struct bnx2_napi *bnapi )
{
  struct bnx2_tx_ring_info *txr ;
  struct bnx2_rx_ring_info *rxr ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  {
  txr = & bnapi->tx_ring;
  rxr = & bnapi->rx_ring;
  tmp = bnx2_get_hw_rx_cons(bnapi);
  }
  if ((int )tmp != (int )rxr->rx_cons) {
    return (1);
  } else {
    {
    tmp___0 = bnx2_get_hw_tx_cons(bnapi);
    }
    if ((int )tmp___0 != (int )txr->hw_tx_cons) {
      return (1);
    } else {
    }
  }
  return (0);
}
}
__inline static int bnx2_has_work(struct bnx2_napi *bnapi )
{
  struct status_block *sblk ;
  int tmp ;
  {
  {
  sblk = bnapi->status_blk.msi;
  tmp = bnx2_has_fast_work(bnapi);
  }
  if (tmp != 0) {
    return (1);
  } else {
  }
  if (bnapi->cnic_present != 0 && bnapi->cnic_tag != (u32 )sblk->status_idx) {
    return (1);
  } else {
  }
  if ((((long )sblk->status_attn_bits ^ (long )sblk->status_attn_bits_ack) & 16777217L) != 0L) {
    return (1);
  } else {
  }
  return (0);
}
}
static void bnx2_chk_missed_msi(struct bnx2 *bp )
{
  struct bnx2_napi *bnapi ;
  u32 msi_ctrl ;
  int tmp ;
  {
  {
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi);
  tmp = bnx2_has_work(bnapi);
  }
  if (tmp != 0) {
    {
    msi_ctrl = readl((void const volatile *)bp->regview + 88U);
    }
    if (((long )msi_ctrl & 65536L) == 0L) {
      return;
    } else {
    }
    if (bnapi->last_status_idx == bp->idle_chk_status_idx) {
      {
      writel(msi_ctrl & 4294901759U, (void volatile *)bp->regview + 88U);
      writel(msi_ctrl, (void volatile *)bp->regview + 88U);
      bnx2_msi((int )bp->irq_tbl[0].vector, (void *)bnapi);
      }
    } else {
    }
  } else {
  }
  bp->idle_chk_status_idx = bnapi->last_status_idx;
  return;
}
}
static void bnx2_poll_cnic(struct bnx2 *bp , struct bnx2_napi *bnapi )
{
  struct cnic_ops *c_ops ;
  struct cnic_ops *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if (bnapi->cnic_present == 0) {
    return;
  } else {
  }
  {
  rcu_read_lock();
  _________p1 = *((struct cnic_ops * volatile *)(& bp->cnic_ops));
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    tmp___0 = rcu_read_lock_held();
    }
    if (tmp___0 == 0) {
      {
      __warned = 1;
      lockdep_rcu_suspicious("drivers/net/ethernet/broadcom/bnx2.c", 3436, "suspicious rcu_dereference_check() usage");
      }
    } else {
    }
  } else {
  }
  c_ops = _________p1;
  if ((unsigned long )c_ops != (unsigned long )((struct cnic_ops *)0)) {
    {
    tmp___1 = (*(c_ops->cnic_handler))(bp->cnic_data, (void *)bnapi->status_blk.msi);
    bnapi->cnic_tag = (u32 )tmp___1;
    }
  } else {
  }
  {
  rcu_read_unlock();
  }
  return;
}
}
static void bnx2_poll_link(struct bnx2 *bp , struct bnx2_napi *bnapi )
{
  struct status_block *sblk ;
  u32 status_attn_bits ;
  u32 status_attn_bits_ack ;
  {
  sblk = bnapi->status_blk.msi;
  status_attn_bits = sblk->status_attn_bits;
  status_attn_bits_ack = sblk->status_attn_bits_ack;
  if ((((long )status_attn_bits ^ (long )status_attn_bits_ack) & 16777217L) != 0L) {
    {
    bnx2_phy_int(bp, bnapi);
    writel(bp->hc_cmd | 131072U, (void volatile *)bp->regview + 26624U);
    readl((void const volatile *)bp->regview + 26624U);
    }
  } else {
  }
  return;
}
}
static int bnx2_poll_work(struct bnx2 *bp , struct bnx2_napi *bnapi , int work_done ,
                          int budget )
{
  struct bnx2_tx_ring_info *txr ;
  struct bnx2_rx_ring_info *rxr ;
  u16 tmp ;
  int tmp___0 ;
  u16 tmp___1 ;
  {
  {
  txr = & bnapi->tx_ring;
  rxr = & bnapi->rx_ring;
  tmp = bnx2_get_hw_tx_cons(bnapi);
  }
  if ((int )tmp != (int )txr->hw_tx_cons) {
    {
    bnx2_tx_int(bp, bnapi, 0);
    }
  } else {
  }
  {
  tmp___1 = bnx2_get_hw_rx_cons(bnapi);
  }
  if ((int )tmp___1 != (int )rxr->rx_cons) {
    {
    tmp___0 = bnx2_rx_int(bp, bnapi, budget - work_done);
    work_done = work_done + tmp___0;
    }
  } else {
  }
  return (work_done);
}
}
static int bnx2_poll_msix(struct napi_struct *napi , int budget )
{
  struct bnx2_napi *bnapi ;
  struct napi_struct const *__mptr ;
  struct bnx2 *bp ;
  int work_done ;
  struct status_block_msix *sblk ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  __mptr = (struct napi_struct const *)napi;
  bnapi = (struct bnx2_napi *)__mptr;
  bp = bnapi->bp;
  work_done = 0;
  sblk = bnapi->status_blk.msix;
  ldv_53484:
  {
  work_done = bnx2_poll_work(bp, bnapi, work_done, budget);
  tmp = ldv__builtin_expect(work_done >= budget, 0L);
  }
  if (tmp != 0L) {
    goto ldv_53483;
  } else {
  }
  {
  bnapi->last_status_idx = (u32 )sblk->status_idx;
  __asm__ volatile ("lfence": : : "memory");
  tmp___0 = bnx2_has_fast_work(bnapi);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 1L);
  }
  if (tmp___1 != 0L) {
    {
    napi_complete(napi);
    writel((bnapi->int_num | bnapi->last_status_idx) | 65536U, (void volatile *)bp->regview + 132U);
    }
    goto ldv_53483;
  } else {
  }
  goto ldv_53484;
  ldv_53483: ;
  return (work_done);
}
}
static int bnx2_poll(struct napi_struct *napi , int budget )
{
  struct bnx2_napi *bnapi ;
  struct napi_struct const *__mptr ;
  struct bnx2 *bp ;
  int work_done ;
  struct status_block *sblk ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  __mptr = (struct napi_struct const *)napi;
  bnapi = (struct bnx2_napi *)__mptr;
  bp = bnapi->bp;
  work_done = 0;
  sblk = bnapi->status_blk.msi;
  ldv_53496:
  {
  bnx2_poll_link(bp, bnapi);
  work_done = bnx2_poll_work(bp, bnapi, work_done, budget);
  bnx2_poll_cnic(bp, bnapi);
  bnapi->last_status_idx = (u32 )sblk->status_idx;
  tmp = ldv__builtin_expect(work_done >= budget, 0L);
  }
  if (tmp != 0L) {
    goto ldv_53495;
  } else {
  }
  {
  __asm__ volatile ("lfence": : : "memory");
  tmp___1 = bnx2_has_work(bnapi);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 1L);
  }
  if (tmp___2 != 0L) {
    {
    napi_complete(napi);
    tmp___0 = ldv__builtin_expect((bp->flags & 1056U) != 0U, 1L);
    }
    if (tmp___0 != 0L) {
      {
      writel(bnapi->last_status_idx | 65536U, (void volatile *)bp->regview + 132U);
      }
      goto ldv_53495;
    } else {
    }
    {
    writel(bnapi->last_status_idx | 327680U, (void volatile *)bp->regview + 132U);
    writel(bnapi->last_status_idx | 65536U, (void volatile *)bp->regview + 132U);
    }
    goto ldv_53495;
  } else {
  }
  goto ldv_53496;
  ldv_53495: ;
  return (work_done);
}
}
static void bnx2_set_rx_mode(struct net_device *dev )
{
  struct bnx2 *bp ;
  void *tmp ;
  u32 rx_mode ;
  u32 sort_mode ;
  struct netdev_hw_addr *ha ;
  int i ;
  bool tmp___0 ;
  int tmp___1 ;
  u32 mc_filter[8U] ;
  u32 regidx ;
  u32 bit ;
  u32 crc ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return;
  } else {
  }
  {
  spin_lock_bh(& bp->phy_lock);
  rx_mode = bp->rx_mode & 4294966015U;
  sort_mode = 65537U;
  }
  if ((dev->features & 256ULL) == 0ULL && (bp->flags & 4096U) != 0U) {
    rx_mode = rx_mode | 1024U;
  } else {
  }
  if ((dev->flags & 256U) != 0U) {
    rx_mode = rx_mode | 256U;
    sort_mode = sort_mode | 17301504U;
  } else
  if ((dev->flags & 512U) != 0U) {
    i = 0;
    goto ldv_53506;
    ldv_53505:
    {
    writel(4294967295U, (void volatile *)(bp->regview + ((unsigned long )(i * 4) + 5328UL)));
    i = i + 1;
    }
    ldv_53506: ;
    if (i <= 7) {
      goto ldv_53505;
    } else {
    }
    sort_mode = sort_mode | 131072U;
  } else {
    {
    memset((void *)(& mc_filter), 0, 32UL);
    __mptr = (struct list_head const *)dev->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    }
    goto ldv_53517;
    ldv_53516:
    {
    crc = crc32_le(4294967295U, (unsigned char const *)(& ha->addr), 6UL);
    bit = crc & 255U;
    regidx = (bit & 224U) >> 5;
    bit = bit & 31U;
    mc_filter[regidx] = mc_filter[regidx] | (u32 )(1 << (int )bit);
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    }
    ldv_53517: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
      goto ldv_53516;
    } else {
    }
    i = 0;
    goto ldv_53520;
    ldv_53519:
    {
    writel(mc_filter[i], (void volatile *)(bp->regview + ((unsigned long )(i * 4) + 5328UL)));
    i = i + 1;
    }
    ldv_53520: ;
    if (i <= 7) {
      goto ldv_53519;
    } else {
    }
    sort_mode = sort_mode | 262144U;
  }
  if (dev->uc.count > 4) {
    rx_mode = rx_mode | 256U;
    sort_mode = sort_mode | 17301504U;
  } else
  if ((dev->flags & 256U) == 0U) {
    i = 0;
    __mptr___1 = (struct list_head const *)dev->uc.list.next;
    ha = (struct netdev_hw_addr *)__mptr___1;
    goto ldv_53527;
    ldv_53526:
    {
    bnx2_set_mac_addr(bp, (u8 *)(& ha->addr), (u32 )(i + 4));
    sort_mode = sort_mode | (u32 )(1 << (i + 4));
    i = i + 1;
    __mptr___2 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___2;
    }
    ldv_53527: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& dev->uc.list)) {
      goto ldv_53526;
    } else {
    }
  } else {
  }
  if (rx_mode != bp->rx_mode) {
    {
    bp->rx_mode = rx_mode;
    writel(rx_mode, (void volatile *)bp->regview + 5320U);
    }
  } else {
  }
  {
  writel(0U, (void volatile *)bp->regview + 6176U);
  writel(sort_mode, (void volatile *)bp->regview + 6176U);
  writel(sort_mode | 2147483648U, (void volatile *)bp->regview + 6176U);
  spin_unlock_bh(& bp->phy_lock);
  }
  return;
}
}
static int check_fw_section(struct firmware const *fw , struct bnx2_fw_file_section const *section ,
                            u32 alignment , bool non_empty )
{
  u32 offset ;
  __u32 tmp ;
  u32 len ;
  __u32 tmp___0 ;
  {
  {
  tmp = __fswab32(section->offset);
  offset = tmp;
  tmp___0 = __fswab32(section->len);
  len = tmp___0;
  }
  if (((offset == 0U && len != 0U) || (unsigned long )offset >= (unsigned long )fw->size) || (offset & 3U) != 0U) {
    return (-22);
  } else {
  }
  if ((((int )non_empty && len == 0U) || (unsigned long )len > (unsigned long )fw->size - (unsigned long )offset) || (len & (alignment - 1U)) != 0U) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int check_mips_fw_entry(struct firmware const *fw , struct bnx2_mips_fw_file_entry const *entry )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = check_fw_section(fw, & entry->text, 4U, 1);
  }
  if (tmp != 0) {
    return (-22);
  } else {
    {
    tmp___0 = check_fw_section(fw, & entry->data, 4U, 0);
    }
    if (tmp___0 != 0) {
      return (-22);
    } else {
      {
      tmp___1 = check_fw_section(fw, & entry->rodata, 4U, 0);
      }
      if (tmp___1 != 0) {
        return (-22);
      } else {
      }
    }
  }
  return (0);
}
}
static void bnx2_release_firmware(struct bnx2 *bp )
{
  {
  if ((unsigned long )bp->rv2p_firmware != (unsigned long )((struct firmware const *)0)) {
    {
    release_firmware(bp->mips_firmware);
    release_firmware(bp->rv2p_firmware);
    bp->rv2p_firmware = (struct firmware const *)0;
    }
  } else {
  }
  return;
}
}
static int bnx2_request_uncached_firmware(struct bnx2 *bp )
{
  char const *mips_fw_file ;
  char const *rv2p_fw_file ;
  struct bnx2_mips_fw_file const *mips_fw ;
  struct bnx2_rv2p_fw_file const *rv2p_fw ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    mips_fw_file = "bnx2/bnx2-mips-09-6.2.1b.fw";
    if ((bp->chip_id & 4294967280U) == 1460207616U || (bp->chip_id & 4294967280U) == 1460207632U) {
      rv2p_fw_file = "bnx2/bnx2-rv2p-09ax-6.0.17.fw";
    } else {
      rv2p_fw_file = "bnx2/bnx2-rv2p-09-6.0.17.fw";
    }
  } else {
    mips_fw_file = "bnx2/bnx2-mips-06-6.2.3.fw";
    rv2p_fw_file = "bnx2/bnx2-rv2p-06-6.0.15.fw";
  }
  {
  rc = request_firmware(& bp->mips_firmware, mips_fw_file, & (bp->pdev)->dev);
  }
  if (rc != 0) {
    {
    printk("\vbnx2: Can\'t load firmware file \"%s\"\n", mips_fw_file);
    }
    goto out;
  } else {
  }
  {
  rc = request_firmware(& bp->rv2p_firmware, rv2p_fw_file, & (bp->pdev)->dev);
  }
  if (rc != 0) {
    {
    printk("\vbnx2: Can\'t load firmware file \"%s\"\n", rv2p_fw_file);
    }
    goto err_release_mips_firmware;
  } else {
  }
  mips_fw = (struct bnx2_mips_fw_file const *)(bp->mips_firmware)->data;
  rv2p_fw = (struct bnx2_rv2p_fw_file const *)(bp->rv2p_firmware)->data;
  if ((unsigned long )(bp->mips_firmware)->size <= 199UL) {
    {
    printk("\vbnx2: Firmware file \"%s\" is invalid\n", mips_fw_file);
    rc = -22;
    }
    goto err_release_firmware;
  } else {
    {
    tmp = check_mips_fw_entry(bp->mips_firmware, & mips_fw->com);
    }
    if (tmp != 0) {
      {
      printk("\vbnx2: Firmware file \"%s\" is invalid\n", mips_fw_file);
      rc = -22;
      }
      goto err_release_firmware;
    } else {
      {
      tmp___0 = check_mips_fw_entry(bp->mips_firmware, & mips_fw->cp);
      }
      if (tmp___0 != 0) {
        {
        printk("\vbnx2: Firmware file \"%s\" is invalid\n", mips_fw_file);
        rc = -22;
        }
        goto err_release_firmware;
      } else {
        {
        tmp___1 = check_mips_fw_entry(bp->mips_firmware, & mips_fw->rxp);
        }
        if (tmp___1 != 0) {
          {
          printk("\vbnx2: Firmware file \"%s\" is invalid\n", mips_fw_file);
          rc = -22;
          }
          goto err_release_firmware;
        } else {
          {
          tmp___2 = check_mips_fw_entry(bp->mips_firmware, & mips_fw->tpat);
          }
          if (tmp___2 != 0) {
            {
            printk("\vbnx2: Firmware file \"%s\" is invalid\n", mips_fw_file);
            rc = -22;
            }
            goto err_release_firmware;
          } else {
            {
            tmp___3 = check_mips_fw_entry(bp->mips_firmware, & mips_fw->txp);
            }
            if (tmp___3 != 0) {
              {
              printk("\vbnx2: Firmware file \"%s\" is invalid\n", mips_fw_file);
              rc = -22;
              }
              goto err_release_firmware;
            } else {
            }
          }
        }
      }
    }
  }
  if ((unsigned long )(bp->rv2p_firmware)->size <= 87UL) {
    {
    printk("\vbnx2: Firmware file \"%s\" is invalid\n", rv2p_fw_file);
    rc = -22;
    }
    goto err_release_firmware;
  } else {
    {
    tmp___4 = check_fw_section(bp->rv2p_firmware, & rv2p_fw->proc1.rv2p, 8U, 1);
    }
    if (tmp___4 != 0) {
      {
      printk("\vbnx2: Firmware file \"%s\" is invalid\n", rv2p_fw_file);
      rc = -22;
      }
      goto err_release_firmware;
    } else {
      {
      tmp___5 = check_fw_section(bp->rv2p_firmware, & rv2p_fw->proc2.rv2p, 8U, 1);
      }
      if (tmp___5 != 0) {
        {
        printk("\vbnx2: Firmware file \"%s\" is invalid\n", rv2p_fw_file);
        rc = -22;
        }
        goto err_release_firmware;
      } else {
      }
    }
  }
  out: ;
  return (rc);
  err_release_firmware:
  {
  release_firmware(bp->rv2p_firmware);
  bp->rv2p_firmware = (struct firmware const *)0;
  }
  err_release_mips_firmware:
  {
  release_firmware(bp->mips_firmware);
  }
  goto out;
}
}
static int bnx2_request_firmware(struct bnx2 *bp )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )bp->rv2p_firmware == (unsigned long )((struct firmware const *)0)) {
    {
    tmp = bnx2_request_uncached_firmware(bp);
    tmp___0 = tmp;
    }
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
static u32 rv2p_fw_fixup(u32 rv2p_proc , int idx , u32 loc , u32 rv2p_code )
{
  {
  {
  if (idx == 0) {
    goto case_0;
  } else {
  }
  goto switch_break;
  case_0:
  rv2p_code = rv2p_code & 4294901760U;
  rv2p_code = rv2p_code | 255U;
  goto ldv_53565;
  switch_break: ;
  }
  ldv_53565: ;
  return (rv2p_code);
}
}
static int load_rv2p_fw(struct bnx2 *bp , u32 rv2p_proc , struct bnx2_rv2p_fw_file_entry const *fw_entry )
{
  u32 rv2p_code_len ;
  u32 file_offset ;
  __be32 *rv2p_code ;
  int i ;
  u32 val ;
  u32 cmd ;
  u32 addr ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  u32 loc ;
  u32 code ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  {
  {
  tmp = __fswab32(fw_entry->rv2p.len);
  rv2p_code_len = tmp;
  tmp___0 = __fswab32(fw_entry->rv2p.offset);
  file_offset = tmp___0;
  rv2p_code = (__be32 *)(bp->rv2p_firmware)->data + (unsigned long )file_offset;
  }
  if (rv2p_proc == 0U) {
    cmd = 2147483648U;
    addr = 10296U;
  } else {
    cmd = 2147483648U;
    addr = 10300U;
  }
  i = 0;
  goto ldv_53579;
  ldv_53578:
  {
  tmp___1 = __fswab32(*rv2p_code);
  writel(tmp___1, (void volatile *)bp->regview + 10288U);
  rv2p_code = rv2p_code + 1;
  tmp___2 = __fswab32(*rv2p_code);
  writel(tmp___2, (void volatile *)bp->regview + 10292U);
  rv2p_code = rv2p_code + 1;
  val = (u32 )(i / 8) | cmd;
  writel(val, (void volatile *)bp->regview + (unsigned long )addr);
  i = i + 8;
  }
  ldv_53579: ;
  if ((u32 )i < rv2p_code_len) {
    goto ldv_53578;
  } else {
  }
  rv2p_code = (__be32 *)(bp->rv2p_firmware)->data + (unsigned long )file_offset;
  i = 0;
  goto ldv_53584;
  ldv_53583:
  {
  tmp___3 = __fswab32(fw_entry->fixup[i]);
  loc = tmp___3;
  }
  if (loc != 0U && loc * 4U < rv2p_code_len) {
    {
    tmp___4 = __fswab32(*(rv2p_code + ((unsigned long )loc + 0xffffffffffffffffUL)));
    code = tmp___4;
    writel(code, (void volatile *)bp->regview + 10288U);
    tmp___5 = __fswab32(*(rv2p_code + (unsigned long )loc));
    code = tmp___5;
    code = rv2p_fw_fixup(rv2p_proc, i, loc, code);
    writel(code, (void volatile *)bp->regview + 10292U);
    val = loc / 2U | cmd;
    writel(val, (void volatile *)bp->regview + (unsigned long )addr);
    }
  } else {
  }
  i = i + 1;
  ldv_53584: ;
  if (i <= 7) {
    goto ldv_53583;
  } else {
  }
  if (rv2p_proc == 0U) {
    {
    writel(65536U, (void volatile *)bp->regview + 10240U);
    }
  } else {
    {
    writel(131072U, (void volatile *)bp->regview + 10240U);
    }
  }
  return (0);
}
}
static int load_cpu_fw(struct bnx2 *bp , struct cpu_reg const *cpu_reg , struct bnx2_mips_fw_file_entry const *fw_entry )
{
  u32 addr ;
  u32 len ;
  u32 file_offset ;
  __be32 *data ;
  u32 offset ;
  u32 val ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  int j ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  int j___0 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  int j___1 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  {
  {
  val = bnx2_reg_rd_ind(bp, cpu_reg->mode);
  val = val | (u32 )cpu_reg->mode_value_halt;
  bnx2_reg_wr_ind(bp, cpu_reg->mode, val);
  bnx2_reg_wr_ind(bp, cpu_reg->state, cpu_reg->state_value_clear);
  tmp = __fswab32(fw_entry->text.addr);
  addr = tmp;
  tmp___0 = __fswab32(fw_entry->text.len);
  len = tmp___0;
  tmp___1 = __fswab32(fw_entry->text.offset);
  file_offset = tmp___1;
  data = (__be32 *)(bp->mips_firmware)->data + (unsigned long )file_offset;
  offset = (unsigned int )cpu_reg->spad_base + (addr - (u32 )cpu_reg->mips_view_base);
  }
  if (len != 0U) {
    j = 0;
    goto ldv_53599;
    ldv_53598:
    {
    tmp___2 = __fswab32(*(data + (unsigned long )j));
    bnx2_reg_wr_ind(bp, offset, tmp___2);
    j = j + 1;
    offset = offset + 4U;
    }
    ldv_53599: ;
    if ((u32 )j < len / 4U) {
      goto ldv_53598;
    } else {
    }
  } else {
  }
  {
  tmp___3 = __fswab32(fw_entry->data.addr);
  addr = tmp___3;
  tmp___4 = __fswab32(fw_entry->data.len);
  len = tmp___4;
  tmp___5 = __fswab32(fw_entry->data.offset);
  file_offset = tmp___5;
  data = (__be32 *)(bp->mips_firmware)->data + (unsigned long )file_offset;
  offset = (unsigned int )cpu_reg->spad_base + (addr - (u32 )cpu_reg->mips_view_base);
  }
  if (len != 0U) {
    j___0 = 0;
    goto ldv_53603;
    ldv_53602:
    {
    tmp___6 = __fswab32(*(data + (unsigned long )j___0));
    bnx2_reg_wr_ind(bp, offset, tmp___6);
    j___0 = j___0 + 1;
    offset = offset + 4U;
    }
    ldv_53603: ;
    if ((u32 )j___0 < len / 4U) {
      goto ldv_53602;
    } else {
    }
  } else {
  }
  {
  tmp___7 = __fswab32(fw_entry->rodata.addr);
  addr = tmp___7;
  tmp___8 = __fswab32(fw_entry->rodata.len);
  len = tmp___8;
  tmp___9 = __fswab32(fw_entry->rodata.offset);
  file_offset = tmp___9;
  data = (__be32 *)(bp->mips_firmware)->data + (unsigned long )file_offset;
  offset = (unsigned int )cpu_reg->spad_base + (addr - (u32 )cpu_reg->mips_view_base);
  }
  if (len != 0U) {
    j___1 = 0;
    goto ldv_53607;
    ldv_53606:
    {
    tmp___10 = __fswab32(*(data + (unsigned long )j___1));
    bnx2_reg_wr_ind(bp, offset, tmp___10);
    j___1 = j___1 + 1;
    offset = offset + 4U;
    }
    ldv_53607: ;
    if ((u32 )j___1 < len / 4U) {
      goto ldv_53606;
    } else {
    }
  } else {
  }
  {
  bnx2_reg_wr_ind(bp, cpu_reg->inst, 0U);
  tmp___11 = __fswab32(fw_entry->start_addr);
  val = tmp___11;
  bnx2_reg_wr_ind(bp, cpu_reg->pc, val);
  val = bnx2_reg_rd_ind(bp, cpu_reg->mode);
  val = val & (u32 )(~ cpu_reg->mode_value_halt);
  bnx2_reg_wr_ind(bp, cpu_reg->state, cpu_reg->state_value_clear);
  bnx2_reg_wr_ind(bp, cpu_reg->mode, val);
  }
  return (0);
}
}
static int bnx2_init_cpus(struct bnx2 *bp )
{
  struct bnx2_mips_fw_file const *mips_fw ;
  struct bnx2_rv2p_fw_file const *rv2p_fw ;
  int rc ;
  {
  {
  mips_fw = (struct bnx2_mips_fw_file const *)(bp->mips_firmware)->data;
  rv2p_fw = (struct bnx2_rv2p_fw_file const *)(bp->rv2p_firmware)->data;
  load_rv2p_fw(bp, 0U, & rv2p_fw->proc1);
  load_rv2p_fw(bp, 1U, & rv2p_fw->proc2);
  rc = load_cpu_fw(bp, & cpu_reg_rxp, & mips_fw->rxp);
  }
  if (rc != 0) {
    goto init_cpu_err;
  } else {
  }
  {
  rc = load_cpu_fw(bp, & cpu_reg_txp, & mips_fw->txp);
  }
  if (rc != 0) {
    goto init_cpu_err;
  } else {
  }
  {
  rc = load_cpu_fw(bp, & cpu_reg_tpat, & mips_fw->tpat);
  }
  if (rc != 0) {
    goto init_cpu_err;
  } else {
  }
  {
  rc = load_cpu_fw(bp, & cpu_reg_com, & mips_fw->com);
  }
  if (rc != 0) {
    goto init_cpu_err;
  } else {
  }
  {
  rc = load_cpu_fw(bp, & cpu_reg_cp, & mips_fw->cp);
  }
  init_cpu_err: ;
  return (rc);
}
}
static void bnx2_setup_wol(struct bnx2 *bp )
{
  int i ;
  u32 val ;
  u32 wol_msg ;
  u32 advertising ;
  u8 autoneg ;
  u32 val___0 ;
  {
  if ((unsigned int )bp->wol != 0U) {
    autoneg = bp->autoneg;
    advertising = bp->advertising;
    if ((unsigned int )bp->phy_port == 0U) {
      bp->autoneg = 1U;
      bp->advertising = 79U;
    } else {
    }
    {
    spin_lock_bh(& bp->phy_lock);
    bnx2_setup_phy(bp, (int )bp->phy_port);
    spin_unlock_bh(& bp->phy_lock);
    bp->autoneg = autoneg;
    bp->advertising = advertising;
    bnx2_set_mac_addr(bp, (bp->dev)->dev_addr, 0U);
    val = readl((void const volatile *)bp->regview + 5120U);
    val = val & 4294967283U;
    val = val | 1835008U;
    }
    if ((unsigned int )bp->phy_port == 0U) {
      val = val | 4U;
    } else {
      val = val | 8U;
      if ((unsigned int )bp->line_speed == 2500U) {
        val = val | 32U;
      } else {
      }
    }
    {
    writel(val, (void volatile *)bp->regview + 5120U);
    i = 0;
    }
    goto ldv_53625;
    ldv_53624:
    {
    writel(4294967295U, (void volatile *)(bp->regview + ((unsigned long )(i * 4) + 5328UL)));
    i = i + 1;
    }
    ldv_53625: ;
    if (i <= 7) {
      goto ldv_53624;
    } else {
    }
    {
    writel(4096U, (void volatile *)bp->regview + 5320U);
    val = 196609U;
    writel(0U, (void volatile *)bp->regview + 6176U);
    writel(val, (void volatile *)bp->regview + 6176U);
    writel(val | 2147483648U, (void volatile *)bp->regview + 6176U);
    writel(1664U, (void volatile *)bp->regview + 2064U);
    val = readl((void const volatile *)bp->regview + 6152U);
    val = val & 4294967293U;
    writel(val, (void volatile *)bp->regview + 6152U);
    wol_msg = 67108864U;
    }
  } else {
    wol_msg = 150994944U;
  }
  if ((bp->flags & 8U) == 0U) {
    wol_msg = wol_msg | 262144U;
    if (bp->fw_last_msg != 0U || (bp->chip_id & 4294901760U) != 1460207616U) {
      {
      bnx2_fw_sync(bp, wol_msg, 1, 0);
      }
      return;
    } else {
    }
    {
    val___0 = bnx2_shmem_rd(bp, 216U);
    bnx2_shmem_wr(bp, 216U, val___0 | 67108864U);
    bnx2_fw_sync(bp, wol_msg, 1, 0);
    bnx2_shmem_wr(bp, 216U, val___0);
    }
  } else {
  }
  return;
}
}
static int bnx2_set_power_state(struct bnx2 *bp , pci_power_t state )
{
  u32 val ;
  u32 val___0 ;
  {
  {
  if (state == 0) {
    goto case_0;
  } else {
  }
  if (state == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0:
  {
  pci_enable_wake(bp->pdev, 0, 0);
  pci_set_power_state(bp->pdev, 0);
  val = readl((void const volatile *)bp->regview + 5120U);
  val = val | 1572864U;
  val = val & 4294705151U;
  writel(val, (void volatile *)bp->regview + 5120U);
  val = readl((void const volatile *)bp->regview + 6152U);
  val = val & 4294967293U;
  writel(val, (void volatile *)bp->regview + 6152U);
  }
  goto ldv_53634;
  case_3:
  {
  bnx2_setup_wol(bp);
  pci_wake_from_d3(bp->pdev, (unsigned int )bp->wol != 0U);
  }
  if ((bp->chip_id & 4294967280U) == 1460011008U || (bp->chip_id & 4294967280U) == 1460011024U) {
    if ((unsigned int )bp->wol != 0U) {
      {
      pci_set_power_state(bp->pdev, 3);
      }
    } else {
    }
    goto ldv_53634;
  } else {
  }
  if (bp->fw_last_msg == 0U && (bp->chip_id & 4294901760U) == 1460207616U) {
    {
    val___0 = bnx2_shmem_rd(bp, 456U);
    val___0 = val___0 & 4294770687U;
    val___0 = val___0 | 65536U;
    bnx2_shmem_wr(bp, 456U, val___0);
    }
  } else {
  }
  {
  pci_set_power_state(bp->pdev, 3);
  }
  goto ldv_53634;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_53634: ;
  return (0);
}
}
static int bnx2_acquire_nvram_lock(struct bnx2 *bp )
{
  u32 val ;
  int j ;
  {
  {
  writel(4U, (void volatile *)bp->regview + 25632U);
  j = 0;
  }
  goto ldv_53645;
  ldv_53644:
  {
  val = readl((void const volatile *)bp->regview + 25632U);
  }
  if (((long )val & 1024L) != 0L) {
    goto ldv_53643;
  } else {
  }
  {
  __const_udelay(21475UL);
  j = j + 1;
  }
  ldv_53645: ;
  if (j <= 29999) {
    goto ldv_53644;
  } else {
  }
  ldv_53643: ;
  if (j > 29999) {
    return (-16);
  } else {
  }
  return (0);
}
}
static int bnx2_release_nvram_lock(struct bnx2 *bp )
{
  int j ;
  u32 val ;
  {
  {
  writel(64U, (void volatile *)bp->regview + 25632U);
  j = 0;
  }
  goto ldv_53653;
  ldv_53652:
  {
  val = readl((void const volatile *)bp->regview + 25632U);
  }
  if (((long )val & 1024L) == 0L) {
    goto ldv_53651;
  } else {
  }
  {
  __const_udelay(21475UL);
  j = j + 1;
  }
  ldv_53653: ;
  if (j <= 29999) {
    goto ldv_53652;
  } else {
  }
  ldv_53651: ;
  if (j > 29999) {
    return (-16);
  } else {
  }
  return (0);
}
}
static int bnx2_enable_nvram_write(struct bnx2 *bp )
{
  u32 val ;
  int j ;
  {
  {
  val = readl((void const volatile *)bp->regview + 2052U);
  writel(val | 2U, (void volatile *)bp->regview + 2052U);
  }
  if (((unsigned int )(bp->flash_info)->flags & 4U) != 0U) {
    {
    writel(8U, (void volatile *)bp->regview + 25600U);
    writel(65552U, (void volatile *)bp->regview + 25600U);
    j = 0;
    }
    goto ldv_53661;
    ldv_53660:
    {
    __const_udelay(21475UL);
    val = readl((void const volatile *)bp->regview + 25600U);
    }
    if (((long )val & 8L) != 0L) {
      goto ldv_53659;
    } else {
    }
    j = j + 1;
    ldv_53661: ;
    if (j <= 29999) {
      goto ldv_53660;
    } else {
    }
    ldv_53659: ;
    if (j > 29999) {
      return (-16);
    } else {
    }
  } else {
  }
  return (0);
}
}
static void bnx2_disable_nvram_write(struct bnx2 *bp )
{
  u32 val ;
  {
  {
  val = readl((void const volatile *)bp->regview + 2052U);
  writel(val & 4294967289U, (void volatile *)bp->regview + 2052U);
  }
  return;
}
}
static void bnx2_enable_nvram_access(struct bnx2 *bp )
{
  u32 val ;
  {
  {
  val = readl((void const volatile *)bp->regview + 25636U);
  writel(val | 3U, (void volatile *)bp->regview + 25636U);
  }
  return;
}
}
static void bnx2_disable_nvram_access(struct bnx2 *bp )
{
  u32 val ;
  {
  {
  val = readl((void const volatile *)bp->regview + 25636U);
  writel(val & 4294967292U, (void volatile *)bp->regview + 25636U);
  }
  return;
}
}
static int bnx2_nvram_erase_page(struct bnx2 *bp , u32 offset )
{
  u32 cmd ;
  int j ;
  u32 val ;
  {
  if ((int )(bp->flash_info)->flags & 1) {
    return (0);
  } else {
  }
  {
  cmd = 112U;
  writel(8U, (void volatile *)bp->regview + 25600U);
  writel(offset & 16777215U, (void volatile *)bp->regview + 25612U);
  writel(cmd, (void volatile *)bp->regview + 25600U);
  j = 0;
  }
  goto ldv_53683;
  ldv_53682:
  {
  __const_udelay(21475UL);
  val = readl((void const volatile *)bp->regview + 25600U);
  }
  if (((long )val & 8L) != 0L) {
    goto ldv_53681;
  } else {
  }
  j = j + 1;
  ldv_53683: ;
  if (j <= 29999) {
    goto ldv_53682;
  } else {
  }
  ldv_53681: ;
  if (j > 29999) {
    return (-16);
  } else {
  }
  return (0);
}
}
static int bnx2_nvram_read_dword(struct bnx2 *bp , u32 offset , u8 *ret_val , u32 cmd_flags )
{
  u32 cmd ;
  int j ;
  u32 val ;
  __be32 v ;
  unsigned int tmp ;
  __u32 tmp___0 ;
  {
  cmd = cmd_flags | 16U;
  if (((unsigned int )(bp->flash_info)->flags & 2U) != 0U) {
    offset = (offset / (u32 )(bp->flash_info)->page_size << (int )(bp->flash_info)->page_bits) + offset % (u32 )(bp->flash_info)->page_size;
  } else {
  }
  {
  writel(8U, (void volatile *)bp->regview + 25600U);
  writel(offset & 16777215U, (void volatile *)bp->regview + 25612U);
  writel(cmd, (void volatile *)bp->regview + 25600U);
  j = 0;
  }
  goto ldv_53696;
  ldv_53695:
  {
  __const_udelay(21475UL);
  val = readl((void const volatile *)bp->regview + 25600U);
  }
  if (((long )val & 8L) != 0L) {
    {
    tmp = readl((void const volatile *)bp->regview + 25616U);
    tmp___0 = __fswab32(tmp);
    v = tmp___0;
    memcpy((void *)ret_val, (void const *)(& v), 4UL);
    }
    goto ldv_53694;
  } else {
  }
  j = j + 1;
  ldv_53696: ;
  if (j <= 29999) {
    goto ldv_53695;
  } else {
  }
  ldv_53694: ;
  if (j > 29999) {
    return (-16);
  } else {
  }
  return (0);
}
}
static int bnx2_nvram_write_dword(struct bnx2 *bp , u32 offset , u8 *val , u32 cmd_flags )
{
  u32 cmd ;
  __be32 val32 ;
  int j ;
  __u32 tmp ;
  unsigned int tmp___0 ;
  {
  cmd = cmd_flags | 48U;
  if (((unsigned int )(bp->flash_info)->flags & 2U) != 0U) {
    offset = (offset / (u32 )(bp->flash_info)->page_size << (int )(bp->flash_info)->page_bits) + offset % (u32 )(bp->flash_info)->page_size;
  } else {
  }
  {
  writel(8U, (void volatile *)bp->regview + 25600U);
  memcpy((void *)(& val32), (void const *)val, 4UL);
  tmp = __fswab32(val32);
  writel(tmp, (void volatile *)bp->regview + 25608U);
  writel(offset & 16777215U, (void volatile *)bp->regview + 25612U);
  writel(cmd, (void volatile *)bp->regview + 25600U);
  j = 0;
  }
  goto ldv_53708;
  ldv_53707:
  {
  __const_udelay(21475UL);
  tmp___0 = readl((void const volatile *)bp->regview + 25600U);
  }
  if (((long )tmp___0 & 8L) != 0L) {
    goto ldv_53706;
  } else {
  }
  j = j + 1;
  ldv_53708: ;
  if (j <= 29999) {
    goto ldv_53707;
  } else {
  }
  ldv_53706: ;
  if (j > 29999) {
    return (-16);
  } else {
  }
  return (0);
}
}
static int bnx2_init_nvram(struct bnx2 *bp )
{
  u32 val ;
  int j ;
  int entry_count ;
  int rc ;
  struct flash_spec const *flash ;
  u32 mask ;
  {
  rc = 0;
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    bp->flash_info = & flash_5709;
    goto get_flash_size;
  } else {
  }
  {
  val = readl((void const volatile *)bp->regview + 25620U);
  entry_count = 16;
  }
  if ((val & 1073741824U) != 0U) {
    j = 0;
    flash = (struct flash_spec const *)(& flash_table);
    goto ldv_53722;
    ldv_53721: ;
    if (((val ^ (u32 )flash->config1) & 1006632960U) == 0U) {
      bp->flash_info = flash;
      goto ldv_53720;
    } else {
    }
    j = j + 1;
    flash = flash + 1;
    ldv_53722: ;
    if (j < entry_count) {
      goto ldv_53721;
    } else {
    }
    ldv_53720: ;
  } else {
    if ((val & 8388608U) != 0U) {
      mask = 1006632960U;
    } else {
      mask = 50331651U;
    }
    j = 0;
    flash = (struct flash_spec const *)(& flash_table);
    goto ldv_53726;
    ldv_53725: ;
    if (((val ^ (unsigned int )flash->strapping) & mask) == 0U) {
      {
      bp->flash_info = flash;
      rc = bnx2_acquire_nvram_lock(bp);
      }
      if (rc != 0) {
        return (rc);
      } else {
      }
      {
      bnx2_enable_nvram_access(bp);
      writel(flash->config1, (void volatile *)bp->regview + 25620U);
      writel(flash->config2, (void volatile *)bp->regview + 25624U);
      writel(flash->config3, (void volatile *)bp->regview + 25628U);
      writel(flash->write1, (void volatile *)bp->regview + 25640U);
      bnx2_disable_nvram_access(bp);
      bnx2_release_nvram_lock(bp);
      }
      goto ldv_53724;
    } else {
    }
    j = j + 1;
    flash = flash + 1;
    ldv_53726: ;
    if (j < entry_count) {
      goto ldv_53725;
    } else {
    }
    ldv_53724: ;
  }
  if (j == entry_count) {
    {
    bp->flash_info = (struct flash_spec const *)0;
    printk("\tbnx2: Unknown flash/EEPROM type\n");
    }
    return (-19);
  } else {
  }
  get_flash_size:
  {
  val = bnx2_shmem_rd(bp, 64U);
  val = val & 16773120U;
  }
  if (val != 0U) {
    bp->flash_size = val;
  } else {
    bp->flash_size = (bp->flash_info)->total_size;
  }
  return (rc);
}
}
static int bnx2_nvram_read(struct bnx2 *bp , u32 offset , u8 *ret_buf , int buf_size )
{
  int rc ;
  u32 cmd_flags ;
  u32 offset32 ;
  u32 len32 ;
  u32 extra ;
  u8 buf[4U] ;
  u32 pre_len ;
  u8 buf___0[4U] ;
  u8 buf___1[4U] ;
  {
  rc = 0;
  if (buf_size == 0) {
    return (0);
  } else {
  }
  {
  rc = bnx2_acquire_nvram_lock(bp);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  bnx2_enable_nvram_access(bp);
  len32 = (u32 )buf_size;
  offset32 = offset;
  extra = 0U;
  cmd_flags = 0U;
  }
  if ((offset32 & 3U) != 0U) {
    offset32 = offset32 & 4294967292U;
    pre_len = 4U - (offset & 3U);
    if (pre_len >= len32) {
      pre_len = len32;
      cmd_flags = 384U;
    } else {
      cmd_flags = 128U;
    }
    {
    rc = bnx2_nvram_read_dword(bp, offset32, (u8 *)(& buf), cmd_flags);
    }
    if (rc != 0) {
      return (rc);
    } else {
    }
    {
    memcpy((void *)ret_buf, (void const *)(& buf) + ((unsigned long )offset & 3UL),
           (size_t )pre_len);
    offset32 = offset32 + 4U;
    ret_buf = ret_buf + (unsigned long )pre_len;
    len32 = len32 - pre_len;
    }
  } else {
  }
  if ((len32 & 3U) != 0U) {
    extra = 4U - (len32 & 3U);
    len32 = (len32 + 4U) & 4294967292U;
  } else {
  }
  if (len32 == 4U) {
    if (cmd_flags != 0U) {
      cmd_flags = 256U;
    } else {
      cmd_flags = 384U;
    }
    {
    rc = bnx2_nvram_read_dword(bp, offset32, (u8 *)(& buf___0), cmd_flags);
    memcpy((void *)ret_buf, (void const *)(& buf___0), (size_t )(4U - extra));
    }
  } else
  if (len32 != 0U) {
    if (cmd_flags != 0U) {
      cmd_flags = 0U;
    } else {
      cmd_flags = 128U;
    }
    {
    rc = bnx2_nvram_read_dword(bp, offset32, ret_buf, cmd_flags);
    offset32 = offset32 + 4U;
    ret_buf = ret_buf + 4UL;
    len32 = len32 - 4U;
    }
    goto ldv_53743;
    ldv_53742:
    {
    rc = bnx2_nvram_read_dword(bp, offset32, ret_buf, 0U);
    offset32 = offset32 + 4U;
    ret_buf = ret_buf + 4UL;
    len32 = len32 - 4U;
    }
    ldv_53743: ;
    if (len32 > 4U && rc == 0) {
      goto ldv_53742;
    } else {
    }
    if (rc != 0) {
      return (rc);
    } else {
    }
    {
    cmd_flags = 256U;
    rc = bnx2_nvram_read_dword(bp, offset32, (u8 *)(& buf___1), cmd_flags);
    memcpy((void *)ret_buf, (void const *)(& buf___1), (size_t )(4U - extra));
    }
  } else {
  }
  {
  bnx2_disable_nvram_access(bp);
  bnx2_release_nvram_lock(bp);
  }
  return (rc);
}
}
static int bnx2_nvram_write(struct bnx2 *bp , u32 offset , u8 *data_buf , int buf_size )
{
  u32 written ;
  u32 offset32 ;
  u32 len32 ;
  u8 *buf ;
  u8 start[4U] ;
  u8 end[4U] ;
  u8 *align_buf ;
  u8 *flash_buffer ;
  int rc ;
  int align_start ;
  int align_end ;
  void *tmp ;
  void *tmp___0 ;
  u32 page_start ;
  u32 page_end ;
  u32 data_start ;
  u32 data_end ;
  u32 addr ;
  u32 cmd_flags ;
  int i ;
  int j ;
  {
  align_buf = (u8 *)0U;
  flash_buffer = (u8 *)0U;
  rc = 0;
  buf = data_buf;
  offset32 = offset;
  len32 = (u32 )buf_size;
  align_end = 0;
  align_start = align_end;
  align_start = (int )offset32 & 3;
  if (align_start != 0) {
    offset32 = offset32 & 4294967292U;
    len32 = len32 + (u32 )align_start;
    if (len32 <= 3U) {
      len32 = 4U;
    } else {
    }
    {
    rc = bnx2_nvram_read(bp, offset32, (u8 *)(& start), 4);
    }
    if (rc != 0) {
      return (rc);
    } else {
    }
  } else {
  }
  if ((len32 & 3U) != 0U) {
    {
    align_end = (int )(4U - (len32 & 3U));
    len32 = len32 + (u32 )align_end;
    rc = bnx2_nvram_read(bp, (offset32 + len32) - 4U, (u8 *)(& end), 4);
    }
    if (rc != 0) {
      return (rc);
    } else {
    }
  } else {
  }
  if ((align_start | align_end) != 0) {
    {
    tmp = kmalloc((size_t )len32, 208U);
    align_buf = (u8 *)tmp;
    }
    if ((unsigned long )align_buf == (unsigned long )((u8 *)0U)) {
      return (-12);
    } else {
    }
    if (align_start != 0) {
      {
      memcpy((void *)align_buf, (void const *)(& start), 4UL);
      }
    } else {
    }
    if (align_end != 0) {
      {
      memcpy((void *)(align_buf + ((unsigned long )len32 + 0xfffffffffffffffcUL)),
             (void const *)(& end), 4UL);
      }
    } else {
    }
    {
    memcpy((void *)align_buf + (unsigned long )align_start, (void const *)data_buf,
           (size_t )buf_size);
    buf = align_buf;
    }
  } else {
  }
  if (((unsigned int )(bp->flash_info)->flags & 1U) == 0U) {
    {
    tmp___0 = kmalloc(264UL, 208U);
    flash_buffer = (u8 *)tmp___0;
    }
    if ((unsigned long )flash_buffer == (unsigned long )((u8 *)0U)) {
      rc = -12;
      goto nvram_write_end;
    } else {
    }
  } else {
  }
  written = 0U;
  goto ldv_53784;
  ldv_53783:
  {
  page_start = offset32 + written;
  page_start = page_start - page_start % (u32 )(bp->flash_info)->page_size;
  page_end = page_start + (u32 )(bp->flash_info)->page_size;
  data_start = written == 0U ? offset32 : page_start;
  data_end = offset32 + len32 < page_end ? offset32 + len32 : page_end;
  rc = bnx2_acquire_nvram_lock(bp);
  }
  if (rc != 0) {
    goto nvram_write_end;
  } else {
  }
  {
  bnx2_enable_nvram_access(bp);
  cmd_flags = 128U;
  }
  if (((unsigned int )(bp->flash_info)->flags & 1U) == 0U) {
    j = 0;
    goto ldv_53772;
    ldv_53771: ;
    if ((unsigned int )j == (unsigned int )(bp->flash_info)->page_size - 4U) {
      cmd_flags = cmd_flags | 256U;
    } else {
    }
    {
    rc = bnx2_nvram_read_dword(bp, page_start + (u32 )j, flash_buffer + (unsigned long )j,
                               cmd_flags);
    }
    if (rc != 0) {
      goto nvram_write_end;
    } else {
    }
    cmd_flags = 0U;
    j = j + 4;
    ldv_53772: ;
    if ((unsigned int )j < (unsigned int )(bp->flash_info)->page_size) {
      goto ldv_53771;
    } else {
    }
  } else {
  }
  {
  rc = bnx2_enable_nvram_write(bp);
  }
  if (rc != 0) {
    goto nvram_write_end;
  } else {
  }
  i = 0;
  if (((unsigned int )(bp->flash_info)->flags & 1U) == 0U) {
    {
    rc = bnx2_nvram_erase_page(bp, page_start);
    }
    if (rc != 0) {
      goto nvram_write_end;
    } else {
    }
    {
    bnx2_enable_nvram_write(bp);
    addr = page_start;
    }
    goto ldv_53775;
    ldv_53774:
    {
    rc = bnx2_nvram_write_dword(bp, addr, flash_buffer + (unsigned long )i, cmd_flags);
    }
    if (rc != 0) {
      goto nvram_write_end;
    } else {
    }
    cmd_flags = 0U;
    addr = addr + 4U;
    i = i + 4;
    ldv_53775: ;
    if (addr < data_start) {
      goto ldv_53774;
    } else {
    }
  } else {
  }
  addr = data_start;
  goto ldv_53778;
  ldv_53777: ;
  if (addr == page_end - 4U || ((int )(bp->flash_info)->flags & 1 && addr == data_end - 4U)) {
    cmd_flags = cmd_flags | 256U;
  } else {
  }
  {
  rc = bnx2_nvram_write_dword(bp, addr, buf, cmd_flags);
  }
  if (rc != 0) {
    goto nvram_write_end;
  } else {
  }
  cmd_flags = 0U;
  buf = buf + 4UL;
  addr = addr + 4U;
  i = i + 4;
  ldv_53778: ;
  if (addr < data_end) {
    goto ldv_53777;
  } else {
  }
  if (((unsigned int )(bp->flash_info)->flags & 1U) == 0U) {
    addr = data_end;
    goto ldv_53781;
    ldv_53780: ;
    if (addr == page_end - 4U) {
      cmd_flags = 256U;
    } else {
    }
    {
    rc = bnx2_nvram_write_dword(bp, addr, flash_buffer + (unsigned long )i, cmd_flags);
    }
    if (rc != 0) {
      goto nvram_write_end;
    } else {
    }
    cmd_flags = 0U;
    addr = addr + 4U;
    i = i + 4;
    ldv_53781: ;
    if (addr < page_end) {
      goto ldv_53780;
    } else {
    }
  } else {
  }
  {
  bnx2_disable_nvram_write(bp);
  bnx2_disable_nvram_access(bp);
  bnx2_release_nvram_lock(bp);
  written = written + (data_end - data_start);
  }
  ldv_53784: ;
  if (written < len32 && rc == 0) {
    goto ldv_53783;
  } else {
  }
  nvram_write_end:
  {
  kfree((void const *)flash_buffer);
  kfree((void const *)align_buf);
  }
  return (rc);
}
}
static void bnx2_init_fw_cap(struct bnx2 *bp )
{
  u32 val ;
  u32 sig ;
  u32 link ;
  bool tmp ;
  {
  sig = 0U;
  bp->phy_flags = bp->phy_flags & 4294965247U;
  bp->flags = bp->flags & 4294963199U;
  if ((bp->flags & 64U) == 0U) {
    bp->flags = bp->flags | 4096U;
  } else {
  }
  {
  val = bnx2_shmem_rd(bp, 872U);
  }
  if ((val & 4294901760U) != 2857697280U) {
    return;
  } else {
  }
  if ((val & 24U) == 24U) {
    bp->flags = bp->flags | 4096U;
    sig = sig | 893714456U;
  } else {
  }
  if ((int )bp->phy_flags & 1 && (int )val & 1) {
    {
    bp->phy_flags = bp->phy_flags | 2048U;
    link = bnx2_shmem_rd(bp, 12U);
    }
    if ((link & 1048576U) != 0U) {
      bp->phy_port = 3U;
    } else {
      bp->phy_port = 0U;
    }
    sig = sig | 893714433U;
  } else {
  }
  {
  tmp = netif_running((struct net_device const *)bp->dev);
  }
  if ((int )tmp && sig != 0U) {
    {
    bnx2_shmem_wr(bp, 868U, sig);
    }
  } else {
  }
  return;
}
}
static void bnx2_setup_msix_tbl(struct bnx2 *bp )
{
  {
  {
  writel(2147483648U, (void volatile *)bp->regview + 1024U);
  writel(3244032U, (void volatile *)bp->regview + 1556U);
  writel(3260416U, (void volatile *)bp->regview + 1560U);
  }
  return;
}
}
static int bnx2_reset_chip(struct bnx2 *bp , u32 reset_code )
{
  u32 val ;
  int i ;
  int rc ;
  u8 old_port ;
  {
  rc = 0;
  if ((bp->chip_id & 4294901760U) == 1460011008U || (bp->chip_id & 4294901760U) == 1460142080U) {
    {
    writel(67764240U, (void volatile *)bp->regview + 2068U);
    val = readl((void const volatile *)bp->regview + 2068U);
    __const_udelay(21475UL);
    }
  } else {
    {
    val = readl((void const volatile *)bp->regview + 2248U);
    val = val & 4294901759U;
    writel(val, (void volatile *)bp->regview + 2248U);
    val = readl((void const volatile *)bp->regview + 2248U);
    i = 0;
    }
    goto ldv_53805;
    ldv_53804:
    {
    msleep(1U);
    val = readl((void const volatile *)bp->regview + 180U);
    }
    if (((long )val & 2097152L) == 0L) {
      goto ldv_53803;
    } else {
    }
    i = i + 1;
    ldv_53805: ;
    if (i <= 99) {
      goto ldv_53804;
    } else {
    }
    ldv_53803: ;
  }
  {
  bnx2_fw_sync(bp, reset_code | 65536U, 1, 1);
  bnx2_shmem_wr(bp, 0U, 1212241483U);
  val = readl((void const volatile *)bp->regview + 2056U);
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    {
    writel(16U, (void volatile *)bp->regview + 2048U);
    readl((void const volatile *)bp->regview + 2048U);
    __const_udelay(21475UL);
    val = 136U;
    writel(val, (void volatile *)bp->regview + 104U);
    }
  } else {
    {
    val = 392U;
    writel(val, (void volatile *)bp->regview + 104U);
    }
    if ((bp->chip_id & 4294967280U) == 1460011008U || (bp->chip_id & 4294967280U) == 1460011024U) {
      {
      msleep(20U);
      }
    } else {
    }
    i = 0;
    goto ldv_53808;
    ldv_53807:
    {
    val = readl((void const volatile *)bp->regview + 104U);
    }
    if (((long )val & 768L) == 0L) {
      goto ldv_53806;
    } else {
    }
    {
    __const_udelay(42950UL);
    i = i + 1;
    }
    ldv_53808: ;
    if (i <= 9) {
      goto ldv_53807;
    } else {
    }
    ldv_53806: ;
    if (((long )val & 768L) != 0L) {
      {
      printk("\vbnx2: Chip reset did not complete\n");
      }
      return (-16);
    } else {
    }
  }
  {
  val = readl((void const volatile *)bp->regview + 1048U);
  }
  if (val != 16909060U) {
    {
    printk("\vbnx2: Chip not in correct endian mode\n");
    }
    return (-19);
  } else {
  }
  {
  rc = bnx2_fw_sync(bp, reset_code | 131072U, 1, 0);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  spin_lock_bh(& bp->phy_lock);
  old_port = bp->phy_port;
  bnx2_init_fw_cap(bp);
  }
  if ((bp->phy_flags & 2048U) != 0U && (int )old_port != (int )bp->phy_port) {
    {
    bnx2_set_default_remote_link(bp);
    }
  } else {
  }
  {
  spin_unlock_bh(& bp->phy_lock);
  }
  if ((bp->chip_id & 4294967280U) == 1460011008U) {
    {
    writel(250U, (void volatile *)bp->regview + 2228U);
    rc = bnx2_alloc_bad_rbuf(bp);
    }
  } else {
  }
  if ((bp->flags & 1024U) != 0U) {
    {
    bnx2_setup_msix_tbl(bp);
    writel(1U, (void volatile *)bp->regview + 2252U);
    }
  } else {
  }
  return (rc);
}
}
static int bnx2_init_chip(struct bnx2 *bp )
{
  u32 val ;
  u32 mtu ;
  int rc ;
  int i ;
  u16 val16 ;
  u32 base ;
  {
  {
  writel(262144U, (void volatile *)bp->regview + 132U);
  val = 217123U;
  val = val | 2099200U;
  }
  if ((int )bp->flags & 1 && (unsigned int )bp->bus_speed_mhz == 133U) {
    val = val | 8388608U;
  } else {
  }
  if (((bp->chip_id & 4294901760U) == 1460011008U && (bp->chip_id & 4294967280U) != 1460011008U) && (bp->flags & 1U) == 0U) {
    val = val | 1024U;
  } else {
  }
  {
  writel(val, (void volatile *)bp->regview + 3080U);
  }
  if ((bp->chip_id & 4294967280U) == 1460011008U) {
    {
    val = readl((void const volatile *)bp->regview + 23560U);
    val = val | 1U;
    writel(val, (void volatile *)bp->regview + 23560U);
    }
  } else {
  }
  if ((int )bp->flags & 1) {
    {
    pci_read_config_word((struct pci_dev const *)bp->pdev, bp->pcix_cap + 2, & val16);
    pci_write_config_word((struct pci_dev const *)bp->pdev, bp->pcix_cap + 2, (int )val16 & 65533);
    }
  } else {
  }
  {
  writel(2654208U, (void volatile *)bp->regview + 2064U);
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    {
    rc = bnx2_init_5709_context(bp);
    }
    if (rc != 0) {
      return (rc);
    } else {
    }
  } else {
    {
    bnx2_init_context(bp);
    }
  }
  {
  rc = bnx2_init_cpus(bp);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  bnx2_init_nvram(bp);
  bnx2_set_mac_addr(bp, (bp->dev)->dev_addr, 0U);
  val = readl((void const volatile *)bp->regview + 15368U);
  val = val & 4294967183U;
  val = val;
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    val = val | 4U;
    if ((bp->chip_id & 61440U) == 0U) {
      val = val | 2U;
    } else {
    }
  } else {
  }
  {
  writel(val, (void volatile *)bp->regview + 15368U);
  val = 4259840U;
  writel(val, (void volatile *)bp->regview + 15388U);
  writel(val, (void volatile *)bp->regview + 15392U);
  val = 67108864U;
  writel(val, (void volatile *)bp->regview + 10248U);
  val = readl((void const volatile *)bp->regview + 20488U);
  val = val & 4043309055U;
  val = val | 67108928U;
  writel(val, (void volatile *)bp->regview + 20488U);
  val = (u32 )((((((int )bp->mac_addr[0] + ((int )bp->mac_addr[1] << 8)) + ((int )bp->mac_addr[2] << 16)) + (int )bp->mac_addr[3]) + ((int )bp->mac_addr[4] << 8)) + ((int )bp->mac_addr[5] << 16));
  writel(val, (void volatile *)bp->regview + 5272U);
  mtu = (bp->dev)->mtu;
  val = mtu + 18U;
  }
  if (val > 1518U) {
    val = val | 2147483648U;
  } else {
  }
  {
  writel(val, (void volatile *)bp->regview + 5276U);
  }
  if (mtu <= 1499U) {
    mtu = 1500U;
  } else {
  }
  {
  bnx2_reg_wr_ind(bp, 2097164U, ((mtu * 31U + 4294920796U) / 1000U + 54U) | (((mtu * 39U + 4294908796U) / 1000U + 66U) << 16));
  bnx2_reg_wr_ind(bp, 2097180U, (((mtu + 1073740324U) * 4U) / 1000U + 5U) | ((((mtu + 2147482148U) * 2U) / 100U + 30U) << 16));
  bnx2_reg_wr_ind(bp, 2097184U, ((mtu * 12U + 4294949296U) / 1000U + 18U) | ((((mtu + 2147482148U) * 2U) / 100U + 30U) << 16));
  memset((void *)bp->bnx2_napi[0].status_blk.msi, 0, (size_t )bp->status_stats_size);
  i = 0;
  }
  goto ldv_53818;
  ldv_53817:
  bp->bnx2_napi[i].last_status_idx = 0U;
  i = i + 1;
  ldv_53818: ;
  if (i <= 8) {
    goto ldv_53817;
  } else {
  }
  {
  bp->idle_chk_status_idx = 65535U;
  bp->rx_mode = 4096U;
  writel(2048U, (void volatile *)bp->regview + 5128U);
  writel((unsigned int )bp->status_blk_mapping, (void volatile *)bp->regview + 26640U);
  writel((unsigned int )(bp->status_blk_mapping >> 32), (void volatile *)bp->regview + 26644U);
  writel((unsigned int )bp->stats_blk_mapping, (void volatile *)bp->regview + 26648U);
  writel((unsigned int )(bp->stats_blk_mapping >> 32), (void volatile *)bp->regview + 26652U);
  writel((unsigned int )(((int )bp->tx_quick_cons_trip_int << 16) | (int )bp->tx_quick_cons_trip),
         (void volatile *)bp->regview + 26656U);
  writel((unsigned int )(((int )bp->rx_quick_cons_trip_int << 16) | (int )bp->rx_quick_cons_trip),
         (void volatile *)bp->regview + 26664U);
  writel((unsigned int )(((int )bp->comp_prod_trip_int << 16) | (int )bp->comp_prod_trip),
         (void volatile *)bp->regview + 26660U);
  writel((unsigned int )(((int )bp->tx_ticks_int << 16) | (int )bp->tx_ticks), (void volatile *)bp->regview + 26672U);
  writel((unsigned int )(((int )bp->rx_ticks_int << 16) | (int )bp->rx_ticks), (void volatile *)bp->regview + 26668U);
  writel((unsigned int )(((int )bp->com_ticks_int << 16) | (int )bp->com_ticks), (void volatile *)bp->regview + 26676U);
  writel((unsigned int )(((int )bp->cmd_ticks_int << 16) | (int )bp->cmd_ticks), (void volatile *)bp->regview + 26680U);
  }
  if ((bp->flags & 8192U) != 0U) {
    {
    writel(0U, (void volatile *)bp->regview + 26692U);
    }
  } else {
    {
    writel(bp->stats_ticks, (void volatile *)bp->regview + 26692U);
    }
  }
  {
  writel(3000U, (void volatile *)bp->regview + 26688U);
  }
  if ((bp->chip_id & 4294967280U) == 1460011024U) {
    val = 1U;
  } else {
    val = 7U;
  }
  if ((bp->flags & 1024U) != 0U) {
    {
    writel(511U, (void volatile *)bp->regview + 26904U);
    val = val | 16777216U;
    }
  } else {
  }
  if ((bp->flags & 256U) != 0U) {
    val = val | 393216U;
  } else {
  }
  {
  writel(val, (void volatile *)bp->regview + 26632U);
  }
  if ((unsigned int )bp->rx_ticks <= 24U) {
    {
    bnx2_reg_wr_ind(bp, 1179736U, 1U);
    }
  } else {
    {
    bnx2_reg_wr_ind(bp, 1179736U, 0U);
    }
  }
  i = 1;
  goto ldv_53822;
  ldv_53821:
  {
  base = (u32 )((i + -1) * 36 + 27136);
  writel(131078U, (void volatile *)bp->regview + (unsigned long )base);
  writel((unsigned int )(((int )bp->tx_quick_cons_trip_int << 16) | (int )bp->tx_quick_cons_trip),
         (void volatile *)(bp->regview + ((unsigned long )base + 4UL)));
  writel((unsigned int )(((int )bp->tx_ticks_int << 16) | (int )bp->tx_ticks), (void volatile *)(bp->regview + ((unsigned long )base + 20UL)));
  writel((unsigned int )(((int )bp->rx_quick_cons_trip_int << 16) | (int )bp->rx_quick_cons_trip),
         (void volatile *)(bp->regview + ((unsigned long )base + 12UL)));
  writel((unsigned int )(((int )bp->rx_ticks_int << 16) | (int )bp->rx_ticks), (void volatile *)(bp->regview + ((unsigned long )base + 16UL)));
  i = i + 1;
  }
  ldv_53822: ;
  if (i < bp->irq_nvecs) {
    goto ldv_53821;
  } else {
  }
  {
  writel(2097152U, (void volatile *)bp->regview + 26624U);
  writel(16777217U, (void volatile *)bp->regview + 26636U);
  bnx2_set_rx_mode(bp->dev);
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    {
    val = readl((void const volatile *)bp->regview + 2248U);
    val = val | 65536U;
    writel(val, (void volatile *)bp->regview + 2248U);
    }
  } else {
  }
  {
  rc = bnx2_fw_sync(bp, 16973824U, 1, 0);
  writel(402653183U, (void volatile *)bp->regview + 2064U);
  readl((void const volatile *)bp->regview + 2064U);
  __const_udelay(85900UL);
  bp->hc_cmd = readl((void const volatile *)bp->regview + 26624U);
  }
  return (rc);
}
}
static void bnx2_clear_ring_states(struct bnx2 *bp )
{
  struct bnx2_napi *bnapi ;
  struct bnx2_tx_ring_info *txr ;
  struct bnx2_rx_ring_info *rxr ;
  int i ;
  {
  i = 0;
  goto ldv_53832;
  ldv_53831:
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi) + (unsigned long )i;
  txr = & bnapi->tx_ring;
  rxr = & bnapi->rx_ring;
  txr->tx_cons = 0U;
  txr->hw_tx_cons = 0U;
  rxr->rx_prod_bseq = 0U;
  rxr->rx_prod = 0U;
  rxr->rx_cons = 0U;
  rxr->rx_pg_prod = 0U;
  rxr->rx_pg_cons = 0U;
  i = i + 1;
  ldv_53832: ;
  if (i <= 8) {
    goto ldv_53831;
  } else {
  }
  return;
}
}
static void bnx2_init_tx_context(struct bnx2 *bp , u32 cid , struct bnx2_tx_ring_info *txr )
{
  u32 val ;
  u32 offset0 ;
  u32 offset1 ;
  u32 offset2 ;
  u32 offset3 ;
  u32 cid_addr ;
  {
  cid_addr = cid << 7;
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    offset0 = 128U;
    offset1 = 576U;
    offset2 = 600U;
    offset3 = 604U;
  } else {
    offset0 = 0U;
    offset1 = 136U;
    offset2 = 160U;
    offset3 = 164U;
  }
  {
  val = 268828672U;
  bnx2_ctx_wr(bp, cid_addr, offset0, val);
  val = 524288U;
  bnx2_ctx_wr(bp, cid_addr, offset1, val);
  val = (u32 )(txr->tx_desc_mapping >> 32);
  bnx2_ctx_wr(bp, cid_addr, offset2, val);
  val = (u32 )txr->tx_desc_mapping;
  bnx2_ctx_wr(bp, cid_addr, offset3, val);
  }
  return;
}
}
static void bnx2_init_tx_ring(struct bnx2 *bp , int ring_num )
{
  struct bnx2_tx_bd *txbd ;
  u32 cid ;
  struct bnx2_napi *bnapi ;
  struct bnx2_tx_ring_info *txr ;
  {
  cid = 16U;
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi) + (unsigned long )ring_num;
  txr = & bnapi->tx_ring;
  if (ring_num == 0) {
    cid = 16U;
  } else {
    cid = (u32 )(ring_num + 31);
  }
  {
  bp->tx_wake_thresh = (u32 )(bp->tx_ring_size / 2);
  txbd = txr->tx_desc_ring + 255UL;
  txbd->tx_bd_haddr_hi = (u32 )(txr->tx_desc_mapping >> 32);
  txbd->tx_bd_haddr_lo = (u32 )txr->tx_desc_mapping;
  txr->tx_prod = 0U;
  txr->tx_prod_bseq = 0U;
  txr->tx_bidx_addr = (cid << 8) + 65672U;
  txr->tx_bseq_addr = (cid << 8) + 65680U;
  bnx2_init_tx_context(bp, cid, txr);
  }
  return;
}
}
static void bnx2_init_rxbd_rings(struct bnx2_rx_bd **rx_ring , dma_addr_t *dma , u32 buf_size ,
                                 int num_rings )
{
  int i ;
  struct bnx2_rx_bd *rxbd ;
  int j ;
  {
  i = 0;
  goto ldv_53866;
  ldv_53865:
  rxbd = *(rx_ring + (unsigned long )i);
  j = 0;
  goto ldv_53863;
  ldv_53862:
  rxbd->rx_bd_len = buf_size;
  rxbd->rx_bd_flags = 12U;
  j = j + 1;
  rxbd = rxbd + 1;
  ldv_53863: ;
  if ((unsigned int )j <= 254U) {
    goto ldv_53862;
  } else {
  }
  if (i == num_rings + -1) {
    j = 0;
  } else {
    j = i + 1;
  }
  rxbd->rx_bd_haddr_hi = (u32 )(*(dma + (unsigned long )j) >> 32);
  rxbd->rx_bd_haddr_lo = (u32 )*(dma + (unsigned long )j);
  i = i + 1;
  ldv_53866: ;
  if (i < num_rings) {
    goto ldv_53865;
  } else {
  }
  return;
}
}
static void bnx2_init_rx_ring(struct bnx2 *bp , int ring_num )
{
  int i ;
  u16 prod ;
  u16 ring_prod ;
  u32 cid ;
  u32 rx_cid_addr ;
  u32 val ;
  struct bnx2_napi *bnapi ;
  struct bnx2_rx_ring_info *rxr ;
  int tmp ;
  int tmp___0 ;
  {
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi) + (unsigned long )ring_num;
  rxr = & bnapi->rx_ring;
  if (ring_num == 0) {
    cid = 0U;
  } else {
    cid = (u32 )(ring_num + 3);
  }
  {
  rx_cid_addr = cid << 7;
  bnx2_init_rxbd_rings((struct bnx2_rx_bd **)(& rxr->rx_desc_ring), (dma_addr_t *)(& rxr->rx_desc_mapping),
                       bp->rx_buf_use_size, bp->rx_max_ring);
  bnx2_init_rx_context(bp, cid);
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    {
    val = readl((void const volatile *)bp->regview + 15668U);
    writel(val | 201326592U, (void volatile *)bp->regview + 15668U);
    }
  } else {
  }
  {
  bnx2_ctx_wr(bp, rx_cid_addr, 72U, 0U);
  }
  if (bp->rx_pg_ring_size != 0) {
    {
    bnx2_init_rxbd_rings((struct bnx2_rx_bd **)(& rxr->rx_pg_desc_ring), (dma_addr_t *)(& rxr->rx_pg_desc_mapping),
                         4096U, bp->rx_max_pg_ring);
    val = (bp->rx_buf_use_size << 16) | 4096U;
    bnx2_ctx_wr(bp, rx_cid_addr, 72U, val);
    bnx2_ctx_wr(bp, rx_cid_addr, 76U, (u32 )(16382 - ring_num));
    val = (u32 )(rxr->rx_pg_desc_mapping[0] >> 32);
    bnx2_ctx_wr(bp, rx_cid_addr, 80U, val);
    val = (u32 )rxr->rx_pg_desc_mapping[0];
    bnx2_ctx_wr(bp, rx_cid_addr, 84U, val);
    }
    if ((bp->chip_id & 4294901760U) == 1460207616U) {
      {
      writel(2181056070U, (void volatile *)bp->regview + 15660U);
      }
    } else {
    }
  } else {
  }
  {
  val = (u32 )(rxr->rx_desc_mapping[0] >> 32);
  bnx2_ctx_wr(bp, rx_cid_addr, 16U, val);
  val = (u32 )rxr->rx_desc_mapping[0];
  bnx2_ctx_wr(bp, rx_cid_addr, 20U, val);
  prod = rxr->rx_pg_prod;
  ring_prod = prod;
  i = 0;
  }
  goto ldv_53882;
  ldv_53881:
  {
  tmp = bnx2_alloc_rx_page(bp, rxr, (int )ring_prod, 208U);
  }
  if (tmp < 0) {
    {
    netdev_warn((struct net_device const *)bp->dev, "init\'ed rx page ring %d with %d/%d pages only\n",
                ring_num, i, bp->rx_pg_ring_size);
    }
    goto ldv_53880;
  } else {
  }
  prod = ((unsigned long )prod & 254UL) == 254UL ? (unsigned int )prod + 2U : (unsigned int )prod + 1U;
  ring_prod = (int )prod & (int )((u16 )bp->rx_max_pg_ring_idx);
  i = i + 1;
  ldv_53882: ;
  if (i < bp->rx_pg_ring_size) {
    goto ldv_53881;
  } else {
  }
  ldv_53880:
  rxr->rx_pg_prod = prod;
  prod = rxr->rx_prod;
  ring_prod = prod;
  i = 0;
  goto ldv_53885;
  ldv_53884:
  {
  tmp___0 = bnx2_alloc_rx_data(bp, rxr, (int )ring_prod, 208U);
  }
  if (tmp___0 < 0) {
    {
    netdev_warn((struct net_device const *)bp->dev, "init\'ed rx ring %d with %d/%d skbs only\n",
                ring_num, i, bp->rx_ring_size);
    }
    goto ldv_53883;
  } else {
  }
  prod = ((unsigned long )prod & 254UL) == 254UL ? (unsigned int )prod + 2U : (unsigned int )prod + 1U;
  ring_prod = (int )prod & (int )((u16 )bp->rx_max_ring_idx);
  i = i + 1;
  ldv_53885: ;
  if (i < bp->rx_ring_size) {
    goto ldv_53884;
  } else {
  }
  ldv_53883:
  {
  rxr->rx_prod = prod;
  rxr->rx_bidx_addr = (cid << 8) + 65540U;
  rxr->rx_bseq_addr = (cid << 8) + 65544U;
  rxr->rx_pg_bidx_addr = (cid << 8) + 65604U;
  writew((int )rxr->rx_pg_prod, (void volatile *)bp->regview + (unsigned long )rxr->rx_pg_bidx_addr);
  writew((int )prod, (void volatile *)bp->regview + (unsigned long )rxr->rx_bidx_addr);
  writel(rxr->rx_prod_bseq, (void volatile *)bp->regview + (unsigned long )rxr->rx_bseq_addr);
  }
  return;
}
}
static void bnx2_init_all_rings(struct bnx2 *bp )
{
  int i ;
  u32 val ;
  u32 tbl_32 ;
  int shift ;
  {
  {
  bnx2_clear_ring_states(bp);
  writel(0U, (void volatile *)bp->regview + 19484U);
  i = 0;
  }
  goto ldv_53892;
  ldv_53891:
  {
  bnx2_init_tx_ring(bp, i);
  i = i + 1;
  }
  ldv_53892: ;
  if (i < (int )bp->num_tx_rings) {
    goto ldv_53891;
  } else {
  }
  if ((unsigned int )bp->num_tx_rings > 1U) {
    {
    writel((unsigned int )((((int )bp->num_tx_rings + -1) << 24) | 4096), (void volatile *)bp->regview + 19484U);
    }
  } else {
  }
  {
  writel(0U, (void volatile *)bp->regview + 8220U);
  bnx2_reg_wr_ind(bp, 917560U, 0U);
  i = 0;
  }
  goto ldv_53895;
  ldv_53894:
  {
  bnx2_init_rx_ring(bp, i);
  i = i + 1;
  }
  ldv_53895: ;
  if (i < (int )bp->num_rx_rings) {
    goto ldv_53894;
  } else {
  }
  if ((unsigned int )bp->num_rx_rings > 1U) {
    tbl_32 = 0U;
    i = 0;
    goto ldv_53900;
    ldv_53899:
    shift = i % 8 << 2;
    tbl_32 = tbl_32 | (u32 )(i % ((int )bp->num_rx_rings + -1) << shift);
    if (i % 8 == 7) {
      {
      writel(tbl_32, (void volatile *)bp->regview + 8268U);
      writel((unsigned int )((i >> 3) | 122864), (void volatile *)bp->regview + 8264U);
      tbl_32 = 0U;
      }
    } else {
    }
    i = i + 1;
    ldv_53900: ;
    if (i <= 127) {
      goto ldv_53899;
    } else {
    }
    {
    val = 5U;
    writel(val, (void volatile *)bp->regview + 8220U);
    }
  } else {
  }
  return;
}
}
static u32 bnx2_find_max_ring(u32 ring_size , u32 max_size )
{
  u32 max ;
  u32 num_rings ;
  {
  num_rings = 1U;
  goto ldv_53909;
  ldv_53908:
  ring_size = ring_size - 255U;
  num_rings = num_rings + 1U;
  ldv_53909: ;
  if (ring_size > 255U) {
    goto ldv_53908;
  } else {
  }
  max = max_size;
  goto ldv_53912;
  ldv_53911:
  max = max >> 1;
  ldv_53912: ;
  if ((max & num_rings) == 0U) {
    goto ldv_53911;
  } else {
  }
  if (num_rings != max) {
    max = max << 1;
  } else {
  }
  return (max);
}
}
static void bnx2_set_rx_ring_size(struct bnx2 *bp , u32 size )
{
  u32 rx_size ;
  u32 rx_space ;
  u32 jumbo_size ;
  int _max1 ;
  int _max2 ;
  int pages ;
  u32 tmp ;
  int _max1___0 ;
  int _max2___0 ;
  u32 tmp___0 ;
  {
  rx_size = (bp->dev)->mtu + 40U;
  _max1 = 32;
  _max2 = 64;
  rx_space = (((rx_size + 79U) & 4294967232U) + (u32 )(_max1 > _max2 ? _max1 : _max2)) + 320U;
  bp->rx_copy_thresh = 128U;
  bp->rx_pg_ring_size = 0;
  bp->rx_max_pg_ring = 0;
  bp->rx_max_pg_ring_idx = 0U;
  if (rx_space > 4096U && (bp->flags & 2048U) == 0U) {
    pages = (int )(((bp->dev)->mtu + 4055U) >> 12);
    jumbo_size = size * (u32 )pages;
    if (jumbo_size > 8160U) {
      jumbo_size = 8160U;
    } else {
    }
    {
    bp->rx_pg_ring_size = (int )jumbo_size;
    tmp = bnx2_find_max_ring(jumbo_size, 32U);
    bp->rx_max_pg_ring = (int )tmp;
    bp->rx_max_pg_ring_idx = (u32 )((unsigned long )bp->rx_max_pg_ring) * 256U - 1U;
    rx_size = 146U;
    bp->rx_copy_thresh = 0U;
    }
  } else {
  }
  {
  bp->rx_buf_use_size = rx_size;
  _max1___0 = 32;
  _max2___0 = 64;
  bp->rx_buf_size = (((bp->rx_buf_use_size + 79U) & 4294967232U) + (u32 )(_max1___0 > _max2___0 ? _max1___0 : _max2___0)) + 320U;
  bp->rx_jumbo_thresh = rx_size - 18U;
  bp->rx_ring_size = (int )size;
  tmp___0 = bnx2_find_max_ring(size, 8U);
  bp->rx_max_ring = (int )tmp___0;
  bp->rx_max_ring_idx = (u32 )((unsigned long )bp->rx_max_ring) * 256U - 1U;
  }
  return;
}
}
static void bnx2_free_tx_skbs(struct bnx2 *bp )
{
  int i ;
  struct bnx2_napi *bnapi ;
  struct bnx2_tx_ring_info *txr ;
  int j ;
  struct bnx2_sw_tx_bd *tx_buf ;
  struct sk_buff *skb ;
  int k ;
  int last ;
  unsigned int tmp ;
  unsigned char *tmp___0 ;
  unsigned int tmp___1 ;
  struct netdev_queue *tmp___2 ;
  {
  i = 0;
  goto ldv_53947;
  ldv_53946:
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi) + (unsigned long )i;
  txr = & bnapi->tx_ring;
  if ((unsigned long )txr->tx_buf_ring == (unsigned long )((struct bnx2_sw_tx_bd *)0)) {
    goto ldv_53935;
  } else {
  }
  j = 0;
  goto ldv_53940;
  ldv_53944:
  tx_buf = txr->tx_buf_ring + (unsigned long )j;
  skb = tx_buf->skb;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    j = ((unsigned long )j & 254UL) == 254UL ? j + 2 : j + 1;
    goto ldv_53940;
  } else {
  }
  {
  tmp = skb_headlen((struct sk_buff const *)skb);
  dma_unmap_single_attrs(& (bp->pdev)->dev, tx_buf->mapping, (size_t )tmp, 1, (struct dma_attrs *)0);
  tx_buf->skb = (struct sk_buff *)0;
  last = (int )tx_buf->nr_frags;
  j = ((unsigned long )j & 254UL) == 254UL ? j + 2 : j + 1;
  k = 0;
  }
  goto ldv_53942;
  ldv_53941:
  {
  tx_buf = txr->tx_buf_ring + ((unsigned long )j & 255UL);
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  tmp___1 = skb_frag_size((skb_frag_t const *)(& ((struct skb_shared_info *)tmp___0)->frags) + (unsigned long )k);
  dma_unmap_page(& (bp->pdev)->dev, tx_buf->mapping, (size_t )tmp___1, 1);
  k = k + 1;
  j = ((unsigned long )j & 254UL) == 254UL ? j + 2 : j + 1;
  }
  ldv_53942: ;
  if (k < last) {
    goto ldv_53941;
  } else {
  }
  {
  consume_skb(skb);
  }
  ldv_53940: ;
  if ((unsigned int )j <= 255U) {
    goto ldv_53944;
  } else {
  }
  {
  tmp___2 = netdev_get_tx_queue((struct net_device const *)bp->dev, (unsigned int )i);
  netdev_tx_reset_queue(tmp___2);
  }
  ldv_53935:
  i = i + 1;
  ldv_53947: ;
  if (i < (int )bp->num_tx_rings) {
    goto ldv_53946;
  } else {
  }
  return;
}
}
static void bnx2_free_rx_skbs(struct bnx2 *bp )
{
  int i ;
  struct bnx2_napi *bnapi ;
  struct bnx2_rx_ring_info *rxr ;
  int j ;
  struct bnx2_sw_bd *rx_buf ;
  u8 *data ;
  {
  i = 0;
  goto ldv_53966;
  ldv_53965:
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi) + (unsigned long )i;
  rxr = & bnapi->rx_ring;
  if ((unsigned long )rxr->rx_buf_ring == (unsigned long )((struct bnx2_sw_bd *)0)) {
    return;
  } else {
  }
  j = 0;
  goto ldv_53960;
  ldv_53959:
  rx_buf = rxr->rx_buf_ring + (unsigned long )j;
  data = rx_buf->data;
  if ((unsigned long )data == (unsigned long )((u8 *)0U)) {
    goto ldv_53958;
  } else {
  }
  {
  dma_unmap_single_attrs(& (bp->pdev)->dev, rx_buf->mapping, (size_t )bp->rx_buf_use_size,
                         2, (struct dma_attrs *)0);
  rx_buf->data = (u8 *)0U;
  kfree((void const *)data);
  }
  ldv_53958:
  j = j + 1;
  ldv_53960: ;
  if ((u32 )j < bp->rx_max_ring_idx) {
    goto ldv_53959;
  } else {
  }
  j = 0;
  goto ldv_53963;
  ldv_53962:
  {
  bnx2_free_rx_page(bp, rxr, (int )((u16 )j));
  j = j + 1;
  }
  ldv_53963: ;
  if ((u32 )j < bp->rx_max_pg_ring_idx) {
    goto ldv_53962;
  } else {
  }
  i = i + 1;
  ldv_53966: ;
  if (i < (int )bp->num_rx_rings) {
    goto ldv_53965;
  } else {
  }
  return;
}
}
static void bnx2_free_skbs(struct bnx2 *bp )
{
  {
  {
  bnx2_free_tx_skbs(bp);
  bnx2_free_rx_skbs(bp);
  }
  return;
}
}
static int bnx2_reset_nic(struct bnx2 *bp , u32 reset_code )
{
  int rc ;
  {
  {
  rc = bnx2_reset_chip(bp, reset_code);
  bnx2_free_skbs(bp);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  rc = bnx2_init_chip(bp);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  bnx2_init_all_rings(bp);
  }
  return (0);
}
}
static int bnx2_init_nic(struct bnx2 *bp , int reset_phy )
{
  int rc ;
  {
  {
  rc = bnx2_reset_nic(bp, 16777216U);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  spin_lock_bh(& bp->phy_lock);
  bnx2_init_phy(bp, reset_phy);
  bnx2_set_link(bp);
  }
  if ((bp->phy_flags & 2048U) != 0U) {
    {
    bnx2_remote_phy_event(bp);
    }
  } else {
  }
  {
  spin_unlock_bh(& bp->phy_lock);
  }
  return (0);
}
}
static int bnx2_shutdown_chip(struct bnx2 *bp )
{
  u32 reset_code ;
  int tmp ;
  {
  if ((bp->flags & 8U) != 0U) {
    reset_code = 184549376U;
  } else
  if ((unsigned int )bp->wol != 0U) {
    reset_code = 67108864U;
  } else {
    reset_code = 150994944U;
  }
  {
  tmp = bnx2_reset_chip(bp, reset_code);
  }
  return (tmp);
}
}
static int bnx2_test_registers(struct bnx2 *bp )
{
  int ret ;
  int i ;
  int is_5709 ;
  struct __anonstruct_reg_tbl_292 reg_tbl[93U] ;
  u32 offset ;
  u32 rw_mask ;
  u32 ro_mask ;
  u32 save_val ;
  u32 val ;
  u16 flags ;
  {
  reg_tbl[0].offset = 108U;
  reg_tbl[0].flags = 0U;
  reg_tbl[0].rw_mask = 0U;
  reg_tbl[0].ro_mask = 63U;
  reg_tbl[1].offset = 144U;
  reg_tbl[1].flags = 0U;
  reg_tbl[1].rw_mask = 4294967295U;
  reg_tbl[1].ro_mask = 0U;
  reg_tbl[2].offset = 148U;
  reg_tbl[2].flags = 0U;
  reg_tbl[2].rw_mask = 0U;
  reg_tbl[2].ro_mask = 0U;
  reg_tbl[3].offset = 1028U;
  reg_tbl[3].flags = 1U;
  reg_tbl[3].rw_mask = 16128U;
  reg_tbl[3].ro_mask = 0U;
  reg_tbl[4].offset = 1048U;
  reg_tbl[4].flags = 1U;
  reg_tbl[4].rw_mask = 0U;
  reg_tbl[4].ro_mask = 4294967295U;
  reg_tbl[5].offset = 1052U;
  reg_tbl[5].flags = 1U;
  reg_tbl[5].rw_mask = 0U;
  reg_tbl[5].ro_mask = 4294967295U;
  reg_tbl[6].offset = 1056U;
  reg_tbl[6].flags = 1U;
  reg_tbl[6].rw_mask = 0U;
  reg_tbl[6].ro_mask = 2164260863U;
  reg_tbl[7].offset = 1060U;
  reg_tbl[7].flags = 1U;
  reg_tbl[7].rw_mask = 0U;
  reg_tbl[7].ro_mask = 0U;
  reg_tbl[8].offset = 1064U;
  reg_tbl[8].flags = 1U;
  reg_tbl[8].rw_mask = 0U;
  reg_tbl[8].ro_mask = 1U;
  reg_tbl[9].offset = 1104U;
  reg_tbl[9].flags = 1U;
  reg_tbl[9].rw_mask = 0U;
  reg_tbl[9].ro_mask = 65535U;
  reg_tbl[10].offset = 1108U;
  reg_tbl[10].flags = 1U;
  reg_tbl[10].rw_mask = 0U;
  reg_tbl[10].ro_mask = 4294967295U;
  reg_tbl[11].offset = 1112U;
  reg_tbl[11].flags = 1U;
  reg_tbl[11].rw_mask = 0U;
  reg_tbl[11].ro_mask = 4294967295U;
  reg_tbl[12].offset = 2056U;
  reg_tbl[12].flags = 1U;
  reg_tbl[12].rw_mask = 0U;
  reg_tbl[12].ro_mask = 4294967295U;
  reg_tbl[13].offset = 2132U;
  reg_tbl[13].flags = 1U;
  reg_tbl[13].rw_mask = 0U;
  reg_tbl[13].ro_mask = 4294967295U;
  reg_tbl[14].offset = 2152U;
  reg_tbl[14].flags = 1U;
  reg_tbl[14].rw_mask = 0U;
  reg_tbl[14].ro_mask = 2004318071U;
  reg_tbl[15].offset = 2156U;
  reg_tbl[15].flags = 1U;
  reg_tbl[15].rw_mask = 0U;
  reg_tbl[15].ro_mask = 2004318071U;
  reg_tbl[16].offset = 2160U;
  reg_tbl[16].flags = 1U;
  reg_tbl[16].rw_mask = 0U;
  reg_tbl[16].ro_mask = 2004318071U;
  reg_tbl[17].offset = 2164U;
  reg_tbl[17].flags = 1U;
  reg_tbl[17].rw_mask = 0U;
  reg_tbl[17].ro_mask = 2004318071U;
  reg_tbl[18].offset = 3072U;
  reg_tbl[18].flags = 1U;
  reg_tbl[18].rw_mask = 0U;
  reg_tbl[18].ro_mask = 1U;
  reg_tbl[19].offset = 3076U;
  reg_tbl[19].flags = 1U;
  reg_tbl[19].rw_mask = 0U;
  reg_tbl[19].ro_mask = 67043329U;
  reg_tbl[20].offset = 3080U;
  reg_tbl[20].flags = 1U;
  reg_tbl[20].rw_mask = 252702835U;
  reg_tbl[20].ro_mask = 0U;
  reg_tbl[21].offset = 4096U;
  reg_tbl[21].flags = 0U;
  reg_tbl[21].rw_mask = 0U;
  reg_tbl[21].ro_mask = 1U;
  reg_tbl[22].offset = 4100U;
  reg_tbl[22].flags = 1U;
  reg_tbl[22].rw_mask = 0U;
  reg_tbl[22].ro_mask = 983041U;
  reg_tbl[23].offset = 5128U;
  reg_tbl[23].flags = 0U;
  reg_tbl[23].rw_mask = 29362176U;
  reg_tbl[23].ro_mask = 0U;
  reg_tbl[24].offset = 5276U;
  reg_tbl[24].flags = 0U;
  reg_tbl[24].rw_mask = 2147549183U;
  reg_tbl[24].ro_mask = 0U;
  reg_tbl[25].offset = 5288U;
  reg_tbl[25].flags = 0U;
  reg_tbl[25].rw_mask = 0U;
  reg_tbl[25].ro_mask = 511U;
  reg_tbl[26].offset = 5292U;
  reg_tbl[26].flags = 0U;
  reg_tbl[26].rw_mask = 268435455U;
  reg_tbl[26].ro_mask = 268435456U;
  reg_tbl[27].offset = 5296U;
  reg_tbl[27].flags = 0U;
  reg_tbl[27].rw_mask = 2U;
  reg_tbl[27].ro_mask = 1U;
  reg_tbl[28].offset = 5304U;
  reg_tbl[28].flags = 0U;
  reg_tbl[28].rw_mask = 0U;
  reg_tbl[28].ro_mask = 0U;
  reg_tbl[29].offset = 5312U;
  reg_tbl[29].flags = 0U;
  reg_tbl[29].rw_mask = 0U;
  reg_tbl[29].ro_mask = 9U;
  reg_tbl[30].offset = 5316U;
  reg_tbl[30].flags = 0U;
  reg_tbl[30].rw_mask = 16383U;
  reg_tbl[30].ro_mask = 0U;
  reg_tbl[31].offset = 5324U;
  reg_tbl[31].flags = 0U;
  reg_tbl[31].rw_mask = 0U;
  reg_tbl[31].ro_mask = 1U;
  reg_tbl[32].offset = 5328U;
  reg_tbl[32].flags = 0U;
  reg_tbl[32].rw_mask = 4294967295U;
  reg_tbl[32].ro_mask = 0U;
  reg_tbl[33].offset = 6144U;
  reg_tbl[33].flags = 0U;
  reg_tbl[33].rw_mask = 0U;
  reg_tbl[33].ro_mask = 1U;
  reg_tbl[34].offset = 6148U;
  reg_tbl[34].flags = 0U;
  reg_tbl[34].rw_mask = 0U;
  reg_tbl[34].ro_mask = 3U;
  reg_tbl[35].offset = 10240U;
  reg_tbl[35].flags = 0U;
  reg_tbl[35].rw_mask = 0U;
  reg_tbl[35].ro_mask = 1U;
  reg_tbl[36].offset = 10244U;
  reg_tbl[36].flags = 0U;
  reg_tbl[36].rw_mask = 0U;
  reg_tbl[36].ro_mask = 16129U;
  reg_tbl[37].offset = 10248U;
  reg_tbl[37].flags = 0U;
  reg_tbl[37].rw_mask = 255803139U;
  reg_tbl[37].ro_mask = 0U;
  reg_tbl[38].offset = 10256U;
  reg_tbl[38].flags = 0U;
  reg_tbl[38].rw_mask = 4294901760U;
  reg_tbl[38].ro_mask = 0U;
  reg_tbl[39].offset = 10260U;
  reg_tbl[39].flags = 0U;
  reg_tbl[39].rw_mask = 4294901760U;
  reg_tbl[39].ro_mask = 0U;
  reg_tbl[40].offset = 10264U;
  reg_tbl[40].flags = 0U;
  reg_tbl[40].rw_mask = 4294901760U;
  reg_tbl[40].ro_mask = 0U;
  reg_tbl[41].offset = 10268U;
  reg_tbl[41].flags = 0U;
  reg_tbl[41].rw_mask = 4294901760U;
  reg_tbl[41].ro_mask = 0U;
  reg_tbl[42].offset = 10292U;
  reg_tbl[42].flags = 0U;
  reg_tbl[42].rw_mask = 4294967295U;
  reg_tbl[42].ro_mask = 0U;
  reg_tbl[43].offset = 10304U;
  reg_tbl[43].flags = 0U;
  reg_tbl[43].rw_mask = 0U;
  reg_tbl[43].ro_mask = 4294967295U;
  reg_tbl[44].offset = 10308U;
  reg_tbl[44].flags = 0U;
  reg_tbl[44].rw_mask = 0U;
  reg_tbl[44].ro_mask = 4294967295U;
  reg_tbl[45].offset = 10312U;
  reg_tbl[45].flags = 0U;
  reg_tbl[45].rw_mask = 4294967295U;
  reg_tbl[45].ro_mask = 0U;
  reg_tbl[46].offset = 10316U;
  reg_tbl[46].flags = 0U;
  reg_tbl[46].rw_mask = 4160813056U;
  reg_tbl[46].ro_mask = 134154239U;
  reg_tbl[47].offset = 11264U;
  reg_tbl[47].flags = 0U;
  reg_tbl[47].rw_mask = 0U;
  reg_tbl[47].ro_mask = 17U;
  reg_tbl[48].offset = 11268U;
  reg_tbl[48].flags = 0U;
  reg_tbl[48].rw_mask = 0U;
  reg_tbl[48].ro_mask = 196615U;
  reg_tbl[49].offset = 15360U;
  reg_tbl[49].flags = 0U;
  reg_tbl[49].rw_mask = 0U;
  reg_tbl[49].ro_mask = 1U;
  reg_tbl[50].offset = 15364U;
  reg_tbl[50].flags = 0U;
  reg_tbl[50].rw_mask = 0U;
  reg_tbl[50].ro_mask = 458752U;
  reg_tbl[51].offset = 15368U;
  reg_tbl[51].flags = 0U;
  reg_tbl[51].rw_mask = 32625U;
  reg_tbl[51].ro_mask = 133169152U;
  reg_tbl[52].offset = 15372U;
  reg_tbl[52].flags = 0U;
  reg_tbl[52].rw_mask = 524287996U;
  reg_tbl[52].ro_mask = 0U;
  reg_tbl[53].offset = 15376U;
  reg_tbl[53].flags = 0U;
  reg_tbl[53].rw_mask = 4294967295U;
  reg_tbl[53].ro_mask = 0U;
  reg_tbl[54].offset = 15380U;
  reg_tbl[54].flags = 0U;
  reg_tbl[54].rw_mask = 0U;
  reg_tbl[54].ro_mask = 4294967295U;
  reg_tbl[55].offset = 15384U;
  reg_tbl[55].flags = 0U;
  reg_tbl[55].rw_mask = 0U;
  reg_tbl[55].ro_mask = 4294967295U;
  reg_tbl[56].offset = 15388U;
  reg_tbl[56].flags = 0U;
  reg_tbl[56].rw_mask = 4294963200U;
  reg_tbl[56].ro_mask = 0U;
  reg_tbl[57].offset = 15392U;
  reg_tbl[57].flags = 0U;
  reg_tbl[57].rw_mask = 4294967040U;
  reg_tbl[57].ro_mask = 0U;
  reg_tbl[58].offset = 20484U;
  reg_tbl[58].flags = 0U;
  reg_tbl[58].rw_mask = 0U;
  reg_tbl[58].ro_mask = 127U;
  reg_tbl[59].offset = 20488U;
  reg_tbl[59].flags = 0U;
  reg_tbl[59].rw_mask = 251660287U;
  reg_tbl[59].ro_mask = 0U;
  reg_tbl[60].offset = 23552U;
  reg_tbl[60].flags = 0U;
  reg_tbl[60].rw_mask = 0U;
  reg_tbl[60].ro_mask = 1U;
  reg_tbl[61].offset = 23556U;
  reg_tbl[61].flags = 0U;
  reg_tbl[61].rw_mask = 0U;
  reg_tbl[61].ro_mask = 196623U;
  reg_tbl[62].offset = 23560U;
  reg_tbl[62].flags = 0U;
  reg_tbl[62].rw_mask = 3U;
  reg_tbl[62].ro_mask = 0U;
  reg_tbl[63].offset = 23564U;
  reg_tbl[63].flags = 0U;
  reg_tbl[63].rw_mask = 65528U;
  reg_tbl[63].ro_mask = 0U;
  reg_tbl[64].offset = 23568U;
  reg_tbl[64].flags = 0U;
  reg_tbl[64].rw_mask = 0U;
  reg_tbl[64].ro_mask = 4294967295U;
  reg_tbl[65].offset = 23680U;
  reg_tbl[65].flags = 0U;
  reg_tbl[65].rw_mask = 0U;
  reg_tbl[65].ro_mask = 259068913U;
  reg_tbl[66].offset = 23684U;
  reg_tbl[66].flags = 0U;
  reg_tbl[66].rw_mask = 0U;
  reg_tbl[66].ro_mask = 62259U;
  reg_tbl[67].offset = 23688U;
  reg_tbl[67].flags = 0U;
  reg_tbl[67].rw_mask = 0U;
  reg_tbl[67].ro_mask = 488307U;
  reg_tbl[68].offset = 23692U;
  reg_tbl[68].flags = 0U;
  reg_tbl[68].rw_mask = 0U;
  reg_tbl[68].ro_mask = 522039U;
  reg_tbl[69].offset = 26632U;
  reg_tbl[69].flags = 0U;
  reg_tbl[69].rw_mask = 65407U;
  reg_tbl[69].ro_mask = 0U;
  reg_tbl[70].offset = 26636U;
  reg_tbl[70].flags = 0U;
  reg_tbl[70].rw_mask = 4294967295U;
  reg_tbl[70].ro_mask = 0U;
  reg_tbl[71].offset = 26640U;
  reg_tbl[71].flags = 0U;
  reg_tbl[71].rw_mask = 4294967295U;
  reg_tbl[71].ro_mask = 0U;
  reg_tbl[72].offset = 26644U;
  reg_tbl[72].flags = 0U;
  reg_tbl[72].rw_mask = 4294967295U;
  reg_tbl[72].ro_mask = 0U;
  reg_tbl[73].offset = 26648U;
  reg_tbl[73].flags = 0U;
  reg_tbl[73].rw_mask = 4294967295U;
  reg_tbl[73].ro_mask = 0U;
  reg_tbl[74].offset = 26652U;
  reg_tbl[74].flags = 0U;
  reg_tbl[74].rw_mask = 4294967295U;
  reg_tbl[74].ro_mask = 0U;
  reg_tbl[75].offset = 26656U;
  reg_tbl[75].flags = 0U;
  reg_tbl[75].rw_mask = 16711935U;
  reg_tbl[75].ro_mask = 0U;
  reg_tbl[76].offset = 26660U;
  reg_tbl[76].flags = 0U;
  reg_tbl[76].rw_mask = 16711935U;
  reg_tbl[76].ro_mask = 0U;
  reg_tbl[77].offset = 26664U;
  reg_tbl[77].flags = 0U;
  reg_tbl[77].rw_mask = 16711935U;
  reg_tbl[77].ro_mask = 0U;
  reg_tbl[78].offset = 26668U;
  reg_tbl[78].flags = 0U;
  reg_tbl[78].rw_mask = 67044351U;
  reg_tbl[78].ro_mask = 0U;
  reg_tbl[79].offset = 26672U;
  reg_tbl[79].flags = 0U;
  reg_tbl[79].rw_mask = 67044351U;
  reg_tbl[79].ro_mask = 0U;
  reg_tbl[80].offset = 26676U;
  reg_tbl[80].flags = 0U;
  reg_tbl[80].rw_mask = 67044351U;
  reg_tbl[80].ro_mask = 0U;
  reg_tbl[81].offset = 26680U;
  reg_tbl[81].flags = 0U;
  reg_tbl[81].rw_mask = 67044351U;
  reg_tbl[81].ro_mask = 0U;
  reg_tbl[82].offset = 26684U;
  reg_tbl[82].flags = 0U;
  reg_tbl[82].rw_mask = 65535U;
  reg_tbl[82].ro_mask = 0U;
  reg_tbl[83].offset = 26688U;
  reg_tbl[83].flags = 0U;
  reg_tbl[83].rw_mask = 4080U;
  reg_tbl[83].ro_mask = 0U;
  reg_tbl[84].offset = 26692U;
  reg_tbl[84].flags = 0U;
  reg_tbl[84].rw_mask = 16776960U;
  reg_tbl[84].ro_mask = 0U;
  reg_tbl[85].offset = 26700U;
  reg_tbl[85].flags = 0U;
  reg_tbl[85].rw_mask = 4294967295U;
  reg_tbl[85].ro_mask = 0U;
  reg_tbl[86].offset = 26704U;
  reg_tbl[86].flags = 0U;
  reg_tbl[86].rw_mask = 2139062143U;
  reg_tbl[86].ro_mask = 0U;
  reg_tbl[87].offset = 26708U;
  reg_tbl[87].flags = 0U;
  reg_tbl[87].rw_mask = 2139062143U;
  reg_tbl[87].ro_mask = 0U;
  reg_tbl[88].offset = 26712U;
  reg_tbl[88].flags = 0U;
  reg_tbl[88].rw_mask = 2139062143U;
  reg_tbl[88].ro_mask = 0U;
  reg_tbl[89].offset = 26716U;
  reg_tbl[89].flags = 0U;
  reg_tbl[89].rw_mask = 2139062143U;
  reg_tbl[89].ro_mask = 0U;
  reg_tbl[90].offset = 26888U;
  reg_tbl[90].flags = 0U;
  reg_tbl[90].rw_mask = 0U;
  reg_tbl[90].ro_mask = 130831U;
  reg_tbl[91].offset = 26892U;
  reg_tbl[91].flags = 0U;
  reg_tbl[91].rw_mask = 0U;
  reg_tbl[91].ro_mask = 268304624U;
  reg_tbl[92].offset = 65535U;
  reg_tbl[92].flags = 0U;
  reg_tbl[92].rw_mask = 0U;
  reg_tbl[92].ro_mask = 0U;
  ret = 0;
  is_5709 = 0;
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    is_5709 = 1;
  } else {
  }
  i = 0;
  goto ldv_54007;
  ldv_54006:
  flags = reg_tbl[i].flags;
  if (is_5709 != 0 && (int )flags & 1) {
    goto ldv_54003;
  } else {
  }
  {
  offset = (unsigned int )reg_tbl[i].offset;
  rw_mask = reg_tbl[i].rw_mask;
  ro_mask = reg_tbl[i].ro_mask;
  save_val = readl((void const volatile *)bp->regview + (unsigned long )offset);
  writel(0U, (void volatile *)bp->regview + (unsigned long )offset);
  val = readl((void const volatile *)bp->regview + (unsigned long )offset);
  }
  if ((val & rw_mask) != 0U) {
    goto reg_test_err;
  } else {
  }
  if (((val ^ save_val) & ro_mask) != 0U) {
    goto reg_test_err;
  } else {
  }
  {
  writel(4294967295U, (void volatile *)bp->regview + (unsigned long )offset);
  val = readl((void const volatile *)bp->regview + (unsigned long )offset);
  }
  if ((val & rw_mask) != rw_mask) {
    goto reg_test_err;
  } else {
  }
  if (((val ^ save_val) & ro_mask) != 0U) {
    goto reg_test_err;
  } else {
  }
  {
  writel(save_val, (void volatile *)bp->regview + (unsigned long )offset);
  }
  goto ldv_54003;
  reg_test_err:
  {
  writel(save_val, (void volatile *)bp->regview + (unsigned long )offset);
  ret = -19;
  }
  goto ldv_54005;
  ldv_54003:
  i = i + 1;
  ldv_54007: ;
  if ((unsigned int )reg_tbl[i].offset != 65535U) {
    goto ldv_54006;
  } else {
  }
  ldv_54005: ;
  return (ret);
}
}
static int bnx2_do_mem_test(struct bnx2 *bp , u32 start , u32 size )
{
  u32 test_pattern[6U] ;
  int i ;
  u32 offset ;
  u32 tmp ;
  {
  test_pattern[0] = 0U;
  test_pattern[1] = 4294967295U;
  test_pattern[2] = 1431655765U;
  test_pattern[3] = 2863311530U;
  test_pattern[4] = 2857740885U;
  test_pattern[5] = 1437226410U;
  i = 0;
  goto ldv_54020;
  ldv_54019:
  offset = 0U;
  goto ldv_54017;
  ldv_54016:
  {
  bnx2_reg_wr_ind(bp, start + offset, test_pattern[i]);
  tmp = bnx2_reg_rd_ind(bp, start + offset);
  }
  if (tmp != test_pattern[i]) {
    return (-19);
  } else {
  }
  offset = offset + 4U;
  ldv_54017: ;
  if (offset < size) {
    goto ldv_54016;
  } else {
  }
  i = i + 1;
  ldv_54020: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_54019;
  } else {
  }
  return (0);
}
}
static int bnx2_test_memory(struct bnx2 *bp )
{
  int ret ;
  int i ;
  struct mem_entry mem_tbl_5706[7U] ;
  struct mem_entry mem_tbl_5709[6U] ;
  struct mem_entry *mem_tbl ;
  {
  ret = 0;
  mem_tbl_5706[0].offset = 393216U;
  mem_tbl_5706[0].len = 16384U;
  mem_tbl_5706[1].offset = 655360U;
  mem_tbl_5706[1].len = 12288U;
  mem_tbl_5706[2].offset = 917504U;
  mem_tbl_5706[2].len = 16384U;
  mem_tbl_5706[3].offset = 1179648U;
  mem_tbl_5706[3].len = 16384U;
  mem_tbl_5706[4].offset = 1703936U;
  mem_tbl_5706[4].len = 16384U;
  mem_tbl_5706[5].offset = 1441792U;
  mem_tbl_5706[5].len = 16384U;
  mem_tbl_5706[6].offset = 4294967295U;
  mem_tbl_5706[6].len = 0U;
  mem_tbl_5709[0].offset = 393216U;
  mem_tbl_5709[0].len = 16384U;
  mem_tbl_5709[1].offset = 655360U;
  mem_tbl_5709[1].len = 12288U;
  mem_tbl_5709[2].offset = 917504U;
  mem_tbl_5709[2].len = 16384U;
  mem_tbl_5709[3].offset = 1179648U;
  mem_tbl_5709[3].len = 16384U;
  mem_tbl_5709[4].offset = 1703936U;
  mem_tbl_5709[4].len = 16384U;
  mem_tbl_5709[5].offset = 4294967295U;
  mem_tbl_5709[5].len = 0U;
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    mem_tbl = (struct mem_entry *)(& mem_tbl_5709);
  } else {
    mem_tbl = (struct mem_entry *)(& mem_tbl_5706);
  }
  i = 0;
  goto ldv_54034;
  ldv_54033:
  {
  ret = bnx2_do_mem_test(bp, (mem_tbl + (unsigned long )i)->offset, (mem_tbl + (unsigned long )i)->len);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  i = i + 1;
  ldv_54034: ;
  if ((mem_tbl + (unsigned long )i)->offset != 4294967295U) {
    goto ldv_54033;
  } else {
  }
  return (ret);
}
}
static int bnx2_run_loopback(struct bnx2 *bp , int loopback_mode )
{
  unsigned int pkt_size ;
  unsigned int num_pkts ;
  unsigned int i ;
  struct sk_buff *skb ;
  u8 *data ;
  unsigned char *packet ;
  u16 rx_start_idx ;
  u16 rx_idx ;
  dma_addr_t map ;
  struct bnx2_tx_bd *txbd ;
  struct bnx2_sw_bd *rx_buf ;
  struct l2_fhdr *rx_hdr ;
  int ret ;
  struct bnx2_napi *bnapi ;
  struct bnx2_napi *tx_napi ;
  struct bnx2_tx_ring_info *txr ;
  struct bnx2_rx_ring_info *rxr ;
  unsigned int _min1 ;
  u32 _min2 ;
  int tmp ;
  u16 tmp___0 ;
  {
  ret = -19;
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi);
  txr = & bnapi->tx_ring;
  rxr = & bnapi->rx_ring;
  tx_napi = bnapi;
  txr = & tx_napi->tx_ring;
  rxr = & bnapi->rx_ring;
  if (loopback_mode == 0) {
    {
    bp->loopback = 1U;
    bnx2_set_mac_loopback(bp);
    }
  } else
  if (loopback_mode == 1) {
    if ((bp->phy_flags & 2048U) != 0U) {
      return (0);
    } else {
    }
    {
    bp->loopback = 2U;
    bnx2_set_phy_loopback(bp);
    }
  } else {
    return (-22);
  }
  {
  _min1 = (bp->dev)->mtu + 14U;
  _min2 = bp->rx_jumbo_thresh - 4U;
  pkt_size = _min1 < _min2 ? _min1 : _min2;
  skb = netdev_alloc_skb(bp->dev, pkt_size);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  {
  packet = skb_put(skb, pkt_size);
  memcpy((void *)packet, (void const *)(bp->dev)->dev_addr, 6UL);
  memset((void *)packet + 6U, 0, 8UL);
  i = 14U;
  }
  goto ldv_54061;
  ldv_54060:
  *(packet + (unsigned long )i) = (unsigned char )i;
  i = i + 1U;
  ldv_54061: ;
  if (i < pkt_size) {
    goto ldv_54060;
  } else {
  }
  {
  map = dma_map_single_attrs(& (bp->pdev)->dev, (void *)skb->data, (size_t )pkt_size,
                             1, (struct dma_attrs *)0);
  tmp = dma_mapping_error(& (bp->pdev)->dev, map);
  }
  if (tmp != 0) {
    {
    consume_skb(skb);
    }
    return (-5);
  } else {
  }
  {
  writel(bp->hc_cmd | 131072U, (void volatile *)bp->regview + 26624U);
  readl((void const volatile *)bp->regview + 26624U);
  __const_udelay(21475UL);
  rx_start_idx = bnx2_get_hw_rx_cons(bnapi);
  num_pkts = 0U;
  txbd = txr->tx_desc_ring + ((unsigned long )txr->tx_prod & 255UL);
  txbd->tx_bd_haddr_hi = (u32 )(map >> 32);
  txbd->tx_bd_haddr_lo = (u32 )map;
  txbd->tx_bd_mss_nbytes = pkt_size;
  txbd->tx_bd_vlan_tag_flags = 192U;
  num_pkts = num_pkts + 1U;
  txr->tx_prod = ((unsigned long )txr->tx_prod & 254UL) == 254UL ? (unsigned int )txr->tx_prod + 2U : (unsigned int )txr->tx_prod + 1U;
  txr->tx_prod_bseq = txr->tx_prod_bseq + pkt_size;
  writew((int )txr->tx_prod, (void volatile *)bp->regview + (unsigned long )txr->tx_bidx_addr);
  writel(txr->tx_prod_bseq, (void volatile *)bp->regview + (unsigned long )txr->tx_bseq_addr);
  __const_udelay(429500UL);
  writel(bp->hc_cmd | 131072U, (void volatile *)bp->regview + 26624U);
  readl((void const volatile *)bp->regview + 26624U);
  __const_udelay(21475UL);
  dma_unmap_single_attrs(& (bp->pdev)->dev, map, (size_t )pkt_size, 1, (struct dma_attrs *)0);
  consume_skb(skb);
  tmp___0 = bnx2_get_hw_tx_cons(tx_napi);
  }
  if ((int )tmp___0 != (int )txr->tx_prod) {
    goto loopback_test_done;
  } else {
  }
  {
  rx_idx = bnx2_get_hw_rx_cons(bnapi);
  }
  if ((unsigned int )rx_idx != (unsigned int )rx_start_idx + num_pkts) {
    goto loopback_test_done;
  } else {
  }
  {
  rx_buf = rxr->rx_buf_ring + (unsigned long )rx_start_idx;
  data = rx_buf->data;
  rx_hdr = get_l2_fhdr(data);
  data = (u8 *)rx_hdr + 18UL;
  dma_sync_single_for_cpu(& (bp->pdev)->dev, rx_buf->mapping, (size_t )bp->rx_buf_use_size,
                          2);
  }
  if ((rx_hdr->l2_fhdr_status & 4063232U) != 0U) {
    goto loopback_test_done;
  } else {
  }
  if ((unsigned int )((int )rx_hdr->l2_fhdr_pkt_len + -4) != pkt_size) {
    goto loopback_test_done;
  } else {
  }
  i = 14U;
  goto ldv_54065;
  ldv_54064: ;
  if ((int )*(data + (unsigned long )i) != (int )((unsigned char )i)) {
    goto loopback_test_done;
  } else {
  }
  i = i + 1U;
  ldv_54065: ;
  if (i < pkt_size) {
    goto ldv_54064;
  } else {
  }
  ret = 0;
  loopback_test_done:
  bp->loopback = 0U;
  return (ret);
}
}
static int bnx2_test_loopback(struct bnx2 *bp )
{
  int rc ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  rc = 0;
  tmp = netif_running((struct net_device const *)bp->dev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (3);
  } else {
  }
  {
  bnx2_reset_nic(bp, 16777216U);
  spin_lock_bh(& bp->phy_lock);
  bnx2_init_phy(bp, 1);
  spin_unlock_bh(& bp->phy_lock);
  tmp___1 = bnx2_run_loopback(bp, 0);
  }
  if (tmp___1 != 0) {
    rc = rc | 1;
  } else {
  }
  {
  tmp___2 = bnx2_run_loopback(bp, 1);
  }
  if (tmp___2 != 0) {
    rc = rc | 2;
  } else {
  }
  return (rc);
}
}
static int bnx2_test_nvram(struct bnx2 *bp )
{
  __be32 buf[128U] ;
  u8 *data ;
  int rc ;
  u32 magic ;
  u32 csum ;
  __u32 tmp ;
  {
  {
  data = (u8 *)(& buf);
  rc = 0;
  rc = bnx2_nvram_read(bp, 0U, data, 4);
  }
  if (rc != 0) {
    goto test_nvram_done;
  } else {
  }
  {
  tmp = __fswab32(buf[0]);
  magic = tmp;
  }
  if (magic != 1721324970U) {
    rc = -19;
    goto test_nvram_done;
  } else {
  }
  {
  rc = bnx2_nvram_read(bp, 256U, data, 512);
  }
  if (rc != 0) {
    goto test_nvram_done;
  } else {
  }
  {
  csum = crc32_le(4294967295U, (unsigned char const *)data, 256UL);
  }
  if (csum != 3736805603U) {
    rc = -19;
    goto test_nvram_done;
  } else {
  }
  {
  csum = crc32_le(4294967295U, (unsigned char const *)data + 256U, 256UL);
  }
  if (csum != 3736805603U) {
    rc = -19;
  } else {
  }
  test_nvram_done: ;
  return (rc);
}
}
static int bnx2_test_link(struct bnx2 *bp )
{
  u32 bmsr ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  tmp = netif_running((struct net_device const *)bp->dev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-19);
  } else {
  }
  if ((bp->phy_flags & 2048U) != 0U) {
    if ((unsigned int )bp->link_up != 0U) {
      return (0);
    } else {
    }
    return (-19);
  } else {
  }
  {
  spin_lock_bh(& bp->phy_lock);
  bnx2_enable_bmsr1(bp);
  bnx2_read_phy(bp, bp->mii_bmsr1, & bmsr);
  bnx2_read_phy(bp, bp->mii_bmsr1, & bmsr);
  bnx2_disable_bmsr1(bp);
  spin_unlock_bh(& bp->phy_lock);
  }
  if ((bmsr & 4U) != 0U) {
    return (0);
  } else {
  }
  return (-19);
}
}
static int bnx2_test_intr(struct bnx2 *bp )
{
  int i ;
  u16 status_idx ;
  bool tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  {
  tmp = netif_running((struct net_device const *)bp->dev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-19);
  } else {
  }
  {
  tmp___1 = readl((void const volatile *)bp->regview + 132U);
  status_idx = (u16 )tmp___1;
  writel(bp->hc_cmd | 65536U, (void volatile *)bp->regview + 26624U);
  readl((void const volatile *)bp->regview + 26624U);
  i = 0;
  }
  goto ldv_54091;
  ldv_54090:
  {
  tmp___2 = readl((void const volatile *)bp->regview + 132U);
  }
  if ((tmp___2 & 65535U) != (unsigned int )status_idx) {
    goto ldv_54089;
  } else {
  }
  {
  msleep_interruptible(10U);
  i = i + 1;
  }
  ldv_54091: ;
  if (i <= 9) {
    goto ldv_54090;
  } else {
  }
  ldv_54089: ;
  if (i <= 9) {
    return (0);
  } else {
  }
  return (-19);
}
}
static int bnx2_5706_serdes_has_link(struct bnx2 *bp )
{
  u32 mode_ctl ;
  u32 an_dbg ;
  u32 exp ;
  {
  if ((bp->phy_flags & 8192U) != 0U) {
    return (0);
  } else {
  }
  {
  bnx2_write_phy(bp, 28U, 31744U);
  bnx2_read_phy(bp, 28U, & mode_ctl);
  }
  if ((mode_ctl & 16U) == 0U) {
    return (0);
  } else {
  }
  {
  bnx2_write_phy(bp, 28U, 26624U);
  bnx2_read_phy(bp, 28U, & an_dbg);
  bnx2_read_phy(bp, 28U, & an_dbg);
  }
  if ((an_dbg & 258U) != 0U) {
    return (0);
  } else {
  }
  {
  bnx2_write_phy(bp, 23U, 3841U);
  bnx2_read_phy(bp, 21U, & exp);
  bnx2_read_phy(bp, 21U, & exp);
  }
  if ((exp & 32U) != 0U) {
    return (0);
  } else {
  }
  return (1);
}
}
static void bnx2_5706_serdes_timer(struct bnx2 *bp )
{
  int check_link ;
  u32 bmcr ;
  int tmp ;
  u32 phy2 ;
  u32 bmcr___0 ;
  u32 val ;
  {
  {
  check_link = 1;
  spin_lock(& bp->phy_lock);
  }
  if ((unsigned int )bp->serdes_an_pending != 0U) {
    bp->serdes_an_pending = (u8 )((int )bp->serdes_an_pending - 1);
    check_link = 0;
  } else
  if ((unsigned int )bp->link_up == 0U && (int )bp->autoneg & 1) {
    {
    bp->current_interval = 250U;
    bnx2_read_phy(bp, bp->mii_bmcr, & bmcr);
    }
    if ((bmcr & 4096U) != 0U) {
      {
      tmp = bnx2_5706_serdes_has_link(bp);
      }
      if (tmp != 0) {
        {
        bmcr = bmcr & 4294963199U;
        bmcr = bmcr | 320U;
        bnx2_write_phy(bp, bp->mii_bmcr, bmcr);
        bp->phy_flags = bp->phy_flags | 4U;
        }
      } else {
      }
    } else {
    }
  } else
  if (((unsigned int )bp->link_up != 0U && (int )bp->autoneg & 1) && (bp->phy_flags & 4U) != 0U) {
    {
    bnx2_write_phy(bp, 23U, 3841U);
    bnx2_read_phy(bp, 21U, & phy2);
    }
    if ((phy2 & 32U) != 0U) {
      {
      bnx2_read_phy(bp, bp->mii_bmcr, & bmcr___0);
      bmcr___0 = bmcr___0 | 4096U;
      bnx2_write_phy(bp, bp->mii_bmcr, bmcr___0);
      bp->phy_flags = bp->phy_flags & 4294967291U;
      }
    } else {
    }
  } else {
    bp->current_interval = 250U;
  }
  if (check_link != 0) {
    {
    bnx2_write_phy(bp, 28U, 26624U);
    bnx2_read_phy(bp, 28U, & val);
    bnx2_read_phy(bp, 28U, & val);
    }
    if ((unsigned int )bp->link_up != 0U && (val & 2U) != 0U) {
      if ((bp->phy_flags & 4096U) == 0U) {
        {
        bnx2_5706s_force_link_dn(bp, 1);
        bp->phy_flags = bp->phy_flags | 4096U;
        }
      } else {
        {
        bnx2_set_link(bp);
        }
      }
    } else
    if ((unsigned int )bp->link_up == 0U && (val & 2U) == 0U) {
      {
      bnx2_set_link(bp);
      }
    } else {
    }
  } else {
  }
  {
  spin_unlock(& bp->phy_lock);
  }
  return;
}
}
static void bnx2_5708_serdes_timer(struct bnx2 *bp )
{
  u32 bmcr ;
  {
  if ((bp->phy_flags & 2048U) != 0U) {
    return;
  } else {
  }
  if ((bp->phy_flags & 8U) == 0U) {
    bp->serdes_an_pending = 0U;
    return;
  } else {
  }
  {
  spin_lock(& bp->phy_lock);
  }
  if ((unsigned int )bp->serdes_an_pending != 0U) {
    bp->serdes_an_pending = (u8 )((int )bp->serdes_an_pending - 1);
  } else
  if ((unsigned int )bp->link_up == 0U && (int )bp->autoneg & 1) {
    {
    bnx2_read_phy(bp, bp->mii_bmcr, & bmcr);
    }
    if ((bmcr & 4096U) != 0U) {
      {
      bnx2_enable_forced_2g5(bp);
      bp->current_interval = 25U;
      }
    } else {
      {
      bnx2_disable_forced_2g5(bp);
      bp->serdes_an_pending = 2U;
      bp->current_interval = 250U;
      }
    }
  } else {
    bp->current_interval = 250U;
  }
  {
  spin_unlock(& bp->phy_lock);
  }
  return;
}
}
static void bnx2_timer(unsigned long data )
{
  struct bnx2 *bp ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  bp = (struct bnx2 *)data;
  tmp = netif_running((struct net_device const *)bp->dev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  {
  tmp___1 = atomic_read((atomic_t const *)(& bp->intr_sem));
  }
  if (tmp___1 != 0) {
    goto bnx2_restart_timer;
  } else {
  }
  if ((bp->flags & 288U) == 32U) {
    {
    bnx2_chk_missed_msi(bp);
    }
  } else {
  }
  {
  bnx2_send_heart_beat(bp);
  (bp->stats_blk)->stat_FwRxDrop = bnx2_reg_rd_ind(bp, 1179780U);
  }
  if ((bp->flags & 8192U) != 0U && bp->stats_ticks != 0U) {
    {
    writel(bp->hc_cmd | 262144U, (void volatile *)bp->regview + 26624U);
    }
  } else {
  }
  if ((int )bp->phy_flags & 1) {
    if ((bp->chip_id & 4294901760U) == 1460011008U) {
      {
      bnx2_5706_serdes_timer(bp);
      }
    } else {
      {
      bnx2_5708_serdes_timer(bp);
      }
    }
  } else {
  }
  bnx2_restart_timer:
  {
  ldv_mod_timer_24(& bp->timer, (unsigned long )jiffies + (unsigned long )bp->current_interval);
  }
  return;
}
}
static int bnx2_request_irq(struct bnx2 *bp )
{
  unsigned long flags ;
  struct bnx2_irq *irq ;
  int rc ;
  int i ;
  {
  rc = 0;
  if ((bp->flags & 1056U) != 0U) {
    flags = 0UL;
  } else {
    flags = 128UL;
  }
  i = 0;
  goto ldv_54124;
  ldv_54123:
  {
  irq = (struct bnx2_irq *)(& bp->irq_tbl) + (unsigned long )i;
  rc = ldv_request_irq_25(irq->vector, irq->handler, flags, (char const *)(& irq->name),
                          (void *)(& bp->bnx2_napi) + (unsigned long )i);
  }
  if (rc != 0) {
    goto ldv_54122;
  } else {
  }
  irq->requested = 1U;
  i = i + 1;
  ldv_54124: ;
  if (i < bp->irq_nvecs) {
    goto ldv_54123;
  } else {
  }
  ldv_54122: ;
  return (rc);
}
}
static void __bnx2_free_irq(struct bnx2 *bp )
{
  struct bnx2_irq *irq ;
  int i ;
  {
  i = 0;
  goto ldv_54131;
  ldv_54130:
  irq = (struct bnx2_irq *)(& bp->irq_tbl) + (unsigned long )i;
  if ((unsigned int )irq->requested != 0U) {
    {
    ldv_free_irq_26(irq->vector, (void *)(& bp->bnx2_napi) + (unsigned long )i);
    }
  } else {
  }
  irq->requested = 0U;
  i = i + 1;
  ldv_54131: ;
  if (i < bp->irq_nvecs) {
    goto ldv_54130;
  } else {
  }
  return;
}
}
static void bnx2_free_irq(struct bnx2 *bp )
{
  {
  {
  __bnx2_free_irq(bp);
  }
  if ((bp->flags & 32U) != 0U) {
    {
    pci_disable_msi(bp->pdev);
    }
  } else
  if ((bp->flags & 1024U) != 0U) {
    {
    pci_disable_msix(bp->pdev);
    }
  } else {
  }
  bp->flags = bp->flags & 4294965983U;
  return;
}
}
static void bnx2_enable_msix(struct bnx2 *bp , int msix_vecs )
{
  int i ;
  int total_vecs ;
  int rc ;
  struct msix_entry msix_ent[9U] ;
  struct net_device *dev ;
  int len ;
  {
  {
  dev = bp->dev;
  len = 18;
  bnx2_setup_msix_tbl(bp);
  writel(8U, (void volatile *)bp->regview + 1216U);
  writel(49152U, (void volatile *)bp->regview + 1220U);
  writel(57344U, (void volatile *)bp->regview + 1224U);
  readl((void const volatile *)bp->regview + 1216U);
  i = 0;
  }
  goto ldv_54147;
  ldv_54146:
  msix_ent[i].entry = (u16 )i;
  msix_ent[i].vector = 0U;
  i = i + 1;
  ldv_54147: ;
  if (i <= 8) {
    goto ldv_54146;
  } else {
  }
  total_vecs = msix_vecs;
  total_vecs = total_vecs + 1;
  rc = -28;
  goto ldv_54151;
  ldv_54150:
  {
  rc = pci_enable_msix(bp->pdev, (struct msix_entry *)(& msix_ent), total_vecs);
  }
  if (rc <= 0) {
    goto ldv_54149;
  } else {
  }
  if (rc > 0) {
    total_vecs = rc;
  } else {
  }
  ldv_54151: ;
  if (total_vecs > 1) {
    goto ldv_54150;
  } else {
  }
  ldv_54149: ;
  if (rc != 0) {
    return;
  } else {
  }
  msix_vecs = total_vecs;
  msix_vecs = msix_vecs - 1;
  bp->irq_nvecs = msix_vecs;
  bp->flags = bp->flags | 1280U;
  i = 0;
  goto ldv_54153;
  ldv_54152:
  {
  bp->irq_tbl[i].vector = msix_ent[i].vector;
  snprintf((char *)(& bp->irq_tbl[i].name), (size_t )len, "%s-%d", (char *)(& dev->name),
           i);
  bp->irq_tbl[i].handler = & bnx2_msi_1shot;
  i = i + 1;
  }
  ldv_54153: ;
  if (i < total_vecs) {
    goto ldv_54152;
  } else {
  }
  return;
}
}
static int bnx2_setup_int_mode(struct bnx2 *bp , int dis_msi )
{
  int cpus ;
  int tmp ;
  int msix_vecs ;
  int _max1 ;
  int _max2 ;
  int _max1___0 ;
  int _max2___0 ;
  int _max1___1 ;
  int _max2___1 ;
  int _min1 ;
  int _min2 ;
  int tmp___0 ;
  unsigned long tmp___69 ;
  int _min1___0 ;
  int _min2___0 ;
  int _min1___1 ;
  int _min2___1 ;
  int tmp___70 ;
  {
  {
  tmp = netif_get_num_default_rss_queues();
  cpus = tmp;
  }
  if (bp->num_req_rx_rings == 0) {
    _max1 = cpus + 1;
    _max2 = bp->num_req_tx_rings;
    msix_vecs = _max1 > _max2 ? _max1 : _max2;
  } else
  if (bp->num_req_tx_rings == 0) {
    _max1___0 = cpus;
    _max2___0 = bp->num_req_rx_rings;
    msix_vecs = _max1___0 > _max2___0 ? _max1___0 : _max2___0;
  } else {
    _max1___1 = bp->num_req_rx_rings;
    _max2___1 = bp->num_req_tx_rings;
    msix_vecs = _max1___1 > _max2___1 ? _max1___1 : _max2___1;
  }
  {
  _min1 = msix_vecs;
  _min2 = 8;
  msix_vecs = _min1 < _min2 ? _min1 : _min2;
  bp->irq_tbl[0].handler = & bnx2_interrupt;
  strcpy((char *)(& bp->irq_tbl[0].name), (char const *)(& (bp->dev)->name));
  bp->irq_nvecs = 1;
  bp->irq_tbl[0].vector = (bp->pdev)->irq;
  }
  if ((bp->flags & 4U) != 0U && dis_msi == 0) {
    {
    bnx2_enable_msix(bp, msix_vecs);
    }
  } else {
  }
  if (((bp->flags & 128U) != 0U && dis_msi == 0) && (bp->flags & 1024U) == 0U) {
    {
    tmp___0 = pci_enable_msi_block(bp->pdev, 1);
    }
    if (tmp___0 == 0) {
      bp->flags = bp->flags | 32U;
      if ((bp->chip_id & 4294901760U) == 1460207616U) {
        bp->flags = bp->flags | 256U;
        bp->irq_tbl[0].handler = & bnx2_msi_1shot;
      } else {
        bp->irq_tbl[0].handler = & bnx2_msi;
      }
      bp->irq_tbl[0].vector = (bp->pdev)->irq;
    } else {
    }
  } else {
  }
  if (bp->num_req_tx_rings == 0) {
    {
    tmp___69 = __rounddown_pow_of_two((unsigned long )bp->irq_nvecs);
    bp->num_tx_rings = (u8 )tmp___69;
    }
  } else {
    _min1___0 = bp->irq_nvecs;
    _min2___0 = bp->num_req_tx_rings;
    bp->num_tx_rings = (u8 )(_min1___0 < _min2___0 ? _min1___0 : _min2___0);
  }
  if (bp->num_req_rx_rings == 0) {
    bp->num_rx_rings = (u8 )bp->irq_nvecs;
  } else {
    _min1___1 = bp->irq_nvecs;
    _min2___1 = bp->num_req_rx_rings;
    bp->num_rx_rings = (u8 )(_min1___1 < _min2___1 ? _min1___1 : _min2___1);
  }
  {
  netif_set_real_num_tx_queues(bp->dev, (unsigned int )bp->num_tx_rings);
  tmp___70 = netif_set_real_num_rx_queues(bp->dev, (unsigned int )bp->num_rx_rings);
  }
  return (tmp___70);
}
}
static int bnx2_open(struct net_device *dev )
{
  struct bnx2 *bp ;
  void *tmp ;
  int rc ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  rc = bnx2_request_firmware(bp);
  }
  if (rc < 0) {
    goto out;
  } else {
  }
  {
  netif_carrier_off(dev);
  bnx2_disable_int(bp);
  rc = bnx2_setup_int_mode(bp, disable_msi);
  }
  if (rc != 0) {
    goto open_err;
  } else {
  }
  {
  bnx2_init_napi(bp);
  bnx2_napi_enable(bp);
  rc = bnx2_alloc_mem(bp);
  }
  if (rc != 0) {
    goto open_err;
  } else {
  }
  {
  rc = bnx2_request_irq(bp);
  }
  if (rc != 0) {
    goto open_err;
  } else {
  }
  {
  rc = bnx2_init_nic(bp, 1);
  }
  if (rc != 0) {
    goto open_err;
  } else {
  }
  {
  ldv_mod_timer_27(& bp->timer, (unsigned long )jiffies + (unsigned long )bp->current_interval);
  atomic_set(& bp->intr_sem, 0);
  memset((void *)bp->temp_stats_blk, 0, 324UL);
  bnx2_enable_int(bp);
  }
  if ((bp->flags & 32U) != 0U) {
    {
    tmp___0 = bnx2_test_intr(bp);
    }
    if (tmp___0 != 0) {
      {
      netdev_warn((struct net_device const *)bp->dev, "No interrupt was generated using MSI, switching to INTx mode. Please report this failure to the PCI maintainer and include system chipset information.\n");
      bnx2_disable_int(bp);
      bnx2_free_irq(bp);
      bnx2_setup_int_mode(bp, 1);
      rc = bnx2_init_nic(bp, 0);
      }
      if (rc == 0) {
        {
        rc = bnx2_request_irq(bp);
        }
      } else {
      }
      if (rc != 0) {
        {
        ldv_del_timer_sync_28(& bp->timer);
        }
        goto open_err;
      } else {
      }
      {
      bnx2_enable_int(bp);
      }
    } else {
    }
  } else {
  }
  if ((bp->flags & 32U) != 0U) {
    {
    netdev_info((struct net_device const *)dev, "using MSI\n");
    }
  } else
  if ((bp->flags & 1024U) != 0U) {
    {
    netdev_info((struct net_device const *)dev, "using MSIX\n");
    }
  } else {
  }
  {
  netif_tx_start_all_queues(dev);
  }
  out: ;
  return (rc);
  open_err:
  {
  bnx2_napi_disable(bp);
  bnx2_free_skbs(bp);
  bnx2_free_irq(bp);
  bnx2_free_mem(bp);
  bnx2_del_napi(bp);
  bnx2_release_firmware(bp);
  }
  goto out;
}
}
static void bnx2_reset_task(struct work_struct *work )
{
  struct bnx2 *bp ;
  struct work_struct const *__mptr ;
  int rc ;
  u16 pcicmd ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  __mptr = (struct work_struct const *)work;
  bp = (struct bnx2 *)__mptr + 0xffffffffffffdd48UL;
  rtnl_lock();
  tmp = netif_running((struct net_device const *)bp->dev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    rtnl_unlock();
    }
    return;
  } else {
  }
  {
  bnx2_netif_stop(bp, 1);
  pci_read_config_word((struct pci_dev const *)bp->pdev, 4, & pcicmd);
  }
  if (((int )pcicmd & 2) == 0) {
    {
    pci_restore_state(bp->pdev);
    pci_save_state(bp->pdev);
    }
  } else {
  }
  {
  rc = bnx2_init_nic(bp, 1);
  }
  if (rc != 0) {
    {
    netdev_err((struct net_device const *)bp->dev, "failed to reset NIC, closing\n");
    bnx2_napi_enable(bp);
    dev_close(bp->dev);
    rtnl_unlock();
    }
    return;
  } else {
  }
  {
  atomic_set(& bp->intr_sem, 1);
  bnx2_netif_start(bp, 1);
  rtnl_unlock();
  }
  return;
}
}
static void bnx2_dump_ftq(struct bnx2 *bp )
{
  int i ;
  u32 reg ;
  u32 bdidx ;
  u32 cid ;
  u32 valid ;
  struct net_device *dev ;
  struct ftq_reg ftq_arr[14U] ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  unsigned int tmp___6 ;
  int j ;
  unsigned int tmp___7 ;
  {
  {
  dev = bp->dev;
  ftq_arr[0].name = (char *)"RV2P_PFTQ_CTL";
  ftq_arr[0].off = 11132U;
  ftq_arr[1].name = (char *)"RV2P_TFTQ_CTL";
  ftq_arr[1].off = 11196U;
  ftq_arr[2].name = (char *)"RV2P_MFTQ_CTL";
  ftq_arr[2].off = 11260U;
  ftq_arr[3].name = (char *)"TBDR_FTQ_CTL";
  ftq_arr[3].off = 21500U;
  ftq_arr[4].name = (char *)"TDMA_FTQ_CTL";
  ftq_arr[4].off = 24572U;
  ftq_arr[5].name = (char *)"TXP_FTQ_CTL";
  ftq_arr[5].off = 283644U;
  ftq_arr[6].name = (char *)"TXP_FTQ_CTL";
  ftq_arr[6].off = 283644U;
  ftq_arr[7].name = (char *)"TPAT_FTQ_CTL";
  ftq_arr[7].off = 545788U;
  ftq_arr[8].name = (char *)"RXP_CFTQ_CTL";
  ftq_arr[8].off = 807868U;
  ftq_arr[9].name = (char *)"RXP_FTQ_CTL";
  ftq_arr[9].off = 807932U;
  ftq_arr[10].name = (char *)"COM_COMXQ_FTQ_CTL";
  ftq_arr[10].off = 1069948U;
  ftq_arr[11].name = (char *)"COM_COMTQ_FTQ_CTL";
  ftq_arr[11].off = 1070012U;
  ftq_arr[12].name = (char *)"COM_COMQ_FTQ_CTL";
  ftq_arr[12].off = 1070076U;
  ftq_arr[13].name = (char *)"CP_CPQ_FTQ_CTL";
  ftq_arr[13].off = 1594364U;
  netdev_err((struct net_device const *)dev, "<--- start FTQ dump --->\n");
  i = 0;
  }
  goto ldv_54210;
  ldv_54209:
  {
  tmp = bnx2_reg_rd_ind(bp, ftq_arr[i].off);
  netdev_err((struct net_device const *)dev, "%s %08x\n", ftq_arr[i].name, tmp);
  i = i + 1;
  }
  ldv_54210: ;
  if ((unsigned int )i <= 13U) {
    goto ldv_54209;
  } else {
  }
  {
  netdev_err((struct net_device const *)dev, "CPU states:\n");
  reg = 282624U;
  }
  goto ldv_54213;
  ldv_54212:
  {
  tmp___0 = bnx2_reg_rd_ind(bp, reg + 32U);
  tmp___1 = bnx2_reg_rd_ind(bp, reg + 28U);
  tmp___2 = bnx2_reg_rd_ind(bp, reg + 28U);
  tmp___3 = bnx2_reg_rd_ind(bp, reg + 8U);
  tmp___4 = bnx2_reg_rd_ind(bp, reg + 4U);
  tmp___5 = bnx2_reg_rd_ind(bp, reg);
  netdev_err((struct net_device const *)dev, "%06x mode %x state %x evt_mask %x pc %x pc %x instr %x\n",
             reg, tmp___5, tmp___4, tmp___3, tmp___2, tmp___1, tmp___0);
  reg = reg + 262144U;
  }
  ldv_54213: ;
  if (reg <= 1593344U) {
    goto ldv_54212;
  } else {
  }
  {
  netdev_err((struct net_device const *)dev, "<--- end FTQ dump --->\n");
  netdev_err((struct net_device const *)dev, "<--- start TBDC dump --->\n");
  tmp___6 = readl((void const volatile *)bp->regview + 21508U);
  netdev_err((struct net_device const *)dev, "TBDC free cnt: %ld\n", (unsigned long )tmp___6 & 63UL);
  netdev_err((struct net_device const *)dev, "LINE     CID  BIDX   CMD  VALIDS\n");
  i = 0;
  }
  goto ldv_54220;
  ldv_54219:
  {
  j = 0;
  writel((unsigned int )i, (void volatile *)bp->regview + 21540U);
  writel(5U, (void volatile *)bp->regview + 21556U);
  writel(8U, (void volatile *)bp->regview + 21504U);
  }
  goto ldv_54217;
  ldv_54216:
  j = j + 1;
  ldv_54217:
  {
  tmp___7 = readl((void const volatile *)bp->regview + 21504U);
  }
  if (((unsigned long )tmp___7 & 8UL) != 0UL && j <= 99) {
    goto ldv_54216;
  } else {
  }
  {
  cid = readl((void const volatile *)bp->regview + 21552U);
  bdidx = readl((void const volatile *)bp->regview + 21548U);
  valid = readl((void const volatile *)bp->regview + 21556U);
  netdev_err((struct net_device const *)dev, "%02x    %06x  %04lx   %02x    [%x]\n",
             i, cid, (unsigned long )bdidx & 65535UL, bdidx >> 24, (valid >> 8) & 255U);
  i = i + 1;
  }
  ldv_54220: ;
  if (i <= 31) {
    goto ldv_54219;
  } else {
  }
  {
  netdev_err((struct net_device const *)dev, "<--- end TBDC dump --->\n");
  }
  return;
}
}
static void bnx2_dump_state(struct bnx2 *bp )
{
  struct net_device *dev ;
  u32 val1 ;
  u32 val2 ;
  int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  {
  {
  dev = bp->dev;
  pci_read_config_dword((struct pci_dev const *)bp->pdev, 4, & val1);
  tmp = atomic_read((atomic_t const *)(& bp->intr_sem));
  netdev_err((struct net_device const *)dev, "DEBUG: intr_sem[%x] PCI_CMD[%08x]\n",
             tmp, val1);
  pci_read_config_dword((struct pci_dev const *)bp->pdev, bp->pm_cap + 4, & val1);
  pci_read_config_dword((struct pci_dev const *)bp->pdev, 104, & val2);
  netdev_err((struct net_device const *)dev, "DEBUG: PCI_PM[%08x] PCI_MISC_CFG[%08x]\n",
             val1, val2);
  tmp___0 = readl((void const volatile *)bp->regview + 5324U);
  tmp___1 = readl((void const volatile *)bp->regview + 5312U);
  netdev_err((struct net_device const *)dev, "DEBUG: EMAC_TX_STATUS[%08x] EMAC_RX_STATUS[%08x]\n",
             tmp___1, tmp___0);
  tmp___2 = readl((void const volatile *)bp->regview + 6156U);
  netdev_err((struct net_device const *)dev, "DEBUG: RPM_MGMT_PKT_CTRL[%08x]\n",
             tmp___2);
  tmp___3 = readl((void const volatile *)bp->regview + 26696U);
  netdev_err((struct net_device const *)dev, "DEBUG: HC_STATS_INTERRUPT_STATUS[%08x]\n",
             tmp___3);
  }
  if ((bp->flags & 1024U) != 0U) {
    {
    tmp___4 = readl((void const volatile *)bp->regview + 57344U);
    netdev_err((struct net_device const *)dev, "DEBUG: PBA[%08x]\n", tmp___4);
    }
  } else {
  }
  return;
}
}
static void bnx2_tx_timeout(struct net_device *dev )
{
  struct bnx2 *bp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  bnx2_dump_ftq(bp);
  bnx2_dump_state(bp);
  bnx2_dump_mcp_state(bp);
  schedule_work(& bp->reset_task);
  }
  return;
}
}
static netdev_tx_t bnx2_start_xmit(struct sk_buff *skb , struct net_device *dev )
{
  struct bnx2 *bp ;
  void *tmp ;
  dma_addr_t mapping ;
  struct bnx2_tx_bd *txbd ;
  struct bnx2_sw_tx_bd *tx_buf ;
  u32 len ;
  u32 vlan_tag_flags ;
  u32 last_frag ;
  u32 mss ;
  u16 prod ;
  u16 ring_prod ;
  int i ;
  struct bnx2_napi *bnapi ;
  struct bnx2_tx_ring_info *txr ;
  struct netdev_queue *txq ;
  u16 tmp___0 ;
  u32 tmp___1 ;
  unsigned char *tmp___2 ;
  long tmp___3 ;
  u32 tcp_opt_len ;
  struct iphdr *iph ;
  u32 tcp_off ;
  int tmp___4 ;
  long tmp___5 ;
  unsigned char *tmp___6 ;
  unsigned char *tmp___7 ;
  int tmp___8 ;
  unsigned char *tmp___9 ;
  bool tmp___10 ;
  skb_frag_t const *frag ;
  unsigned char *tmp___11 ;
  int tmp___12 ;
  u32 tmp___13 ;
  u32 tmp___14 ;
  long tmp___15 ;
  unsigned int tmp___16 ;
  unsigned char *tmp___17 ;
  unsigned int tmp___18 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  tmp___0 = skb_get_queue_mapping((struct sk_buff const *)skb);
  i = (int )tmp___0;
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi) + (unsigned long )i;
  txr = & bnapi->tx_ring;
  txq = netdev_get_tx_queue((struct net_device const *)dev, (unsigned int )i);
  tmp___1 = bnx2_tx_avail(bp, txr);
  tmp___2 = skb_end_pointer((struct sk_buff const *)skb);
  tmp___3 = ldv__builtin_expect(tmp___1 < (u32 )((int )((struct skb_shared_info *)tmp___2)->nr_frags + 1),
                             0L);
  }
  if (tmp___3 != 0L) {
    {
    netif_tx_stop_queue(txq);
    netdev_err((struct net_device const *)dev, "BUG! Tx ring full when queue awake!\n");
    }
    return (16);
  } else {
  }
  {
  len = skb_headlen((struct sk_buff const *)skb);
  prod = txr->tx_prod;
  ring_prod = (unsigned int )prod & 255U;
  vlan_tag_flags = 0U;
  }
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 12U) {
    vlan_tag_flags = vlan_tag_flags | 2U;
  } else {
  }
  if (((int )skb->vlan_tci & 4096) != 0) {
    vlan_tag_flags = (vlan_tag_flags | (u32 )(((int )skb->vlan_tci & -4097) << 16)) | 8U;
  } else {
  }
  {
  tmp___7 = skb_end_pointer((struct sk_buff const *)skb);
  mss = (u32 )((struct skb_shared_info *)tmp___7)->gso_size;
  }
  if (mss != 0U) {
    {
    vlan_tag_flags = vlan_tag_flags | 32768U;
    tcp_opt_len = tcp_optlen((struct sk_buff const *)skb);
    tmp___6 = skb_end_pointer((struct sk_buff const *)skb);
    }
    if (((int )((struct skb_shared_info *)tmp___6)->gso_type & 16) != 0) {
      {
      tmp___4 = skb_transport_offset((struct sk_buff const *)skb);
      tcp_off = (u32 )tmp___4 - 54U;
      vlan_tag_flags = (vlan_tag_flags | ((tcp_opt_len >> 2) << 8)) | 8192U;
      tmp___5 = ldv__builtin_expect(tcp_off == 0U, 1L);
      }
      if (tmp___5 != 0L) {
        vlan_tag_flags = vlan_tag_flags & 4294967289U;
      } else {
        tcp_off = tcp_off >> 3;
        vlan_tag_flags = vlan_tag_flags | (((tcp_off & 3U) << 1) | ((tcp_off & 16U) << 12));
        mss = mss | ((tcp_off & 12U) << 14);
      }
    } else {
      {
      iph = ip_hdr((struct sk_buff const *)skb);
      }
      if (tcp_opt_len != 0U || (int )iph->ihl > 5) {
        vlan_tag_flags = vlan_tag_flags | ((((u32 )iph->ihl + (tcp_opt_len >> 2)) + 4294967291U) << 8);
      } else {
      }
    }
  } else {
    mss = 0U;
  }
  {
  mapping = dma_map_single_attrs(& (bp->pdev)->dev, (void *)skb->data, (size_t )len,
                                 1, (struct dma_attrs *)0);
  tmp___8 = dma_mapping_error(& (bp->pdev)->dev, mapping);
  }
  if (tmp___8 != 0) {
    {
    consume_skb(skb);
    }
    return (0);
  } else {
  }
  {
  tx_buf = txr->tx_buf_ring + (unsigned long )ring_prod;
  tx_buf->skb = skb;
  tx_buf->mapping = mapping;
  txbd = txr->tx_desc_ring + (unsigned long )ring_prod;
  txbd->tx_bd_haddr_hi = (u32 )(mapping >> 32);
  txbd->tx_bd_haddr_lo = (u32 )mapping;
  txbd->tx_bd_mss_nbytes = len | (mss << 16);
  txbd->tx_bd_vlan_tag_flags = vlan_tag_flags | 128U;
  tmp___9 = skb_end_pointer((struct sk_buff const *)skb);
  last_frag = (u32 )((struct skb_shared_info *)tmp___9)->nr_frags;
  tx_buf->nr_frags = (unsigned short )last_frag;
  tmp___10 = skb_is_gso((struct sk_buff const *)skb);
  tx_buf->is_gso = (unsigned short )tmp___10;
  i = 0;
  }
  goto ldv_54256;
  ldv_54255:
  {
  tmp___11 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (skb_frag_t const *)(& ((struct skb_shared_info *)tmp___11)->frags) + (unsigned long )i;
  prod = ((unsigned long )prod & 254UL) == 254UL ? (unsigned int )prod + 2U : (unsigned int )prod + 1U;
  ring_prod = (unsigned int )prod & 255U;
  txbd = txr->tx_desc_ring + (unsigned long )ring_prod;
  len = skb_frag_size(frag);
  mapping = skb_frag_dma_map(& (bp->pdev)->dev, frag, 0UL, (size_t )len, 1);
  tmp___12 = dma_mapping_error(& (bp->pdev)->dev, mapping);
  }
  if (tmp___12 != 0) {
    goto dma_error;
  } else {
  }
  (txr->tx_buf_ring + (unsigned long )ring_prod)->mapping = mapping;
  txbd->tx_bd_haddr_hi = (u32 )(mapping >> 32);
  txbd->tx_bd_haddr_lo = (u32 )mapping;
  txbd->tx_bd_mss_nbytes = len | (mss << 16);
  txbd->tx_bd_vlan_tag_flags = vlan_tag_flags;
  i = i + 1;
  ldv_54256: ;
  if ((u32 )i < last_frag) {
    goto ldv_54255;
  } else {
  }
  {
  txbd->tx_bd_vlan_tag_flags = txbd->tx_bd_vlan_tag_flags | 64U;
  __asm__ volatile ("sfence": : : "memory");
  netdev_tx_sent_queue(txq, skb->len);
  prod = ((unsigned long )prod & 254UL) == 254UL ? (unsigned int )prod + 2U : (unsigned int )prod + 1U;
  txr->tx_prod_bseq = txr->tx_prod_bseq + skb->len;
  writew((int )prod, (void volatile *)bp->regview + (unsigned long )txr->tx_bidx_addr);
  writel(txr->tx_prod_bseq, (void volatile *)bp->regview + (unsigned long )txr->tx_bseq_addr);
  __asm__ volatile ("": : : "memory");
  txr->tx_prod = prod;
  tmp___14 = bnx2_tx_avail(bp, txr);
  tmp___15 = ldv__builtin_expect(tmp___14 <= 17U, 0L);
  }
  if (tmp___15 != 0L) {
    {
    netif_tx_stop_queue(txq);
    __asm__ volatile ("mfence": : : "memory");
    tmp___13 = bnx2_tx_avail(bp, txr);
    }
    if (tmp___13 > bp->tx_wake_thresh) {
      {
      netif_tx_wake_queue(txq);
      }
    } else {
    }
  } else {
  }
  return (0);
  dma_error:
  {
  last_frag = (u32 )i;
  prod = txr->tx_prod;
  ring_prod = (unsigned int )prod & 255U;
  tx_buf = txr->tx_buf_ring + (unsigned long )ring_prod;
  tx_buf->skb = (struct sk_buff *)0;
  tmp___16 = skb_headlen((struct sk_buff const *)skb);
  dma_unmap_single_attrs(& (bp->pdev)->dev, tx_buf->mapping, (size_t )tmp___16, 1,
                         (struct dma_attrs *)0);
  i = 0;
  }
  goto ldv_54259;
  ldv_54258:
  {
  prod = ((unsigned long )prod & 254UL) == 254UL ? (unsigned int )prod + 2U : (unsigned int )prod + 1U;
  ring_prod = (unsigned int )prod & 255U;
  tx_buf = txr->tx_buf_ring + (unsigned long )ring_prod;
  tmp___17 = skb_end_pointer((struct sk_buff const *)skb);
  tmp___18 = skb_frag_size((skb_frag_t const *)(& ((struct skb_shared_info *)tmp___17)->frags) + (unsigned long )i);
  dma_unmap_page(& (bp->pdev)->dev, tx_buf->mapping, (size_t )tmp___18, 1);
  i = i + 1;
  }
  ldv_54259: ;
  if ((u32 )i < last_frag) {
    goto ldv_54258;
  } else {
  }
  {
  consume_skb(skb);
  }
  return (0);
}
}
static int bnx2_close(struct net_device *dev )
{
  struct bnx2 *bp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  bnx2_disable_int_sync(bp);
  bnx2_napi_disable(bp);
  netif_tx_disable(dev);
  ldv_del_timer_sync_29(& bp->timer);
  bnx2_shutdown_chip(bp);
  bnx2_free_irq(bp);
  bnx2_free_skbs(bp);
  bnx2_free_mem(bp);
  bnx2_del_napi(bp);
  bp->link_up = 0U;
  netif_carrier_off(bp->dev);
  }
  return (0);
}
}
static void bnx2_save_stats(struct bnx2 *bp )
{
  u32 *hw_stats ;
  u32 *temp_stats ;
  int i ;
  u32 hi ;
  u64 lo ;
  {
  hw_stats = (u32 *)bp->stats_blk;
  temp_stats = (u32 *)bp->temp_stats_blk;
  i = 0;
  goto ldv_54274;
  ldv_54273:
  hi = *(temp_stats + (unsigned long )i) + *(hw_stats + (unsigned long )i);
  lo = (unsigned long long )*(temp_stats + ((unsigned long )i + 1UL)) + (unsigned long long )*(hw_stats + ((unsigned long )i + 1UL));
  if (lo > 4294967295ULL) {
    hi = hi + 1U;
  } else {
  }
  *(temp_stats + (unsigned long )i) = hi;
  *(temp_stats + ((unsigned long )i + 1UL)) = (u32 )lo;
  i = i + 2;
  ldv_54274: ;
  if (i <= 19) {
    goto ldv_54273;
  } else {
  }
  goto ldv_54277;
  ldv_54276:
  *(temp_stats + (unsigned long )i) = *(temp_stats + (unsigned long )i) + *(hw_stats + (unsigned long )i);
  i = i + 1;
  ldv_54277: ;
  if ((unsigned int )i <= 80U) {
    goto ldv_54276;
  } else {
  }
  return;
}
}
static struct rtnl_link_stats64 *bnx2_get_stats64(struct net_device *dev , struct rtnl_link_stats64 *net_stats )
{
  struct bnx2 *bp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  }
  if ((unsigned long )bp->stats_blk == (unsigned long )((struct statistics_block *)0)) {
    return (net_stats);
  } else {
  }
  net_stats->rx_packets = (((((((unsigned long long )(bp->stats_blk)->stat_IfHCInUcastPkts_hi << 32) + (unsigned long long )(bp->stats_blk)->stat_IfHCInUcastPkts_lo) + (((unsigned long long )(bp->temp_stats_blk)->stat_IfHCInUcastPkts_hi << 32) + (unsigned long long )(bp->temp_stats_blk)->stat_IfHCInUcastPkts_lo)) + (((unsigned long long )(bp->stats_blk)->stat_IfHCInMulticastPkts_hi << 32) + (unsigned long long )(bp->stats_blk)->stat_IfHCInMulticastPkts_lo)) + (((unsigned long long )(bp->temp_stats_blk)->stat_IfHCInMulticastPkts_hi << 32) + (unsigned long long )(bp->temp_stats_blk)->stat_IfHCInMulticastPkts_lo)) + (((unsigned long long )(bp->stats_blk)->stat_IfHCInBroadcastPkts_hi << 32) + (unsigned long long )(bp->stats_blk)->stat_IfHCInBroadcastPkts_lo)) + (((unsigned long long )(bp->temp_stats_blk)->stat_IfHCInBroadcastPkts_hi << 32) + (unsigned long long )(bp->temp_stats_blk)->stat_IfHCInBroadcastPkts_lo);
  net_stats->tx_packets = (((((((unsigned long long )(bp->stats_blk)->stat_IfHCOutUcastPkts_hi << 32) + (unsigned long long )(bp->stats_blk)->stat_IfHCOutUcastPkts_lo) + (((unsigned long long )(bp->temp_stats_blk)->stat_IfHCOutUcastPkts_hi << 32) + (unsigned long long )(bp->temp_stats_blk)->stat_IfHCOutUcastPkts_lo)) + (((unsigned long long )(bp->stats_blk)->stat_IfHCOutMulticastPkts_hi << 32) + (unsigned long long )(bp->stats_blk)->stat_IfHCOutMulticastPkts_lo)) + (((unsigned long long )(bp->temp_stats_blk)->stat_IfHCOutMulticastPkts_hi << 32) + (unsigned long long )(bp->temp_stats_blk)->stat_IfHCOutMulticastPkts_lo)) + (((unsigned long long )(bp->stats_blk)->stat_IfHCOutBroadcastPkts_hi << 32) + (unsigned long long )(bp->stats_blk)->stat_IfHCOutBroadcastPkts_lo)) + (((unsigned long long )(bp->temp_stats_blk)->stat_IfHCOutBroadcastPkts_hi << 32) + (unsigned long long )(bp->temp_stats_blk)->stat_IfHCOutBroadcastPkts_lo);
  net_stats->rx_bytes = (((unsigned long long )(bp->stats_blk)->stat_IfHCInOctets_hi << 32) + (unsigned long long )(bp->stats_blk)->stat_IfHCInOctets_lo) + (((unsigned long long )(bp->temp_stats_blk)->stat_IfHCInOctets_hi << 32) + (unsigned long long )(bp->temp_stats_blk)->stat_IfHCInOctets_lo);
  net_stats->tx_bytes = (((unsigned long long )(bp->stats_blk)->stat_IfHCOutOctets_hi << 32) + (unsigned long long )(bp->stats_blk)->stat_IfHCOutOctets_lo) + (((unsigned long long )(bp->temp_stats_blk)->stat_IfHCOutOctets_hi << 32) + (unsigned long long )(bp->temp_stats_blk)->stat_IfHCOutOctets_lo);
  net_stats->multicast = (((unsigned long long )(bp->stats_blk)->stat_IfHCInMulticastPkts_hi << 32) + (unsigned long long )(bp->stats_blk)->stat_IfHCInMulticastPkts_lo) + (((unsigned long long )(bp->temp_stats_blk)->stat_IfHCInMulticastPkts_hi << 32) + (unsigned long long )(bp->temp_stats_blk)->stat_IfHCInMulticastPkts_lo);
  net_stats->collisions = (__u64 )((bp->stats_blk)->stat_EtherStatsCollisions + (bp->temp_stats_blk)->stat_EtherStatsCollisions);
  net_stats->rx_length_errors = (__u64 )((unsigned long )((bp->stats_blk)->stat_EtherStatsUndersizePkts + (bp->temp_stats_blk)->stat_EtherStatsUndersizePkts) + (unsigned long )((bp->stats_blk)->stat_EtherStatsOverrsizePkts + (bp->temp_stats_blk)->stat_EtherStatsOverrsizePkts));
  net_stats->rx_over_errors = (__u64 )((unsigned long )((bp->stats_blk)->stat_IfInFTQDiscards + (bp->temp_stats_blk)->stat_IfInFTQDiscards) + (unsigned long )((bp->stats_blk)->stat_IfInMBUFDiscards + (bp->temp_stats_blk)->stat_IfInMBUFDiscards));
  net_stats->rx_frame_errors = (__u64 )((bp->stats_blk)->stat_Dot3StatsAlignmentErrors + (bp->temp_stats_blk)->stat_Dot3StatsAlignmentErrors);
  net_stats->rx_crc_errors = (__u64 )((bp->stats_blk)->stat_Dot3StatsFCSErrors + (bp->temp_stats_blk)->stat_Dot3StatsFCSErrors);
  net_stats->rx_errors = ((net_stats->rx_length_errors + net_stats->rx_over_errors) + net_stats->rx_frame_errors) + net_stats->rx_crc_errors;
  net_stats->tx_aborted_errors = (__u64 )((unsigned long )((bp->stats_blk)->stat_Dot3StatsExcessiveCollisions + (bp->temp_stats_blk)->stat_Dot3StatsExcessiveCollisions) + (unsigned long )((bp->stats_blk)->stat_Dot3StatsLateCollisions + (bp->temp_stats_blk)->stat_Dot3StatsLateCollisions));
  if ((bp->chip_id & 4294901760U) == 1460011008U || (bp->chip_id & 4294967280U) == 1460142080U) {
    net_stats->tx_carrier_errors = 0ULL;
  } else {
    net_stats->tx_carrier_errors = (__u64 )((bp->stats_blk)->stat_Dot3StatsCarrierSenseErrors + (bp->temp_stats_blk)->stat_Dot3StatsCarrierSenseErrors);
  }
  net_stats->tx_errors = ((unsigned long long )((bp->stats_blk)->stat_emac_tx_stat_dot3statsinternalmactransmiterrors + (bp->temp_stats_blk)->stat_emac_tx_stat_dot3statsinternalmactransmiterrors) + net_stats->tx_aborted_errors) + net_stats->tx_carrier_errors;
  net_stats->rx_missed_errors = (__u64 )(((unsigned long )((bp->stats_blk)->stat_IfInFTQDiscards + (bp->temp_stats_blk)->stat_IfInFTQDiscards) + (unsigned long )((bp->stats_blk)->stat_IfInMBUFDiscards + (bp->temp_stats_blk)->stat_IfInMBUFDiscards)) + (unsigned long )((bp->stats_blk)->stat_FwRxDrop + (bp->temp_stats_blk)->stat_FwRxDrop));
  return (net_stats);
}
}
static int bnx2_get_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct bnx2 *bp ;
  void *tmp ;
  int support_serdes ;
  int support_copper ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  support_serdes = 0;
  support_copper = 0;
  cmd->supported = 64U;
  }
  if ((bp->phy_flags & 2048U) != 0U) {
    support_serdes = 1;
    support_copper = 1;
  } else
  if ((unsigned int )bp->phy_port == 3U) {
    support_serdes = 1;
  } else {
    support_copper = 1;
  }
  if (support_serdes != 0) {
    cmd->supported = cmd->supported | 1056U;
    if ((bp->phy_flags & 8U) != 0U) {
      cmd->supported = cmd->supported | 32768U;
    } else {
    }
  } else {
  }
  if (support_copper != 0) {
    cmd->supported = cmd->supported | 175U;
  } else {
  }
  {
  spin_lock_bh(& bp->phy_lock);
  cmd->port = bp->phy_port;
  cmd->advertising = bp->advertising;
  }
  if ((int )bp->autoneg & 1) {
    cmd->autoneg = 1U;
  } else {
    cmd->autoneg = 0U;
  }
  {
  tmp___0 = netif_carrier_ok((struct net_device const *)dev);
  }
  if ((int )tmp___0) {
    {
    ethtool_cmd_speed_set(cmd, (__u32 )bp->line_speed);
    cmd->duplex = bp->duplex;
    }
    if ((bp->phy_flags & 1U) == 0U) {
      if ((bp->phy_flags & 16384U) != 0U) {
        cmd->eth_tp_mdix = 2U;
      } else {
        cmd->eth_tp_mdix = 1U;
      }
    } else {
    }
  } else {
    {
    ethtool_cmd_speed_set(cmd, 4294967295U);
    cmd->duplex = 255U;
    }
  }
  {
  spin_unlock_bh(& bp->phy_lock);
  cmd->transceiver = 0U;
  cmd->phy_address = (__u8 )bp->phy_addr;
  }
  return (0);
}
}
static int bnx2_set_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct bnx2 *bp ;
  void *tmp ;
  u8 autoneg ;
  u8 req_duplex ;
  u16 req_line_speed ;
  u32 advertising ;
  int err ;
  bool tmp___0 ;
  int tmp___1 ;
  u32 speed ;
  __u32 tmp___2 ;
  bool tmp___3 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  autoneg = bp->autoneg;
  req_duplex = bp->req_duplex;
  req_line_speed = bp->req_line_speed;
  advertising = bp->advertising;
  err = -22;
  spin_lock_bh(& bp->phy_lock);
  }
  if ((unsigned int )cmd->port != 0U && (unsigned int )cmd->port != 3U) {
    goto err_out_unlock;
  } else {
  }
  if ((int )cmd->port != (int )bp->phy_port && (bp->phy_flags & 2048U) == 0U) {
    goto err_out_unlock;
  } else {
  }
  {
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1 && (int )cmd->port != (int )bp->phy_port) {
    goto err_out_unlock;
  } else {
  }
  if ((unsigned int )cmd->autoneg == 1U) {
    autoneg = (u8 )((unsigned int )autoneg | 1U);
    advertising = cmd->advertising;
    if ((unsigned int )cmd->port == 0U) {
      advertising = advertising & 47U;
      if (advertising == 0U) {
        advertising = 47U;
      } else {
      }
    } else {
      advertising = advertising & ((bp->phy_flags & 8U) != 0U ? 32800U : 32U);
      if (advertising == 0U) {
        advertising = (bp->phy_flags & 8U) != 0U ? 32800U : 32U;
      } else {
      }
    }
    advertising = advertising | 64U;
  } else {
    {
    tmp___2 = ethtool_cmd_speed((struct ethtool_cmd const *)cmd);
    speed = tmp___2;
    }
    if ((unsigned int )cmd->port == 3U) {
      if ((speed != 1000U && speed != 2500U) || (unsigned int )cmd->duplex != 1U) {
        goto err_out_unlock;
      } else {
      }
      if (speed == 2500U && (bp->phy_flags & 8U) == 0U) {
        goto err_out_unlock;
      } else {
      }
    } else
    if (speed == 1000U || speed == 2500U) {
      goto err_out_unlock;
    } else {
    }
    autoneg = (unsigned int )autoneg & 254U;
    req_line_speed = (u16 )speed;
    req_duplex = cmd->duplex;
    advertising = 0U;
  }
  {
  bp->autoneg = autoneg;
  bp->advertising = advertising;
  bp->req_line_speed = req_line_speed;
  bp->req_duplex = req_duplex;
  err = 0;
  tmp___3 = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp___3) {
    {
    err = bnx2_setup_phy(bp, (int )cmd->port);
    }
  } else {
  }
  err_out_unlock:
  {
  spin_unlock_bh(& bp->phy_lock);
  }
  return (err);
}
}
static void bnx2_get_drvinfo(struct net_device *dev , struct ethtool_drvinfo *info )
{
  struct bnx2 *bp ;
  void *tmp ;
  char const *tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  strlcpy((char *)(& info->driver), "bnx2", 32UL);
  strlcpy((char *)(& info->version), "2.2.5", 32UL);
  tmp___0 = pci_name((struct pci_dev const *)bp->pdev);
  strlcpy((char *)(& info->bus_info), tmp___0, 32UL);
  strlcpy((char *)(& info->fw_version), (char const *)(& bp->fw_version), 32UL);
  }
  return;
}
}
static int bnx2_get_regs_len(struct net_device *dev )
{
  {
  return (32768);
}
}
static void bnx2_get_regs(struct net_device *dev , struct ethtool_regs *regs , void *_p )
{
  u32 *p ;
  u32 i ;
  u32 offset ;
  u8 *orig_p ;
  struct bnx2 *bp ;
  void *tmp ;
  u32 reg_boundaries[87U] ;
  bool tmp___0 ;
  int tmp___1 ;
  u32 *tmp___2 ;
  {
  {
  p = (u32 *)_p;
  orig_p = (u8 *)_p;
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  reg_boundaries[0] = 0U;
  reg_boundaries[1] = 152U;
  reg_boundaries[2] = 1024U;
  reg_boundaries[3] = 1116U;
  reg_boundaries[4] = 2048U;
  reg_boundaries[5] = 2176U;
  reg_boundaries[6] = 3072U;
  reg_boundaries[7] = 3088U;
  reg_boundaries[8] = 3120U;
  reg_boundaries[9] = 3336U;
  reg_boundaries[10] = 4096U;
  reg_boundaries[11] = 4124U;
  reg_boundaries[12] = 4160U;
  reg_boundaries[13] = 4168U;
  reg_boundaries[14] = 4224U;
  reg_boundaries[15] = 4260U;
  reg_boundaries[16] = 5120U;
  reg_boundaries[17] = 5264U;
  reg_boundaries[18] = 5272U;
  reg_boundaries[19] = 5360U;
  reg_boundaries[20] = 5376U;
  reg_boundaries[21] = 5468U;
  reg_boundaries[22] = 5504U;
  reg_boundaries[23] = 5596U;
  reg_boundaries[24] = 5632U;
  reg_boundaries[25] = 5720U;
  reg_boundaries[26] = 5760U;
  reg_boundaries[27] = 5848U;
  reg_boundaries[28] = 6144U;
  reg_boundaries[29] = 6176U;
  reg_boundaries[30] = 6208U;
  reg_boundaries[31] = 6228U;
  reg_boundaries[32] = 6272U;
  reg_boundaries[33] = 6292U;
  reg_boundaries[34] = 6400U;
  reg_boundaries[35] = 6532U;
  reg_boundaries[36] = 7168U;
  reg_boundaries[37] = 7180U;
  reg_boundaries[38] = 7232U;
  reg_boundaries[39] = 7252U;
  reg_boundaries[40] = 7296U;
  reg_boundaries[41] = 7316U;
  reg_boundaries[42] = 7424U;
  reg_boundaries[43] = 7556U;
  reg_boundaries[44] = 8192U;
  reg_boundaries[45] = 8240U;
  reg_boundaries[46] = 9152U;
  reg_boundaries[47] = 9216U;
  reg_boundaries[48] = 10240U;
  reg_boundaries[49] = 10272U;
  reg_boundaries[50] = 10288U;
  reg_boundaries[51] = 10320U;
  reg_boundaries[52] = 11072U;
  reg_boundaries[53] = 11280U;
  reg_boundaries[54] = 12224U;
  reg_boundaries[55] = 12376U;
  reg_boundaries[56] = 15360U;
  reg_boundaries[57] = 15508U;
  reg_boundaries[58] = 16384U;
  reg_boundaries[59] = 16400U;
  reg_boundaries[60] = 16512U;
  reg_boundaries[61] = 16528U;
  reg_boundaries[62] = 17344U;
  reg_boundaries[63] = 17496U;
  reg_boundaries[64] = 19456U;
  reg_boundaries[65] = 19480U;
  reg_boundaries[66] = 19520U;
  reg_boundaries[67] = 19540U;
  reg_boundaries[68] = 20416U;
  reg_boundaries[69] = 20496U;
  reg_boundaries[70] = 21440U;
  reg_boundaries[71] = 21572U;
  reg_boundaries[72] = 23552U;
  reg_boundaries[73] = 23576U;
  reg_boundaries[74] = 23680U;
  reg_boundaries[75] = 23696U;
  reg_boundaries[76] = 24512U;
  reg_boundaries[77] = 24576U;
  reg_boundaries[78] = 25600U;
  reg_boundaries[79] = 25640U;
  reg_boundaries[80] = 26624U;
  reg_boundaries[81] = 26696U;
  reg_boundaries[82] = 26700U;
  reg_boundaries[83] = 26720U;
  reg_boundaries[84] = 26760U;
  reg_boundaries[85] = 26896U;
  reg_boundaries[86] = 32768U;
  regs->version = 0U;
  memset((void *)p, 0, 32768UL);
  tmp___0 = netif_running((struct net_device const *)bp->dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return;
  } else {
  }
  i = 0U;
  offset = reg_boundaries[0];
  p = p + (unsigned long )offset;
  goto ldv_54323;
  ldv_54322:
  {
  tmp___2 = p;
  p = p + 1;
  *tmp___2 = readl((void const volatile *)bp->regview + (unsigned long )offset);
  offset = offset + 4U;
  }
  if (offset == reg_boundaries[i + 1U]) {
    offset = reg_boundaries[i + 2U];
    p = (u32 *)orig_p + (unsigned long )offset;
    i = i + 2U;
  } else {
  }
  ldv_54323: ;
  if (offset <= 32767U) {
    goto ldv_54322;
  } else {
  }
  return;
}
}
static void bnx2_get_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct bnx2 *bp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  }
  if ((bp->flags & 8U) != 0U) {
    wol->supported = 0U;
    wol->wolopts = 0U;
  } else {
    wol->supported = 32U;
    if ((unsigned int )bp->wol != 0U) {
      wol->wolopts = 32U;
    } else {
      wol->wolopts = 0U;
    }
  }
  {
  memset((void *)(& wol->sopass), 0, 6UL);
  }
  return;
}
}
static int bnx2_set_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct bnx2 *bp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  }
  if ((wol->wolopts & 4294967263U) != 0U) {
    return (-22);
  } else {
  }
  if ((wol->wolopts & 32U) != 0U) {
    if ((bp->flags & 8U) != 0U) {
      return (-22);
    } else {
    }
    bp->wol = 1U;
  } else {
    bp->wol = 0U;
  }
  {
  device_set_wakeup_enable(& (bp->pdev)->dev, (unsigned int )bp->wol != 0U);
  }
  return (0);
}
}
static int bnx2_nway_reset(struct net_device *dev )
{
  struct bnx2 *bp ;
  void *tmp ;
  u32 bmcr ;
  bool tmp___0 ;
  int tmp___1 ;
  int rc ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-11);
  } else {
  }
  if (((int )bp->autoneg & 1) == 0) {
    return (-22);
  } else {
  }
  {
  spin_lock_bh(& bp->phy_lock);
  }
  if ((bp->phy_flags & 2048U) != 0U) {
    {
    rc = bnx2_setup_remote_phy(bp, (int )bp->phy_port);
    spin_unlock_bh(& bp->phy_lock);
    }
    return (rc);
  } else {
  }
  if ((int )bp->phy_flags & 1) {
    {
    bnx2_write_phy(bp, bp->mii_bmcr, 16384U);
    spin_unlock_bh(& bp->phy_lock);
    msleep(20U);
    spin_lock_bh(& bp->phy_lock);
    bp->current_interval = 83U;
    bp->serdes_an_pending = 1U;
    ldv_mod_timer_30(& bp->timer, (unsigned long )jiffies + (unsigned long )bp->current_interval);
    }
  } else {
  }
  {
  bnx2_read_phy(bp, bp->mii_bmcr, & bmcr);
  bmcr = bmcr & 4294950911U;
  bnx2_write_phy(bp, bp->mii_bmcr, bmcr | 4608U);
  spin_unlock_bh(& bp->phy_lock);
  }
  return (0);
}
}
static u32 bnx2_get_link(struct net_device *dev )
{
  struct bnx2 *bp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  }
  return ((u32 )bp->link_up);
}
}
static int bnx2_get_eeprom_len(struct net_device *dev )
{
  struct bnx2 *bp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  }
  if ((unsigned long )bp->flash_info == (unsigned long )((struct flash_spec const *)0)) {
    return (0);
  } else {
  }
  return ((int )bp->flash_size);
}
}
static int bnx2_get_eeprom(struct net_device *dev , struct ethtool_eeprom *eeprom ,
                           u8 *eebuf )
{
  struct bnx2 *bp ;
  void *tmp ;
  int rc ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  rc = bnx2_nvram_read(bp, eeprom->offset, eebuf, (int )eeprom->len);
  }
  return (rc);
}
}
static int bnx2_set_eeprom(struct net_device *dev , struct ethtool_eeprom *eeprom ,
                           u8 *eebuf )
{
  struct bnx2 *bp ;
  void *tmp ;
  int rc ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  rc = bnx2_nvram_write(bp, eeprom->offset, eebuf, (int )eeprom->len);
  }
  return (rc);
}
}
static int bnx2_get_coalesce(struct net_device *dev , struct ethtool_coalesce *coal )
{
  struct bnx2 *bp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  memset((void *)coal, 0, 92UL);
  coal->rx_coalesce_usecs = (__u32 )bp->rx_ticks;
  coal->rx_max_coalesced_frames = (__u32 )bp->rx_quick_cons_trip;
  coal->rx_coalesce_usecs_irq = (__u32 )bp->rx_ticks_int;
  coal->rx_max_coalesced_frames_irq = (__u32 )bp->rx_quick_cons_trip_int;
  coal->tx_coalesce_usecs = (__u32 )bp->tx_ticks;
  coal->tx_max_coalesced_frames = (__u32 )bp->tx_quick_cons_trip;
  coal->tx_coalesce_usecs_irq = (__u32 )bp->tx_ticks_int;
  coal->tx_max_coalesced_frames_irq = (__u32 )bp->tx_quick_cons_trip_int;
  coal->stats_block_coalesce_usecs = bp->stats_ticks;
  }
  return (0);
}
}
static int bnx2_set_coalesce(struct net_device *dev , struct ethtool_coalesce *coal )
{
  struct bnx2 *bp ;
  void *tmp ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  bp->rx_ticks = (unsigned short )coal->rx_coalesce_usecs;
  }
  if ((unsigned int )bp->rx_ticks > 1023U) {
    bp->rx_ticks = 1023U;
  } else {
  }
  bp->rx_quick_cons_trip = (unsigned short )coal->rx_max_coalesced_frames;
  if ((unsigned int )bp->rx_quick_cons_trip > 255U) {
    bp->rx_quick_cons_trip = 255U;
  } else {
  }
  bp->rx_ticks_int = (unsigned short )coal->rx_coalesce_usecs_irq;
  if ((unsigned int )bp->rx_ticks_int > 1023U) {
    bp->rx_ticks_int = 1023U;
  } else {
  }
  bp->rx_quick_cons_trip_int = (unsigned short )coal->rx_max_coalesced_frames_irq;
  if ((unsigned int )bp->rx_quick_cons_trip_int > 255U) {
    bp->rx_quick_cons_trip_int = 255U;
  } else {
  }
  bp->tx_ticks = (unsigned short )coal->tx_coalesce_usecs;
  if ((unsigned int )bp->tx_ticks > 1023U) {
    bp->tx_ticks = 1023U;
  } else {
  }
  bp->tx_quick_cons_trip = (unsigned short )coal->tx_max_coalesced_frames;
  if ((unsigned int )bp->tx_quick_cons_trip > 255U) {
    bp->tx_quick_cons_trip = 255U;
  } else {
  }
  bp->tx_ticks_int = (unsigned short )coal->tx_coalesce_usecs_irq;
  if ((unsigned int )bp->tx_ticks_int > 1023U) {
    bp->tx_ticks_int = 1023U;
  } else {
  }
  bp->tx_quick_cons_trip_int = (unsigned short )coal->tx_max_coalesced_frames_irq;
  if ((unsigned int )bp->tx_quick_cons_trip_int > 255U) {
    bp->tx_quick_cons_trip_int = 255U;
  } else {
  }
  bp->stats_ticks = coal->stats_block_coalesce_usecs;
  if ((bp->flags & 8192U) != 0U) {
    if (bp->stats_ticks != 0U && bp->stats_ticks != 1000000U) {
      bp->stats_ticks = 1000000U;
    } else {
    }
  } else {
  }
  if (bp->stats_ticks > 16776960U) {
    bp->stats_ticks = 16776960U;
  } else {
  }
  {
  bp->stats_ticks = bp->stats_ticks & 16776960U;
  tmp___0 = netif_running((struct net_device const *)bp->dev);
  }
  if ((int )tmp___0) {
    {
    bnx2_netif_stop(bp, 1);
    bnx2_init_nic(bp, 0);
    bnx2_netif_start(bp, 1);
    }
  } else {
  }
  return (0);
}
}
static void bnx2_get_ringparam(struct net_device *dev , struct ethtool_ringparam *ering )
{
  struct bnx2 *bp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  ering->rx_max_pending = 2040U;
  ering->rx_jumbo_max_pending = 8160U;
  ering->rx_pending = (__u32 )bp->rx_ring_size;
  ering->rx_jumbo_pending = (__u32 )bp->rx_pg_ring_size;
  ering->tx_max_pending = 255U;
  ering->tx_pending = (__u32 )bp->tx_ring_size;
  }
  return;
}
}
static int bnx2_change_ring_size(struct bnx2 *bp , u32 rx , u32 tx , bool reset_irq )
{
  bool tmp ;
  int rc ;
  bool tmp___0 ;
  {
  {
  tmp = netif_running((struct net_device const *)bp->dev);
  }
  if ((int )tmp) {
    {
    bnx2_save_stats(bp);
    bnx2_netif_stop(bp, 1);
    bnx2_reset_chip(bp, 16777216U);
    }
    if ((int )reset_irq) {
      {
      bnx2_free_irq(bp);
      bnx2_del_napi(bp);
      }
    } else {
      {
      __bnx2_free_irq(bp);
      }
    }
    {
    bnx2_free_skbs(bp);
    bnx2_free_mem(bp);
    }
  } else {
  }
  {
  bnx2_set_rx_ring_size(bp, rx);
  bp->tx_ring_size = (int )tx;
  tmp___0 = netif_running((struct net_device const *)bp->dev);
  }
  if ((int )tmp___0) {
    rc = 0;
    if ((int )reset_irq) {
      {
      rc = bnx2_setup_int_mode(bp, disable_msi);
      bnx2_init_napi(bp);
      }
    } else {
    }
    if (rc == 0) {
      {
      rc = bnx2_alloc_mem(bp);
      }
    } else {
    }
    if (rc == 0) {
      {
      rc = bnx2_request_irq(bp);
      }
    } else {
    }
    if (rc == 0) {
      {
      rc = bnx2_init_nic(bp, 0);
      }
    } else {
    }
    if (rc != 0) {
      {
      bnx2_napi_enable(bp);
      dev_close(bp->dev);
      }
      return (rc);
    } else {
    }
    {
    ldv_mutex_lock_31(& bp->cnic_lock);
    }
    if ((int )bp->cnic_eth_dev.drv_state & 1) {
      {
      bnx2_setup_cnic_irq_info(bp);
      }
    } else {
    }
    {
    ldv_mutex_unlock_32(& bp->cnic_lock);
    bnx2_netif_start(bp, 1);
    }
  } else {
  }
  return (0);
}
}
static int bnx2_set_ringparam(struct net_device *dev , struct ethtool_ringparam *ering )
{
  struct bnx2 *bp ;
  void *tmp ;
  int rc ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  }
  if ((ering->rx_pending > 2040U || ering->tx_pending > 255U) || ering->tx_pending <= 17U) {
    return (-22);
  } else {
  }
  {
  rc = bnx2_change_ring_size(bp, ering->rx_pending, ering->tx_pending, 0);
  }
  return (rc);
}
}
static void bnx2_get_pauseparam(struct net_device *dev , struct ethtool_pauseparam *epause )
{
  struct bnx2 *bp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  epause->autoneg = ((int )bp->autoneg & 2) != 0;
  epause->rx_pause = ((int )bp->flow_ctrl & 2) != 0;
  epause->tx_pause = (__u32 )bp->flow_ctrl & 1U;
  }
  return;
}
}
static int bnx2_set_pauseparam(struct net_device *dev , struct ethtool_pauseparam *epause )
{
  struct bnx2 *bp ;
  void *tmp ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  bp->req_flow_ctrl = 0U;
  }
  if (epause->rx_pause != 0U) {
    bp->req_flow_ctrl = (u8 )((unsigned int )bp->req_flow_ctrl | 2U);
  } else {
  }
  if (epause->tx_pause != 0U) {
    bp->req_flow_ctrl = (u8 )((unsigned int )bp->req_flow_ctrl | 1U);
  } else {
  }
  if (epause->autoneg != 0U) {
    bp->autoneg = (u8 )((unsigned int )bp->autoneg | 2U);
  } else {
    bp->autoneg = (unsigned int )bp->autoneg & 253U;
  }
  {
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp___0) {
    {
    spin_lock_bh(& bp->phy_lock);
    bnx2_setup_phy(bp, (int )bp->phy_port);
    spin_unlock_bh(& bp->phy_lock);
    }
  } else {
  }
  return (0);
}
}
static struct __anonstruct_bnx2_stats_str_arr_294 bnx2_stats_str_arr[47U] =
  { {{'r', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}},
        {{'r', 'x', '_', 'e', 'r', 'r', 'o', 'r', '_', 'b', 'y', 't', 'e', 's', '\000'}},
        {{'t',
       'x', '_', 'b', 'y', 't', 'e', 's', '\000'}},
        {{'t', 'x', '_', 'e', 'r', 'r', 'o', 'r', '_', 'b', 'y', 't', 'e', 's', '\000'}},
        {{'r',
       'x', '_', 'u', 'c', 'a', 's', 't', '_', 'p', 'a', 'c', 'k', 'e', 't', 's',
       '\000'}},
        {{'r', 'x', '_', 'm', 'c', 'a', 's', 't', '_', 'p', 'a', 'c', 'k', 'e', 't',
       's', '\000'}},
        {{'r', 'x', '_', 'b', 'c', 'a', 's', 't', '_', 'p', 'a', 'c', 'k', 'e', 't',
       's', '\000'}},
        {{'t', 'x', '_', 'u', 'c', 'a', 's', 't', '_', 'p', 'a', 'c', 'k', 'e', 't',
       's', '\000'}},
        {{'t', 'x', '_', 'm', 'c', 'a', 's', 't', '_', 'p', 'a', 'c', 'k', 'e', 't',
       's', '\000'}},
        {{'t', 'x', '_', 'b', 'c', 'a', 's', 't', '_', 'p', 'a', 'c', 'k', 'e', 't',
       's', '\000'}},
        {{'t', 'x', '_', 'm', 'a', 'c', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'a', 'r', 'r', 'i', 'e', 'r', '_', 'e', 'r', 'r', 'o',
       'r', 's', '\000'}},
        {{'r', 'x', '_', 'c', 'r', 'c', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}},
        {{'r', 'x', '_', 'a', 'l', 'i', 'g', 'n', '_', 'e', 'r', 'r', 'o', 'r', 's',
       '\000'}},
        {{'t', 'x', '_', 's', 'i', 'n', 'g', 'l', 'e', '_', 'c', 'o', 'l', 'l', 'i',
       's', 'i', 'o', 'n', 's', '\000'}},
        {{'t', 'x', '_', 'm', 'u', 'l', 't', 'i', '_', 'c', 'o', 'l', 'l', 'i', 's',
       'i', 'o', 'n', 's', '\000'}},
        {{'t', 'x', '_', 'd', 'e', 'f', 'e', 'r', 'r', 'e', 'd', '\000'}},
        {{'t', 'x', '_', 'e', 'x', 'c', 'e', 's', 's', '_', 'c', 'o', 'l', 'l', 'i',
       's', 'i', 'o', 'n', 's', '\000'}},
        {{'t', 'x', '_', 'l', 'a', 't', 'e', '_', 'c', 'o', 'l', 'l', 'i', 's', 'i',
       'o', 'n', 's', '\000'}},
        {{'t', 'x', '_', 't', 'o', 't', 'a', 'l', '_', 'c', 'o', 'l', 'l', 'i', 's',
       'i', 'o', 'n', 's', '\000'}},
        {{'r', 'x', '_', 'f', 'r', 'a', 'g', 'm', 'e', 'n', 't', 's', '\000'}},
        {{'r', 'x', '_', 'j', 'a', 'b', 'b', 'e', 'r', 's', '\000'}},
        {{'r', 'x', '_', 'u', 'n', 'd', 'e', 'r', 's', 'i', 'z', 'e', '_', 'p', 'a',
       'c', 'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', 'o', 'v', 'e', 'r', 's', 'i', 'z', 'e', '_', 'p', 'a', 'c',
       'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', '6', '4', '_', 'b', 'y', 't', 'e', '_', 'p', 'a', 'c', 'k',
       'e', 't', 's', '\000'}},
        {{'r', 'x', '_', '6', '5', '_', 't', 'o', '_', '1', '2', '7', '_', 'b', 'y',
       't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', '1', '2', '8', '_', 't', 'o', '_', '2', '5', '5', '_', 'b',
       'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', '2', '5', '6', '_', 't', 'o', '_', '5', '1', '1', '_', 'b',
       'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', '5', '1', '2', '_', 't', 'o', '_', '1', '0', '2', '3', '_',
       'b', 'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', '1', '0', '2', '4', '_', 't', 'o', '_', '1', '5', '2', '2',
       '_', 'b', 'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', '1', '5', '2', '3', '_', 't', 'o', '_', '9', '0', '2', '2',
       '_', 'b', 'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'t', 'x', '_', '6', '4', '_', 'b', 'y', 't', 'e', '_', 'p', 'a', 'c', 'k',
       'e', 't', 's', '\000'}},
        {{'t', 'x', '_', '6', '5', '_', 't', 'o', '_', '1', '2', '7', '_', 'b', 'y',
       't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'t', 'x', '_', '1', '2', '8', '_', 't', 'o', '_', '2', '5', '5', '_', 'b',
       'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'t', 'x', '_', '2', '5', '6', '_', 't', 'o', '_', '5', '1', '1', '_', 'b',
       'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'t', 'x', '_', '5', '1', '2', '_', 't', 'o', '_', '1', '0', '2', '3', '_',
       'b', 'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'t', 'x', '_', '1', '0', '2', '4', '_', 't', 'o', '_', '1', '5', '2', '2',
       '_', 'b', 'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'t', 'x', '_', '1', '5', '2', '3', '_', 't', 'o', '_', '9', '0', '2', '2',
       '_', 'b', 'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', 'x', 'o', 'n', '_', 'f', 'r', 'a', 'm', 'e', 's', '\000'}},
        {{'r', 'x', '_', 'x', 'o', 'f', 'f', '_', 'f', 'r', 'a', 'm', 'e', 's', '\000'}},
        {{'t',
       'x', '_', 'x', 'o', 'n', '_', 'f', 'r', 'a', 'm', 'e', 's', '\000'}},
        {{'t', 'x', '_', 'x', 'o', 'f', 'f', '_', 'f', 'r', 'a', 'm', 'e', 's', '\000'}},
        {{'r',
       'x', '_', 'm', 'a', 'c', '_', 'c', 't', 'r', 'l', '_', 'f', 'r', 'a', 'm',
       'e', 's', '\000'}},
        {{'r', 'x', '_', 'f', 'i', 'l', 't', 'e', 'r', 'e', 'd', '_', 'p', 'a', 'c',
       'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', 'f', 't', 'q', '_', 'd', 'i', 's', 'c', 'a', 'r', 'd', 's',
       '\000'}},
        {{'r', 'x', '_', 'd', 'i', 's', 'c', 'a', 'r', 'd', 's', '\000'}},
        {{'r', 'x', '_', 'f', 'w', '_', 'd', 'i', 's', 'c', 'a', 'r', 'd', 's', '\000'}}};
static unsigned long const bnx2_stats_offset_arr[47U] =
  { 0UL, 2UL, 4UL, 6UL,
        8UL, 10UL, 12UL, 14UL,
        16UL, 18UL, 20UL, 21UL,
        22UL, 23UL, 24UL, 25UL,
        26UL, 27UL, 28UL, 29UL,
        30UL, 31UL, 32UL, 33UL,
        34UL, 35UL, 36UL, 37UL,
        38UL, 39UL, 40UL, 41UL,
        42UL, 43UL, 44UL, 45UL,
        46UL, 47UL, 48UL, 49UL,
        50UL, 51UL, 53UL, 55UL,
        57UL, 58UL, 80UL};
static u8 bnx2_5706_stats_len_arr[47U] =
  { 8U, 0U, 8U, 8U,
        8U, 8U, 8U, 8U,
        8U, 8U, 4U, 0U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U};
static u8 bnx2_5708_stats_len_arr[47U] =
  { 8U, 0U, 8U, 8U,
        8U, 8U, 8U, 8U,
        8U, 8U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U};
static struct __anonstruct_bnx2_tests_str_arr_295 bnx2_tests_str_arr[6U] = { {{'r', 'e', 'g', 'i', 's', 't', 'e', 'r', '_', 't', 'e', 's', 't', ' ', '(',
       'o', 'f', 'f', 'l', 'i', 'n', 'e', ')', '\000'}},
        {{'m', 'e', 'm', 'o', 'r', 'y', '_', 't', 'e', 's', 't', ' ', '(', 'o', 'f',
       'f', 'l', 'i', 'n', 'e', ')', '\000'}},
        {{'l', 'o', 'o', 'p', 'b', 'a', 'c', 'k', '_', 't', 'e', 's', 't', ' ', '(',
       'o', 'f', 'f', 'l', 'i', 'n', 'e', ')', '\000'}},
        {{'n', 'v', 'r', 'a', 'm', '_', 't', 'e', 's', 't', ' ', '(', 'o', 'n', 'l',
       'i', 'n', 'e', ')', '\000'}},
        {{'i', 'n', 't', 'e', 'r', 'r', 'u', 'p', 't', '_', 't', 'e', 's', 't', ' ',
       '(', 'o', 'n', 'l', 'i', 'n', 'e', ')', '\000'}},
        {{'l', 'i', 'n', 'k', '_', 't', 'e', 's', 't', ' ', '(', 'o', 'n', 'l', 'i',
       'n', 'e', ')', '\000'}}};
static int bnx2_get_sset_count(struct net_device *dev , int sset )
{
  {
  {
  if (sset == 0) {
    goto case_0;
  } else {
  }
  if (sset == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (6);
  case_1: ;
  return (47);
  switch_default: ;
  return (-95);
  switch_break: ;
  }
}
}
static void bnx2_self_test(struct net_device *dev , struct ethtool_test *etest , u64 *buf )
{
  struct bnx2 *bp ;
  void *tmp ;
  int i ;
  int tmp___0 ;
  int tmp___1 ;
  u64 tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  memset((void *)buf, 0, 48UL);
  }
  if ((int )etest->flags & 1) {
    {
    bnx2_netif_stop(bp, 1);
    bnx2_reset_chip(bp, 117440512U);
    bnx2_free_skbs(bp);
    tmp___0 = bnx2_test_registers(bp);
    }
    if (tmp___0 != 0) {
      *buf = 1ULL;
      etest->flags = etest->flags | 2U;
    } else {
    }
    {
    tmp___1 = bnx2_test_memory(bp);
    }
    if (tmp___1 != 0) {
      *(buf + 1UL) = 1ULL;
      etest->flags = etest->flags | 2U;
    } else {
    }
    {
    tmp___3 = bnx2_test_loopback(bp);
    tmp___2 = (u64 )tmp___3;
    *(buf + 2UL) = tmp___2;
    }
    if (tmp___2 != 0ULL) {
      etest->flags = etest->flags | 2U;
    } else {
    }
    {
    tmp___4 = netif_running((struct net_device const *)bp->dev);
    }
    if (tmp___4) {
      tmp___5 = 0;
    } else {
      tmp___5 = 1;
    }
    if (tmp___5) {
      {
      bnx2_shutdown_chip(bp);
      }
    } else {
      {
      bnx2_init_nic(bp, 1);
      bnx2_netif_start(bp, 1);
      }
    }
    i = 0;
    goto ldv_54434;
    ldv_54433: ;
    if ((unsigned int )bp->link_up != 0U) {
      goto ldv_54432;
    } else {
    }
    {
    msleep_interruptible(1000U);
    i = i + 1;
    }
    ldv_54434: ;
    if (i <= 6) {
      goto ldv_54433;
    } else {
    }
    ldv_54432: ;
  } else {
  }
  {
  tmp___6 = bnx2_test_nvram(bp);
  }
  if (tmp___6 != 0) {
    *(buf + 3UL) = 1ULL;
    etest->flags = etest->flags | 2U;
  } else {
  }
  {
  tmp___7 = bnx2_test_intr(bp);
  }
  if (tmp___7 != 0) {
    *(buf + 4UL) = 1ULL;
    etest->flags = etest->flags | 2U;
  } else {
  }
  {
  tmp___8 = bnx2_test_link(bp);
  }
  if (tmp___8 != 0) {
    *(buf + 5UL) = 1ULL;
    etest->flags = etest->flags | 2U;
  } else {
  }
  return;
}
}
static void bnx2_get_strings(struct net_device *dev , u32 stringset , u8 *buf )
{
  {
  {
  if (stringset == 1U) {
    goto case_1;
  } else {
  }
  if (stringset == 0U) {
    goto case_0;
  } else {
  }
  goto switch_break;
  case_1:
  {
  memcpy((void *)buf, (void const *)(& bnx2_stats_str_arr), 1504UL);
  }
  goto ldv_54441;
  case_0:
  {
  memcpy((void *)buf, (void const *)(& bnx2_tests_str_arr), 192UL);
  }
  goto ldv_54441;
  switch_break: ;
  }
  ldv_54441: ;
  return;
}
}
static void bnx2_get_ethtool_stats(struct net_device *dev , struct ethtool_stats *stats ,
                                   u64 *buf )
{
  struct bnx2 *bp ;
  void *tmp ;
  int i ;
  u32 *hw_stats ;
  u32 *temp_stats ;
  u8 *stats_len_arr ;
  unsigned long offset ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  hw_stats = (u32 *)bp->stats_blk;
  temp_stats = (u32 *)bp->temp_stats_blk;
  stats_len_arr = (u8 *)0U;
  }
  if ((unsigned long )hw_stats == (unsigned long )((u32 *)0U)) {
    {
    memset((void *)buf, 0, 376UL);
    }
    return;
  } else {
  }
  if ((((bp->chip_id & 4294967280U) == 1460011008U || (bp->chip_id & 4294967280U) == 1460011024U) || (bp->chip_id & 4294967280U) == 1460011040U) || (bp->chip_id & 4294967280U) == 1460142080U) {
    stats_len_arr = (u8 *)(& bnx2_5706_stats_len_arr);
  } else {
    stats_len_arr = (u8 *)(& bnx2_5708_stats_len_arr);
  }
  i = 0;
  goto ldv_54460;
  ldv_54459: ;
  if ((unsigned int )*(stats_len_arr + (unsigned long )i) == 0U) {
    *(buf + (unsigned long )i) = 0ULL;
    goto ldv_54458;
  } else {
  }
  offset = bnx2_stats_offset_arr[i];
  if ((unsigned int )*(stats_len_arr + (unsigned long )i) == 4U) {
    *(buf + (unsigned long )i) = (unsigned long long )*(hw_stats + offset) + (unsigned long long )*(temp_stats + offset);
    goto ldv_54458;
  } else {
  }
  *(buf + (unsigned long )i) = ((((unsigned long long )*(hw_stats + offset) << 32) + (unsigned long long )*(hw_stats + (offset + 1UL))) + ((unsigned long long )*(temp_stats + offset) << 32)) + (unsigned long long )*(temp_stats + (offset + 1UL));
  ldv_54458:
  i = i + 1;
  ldv_54460: ;
  if ((unsigned int )i <= 46U) {
    goto ldv_54459;
  } else {
  }
  return;
}
}
static int bnx2_set_phys_id(struct net_device *dev , enum ethtool_phys_id_state state )
{
  struct bnx2 *bp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  }
  {
  if ((unsigned int )state == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )state == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )state == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )state == 0U) {
    goto case_0;
  } else {
  }
  goto switch_break;
  case_1:
  {
  bp->leds_save = readl((void const volatile *)bp->regview + 2052U);
  writel(0U, (void volatile *)bp->regview + 2052U);
  }
  return (1);
  case_2:
  {
  writel(95U, (void volatile *)bp->regview + 5132U);
  }
  goto ldv_54469;
  case_3:
  {
  writel(1U, (void volatile *)bp->regview + 5132U);
  }
  goto ldv_54469;
  case_0:
  {
  writel(0U, (void volatile *)bp->regview + 5132U);
  writel(bp->leds_save, (void volatile *)bp->regview + 2052U);
  }
  goto ldv_54469;
  switch_break: ;
  }
  ldv_54469: ;
  return (0);
}
}
static netdev_features_t bnx2_fix_features(struct net_device *dev , netdev_features_t features )
{
  struct bnx2 *bp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  }
  if ((bp->flags & 4096U) == 0U) {
    features = features | 256ULL;
  } else {
  }
  return (features);
}
}
static int bnx2_set_features(struct net_device *dev , netdev_features_t features )
{
  struct bnx2 *bp ;
  void *tmp ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  }
  if ((features & 128ULL) != 0ULL) {
    dev->vlan_features = dev->vlan_features | (dev->hw_features & 1638400ULL);
  } else {
    dev->vlan_features = dev->vlan_features & 0xffffffffffe6ffffULL;
  }
  if (((features & 256ULL) != 0ULL) ^ (((long )bp->rx_mode & 1024L) != 0L)) {
    {
    tmp___0 = netif_running((struct net_device const *)dev);
    }
    if ((int )tmp___0) {
      {
      bnx2_netif_stop(bp, 0);
      dev->features = features;
      bnx2_set_rx_mode(dev);
      bnx2_fw_sync(bp, 218103808U, 0, 1);
      bnx2_netif_start(bp, 0);
      }
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
static void bnx2_get_channels(struct net_device *dev , struct ethtool_channels *channels )
{
  struct bnx2 *bp ;
  void *tmp ;
  u32 max_rx_rings ;
  u32 max_tx_rings ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  max_rx_rings = 1U;
  max_tx_rings = 1U;
  }
  if ((bp->flags & 4U) != 0U && disable_msi == 0) {
    max_rx_rings = 8U;
    max_tx_rings = 8U;
  } else {
  }
  channels->max_rx = max_rx_rings;
  channels->max_tx = max_tx_rings;
  channels->max_other = 0U;
  channels->max_combined = 0U;
  channels->rx_count = (__u32 )bp->num_rx_rings;
  channels->tx_count = (__u32 )bp->num_tx_rings;
  channels->other_count = 0U;
  channels->combined_count = 0U;
  return;
}
}
static int bnx2_set_channels(struct net_device *dev , struct ethtool_channels *channels )
{
  struct bnx2 *bp ;
  void *tmp ;
  u32 max_rx_rings ;
  u32 max_tx_rings ;
  int rc ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  max_rx_rings = 1U;
  max_tx_rings = 1U;
  rc = 0;
  }
  if ((bp->flags & 4U) != 0U && disable_msi == 0) {
    max_rx_rings = 8U;
    max_tx_rings = 8U;
  } else {
  }
  if (channels->rx_count > max_rx_rings || channels->tx_count > max_tx_rings) {
    return (-22);
  } else {
  }
  {
  bp->num_req_rx_rings = (int )channels->rx_count;
  bp->num_req_tx_rings = (int )channels->tx_count;
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp___0) {
    {
    rc = bnx2_change_ring_size(bp, (u32 )bp->rx_ring_size, (u32 )bp->tx_ring_size,
                               1);
    }
  } else {
  }
  return (rc);
}
}
static struct ethtool_ops const bnx2_ethtool_ops =
     {& bnx2_get_settings, & bnx2_set_settings, & bnx2_get_drvinfo, & bnx2_get_regs_len,
    & bnx2_get_regs, & bnx2_get_wol, & bnx2_set_wol, 0, 0, & bnx2_nway_reset, & bnx2_get_link,
    & bnx2_get_eeprom_len, & bnx2_get_eeprom, & bnx2_set_eeprom, & bnx2_get_coalesce,
    & bnx2_set_coalesce, & bnx2_get_ringparam, & bnx2_set_ringparam, & bnx2_get_pauseparam,
    & bnx2_set_pauseparam, & bnx2_self_test, & bnx2_get_strings, & bnx2_set_phys_id,
    & bnx2_get_ethtool_stats, 0, 0, 0, 0, & bnx2_get_sset_count, 0, 0, 0, 0, 0, 0,
    0, & bnx2_get_channels, & bnx2_set_channels, 0, 0, 0, 0, 0, 0, 0, 0};
static int bnx2_ioctl(struct net_device *dev , struct ifreq *ifr , int cmd )
{
  struct mii_ioctl_data *data ;
  struct mii_ioctl_data *tmp ;
  struct bnx2 *bp ;
  void *tmp___0 ;
  int err ;
  u32 mii_regval ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  {
  tmp = if_mii(ifr);
  data = tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp___0;
  }
  {
  if (cmd == 35143) {
    goto case_35143;
  } else {
  }
  if (cmd == 35144) {
    goto case_35144;
  } else {
  }
  if (cmd == 35145) {
    goto case_35145;
  } else {
  }
  goto switch_default;
  case_35143:
  data->phy_id = (__u16 )bp->phy_addr;
  case_35144: ;
  if ((bp->phy_flags & 2048U) != 0U) {
    return (-95);
  } else {
  }
  {
  tmp___1 = netif_running((struct net_device const *)dev);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (-11);
  } else {
  }
  {
  spin_lock_bh(& bp->phy_lock);
  err = bnx2_read_phy(bp, (u32 )data->reg_num & 31U, & mii_regval);
  spin_unlock_bh(& bp->phy_lock);
  data->val_out = (__u16 )mii_regval;
  }
  return (err);
  case_35145: ;
  if ((bp->phy_flags & 2048U) != 0U) {
    return (-95);
  } else {
  }
  {
  tmp___3 = netif_running((struct net_device const *)dev);
  }
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    return (-11);
  } else {
  }
  {
  spin_lock_bh(& bp->phy_lock);
  err = bnx2_write_phy(bp, (u32 )data->reg_num & 31U, (u32 )data->val_in);
  spin_unlock_bh(& bp->phy_lock);
  }
  return (err);
  switch_default: ;
  goto ldv_54511;
  switch_break: ;
  }
  ldv_54511: ;
  return (-95);
}
}
static int bnx2_change_mac_addr(struct net_device *dev , void *p )
{
  struct sockaddr *addr ;
  struct bnx2 *bp ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  {
  addr = (struct sockaddr *)p;
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  tmp___0 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-99);
  } else {
  }
  {
  memcpy((void *)dev->dev_addr, (void const *)(& addr->sa_data), (size_t )dev->addr_len);
  tmp___2 = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp___2) {
    {
    bnx2_set_mac_addr(bp, (bp->dev)->dev_addr, 0U);
    }
  } else {
  }
  return (0);
}
}
static int bnx2_change_mtu(struct net_device *dev , int new_mtu )
{
  struct bnx2 *bp ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  }
  if ((unsigned int )new_mtu - 46U > 8954U) {
    return (-22);
  } else {
  }
  {
  dev->mtu = (unsigned int )new_mtu;
  tmp___0 = bnx2_change_ring_size(bp, (u32 )bp->rx_ring_size, (u32 )bp->tx_ring_size,
                                  0);
  }
  return (tmp___0);
}
}
static void poll_bnx2(struct net_device *dev )
{
  struct bnx2 *bp ;
  void *tmp ;
  int i ;
  struct bnx2_irq *irq ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  i = 0;
  }
  goto ldv_54530;
  ldv_54529:
  {
  irq = (struct bnx2_irq *)(& bp->irq_tbl) + (unsigned long )i;
  disable_irq(irq->vector);
  (*(irq->handler))((int )irq->vector, (void *)(& bp->bnx2_napi) + (unsigned long )i);
  enable_irq(irq->vector);
  i = i + 1;
  }
  ldv_54530: ;
  if (i < bp->irq_nvecs) {
    goto ldv_54529;
  } else {
  }
  return;
}
}
static void bnx2_get_5709_media(struct bnx2 *bp )
{
  u32 val ;
  unsigned int tmp ;
  u32 bond_id ;
  u32 strap ;
  {
  {
  tmp = readl((void const volatile *)bp->regview + 2284U);
  val = tmp;
  bond_id = val & 255U;
  }
  if (bond_id == 3U) {
    return;
  } else
  if (bond_id == 12U) {
    bp->phy_flags = bp->phy_flags | 1U;
    return;
  } else {
  }
  if (((long )val & 33554432L) != 0L) {
    strap = (u32 )(((long )val & 14680064L) >> 21);
  } else {
    strap = (u32 )(((long )val & 1792L) >> 8);
  }
  if ((unsigned int )bp->func == 0U) {
    {
    if (strap == 4U) {
      goto case_4;
    } else {
    }
    if (strap == 5U) {
      goto case_5;
    } else {
    }
    if (strap == 6U) {
      goto case_6;
    } else {
    }
    goto switch_break;
    case_4: ;
    case_5: ;
    case_6:
    bp->phy_flags = bp->phy_flags | 1U;
    return;
    switch_break: ;
    }
  } else {
    {
    if (strap == 1U) {
      goto case_1;
    } else {
    }
    if (strap == 2U) {
      goto case_2;
    } else {
    }
    if (strap == 4U) {
      goto case_4___0;
    } else {
    }
    goto switch_break___0;
    case_1: ;
    case_2: ;
    case_4___0:
    bp->phy_flags = bp->phy_flags | 1U;
    return;
    switch_break___0: ;
    }
  }
  return;
}
}
static void bnx2_get_pci_speed(struct bnx2 *bp )
{
  u32 reg ;
  u32 clkreg ;
  {
  {
  reg = readl((void const volatile *)bp->regview + 108U);
  }
  if (((long )reg & 8L) != 0L) {
    {
    bp->flags = bp->flags | 1U;
    clkreg = readl((void const volatile *)bp->regview + 112U);
    clkreg = clkreg & 15U;
    }
    {
    if (clkreg == 7U) {
      goto case_7;
    } else {
    }
    if (clkreg == 6U) {
      goto case_6;
    } else {
    }
    if (clkreg == 4U) {
      goto case_4;
    } else {
    }
    if (clkreg == 5U) {
      goto case_5;
    } else {
    }
    if (clkreg == 2U) {
      goto case_2;
    } else {
    }
    if (clkreg == 3U) {
      goto case_3;
    } else {
    }
    if (clkreg == 15U) {
      goto case_15;
    } else {
    }
    if (clkreg == 0U) {
      goto case_0;
    } else {
    }
    if (clkreg == 1U) {
      goto case_1;
    } else {
    }
    goto switch_break;
    case_7:
    bp->bus_speed_mhz = 133U;
    goto ldv_54550;
    case_6:
    bp->bus_speed_mhz = 100U;
    goto ldv_54550;
    case_4: ;
    case_5:
    bp->bus_speed_mhz = 66U;
    goto ldv_54550;
    case_2: ;
    case_3:
    bp->bus_speed_mhz = 50U;
    goto ldv_54550;
    case_15: ;
    case_0: ;
    case_1:
    bp->bus_speed_mhz = 33U;
    goto ldv_54550;
    switch_break: ;
    }
    ldv_54550: ;
  } else
  if (((long )reg & 4L) != 0L) {
    bp->bus_speed_mhz = 66U;
  } else {
    bp->bus_speed_mhz = 33U;
  }
  if (((long )reg & 2L) != 0L) {
    bp->flags = bp->flags | 2U;
  } else {
  }
  return;
}
}
static void bnx2_read_vpd_fw_ver(struct bnx2 *bp )
{
  int rc ;
  int i ;
  int j ;
  u8 *data ;
  unsigned int block_end ;
  unsigned int rosize ;
  unsigned int len ;
  void *tmp ;
  u16 tmp___0 ;
  u8 tmp___1 ;
  int tmp___2 ;
  u8 tmp___3 ;
  {
  {
  tmp = kmalloc(256UL, 208U);
  data = (u8 *)tmp;
  }
  if ((unsigned long )data == (unsigned long )((u8 *)0U)) {
    return;
  } else {
  }
  {
  rc = bnx2_nvram_read(bp, 768U, data + 128UL, 128);
  }
  if (rc != 0) {
    goto vpd_done;
  } else {
  }
  i = 0;
  goto ldv_54571;
  ldv_54570:
  *(data + (unsigned long )i) = *(data + ((unsigned long )(i + 128) + 3UL));
  *(data + ((unsigned long )i + 1UL)) = *(data + ((unsigned long )(i + 128) + 2UL));
  *(data + ((unsigned long )i + 2UL)) = *(data + ((unsigned long )(i + 128) + 1UL));
  *(data + ((unsigned long )i + 3UL)) = *(data + ((unsigned long )i + 128UL));
  i = i + 4;
  ldv_54571: ;
  if (i <= 127) {
    goto ldv_54570;
  } else {
  }
  {
  i = pci_vpd_find_tag((u8 const *)data, 0U, 128U, 144);
  }
  if (i < 0) {
    goto vpd_done;
  } else {
  }
  {
  tmp___0 = pci_vpd_lrdt_size((u8 const *)data + (unsigned long )i);
  rosize = (unsigned int )tmp___0;
  i = i + 3;
  block_end = (unsigned int )i + rosize;
  }
  if (block_end > 128U) {
    goto vpd_done;
  } else {
  }
  {
  j = pci_vpd_find_info_keyword((u8 const *)data, (unsigned int )i, rosize, "MN");
  }
  if (j < 0) {
    goto vpd_done;
  } else {
  }
  {
  tmp___1 = pci_vpd_info_field_size((u8 const *)data + (unsigned long )j);
  len = (unsigned int )tmp___1;
  j = j + 3;
  }
  if ((unsigned int )j + len > block_end || len != 4U) {
    goto vpd_done;
  } else {
    {
    tmp___2 = memcmp((void const *)data + (unsigned long )j, (void const *)"1028",
                     4UL);
    }
    if (tmp___2 != 0) {
      goto vpd_done;
    } else {
    }
  }
  {
  j = pci_vpd_find_info_keyword((u8 const *)data, (unsigned int )i, rosize, "V0");
  }
  if (j < 0) {
    goto vpd_done;
  } else {
  }
  {
  tmp___3 = pci_vpd_info_field_size((u8 const *)data + (unsigned long )j);
  len = (unsigned int )tmp___3;
  j = j + 3;
  }
  if ((unsigned int )j + len > block_end || len > 30U) {
    goto vpd_done;
  } else {
  }
  {
  memcpy((void *)(& bp->fw_version), (void const *)data + (unsigned long )j, (size_t )len);
  bp->fw_version[len] = 32;
  }
  vpd_done:
  {
  kfree((void const *)data);
  }
  return;
}
}
static int bnx2_init_board(struct pci_dev *pdev , struct net_device *dev )
{
  struct bnx2 *bp ;
  int rc ;
  int i ;
  int j ;
  u32 reg ;
  u64 dma_mask ;
  u64 persist_dma_mask ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  u32 off ;
  size_t tmp___5 ;
  u8 num ;
  u8 k ;
  u8 skip0 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  u32 addr ;
  u32 tmp___11 ;
  int tmp___12 ;
  __u32 tmp___13 ;
  unsigned int tmp___14 ;
  struct pci_dev *amd_8132 ;
  struct lock_class_key __key___3 ;
  u32 tmp___15 ;
  u32 tmp___16 ;
  {
  {
  dev->dev.parent = & pdev->dev;
  tmp = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp;
  bp->flags = 0U;
  bp->phy_flags = 0U;
  tmp___0 = kzalloc(324UL, 208U);
  bp->temp_stats_blk = (struct statistics_block *)tmp___0;
  }
  if ((unsigned long )bp->temp_stats_blk == (unsigned long )((struct statistics_block *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  {
  rc = pci_enable_device(pdev);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot enable PCI device, aborting\n");
    }
    goto err_out;
  } else {
  }
  if ((pdev->resource[0].flags & 512UL) == 0UL) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot find PCI device base address, aborting\n");
    rc = -19;
    }
    goto err_out_disable;
  } else {
  }
  {
  rc = pci_request_regions(pdev, "bnx2");
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot obtain PCI resources, aborting\n");
    }
    goto err_out_disable;
  } else {
  }
  {
  pci_set_master(pdev);
  bp->pm_cap = (int )pdev->pm_cap;
  }
  if (bp->pm_cap == 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot find power management capability, aborting\n");
    rc = -5;
    }
    goto err_out_release;
  } else {
  }
  {
  bp->dev = dev;
  bp->pdev = pdev;
  spinlock_check(& bp->phy_lock);
  __raw_spin_lock_init(& bp->phy_lock.__annonCompField19.rlock, "&(&bp->phy_lock)->rlock",
                       & __key);
  spinlock_check(& bp->indirect_lock);
  __raw_spin_lock_init(& bp->indirect_lock.__annonCompField19.rlock, "&(&bp->indirect_lock)->rlock",
                       & __key___0);
  __mutex_init(& bp->cnic_lock, "&bp->cnic_lock", & __key___1);
  __init_work(& bp->reset_task, 0);
  __constr_expr_0.counter = 137438953408L;
  bp->reset_task.data = __constr_expr_0;
  lockdep_init_map(& bp->reset_task.lockdep_map, "(&bp->reset_task)", & __key___2,
                   0);
  INIT_LIST_HEAD(& bp->reset_task.entry);
  bp->reset_task.func = & bnx2_reset_task;
  bp->regview = pci_iomap(pdev, 0, 75776UL);
  }
  if ((unsigned long )bp->regview == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot map register space, aborting\n");
    rc = -12;
    }
    goto err_out_release;
  } else {
  }
  {
  writel(136U, (void volatile *)bp->regview + 104U);
  bp->chip_id = readl((void const volatile *)bp->regview + 2056U);
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    {
    tmp___1 = pci_is_pcie(pdev);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      {
      dev_err((struct device const *)(& pdev->dev), "Not PCIE, aborting\n");
      rc = -5;
      }
      goto err_out_unmap;
    } else {
    }
    bp->flags = bp->flags | 512U;
    if ((bp->chip_id & 61440U) == 0U) {
      bp->flags = bp->flags | 2048U;
    } else {
    }
    {
    err = pci_enable_pcie_error_reporting(pdev);
    }
    if (err == 0) {
      bp->flags = bp->flags | 16384U;
    } else {
    }
  } else {
    {
    bp->pcix_cap = pci_find_capability(pdev, 7);
    }
    if (bp->pcix_cap == 0) {
      {
      dev_err((struct device const *)(& pdev->dev), "Cannot find PCIX capability, aborting\n");
      rc = -5;
      }
      goto err_out_unmap;
    } else {
    }
    bp->flags = bp->flags | 8192U;
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U && (bp->chip_id & 61440U) != 0U) {
    if ((unsigned int )pdev->msix_cap != 0U) {
      bp->flags = bp->flags | 4U;
    } else {
    }
  } else {
  }
  if ((bp->chip_id & 4294967280U) != 1460011008U && (bp->chip_id & 4294967280U) != 1460011024U) {
    if ((unsigned int )pdev->msi_cap != 0U) {
      bp->flags = bp->flags | 128U;
    } else {
    }
  } else {
  }
  if ((bp->chip_id & 4294901760U) == 1460142080U) {
    dma_mask = 1099511627775ULL;
    persist_dma_mask = dma_mask;
  } else {
    dma_mask = 0xffffffffffffffffULL;
    persist_dma_mask = dma_mask;
  }
  {
  tmp___3 = pci_set_dma_mask(pdev, dma_mask);
  }
  if (tmp___3 == 0) {
    {
    dev->features = dev->features | 32ULL;
    rc = pci_set_consistent_dma_mask(pdev, persist_dma_mask);
    }
    if (rc != 0) {
      {
      dev_err((struct device const *)(& pdev->dev), "pci_set_consistent_dma_mask failed, aborting\n");
      }
      goto err_out_unmap;
    } else {
    }
  } else {
    {
    rc = pci_set_dma_mask(pdev, 4294967295ULL);
    }
    if (rc != 0) {
      {
      dev_err((struct device const *)(& pdev->dev), "System does not support DMA, aborting\n");
      }
      goto err_out_unmap;
    } else {
    }
  }
  if ((bp->flags & 512U) == 0U) {
    {
    bnx2_get_pci_speed(bp);
    }
  } else {
  }
  if ((bp->chip_id & 4294967280U) == 1460011008U) {
    {
    reg = readl((void const volatile *)bp->regview + 4U);
    reg = reg & 4294966975U;
    writel(reg, (void volatile *)bp->regview + 4U);
    }
  } else
  if ((bp->chip_id & 4294967280U) == 1460011024U && (bp->flags & 1U) == 0U) {
    {
    dev_err((struct device const *)(& pdev->dev), "5706 A1 can only be used in a PCIX bus, aborting\n");
    }
    goto err_out_unmap;
  } else {
  }
  {
  bnx2_init_nvram(bp);
  reg = bnx2_reg_rd_ind(bp, 1441792U);
  tmp___4 = bnx2_reg_rd_ind(bp, 1310880U);
  }
  if ((int )tmp___4 < 0) {
    bp->func = 1U;
  } else {
  }
  if ((reg & 4294901760U) == 1397948416U) {
    {
    off = (u32 )((int )bp->func << 2);
    bp->shmem_base = bnx2_reg_rd_ind(bp, off + 1441796U);
    }
  } else {
    bp->shmem_base = 1473536U;
  }
  {
  reg = bnx2_shmem_rd(bp, 32U);
  }
  if ((reg & 4294967040U) != 1146505472U) {
    {
    dev_err((struct device const *)(& pdev->dev), "Firmware not running, aborting\n");
    rc = -19;
    }
    goto err_out_unmap;
  } else {
  }
  {
  bnx2_read_vpd_fw_ver(bp);
  tmp___5 = strlen((char const *)(& bp->fw_version));
  j = (int )tmp___5;
  reg = bnx2_shmem_rd(bp, 76U);
  i = 0;
  }
  goto ldv_54602;
  ldv_54601: ;
  if (i == 0) {
    tmp___6 = j;
    j = j + 1;
    bp->fw_version[tmp___6] = 98;
    tmp___7 = j;
    j = j + 1;
    bp->fw_version[tmp___7] = 99;
    tmp___8 = j;
    j = j + 1;
    bp->fw_version[tmp___8] = 32;
  } else {
  }
  num = (unsigned char )(reg >> (3 - i) * 8);
  k = 100U;
  skip0 = 1U;
  goto ldv_54599;
  ldv_54598: ;
  if (((int )num >= (int )k || (unsigned int )skip0 == 0U) || (unsigned int )k == 1U) {
    tmp___9 = j;
    j = j + 1;
    bp->fw_version[tmp___9] = (char )((unsigned int )((int )num / (int )k) + 48U);
    skip0 = 0U;
  } else {
  }
  num = (u8 )((int )num % (int )k);
  k = (u8 )((unsigned int )k / 10U);
  ldv_54599: ;
  if ((unsigned int )k != 0U) {
    goto ldv_54598;
  } else {
  }
  if (i != 2) {
    tmp___10 = j;
    j = j + 1;
    bp->fw_version[tmp___10] = 46;
  } else {
  }
  i = i + 1;
  ldv_54602: ;
  if (i <= 2 && j <= 23) {
    goto ldv_54601;
  } else {
  }
  {
  reg = bnx2_shmem_rd(bp, 216U);
  }
  if ((reg & 16777216U) != 0U) {
    bp->wol = 1U;
  } else {
  }
  if ((reg & 67108864U) != 0U) {
    bp->flags = bp->flags | 64U;
    i = 0;
    goto ldv_54606;
    ldv_54605:
    {
    reg = bnx2_shmem_rd(bp, 456U);
    }
    if ((reg & 57344U) != 0U) {
      goto ldv_54604;
    } else {
    }
    {
    msleep(10U);
    i = i + 1;
    }
    ldv_54606: ;
    if (i <= 29) {
      goto ldv_54605;
    } else {
    }
    ldv_54604: ;
  } else {
  }
  {
  reg = bnx2_shmem_rd(bp, 456U);
  reg = reg & 57344U;
  }
  if (reg != 0U && reg != 57344U) {
    {
    tmp___11 = bnx2_shmem_rd(bp, 332U);
    addr = tmp___11;
    }
    if (j <= 31) {
      tmp___12 = j;
      j = j + 1;
      bp->fw_version[tmp___12] = 32;
    } else {
    }
    i = 0;
    goto ldv_54609;
    ldv_54608:
    {
    reg = bnx2_reg_rd_ind(bp, addr + (u32 )(i * 4));
    tmp___13 = __fswab32(reg);
    reg = tmp___13;
    memcpy((void *)(& bp->fw_version) + (unsigned long )j, (void const *)(& reg),
           4UL);
    j = j + 4;
    i = i + 1;
    }
    ldv_54609: ;
    if (i <= 2 && j <= 27) {
      goto ldv_54608;
    } else {
    }
  } else {
  }
  {
  reg = bnx2_shmem_rd(bp, 80U);
  bp->mac_addr[0] = (unsigned char )(reg >> 8);
  bp->mac_addr[1] = (unsigned char )reg;
  reg = bnx2_shmem_rd(bp, 84U);
  bp->mac_addr[2] = (unsigned char )(reg >> 24);
  bp->mac_addr[3] = (unsigned char )(reg >> 16);
  bp->mac_addr[4] = (unsigned char )(reg >> 8);
  bp->mac_addr[5] = (unsigned char )reg;
  bp->tx_ring_size = 255;
  bnx2_set_rx_ring_size(bp, 255U);
  bp->tx_quick_cons_trip_int = 2U;
  bp->tx_quick_cons_trip = 20U;
  bp->tx_ticks_int = 18U;
  bp->tx_ticks = 80U;
  bp->rx_quick_cons_trip_int = 2U;
  bp->rx_quick_cons_trip = 12U;
  bp->rx_ticks_int = 18U;
  bp->rx_ticks = 18U;
  bp->stats_ticks = 999936U;
  bp->current_interval = 250U;
  bp->phy_addr = 1U;
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    {
    bnx2_get_5709_media(bp);
    }
  } else
  if ((int )bp->chip_id & 1) {
    bp->phy_flags = bp->phy_flags | 1U;
  } else {
  }
  bp->phy_port = 0U;
  if ((int )bp->phy_flags & 1) {
    {
    bp->phy_port = 3U;
    reg = bnx2_shmem_rd(bp, 60U);
    }
    if ((reg & 32768U) == 0U) {
      bp->flags = bp->flags | 8U;
      bp->wol = 0U;
    } else {
    }
    if ((bp->chip_id & 4294901760U) == 1460011008U) {
      if (*((unsigned int *)pdev + 16UL) == 822874172U) {
        bp->phy_flags = bp->phy_flags | 8192U;
      } else {
      }
    } else {
      bp->phy_addr = 2U;
      if ((reg & 32U) != 0U) {
        bp->phy_flags = bp->phy_flags | 8U;
      } else {
      }
    }
  } else
  if ((bp->chip_id & 4294901760U) == 1460011008U || (bp->chip_id & 4294901760U) == 1460142080U) {
    bp->phy_flags = bp->phy_flags | 2U;
  } else
  if ((bp->chip_id & 4294901760U) == 1460207616U && ((bp->chip_id & 61440U) == 0U || (bp->chip_id & 61440U) == 4096U)) {
    bp->phy_flags = bp->phy_flags | 1024U;
  } else {
  }
  {
  bnx2_init_fw_cap(bp);
  }
  if (((bp->chip_id & 4294967280U) == 1460142080U || (bp->chip_id & 4294967280U) == 1460146176U) || (bp->chip_id & 4294967280U) == 1460146192U) {
    bp->flags = bp->flags | 8U;
    bp->wol = 0U;
  } else {
    {
    tmp___14 = readl((void const volatile *)bp->regview + 1036U);
    }
    if (((long )tmp___14 & 1073741824L) == 0L) {
      bp->flags = bp->flags | 8U;
      bp->wol = 0U;
    } else {
    }
  }
  if ((bp->flags & 8U) != 0U) {
    {
    device_set_wakeup_capable(& (bp->pdev)->dev, 0);
    }
  } else {
    {
    device_set_wakeup_enable(& (bp->pdev)->dev, (unsigned int )bp->wol != 0U);
    }
  }
  if ((bp->chip_id & 4294967280U) == 1460011008U) {
    bp->tx_quick_cons_trip_int = bp->tx_quick_cons_trip;
    bp->tx_ticks_int = bp->tx_ticks;
    bp->rx_quick_cons_trip_int = bp->rx_quick_cons_trip;
    bp->rx_ticks_int = bp->rx_ticks;
    bp->comp_prod_trip_int = bp->comp_prod_trip;
    bp->com_ticks_int = bp->com_ticks;
    bp->cmd_ticks_int = bp->cmd_ticks;
  } else {
  }
  if ((bp->chip_id & 4294901760U) == 1460011008U && disable_msi == 0) {
    amd_8132 = (struct pci_dev *)0;
    goto ldv_54614;
    ldv_54613: ;
    if ((unsigned int )amd_8132->revision - 16U <= 3U) {
      {
      disable_msi = 1;
      pci_dev_put(amd_8132);
      }
      goto ldv_54612;
    } else {
    }
    ldv_54614:
    {
    amd_8132 = pci_get_device(4130U, 29784U, amd_8132);
    }
    if ((unsigned long )amd_8132 != (unsigned long )((struct pci_dev *)0)) {
      goto ldv_54613;
    } else {
    }
    ldv_54612: ;
  } else {
  }
  {
  bnx2_set_default_link(bp);
  bp->req_flow_ctrl = 3U;
  init_timer_key(& bp->timer, 0U, "(&bp->timer)", & __key___3);
  bp->timer.expires = (unsigned long )jiffies + 250UL;
  bp->timer.data = (unsigned long )bp;
  bp->timer.function = & bnx2_timer;
  tmp___16 = bnx2_shmem_rd(bp, 988U);
  }
  if ((tmp___16 & 524288U) != 0U) {
    {
    tmp___15 = bnx2_shmem_rd(bp, 996U);
    bp->cnic_eth_dev.max_iscsi_conn = tmp___15 >> 16;
    }
  } else {
  }
  {
  bp->cnic_probe = & bnx2_cnic_probe;
  pci_save_state(pdev);
  }
  return (0);
  err_out_unmap: ;
  if ((bp->flags & 16384U) != 0U) {
    {
    pci_disable_pcie_error_reporting(pdev);
    bp->flags = bp->flags & 4294950911U;
    }
  } else {
  }
  {
  pci_iounmap(pdev, bp->regview);
  bp->regview = (void *)0;
  }
  err_out_release:
  {
  pci_release_regions(pdev);
  }
  err_out_disable:
  {
  pci_disable_device(pdev);
  }
  err_out: ;
  return (rc);
}
}
static char *bnx2_bus_string(struct bnx2 *bp , char *str )
{
  char *s ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  s = str;
  if ((bp->flags & 512U) != 0U) {
    {
    tmp = sprintf(s, "PCI Express");
    s = s + (unsigned long )tmp;
    }
  } else {
    {
    tmp___0 = sprintf(s, "PCI");
    s = s + (unsigned long )tmp___0;
    }
    if ((int )bp->flags & 1) {
      {
      tmp___1 = sprintf(s, "-X");
      s = s + (unsigned long )tmp___1;
      }
    } else {
    }
    if ((bp->flags & 2U) != 0U) {
      {
      tmp___2 = sprintf(s, " 32-bit");
      s = s + (unsigned long )tmp___2;
      }
    } else {
      {
      tmp___3 = sprintf(s, " 64-bit");
      s = s + (unsigned long )tmp___3;
      }
    }
    {
    tmp___4 = sprintf(s, " %dMHz", (int )bp->bus_speed_mhz);
    s = s + (unsigned long )tmp___4;
    }
  }
  return (str);
}
}
static void bnx2_del_napi(struct bnx2 *bp )
{
  int i ;
  {
  i = 0;
  goto ldv_54626;
  ldv_54625:
  {
  netif_napi_del(& bp->bnx2_napi[i].napi);
  i = i + 1;
  }
  ldv_54626: ;
  if (i < bp->irq_nvecs) {
    goto ldv_54625;
  } else {
  }
  return;
}
}
static void bnx2_init_napi(struct bnx2 *bp )
{
  int i ;
  struct bnx2_napi *bnapi ;
  int (*poll)(struct napi_struct * , int ) ;
  {
  i = 0;
  goto ldv_54637;
  ldv_54636:
  bnapi = (struct bnx2_napi *)(& bp->bnx2_napi) + (unsigned long )i;
  if (i == 0) {
    poll = & bnx2_poll;
  } else {
    poll = & bnx2_poll_msix;
  }
  {
  netif_napi_add(bp->dev, & bp->bnx2_napi[i].napi, poll, 64);
  bnapi->bp = bp;
  i = i + 1;
  }
  ldv_54637: ;
  if (i < bp->irq_nvecs) {
    goto ldv_54636;
  } else {
  }
  return;
}
}
static struct net_device_ops const bnx2_netdev_ops =
     {0, 0, & bnx2_open, & bnx2_close, & bnx2_start_xmit, 0, 0, & bnx2_set_rx_mode,
    & bnx2_change_mac_addr, & eth_validate_addr, & bnx2_ioctl, 0, & bnx2_change_mtu,
    0, & bnx2_tx_timeout, & bnx2_get_stats64, 0, 0, 0, & poll_bnx2, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & bnx2_fix_features, & bnx2_set_features,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int bnx2_init_one(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  int version_printed ;
  struct net_device *dev ;
  struct bnx2 *bp ;
  int rc ;
  char str[40U] ;
  int tmp ;
  void *tmp___0 ;
  char *tmp___1 ;
  {
  version_printed = 0;
  tmp = version_printed;
  version_printed = version_printed + 1;
  if (tmp == 0) {
    {
    printk("\016bnx2: %s", (char *)(& version));
    }
  } else {
  }
  {
  dev = ldv_alloc_etherdev_mqs_33(10368, 8U, 8U);
  }
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return (-12);
  } else {
  }
  {
  rc = bnx2_init_board(pdev, dev);
  }
  if (rc < 0) {
    goto err_free;
  } else {
  }
  {
  dev->netdev_ops = & bnx2_netdev_ops;
  dev->watchdog_timeo = 1250;
  dev->ethtool_ops = & bnx2_ethtool_ops;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp___0;
  pci_set_drvdata(pdev, (void *)dev);
  memcpy((void *)dev->dev_addr, (void const *)(& bp->mac_addr), 6UL);
  dev->hw_features = 6443040771ULL;
  }
  if ((bp->chip_id & 4294901760U) == 1460207616U) {
    dev->hw_features = dev->hw_features | 1048592ULL;
  } else {
  }
  {
  dev->vlan_features = dev->hw_features;
  dev->hw_features = dev->hw_features | 384ULL;
  dev->features = dev->features | dev->hw_features;
  dev->priv_flags = dev->priv_flags | 131072U;
  rc = ldv_register_netdev_34(dev);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot register net device\n");
    }
    goto error;
  } else {
  }
  {
  tmp___1 = bnx2_bus_string(bp, (char *)(& str));
  netdev_info((struct net_device const *)dev, "%s (%c%d) %s found at mem %lx, IRQ %d, node addr %pM\n",
              board_info[ent->driver_data].name, ((bp->chip_id & 61440U) >> 12) + 65U,
              (bp->chip_id & 4080U) >> 4, tmp___1, (long )pdev->resource[0].start,
              pdev->irq, dev->dev_addr);
  }
  return (0);
  error:
  {
  pci_iounmap(pdev, bp->regview);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  }
  err_free:
  {
  ldv_free_netdev_35(dev);
  }
  return (rc);
}
}
static void bnx2_remove_one(struct pci_dev *pdev )
{
  struct net_device *dev ;
  void *tmp ;
  struct bnx2 *bp ;
  void *tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp___0;
  ldv_unregister_netdev_36(dev);
  ldv_del_timer_sync_37(& bp->timer);
  cancel_work_sync(& bp->reset_task);
  pci_iounmap(bp->pdev, bp->regview);
  kfree((void const *)bp->temp_stats_blk);
  }
  if ((bp->flags & 16384U) != 0U) {
    {
    pci_disable_pcie_error_reporting(pdev);
    bp->flags = bp->flags & 4294950911U;
    }
  } else {
  }
  {
  bnx2_release_firmware(bp);
  ldv_free_netdev_38(dev);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  }
  return;
}
}
static int bnx2_suspend(struct device *device )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *dev ;
  void *tmp ;
  struct bnx2 *bp ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  {
  __mptr = (struct device const *)device;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp___0;
  tmp___1 = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp___1) {
    {
    cancel_work_sync(& bp->reset_task);
    bnx2_netif_stop(bp, 1);
    netif_device_detach(dev);
    ldv_del_timer_sync_39(& bp->timer);
    bnx2_shutdown_chip(bp);
    __bnx2_free_irq(bp);
    bnx2_free_skbs(bp);
    }
  } else {
  }
  {
  bnx2_setup_wol(bp);
  }
  return (0);
}
}
static int bnx2_resume(struct device *device )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *dev ;
  void *tmp ;
  struct bnx2 *bp ;
  void *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  {
  __mptr = (struct device const *)device;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp___0;
  tmp___1 = netif_running((struct net_device const *)dev);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (0);
  } else {
  }
  {
  bnx2_set_power_state(bp, 0);
  netif_device_attach(dev);
  bnx2_request_irq(bp);
  bnx2_init_nic(bp, 1);
  bnx2_netif_start(bp, 1);
  }
  return (0);
}
}
static struct dev_pm_ops const bnx2_pm_ops =
     {0, 0, & bnx2_suspend, & bnx2_resume, & bnx2_suspend, & bnx2_resume, & bnx2_suspend,
    & bnx2_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static pci_ers_result_t bnx2_io_error_detected(struct pci_dev *pdev , pci_channel_state_t state )
{
  struct net_device *dev ;
  void *tmp ;
  struct bnx2 *bp ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp___0;
  rtnl_lock();
  netif_device_detach(dev);
  }
  if (state == 3U) {
    {
    rtnl_unlock();
    }
    return (4U);
  } else {
  }
  {
  tmp___1 = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp___1) {
    {
    bnx2_netif_stop(bp, 1);
    ldv_del_timer_sync_40(& bp->timer);
    bnx2_reset_nic(bp, 16777216U);
    }
  } else {
  }
  {
  pci_disable_device(pdev);
  rtnl_unlock();
  }
  return (3U);
}
}
static pci_ers_result_t bnx2_io_slot_reset(struct pci_dev *pdev )
{
  struct net_device *dev ;
  void *tmp ;
  struct bnx2 *bp ;
  void *tmp___0 ;
  pci_ers_result_t result ;
  int err ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp___0;
  result = 4U;
  err = 0;
  rtnl_lock();
  tmp___2 = pci_enable_device(pdev);
  }
  if (tmp___2 != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot re-enable PCI device after reset\n");
    }
  } else {
    {
    pci_set_master(pdev);
    pci_restore_state(pdev);
    pci_save_state(pdev);
    tmp___1 = netif_running((struct net_device const *)dev);
    }
    if ((int )tmp___1) {
      {
      err = bnx2_init_nic(bp, 1);
      }
    } else {
    }
    if (err == 0) {
      result = 5U;
    } else {
    }
  }
  if (result != 5U) {
    {
    tmp___3 = netif_running((struct net_device const *)dev);
    }
    if ((int )tmp___3) {
      {
      bnx2_napi_enable(bp);
      dev_close(dev);
      }
    } else {
    }
  } else {
  }
  {
  rtnl_unlock();
  }
  if ((bp->flags & 16384U) == 0U) {
    return (result);
  } else {
  }
  {
  err = pci_cleanup_aer_uncorrect_error_status(pdev);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "pci_cleanup_aer_uncorrect_error_status failed 0x%0x\n",
            err);
    }
  } else {
  }
  return (result);
}
}
static void bnx2_io_resume(struct pci_dev *pdev )
{
  struct net_device *dev ;
  void *tmp ;
  struct bnx2 *bp ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp___0;
  rtnl_lock();
  tmp___1 = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp___1) {
    {
    bnx2_netif_start(bp, 1);
    }
  } else {
  }
  {
  netif_device_attach(dev);
  rtnl_unlock();
  }
  return;
}
}
static void bnx2_shutdown(struct pci_dev *pdev )
{
  struct net_device *dev ;
  void *tmp ;
  struct bnx2 *bp ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  }
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return;
  } else {
  }
  {
  tmp___0 = netdev_priv((struct net_device const *)dev);
  bp = (struct bnx2 *)tmp___0;
  }
  if ((unsigned long )bp == (unsigned long )((struct bnx2 *)0)) {
    return;
  } else {
  }
  {
  rtnl_lock();
  tmp___1 = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp___1) {
    {
    dev_close(bp->dev);
    }
  } else {
  }
  if ((unsigned int )system_state == 3U) {
    {
    bnx2_set_power_state(bp, 3);
    }
  } else {
  }
  {
  rtnl_unlock();
  }
  return;
}
}
static struct pci_error_handlers const bnx2_err_handler = {(pci_ers_result_t (*)(struct pci_dev * , enum pci_channel_state ))(& bnx2_io_error_detected),
    0, 0, & bnx2_io_slot_reset, & bnx2_io_resume};
static struct pci_driver bnx2_pci_driver =
     {{0, 0}, "bnx2", (struct pci_device_id const *)(& bnx2_pci_tbl), & bnx2_init_one,
    & bnx2_remove_one, 0, 0, 0, 0, & bnx2_shutdown, 0, & bnx2_err_handler, {0, 0,
                                                                            0, 0,
                                                                            (_Bool)0,
                                                                            0, 0,
                                                                            0, 0,
                                                                            0, 0,
                                                                            0, 0,
                                                                            & bnx2_pm_ops,
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
static int bnx2_pci_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv___pci_register_driver_41(& bnx2_pci_driver, & __this_module, "bnx2");
  }
  return (tmp);
}
}
static void bnx2_pci_driver_exit(void)
{
  {
  {
  ldv_pci_unregister_driver_42(& bnx2_pci_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_bnx2_pci_driver_exit_16_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_bnx2_pci_driver_init_16_9(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 ) ;
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 ) ;
void ldv_dispatch_deregister_13_1(struct net_device *arg0 ) ;
void ldv_dispatch_deregister_14_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_platform_instance_15_16_4(void) ;
void ldv_dispatch_instance_deregister_7_1(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_10_2(struct timer_list *arg0 ) ;
void ldv_dispatch_irq_deregister_8_1(int arg0 ) ;
void ldv_dispatch_irq_register_12_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_pm_deregister_4_5(void) ;
void ldv_dispatch_pm_register_4_6(void) ;
void ldv_dispatch_register_11_4(struct net_device *arg0 ) ;
void ldv_dispatch_register_15_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_platform_instance_15_16_5(void) ;
void ldv_dummy_resourceless_instance_callback_1_12(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_13(void (*arg0)(struct net_device * ,
                                                                struct ethtool_stats * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                   unsigned long long *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_16(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_17(void (*arg0)(struct net_device * ,
                                                                struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_18(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_19(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_20(void (*arg0)(struct net_device * ,
                                                                struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_21(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_22(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_25(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_28(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_29(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_channels * ) ,
                                                  struct net_device *arg1 , struct ethtool_channels *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_32(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_35(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_38(struct rtnl_link_stats64 *(*arg0)(struct net_device * ,
                                                                                     struct rtnl_link_stats64 * ) ,
                                                   struct net_device *arg1 , struct rtnl_link_stats64 *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_39(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_40(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_43(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_44(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_45(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_46(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_47(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_48(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_49(void (*arg0)(struct net_device * ,
                                                                struct ethtool_test * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_test *arg2 ,
                                                   unsigned long long *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_52(int (*arg0)(struct net_device * ,
                                                               struct ethtool_channels * ) ,
                                                   struct net_device *arg1 , struct ethtool_channels *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_53(int (*arg0)(struct net_device * ,
                                                               struct ethtool_coalesce * ) ,
                                                   struct net_device *arg1 , struct ethtool_coalesce *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_54(int (*arg0)(struct net_device * ,
                                                               struct ethtool_eeprom * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_57(int (*arg0)(struct net_device * ,
                                                               struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_58(int (*arg0)(struct net_device * ,
                                                               enum ethtool_phys_id_state ) ,
                                                   struct net_device *arg1 , enum ethtool_phys_id_state arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_59(int (*arg0)(struct net_device * ,
                                                               struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_60(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_61(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_7(int (*arg0)(struct net_device * ,
                                                              struct ethtool_coalesce * ) ,
                                                  struct net_device *arg1 , struct ethtool_coalesce *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_8(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_9(int (*arg0)(struct net_device * ,
                                                              struct ethtool_eeprom * ,
                                                              unsigned char * ) ,
                                                  struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                  unsigned char *arg3 ) ;
void ldv_entry_EMGentry_16(void *arg0 ) ;
int main(void) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_free_netdev(void *arg0 , struct net_device *arg1 ) ;
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_0(void *arg0 ) ;
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 ) ;
void ldv_net_dummy_resourceless_instance_1(void *arg0 ) ;
void ldv_pci_instance_callback_2_10(unsigned int (*arg0)(struct pci_dev * , enum pci_channel_state ) ,
                                    struct pci_dev *arg1 , enum pci_channel_state arg2 ) ;
void ldv_pci_instance_callback_2_23(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_callback_2_24(unsigned int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
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
int ldv_platform_instance_probe_4_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_instance_release_4_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
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
void ldv_pm_platform_instance_4(void *arg0 ) ;
void ldv_pm_pm_ops_instance_3(void *arg0 ) ;
int ldv_register_netdev(int arg0 , struct net_device *arg1 ) ;
int ldv_register_netdev_open_11_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
void ldv_timer_instance_callback_5_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_5(void *arg0 ) ;
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_unregister_netdev_stop_13_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_16 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
void ldv_EMGentry_exit_bnx2_pci_driver_exit_16_2(void (*arg0)(void) )
{
  {
  {
  bnx2_pci_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_bnx2_pci_driver_init_16_9(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = bnx2_pci_driver_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_15_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_15_pci_driver_pci_driver = arg1;
    ldv_dispatch_register_15_2(ldv_15_pci_driver_pci_driver);
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
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 )
{
  struct net_device *ldv_6_netdev_net_device ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(3200UL);
    ldv_6_netdev_net_device = (struct net_device *)tmp;
    }
    return (ldv_6_netdev_net_device);
    return (arg0);
  } else {
    return ((struct net_device *)0);
    return (arg0);
  }
  return (arg0);
}
}
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 )
{
  struct timer_list *ldv_7_timer_list_timer_list ;
  {
  {
  ldv_7_timer_list_timer_list = arg1;
  ldv_dispatch_instance_deregister_7_1(ldv_7_timer_list_timer_list);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_dispatch_deregister_13_1(struct net_device *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_14_1(struct pci_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_platform_instance_15_16_4(void)
{
  {
  return;
}
}
void ldv_dispatch_instance_deregister_7_1(struct timer_list *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_instance_register_10_2(struct timer_list *arg0 )
{
  struct ldv_struct_timer_instance_5 *cf_arg_5 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_5 = (struct ldv_struct_timer_instance_5 *)tmp;
  cf_arg_5->arg0 = arg0;
  ldv_timer_timer_instance_5((void *)cf_arg_5);
  }
  return;
}
}
void ldv_dispatch_irq_deregister_8_1(int arg0 )
{
  {
  return;
}
}
void ldv_dispatch_irq_register_12_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  struct ldv_struct_interrupt_instance_0 *cf_arg_0 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(40UL);
  cf_arg_0 = (struct ldv_struct_interrupt_instance_0 *)tmp;
  cf_arg_0->arg0 = arg0;
  cf_arg_0->arg1 = arg1;
  cf_arg_0->arg2 = arg2;
  cf_arg_0->arg3 = arg3;
  ldv_interrupt_interrupt_instance_0((void *)cf_arg_0);
  }
  return;
}
}
void ldv_dispatch_pm_deregister_4_5(void)
{
  {
  return;
}
}
void ldv_dispatch_pm_register_4_6(void)
{
  struct ldv_struct_platform_instance_4 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_platform_instance_4 *)tmp;
  ldv_pm_pm_ops_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_dispatch_register_11_4(struct net_device *arg0 )
{
  struct ldv_struct_dummy_resourceless_instance_1 *cf_arg_1 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_1 = (struct ldv_struct_dummy_resourceless_instance_1 *)tmp;
  cf_arg_1->arg0 = arg0;
  ldv_net_dummy_resourceless_instance_1((void *)cf_arg_1);
  }
  return;
}
}
void ldv_dispatch_register_15_2(struct pci_driver *arg0 )
{
  struct ldv_struct_pci_instance_2 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_2 = (struct ldv_struct_pci_instance_2 *)tmp;
  cf_arg_2->arg0 = arg0;
  ldv_pci_pci_instance_2((void *)cf_arg_2);
  }
  return;
}
}
void ldv_dispatch_register_platform_instance_15_16_5(void)
{
  struct ldv_struct_platform_instance_4 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_platform_instance_4 *)tmp;
  ldv_pm_platform_instance_4((void *)cf_arg_4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_12(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  bnx2_get_eeprom_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_13(void (*arg0)(struct net_device * ,
                                                                struct ethtool_stats * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                   unsigned long long *arg3 )
{
  {
  {
  bnx2_get_ethtool_stats(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_16(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  bnx2_get_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_17(void (*arg0)(struct net_device * ,
                                                                struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 )
{
  {
  {
  bnx2_get_pauseparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_18(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 )
{
  {
  {
  bnx2_get_regs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_19(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  bnx2_get_regs_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_20(void (*arg0)(struct net_device * ,
                                                                struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 )
{
  {
  {
  bnx2_get_ringparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_21(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  bnx2_get_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_22(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  bnx2_get_sset_count(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_25(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  bnx2_get_strings(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_28(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  bnx2_get_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_29(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  bnx2_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_channels * ) ,
                                                  struct net_device *arg1 , struct ethtool_channels *arg2 )
{
  {
  {
  bnx2_get_channels(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_32(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 )
{
  {
  {
  bnx2_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_35(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  bnx2_fix_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_38(struct rtnl_link_stats64 *(*arg0)(struct net_device * ,
                                                                                     struct rtnl_link_stats64 * ) ,
                                                   struct net_device *arg1 , struct rtnl_link_stats64 *arg2 )
{
  {
  {
  bnx2_get_stats64(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_39(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  poll_bnx2(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_40(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  bnx2_set_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_43(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 )
{
  {
  {
  bnx2_change_mac_addr(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_44(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  bnx2_set_rx_mode(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_45(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  bnx2_start_xmit(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_46(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  bnx2_tx_timeout(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_47(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_48(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  bnx2_nway_reset(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_49(void (*arg0)(struct net_device * ,
                                                                struct ethtool_test * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_test *arg2 ,
                                                   unsigned long long *arg3 )
{
  {
  {
  bnx2_self_test(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_52(int (*arg0)(struct net_device * ,
                                                               struct ethtool_channels * ) ,
                                                   struct net_device *arg1 , struct ethtool_channels *arg2 )
{
  {
  {
  bnx2_set_channels(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_53(int (*arg0)(struct net_device * ,
                                                               struct ethtool_coalesce * ) ,
                                                   struct net_device *arg1 , struct ethtool_coalesce *arg2 )
{
  {
  {
  bnx2_set_coalesce(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_54(int (*arg0)(struct net_device * ,
                                                               struct ethtool_eeprom * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  bnx2_set_eeprom(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_57(int (*arg0)(struct net_device * ,
                                                               struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 )
{
  {
  {
  bnx2_set_pauseparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_58(int (*arg0)(struct net_device * ,
                                                               enum ethtool_phys_id_state ) ,
                                                   struct net_device *arg1 , enum ethtool_phys_id_state arg2 )
{
  {
  {
  bnx2_set_phys_id(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_59(int (*arg0)(struct net_device * ,
                                                               struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 )
{
  {
  {
  bnx2_set_ringparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_60(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  bnx2_set_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_61(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  bnx2_set_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_7(int (*arg0)(struct net_device * ,
                                                              struct ethtool_coalesce * ) ,
                                                  struct net_device *arg1 , struct ethtool_coalesce *arg2 )
{
  {
  {
  bnx2_get_coalesce(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_8(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 )
{
  {
  {
  bnx2_get_drvinfo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_9(int (*arg0)(struct net_device * ,
                                                              struct ethtool_eeprom * ,
                                                              unsigned char * ) ,
                                                  struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                  unsigned char *arg3 )
{
  {
  {
  bnx2_get_eeprom(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_entry_EMGentry_16(void *arg0 )
{
  void (*ldv_16_exit_bnx2_pci_driver_exit_default)(void) ;
  int (*ldv_16_init_bnx2_pci_driver_init_default)(void) ;
  int ldv_16_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_16_ret_default = ldv_EMGentry_init_bnx2_pci_driver_init_16_9(ldv_16_init_bnx2_pci_driver_init_default);
  ldv_16_ret_default = ldv_post_init(ldv_16_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_16_ret_default != 0);
    ldv_check_final_state();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_16_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_platform_instance_15_16_5();
      ldv_dispatch_deregister_platform_instance_15_16_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_bnx2_pci_driver_exit_16_2(ldv_16_exit_bnx2_pci_driver_exit_default);
    ldv_check_final_state();
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
  ldv_initialize();
  ldv_entry_EMGentry_16((void *)0);
  }
return 0;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_8_line_line ;
  {
  {
  ldv_8_line_line = arg1;
  ldv_dispatch_irq_deregister_8_1(ldv_8_line_line);
  }
  return;
  return;
}
}
void ldv_free_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_9_netdev_net_device ;
  {
  {
  ldv_9_netdev_net_device = arg1;
  ldv_free((void *)ldv_9_netdev_net_device);
  }
  return;
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
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
  enum irqreturn (*ldv_0_callback_handler)(int , void * ) ;
  void *ldv_0_data_data ;
  int ldv_0_line_line ;
  enum irqreturn ldv_0_ret_val_default ;
  enum irqreturn (*ldv_0_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_instance_0 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_interrupt_instance_0 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_instance_0 *)0)) {
    {
    ldv_0_line_line = data->arg0;
    ldv_0_callback_handler = data->arg1;
    ldv_0_thread_thread = data->arg2;
    ldv_0_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_0_callback_handler != (unsigned long )((enum irqreturn (*)(int ,
                                                                                     void * ))0)) {
    {
    ldv_0_ret_val_default = ldv_interrupt_instance_handler_0_5(ldv_0_callback_handler,
                                                               ldv_0_line_line, ldv_0_data_data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
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
  } else {
    {
    ldv_assume((unsigned int )ldv_0_ret_val_default != 2U);
    }
  }
  return;
  return;
}
}
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 )
{
  struct timer_list *ldv_10_timer_list_timer_list ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_10_timer_list_timer_list = arg1;
    ldv_dispatch_instance_register_10_2(ldv_10_timer_list_timer_list);
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
void ldv_net_dummy_resourceless_instance_1(void *arg0 )
{
  void (*ldv_1_callback_get_channels)(struct net_device * , struct ethtool_channels * ) ;
  int (*ldv_1_callback_get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
  void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
  int (*ldv_1_callback_get_eeprom)(struct net_device * , struct ethtool_eeprom * ,
                                   unsigned char * ) ;
  int (*ldv_1_callback_get_eeprom_len)(struct net_device * ) ;
  void (*ldv_1_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                           unsigned long long * ) ;
  unsigned int (*ldv_1_callback_get_link)(struct net_device * ) ;
  void (*ldv_1_callback_get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
  void (*ldv_1_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
  int (*ldv_1_callback_get_regs_len)(struct net_device * ) ;
  void (*ldv_1_callback_get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
  int (*ldv_1_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) ;
  int (*ldv_1_callback_get_sset_count)(struct net_device * , int ) ;
  void (*ldv_1_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) ;
  void (*ldv_1_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
  int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) ;
  int (*ldv_1_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
  unsigned long long (*ldv_1_callback_ndo_fix_features)(struct net_device * , unsigned long long ) ;
  struct rtnl_link_stats64 *(*ldv_1_callback_ndo_get_stats64)(struct net_device * ,
                                                              struct rtnl_link_stats64 * ) ;
  void (*ldv_1_callback_ndo_poll_controller)(struct net_device * ) ;
  int (*ldv_1_callback_ndo_set_features)(struct net_device * , unsigned long long ) ;
  int (*ldv_1_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
  void (*ldv_1_callback_ndo_set_rx_mode)(struct net_device * ) ;
  enum netdev_tx (*ldv_1_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
  void (*ldv_1_callback_ndo_tx_timeout)(struct net_device * ) ;
  int (*ldv_1_callback_ndo_validate_addr)(struct net_device * ) ;
  int (*ldv_1_callback_nway_reset)(struct net_device * ) ;
  void (*ldv_1_callback_self_test)(struct net_device * , struct ethtool_test * , unsigned long long * ) ;
  int (*ldv_1_callback_set_channels)(struct net_device * , struct ethtool_channels * ) ;
  int (*ldv_1_callback_set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
  int (*ldv_1_callback_set_eeprom)(struct net_device * , struct ethtool_eeprom * ,
                                   unsigned char * ) ;
  int (*ldv_1_callback_set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
  int (*ldv_1_callback_set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
  int (*ldv_1_callback_set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
  int (*ldv_1_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) ;
  int (*ldv_1_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
  enum ethtool_phys_id_state ldv_1_container_enum_ethtool_phys_id_state ;
  struct net_device *ldv_1_container_net_device ;
  struct ethtool_channels *ldv_1_container_struct_ethtool_channels_ptr ;
  struct ethtool_cmd *ldv_1_container_struct_ethtool_cmd_ptr ;
  struct ethtool_coalesce *ldv_1_container_struct_ethtool_coalesce_ptr ;
  struct ethtool_drvinfo *ldv_1_container_struct_ethtool_drvinfo_ptr ;
  struct ethtool_eeprom *ldv_1_container_struct_ethtool_eeprom_ptr ;
  struct ethtool_pauseparam *ldv_1_container_struct_ethtool_pauseparam_ptr ;
  struct ethtool_regs *ldv_1_container_struct_ethtool_regs_ptr ;
  struct ethtool_ringparam *ldv_1_container_struct_ethtool_ringparam_ptr ;
  struct ethtool_stats *ldv_1_container_struct_ethtool_stats_ptr ;
  struct ethtool_test *ldv_1_container_struct_ethtool_test_ptr ;
  struct ethtool_wolinfo *ldv_1_container_struct_ethtool_wolinfo_ptr ;
  struct ifreq *ldv_1_container_struct_ifreq_ptr ;
  struct rtnl_link_stats64 *ldv_1_container_struct_rtnl_link_stats64_ptr ;
  struct sk_buff *ldv_1_container_struct_sk_buff_ptr ;
  unsigned long long *ldv_1_ldv_param_13_2_default ;
  int ldv_1_ldv_param_22_1_default ;
  unsigned int ldv_1_ldv_param_25_1_default ;
  unsigned char *ldv_1_ldv_param_25_2_default ;
  int ldv_1_ldv_param_29_1_default ;
  int ldv_1_ldv_param_32_2_default ;
  unsigned long long ldv_1_ldv_param_35_1_default ;
  unsigned long long ldv_1_ldv_param_40_1_default ;
  unsigned long long *ldv_1_ldv_param_49_2_default ;
  unsigned char *ldv_1_ldv_param_54_2_default ;
  unsigned char *ldv_1_ldv_param_9_2_default ;
  struct ldv_struct_dummy_resourceless_instance_1 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_1 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_1 *)0)) {
    {
    ldv_1_container_net_device = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_1;
  return;
  ldv_call_1:
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
  if (tmp == 19) {
    goto case_19;
  } else {
  }
  if (tmp == 20) {
    goto case_20;
  } else {
  }
  if (tmp == 21) {
    goto case_21;
  } else {
  }
  if (tmp == 22) {
    goto case_22;
  } else {
  }
  if (tmp == 23) {
    goto case_23;
  } else {
  }
  if (tmp == 24) {
    goto case_24;
  } else {
  }
  if (tmp == 25) {
    goto case_25;
  } else {
  }
  if (tmp == 26) {
    goto case_26;
  } else {
  }
  if (tmp == 27) {
    goto case_27;
  } else {
  }
  if (tmp == 28) {
    goto case_28;
  } else {
  }
  if (tmp == 29) {
    goto case_29;
  } else {
  }
  if (tmp == 30) {
    goto case_30;
  } else {
  }
  if (tmp == 31) {
    goto case_31;
  } else {
  }
  if (tmp == 32) {
    goto case_32;
  } else {
  }
  if (tmp == 33) {
    goto case_33;
  } else {
  }
  if (tmp == 34) {
    goto case_34;
  } else {
  }
  if (tmp == 35) {
    goto case_35;
  } else {
  }
  if (tmp == 36) {
    goto case_36;
  } else {
  }
  if (tmp == 37) {
    goto case_37;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_1_61(ldv_1_callback_set_wol, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_wolinfo_ptr);
  }
  goto ldv_call_1;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_1_60(ldv_1_callback_set_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_1_59(ldv_1_callback_set_ringparam, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_ringparam_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_1_58(ldv_1_callback_set_phys_id, ldv_1_container_net_device,
                                                ldv_1_container_enum_ethtool_phys_id_state);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_1_57(ldv_1_callback_set_pauseparam, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_pauseparam_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_6:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_54_2_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_1_54(ldv_1_callback_set_eeprom, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_eeprom_ptr,
                                                ldv_1_ldv_param_54_2_default);
  ldv_free((void *)ldv_1_ldv_param_54_2_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_1_53(ldv_1_callback_set_coalesce, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_coalesce_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_1_52(ldv_1_callback_set_channels, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_channels_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_9:
  {
  tmp___1 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_49_2_default = (unsigned long long *)tmp___1;
  ldv_dummy_resourceless_instance_callback_1_49(ldv_1_callback_self_test, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_test_ptr,
                                                ldv_1_ldv_param_49_2_default);
  ldv_free((void *)ldv_1_ldv_param_49_2_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_1_48(ldv_1_callback_nway_reset, ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_1_47(ldv_1_callback_ndo_validate_addr,
                                                ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_1_46(ldv_1_callback_ndo_tx_timeout, ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_1_45(ldv_1_callback_ndo_start_xmit, ldv_1_container_struct_sk_buff_ptr,
                                                ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_1_44(ldv_1_callback_ndo_set_rx_mode, ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_15:
  {
  ldv_dummy_resourceless_instance_callback_1_43(ldv_1_callback_ndo_set_mac_address,
                                                ldv_1_container_net_device, (void *)ldv_1_container_struct_ethtool_channels_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_1_40(ldv_1_callback_ndo_set_features, ldv_1_container_net_device,
                                                ldv_1_ldv_param_40_1_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_17:
  {
  ldv_dummy_resourceless_instance_callback_1_39(ldv_1_callback_ndo_poll_controller,
                                                ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_18:
  {
  ldv_dummy_resourceless_instance_callback_1_38(ldv_1_callback_ndo_get_stats64, ldv_1_container_net_device,
                                                ldv_1_container_struct_rtnl_link_stats64_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_19:
  {
  ldv_dummy_resourceless_instance_callback_1_35(ldv_1_callback_ndo_fix_features, ldv_1_container_net_device,
                                                ldv_1_ldv_param_35_1_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_20:
  {
  ldv_dummy_resourceless_instance_callback_1_32(ldv_1_callback_ndo_do_ioctl, ldv_1_container_net_device,
                                                ldv_1_container_struct_ifreq_ptr,
                                                ldv_1_ldv_param_32_2_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_21:
  {
  ldv_dummy_resourceless_instance_callback_1_29(ldv_1_callback_ndo_change_mtu, ldv_1_container_net_device,
                                                ldv_1_ldv_param_29_1_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_22:
  {
  ldv_dummy_resourceless_instance_callback_1_28(ldv_1_callback_get_wol, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_wolinfo_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_23:
  {
  tmp___2 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_25_2_default = (unsigned char *)tmp___2;
  ldv_dummy_resourceless_instance_callback_1_25(ldv_1_callback_get_strings, ldv_1_container_net_device,
                                                ldv_1_ldv_param_25_1_default, ldv_1_ldv_param_25_2_default);
  ldv_free((void *)ldv_1_ldv_param_25_2_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_24:
  {
  ldv_dummy_resourceless_instance_callback_1_22(ldv_1_callback_get_sset_count, ldv_1_container_net_device,
                                                ldv_1_ldv_param_22_1_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_25:
  {
  ldv_dummy_resourceless_instance_callback_1_21(ldv_1_callback_get_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_26:
  {
  ldv_dummy_resourceless_instance_callback_1_20(ldv_1_callback_get_ringparam, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_ringparam_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_27:
  {
  ldv_dummy_resourceless_instance_callback_1_19(ldv_1_callback_get_regs_len, ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_28:
  {
  ldv_dummy_resourceless_instance_callback_1_18(ldv_1_callback_get_regs, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_regs_ptr,
                                                (void *)ldv_1_container_struct_ethtool_channels_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_29:
  {
  ldv_dummy_resourceless_instance_callback_1_17(ldv_1_callback_get_pauseparam, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_pauseparam_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_30:
  {
  ldv_dummy_resourceless_instance_callback_1_16(ldv_1_callback_get_link, ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_31:
  {
  tmp___3 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_13_2_default = (unsigned long long *)tmp___3;
  ldv_dummy_resourceless_instance_callback_1_13(ldv_1_callback_get_ethtool_stats,
                                                ldv_1_container_net_device, ldv_1_container_struct_ethtool_stats_ptr,
                                                ldv_1_ldv_param_13_2_default);
  ldv_free((void *)ldv_1_ldv_param_13_2_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_32:
  {
  ldv_dummy_resourceless_instance_callback_1_12(ldv_1_callback_get_eeprom_len, ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_33:
  {
  tmp___4 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_9_2_default = (unsigned char *)tmp___4;
  ldv_dummy_resourceless_instance_callback_1_9(ldv_1_callback_get_eeprom, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_eeprom_ptr,
                                               ldv_1_ldv_param_9_2_default);
  ldv_free((void *)ldv_1_ldv_param_9_2_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_34:
  {
  ldv_dummy_resourceless_instance_callback_1_8(ldv_1_callback_get_drvinfo, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_drvinfo_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_35:
  {
  ldv_dummy_resourceless_instance_callback_1_7(ldv_1_callback_get_coalesce, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_coalesce_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_36:
  {
  ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_get_channels, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_channels_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_37: ;
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
void ldv_pci_instance_callback_2_10(unsigned int (*arg0)(struct pci_dev * , enum pci_channel_state ) ,
                                    struct pci_dev *arg1 , enum pci_channel_state arg2 )
{
  {
  {
  bnx2_io_error_detected(arg1, (pci_channel_state_t )arg2);
  }
  return;
}
}
void ldv_pci_instance_callback_2_23(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  bnx2_io_resume(arg1);
  }
  return;
}
}
void ldv_pci_instance_callback_2_24(unsigned int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  bnx2_io_slot_reset(arg1);
  }
  return;
}
}
int ldv_pci_instance_probe_2_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = bnx2_init_one(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  bnx2_remove_one(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_2_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
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
  bnx2_shutdown(arg1);
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
  tmp = (*arg0)(arg1, arg2);
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
  unsigned int (*ldv_2_callback_error_detected)(struct pci_dev * , enum pci_channel_state ) ;
  void (*ldv_2_callback_func_1_ptr)(struct pci_dev * ) ;
  unsigned int (*ldv_2_callback_slot_reset)(struct pci_dev * ) ;
  struct pci_driver *ldv_2_container_pci_driver ;
  struct pci_dev *ldv_2_resource_dev ;
  enum pci_channel_state ldv_2_resource_enum_pci_channel_state ;
  struct pm_message ldv_2_resource_pm_message ;
  struct pci_device_id *ldv_2_resource_struct_pci_device_id_ptr ;
  int ldv_2_ret_default ;
  struct ldv_struct_pci_instance_2 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_pci_instance_2 *)arg0;
  ldv_2_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_pci_instance_2 *)0)) {
    {
    ldv_2_container_pci_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(2936UL);
  ldv_2_resource_dev = (struct pci_dev *)tmp;
  tmp___0 = ldv_xmalloc(32UL);
  ldv_2_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___0;
  }
  goto ldv_main_2;
  return;
  ldv_main_2:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_pre_probe();
    ldv_2_ret_default = ldv_pci_instance_probe_2_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_2_container_pci_driver->probe,
                                                    ldv_2_resource_dev, ldv_2_resource_struct_pci_device_id_ptr);
    ldv_2_ret_default = ldv_post_probe(ldv_2_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
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
    ldv_free((void *)ldv_2_resource_dev);
    ldv_free((void *)ldv_2_resource_struct_pci_device_id_ptr);
    }
    return;
  }
  return;
  ldv_call_2:
  {
  tmp___3 = ldv_undef_int();
  }
  {
  if (tmp___3 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___3 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___3 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___3 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___3 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_pci_instance_callback_2_24(ldv_2_callback_slot_reset, ldv_2_resource_dev);
  }
  goto ldv_call_2;
  case_2:
  {
  ldv_pci_instance_callback_2_23(ldv_2_callback_func_1_ptr, ldv_2_resource_dev);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  case_3:
  {
  ldv_pci_instance_callback_2_10(ldv_2_callback_error_detected, ldv_2_resource_dev,
                                 ldv_2_resource_enum_pci_channel_state);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_4: ;
  if ((unsigned long )ldv_2_container_pci_driver->suspend != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                       pm_message_t ))0)) {
    {
    ldv_2_ret_default = ldv_pci_instance_suspend_2_8(ldv_2_container_pci_driver->suspend,
                                                     ldv_2_resource_dev, ldv_2_resource_pm_message);
    }
  } else {
  }
  {
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  }
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
  }
  if ((unsigned long )ldv_2_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_2_6(ldv_2_container_pci_driver->resume_early, ldv_2_resource_dev);
    }
  } else {
  }
  if ((unsigned long )ldv_2_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_2_5(ldv_2_container_pci_driver->resume, ldv_2_resource_dev);
    }
  } else {
  }
  goto ldv_call_2;
  case_5:
  {
  ldv_pci_instance_shutdown_2_3(ldv_2_container_pci_driver->shutdown, ldv_2_resource_dev);
  ldv_pci_instance_release_2_2(ldv_2_container_pci_driver->remove, ldv_2_resource_dev);
  }
  goto ldv_main_2;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_14_pci_driver_pci_driver ;
  {
  {
  ldv_14_pci_driver_pci_driver = arg1;
  ldv_dispatch_deregister_14_1(ldv_14_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_platform_instance_probe_4_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1);
  }
  return (tmp);
}
}
void ldv_platform_instance_release_4_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
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
  bnx2_suspend(arg1);
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
  bnx2_suspend(arg1);
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
  bnx2_resume(arg1);
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
  bnx2_resume(arg1);
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
  bnx2_suspend(arg1);
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
  bnx2_resume(arg1);
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
void ldv_pm_platform_instance_4(void *arg0 )
{
  struct platform_driver *ldv_4_container_platform_driver ;
  struct platform_device *ldv_4_ldv_param_14_0_default ;
  struct platform_device *ldv_4_ldv_param_3_0_default ;
  int ldv_4_probed_default ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  {
  ldv_4_probed_default = 1;
  goto ldv_main_4;
  return;
  ldv_main_4:
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = ldv_xmalloc(1432UL);
    ldv_4_ldv_param_14_0_default = (struct platform_device *)tmp;
    ldv_pre_probe();
    }
    if ((unsigned long )ldv_4_container_platform_driver->probe != (unsigned long )((int (*)(struct platform_device * ))0)) {
      {
      ldv_4_probed_default = ldv_platform_instance_probe_4_14(ldv_4_container_platform_driver->probe,
                                                              ldv_4_ldv_param_14_0_default);
      }
    } else {
    }
    {
    ldv_4_probed_default = ldv_post_probe(ldv_4_probed_default);
    ldv_free((void *)ldv_4_ldv_param_14_0_default);
    tmp___0 = ldv_undef_int();
    }
    if (tmp___0 != 0) {
      {
      ldv_assume(ldv_4_probed_default == 0);
      }
      goto ldv_call_4;
    } else {
      {
      ldv_assume(ldv_4_probed_default != 0);
      }
      goto ldv_main_4;
    }
  } else {
    return;
  }
  return;
  ldv_call_4:
  {
  tmp___2 = ldv_undef_int();
  }
  {
  if (tmp___2 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___2 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___2 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___3 = ldv_xmalloc(1432UL);
  ldv_4_ldv_param_3_0_default = (struct platform_device *)tmp___3;
  }
  if ((unsigned long )ldv_4_container_platform_driver->remove != (unsigned long )((int (*)(struct platform_device * ))0)) {
    {
    ldv_platform_instance_release_4_3(ldv_4_container_platform_driver->remove, ldv_4_ldv_param_3_0_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_4_ldv_param_3_0_default);
  ldv_4_probed_default = 1;
  }
  goto ldv_main_4;
  case_2: ;
  goto ldv_call_4;
  case_3:
  {
  ldv_dispatch_pm_register_4_6();
  ldv_dispatch_pm_deregister_4_5();
  }
  goto ldv_call_4;
  goto ldv_call_4;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_pm_pm_ops_instance_3(void *arg0 )
{
  struct device *ldv_3_device_device ;
  struct dev_pm_ops *ldv_3_pm_ops_dev_pm_ops ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  goto ldv_do_3;
  return;
  ldv_do_3:
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
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  goto switch_default___0;
  case_1: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->runtime_idle != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_idle_3_27(ldv_3_pm_ops_dev_pm_ops->runtime_idle, ldv_3_device_device);
    }
  } else {
  }
  goto ldv_do_3;
  case_2: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->runtime_suspend != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_suspend_3_25(ldv_3_pm_ops_dev_pm_ops->runtime_suspend,
                                             ldv_3_device_device);
    }
  } else {
  }
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->runtime_resume != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_resume_3_24(ldv_3_pm_ops_dev_pm_ops->runtime_resume,
                                            ldv_3_device_device);
    }
  } else {
  }
  goto ldv_do_3;
  case_3: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->prepare != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_prepare_3_22(ldv_3_pm_ops_dev_pm_ops->prepare, ldv_3_device_device);
    }
  } else {
  }
  {
  tmp___0 = ldv_undef_int();
  }
  {
  if (tmp___0 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___0 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___0 == 3) {
    goto case_3___0;
  } else {
  }
  goto switch_default;
  case_1___0:
  {
  ldv_pm_ops_instance_suspend_3_21(ldv_3_pm_ops_dev_pm_ops->suspend, ldv_3_device_device);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->suspend_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_suspend_noirq_3_20(ldv_3_pm_ops_dev_pm_ops->suspend_noirq,
                                             ldv_3_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->resume_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_resume_noirq_3_19(ldv_3_pm_ops_dev_pm_ops->resume_noirq,
                                            ldv_3_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->suspend_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_suspend_late_3_18(ldv_3_pm_ops_dev_pm_ops->suspend_late,
                                            ldv_3_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->resume_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_resume_early_3_17(ldv_3_pm_ops_dev_pm_ops->resume_early,
                                            ldv_3_device_device);
      }
    } else {
    }
  }
  {
  ldv_pm_ops_instance_resume_3_16(ldv_3_pm_ops_dev_pm_ops->resume, ldv_3_device_device);
  }
  goto ldv_56033;
  case_2___0:
  {
  ldv_pm_ops_instance_freeze_3_15(ldv_3_pm_ops_dev_pm_ops->freeze, ldv_3_device_device);
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->freeze_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_freeze_late_3_14(ldv_3_pm_ops_dev_pm_ops->freeze_late, ldv_3_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->thaw_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_thaw_early_3_13(ldv_3_pm_ops_dev_pm_ops->thaw_early, ldv_3_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->freeze_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_freeze_noirq_3_12(ldv_3_pm_ops_dev_pm_ops->freeze_noirq,
                                            ldv_3_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->thaw_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_thaw_noirq_3_11(ldv_3_pm_ops_dev_pm_ops->thaw_noirq, ldv_3_device_device);
      }
    } else {
    }
  }
  {
  ldv_pm_ops_instance_thaw_3_10(ldv_3_pm_ops_dev_pm_ops->thaw, ldv_3_device_device);
  }
  goto ldv_56033;
  case_3___0:
  {
  ldv_pm_ops_instance_poweroff_3_9(ldv_3_pm_ops_dev_pm_ops->poweroff, ldv_3_device_device);
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->poweroff_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_poweroff_late_3_8(ldv_3_pm_ops_dev_pm_ops->poweroff_late,
                                            ldv_3_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->restore_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_restore_early_3_7(ldv_3_pm_ops_dev_pm_ops->restore_early,
                                            ldv_3_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->poweroff_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_poweroff_noirq_3_6(ldv_3_pm_ops_dev_pm_ops->poweroff_noirq,
                                             ldv_3_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->restore_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_restore_noirq_3_5(ldv_3_pm_ops_dev_pm_ops->restore_noirq,
                                            ldv_3_device_device);
      }
    } else {
    }
  }
  {
  ldv_pm_ops_instance_restore_3_4(ldv_3_pm_ops_dev_pm_ops->restore, ldv_3_device_device);
  }
  goto ldv_56033;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_56033: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->complete != (unsigned long )((void (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_complete_3_3(ldv_3_pm_ops_dev_pm_ops->complete, ldv_3_device_device);
    }
  } else {
  }
  goto ldv_do_3;
  case_4: ;
  return;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
int ldv_register_netdev(int arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_11_netdev_net_device ;
  int ldv_11_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_11_ret_default = 1;
  ldv_11_ret_default = ldv_pre_register_netdev();
  ldv_11_netdev_net_device = arg1;
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_11_ret_default == 0);
    ldv_11_ret_default = ldv_register_netdev_open_11_6((ldv_11_netdev_net_device->netdev_ops)->ndo_open,
                                                       ldv_11_netdev_net_device);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_11_ret_default == 0);
      ldv_dispatch_register_11_4(ldv_11_netdev_net_device);
      }
    } else {
      {
      ldv_assume(ldv_11_ret_default != 0);
      }
    }
  } else {
    {
    ldv_assume(ldv_11_ret_default != 0);
    }
  }
  return (ldv_11_ret_default);
  return (arg0);
  return (arg0);
}
}
int ldv_register_netdev_open_11_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = bnx2_open(arg1);
  }
  return (tmp);
}
}
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_12_callback_handler)(int , void * ) ;
  void *ldv_12_data_data ;
  int ldv_12_line_line ;
  enum irqreturn (*ldv_12_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_12_line_line = (int )arg1;
    ldv_12_callback_handler = arg2;
    ldv_12_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_12_data_data = arg5;
    ldv_dispatch_irq_register_12_2(ldv_12_line_line, ldv_12_callback_handler, ldv_12_thread_thread,
                                   ldv_12_data_data);
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
void ldv_timer_instance_callback_5_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_5(void *arg0 )
{
  struct timer_list *ldv_5_container_timer_list ;
  struct ldv_struct_timer_instance_5 *data ;
  {
  data = (struct ldv_struct_timer_instance_5 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_timer_instance_5 *)0)) {
    {
    ldv_5_container_timer_list = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_5_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_5_2(ldv_5_container_timer_list->function, ldv_5_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  }
  return;
  return;
}
}
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_13_netdev_net_device ;
  {
  {
  ldv_13_netdev_net_device = arg1;
  ldv_unregister_netdev_stop_13_2((ldv_13_netdev_net_device->netdev_ops)->ndo_stop,
                                  ldv_13_netdev_net_device);
  ldv_dispatch_deregister_13_1(ldv_13_netdev_net_device);
  }
  return;
  return;
}
}
void ldv_unregister_netdev_stop_13_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  {
  {
  bnx2_close(arg1);
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
static void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_cnic_lock_of_bnx2(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_cnic_lock_of_bnx2(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_cnic_lock_of_bnx2(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_cnic_lock_of_bnx2(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_21(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_cnic_lock_of_bnx2(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_cnic_lock_of_bnx2(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mod_timer_23(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_24(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_25(unsigned int irq , irqreturn_t (*handler)(int ,
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
static void ldv_free_irq_26(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static int ldv_mod_timer_27(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_sync_28(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_sync_29(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_30(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_cnic_lock_of_bnx2(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_cnic_lock_of_bnx2(ldv_func_arg1);
  }
  return;
}
}
static struct net_device *ldv_alloc_etherdev_mqs_33(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 )
{
  ldv_func_ret_type___6 ldv_func_res ;
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
static int ldv_register_netdev_34(struct net_device *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
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
static void ldv_free_netdev_35(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_unregister_netdev_36(struct net_device *ldv_func_arg1 )
{
  {
  {
  unregister_netdev(ldv_func_arg1);
  ldv_unregister_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_del_timer_sync_37(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_netdev_38(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_del_timer_sync_39(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_sync_40(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv___pci_register_driver_41(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 )
{
  ldv_func_ret_type___11 ldv_func_res ;
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
static void ldv_pci_unregister_driver_42(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
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
extern void *external_allocated_data(void) ;
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
ldv_set LDV_MUTEXES_cnic_lock_of_bnx2 ;
void ldv_mutex_lock_cnic_lock_of_bnx2(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_cnic_lock_of_bnx2);
  LDV_MUTEXES_cnic_lock_of_bnx2 = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_cnic_lock_of_bnx2(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_cnic_lock_of_bnx2);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_cnic_lock_of_bnx2 = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_cnic_lock_of_bnx2(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_cnic_lock_of_bnx2) {
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
int ldv_mutex_trylock_cnic_lock_of_bnx2(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_cnic_lock_of_bnx2);
  tmp = ldv_mutex_is_locked_cnic_lock_of_bnx2(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_cnic_lock_of_bnx2 = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cnic_lock_of_bnx2(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_cnic_lock_of_bnx2(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_cnic_lock_of_bnx2(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_cnic_lock_of_bnx2);
  LDV_MUTEXES_cnic_lock_of_bnx2 = 0;
  }
  return;
}
}
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
  LDV_MUTEXES_cnic_lock_of_bnx2 = 0;
  LDV_MUTEXES_i_mutex_of_inode = 0;
  LDV_MUTEXES_lock = 0;
  LDV_MUTEXES_mutex_of_device = 0;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_cnic_lock_of_bnx2);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock);
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
void __const_udelay(unsigned long arg0) {
  return;
}
void __free_pages(struct page *arg0, unsigned int arg1) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __local_bh_disable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __local_bh_enable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __napi_schedule(struct napi_struct *arg0) {
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
int __pci_enable_wake(struct pci_dev *arg0, pci_power_t arg1, bool arg2, bool arg3) {
  return __VERIFIER_nondet_int();
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
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
void *external_alloc(void);
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return (struct net_device *)external_alloc();
}
void *external_alloc(void);
struct page *alloc_pages_current(gfp_t arg0, unsigned int arg1) {
  return (struct page *)external_alloc();
}
void *external_alloc(void);
struct sk_buff *build_skb(void *arg0, unsigned int arg1) {
  return (struct sk_buff *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
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
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_sync_single_for_device(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_close(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void device_set_wakeup_capable(struct device *arg0, bool arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_set_wakeup_enable(struct device *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
void disable_irq(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void dql_completed(struct dql *arg0, unsigned int arg1) {
  return;
}
void dql_reset(struct dql *arg0) {
  return;
}
void enable_irq(unsigned int arg0) {
  return;
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
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
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
void lock_acquire(struct lockdep_map *arg0, unsigned int arg1, int arg2, int arg3, int arg4, struct lockdep_map *arg5, unsigned long arg6) {
  return;
}
int __VERIFIER_nondet_int(void);
int lock_is_held(struct lockdep_map *arg0) {
  return __VERIFIER_nondet_int();
}
void lock_release(struct lockdep_map *arg0, int arg1, unsigned long arg2) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void lockdep_rcu_suspicious(const char *arg0, const int arg1, const char *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msleep_interruptible(unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void napi_complete(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_receive(struct napi_struct *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_err(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_warn(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
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
int netif_get_num_default_rss_queues() {
  return __VERIFIER_nondet_int();
}
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
void netif_napi_del(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_set_real_num_rx_queues(struct net_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netif_set_real_num_tx_queues(struct net_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netpoll_trap() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_cleanup_aer_uncorrect_error_status(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_dev_put(struct pci_dev *arg0) {
  return;
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
void pci_disable_msix(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_disable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_block(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix(struct pci_dev *arg0, struct msix_entry *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct pci_dev *pci_get_device(unsigned int arg0, unsigned int arg1, struct pci_dev *arg2) {
  return (struct pci_dev *)external_alloc();
}
void *external_alloc(void);
void *pci_iomap(struct pci_dev *arg0, int arg1, unsigned long arg2) {
  return (void *)external_alloc();
}
void pci_iounmap(struct pci_dev *arg0, void *arg1) {
  return;
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
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_vpd_find_info_keyword(const u8 *arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_vpd_find_tag(const u8 *arg0, unsigned int arg1, unsigned int arg2, u8 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_wake_from_d3(struct pci_dev *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_is_watching() {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_lockdep_current_cpu_online() {
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
void rtnl_lock() {
  return;
}
void rtnl_unlock() {
  return;
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
void synchronize_sched() {
  return;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void vfree(const void *arg0) {
  return;
}
void *external_alloc(void);
void *vzalloc(unsigned long arg0) {
  return (void *)external_alloc();
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
