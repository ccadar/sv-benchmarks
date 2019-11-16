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
typedef __u64 __le64;
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
struct __anonstruct____missing_field_name_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
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
struct __anonstruct____missing_field_name_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_13 {
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
union __anonunion____missing_field_name_11 {
   struct __anonstruct____missing_field_name_12 __annonCompField6 ;
   struct __anonstruct____missing_field_name_13 __annonCompField7 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_11 __annonCompField8 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
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
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned int flags : 8 ;
};
struct net_device;
struct file_operations;
struct completion;
struct pid;
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
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
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
enum ldv_22400 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_22400 socket_state;
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
enum ldv_28758 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_28759 {
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
   enum ldv_28758 reg_state : 8 ;
   bool dismantle ;
   enum ldv_28759 rtnl_link_state : 16 ;
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
struct mii_ioctl_data {
   __u16 phy_id ;
   __u16 reg_num ;
   __u16 val_in ;
   __u16 val_out ;
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
union __anonunion_ki_obj_247 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_247 ki_obj ;
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
union __anonunion____missing_field_name_248 {
   struct sock_filter insns[0U] ;
   struct work_struct work ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned int len ;
   struct callback_head rcu ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter const * ) ;
   union __anonunion____missing_field_name_248 __annonCompField77 ;
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
union __anonunion____missing_field_name_253 {
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
   union __anonunion____missing_field_name_253 __annonCompField78 ;
};
struct __anonstruct_socket_lock_t_254 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_254 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_256 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_255 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_256 __annonCompField79 ;
};
union __anonunion____missing_field_name_257 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_259 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_258 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_259 __annonCompField82 ;
};
union __anonunion____missing_field_name_260 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_261 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_255 __annonCompField80 ;
   union __anonunion____missing_field_name_257 __annonCompField81 ;
   union __anonunion____missing_field_name_258 __annonCompField83 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 4 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_260 __annonCompField84 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_261 __annonCompField85 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_262 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_262 sk_backlog ;
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
union __anonunion_h_263 {
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
   union __anonunion_h_263 h ;
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
struct timewait_sock_ops {
   struct kmem_cache *twsk_slab ;
   char *twsk_slab_name ;
   unsigned int twsk_obj_size ;
   int (*twsk_unique)(struct sock * , struct sock * , void * ) ;
   void (*twsk_destructor)(struct sock * ) ;
};
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct cas_hp_inst {
   char const *note ;
   u16 mask ;
   u16 val ;
   u8 op ;
   u8 soff ;
   u8 snext ;
   u8 foff ;
   u8 fnext ;
   u8 outop ;
   u16 outarg ;
   u8 outenab ;
   u8 outshift ;
   u16 outmask ;
};
typedef struct cas_hp_inst cas_hp_inst_t;
struct cas_tx_desc {
   __le64 control ;
   __le64 buffer ;
};
struct cas_rx_desc {
   __le64 index ;
   __le64 buffer ;
};
struct cas_rx_comp {
   __le64 word1 ;
   __le64 word2 ;
   __le64 word3 ;
   __le64 word4 ;
};
enum link_state {
    link_down = 0,
    link_aneg = 1,
    link_force_try = 2,
    link_force_ret = 3,
    link_force_ok = 4,
    link_up = 5
} ;
struct cas_page {
   struct list_head list ;
   struct page *buffer ;
   dma_addr_t dma_addr ;
   int used ;
};
typedef struct cas_page cas_page_t;
struct cas_init_block {
   struct cas_rx_comp rxcs[1U][2048U] ;
   struct cas_rx_desc rxds[2U][512U] ;
   struct cas_tx_desc txds[4U][512U] ;
   __le64 tx_compwb ;
};
struct cas_tiny_count {
   int nbufs ;
   int used ;
};
struct cas {
   spinlock_t lock ;
   spinlock_t tx_lock[4U] ;
   spinlock_t stat_lock[5U] ;
   spinlock_t rx_inuse_lock ;
   spinlock_t rx_spare_lock ;
   void *regs ;
   int tx_new[4U] ;
   int tx_old[4U] ;
   int rx_old[2U] ;
   int rx_cur[1U] ;
   int rx_new[1U] ;
   int rx_last[2U] ;
   struct napi_struct napi ;
   int hw_running ;
   int opened ;
   struct mutex pm_mutex ;
   struct cas_init_block *init_block ;
   struct cas_tx_desc *init_txds[4U] ;
   struct cas_rx_desc *init_rxds[2U] ;
   struct cas_rx_comp *init_rxcs[4U] ;
   struct sk_buff *tx_skbs[4U][512U] ;
   struct sk_buff_head rx_flows[64U] ;
   cas_page_t *rx_pages[2U][512U] ;
   struct list_head rx_spare_list ;
   struct list_head rx_inuse_list ;
   int rx_spares_needed ;
   struct cas_tiny_count tx_tiny_use[4U][512U] ;
   u8 *tx_tiny_bufs[4U] ;
   u32 msg_enable ;
   struct net_device_stats net_stats[5U] ;
   u32 pci_cfg[16U] ;
   u8 pci_revision ;
   int phy_type ;
   int phy_addr ;
   u32 phy_id ;
   u32 cas_flags ;
   int packet_min ;
   int tx_fifo_size ;
   int rx_fifo_size ;
   int rx_pause_off ;
   int rx_pause_on ;
   int crc_size ;
   int pci_irq_INTC ;
   int min_frame_size ;
   int page_size ;
   int page_order ;
   int mtu_stride ;
   u32 mac_rx_cfg ;
   int link_cntl ;
   int link_fcntl ;
   enum link_state lstate ;
   struct timer_list link_timer ;
   int timer_ticks ;
   struct work_struct reset_task ;
   atomic_t reset_task_pending ;
   atomic_t reset_task_pending_mtu ;
   atomic_t reset_task_pending_spare ;
   atomic_t reset_task_pending_all ;
   int link_transition ;
   int link_transition_jiffies_valid ;
   unsigned long link_transition_jiffies ;
   u8 orig_cacheline_size ;
   int casreg_len ;
   u64 pause_entered ;
   u16 pause_last_time_recvd ;
   dma_addr_t block_dvma ;
   dma_addr_t tx_tiny_dvma[4U] ;
   struct pci_dev *pdev ;
   struct net_device *dev ;
   u16 fw_load_addr ;
   u32 fw_size ;
   u8 *fw_data ;
};
struct __anonstruct_ethtool_cassini_statnames_270 {
   char const name[32U] ;
};
struct __anonstruct_ethtool_register_table_271 {
   int const offsets ;
};
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef struct net_device *ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
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
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
extern struct module __this_module ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
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
extern void list_del(struct list_head * ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static void __list_splice(struct list_head const *list , struct list_head *prev ,
                                   struct list_head *next )
{
  struct list_head *first ;
  struct list_head *last ;
  {
  first = list->next;
  last = list->prev;
  first->prev = prev;
  prev->next = first;
  last->next = next;
  next->prev = last;
  return;
}
}
__inline static void list_splice(struct list_head const *list , struct list_head *head )
{
  int tmp ;
  {
  {
  tmp = list_empty(list);
  }
  if (tmp == 0) {
    {
    __list_splice(list, head, head->next);
    }
  } else {
  }
  return;
}
}
__inline static void list_splice_init(struct list_head *list , struct list_head *head )
{
  int tmp ;
  {
  {
  tmp = list_empty((struct list_head const *)list);
  }
  if (tmp == 0) {
    {
    __list_splice((struct list_head const *)list, head, head->next);
    INIT_LIST_HEAD(list);
    }
  } else {
  }
  return;
}
}
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
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
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
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern int printk(char const * , ...) ;
extern int __dynamic_netdev_dbg(struct _ddebug * , struct net_device const * , char const *
                                , ...) ;
extern void __bad_percpu_size(void) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern int __bitmap_weight(unsigned long const * , int ) ;
__inline static int bitmap_weight(unsigned long const *src , int nbits )
{
  int tmp___0 ;
  {
  {
  tmp___0 = __bitmap_weight(src, nbits);
  }
  return (tmp___0);
}
}
extern void warn_slowpath_null(char const * , int const ) ;
extern int nr_cpu_ids ;
extern struct cpumask const * const cpu_online_mask ;
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), nr_cpu_ids);
  }
  return ((unsigned int )tmp);
}
}
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/f860c18/linux-kernel-locking-spinlock/lkbce/arch/x86/include/asm/paravirt.h"),
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
__inline static void atomic_sub(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %1,%0": "+m" (v->counter): "ir" (i));
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
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0": "+m" (v->counter));
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __ldv_spin_lock(spinlock_t * ) ;
static void ldv___ldv_spin_lock_132(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_134(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_142(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_144(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_146(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_149(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_152(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_154(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_157(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_159(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_165(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_167(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_169(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_171(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_173(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_175(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_182(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_184(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_NOT_ARG_SIGN(void) ;
void ldv_spin_unlock_NOT_ARG_SIGN(void) ;
void ldv_spin_lock_lock_of_cas(void) ;
void ldv_spin_unlock_lock_of_cas(void) ;
void ldv_spin_lock_rx_inuse_lock_of_cas(void) ;
void ldv_spin_unlock_rx_inuse_lock_of_cas(void) ;
void ldv_spin_lock_rx_spare_lock_of_cas(void) ;
void ldv_spin_unlock_rx_spare_lock_of_cas(void) ;
void ldv_spin_lock_stat_lock_of_cas(void) ;
void ldv_spin_unlock_stat_lock_of_cas(void) ;
extern void ldv_initialize(void) ;
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
extern void *external_allocated_data(void) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
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
  goto ldv_6733;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6733;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6733;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6733;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6733: ;
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
  goto ldv_6745;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6745;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6745;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6745;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6745: ;
  return;
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
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
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_81(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_83(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_83(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_81(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_81(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_83(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_81(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_83(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_83(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_83(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_83(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_107(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_81(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_107(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_107(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_107(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_81(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_107(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_107(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_79(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_82(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_84(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_84(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_82(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_82(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_84(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_84(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_82(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_84(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_84(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_84(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_84(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_84(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_108(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_82(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_108(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_108(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_108(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_79(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_79(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_82(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_79(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_79(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_79(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_108(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_79(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_79(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_108(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_79(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField19.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.next != (unsigned long )((struct list_head * )0));
}
}
extern int mod_timer(struct timer_list * , unsigned long ) ;
static int ldv_mod_timer_105(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_106(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_121(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_147(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
static int ldv_del_timer_sync_141(struct timer_list *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool flush_work(struct work_struct * ) ;
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
extern void dump_page(struct page * , char * ) ;
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
  return (ret);
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
extern void pci_iounmap(struct pci_dev * , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
extern void *vmalloc(unsigned long ) ;
extern void vfree(void const * ) ;
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
static void *ldv_dev_get_drvdata_58(struct device const *dev ) ;
static int ldv_dev_set_drvdata_59(struct device *dev , void *data ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern void __const_udelay(unsigned long ) ;
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
__inline static int page_count(struct page *page )
{
  struct page *tmp ;
  int tmp___0 ;
  {
  {
  tmp = compound_head(page);
  tmp___0 = atomic_read((atomic_t const *)(& tmp->__annonCompField43.__annonCompField42.__annonCompField41._count));
  }
  return (tmp___0);
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
  tmp___3 = atomic_read((atomic_t const *)(& page->__annonCompField43.__annonCompField42.__annonCompField41._count));
  tmp___4 = ldv__builtin_expect(tmp___3 <= 0, 0L);
  }
  if (tmp___4 != 0L) {
    {
    dump_page(page, (char *)0);
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/mm.h"),
                         "i" (488), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  atomic_inc(& page->__annonCompField43.__annonCompField42.__annonCompField41._count);
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
extern void schedule(void) ;
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void get_random_bytes(void * , int ) ;
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
__inline static __sum16 csum_fold(__wsum sum )
{
  {
  __asm__ ("  addl %1,%0\n  adcl $0xffff,%0": "=r" (sum): "r" (sum << 16), "0" (sum & 4294901760U));
  return ((__sum16 )(~ sum >> 16));
}
}
extern __wsum csum_partial(void const * , int , __wsum ) ;
__inline static __wsum csum_unfold(__sum16 n )
{
  {
  return ((__wsum )n);
}
}
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
    warn_slowpath_null("/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/f860c18/linux-kernel-locking-spinlock/lkbce/arch/x86/include/asm/dma-mapping.h",
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
extern int skb_pad(struct sk_buff * , int ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static struct sk_buff *skb_peek(struct sk_buff_head const *list_ )
{
  struct sk_buff *skb ;
  {
  skb = list_->next;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)list_)) {
    skb = (struct sk_buff *)0;
  } else {
  }
  return (skb);
}
}
__inline static void __skb_queue_head_init(struct sk_buff_head *list )
{
  struct sk_buff *tmp ;
  {
  tmp = (struct sk_buff *)list;
  list->next = tmp;
  list->prev = tmp;
  list->qlen = 0U;
  return;
}
}
__inline static void skb_queue_head_init(struct sk_buff_head *list )
{
  struct lock_class_key __key ;
  {
  {
  spinlock_check(& list->lock);
  __raw_spin_lock_init(& list->lock.__annonCompField19.rlock, "&(&list->lock)->rlock",
                       & __key);
  __skb_queue_head_init(list);
  }
  return;
}
}
__inline static void __skb_insert(struct sk_buff *newsk , struct sk_buff *prev , struct sk_buff *next ,
                                  struct sk_buff_head *list )
{
  struct sk_buff *tmp ;
  {
  newsk->next = next;
  newsk->prev = prev;
  tmp = newsk;
  prev->next = tmp;
  next->prev = tmp;
  list->qlen = list->qlen + 1U;
  return;
}
}
__inline static void __skb_queue_before(struct sk_buff_head *list , struct sk_buff *next ,
                                        struct sk_buff *newsk )
{
  {
  {
  __skb_insert(newsk, next->prev, next, list);
  }
  return;
}
}
__inline static void __skb_queue_tail(struct sk_buff_head *list , struct sk_buff *newsk )
{
  {
  {
  __skb_queue_before(list, (struct sk_buff *)list, newsk);
  }
  return;
}
}
__inline static void __skb_unlink(struct sk_buff *skb , struct sk_buff_head *list )
{
  struct sk_buff *next ;
  struct sk_buff *prev ;
  struct sk_buff *tmp ;
  {
  list->qlen = list->qlen - 1U;
  next = skb->next;
  prev = skb->prev;
  tmp = (struct sk_buff *)0;
  skb->prev = tmp;
  skb->next = tmp;
  next->prev = prev;
  prev->next = next;
  return;
}
}
__inline static struct sk_buff *__skb_dequeue(struct sk_buff_head *list )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  {
  tmp = skb_peek((struct sk_buff_head const *)list);
  skb = tmp;
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    {
    __skb_unlink(skb, list);
    }
  } else {
  }
  return (skb);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
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
__inline static int skb_checksum_start_offset(struct sk_buff const *skb )
{
  unsigned int tmp ;
  {
  {
  tmp = skb_headroom(skb);
  }
  return ((int )((unsigned int )skb->__annonCompField68.__annonCompField67.csum_start - tmp));
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
__inline static void __skb_frag_ref(skb_frag_t *frag )
{
  struct page *tmp ;
  {
  {
  tmp = skb_frag_page((skb_frag_t const *)frag);
  get_page(tmp);
  }
  return;
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
__inline static int skb_padto(struct sk_buff *skb , unsigned int len )
{
  unsigned int size ;
  long tmp ;
  int tmp___0 ;
  {
  {
  size = skb->len;
  tmp = ldv__builtin_expect(size >= len, 1L);
  }
  if (tmp != 0L) {
    return (0);
  } else {
  }
  {
  tmp___0 = skb_pad(skb, (int )(len - size));
  }
  return (tmp___0);
}
}
__inline static void skb_copy_from_linear_data_offset(struct sk_buff const *skb ,
                                                      int const offset , void *to ,
                                                      unsigned int const len )
{
  {
  {
  memcpy(to, (void const *)skb->data + (unsigned long )offset, (size_t )len);
  }
  return;
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
extern void free_netdev(struct net_device * ) ;
static void ldv_free_netdev_179(struct net_device *ldv_func_arg1 ) ;
static void ldv_free_netdev_181(struct net_device *ldv_func_arg1 ) ;
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
__inline static bool netif_queue_stopped(struct net_device const *dev )
{
  struct netdev_queue *tmp ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_get_tx_queue(dev, 0U);
  tmp___0 = netif_tx_queue_stopped((struct netdev_queue const *)tmp);
  }
  return (tmp___0);
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
extern void __dev_kfree_skb_irq(struct sk_buff * , enum skb_free_reason ) ;
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_irq(struct sk_buff *skb )
{
  {
  {
  __dev_kfree_skb_irq(skb, 1);
  }
  return;
}
}
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  {
  __dev_kfree_skb_any(skb, 1);
  }
  return;
}
}
extern int netif_rx(struct sk_buff * ) ;
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
__inline static bool netif_device_present(struct net_device *dev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& dev->state));
  }
  return (tmp != 0);
}
}
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
extern int register_netdev(struct net_device * ) ;
static int ldv_register_netdev_178(struct net_device *ldv_func_arg1 ) ;
extern void unregister_netdev(struct net_device * ) ;
static void ldv_unregister_netdev_180(struct net_device *ldv_func_arg1 ) ;
extern int netdev_printk(char const * , struct net_device const * , char const *
                         , ...) ;
extern int netdev_err(struct net_device const * , char const * , ...) ;
extern int netdev_warn(struct net_device const * , char const * , ...) ;
extern int netdev_info(struct net_device const * , char const * , ...) ;
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
extern int pci_bus_write_config_byte(struct pci_bus * , unsigned int , int , u8 ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
extern int pci_bus_write_config_dword(struct pci_bus * , unsigned int , int , u32 ) ;
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
__inline static int pci_write_config_dword(struct pci_dev const *dev , int where ,
                                           u32 val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_try_set_mwi(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_186(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_187(struct pci_driver *ldv_func_arg1 ) ;
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
__inline static dma_addr_t pci_map_page(struct pci_dev *hwdev , struct page *page ,
                                        unsigned long offset , size_t size , int direction )
{
  dma_addr_t tmp ;
  {
  {
  tmp = dma_map_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                     page, offset, size, (enum dma_data_direction )direction);
  }
  return (tmp);
}
}
__inline static void pci_unmap_page(struct pci_dev *hwdev , dma_addr_t dma_address ,
                                    size_t size , int direction )
{
  {
  {
  dma_unmap_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 dma_address, size, (enum dma_data_direction )direction);
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
__inline static void pci_dma_sync_single_for_device(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                    size_t size , int direction )
{
  {
  {
  dma_sync_single_for_device((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             dma_handle, size, (enum dma_data_direction )direction);
  }
  return;
}
}
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
  tmp = ldv_dev_get_drvdata_58((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_59(& pdev->dev, data);
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
__inline static int ldv_request_irq_151(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_156(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
__inline static void pagefault_disable(void)
{
  {
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  }
  return;
}
}
__inline static void pagefault_enable(void)
{
  {
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  }
  return;
}
}
__inline static void *kmap_atomic(struct page *page )
{
  void *tmp ;
  {
  {
  pagefault_disable();
  tmp = lowmem_page_address((struct page const *)page);
  }
  return (tmp);
}
}
__inline static void __kunmap_atomic(void *addr )
{
  {
  {
  pagefault_enable();
  }
  return;
}
}
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_mac_addr(struct net_device * , void * ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
static struct net_device *ldv_alloc_etherdev_mqs_177(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                     unsigned int ldv_func_arg3 ) ;
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
__inline static struct mii_ioctl_data *if_mii(struct ifreq *rq )
{
  {
  return ((struct mii_ioctl_data *)(& rq->ifr_ifru));
}
}
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
static cas_hp_inst_t cas_prog_workaroundtab[21U] =
  { {"packet arrival?", 65535U, 0U, 3U, 6U, 1U, 0U, 0U, 0U, 1023U, 1U, 0U, 0U},
        {"VLAN?", 65535U, 33024U, 0U, 1U, 2U, 0U, 3U, 13U, 74U, 3U, 0U, 65535U},
        {"CFI?", 4096U, 4096U, 0U, 0U, 18U, 1U, 3U, 0U, 0U, 0U, 0U, 0U},
        {"8023?", 65535U, 1536U, 1U, 1U, 4U, 0U, 6U, 0U, 0U, 0U, 0U, 0U},
        {"LLC?", 65535U, 43690U, 0U, 1U, 5U, 0U, 18U, 0U, 0U, 0U, 0U, 0U},
        {"LLCc?", 65280U, 768U, 0U, 2U, 6U, 0U, 18U, 0U, 0U, 0U, 0U, 0U},
        {"IPV4?", 65535U, 2048U, 0U, 1U, 7U, 0U, 10U, 11U, 1710U, 3U, 0U, 65535U},
        {"IPV4 cont?", 65280U, 17664U, 0U, 3U, 8U, 0U, 18U, 7U, 10U, 1U, 0U, 0U},
        {"IPV4 frag?", 16383U, 0U, 0U, 1U, 9U, 0U, 18U, 14U, 62U, 1U, 0U, 65535U},
        {"TCP44?", 255U, 6U, 0U, 7U, 14U, 0U, 18U, 1U, 386U, 3U, 0U, 65535U},
        {"IPV6?", 65535U, 34525U, 0U, 1U, 11U, 0U, 18U, 7U, 21U, 1U, 0U, 0U},
        {"IPV6 len", 61440U, 24576U, 0U, 0U, 12U, 0U, 18U, 12U, 296U, 1U, 0U, 65535U},
        {"IPV6 cont?",
      0U, 0U, 0U, 3U, 13U, 0U, 18U, 1U, 1156U, 1U, 0U, 65535U},
        {"TCP64?", 65280U, 1536U, 0U, 18U, 14U, 0U, 18U, 14U, 63U, 1U, 0U, 65535U},
        {"TCP seq", 0U, 0U, 0U, 0U, 15U, 4U, 15U, 2U, 129U, 3U, 0U, 65535U},
        {"TCP control flags", 0U, 0U, 0U, 0U, 16U, 0U, 16U, 15U, 69U, 3U, 0U, 47U},
        {"TCP length", 0U, 0U, 0U, 0U, 17U, 0U, 17U, 5U, 517U, 3U, 11U, 61440U},
        {"TCP length cont", 0U, 0U, 0U, 0U, 0U, 0U, 0U, 8U, 255U, 3U, 0U, 65535U},
        {"Cleanup", 0U, 0U, 0U, 0U, 19U, 0U, 19U, 11U, 1710U, 3U, 0U, 65535U},
        {"Cleanup 2", 0U, 0U, 0U, 0U, 0U, 0U, 0U, 13U, 1U, 3U, 0U, 1U},
        {(char const *)0, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0}};
static char version[30U] =
  { 'c', 'a', 's', 's',
        'i', 'n', 'i', '.',
        'c', ':', 'v', '1',
        '.', '6', ' ', '(',
        '2', '1', ' ', 'M',
        'a', 'y', ' ', '2',
        '0', '0', '8', ')',
        '\n', '\000'};
static int cassini_debug = -1;
static int link_mode ;
static int linkdown_timeout = 5;
static int link_transition_timeout ;
static u16 link_modes[6U] = { 4096U, 0U, 8192U, 256U,
        8448U, 320U};
static struct pci_device_id const cas_pci_tbl[3U] = { {4238U, 43962U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4107U, 53U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static void cas_set_link_modes(struct cas *cp ) ;
__inline static void cas_lock_tx(struct cas *cp )
{
  int i ;
  {
  i = 0;
  goto ldv_48764;
  ldv_48763:
  {
  ldv_spin_lock_77((spinlock_t *)(& cp->tx_lock) + (unsigned long )i);
  i = i + 1;
  }
  ldv_48764: ;
  if (i <= 3) {
    goto ldv_48763;
  } else {
  }
  return;
}
}
__inline static void cas_unlock_tx(struct cas *cp )
{
  int i ;
  {
  i = 4;
  goto ldv_48774;
  ldv_48773:
  {
  ldv_spin_unlock_79((spinlock_t *)(& cp->tx_lock) + ((unsigned long )i + 0xffffffffffffffffUL));
  i = i - 1;
  }
  ldv_48774: ;
  if (i > 0) {
    goto ldv_48773;
  } else {
  }
  return;
}
}
static void cas_disable_irq(struct cas *cp , int const ring )
{
  {
  if ((int )ring == 0) {
    {
    writel(4294967295U, (void volatile *)cp->regs + 16U);
    }
    return;
  } else {
  }
  if ((cp->cas_flags & 2U) != 0U) {
    {
    goto switch_default;
    switch_default:
    {
    writel(31U, (void volatile *)cp->regs + (unsigned long )(((int )ring + -1) * 16 + 4152));
    }
    goto ldv_48784;
    switch_break: ;
    }
    ldv_48784: ;
  } else {
  }
  return;
}
}
__inline static void cas_mask_intr(struct cas *cp )
{
  int i ;
  {
  i = 0;
  goto ldv_48790;
  ldv_48789:
  {
  cas_disable_irq(cp, i);
  i = i + 1;
  }
  ldv_48790: ;
  if (i <= 0) {
    goto ldv_48789;
  } else {
  }
  return;
}
}
static void cas_enable_irq(struct cas *cp , int const ring )
{
  {
  if ((int )ring == 0) {
    {
    writel(4U, (void volatile *)cp->regs + 16U);
    }
    return;
  } else {
  }
  if ((cp->cas_flags & 2U) != 0U) {
    {
    goto switch_default;
    switch_default: ;
    goto ldv_48797;
    switch_break: ;
    }
    ldv_48797: ;
  } else {
  }
  return;
}
}
__inline static void cas_unmask_intr(struct cas *cp )
{
  int i ;
  {
  i = 0;
  goto ldv_48803;
  ldv_48802:
  {
  cas_enable_irq(cp, i);
  i = i + 1;
  }
  ldv_48803: ;
  if (i <= 0) {
    goto ldv_48802;
  } else {
  }
  return;
}
}
__inline static void cas_entropy_gather(struct cas *cp )
{
  {
  return;
}
}
static u16 cas_phy_read(struct cas *cp , int reg )
{
  u32 cmd ;
  int limit ;
  int tmp ;
  {
  {
  limit = 1000;
  cmd = 1610612736U;
  cmd = cmd | ((u32 )(cp->phy_addr << 23) & 260046848U);
  cmd = cmd | ((u32 )(reg << 18) & 8126464U);
  cmd = cmd | 131072U;
  writel(cmd, (void volatile *)cp->regs + 25100U);
  }
  goto ldv_48818;
  ldv_48817:
  {
  __const_udelay(42950UL);
  cmd = readl((void const volatile *)cp->regs + 25100U);
  }
  if ((cmd & 65536U) != 0U) {
    return ((u16 )cmd);
  } else {
  }
  ldv_48818:
  tmp = limit;
  limit = limit - 1;
  if (tmp > 0) {
    goto ldv_48817;
  } else {
  }
  return (65535U);
}
}
static int cas_phy_write(struct cas *cp , int reg , u16 val )
{
  int limit ;
  u32 cmd ;
  int tmp ;
  {
  {
  limit = 1000;
  cmd = 1342177280U;
  cmd = cmd | ((u32 )(cp->phy_addr << 23) & 260046848U);
  cmd = cmd | ((u32 )(reg << 18) & 8126464U);
  cmd = cmd | 131072U;
  cmd = cmd | (u32 )val;
  writel(cmd, (void volatile *)cp->regs + 25100U);
  }
  goto ldv_48828;
  ldv_48827:
  {
  __const_udelay(42950UL);
  cmd = readl((void const volatile *)cp->regs + 25100U);
  }
  if ((cmd & 65536U) != 0U) {
    return (0);
  } else {
  }
  ldv_48828:
  tmp = limit;
  limit = limit - 1;
  if (tmp > 0) {
    goto ldv_48827;
  } else {
  }
  return (-1);
}
}
static void cas_phy_powerup(struct cas *cp )
{
  u16 ctl ;
  u16 tmp ;
  {
  {
  tmp = cas_phy_read(cp, 0);
  ctl = tmp;
  }
  if (((int )ctl & 2048) == 0) {
    return;
  } else {
  }
  {
  ctl = (unsigned int )ctl & 63487U;
  cas_phy_write(cp, 0, (int )ctl);
  }
  return;
}
}
static void cas_phy_powerdown(struct cas *cp )
{
  u16 ctl ;
  u16 tmp ;
  {
  {
  tmp = cas_phy_read(cp, 0);
  ctl = tmp;
  }
  if (((int )ctl & 2048) != 0) {
    return;
  } else {
  }
  {
  ctl = (u16 )((unsigned int )ctl | 2048U);
  cas_phy_write(cp, 0, (int )ctl);
  }
  return;
}
}
static int cas_page_free(struct cas *cp , cas_page_t *page )
{
  {
  {
  pci_unmap_page(cp->pdev, page->dma_addr, (size_t )cp->page_size, 2);
  __free_pages(page->buffer, (unsigned int )cp->page_order);
  kfree((void const *)page);
  }
  return (0);
}
}
static cas_page_t *cas_page_alloc(struct cas *cp , gfp_t const flags )
{
  cas_page_t *page ;
  void *tmp ;
  {
  {
  tmp = kmalloc(40UL, flags);
  page = (cas_page_t *)tmp;
  }
  if ((unsigned long )page == (unsigned long )((cas_page_t *)0)) {
    return ((cas_page_t *)0);
  } else {
  }
  {
  INIT_LIST_HEAD(& page->list);
  page->buffer = alloc_pages(flags, (unsigned int )cp->page_order);
  }
  if ((unsigned long )page->buffer == (unsigned long )((struct page *)0)) {
    goto page_err;
  } else {
  }
  {
  page->dma_addr = pci_map_page(cp->pdev, page->buffer, 0UL, (size_t )cp->page_size,
                                2);
  }
  return (page);
  page_err:
  {
  kfree((void const *)page);
  }
  return ((cas_page_t *)0);
}
}
static void cas_spare_init(struct cas *cp )
{
  {
  {
  ldv_spin_lock_81(& cp->rx_inuse_lock);
  INIT_LIST_HEAD(& cp->rx_inuse_list);
  ldv_spin_unlock_82(& cp->rx_inuse_lock);
  ldv_spin_lock_83(& cp->rx_spare_lock);
  INIT_LIST_HEAD(& cp->rx_spare_list);
  cp->rx_spares_needed = 256;
  ldv_spin_unlock_84(& cp->rx_spare_lock);
  }
  return;
}
}
static void cas_spare_free(struct cas *cp )
{
  struct list_head list ;
  struct list_head *elem ;
  struct list_head *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  INIT_LIST_HEAD(& list);
  ldv_spin_lock_83(& cp->rx_spare_lock);
  list_splice_init(& cp->rx_spare_list, & list);
  ldv_spin_unlock_84(& cp->rx_spare_lock);
  elem = list.next;
  tmp = elem->next;
  }
  goto ldv_48860;
  ldv_48859:
  {
  __mptr = (struct list_head const *)elem;
  cas_page_free(cp, (cas_page_t *)__mptr);
  elem = tmp;
  tmp = elem->next;
  }
  ldv_48860: ;
  if ((unsigned long )elem != (unsigned long )(& list)) {
    goto ldv_48859;
  } else {
  }
  {
  INIT_LIST_HEAD(& list);
  ldv_spin_lock_81(& cp->rx_inuse_lock);
  list_splice_init(& cp->rx_inuse_list, & list);
  ldv_spin_unlock_82(& cp->rx_inuse_lock);
  elem = list.next;
  tmp = elem->next;
  }
  goto ldv_48865;
  ldv_48864:
  {
  __mptr___0 = (struct list_head const *)elem;
  cas_page_free(cp, (cas_page_t *)__mptr___0);
  elem = tmp;
  tmp = elem->next;
  }
  ldv_48865: ;
  if ((unsigned long )elem != (unsigned long )(& list)) {
    goto ldv_48864;
  } else {
  }
  return;
}
}
static void cas_spare_recover(struct cas *cp , gfp_t const flags )
{
  struct list_head list ;
  struct list_head *elem ;
  struct list_head *tmp ;
  int needed ;
  int i ;
  cas_page_t *page ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  int tmp___1 ;
  cas_page_t *spare ;
  cas_page_t *tmp___2 ;
  {
  {
  INIT_LIST_HEAD(& list);
  ldv_spin_lock_81(& cp->rx_inuse_lock);
  list_splice_init(& cp->rx_inuse_list, & list);
  ldv_spin_unlock_82(& cp->rx_inuse_lock);
  elem = list.next;
  tmp = elem->next;
  }
  goto ldv_48881;
  ldv_48880:
  {
  __mptr = (struct list_head const *)elem;
  page = (cas_page_t *)__mptr;
  tmp___0 = page_count(page->buffer);
  }
  if (tmp___0 > 1) {
    goto ldv_48879;
  } else {
  }
  {
  list_del(elem);
  ldv_spin_lock_83(& cp->rx_spare_lock);
  }
  if (cp->rx_spares_needed > 0) {
    {
    list_add(elem, & cp->rx_spare_list);
    cp->rx_spares_needed = cp->rx_spares_needed - 1;
    ldv_spin_unlock_84(& cp->rx_spare_lock);
    }
  } else {
    {
    ldv_spin_unlock_84(& cp->rx_spare_lock);
    cas_page_free(cp, page);
    }
  }
  ldv_48879:
  elem = tmp;
  tmp = elem->next;
  ldv_48881: ;
  if ((unsigned long )elem != (unsigned long )(& list)) {
    goto ldv_48880;
  } else {
  }
  {
  tmp___1 = list_empty((struct list_head const *)(& list));
  }
  if (tmp___1 == 0) {
    {
    ldv_spin_lock_81(& cp->rx_inuse_lock);
    list_splice((struct list_head const *)(& list), & cp->rx_inuse_list);
    ldv_spin_unlock_82(& cp->rx_inuse_lock);
    }
  } else {
  }
  {
  ldv_spin_lock_83(& cp->rx_spare_lock);
  needed = cp->rx_spares_needed;
  ldv_spin_unlock_84(& cp->rx_spare_lock);
  }
  if (needed == 0) {
    return;
  } else {
  }
  {
  INIT_LIST_HEAD(& list);
  i = 0;
  }
  goto ldv_48886;
  ldv_48885:
  {
  tmp___2 = cas_page_alloc(cp, flags);
  spare = tmp___2;
  }
  if ((unsigned long )spare == (unsigned long )((cas_page_t *)0)) {
    goto ldv_48884;
  } else {
  }
  {
  list_add(& spare->list, & list);
  i = i + 1;
  }
  ldv_48886: ;
  if (i < needed) {
    goto ldv_48885;
  } else {
  }
  ldv_48884:
  {
  ldv_spin_lock_83(& cp->rx_spare_lock);
  list_splice((struct list_head const *)(& list), & cp->rx_spare_list);
  cp->rx_spares_needed = cp->rx_spares_needed - i;
  ldv_spin_unlock_84(& cp->rx_spare_lock);
  }
  return;
}
}
static cas_page_t *cas_page_dequeue(struct cas *cp )
{
  struct list_head *entry ;
  int recover ;
  int tmp ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  {
  {
  ldv_spin_lock_83(& cp->rx_spare_lock);
  tmp___0 = list_empty((struct list_head const *)(& cp->rx_spare_list));
  }
  if (tmp___0 != 0) {
    {
    ldv_spin_unlock_84(& cp->rx_spare_lock);
    cas_spare_recover(cp, 32U);
    ldv_spin_lock_83(& cp->rx_spare_lock);
    tmp = list_empty((struct list_head const *)(& cp->rx_spare_list));
    }
    if (tmp != 0) {
      if ((cp->msg_enable & 64U) != 0U) {
        {
        netdev_err((struct net_device const *)cp->dev, "no spare buffers available\n");
        }
      } else {
      }
      {
      ldv_spin_unlock_84(& cp->rx_spare_lock);
      }
      return ((cas_page_t *)0);
    } else {
    }
  } else {
  }
  {
  entry = cp->rx_spare_list.next;
  list_del(entry);
  cp->rx_spares_needed = cp->rx_spares_needed + 1;
  recover = cp->rx_spares_needed;
  ldv_spin_unlock_84(& cp->rx_spare_lock);
  }
  if ((recover & 63) == 0) {
    {
    atomic_inc(& cp->reset_task_pending);
    atomic_inc(& cp->reset_task_pending_spare);
    schedule_work(& cp->reset_task);
    }
  } else {
  }
  __mptr = (struct list_head const *)entry;
  return ((cas_page_t *)__mptr);
}
}
static void cas_mif_poll(struct cas *cp , int const enable )
{
  u32 cfg ;
  {
  {
  cfg = readl((void const volatile *)cp->regs + 25104U);
  cfg = cfg & 768U;
  }
  if ((cp->phy_type & 4) != 0) {
    cfg = cfg | 1U;
  } else {
  }
  if ((int )enable != 0) {
    cfg = cfg | 2U;
    cfg = cfg | 8U;
    cfg = cfg | ((u32 )(cp->phy_addr << 10) & 31744U);
  } else {
  }
  {
  writel((int )enable != 0 ? 4294967259U : 65535U, (void volatile *)cp->regs + 25108U);
  writel(cfg, (void volatile *)cp->regs + 25104U);
  }
  return;
}
}
static void cas_begin_auto_negotiation(struct cas *cp , struct ethtool_cmd *ep )
{
  u16 ctl ;
  int lcntl ;
  int changed ;
  int oldstate ;
  int link_was_not_down ;
  u32 speed ;
  __u32 tmp ;
  u32 val ;
  unsigned int tmp___0 ;
  {
  changed = 0;
  oldstate = (int )cp->lstate;
  link_was_not_down = oldstate != 0;
  if ((unsigned long )ep == (unsigned long )((struct ethtool_cmd *)0)) {
    goto start_aneg;
  } else {
  }
  lcntl = cp->link_cntl;
  if ((unsigned int )ep->autoneg == 1U) {
    cp->link_cntl = 4096;
  } else {
    {
    tmp = ethtool_cmd_speed((struct ethtool_cmd const *)ep);
    speed = tmp;
    cp->link_cntl = 0;
    }
    if (speed == 100U) {
      cp->link_cntl = cp->link_cntl | 8192;
    } else
    if (speed == 1000U) {
      cp->link_cntl = cp->link_cntl | 64;
    } else {
    }
    if ((unsigned int )ep->duplex == 1U) {
      cp->link_cntl = cp->link_cntl | 256;
    } else {
    }
  }
  changed = lcntl != cp->link_cntl;
  start_aneg: ;
  if ((unsigned int )cp->lstate == 5U) {
    {
    netdev_info((struct net_device const *)cp->dev, "PCS link down\n");
    }
  } else
  if (changed != 0) {
    {
    netdev_info((struct net_device const *)cp->dev, "link configuration changed\n");
    }
  } else {
  }
  cp->lstate = 0;
  cp->link_transition = 5;
  if (cp->hw_running == 0) {
    return;
  } else {
  }
  if (oldstate == 5) {
    {
    netif_carrier_off(cp->dev);
    }
  } else {
  }
  if (changed != 0 && link_was_not_down != 0) {
    {
    atomic_inc(& cp->reset_task_pending);
    atomic_inc(& cp->reset_task_pending_all);
    schedule_work(& cp->reset_task);
    cp->timer_ticks = 0;
    ldv_mod_timer_105(& cp->link_timer, (unsigned long )jiffies + 550UL);
    }
    return;
  } else {
  }
  if (cp->phy_type & 1) {
    {
    tmp___0 = readl((void const volatile *)cp->regs + 36864U);
    val = tmp___0;
    }
    if ((cp->link_cntl & 4096) != 0) {
      val = val | 4608U;
      cp->lstate = 1;
    } else {
      if ((cp->link_cntl & 256) != 0) {
        val = val | 256U;
      } else {
      }
      val = val & 4294963199U;
      cp->lstate = 4;
    }
    {
    cp->link_transition = 4;
    writel(val, (void volatile *)cp->regs + 36864U);
    }
  } else {
    {
    cas_mif_poll(cp, 0);
    ctl = cas_phy_read(cp, 0);
    ctl = (unsigned int )ctl & 52927U;
    ctl = (u16 )((int )((short )ctl) | (int )((short )cp->link_cntl));
    }
    if (((int )ctl & 4096) != 0) {
      ctl = (u16 )((unsigned int )ctl | 512U);
      cp->lstate = 1;
    } else {
      cp->lstate = 4;
    }
    {
    cp->link_transition = 4;
    cas_phy_write(cp, 0, (int )ctl);
    cas_mif_poll(cp, 1);
    }
  }
  {
  cp->timer_ticks = 0;
  ldv_mod_timer_106(& cp->link_timer, (unsigned long )jiffies + 550UL);
  }
  return;
}
}
static int cas_reset_mii_phy(struct cas *cp )
{
  int limit ;
  u16 val ;
  {
  {
  limit = 1000;
  cas_phy_write(cp, 0, 32768);
  __const_udelay(429500UL);
  }
  goto ldv_48918;
  ldv_48917:
  {
  val = cas_phy_read(cp, 0);
  }
  if ((int )((short )val) >= 0) {
    goto ldv_48916;
  } else {
  }
  {
  __const_udelay(42950UL);
  }
  ldv_48918:
  limit = limit - 1;
  if (limit != 0) {
    goto ldv_48917;
  } else {
  }
  ldv_48916: ;
  return (limit <= 0);
}
}
static void cas_saturn_firmware_init(struct cas *cp )
{
  struct firmware const *fw ;
  char fw_name[16U] ;
  int err ;
  void *tmp ;
  {
  fw_name[0] = 's';
  fw_name[1] = 'u';
  fw_name[2] = 'n';
  fw_name[3] = '/';
  fw_name[4] = 'c';
  fw_name[5] = 'a';
  fw_name[6] = 's';
  fw_name[7] = 's';
  fw_name[8] = 'i';
  fw_name[9] = 'n';
  fw_name[10] = 'i';
  fw_name[11] = '.';
  fw_name[12] = 'b';
  fw_name[13] = 'i';
  fw_name[14] = 'n';
  fw_name[15] = '\000';
  if (cp->phy_id != 536894584U) {
    return;
  } else {
  }
  {
  err = request_firmware(& fw, (char const *)(& fw_name), & (cp->pdev)->dev);
  }
  if (err != 0) {
    {
    printk("\vcassini: Failed to load firmware \"%s\"\n", (char const *)(& fw_name));
    }
    return;
  } else {
  }
  if ((unsigned long )fw->size <= 1UL) {
    {
    printk("\vcassini: bogus length %zu in \"%s\"\n", fw->size, (char const *)(& fw_name));
    }
    goto out;
  } else {
  }
  {
  cp->fw_load_addr = (u16 )((int )((short )((int )*(fw->data + 1UL) << 8)) | (int )((short )*(fw->data)));
  cp->fw_size = (u32 )fw->size - 2U;
  tmp = vmalloc((unsigned long )cp->fw_size);
  cp->fw_data = (u8 *)tmp;
  }
  if ((unsigned long )cp->fw_data == (unsigned long )((u8 *)0U)) {
    goto out;
  } else {
  }
  {
  memcpy((void *)cp->fw_data, (void const *)fw->data + 2U, (size_t )cp->fw_size);
  }
  out:
  {
  release_firmware(fw);
  }
  return;
}
}
static void cas_saturn_firmware_load(struct cas *cp )
{
  int i ;
  {
  if ((unsigned long )cp->fw_data == (unsigned long )((u8 *)0U)) {
    return;
  } else {
  }
  {
  cas_phy_powerdown(cp);
  cas_phy_write(cp, 22, 0);
  cas_phy_write(cp, 30, 36857);
  cas_phy_write(cp, 29, 189);
  cas_phy_write(cp, 30, 36858);
  cas_phy_write(cp, 29, 130);
  cas_phy_write(cp, 30, 36859);
  cas_phy_write(cp, 29, 0);
  cas_phy_write(cp, 30, 36860);
  cas_phy_write(cp, 29, 57);
  cas_phy_write(cp, 22, 1);
  cas_phy_write(cp, 30, (int )cp->fw_load_addr);
  i = 0;
  }
  goto ldv_48931;
  ldv_48930:
  {
  cas_phy_write(cp, 29, (int )*(cp->fw_data + (unsigned long )i));
  i = i + 1;
  }
  ldv_48931: ;
  if ((u32 )i < cp->fw_size) {
    goto ldv_48930;
  } else {
  }
  {
  cas_phy_write(cp, 30, 36856);
  cas_phy_write(cp, 29, 1);
  }
  return;
}
}
static void cas_phy_init(struct cas *cp )
{
  u16 val ;
  u16 tmp ;
  u32 val___0 ;
  int limit ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  if ((cp->phy_type & 6) != 0) {
    {
    writel(0U, (void volatile *)cp->regs + 36944U);
    cas_mif_poll(cp, 0);
    cas_reset_mii_phy(cp);
    }
    if (cp->phy_id == 4420641U) {
      {
      cas_phy_write(cp, 31, 32768);
      cas_phy_write(cp, 0, 241);
      cas_phy_write(cp, 31, 0);
      }
    } else
    if ((cp->phy_id & 4294967292U) == 2121808U) {
      {
      cas_phy_write(cp, 24, 3104);
      cas_phy_write(cp, 23, 18);
      cas_phy_write(cp, 21, 6148);
      cas_phy_write(cp, 23, 19);
      cas_phy_write(cp, 21, 4612);
      cas_phy_write(cp, 23, 32774);
      cas_phy_write(cp, 21, 306);
      cas_phy_write(cp, 23, 32774);
      cas_phy_write(cp, 21, 562);
      cas_phy_write(cp, 23, 8223);
      cas_phy_write(cp, 21, 2592);
      }
    } else
    if (cp->phy_id == 2121841U) {
      {
      val = cas_phy_read(cp, 20);
      val = cas_phy_read(cp, 20);
      }
      if (((int )val & 128) != 0) {
        {
        cas_phy_write(cp, 20, (int )val & 65407);
        }
      } else {
      }
    } else
    if ((cp->cas_flags & 8U) != 0U) {
      {
      writel((cp->phy_type & 2) != 0 ? 512U : 0U, (void volatile *)cp->regs + 4204U);
      }
      if (cp->phy_id == 536894584U) {
        {
        cas_saturn_firmware_load(cp);
        }
      } else {
      }
      {
      cas_phy_powerup(cp);
      }
    } else {
    }
    {
    val = cas_phy_read(cp, 0);
    val = (unsigned int )val & 61439U;
    cas_phy_write(cp, 0, (int )val);
    __const_udelay(42950UL);
    tmp = cas_phy_read(cp, 4);
    cas_phy_write(cp, 4, (int )((unsigned int )tmp | 3552U));
    }
    if ((int )cp->cas_flags & 1) {
      {
      val = cas_phy_read(cp, 9);
      val = (unsigned int )val & 65279U;
      val = (u16 )((unsigned int )val | 512U);
      cas_phy_write(cp, 9, (int )val);
      }
    } else {
    }
  } else {
    {
    writel(2U, (void volatile *)cp->regs + 36944U);
    }
    if ((cp->cas_flags & 8U) != 0U) {
      {
      writel(0U, (void volatile *)cp->regs + 4204U);
      }
    } else {
    }
    {
    val___0 = readl((void const volatile *)cp->regs + 36864U);
    val___0 = val___0 | 32768U;
    writel(val___0, (void volatile *)cp->regs + 36864U);
    limit = 5000;
    }
    goto ldv_48941;
    ldv_48940:
    {
    __const_udelay(42950UL);
    tmp___0 = readl((void const volatile *)cp->regs + 36864U);
    }
    if ((tmp___0 & 32768U) == 0U) {
      goto ldv_48939;
    } else {
    }
    ldv_48941:
    limit = limit - 1;
    if (limit > 0) {
      goto ldv_48940;
    } else {
    }
    ldv_48939: ;
    if (limit <= 0) {
      {
      tmp___1 = readl((void const volatile *)cp->regs + 36884U);
      netdev_warn((struct net_device const *)cp->dev, "PCS reset bit would not clear [%08x]\n",
                  tmp___1);
      }
    } else {
    }
    {
    writel(0U, (void volatile *)cp->regs + 36880U);
    val___0 = readl((void const volatile *)cp->regs + 36872U);
    val___0 = val___0 & 4294967231U;
    val___0 = val___0 | 416U;
    writel(val___0, (void volatile *)cp->regs + 36872U);
    writel(1U, (void volatile *)cp->regs + 36880U);
    writel(2U, (void volatile *)cp->regs + 36948U);
    }
  }
  return;
}
}
static int cas_pcs_link_check(struct cas *cp )
{
  u32 stat ;
  u32 state_machine ;
  int retval ;
  {
  {
  retval = 0;
  stat = readl((void const volatile *)cp->regs + 36868U);
  }
  if ((stat & 4U) == 0U) {
    {
    stat = readl((void const volatile *)cp->regs + 36868U);
    }
  } else {
  }
  if ((stat & 48U) == 48U) {
    if ((cp->msg_enable & 4U) != 0U) {
      {
      netdev_info((struct net_device const *)cp->dev, "PCS RemoteFault\n");
      }
    } else {
    }
  } else {
  }
  {
  state_machine = readl((void const volatile *)cp->regs + 36884U);
  }
  if ((state_machine & 122880U) != 90112U) {
    stat = stat & 4294967291U;
  } else
  if ((state_machine & 1792U) != 0U) {
    stat = stat | 4U;
  } else {
  }
  if ((stat & 4U) != 0U) {
    if ((unsigned int )cp->lstate != 5U) {
      if (cp->opened != 0) {
        {
        cp->lstate = 5;
        cp->link_transition = 3;
        cas_set_link_modes(cp);
        netif_carrier_on(cp->dev);
        }
      } else {
      }
    } else {
    }
  } else
  if ((unsigned int )cp->lstate == 5U) {
    cp->lstate = 0;
    if ((link_transition_timeout != 0 && cp->link_transition != 6) && cp->link_transition_jiffies_valid == 0) {
      retval = 1;
      cp->link_transition = 6;
      cp->link_transition_jiffies = jiffies;
      cp->link_transition_jiffies_valid = 1;
    } else {
      cp->link_transition = 1;
    }
    {
    netif_carrier_off(cp->dev);
    }
    if (cp->opened != 0) {
      if ((cp->msg_enable & 4U) != 0U) {
        {
        netdev_info((struct net_device const *)cp->dev, "PCS link down\n");
        }
      } else {
      }
    } else {
    }
    if ((cp->cas_flags & 2U) == 0U) {
      {
      stat = readl((void const volatile *)cp->regs + 36956U);
      }
      if (stat == 3U) {
        return (1);
      } else {
      }
    } else {
    }
  } else
  if ((unsigned int )cp->lstate == 0U) {
    if ((link_transition_timeout != 0 && cp->link_transition != 6) && cp->link_transition_jiffies_valid == 0) {
      retval = 1;
      cp->link_transition = 6;
      cp->link_transition_jiffies = jiffies;
      cp->link_transition_jiffies_valid = 1;
    } else {
      cp->link_transition = 2;
    }
  } else {
  }
  return (retval);
}
}
static int cas_pcs_interrupt(struct net_device *dev , struct cas *cp , u32 status )
{
  u32 stat ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  {
  tmp = readl((void const volatile *)cp->regs + 36888U);
  stat = tmp;
  }
  if ((stat & 4U) == 0U) {
    return (0);
  } else {
  }
  {
  tmp___0 = cas_pcs_link_check(cp);
  }
  return (tmp___0);
}
}
static int cas_txmac_interrupt(struct net_device *dev , struct cas *cp , u32 status )
{
  u32 txmac_stat ;
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)cp->regs + 24592U);
  txmac_stat = tmp;
  }
  if (txmac_stat == 0U) {
    return (0);
  } else {
  }
  if ((cp->msg_enable & 512U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)cp->dev, "txmac interrupt, txmac_stat: 0x%x\n",
                  txmac_stat);
    }
  } else {
  }
  if ((txmac_stat & 4294967295U) == 128U) {
    return (0);
  } else {
  }
  {
  ldv_spin_lock_107((spinlock_t *)(& cp->stat_lock));
  }
  if ((txmac_stat & 2U) != 0U) {
    {
    netdev_err((struct net_device const *)dev, "TX MAC xmit underrun\n");
    cp->net_stats[0].tx_fifo_errors = cp->net_stats[0].tx_fifo_errors + 1UL;
    }
  } else {
  }
  if ((txmac_stat & 4U) != 0U) {
    {
    netdev_err((struct net_device const *)dev, "TX MAC max packet size error\n");
    cp->net_stats[0].tx_errors = cp->net_stats[0].tx_errors + 1UL;
    }
  } else {
  }
  if ((txmac_stat & 8U) != 0U) {
    cp->net_stats[0].collisions = cp->net_stats[0].collisions + 65536UL;
  } else {
  }
  if ((txmac_stat & 16U) != 0U) {
    cp->net_stats[0].tx_aborted_errors = cp->net_stats[0].tx_aborted_errors + 65536UL;
    cp->net_stats[0].collisions = cp->net_stats[0].collisions + 65536UL;
  } else {
  }
  if ((txmac_stat & 32U) != 0U) {
    cp->net_stats[0].tx_aborted_errors = cp->net_stats[0].tx_aborted_errors + 65536UL;
    cp->net_stats[0].collisions = cp->net_stats[0].collisions + 65536UL;
  } else {
  }
  {
  ldv_spin_unlock_108((spinlock_t *)(& cp->stat_lock));
  }
  return (0);
}
}
static void cas_load_firmware(struct cas *cp , cas_hp_inst_t *firmware )
{
  cas_hp_inst_t *inst ;
  u32 val ;
  int i ;
  {
  i = 0;
  goto ldv_48968;
  ldv_48967:
  {
  writel((unsigned int )i, (void volatile *)cp->regs + 16708U);
  val = (u32 )inst->val;
  val = val | (u32 )((int )inst->mask << 16);
  writel(val, (void volatile *)cp->regs + 16720U);
  val = (u32 )((int )inst->outarg >> 10) & 3U;
  val = val | ((u32 )((int )inst->outop << 2) & 60U);
  val = val | ((u32 )((int )inst->fnext << 6) & 1984U);
  val = val | ((u32 )((int )inst->foff << 11) & 260096U);
  val = val | ((u32 )((int )inst->snext << 18) & 8126464U);
  val = val | ((u32 )((int )inst->soff << 23) & 1065353216U);
  val = val | (u32 )((int )inst->op << 30);
  writel(val, (void volatile *)cp->regs + 16716U);
  val = (u32 )inst->outmask;
  val = val | ((u32 )((int )inst->outshift << 16) & 983040U);
  val = val | ((u32 )((int )inst->outenab << 20) & 3145728U);
  val = val | (u32 )((int )inst->outarg << 22);
  writel(val, (void volatile *)cp->regs + 16712U);
  firmware = firmware + 1;
  i = i + 1;
  }
  ldv_48968:
  inst = firmware;
  if ((unsigned long )inst != (unsigned long )((cas_hp_inst_t *)0) && (unsigned long )inst->note != (unsigned long )((char const *)0)) {
    goto ldv_48967;
  } else {
  }
  return;
}
}
static void cas_init_rx_dma(struct cas *cp )
{
  u64 desc_dma ;
  u32 val ;
  int i ;
  int size ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  desc_dma = cp->block_dvma;
  val = 2048U;
  val = val | 8U;
  val = val | 128U;
  if ((cp->cas_flags & 2U) != 0U) {
    val = val | 262144U;
  } else {
  }
  {
  writel(val, (void volatile *)cp->regs + 16384U);
  val = (u32 )((long )cp->init_rxds[0]) - (u32 )((long )cp->init_block);
  writel((unsigned int )((desc_dma + (u64 )val) >> 32), (void volatile *)cp->regs + 16428U);
  writel((unsigned int )desc_dma + val, (void volatile *)cp->regs + 16424U);
  writel(508U, (void volatile *)cp->regs + 16420U);
  }
  if ((cp->cas_flags & 2U) != 0U) {
    {
    val = (u32 )((long )cp->init_rxds[1]) - (u32 )((long )cp->init_block);
    writel((unsigned int )((desc_dma + (u64 )val) >> 32), (void volatile *)cp->regs + 16900U);
    writel((unsigned int )desc_dma + val, (void volatile *)cp->regs + 16896U);
    writel(508U, (void volatile *)cp->regs + 16928U);
    }
  } else {
  }
  {
  val = (u32 )((long )cp->init_rxcs[0]) - (u32 )((long )cp->init_block);
  writel((unsigned int )((desc_dma + (u64 )val) >> 32), (void volatile *)cp->regs + 16436U);
  writel((unsigned int )desc_dma + val, (void volatile *)cp->regs + 16432U);
  }
  if ((cp->cas_flags & 2U) != 0U) {
    i = 1;
    goto ldv_48978;
    ldv_48977:
    {
    val = (u32 )((long )cp->init_rxcs[i]) - (u32 )((long )cp->init_block);
    writel((unsigned int )((desc_dma + (u64 )val) >> 32), (void volatile *)cp->regs + (unsigned long )((i + -1) * 8 + 16908));
    writel((unsigned int )desc_dma + val, (void volatile *)cp->regs + (unsigned long )((i + 2112) * 8));
    i = i + 1;
    }
    ldv_48978: ;
    if (i <= 3) {
      goto ldv_48977;
    } else {
    }
  } else {
  }
  {
  readl((void const volatile *)cp->regs + 28U);
  writel(48U, (void volatile *)cp->regs + 20U);
  }
  if ((cp->cas_flags & 2U) != 0U) {
    i = 1;
    goto ldv_48981;
    ldv_48980:
    {
    readl((void const volatile *)cp->regs + (unsigned long )((i + -1) * 16 + 4164));
    i = i + 1;
    }
    ldv_48981: ;
    if (i <= 0) {
      goto ldv_48980;
    } else {
    }
    i = 2;
    goto ldv_48984;
    ldv_48983:
    {
    writel(1U, (void volatile *)cp->regs + (unsigned long )((i + 259) * 16));
    i = i + 1;
    }
    ldv_48984: ;
    if (i <= 0) {
      goto ldv_48983;
    } else {
    }
  } else {
  }
  {
  val = (u32 )(cp->rx_pause_off / 64) & 511U;
  val = val | ((u32 )(cp->rx_pause_on / 64 << 12) & 2093056U);
  writel(val, (void volatile *)cp->regs + 16416U);
  i = 0;
  }
  goto ldv_48987;
  ldv_48986:
  {
  writel((unsigned int )i, (void volatile *)cp->regs + 16680U);
  writel(0U, (void volatile *)cp->regs + 16684U);
  writel(0U, (void volatile *)cp->regs + 16688U);
  writel(0U, (void volatile *)cp->regs + 16692U);
  i = i + 1;
  }
  ldv_48987: ;
  if (i <= 63) {
    goto ldv_48986;
  } else {
  }
  {
  writel(0U, (void volatile *)cp->regs + 16532U);
  writel(0U, (void volatile *)cp->regs + 16644U);
  val = 61440U;
  val = val | 5U;
  writel(val, (void volatile *)cp->regs + 16452U);
  val = 8388608U;
  writel(val, (void volatile *)cp->regs + 16456U);
  }
  if ((cp->cas_flags & 2U) != 0U) {
    {
    val = 256U;
    writel(val, (void volatile *)cp->regs + 16960U);
    }
  } else {
  }
  {
  writel(0U, (void volatile *)cp->regs + 16460U);
  val = 0U;
  }
  if (cp->page_size == 4096) {
    val = 1U;
  } else
  if (cp->page_size == 8192) {
    val = 2U;
  } else
  if (cp->page_size == 16384) {
    val = 3U;
  } else {
  }
  size = (int )((cp->dev)->mtu + 64U);
  if (size > cp->page_size) {
    size = cp->page_size;
  } else {
  }
  if (size <= 1024) {
    i = 0;
  } else
  if (size <= 2048) {
    i = 1;
  } else
  if (size <= 4096) {
    i = 2;
  } else {
    i = 3;
  }
  {
  cp->mtu_stride = 1 << (i + 10);
  val = val & 3U;
  val = val | ((u32 )(i << 27) & 402653184U);
  val = val | ((u32 )((cp->page_size >> (i + 10)) << 11) & 30720U);
  val = val | 1073741824U;
  writel(val, (void volatile *)cp->regs + 16388U);
  tmp___1 = cpumask_weight(cpu_online_mask);
  }
  if (tmp___1 <= 63U) {
    {
    tmp___0 = cpumask_weight(cpu_online_mask);
    val = (tmp___0 << 2) & 255U;
    }
  } else {
    val = 0U;
  }
  {
  val = val | 257U;
  val = val | 783360U;
  writel(val, (void volatile *)cp->regs + 16704U);
  }
  return;
}
}
__inline static void cas_rxc_init(struct cas_rx_comp *rxc )
{
  {
  {
  memset((void *)rxc, 0, 32UL);
  rxc->word4 = 8796093022208ULL;
  }
  return;
}
}
__inline static cas_page_t *cas_page_spare(struct cas *cp , int const index )
{
  cas_page_t *page ;
  cas_page_t *new ;
  int tmp ;
  {
  {
  page = cp->rx_pages[1][index];
  tmp = page_count(page->buffer);
  }
  if (tmp == 1) {
    return (page);
  } else {
  }
  {
  new = cas_page_dequeue(cp);
  }
  if ((unsigned long )new != (unsigned long )((cas_page_t *)0)) {
    {
    ldv_spin_lock_81(& cp->rx_inuse_lock);
    list_add(& page->list, & cp->rx_inuse_list);
    ldv_spin_unlock_82(& cp->rx_inuse_lock);
    }
  } else {
  }
  return (new);
}
}
static cas_page_t *cas_page_swap(struct cas *cp , int const ring , int const index )
{
  cas_page_t **page0 ;
  cas_page_t **page1 ;
  cas_page_t *new ;
  cas_page_t *tmp ;
  int tmp___0 ;
  {
  {
  page0 = (cas_page_t **)(& cp->rx_pages);
  page1 = (cas_page_t **)(& cp->rx_pages) + 1U;
  tmp___0 = page_count((*(page0 + (unsigned long )index))->buffer);
  }
  if (tmp___0 > 1) {
    {
    tmp = cas_page_spare(cp, index);
    new = tmp;
    }
    if ((unsigned long )new != (unsigned long )((cas_page_t *)0)) {
      *(page1 + (unsigned long )index) = *(page0 + (unsigned long )index);
      *(page0 + (unsigned long )index) = new;
    } else {
    }
  } else {
  }
  return (*(page0 + (unsigned long )index));
}
}
static void cas_clean_rxds(struct cas *cp )
{
  struct cas_rx_desc *rxd ;
  int i ;
  int size ;
  struct sk_buff *skb ;
  cas_page_t *page ;
  cas_page_t *tmp ;
  {
  rxd = cp->init_rxds[0];
  i = 0;
  goto ldv_49017;
  ldv_49016: ;
  goto ldv_49014;
  ldv_49013:
  {
  netif_rx(skb);
  }
  ldv_49014:
  {
  skb = __skb_dequeue((struct sk_buff_head *)(& cp->rx_flows) + (unsigned long )i);
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_49013;
  } else {
  }
  i = i + 1;
  ldv_49017: ;
  if (i <= 63) {
    goto ldv_49016;
  } else {
  }
  size = 512;
  i = 0;
  goto ldv_49021;
  ldv_49020:
  {
  tmp = cas_page_swap(cp, 0, i);
  page = tmp;
  (rxd + (unsigned long )i)->buffer = page->dma_addr;
  (rxd + (unsigned long )i)->index = (unsigned long long )i & 4095ULL;
  i = i + 1;
  }
  ldv_49021: ;
  if (i < size) {
    goto ldv_49020;
  } else {
  }
  cp->rx_old[0] = 508;
  cp->rx_last[0] = 0;
  cp->cas_flags = cp->cas_flags & 4294967279U;
  return;
}
}
static void cas_clean_rxcs(struct cas *cp )
{
  int i ;
  int j ;
  struct cas_rx_comp *rxc ;
  {
  {
  memset((void *)(& cp->rx_cur), 0, 4UL);
  memset((void *)(& cp->rx_new), 0, 4UL);
  i = 0;
  }
  goto ldv_49033;
  ldv_49032:
  rxc = cp->init_rxcs[i];
  j = 0;
  goto ldv_49030;
  ldv_49029:
  {
  cas_rxc_init(rxc + (unsigned long )j);
  j = j + 1;
  }
  ldv_49030: ;
  if (j <= 2047) {
    goto ldv_49029;
  } else {
  }
  i = i + 1;
  ldv_49033: ;
  if (i <= 0) {
    goto ldv_49032;
  } else {
  }
  return;
}
}
static int cas_rxmac_interrupt(struct net_device *dev , struct cas *cp , u32 status )
{
  u32 stat ;
  unsigned int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = readl((void const volatile *)cp->regs + 24596U);
  stat = tmp;
  }
  if (stat == 0U) {
    return (0);
  } else {
  }
  if ((cp->msg_enable & 512U) != 0U) {
    {
    descriptor.modname = "cassini";
    descriptor.function = "cas_rxmac_interrupt";
    descriptor.filename = "drivers/net/ethernet/sun/cassini.c";
    descriptor.format = "rxmac interrupt, stat: 0x%x\n";
    descriptor.lineno = 1525U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)cp->dev, "rxmac interrupt, stat: 0x%x\n",
                           stat);
      }
    } else {
    }
  } else {
  }
  {
  ldv_spin_lock_107((spinlock_t *)(& cp->stat_lock));
  }
  if ((stat & 8U) != 0U) {
    cp->net_stats[0].rx_frame_errors = cp->net_stats[0].rx_frame_errors + 65536UL;
  } else {
  }
  if ((stat & 16U) != 0U) {
    cp->net_stats[0].rx_crc_errors = cp->net_stats[0].rx_crc_errors + 65536UL;
  } else {
  }
  if ((stat & 32U) != 0U) {
    cp->net_stats[0].rx_length_errors = cp->net_stats[0].rx_length_errors + 65536UL;
  } else {
  }
  if ((stat & 2U) != 0U) {
    cp->net_stats[0].rx_over_errors = cp->net_stats[0].rx_over_errors + 1UL;
    cp->net_stats[0].rx_fifo_errors = cp->net_stats[0].rx_fifo_errors + 1UL;
  } else {
  }
  {
  ldv_spin_unlock_108((spinlock_t *)(& cp->stat_lock));
  }
  return (0);
}
}
static int cas_mac_interrupt(struct net_device *dev , struct cas *cp , u32 status )
{
  u32 stat ;
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)cp->regs + 24600U);
  stat = tmp;
  }
  if (stat == 0U) {
    return (0);
  } else {
  }
  if ((cp->msg_enable & 512U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)cp->dev, "mac interrupt, stat: 0x%x\n",
                  stat);
    }
  } else {
  }
  if ((stat & 2U) != 0U) {
    cp->pause_entered = cp->pause_entered + 1ULL;
  } else {
  }
  if ((int )stat & 1) {
    cp->pause_last_time_recvd = (u16 )(stat >> 16);
  } else {
  }
  return (0);
}
}
__inline static int cas_mdio_link_not_up(struct cas *cp )
{
  u16 val ;
  {
  {
  if ((unsigned int )cp->lstate == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )cp->lstate == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )cp->lstate == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_3: ;
  if ((cp->msg_enable & 4U) != 0U) {
    {
    netdev_info((struct net_device const *)cp->dev, "Autoneg failed again, keeping forced mode\n");
    }
  } else {
  }
  {
  cas_phy_write(cp, 0, (int )((u16 )cp->link_fcntl));
  cp->timer_ticks = 5;
  cp->lstate = 4;
  cp->link_transition = 4;
  }
  goto ldv_49054;
  case_1:
  {
  val = cas_phy_read(cp, 0);
  val = (unsigned int )val & 60927U;
  val = (u16 )((unsigned int )val | 256U);
  val = (u16 )((int )((short )val) | ((int )cp->cas_flags & 1 ? 64 : 8192));
  cas_phy_write(cp, 0, (int )val);
  cp->timer_ticks = 5;
  cp->lstate = 2;
  cp->link_transition = 4;
  }
  goto ldv_49054;
  case_2:
  {
  val = cas_phy_read(cp, 0);
  cp->timer_ticks = 5;
  }
  if (((int )val & 64) != 0) {
    {
    val = (unsigned int )val & 65471U;
    val = (u16 )((unsigned int )val | 8448U);
    cas_phy_write(cp, 0, (int )val);
    }
    goto ldv_49054;
  } else {
  }
  if (((int )val & 8192) != 0) {
    if (((int )val & 256) != 0) {
      val = (unsigned int )val & 65279U;
    } else {
      val = (unsigned int )val & 57343U;
    }
    {
    cas_phy_write(cp, 0, (int )val);
    }
    goto ldv_49054;
  } else {
  }
  switch_default: ;
  goto ldv_49054;
  switch_break: ;
  }
  ldv_49054: ;
  return (0);
}
}
static int cas_mii_link_check(struct cas *cp , u16 const bmsr )
{
  int restart ;
  u16 tmp ;
  {
  if (((int )bmsr & 4) != 0) {
    if ((unsigned int )cp->lstate == 2U && (cp->link_cntl & 4096) != 0) {
      {
      cp->lstate = 3;
      cp->link_transition = 4;
      cas_mif_poll(cp, 0);
      tmp = cas_phy_read(cp, 0);
      cp->link_fcntl = (int )tmp;
      cp->timer_ticks = 5;
      }
      if (cp->opened != 0) {
        if ((cp->msg_enable & 4U) != 0U) {
          {
          netdev_info((struct net_device const *)cp->dev, "Got link after fallback, retrying autoneg once...\n");
          }
        } else {
        }
      } else {
      }
      {
      cas_phy_write(cp, 0, (int )((u16 )((int )((short )cp->link_fcntl) | 4608)));
      cas_mif_poll(cp, 1);
      }
    } else
    if ((unsigned int )cp->lstate != 5U) {
      cp->lstate = 5;
      cp->link_transition = 3;
      if (cp->opened != 0) {
        {
        cas_set_link_modes(cp);
        netif_carrier_on(cp->dev);
        }
      } else {
      }
    } else {
    }
    return (0);
  } else {
  }
  restart = 0;
  if ((unsigned int )cp->lstate == 5U) {
    {
    cp->lstate = 0;
    cp->link_transition = 5;
    netif_carrier_off(cp->dev);
    }
    if (cp->opened != 0) {
      if ((cp->msg_enable & 4U) != 0U) {
        {
        netdev_info((struct net_device const *)cp->dev, "Link down\n");
        }
      } else {
      }
    } else {
    }
    restart = 1;
  } else {
    cp->timer_ticks = cp->timer_ticks + 1;
    if (cp->timer_ticks > 10) {
      {
      cas_mdio_link_not_up(cp);
      }
    } else {
    }
  }
  return (restart);
}
}
static int cas_mif_interrupt(struct net_device *dev , struct cas *cp , u32 status )
{
  u32 stat ;
  unsigned int tmp ;
  u16 bmsr ;
  int tmp___0 ;
  {
  {
  tmp = readl((void const volatile *)cp->regs + 25112U);
  stat = tmp;
  }
  if ((stat & 65535U) == 0U) {
    return (0);
  } else {
  }
  {
  bmsr = (u16 )(stat >> 16);
  tmp___0 = cas_mii_link_check(cp, (int )bmsr);
  }
  return (tmp___0);
}
}
static int cas_pci_interrupt(struct net_device *dev , struct cas *cp , u32 status )
{
  u32 stat ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  u16 cfg ;
  {
  {
  tmp = readl((void const volatile *)cp->regs + 4096U);
  stat = tmp;
  }
  if (stat == 0U) {
    return (0);
  } else {
  }
  {
  tmp___0 = readl((void const volatile *)cp->regs + 4108U);
  netdev_err((struct net_device const *)dev, "PCI error [%04x:%04x]", stat, tmp___0);
  }
  if ((int )stat & 1 && (cp->cas_flags & 2U) == 0U) {
    {
    printk(" <No ACK64# during ABS64 cycle>");
    }
  } else {
  }
  if ((stat & 2U) != 0U) {
    {
    printk(" <Delayed transaction timeout>");
    }
  } else {
  }
  if ((stat & 4U) != 0U) {
    {
    printk(" <other>");
    }
  } else {
  }
  if ((stat & 8U) != 0U) {
    {
    printk(" <BIM DMA 0 write req>");
    }
  } else {
  }
  if ((stat & 16U) != 0U) {
    {
    printk(" <BIM DMA 0 read req>");
    }
  } else {
  }
  {
  printk("\n");
  }
  if ((stat & 4U) != 0U) {
    {
    pci_read_config_word((struct pci_dev const *)cp->pdev, 6, & cfg);
    netdev_err((struct net_device const *)dev, "Read PCI cfg space status [%04x]\n",
               (int )cfg);
    }
    if (((int )cfg & 256) != 0) {
      {
      netdev_err((struct net_device const *)dev, "PCI parity error detected\n");
      }
    } else {
    }
    if (((int )cfg & 2048) != 0) {
      {
      netdev_err((struct net_device const *)dev, "PCI target abort\n");
      }
    } else {
    }
    if (((int )cfg & 4096) != 0) {
      {
      netdev_err((struct net_device const *)dev, "PCI master acks target abort\n");
      }
    } else {
    }
    if (((int )cfg & 8192) != 0) {
      {
      netdev_err((struct net_device const *)dev, "PCI master abort\n");
      }
    } else {
    }
    if (((int )cfg & 16384) != 0) {
      {
      netdev_err((struct net_device const *)dev, "PCI system error SERR#\n");
      }
    } else {
    }
    if ((int )((short )cfg) < 0) {
      {
      netdev_err((struct net_device const *)dev, "PCI parity error\n");
      }
    } else {
    }
    {
    cfg = (unsigned int )cfg & 63744U;
    pci_write_config_word((struct pci_dev const *)cp->pdev, 6, (int )cfg);
    }
  } else {
  }
  return (1);
}
}
static int cas_abnormal_irq(struct net_device *dev , struct cas *cp , u32 status )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  if ((status & 64U) != 0U) {
    if ((cp->msg_enable & 64U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)cp->dev, "corrupt rx tag framing\n");
      }
    } else {
    }
    {
    ldv_spin_lock_107((spinlock_t *)(& cp->stat_lock));
    cp->net_stats[0].rx_errors = cp->net_stats[0].rx_errors + 1UL;
    ldv_spin_unlock_108((spinlock_t *)(& cp->stat_lock));
    }
    goto do_reset;
  } else {
  }
  if ((status & 1024U) != 0U) {
    if ((cp->msg_enable & 64U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)cp->dev, "length mismatch for rx frame\n");
      }
    } else {
    }
    {
    ldv_spin_lock_107((spinlock_t *)(& cp->stat_lock));
    cp->net_stats[0].rx_errors = cp->net_stats[0].rx_errors + 1UL;
    ldv_spin_unlock_108((spinlock_t *)(& cp->stat_lock));
    }
    goto do_reset;
  } else {
  }
  if ((status & 8192U) != 0U) {
    {
    tmp = cas_pcs_interrupt(dev, cp, status);
    }
    if (tmp != 0) {
      goto do_reset;
    } else {
    }
  } else {
  }
  if ((status & 16384U) != 0U) {
    {
    tmp___0 = cas_txmac_interrupt(dev, cp, status);
    }
    if (tmp___0 != 0) {
      goto do_reset;
    } else {
    }
  } else {
  }
  if ((status & 32768U) != 0U) {
    {
    tmp___1 = cas_rxmac_interrupt(dev, cp, status);
    }
    if (tmp___1 != 0) {
      goto do_reset;
    } else {
    }
  } else {
  }
  if ((status & 65536U) != 0U) {
    {
    tmp___2 = cas_mac_interrupt(dev, cp, status);
    }
    if (tmp___2 != 0) {
      goto do_reset;
    } else {
    }
  } else {
  }
  if ((status & 131072U) != 0U) {
    {
    tmp___3 = cas_mif_interrupt(dev, cp, status);
    }
    if (tmp___3 != 0) {
      goto do_reset;
    } else {
    }
  } else {
  }
  if ((status & 262144U) != 0U) {
    {
    tmp___4 = cas_pci_interrupt(dev, cp, status);
    }
    if (tmp___4 != 0) {
      goto do_reset;
    } else {
    }
  } else {
  }
  return (0);
  do_reset:
  {
  atomic_inc(& cp->reset_task_pending);
  atomic_inc(& cp->reset_task_pending_all);
  netdev_err((struct net_device const *)dev, "reset called in cas_abnormal_irq [0x%x]\n",
             status);
  schedule_work(& cp->reset_task);
  }
  return (1);
}
}
__inline static int cas_calc_tabort(struct cas *cp , unsigned long const addr ,
                                    int const len )
{
  unsigned long off ;
  {
  off = (unsigned long )addr + (unsigned long )len;
  if ((cp->cas_flags & 4U) == 0U) {
    return (0);
  } else {
  }
  if (((off + 4095UL) & 0xfffffffffffff000UL) - off > 32UL) {
    return (0);
  } else {
  }
  return (32);
}
}
__inline static void cas_tx_ringN(struct cas *cp , int ring , int limit )
{
  struct cas_tx_desc *txds ;
  struct sk_buff **skbs ;
  struct net_device *dev ;
  int entry ;
  int count ;
  struct sk_buff *skb ;
  dma_addr_t daddr ;
  u32 dlen ;
  int frag ;
  unsigned char *tmp ;
  struct cas_tx_desc *txd ;
  unsigned char *tmp___0 ;
  bool tmp___1 ;
  {
  {
  dev = cp->dev;
  ldv_spin_lock_77((spinlock_t *)(& cp->tx_lock) + (unsigned long )ring);
  txds = cp->init_txds[ring];
  skbs = (struct sk_buff **)(& cp->tx_skbs) + (unsigned long )ring;
  entry = cp->tx_old[ring];
  count = entry <= limit ? limit - entry : (512 - entry) + limit;
  }
  goto ldv_49103;
  ldv_49109:
  skb = *(skbs + (unsigned long )entry);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    entry = (entry + 1) & 511;
    goto ldv_49103;
  } else {
  }
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  count = count + ~ ((int )((struct skb_shared_info *)tmp)->nr_frags + cp->tx_tiny_use[ring][entry].nbufs);
  }
  if (count < 0) {
    goto ldv_49104;
  } else {
  }
  if ((cp->msg_enable & 1024U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)cp->dev, "tx[%d] done, slot %d\n",
                  ring, entry);
    }
  } else {
  }
  *(skbs + (unsigned long )entry) = (struct sk_buff *)0;
  cp->tx_tiny_use[ring][entry].nbufs = 0;
  frag = 0;
  goto ldv_49107;
  ldv_49106:
  {
  txd = txds + (unsigned long )entry;
  daddr = txd->buffer;
  dlen = (u32 )txd->control & 16383U;
  pci_unmap_page(cp->pdev, daddr, (size_t )dlen, 1);
  entry = (entry + 1) & 511;
  }
  if (cp->tx_tiny_use[ring][entry].used != 0) {
    cp->tx_tiny_use[ring][entry].used = 0;
    entry = (entry + 1) & 511;
  } else {
  }
  frag = frag + 1;
  ldv_49107:
  {
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  }
  if (frag <= (int )((struct skb_shared_info *)tmp___0)->nr_frags) {
    goto ldv_49106;
  } else {
  }
  {
  ldv_spin_lock_77((spinlock_t *)(& cp->stat_lock) + (unsigned long )ring);
  cp->net_stats[ring].tx_packets = cp->net_stats[ring].tx_packets + 1UL;
  cp->net_stats[ring].tx_bytes = cp->net_stats[ring].tx_bytes + (unsigned long )skb->len;
  ldv_spin_unlock_79((spinlock_t *)(& cp->stat_lock) + (unsigned long )ring);
  dev_kfree_skb_irq(skb);
  }
  ldv_49103: ;
  if (entry != limit) {
    goto ldv_49109;
  } else {
  }
  ldv_49104:
  {
  cp->tx_old[ring] = entry;
  tmp___1 = netif_queue_stopped((struct net_device const *)dev);
  }
  if ((int )tmp___1 && (unsigned long )(cp->tx_old[ring] <= cp->tx_new[ring] ? (cp->tx_old[ring] + 511) - cp->tx_new[ring] : (cp->tx_old[ring] - cp->tx_new[ring]) + -1) > ((cp->cas_flags & 4U) != 0U ? 36UL : 18UL)) {
    {
    netif_wake_queue(dev);
    }
  } else {
  }
  {
  ldv_spin_unlock_79((spinlock_t *)(& cp->tx_lock) + (unsigned long )ring);
  }
  return;
}
}
static void cas_tx(struct net_device *dev , struct cas *cp , u32 status )
{
  int limit ;
  int ring ;
  u64 compwb ;
  {
  compwb = (cp->init_block)->tx_compwb;
  if ((cp->msg_enable & 512U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)cp->dev, "tx interrupt, status: 0x%x, %llx\n",
                  status, compwb);
    }
  } else {
  }
  ring = 0;
  goto ldv_49119;
  ldv_49118:
  limit = (int )((((unsigned int )compwb << 8U) & 65535U) | (unsigned int )((compwb & 65280ULL) >> 8));
  compwb = compwb >> 16;
  if (cp->tx_old[ring] != limit) {
    {
    cas_tx_ringN(cp, ring, limit);
    }
  } else {
  }
  ring = ring + 1;
  ldv_49119: ;
  if (ring <= 3) {
    goto ldv_49118;
  } else {
  }
  return;
}
}
extern void __compiletime_assert_1997(void) ;
extern void __compiletime_assert_2032(void) ;
extern void __compiletime_assert_2106(void) ;
extern void __compiletime_assert_2125(void) ;
extern void __compiletime_assert_2142(void) ;
static int cas_rx_process_pkt(struct cas *cp , struct cas_rx_comp *rxc , int entry ,
                              u64 const *words , struct sk_buff **skbref )
{
  int dlen ;
  int hlen ;
  int len ;
  int i ;
  int alloclen ;
  int off ;
  int swivel ;
  struct cas_page *page ;
  struct sk_buff *skb ;
  void *addr ;
  void *crcaddr ;
  __sum16 csum ;
  char *p ;
  int _max1 ;
  int _max2 ;
  bool __cond ;
  skb_frag_t *frag ;
  unsigned char *tmp ;
  int _min1 ;
  int _min2 ;
  bool __cond___0 ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  int _min1___0 ;
  int _min2___0 ;
  bool __cond___1 ;
  bool __cond___2 ;
  __u16 tmp___2 ;
  __wsum tmp___3 ;
  __wsum tmp___4 ;
  bool __cond___3 ;
  {
  swivel = 2;
  hlen = (int )(((unsigned long long )*(words + 1UL) & 17557826306048ULL) >> 35);
  dlen = (int )(((unsigned long long )*words & 134209536ULL) >> 13);
  len = hlen + dlen;
  if ((int )*(words + 2UL) & 1) {
    alloclen = len;
  } else {
    _max1 = hlen;
    _max2 = 64;
    alloclen = _max1 > _max2 ? _max1 : _max2;
  }
  {
  skb = netdev_alloc_skb(cp->dev, (unsigned int )((alloclen + swivel) + cp->crc_size));
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-1);
  } else {
  }
  {
  *skbref = skb;
  skb_reserve(skb, swivel);
  p = (char *)skb->data;
  crcaddr = (void *)0;
  addr = crcaddr;
  }
  if (hlen != 0) {
    i = (int )((unsigned long long )*(words + 1UL) >> 50);
    page = cp->rx_pages[((unsigned long long )i & 4096ULL) >> 12][(unsigned long long )i & 4095ULL];
    off = (int )((unsigned int )(((unsigned long long )*(words + 1UL) & 1108307720798208ULL) >> 44) * 256U + (unsigned int )swivel);
    i = hlen;
    if (dlen == 0) {
      i = i + cp->crc_size;
    } else {
    }
    {
    pci_dma_sync_single_for_cpu(cp->pdev, page->dma_addr + (dma_addr_t )off, (size_t )i,
                                2);
    addr = kmap_atomic(page->buffer);
    memcpy((void *)p, (void const *)addr + (unsigned long )off, (size_t )i);
    pci_dma_sync_single_for_device(cp->pdev, page->dma_addr + (dma_addr_t )off, (size_t )i,
                                   2);
    __cond = 0;
    }
    if ((int )__cond) {
      {
      __compiletime_assert_1997();
      }
    } else {
    }
    {
    __kunmap_atomic(addr);
    p = p + (unsigned long )hlen;
    swivel = 0;
    }
  } else {
  }
  if (alloclen < hlen + dlen) {
    {
    tmp = skb_end_pointer((struct sk_buff const *)skb);
    frag = (skb_frag_t *)(& ((struct skb_shared_info *)tmp)->frags);
    i = (int )(((unsigned long long )*words & 36026597995708416ULL) >> 41);
    page = cp->rx_pages[((unsigned long long )i & 4096ULL) >> 12][(unsigned long long )i & 4095ULL];
    off = (int )((unsigned int )(((unsigned long long )*words & 2198889037824ULL) >> 27) + (unsigned int )swivel);
    _min1 = cp->page_size - off;
    _min2 = dlen;
    hlen = _min1 < _min2 ? _min1 : _min2;
    }
    if (hlen < 0) {
      if ((cp->msg_enable & 64U) != 0U) {
        {
        netdev_printk("\017", (struct net_device const *)cp->dev, "rx page overflow: %d\n",
                      hlen);
        }
      } else {
      }
      {
      dev_kfree_skb_irq(skb);
      }
      return (-1);
    } else {
    }
    i = hlen;
    if (i == dlen) {
      i = i + cp->crc_size;
    } else {
    }
    {
    pci_dma_sync_single_for_cpu(cp->pdev, page->dma_addr + (dma_addr_t )off, (size_t )i,
                                2);
    swivel = 0;
    }
    if ((unsigned long )p == (unsigned long )((char *)skb->data)) {
      {
      addr = kmap_atomic(page->buffer);
      memcpy((void *)p, (void const *)addr + (unsigned long )off, 64UL);
      pci_dma_sync_single_for_device(cp->pdev, page->dma_addr + (dma_addr_t )off,
                                     (size_t )i, 2);
      __cond___0 = 0;
      }
      if ((int )__cond___0) {
        {
        __compiletime_assert_2032();
        }
      } else {
      }
      {
      __kunmap_atomic(addr);
      off = off + 64;
      swivel = 64;
      }
    } else {
    }
    {
    skb_put(skb, (unsigned int )alloclen);
    tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___0)->nr_frags = (unsigned char )((int )((struct skb_shared_info *)tmp___0)->nr_frags + 1);
    skb->data_len = skb->data_len + (unsigned int )(hlen - swivel);
    skb->truesize = skb->truesize + (unsigned int )(hlen - swivel);
    skb->len = skb->len + (unsigned int )(hlen - swivel);
    __skb_frag_set_page(frag, page->buffer);
    __skb_frag_ref(frag);
    frag->page_offset = (__u32 )off;
    skb_frag_size_set(frag, (unsigned int )(hlen - swivel));
    }
    if (((unsigned long long )*words & 288230376151711744ULL) != 0ULL) {
      dlen = dlen - hlen;
      if (dlen > 0) {
        {
        hlen = dlen;
        off = 0;
        i = (int )(((unsigned long long )*(words + 1UL) & 34357641216ULL) >> 21);
        page = cp->rx_pages[((unsigned long long )i & 4096ULL) >> 12][(unsigned long long )i & 4095ULL];
        pci_dma_sync_single_for_cpu(cp->pdev, page->dma_addr, (size_t )(hlen + cp->crc_size),
                                    2);
        pci_dma_sync_single_for_device(cp->pdev, page->dma_addr, (size_t )(hlen + cp->crc_size),
                                       2);
        tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
        ((struct skb_shared_info *)tmp___1)->nr_frags = (unsigned char )((int )((struct skb_shared_info *)tmp___1)->nr_frags + 1);
        skb->data_len = skb->data_len + (unsigned int )hlen;
        skb->len = skb->len + (unsigned int )hlen;
        frag = frag + 1;
        __skb_frag_set_page(frag, page->buffer);
        __skb_frag_ref(frag);
        frag->page_offset = 0U;
        skb_frag_size_set(frag, (unsigned int )hlen);
        }
      } else {
      }
    } else {
    }
    if (cp->crc_size != 0) {
      {
      addr = kmap_atomic(page->buffer);
      crcaddr = addr + ((unsigned long )off + (unsigned long )hlen);
      }
    } else {
    }
  } else {
    if (dlen == 0) {
      goto end_copy_pkt;
    } else {
    }
    i = (int )(((unsigned long long )*words & 36026597995708416ULL) >> 41);
    page = cp->rx_pages[((unsigned long long )i & 4096ULL) >> 12][(unsigned long long )i & 4095ULL];
    off = (int )((unsigned int )(((unsigned long long )*words & 2198889037824ULL) >> 27) + (unsigned int )swivel);
    _min1___0 = cp->page_size - off;
    _min2___0 = dlen;
    hlen = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
    if (hlen < 0) {
      if ((cp->msg_enable & 64U) != 0U) {
        {
        netdev_printk("\017", (struct net_device const *)cp->dev, "rx page overflow: %d\n",
                      hlen);
        }
      } else {
      }
      {
      dev_kfree_skb_irq(skb);
      }
      return (-1);
    } else {
    }
    i = hlen;
    if (i == dlen) {
      i = i + cp->crc_size;
    } else {
    }
    {
    pci_dma_sync_single_for_cpu(cp->pdev, page->dma_addr + (dma_addr_t )off, (size_t )i,
                                2);
    addr = kmap_atomic(page->buffer);
    memcpy((void *)p, (void const *)addr + (unsigned long )off, (size_t )i);
    pci_dma_sync_single_for_device(cp->pdev, page->dma_addr + (dma_addr_t )off, (size_t )i,
                                   2);
    __cond___1 = 0;
    }
    if ((int )__cond___1) {
      {
      __compiletime_assert_2106();
      }
    } else {
    }
    {
    __kunmap_atomic(addr);
    }
    if (((unsigned long long )*words & 288230376151711744ULL) != 0ULL) {
      dlen = dlen - hlen;
      if (dlen > 0) {
        {
        p = p + (unsigned long )hlen;
        i = (int )(((unsigned long long )*(words + 1UL) & 34357641216ULL) >> 21);
        page = cp->rx_pages[((unsigned long long )i & 4096ULL) >> 12][(unsigned long long )i & 4095ULL];
        pci_dma_sync_single_for_cpu(cp->pdev, page->dma_addr, (size_t )(dlen + cp->crc_size),
                                    2);
        addr = kmap_atomic(page->buffer);
        memcpy((void *)p, (void const *)addr, (size_t )(dlen + cp->crc_size));
        pci_dma_sync_single_for_device(cp->pdev, page->dma_addr, (size_t )(dlen + cp->crc_size),
                                       2);
        __cond___2 = 0;
        }
        if ((int )__cond___2) {
          {
          __compiletime_assert_2125();
          }
        } else {
        }
        {
        __kunmap_atomic(addr);
        }
      } else {
      }
    } else {
    }
    end_copy_pkt: ;
    if (cp->crc_size != 0) {
      addr = (void *)0;
      crcaddr = (void *)skb->data + (unsigned long )alloclen;
    } else {
    }
    {
    skb_put(skb, (unsigned int )alloclen);
    }
  }
  {
  tmp___2 = __fswab16((int )((__u16 )*(words + 3UL)));
  csum = tmp___2;
  }
  if (cp->crc_size != 0) {
    {
    tmp___3 = csum_unfold((int )csum);
    tmp___4 = csum_partial((void const *)crcaddr, cp->crc_size, tmp___3);
    csum = csum_fold(tmp___4);
    }
    if ((unsigned long )addr != (unsigned long )((void *)0)) {
      __cond___3 = 0;
      if ((int )__cond___3) {
        {
        __compiletime_assert_2142();
        }
      } else {
      }
      {
      __kunmap_atomic(addr);
      }
    } else {
    }
  } else {
  }
  {
  skb->protocol = eth_type_trans(skb, cp->dev);
  }
  if ((unsigned int )skb->protocol == 8U) {
    {
    skb->__annonCompField68.csum = csum_unfold(~ ((int )csum));
    skb->ip_summed = 2U;
    }
  } else {
    {
    skb_checksum_none_assert((struct sk_buff const *)skb);
    }
  }
  return (len);
}
}
__inline static void cas_rx_flow_pkt(struct cas *cp , u64 const *words , struct sk_buff *skb )
{
  int flowid ;
  struct sk_buff_head *flow ;
  {
  {
  flowid = (int )(((unsigned long long )*(words + 2UL) & 33030144ULL) >> 19) & 63;
  flow = (struct sk_buff_head *)(& cp->rx_flows) + (unsigned long )flowid;
  __skb_queue_tail(flow, skb);
  }
  if (((unsigned long long )*words & 576460752303423488ULL) != 0ULL) {
    goto ldv_49180;
    ldv_49179:
    {
    netif_rx(skb);
    }
    ldv_49180:
    {
    skb = __skb_dequeue(flow);
    }
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      goto ldv_49179;
    } else {
    }
  } else {
  }
  return;
}
}
static void cas_post_page(struct cas *cp , int const ring , int const index )
{
  cas_page_t *new ;
  int entry ;
  {
  {
  entry = cp->rx_old[ring];
  new = cas_page_swap(cp, ring, index);
  (cp->init_rxds[ring] + (unsigned long )entry)->buffer = new->dma_addr;
  (cp->init_rxds[ring] + (unsigned long )entry)->index = ((unsigned long long )index & 4095ULL) | ((unsigned long long )(ring << 12) & 4096ULL);
  entry = (entry + 1) & 511;
  cp->rx_old[ring] = entry;
  }
  if (((unsigned int )entry & 3U) != 0U) {
    return;
  } else {
  }
  if ((int )ring == 0) {
    {
    writel((unsigned int )entry, (void volatile *)cp->regs + 16420U);
    }
  } else
  if ((cp->cas_flags & 2U) != 0U) {
    {
    writel((unsigned int )entry, (void volatile *)cp->regs + 16928U);
    }
  } else {
  }
  return;
}
}
static int cas_post_rxds_ringN(struct cas *cp , int ring , int num )
{
  unsigned int entry ;
  unsigned int last ;
  unsigned int count ;
  unsigned int released ;
  int cluster ;
  cas_page_t **page ;
  cas_page_t *new ;
  cas_page_t *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  page = (cas_page_t **)(& cp->rx_pages) + (unsigned long )ring;
  entry = (unsigned int )cp->rx_old[ring];
  if ((cp->msg_enable & 512U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)cp->dev, "rxd[%d] interrupt, done: %d\n",
                  ring, entry);
    }
  } else {
  }
  cluster = -1;
  count = entry & 3U;
  last = num != 0 ? ((entry + (unsigned int )num) - 4U) & 511U : (entry - 4U) & 511U;
  released = 0U;
  goto ldv_49202;
  ldv_49201:
  {
  tmp___1 = page_count((*(page + (unsigned long )entry))->buffer);
  }
  if (tmp___1 > 1) {
    {
    tmp = cas_page_dequeue(cp);
    new = tmp;
    }
    if ((unsigned long )new == (unsigned long )((cas_page_t *)0)) {
      {
      cp->cas_flags = cp->cas_flags | ((u32 )(1 << (ring + 4)) & 240U);
      tmp___0 = timer_pending((struct timer_list const *)(& cp->link_timer));
      }
      if (tmp___0 == 0) {
        {
        ldv_mod_timer_121(& cp->link_timer, (unsigned long )jiffies + 1UL);
        }
      } else {
      }
      cp->rx_old[ring] = (int )entry;
      cp->rx_last[ring] = num != 0 ? (int )((unsigned int )num - released) : 0;
      return (-12);
    } else {
    }
    {
    ldv_spin_lock_81(& cp->rx_inuse_lock);
    list_add(& (*(page + (unsigned long )entry))->list, & cp->rx_inuse_list);
    ldv_spin_unlock_82(& cp->rx_inuse_lock);
    (cp->init_rxds[ring] + (unsigned long )entry)->buffer = new->dma_addr;
    *(page + (unsigned long )entry) = new;
    }
  } else {
  }
  count = count + 1U;
  if (count == 4U) {
    cluster = (int )entry;
    count = 0U;
  } else {
  }
  released = released + 1U;
  entry = (entry + 1U) & 511U;
  ldv_49202: ;
  if (entry != last) {
    goto ldv_49201;
  } else {
  }
  cp->rx_old[ring] = (int )entry;
  if (cluster < 0) {
    return (0);
  } else {
  }
  if (ring == 0) {
    {
    writel((unsigned int )cluster, (void volatile *)cp->regs + 16420U);
    }
  } else
  if ((cp->cas_flags & 2U) != 0U) {
    {
    writel((unsigned int )cluster, (void volatile *)cp->regs + 16928U);
    }
  } else {
  }
  return (0);
}
}
static int cas_rx_ringN(struct cas *cp , int ring , int budget )
{
  struct cas_rx_comp *rxcs ;
  int entry ;
  int drops ;
  int npackets ;
  unsigned int tmp ;
  struct cas_rx_comp *rxc ;
  struct sk_buff *skb ;
  int type ;
  int len ;
  u64 words[4U] ;
  int i ;
  int dring ;
  {
  rxcs = cp->init_rxcs[ring];
  npackets = 0;
  if ((cp->msg_enable & 512U) != 0U) {
    {
    tmp = readl((void const volatile *)cp->regs + 16444U);
    netdev_printk("\017", (struct net_device const *)cp->dev, "rx[%d] interrupt, done: %d/%d\n",
                  ring, tmp, cp->rx_new[ring]);
    }
  } else {
  }
  entry = cp->rx_new[ring];
  drops = 0;
  ldv_49223:
  rxc = rxcs + (unsigned long )entry;
  skb = skb;
  words[0] = rxc->word1;
  words[1] = rxc->word2;
  words[2] = rxc->word3;
  words[3] = rxc->word4;
  type = (int )(words[0] >> 62);
  if (type == 0) {
    goto ldv_49220;
  } else {
  }
  if ((words[3] & 8796093022208ULL) != 0ULL) {
    goto ldv_49220;
  } else {
  }
  if ((words[3] & 0xc000000000000000ULL) != 0ULL) {
    {
    ldv_spin_lock_77((spinlock_t *)(& cp->stat_lock) + (unsigned long )ring);
    cp->net_stats[ring].rx_errors = cp->net_stats[ring].rx_errors + 1UL;
    }
    if ((long )words[3] < 0L) {
      cp->net_stats[ring].rx_length_errors = cp->net_stats[ring].rx_length_errors + 1UL;
    } else {
    }
    if ((words[3] & 4611686018427387904ULL) != 0ULL) {
      cp->net_stats[ring].rx_crc_errors = cp->net_stats[ring].rx_crc_errors + 1UL;
    } else {
    }
    {
    ldv_spin_unlock_79((spinlock_t *)(& cp->stat_lock) + (unsigned long )ring);
    }
    drop_it:
    {
    ldv_spin_lock_77((spinlock_t *)(& cp->stat_lock) + (unsigned long )ring);
    cp->net_stats[ring].rx_dropped = cp->net_stats[ring].rx_dropped + 1UL;
    ldv_spin_unlock_79((spinlock_t *)(& cp->stat_lock) + (unsigned long )ring);
    }
    goto next;
  } else {
  }
  {
  len = cas_rx_process_pkt(cp, rxc, entry, (u64 const *)(& words), & skb);
  }
  if (len < 0) {
    drops = drops + 1;
    goto drop_it;
  } else {
  }
  if (type == 2) {
    {
    netif_rx(skb);
    }
  } else {
    {
    cas_rx_flow_pkt(cp, (u64 const *)(& words), skb);
    }
  }
  {
  ldv_spin_lock_77((spinlock_t *)(& cp->stat_lock) + (unsigned long )ring);
  cp->net_stats[ring].rx_packets = cp->net_stats[ring].rx_packets + 1UL;
  cp->net_stats[ring].rx_bytes = cp->net_stats[ring].rx_bytes + (unsigned long )len;
  ldv_spin_unlock_79((spinlock_t *)(& cp->stat_lock) + (unsigned long )ring);
  }
  next:
  npackets = npackets + 1;
  if ((words[0] & 2305843009213693952ULL) != 0ULL) {
    {
    i = (int )(words[1] >> 50);
    dring = (int )(((unsigned long long )i & 4096ULL) >> 12);
    i = i & 4095;
    cas_post_page(cp, dring, i);
    }
  } else {
  }
  if ((words[0] & 1152921504606846976ULL) != 0ULL) {
    {
    i = (int )((words[0] & 36026597995708416ULL) >> 41);
    dring = (int )(((unsigned long long )i & 4096ULL) >> 12);
    i = i & 4095;
    cas_post_page(cp, dring, i);
    }
  } else {
  }
  if ((words[0] & 144115188075855872ULL) != 0ULL) {
    {
    i = (int )((words[1] & 34357641216ULL) >> 21);
    dring = (int )(((unsigned long long )i & 4096ULL) >> 12);
    i = i & 4095;
    cas_post_page(cp, dring, i);
    }
  } else {
  }
  entry = (int )(((unsigned int )entry + (unsigned int )((words[0] & 108086391056891904ULL) >> 55)) + 1U) & 2047;
  goto ldv_49223;
  ldv_49220:
  cp->rx_new[ring] = entry;
  if (drops != 0) {
    {
    netdev_info((struct net_device const *)cp->dev, "Memory squeeze, deferring packet\n");
    }
  } else {
  }
  return (npackets);
}
}
static void cas_post_rxcs_ringN(struct net_device *dev , struct cas *cp , int ring )
{
  struct cas_rx_comp *rxc ;
  int last ;
  int entry ;
  unsigned int tmp ;
  {
  rxc = cp->init_rxcs[ring];
  last = cp->rx_cur[ring];
  entry = cp->rx_new[ring];
  if ((cp->msg_enable & 512U) != 0U) {
    {
    tmp = readl((void const volatile *)cp->regs + 16444U);
    netdev_printk("\017", (struct net_device const *)dev, "rxc[%d] interrupt, done: %d/%d\n",
                  ring, tmp, entry);
    }
  } else {
  }
  goto ldv_49233;
  ldv_49232:
  {
  cas_rxc_init(rxc + (unsigned long )last);
  last = (last + 1) & 2047;
  }
  ldv_49233: ;
  if (last != entry) {
    goto ldv_49232;
  } else {
  }
  cp->rx_cur[ring] = last;
  if (ring == 0) {
    {
    writel((unsigned int )last, (void volatile *)cp->regs + 16448U);
    }
  } else
  if ((cp->cas_flags & 2U) != 0U) {
    {
    writel((unsigned int )last, (void volatile *)cp->regs + (unsigned long )((ring + -1) * 8 + 16940));
    }
  } else {
  }
  return;
}
}
__inline static void cas_handle_irq(struct net_device *dev , struct cas *cp , u32 const status )
{
  {
  if (((unsigned int )status & 517192U) != 0U) {
    {
    cas_abnormal_irq(dev, cp, status);
    }
  } else {
  }
  if (((unsigned int )status & 32U) != 0U) {
    {
    cas_post_rxds_ringN(cp, 0, 0);
    ldv_spin_lock_107((spinlock_t *)(& cp->stat_lock));
    cp->net_stats[0].rx_dropped = cp->net_stats[0].rx_dropped + 1UL;
    ldv_spin_unlock_108((spinlock_t *)(& cp->stat_lock));
    }
  } else
  if (((unsigned int )status & 256U) != 0U) {
    {
    cas_post_rxds_ringN(cp, 0, 256);
    }
  } else {
  }
  if (((unsigned int )status & 640U) != 0U) {
    {
    cas_post_rxcs_ringN(dev, cp, 0);
    }
  } else {
  }
  return;
}
}
static irqreturn_t cas_interrupt(int irq , void *dev_id )
{
  struct net_device *dev ;
  struct cas *cp ;
  void *tmp ;
  unsigned long flags ;
  u32 status ;
  unsigned int tmp___0 ;
  {
  {
  dev = (struct net_device *)dev_id;
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  tmp___0 = readl((void const volatile *)cp->regs + 12U);
  status = tmp___0;
  }
  if (status == 0U) {
    return (0);
  } else {
  }
  {
  ldv___ldv_spin_lock_132(& cp->lock);
  }
  if ((status & 3U) != 0U) {
    {
    cas_tx(dev, cp, status);
    status = status & 4294967292U;
    }
  } else {
  }
  if ((status & 16U) != 0U) {
    {
    cas_rx_ringN(cp, 0, 0);
    status = status & 4294967279U;
    }
  } else {
  }
  if (status != 0U) {
    {
    cas_handle_irq(dev, cp, status);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_133(& cp->lock, flags);
  }
  return (1);
}
}
static void cas_netpoll(struct net_device *dev )
{
  struct cas *cp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  cas_disable_irq(cp, 0);
  cas_interrupt((int )(cp->pdev)->irq, (void *)dev);
  cas_enable_irq(cp, 0);
  }
  return;
}
}
static void cas_tx_timeout(struct net_device *dev )
{
  struct cas *cp ;
  void *tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  unsigned int tmp___10 ;
  unsigned int tmp___11 ;
  unsigned int tmp___12 ;
  unsigned int tmp___13 ;
  unsigned int tmp___14 ;
  unsigned int tmp___15 ;
  unsigned int tmp___16 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  netdev_err((struct net_device const *)dev, "transmit timed out, resetting\n");
  }
  if (cp->hw_running == 0) {
    {
    netdev_err((struct net_device const *)dev, "hrm.. hw not running!\n");
    }
    return;
  } else {
  }
  {
  tmp___0 = readl((void const volatile *)cp->regs + 25116U);
  netdev_err((struct net_device const *)dev, "MIF_STATE[%08x]\n", tmp___0);
  tmp___1 = readl((void const volatile *)cp->regs + 25040U);
  netdev_err((struct net_device const *)dev, "MAC_STATE[%08x]\n", tmp___1);
  tmp___2 = readl((void const volatile *)cp->regs + 8236U);
  tmp___3 = readl((void const volatile *)cp->regs + 8232U);
  tmp___4 = readl((void const volatile *)cp->regs + 8220U);
  tmp___5 = readl((void const volatile *)cp->regs + 8212U);
  tmp___6 = readl((void const volatile *)cp->regs + 8228U);
  tmp___7 = readl((void const volatile *)cp->regs + 24624U);
  tmp___8 = readl((void const volatile *)cp->regs + 24592U);
  tmp___9 = readl((void const volatile *)cp->regs + 8196U);
  netdev_err((struct net_device const *)dev, "TX_STATE[%08x:%08x:%08x] FIFO[%08x:%08x:%08x] SM1[%08x] SM2[%08x]\n",
             tmp___9, tmp___8, tmp___7, tmp___6, tmp___5, tmp___4, tmp___3, tmp___2);
  tmp___10 = readl((void const volatile *)cp->regs + 24628U);
  tmp___11 = readl((void const volatile *)cp->regs + 24596U);
  tmp___12 = readl((void const volatile *)cp->regs + 16384U);
  netdev_err((struct net_device const *)dev, "RX_STATE[%08x:%08x:%08x]\n", tmp___12,
             tmp___11, tmp___10);
  tmp___13 = readl((void const volatile *)cp->regs + 16792U);
  tmp___14 = readl((void const volatile *)cp->regs + 16788U);
  tmp___15 = readl((void const volatile *)cp->regs + 16784U);
  tmp___16 = readl((void const volatile *)cp->regs + 16780U);
  netdev_err((struct net_device const *)dev, "HP_STATE[%08x:%08x:%08x:%08x]\n",
             tmp___16, tmp___15, tmp___14, tmp___13);
  atomic_inc(& cp->reset_task_pending);
  atomic_inc(& cp->reset_task_pending_all);
  schedule_work(& cp->reset_task);
  }
  return;
}
}
__inline static int cas_intme(int ring , int entry )
{
  {
  if ((entry & 255) == 0) {
    return (1);
  } else {
  }
  return (0);
}
}
static void cas_write_txd(struct cas *cp , int ring , int entry , dma_addr_t mapping ,
                          int len , u64 ctrl , int last )
{
  struct cas_tx_desc *txd ;
  int tmp ;
  {
  {
  txd = cp->init_txds[ring] + (unsigned long )entry;
  ctrl = ctrl | ((unsigned long long )len & 16383ULL);
  tmp = cas_intme(ring, entry);
  }
  if (tmp != 0) {
    ctrl = ctrl | 4294967296ULL;
  } else {
  }
  if (last != 0) {
    ctrl = ctrl | 1073741824ULL;
  } else {
  }
  txd->control = ctrl;
  txd->buffer = mapping;
  return;
}
}
__inline static void *tx_tiny_buf(struct cas *cp , int const ring , int const entry )
{
  {
  return ((void *)cp->tx_tiny_bufs[ring] + (unsigned long )((int )entry * 256));
}
}
__inline static dma_addr_t tx_tiny_map(struct cas *cp , int const ring , int const entry ,
                                       int const tentry )
{
  {
  cp->tx_tiny_use[ring][tentry].nbufs = cp->tx_tiny_use[ring][tentry].nbufs + 1;
  cp->tx_tiny_use[ring][entry].used = 1;
  return (cp->tx_tiny_dvma[ring] + (dma_addr_t )((int )entry * 256));
}
}
extern void __compiletime_assert_2843(void) ;
__inline static int cas_xmit_tx_ringN(struct cas *cp , int ring , struct sk_buff *skb )
{
  struct net_device *dev ;
  int entry ;
  int nr_frags ;
  int frag ;
  int tabort ;
  int tentry ;
  dma_addr_t mapping ;
  unsigned long flags ;
  u64 ctrl ;
  u32 len ;
  unsigned char *tmp ;
  u64 csum_start_off ;
  int tmp___0 ;
  u64 csum_stuff_off ;
  unsigned char *tmp___1 ;
  unsigned long tmp___2 ;
  void *tmp___3 ;
  long tmp___4 ;
  skb_frag_t const *fragp ;
  unsigned char *tmp___5 ;
  void *addr ;
  struct page *tmp___6 ;
  void *tmp___7 ;
  bool __cond ;
  long tmp___8 ;
  {
  {
  dev = cp->dev;
  ldv___ldv_spin_lock_134((spinlock_t *)(& cp->tx_lock) + (unsigned long )ring);
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  }
  if ((cp->tx_old[ring] <= cp->tx_new[ring] ? (cp->tx_old[ring] + 511) - cp->tx_new[ring] : (cp->tx_old[ring] - cp->tx_new[ring]) + -1) <= ((cp->cas_flags & 4U) != 0U ? 2 : 1) * ((int )((struct skb_shared_info *)tmp)->nr_frags + 1)) {
    {
    netif_stop_queue(dev);
    ldv_spin_unlock_irqrestore_135((spinlock_t *)(& cp->tx_lock) + (unsigned long )ring,
                                   flags);
    netdev_err((struct net_device const *)dev, "BUG! Tx Ring full when queue awake!\n");
    }
    return (1);
  } else {
  }
  ctrl = 0ULL;
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 12U) {
    {
    tmp___0 = skb_checksum_start_offset((struct sk_buff const *)skb);
    csum_start_off = (u64 const )tmp___0;
    csum_stuff_off = csum_start_off + (unsigned long long )skb->__annonCompField68.__annonCompField67.csum_offset;
    ctrl = (((csum_start_off << 15) & 2064384ULL) | ((csum_stuff_off << 21) & 534773760ULL)) | 536870912ULL;
    }
  } else {
  }
  {
  entry = cp->tx_new[ring];
  cp->tx_skbs[ring][entry] = skb;
  tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
  nr_frags = (int )((struct skb_shared_info *)tmp___1)->nr_frags;
  len = skb_headlen((struct sk_buff const *)skb);
  tmp___2 = __phys_addr((unsigned long )skb->data);
  mapping = pci_map_page(cp->pdev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                         (unsigned long )skb->data & 4095UL, (size_t )len, 1);
  tentry = entry;
  tabort = cas_calc_tabort(cp, (unsigned long )skb->data, (int const )len);
  tmp___4 = ldv__builtin_expect(tabort != 0, 0L);
  }
  if (tmp___4 != 0L) {
    {
    cas_write_txd(cp, ring, entry, mapping, (int )(len - (u32 )tabort), ctrl | 2147483648ULL,
                  0);
    entry = (entry + 1) & 511;
    tmp___3 = tx_tiny_buf(cp, ring, entry);
    skb_copy_from_linear_data_offset((struct sk_buff const *)skb, (int const )(len - (u32 )tabort),
                                     tmp___3, (unsigned int const )tabort);
    mapping = tx_tiny_map(cp, ring, entry, tentry);
    cas_write_txd(cp, ring, entry, mapping, tabort, ctrl, nr_frags == 0);
    }
  } else {
    {
    cas_write_txd(cp, ring, entry, mapping, (int )len, ctrl | 2147483648ULL, nr_frags == 0);
    }
  }
  entry = (entry + 1) & 511;
  frag = 0;
  goto ldv_49305;
  ldv_49304:
  {
  tmp___5 = skb_end_pointer((struct sk_buff const *)skb);
  fragp = (skb_frag_t const *)(& ((struct skb_shared_info *)tmp___5)->frags) + (unsigned long )frag;
  len = skb_frag_size(fragp);
  mapping = skb_frag_dma_map(& (cp->pdev)->dev, fragp, 0UL, (size_t )len, 1);
  tabort = cas_calc_tabort(cp, (unsigned long const )fragp->page_offset, (int const )len);
  tmp___8 = ldv__builtin_expect(tabort != 0, 0L);
  }
  if (tmp___8 != 0L) {
    {
    cas_write_txd(cp, ring, entry, mapping, (int )(len - (u32 )tabort), ctrl, 0);
    entry = (entry + 1) & 511;
    tmp___6 = skb_frag_page(fragp);
    addr = kmap_atomic(tmp___6);
    tmp___7 = tx_tiny_buf(cp, ring, entry);
    memcpy(tmp___7, (void const *)(addr + (((unsigned long )fragp->page_offset + (unsigned long )len) - (unsigned long )tabort)),
           (size_t )tabort);
    __cond = 0;
    }
    if ((int )__cond) {
      {
      __compiletime_assert_2843();
      }
    } else {
    }
    {
    __kunmap_atomic(addr);
    mapping = tx_tiny_map(cp, ring, entry, tentry);
    len = (u32 )tabort;
    }
  } else {
  }
  {
  cas_write_txd(cp, ring, entry, mapping, (int )len, ctrl, frag + 1 == nr_frags);
  entry = (entry + 1) & 511;
  frag = frag + 1;
  }
  ldv_49305: ;
  if (frag < nr_frags) {
    goto ldv_49304;
  } else {
  }
  cp->tx_new[ring] = entry;
  if ((unsigned long )(cp->tx_old[ring] <= cp->tx_new[ring] ? (cp->tx_old[ring] + 511) - cp->tx_new[ring] : (cp->tx_old[ring] - cp->tx_new[ring]) + -1) <= ((cp->cas_flags & 4U) != 0U ? 36UL : 18UL)) {
    {
    netif_stop_queue(dev);
    }
  } else {
  }
  if ((cp->msg_enable & 256U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)dev, "tx[%d] queued, slot %d, skblen %d, avail %d\n",
                  ring, entry, skb->len, cp->tx_old[ring] <= cp->tx_new[ring] ? (cp->tx_old[ring] + 511) - cp->tx_new[ring] : (cp->tx_old[ring] - cp->tx_new[ring]) + -1);
    }
  } else {
  }
  {
  writel((unsigned int )entry, (void volatile *)cp->regs + (unsigned long )((ring + 2062) * 4));
  ldv_spin_unlock_irqrestore_135((spinlock_t *)(& cp->tx_lock) + (unsigned long )ring,
                                 flags);
  }
  return (0);
}
}
static netdev_tx_t cas_start_xmit(struct sk_buff *skb , struct net_device *dev )
{
  struct cas *cp ;
  void *tmp ;
  int ring ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  tmp___0 = skb_padto(skb, (unsigned int )cp->min_frame_size);
  }
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  {
  tmp___1 = ring;
  ring = ring + 1;
  tmp___2 = cas_xmit_tx_ringN(cp, tmp___1 & 3, skb);
  }
  if (tmp___2 != 0) {
    return (16);
  } else {
  }
  return (0);
}
}
static void cas_init_tx_dma(struct cas *cp )
{
  u64 desc_dma ;
  unsigned long off ;
  u32 val ;
  int i ;
  {
  {
  desc_dma = cp->block_dvma;
  off = 114688UL;
  writel((unsigned int )((desc_dma + (unsigned long long )off) >> 32), (void volatile *)cp->regs + 8284U);
  writel((unsigned int )desc_dma + (unsigned int )off, (void volatile *)cp->regs + 8280U);
  val = 1058013184U;
  i = 0;
  }
  goto ldv_49321;
  ldv_49320:
  {
  off = (unsigned long )cp->init_txds[i] - (unsigned long )cp->init_block;
  val = val | (u32 )((4 << (i * 4 + 2)) & (60 << i * 4));
  writel((unsigned int )((desc_dma + (unsigned long long )off) >> 32), (void volatile *)cp->regs + (unsigned long )(i * 8 + 8292));
  writel((unsigned int )desc_dma + (unsigned int )off, (void volatile *)cp->regs + (unsigned long )((i + 1036) * 8));
  i = i + 1;
  }
  ldv_49321: ;
  if (i <= 3) {
    goto ldv_49320;
  } else {
  }
  {
  writel(val, (void volatile *)cp->regs + 8196U);
  writel(2048U, (void volatile *)cp->regs + 8320U);
  writel(2048U, (void volatile *)cp->regs + 8324U);
  writel(2048U, (void volatile *)cp->regs + 8328U);
  writel(2048U, (void volatile *)cp->regs + 8332U);
  }
  return;
}
}
__inline static void cas_init_dma(struct cas *cp )
{
  {
  {
  cas_init_tx_dma(cp);
  cas_init_rx_dma(cp);
  }
  return;
}
}
static void cas_process_mc_list(struct cas *cp )
{
  u16 hash_table[16U] ;
  u32 crc ;
  struct netdev_hw_addr *ha ;
  int i ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  i = 1;
  memset((void *)(& hash_table), 0, 32UL);
  __mptr = (struct list_head const *)(cp->dev)->mc.list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  }
  goto ldv_49338;
  ldv_49337: ;
  if (i <= 15) {
    {
    writel((unsigned int )(((int )ha->addr[4] << 8) | (int )ha->addr[5]), (void volatile *)cp->regs + (unsigned long )(i * 12 + 24704));
    writel((unsigned int )(((int )ha->addr[2] << 8) | (int )ha->addr[3]), (void volatile *)cp->regs + (unsigned long )(i * 12 + 24708));
    writel((unsigned int )(((int )ha->addr[0] << 8) | (int )ha->addr[1]), (void volatile *)cp->regs + (unsigned long )(i * 12 + 24712));
    i = i + 1;
    }
  } else {
    {
    crc = crc32_le(4294967295U, (unsigned char const *)(& ha->addr), 6UL);
    crc = crc >> 24;
    hash_table[crc >> 4] = (u16 )((int )((short )hash_table[crc >> 4]) | (int )((short )(1 << ((int )(~ crc) & 15))));
    }
  }
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  ldv_49338: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& (cp->dev)->mc.list)) {
    goto ldv_49337;
  } else {
  }
  i = 0;
  goto ldv_49341;
  ldv_49340:
  {
  writel((unsigned int )hash_table[i], (void volatile *)cp->regs + (unsigned long )((i + 6232) * 4));
  i = i + 1;
  }
  ldv_49341: ;
  if (i <= 15) {
    goto ldv_49340;
  } else {
  }
  return;
}
}
static u32 cas_setup_multicast(struct cas *cp )
{
  u32 rxcfg ;
  int i ;
  {
  rxcfg = 0U;
  if (((cp->dev)->flags & 256U) != 0U) {
    rxcfg = rxcfg | 8U;
  } else
  if (((cp->dev)->flags & 512U) != 0U) {
    i = 0;
    goto ldv_49349;
    ldv_49348:
    {
    writel(65535U, (void volatile *)cp->regs + (unsigned long )((i + 6232) * 4));
    i = i + 1;
    }
    ldv_49349: ;
    if (i <= 15) {
      goto ldv_49348;
    } else {
    }
    rxcfg = rxcfg | 32U;
  } else {
    {
    cas_process_mc_list(cp);
    rxcfg = rxcfg | 32U;
    }
  }
  return (rxcfg);
}
}
static void cas_clear_mac_err(struct cas *cp )
{
  {
  {
  writel(0U, (void volatile *)cp->regs + 24992U);
  writel(0U, (void volatile *)cp->regs + 24996U);
  writel(0U, (void volatile *)cp->regs + 25000U);
  writel(0U, (void volatile *)cp->regs + 25004U);
  writel(0U, (void volatile *)cp->regs + 25008U);
  writel(0U, (void volatile *)cp->regs + 25012U);
  writel(0U, (void volatile *)cp->regs + 25016U);
  writel(0U, (void volatile *)cp->regs + 25020U);
  writel(0U, (void volatile *)cp->regs + 25024U);
  writel(0U, (void volatile *)cp->regs + 25028U);
  writel(0U, (void volatile *)cp->regs + 25032U);
  }
  return;
}
}
static void cas_mac_reset(struct cas *cp )
{
  int i ;
  unsigned int tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  {
  {
  writel(1U, (void volatile *)cp->regs + 24576U);
  writel(1U, (void volatile *)cp->regs + 24580U);
  i = 5000;
  }
  goto ldv_49360;
  ldv_49359:
  {
  tmp = readl((void const volatile *)cp->regs + 24576U);
  }
  if (tmp == 0U) {
    goto ldv_49358;
  } else {
  }
  {
  __const_udelay(42950UL);
  }
  ldv_49360:
  tmp___0 = i;
  i = i - 1;
  if (tmp___0 > 0) {
    goto ldv_49359;
  } else {
  }
  ldv_49358:
  i = 5000;
  goto ldv_49363;
  ldv_49362:
  {
  tmp___1 = readl((void const volatile *)cp->regs + 24580U);
  }
  if (tmp___1 == 0U) {
    goto ldv_49361;
  } else {
  }
  {
  __const_udelay(42950UL);
  }
  ldv_49363:
  tmp___2 = i;
  i = i - 1;
  if (tmp___2 > 0) {
    goto ldv_49362;
  } else {
  }
  ldv_49361:
  {
  tmp___6 = readl((void const volatile *)cp->regs + 24576U);
  tmp___7 = readl((void const volatile *)cp->regs + 24580U);
  }
  if ((tmp___6 | tmp___7) != 0U) {
    {
    tmp___3 = readl((void const volatile *)cp->regs + 25040U);
    tmp___4 = readl((void const volatile *)cp->regs + 24580U);
    tmp___5 = readl((void const volatile *)cp->regs + 24576U);
    netdev_err((struct net_device const *)cp->dev, "mac tx[%d]/rx[%d] reset failed [%08x]\n",
               tmp___5, tmp___4, tmp___3);
    }
  } else {
  }
  return;
}
}
static void cas_init_mac(struct cas *cp )
{
  unsigned char *e ;
  int i ;
  int _min1 ;
  int _min2 ;
  {
  {
  e = (cp->dev)->dev_addr;
  cas_mac_reset(cp);
  writel(16U, (void volatile *)cp->regs + 4U);
  }
  if ((cp->cas_flags & 4U) == 0U) {
    {
    writel(1U, (void volatile *)cp->regs + 8U);
    }
  } else {
  }
  {
  writel(7152U, (void volatile *)cp->regs + 24584U);
  writel(0U, (void volatile *)cp->regs + 24640U);
  writel(8U, (void volatile *)cp->regs + 24644U);
  writel(4U, (void volatile *)cp->regs + 24648U);
  writel(64U, (void volatile *)cp->regs + 24652U);
  writel(64U, (void volatile *)cp->regs + 24656U);
  _min1 = (cp->page_size << 1) + -80;
  _min2 = 9000;
  writel((unsigned int )((((_min1 < _min2 ? _min1 : _min2) + 22) & 32767) | 536870912),
         (void volatile *)cp->regs + 24660U);
  }
  if ((cp->cas_flags & 8U) != 0U && cp->crc_size != 0) {
    {
    writel(65U, (void volatile *)cp->regs + 24664U);
    }
  } else {
    {
    writel(7U, (void volatile *)cp->regs + 24664U);
    }
  }
  {
  writel(4U, (void volatile *)cp->regs + 24668U);
  writel(16U, (void volatile *)cp->regs + 24672U);
  writel(34824U, (void volatile *)cp->regs + 24676U);
  writel((unsigned int )((int )*(e + 5UL) | ((int )*(e + 4UL) << 8)) & 1023U, (void volatile *)cp->regs + 25036U);
  writel(0U, (void volatile *)cp->regs + 24908U);
  writel(0U, (void volatile *)cp->regs + 24912U);
  writel(0U, (void volatile *)cp->regs + 24916U);
  writel(0U, (void volatile *)cp->regs + 24920U);
  writel(0U, (void volatile *)cp->regs + 24924U);
  i = 0;
  }
  goto ldv_49373;
  ldv_49372:
  {
  writel(0U, (void volatile *)cp->regs + (unsigned long )((i + 6176) * 4));
  i = i + 1;
  }
  ldv_49373: ;
  if (i <= 44) {
    goto ldv_49372;
  } else {
  }
  {
  writel((unsigned int )(((int )*(e + 4UL) << 8) | (int )*(e + 5UL)), (void volatile *)cp->regs + 24704U);
  writel((unsigned int )(((int )*(e + 2UL) << 8) | (int )*(e + 3UL)), (void volatile *)cp->regs + 24708U);
  writel((unsigned int )(((int )*e << 8) | (int )*(e + 1UL)), (void volatile *)cp->regs + 24712U);
  writel(1U, (void volatile *)cp->regs + 24872U);
  writel(49664U, (void volatile *)cp->regs + 24876U);
  writel(384U, (void volatile *)cp->regs + 24880U);
  cp->mac_rx_cfg = cas_setup_multicast(cp);
  ldv_spin_lock_77((spinlock_t *)(& cp->stat_lock) + 4UL);
  cas_clear_mac_err(cp);
  ldv_spin_unlock_79((spinlock_t *)(& cp->stat_lock) + 4UL);
  writel(1U, (void volatile *)cp->regs + 24608U);
  writel(1U, (void volatile *)cp->regs + 24612U);
  writel(4294967295U, (void volatile *)cp->regs + 24616U);
  }
  return;
}
}
static void cas_init_pause_thresholds(struct cas *cp )
{
  int tmp ;
  int max_frame ;
  int off ;
  int on ;
  {
  if (cp->rx_fifo_size <= 2048) {
    tmp = cp->rx_fifo_size;
    cp->rx_pause_on = tmp;
    cp->rx_pause_off = tmp;
  } else {
    max_frame = (int )((cp->dev)->mtu + 86U) & -64;
    if (max_frame * 3 > cp->rx_fifo_size) {
      cp->rx_pause_off = 7104;
      cp->rx_pause_on = 960;
    } else {
      off = cp->rx_fifo_size + max_frame * -2;
      on = off - max_frame;
      cp->rx_pause_off = off;
      cp->rx_pause_on = on;
    }
  }
  return;
}
}
static int cas_vpd_match(void const *p , char const *str )
{
  int len ;
  size_t tmp ;
  int i ;
  unsigned char tmp___0 ;
  {
  {
  tmp = strlen(str);
  len = (int )((unsigned int )tmp + 1U);
  i = 0;
  }
  goto ldv_49388;
  ldv_49387:
  {
  tmp___0 = readb((void const volatile *)p + (unsigned long )i);
  }
  if ((int )tmp___0 != (int )*(str + (unsigned long )i)) {
    return (0);
  } else {
  }
  i = i + 1;
  ldv_49388: ;
  if (i < len) {
    goto ldv_49387;
  } else {
  }
  return (1);
}
}
static int cas_get_vpd_info(struct cas *cp , unsigned char *dev_addr , int const offset )
{
  void *p ;
  void *base ;
  void *kstart ;
  int i ;
  int len ;
  int found ;
  int phy_type ;
  int mac_off ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  unsigned char tmp___7 ;
  unsigned char tmp___8 ;
  unsigned char tmp___9 ;
  unsigned char tmp___10 ;
  unsigned char tmp___11 ;
  unsigned char tmp___12 ;
  int klen ;
  unsigned char tmp___13 ;
  int j ;
  char type ;
  unsigned char tmp___14 ;
  unsigned char tmp___15 ;
  int tmp___16 ;
  unsigned char tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  unsigned char tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  unsigned char tmp___23 ;
  int tmp___24 ;
  {
  {
  p = cp->regs + 1048576UL;
  found = 0;
  phy_type = 2;
  mac_off = 0;
  writel(3U, (void volatile *)cp->regs + 4128U);
  tmp = readb((void const volatile *)p);
  }
  if ((unsigned int )tmp != 85U) {
    goto use_random_mac_addr;
  } else {
    {
    tmp___0 = readb((void const volatile *)p + 1U);
    }
    if ((unsigned int )tmp___0 != 170U) {
      goto use_random_mac_addr;
    } else {
    }
  }
  base = (void *)0;
  i = 2;
  goto ldv_49406;
  ldv_49405:
  {
  tmp___3 = readb((void const volatile *)p + (unsigned long )i);
  }
  if ((unsigned int )tmp___3 == 80U) {
    {
    tmp___4 = readb((void const volatile *)(p + ((unsigned long )i + 1UL)));
    }
    if ((unsigned int )tmp___4 == 67U) {
      {
      tmp___5 = readb((void const volatile *)(p + ((unsigned long )i + 2UL)));
      }
      if ((unsigned int )tmp___5 == 73U) {
        {
        tmp___6 = readb((void const volatile *)(p + ((unsigned long )i + 3UL)));
        }
        if ((unsigned int )tmp___6 == 82U) {
          {
          tmp___1 = readb((void const volatile *)(p + ((unsigned long )i + 8UL)));
          tmp___2 = readb((void const volatile *)(p + ((unsigned long )i + 9UL)));
          base = p + (unsigned long )((int )tmp___1 | ((int )tmp___2 << 8));
          }
          goto ldv_49404;
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_49406: ;
  if (i <= 65535) {
    goto ldv_49405;
  } else {
  }
  ldv_49404: ;
  if ((unsigned long )base == (unsigned long )((void *)0)) {
    goto use_random_mac_addr;
  } else {
    {
    tmp___7 = readb((void const volatile *)base);
    }
    if ((unsigned int )tmp___7 != 130U) {
      goto use_random_mac_addr;
    } else {
    }
  }
  {
  tmp___8 = readb((void const volatile *)base + 1U);
  tmp___9 = readb((void const volatile *)base + 2U);
  i = ((int )tmp___8 | ((int )tmp___9 << 8)) + 3;
  }
  goto ldv_49420;
  ldv_49419:
  {
  tmp___10 = readb((void const volatile *)base + (unsigned long )i);
  }
  if ((unsigned int )tmp___10 != 144U) {
    goto use_random_mac_addr;
  } else {
  }
  {
  tmp___11 = readb((void const volatile *)(base + ((unsigned long )i + 1UL)));
  tmp___12 = readb((void const volatile *)(base + ((unsigned long )i + 2UL)));
  len = (int )tmp___11 | ((int )tmp___12 << 8);
  kstart = base + ((unsigned long )i + 3UL);
  p = kstart;
  }
  goto ldv_49417;
  ldv_49416:
  {
  tmp___13 = readb((void const volatile *)p + 2U);
  klen = (int )tmp___13;
  p = p + 3UL;
  tmp___14 = readb((void const volatile *)p);
  }
  if ((unsigned int )tmp___14 != 73U) {
    goto next;
  } else {
  }
  {
  tmp___15 = readb((void const volatile *)p + 3U);
  type = (char )tmp___15;
  }
  if ((int )((signed char )type) == 66) {
    if (klen == 29) {
      {
      tmp___17 = readb((void const volatile *)p + 4U);
      }
      if ((unsigned int )tmp___17 == 6U) {
        {
        tmp___18 = cas_vpd_match((void const *)p + 5U, "local-mac-address");
        }
        if (tmp___18 != 0) {
          tmp___16 = mac_off;
          mac_off = mac_off + 1;
          if (tmp___16 > (int )offset) {
            goto next;
          } else {
          }
          j = 0;
          goto ldv_49412;
          ldv_49411:
          {
          *(dev_addr + (unsigned long )j) = readb((void const volatile *)(p + ((unsigned long )j + 23UL)));
          j = j + 1;
          }
          ldv_49412: ;
          if (j <= 5) {
            goto ldv_49411;
          } else {
          }
          goto found_mac;
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if ((int )((signed char )type) != 83) {
    goto next;
  } else {
  }
  if ((found & 2) != 0) {
    goto next;
  } else {
  }
  if (klen == 18) {
    {
    tmp___20 = readb((void const volatile *)p + 4U);
    }
    if ((unsigned int )tmp___20 == 4U) {
      {
      tmp___21 = cas_vpd_match((void const *)p + 5U, "phy-type");
      }
      if (tmp___21 != 0) {
        {
        tmp___19 = cas_vpd_match((void const *)p + 14U, "pcs");
        }
        if (tmp___19 != 0) {
          phy_type = 1;
          goto found_phy;
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if (klen == 23) {
    {
    tmp___23 = readb((void const volatile *)p + 4U);
    }
    if ((unsigned int )tmp___23 == 4U) {
      {
      tmp___24 = cas_vpd_match((void const *)p + 5U, "phy-interface");
      }
      if (tmp___24 != 0) {
        {
        tmp___22 = cas_vpd_match((void const *)p + 19U, "pcs");
        }
        if (tmp___22 != 0) {
          phy_type = 1;
          goto found_phy;
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  found_mac:
  found = found | 1;
  goto next;
  found_phy:
  found = found | 2;
  next:
  p = p + (unsigned long )klen;
  ldv_49417: ;
  if ((long )p - (long )kstart < (long )len) {
    goto ldv_49416;
  } else {
  }
  i = i + (len + 3);
  ldv_49420: ;
  if (i <= 65535) {
    goto ldv_49419;
  } else {
  }
  use_random_mac_addr: ;
  if (found & 1) {
    goto done;
  } else {
  }
  {
  printk("\016cassini: MAC address not found in ROM VPD\n");
  *dev_addr = 8U;
  *(dev_addr + 1UL) = 0U;
  *(dev_addr + 2UL) = 32U;
  get_random_bytes((void *)dev_addr + 3U, 3);
  }
  done:
  {
  writel(0U, (void volatile *)cp->regs + 4128U);
  }
  return (phy_type);
}
}
static void cas_check_pci_invariants(struct cas *cp )
{
  struct pci_dev *pdev ;
  {
  pdev = cp->pdev;
  cp->cas_flags = 0U;
  if (*((unsigned int *)pdev + 15UL) == 2881097870U) {
    if ((unsigned int )pdev->revision > 15U) {
      cp->cas_flags = cp->cas_flags | 2U;
    } else {
    }
    if ((unsigned int )pdev->revision <= 16U) {
      cp->cas_flags = cp->cas_flags | 4U;
    } else {
    }
    if ((unsigned int )pdev->revision <= 1U) {
      cp->cas_flags = cp->cas_flags | 512U;
    } else {
    }
  } else {
    cp->cas_flags = cp->cas_flags | 2U;
    if (*((unsigned int *)pdev + 15UL) == 3477515U) {
      cp->cas_flags = cp->cas_flags | 8U;
    } else {
    }
  }
  return;
}
}
static int cas_check_invariants(struct cas *cp )
{
  struct pci_dev *pdev ;
  u32 cfg ;
  int i ;
  struct page *page ;
  struct page *tmp ;
  int _min1 ;
  int _min2 ;
  unsigned int tmp___0 ;
  u32 phy_id ;
  int j ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  unsigned int tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  {
  {
  pdev = cp->pdev;
  cp->page_order = 0;
  tmp = alloc_pages(32U, 1U);
  page = tmp;
  }
  if ((unsigned long )page != (unsigned long )((struct page *)0)) {
    {
    __free_pages(page, 1U);
    cp->page_order = 1;
    }
  } else {
    {
    _min1 = (cp->page_size << 1) + -80;
    _min2 = 9000;
    printk("MTU limited to %d bytes\n", _min1 < _min2 ? _min1 : _min2);
    }
  }
  {
  cp->page_size = (int )(4096UL << cp->page_order);
  tmp___0 = readl((void const volatile *)cp->regs + 8472U);
  cp->tx_fifo_size = (int )(tmp___0 * 64U);
  cp->rx_fifo_size = 16384;
  cp->phy_type = cas_get_vpd_info(cp, (cp->dev)->dev_addr, (int const )(pdev->devfn >> 3) & 31);
  }
  if (cp->phy_type & 1) {
    cp->cas_flags = cp->cas_flags | 1U;
    return (0);
  } else {
  }
  {
  cfg = readl((void const volatile *)cp->regs + 25104U);
  }
  if ((cfg & 512U) != 0U) {
    cp->phy_type = 4;
  } else
  if ((cfg & 256U) != 0U) {
    cp->phy_type = 2;
  } else {
  }
  {
  cas_mif_poll(cp, 0);
  writel(0U, (void volatile *)cp->regs + 36944U);
  i = 0;
  }
  goto ldv_49444;
  ldv_49443:
  j = 0;
  goto ldv_49441;
  ldv_49440:
  {
  cp->phy_addr = i;
  tmp___1 = cas_phy_read(cp, 2);
  phy_id = (u32 )((int )tmp___1 << 16);
  tmp___2 = cas_phy_read(cp, 3);
  phy_id = phy_id | (u32 )tmp___2;
  }
  if (phy_id - 1U <= 4294967293U) {
    cp->phy_id = phy_id;
    goto done;
  } else {
  }
  j = j + 1;
  ldv_49441: ;
  if (j <= 2) {
    goto ldv_49440;
  } else {
  }
  i = i + 1;
  ldv_49444: ;
  if (i <= 31) {
    goto ldv_49443;
  } else {
  }
  {
  tmp___3 = readl((void const volatile *)cp->regs + 25116U);
  printk("\vcassini: MII phy did not respond [%08x]\n", tmp___3);
  }
  return (-1);
  done:
  {
  tmp___4 = cas_phy_read(cp, 1);
  cfg = (u32 )tmp___4;
  }
  if ((cfg & 256U) != 0U) {
    {
    tmp___5 = cas_phy_read(cp, 15);
    }
    if ((unsigned int )tmp___5 != 0U) {
      cp->cas_flags = cp->cas_flags | 1U;
    } else {
    }
  } else {
  }
  return (0);
}
}
__inline static void cas_start_dma(struct cas *cp )
{
  int i ;
  u32 val ;
  int txfailed ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  int tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  {
  {
  txfailed = 0;
  tmp = readl((void const volatile *)cp->regs + 8196U);
  val = tmp | 1U;
  writel(val, (void volatile *)cp->regs + 8196U);
  tmp___0 = readl((void const volatile *)cp->regs + 16384U);
  val = tmp___0 | 1U;
  writel(val, (void volatile *)cp->regs + 16384U);
  tmp___1 = readl((void const volatile *)cp->regs + 24624U);
  val = tmp___1 | 1U;
  writel(val, (void volatile *)cp->regs + 24624U);
  tmp___2 = readl((void const volatile *)cp->regs + 24628U);
  val = tmp___2 | 1U;
  writel(val, (void volatile *)cp->regs + 24628U);
  i = 5000;
  }
  goto ldv_49454;
  ldv_49453:
  {
  val = readl((void const volatile *)cp->regs + 24624U);
  }
  if ((int )val & 1) {
    goto ldv_49452;
  } else {
  }
  {
  __const_udelay(42950UL);
  }
  ldv_49454:
  tmp___3 = i;
  i = i - 1;
  if (tmp___3 > 0) {
    goto ldv_49453;
  } else {
  }
  ldv_49452: ;
  if (i < 0) {
    txfailed = 1;
  } else {
  }
  i = 5000;
  goto ldv_49457;
  ldv_49456:
  {
  val = readl((void const volatile *)cp->regs + 24628U);
  }
  if ((int )val & 1) {
    if (txfailed != 0) {
      {
      tmp___4 = readl((void const volatile *)cp->regs + 25040U);
      tmp___5 = readl((void const volatile *)cp->regs + 25116U);
      netdev_err((struct net_device const *)cp->dev, "enabling mac failed [tx:%08x:%08x]\n",
                 tmp___5, tmp___4);
      }
    } else {
    }
    goto enable_rx_done;
  } else {
  }
  {
  __const_udelay(42950UL);
  }
  ldv_49457:
  tmp___6 = i;
  i = i - 1;
  if (tmp___6 > 0) {
    goto ldv_49456;
  } else {
  }
  {
  tmp___7 = readl((void const volatile *)cp->regs + 25040U);
  tmp___8 = readl((void const volatile *)cp->regs + 25116U);
  netdev_err((struct net_device const *)cp->dev, "enabling mac failed [%s:%08x:%08x]\n",
             txfailed != 0 ? (char *)"tx,rx" : (char *)"rx", tmp___8, tmp___7);
  }
  enable_rx_done:
  {
  cas_unmask_intr(cp);
  writel(508U, (void volatile *)cp->regs + 16420U);
  writel(0U, (void volatile *)cp->regs + 16448U);
  }
  if ((cp->cas_flags & 2U) != 0U) {
    {
    writel(508U, (void volatile *)cp->regs + 16928U);
    i = 1;
    }
    goto ldv_49460;
    ldv_49459:
    {
    writel(0U, (void volatile *)cp->regs + (unsigned long )((i + -1) * 8 + 16940));
    i = i + 1;
    }
    ldv_49460: ;
    if (i <= 0) {
      goto ldv_49459;
    } else {
    }
  } else {
  }
  return;
}
}
static void cas_read_pcs_link_mode(struct cas *cp , int *fd , int *spd , int *pause )
{
  u32 val ;
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)cp->regs + 36876U);
  val = tmp;
  *fd = (val & 32U) != 0U;
  *pause = (val & 128U) != 0U;
  }
  if ((val & 256U) != 0U) {
    *pause = *pause | 16;
  } else {
  }
  *spd = 1000;
  return;
}
}
static void cas_read_mii_link_mode(struct cas *cp , int *fd , int *spd , int *pause )
{
  u32 val ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  {
  *fd = 0;
  *spd = 10;
  *pause = 0;
  tmp = cas_phy_read(cp, 5);
  val = (u32 )tmp;
  }
  if ((val & 1024U) != 0U) {
    *pause = 1;
  } else {
  }
  if ((val & 2048U) != 0U) {
    *pause = *pause | 16;
  } else {
  }
  if ((val & 320U) != 0U) {
    *fd = 1;
  } else {
  }
  if ((val & 896U) != 0U) {
    *spd = 100;
  } else {
  }
  if ((int )cp->cas_flags & 1) {
    {
    tmp___0 = cas_phy_read(cp, 10);
    val = (u32 )tmp___0;
    }
    if ((val & 3072U) != 0U) {
      *spd = 1000;
    } else {
    }
    if ((val & 2048U) != 0U) {
      *fd = 1;
    } else {
    }
  } else {
  }
  return;
}
}
static void cas_set_link_modes(struct cas *cp )
{
  u32 val ;
  int full_duplex ;
  int speed ;
  int pause ;
  u16 tmp ;
  {
  full_duplex = 0;
  speed = 10;
  pause = 0;
  if ((cp->phy_type & 6) != 0) {
    {
    cas_mif_poll(cp, 0);
    tmp = cas_phy_read(cp, 0);
    val = (u32 )tmp;
    }
    if ((val & 4096U) != 0U) {
      {
      cas_read_mii_link_mode(cp, & full_duplex, & speed, & pause);
      }
    } else {
      if ((val & 256U) != 0U) {
        full_duplex = 1;
      } else {
      }
      if ((val & 8192U) != 0U) {
        speed = 100;
      } else
      if ((val & 64U) != 0U) {
        speed = (int )cp->cas_flags & 1 ? 1000 : 100;
      } else {
      }
    }
    {
    cas_mif_poll(cp, 1);
    }
  } else {
    {
    val = readl((void const volatile *)cp->regs + 36864U);
    cas_read_pcs_link_mode(cp, & full_duplex, & speed, & pause);
    }
    if ((val & 4096U) == 0U) {
      if ((val & 256U) != 0U) {
        full_duplex = 1;
      } else {
      }
    } else {
    }
  }
  if ((cp->msg_enable & 4U) != 0U) {
    {
    netdev_info((struct net_device const *)cp->dev, "Link up at %d Mbps, %s-duplex\n",
                speed, full_duplex != 0 ? (char *)"full" : (char *)"half");
    }
  } else {
  }
  val = 33U;
  if ((cp->phy_type & 6) != 0) {
    val = val | 16U;
    if (full_duplex == 0) {
      val = val | 4U;
    } else {
    }
  } else {
  }
  if (full_duplex != 0) {
    val = val | 64U;
  } else {
  }
  if (speed == 1000) {
    val = val | 8U;
  } else {
  }
  {
  writel(val, (void volatile *)cp->regs + 24636U);
  val = 8U;
  }
  if (full_duplex != 0) {
    val = val | 2U;
    val = val | 4U;
  } else {
  }
  if (speed == 1000 && full_duplex == 0) {
    {
    writel(val | 512U, (void volatile *)cp->regs + 24624U);
    val = readl((void const volatile *)cp->regs + 24628U);
    val = val & 4294967291U;
    writel(val | 256U, (void volatile *)cp->regs + 24628U);
    writel(512U, (void volatile *)cp->regs + 24652U);
    cp->crc_size = 4;
    cp->min_frame_size = 255;
    }
  } else {
    {
    writel(val, (void volatile *)cp->regs + 24624U);
    val = readl((void const volatile *)cp->regs + 24628U);
    }
    if (full_duplex != 0) {
      val = val | 4U;
      cp->crc_size = 0;
      cp->min_frame_size = 60;
    } else {
      val = val & 4294967291U;
      cp->crc_size = 4;
      cp->min_frame_size = 97;
    }
    {
    writel(val & 4294967039U, (void volatile *)cp->regs + 24628U);
    writel(64U, (void volatile *)cp->regs + 24652U);
    }
  }
  if ((cp->msg_enable & 4U) != 0U) {
    if (pause & 1) {
      {
      netdev_info((struct net_device const *)cp->dev, "Pause is enabled (rxfifo: %d off: %d on: %d)\n",
                  cp->rx_fifo_size, cp->rx_pause_off, cp->rx_pause_on);
      }
    } else
    if ((pause & 16) != 0) {
      {
      netdev_info((struct net_device const *)cp->dev, "TX pause enabled\n");
      }
    } else {
      {
      netdev_info((struct net_device const *)cp->dev, "Pause is disabled\n");
      }
    }
  } else {
  }
  {
  val = readl((void const volatile *)cp->regs + 24632U);
  val = val & 4294967292U;
  }
  if (pause != 0) {
    val = val | 1U;
    if (pause & 1) {
      val = val | 2U;
    } else {
    }
  } else {
  }
  {
  writel(val, (void volatile *)cp->regs + 24632U);
  cas_start_dma(cp);
  }
  return;
}
}
static void cas_init_hw(struct cas *cp , int restart_link )
{
  {
  if (restart_link != 0) {
    {
    cas_phy_init(cp);
    }
  } else {
  }
  {
  cas_init_pause_thresholds(cp);
  cas_init_mac(cp);
  cas_init_dma(cp);
  }
  if (restart_link != 0) {
    {
    cp->timer_ticks = 0;
    cas_begin_auto_negotiation(cp, (struct ethtool_cmd *)0);
    }
  } else
  if ((unsigned int )cp->lstate == 5U) {
    {
    cas_set_link_modes(cp);
    netif_carrier_on(cp->dev);
    }
  } else {
  }
  return;
}
}
static void cas_hard_reset(struct cas *cp )
{
  {
  {
  writel(8U, (void volatile *)cp->regs + 4128U);
  __const_udelay(85900UL);
  pci_restore_state(cp->pdev);
  }
  return;
}
}
static void cas_global_reset(struct cas *cp , int blkflag )
{
  int limit ;
  unsigned long __ms ;
  unsigned long tmp ;
  u32 val ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  if (blkflag != 0 && (cp->phy_type & 6) == 0) {
    {
    writel(11U, (void volatile *)cp->regs + 4112U);
    }
  } else {
    {
    writel(3U, (void volatile *)cp->regs + 4112U);
    }
  }
  if (1) {
    {
    __const_udelay(12885000UL);
    }
  } else {
    __ms = 3UL;
    goto ldv_49497;
    ldv_49496:
    {
    __const_udelay(4295000UL);
    }
    ldv_49497:
    tmp = __ms;
    __ms = __ms - 1UL;
    if (tmp != 0UL) {
      goto ldv_49496;
    } else {
    }
  }
  limit = 5000;
  goto ldv_49502;
  ldv_49501:
  {
  tmp___0 = readl((void const volatile *)cp->regs + 4112U);
  val = tmp___0;
  }
  if ((val & 3U) == 0U) {
    goto done;
  } else {
  }
  {
  __const_udelay(42950UL);
  }
  ldv_49502:
  tmp___1 = limit;
  limit = limit - 1;
  if (tmp___1 > 0) {
    goto ldv_49501;
  } else {
  }
  {
  netdev_err((struct net_device const *)cp->dev, "sw reset failed\n");
  }
  done:
  {
  writel(224U, (void volatile *)cp->regs + 4104U);
  writel(4294967264U, (void volatile *)cp->regs + 4100U);
  writel(0U, (void volatile *)cp->regs + 36944U);
  }
  return;
}
}
static void cas_reset(struct cas *cp , int blkflag )
{
  u32 val ;
  {
  {
  cas_mask_intr(cp);
  cas_global_reset(cp, blkflag);
  cas_mac_reset(cp);
  cas_entropy_gather(cp);
  val = readl((void const volatile *)cp->regs + 8196U);
  val = val & 4294967294U;
  writel(val, (void volatile *)cp->regs + 8196U);
  val = readl((void const volatile *)cp->regs + 16384U);
  val = val & 4294967294U;
  writel(val, (void volatile *)cp->regs + 16384U);
  cas_load_firmware(cp, (cas_hp_inst_t *)(& cas_prog_workaroundtab));
  ldv_spin_lock_77((spinlock_t *)(& cp->stat_lock) + 4UL);
  cas_clear_mac_err(cp);
  ldv_spin_unlock_79((spinlock_t *)(& cp->stat_lock) + 4UL);
  }
  return;
}
}
static void cas_shutdown(struct cas *cp )
{
  unsigned long flags ;
  int tmp ;
  struct cas *xxxcp ;
  struct cas *xxxcp___0 ;
  {
  {
  cp->hw_running = 0;
  ldv_del_timer_sync_141(& cp->link_timer);
  }
  goto ldv_49514;
  ldv_49513:
  {
  schedule();
  }
  ldv_49514:
  {
  tmp = atomic_read((atomic_t const *)(& cp->reset_task_pending));
  }
  if (tmp != 0) {
    goto ldv_49513;
  } else {
  }
  {
  xxxcp = cp;
  ldv___ldv_spin_lock_142(& xxxcp->lock);
  cas_lock_tx(xxxcp);
  cas_reset(cp, 0);
  }
  if ((cp->cas_flags & 8U) != 0U) {
    {
    cas_phy_powerdown(cp);
    }
  } else {
  }
  {
  xxxcp___0 = cp;
  cas_unlock_tx(xxxcp___0);
  ldv_spin_unlock_irqrestore_133(& xxxcp___0->lock, flags);
  }
  return;
}
}
static int cas_change_mtu(struct net_device *dev , int new_mtu )
{
  struct cas *cp ;
  void *tmp ;
  int _min1 ;
  int _min2 ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  }
  if (new_mtu <= 59) {
    return (-22);
  } else {
    _min1 = (cp->page_size << 1) + -80;
    _min2 = 9000;
    if (new_mtu > (_min1 < _min2 ? _min1 : _min2)) {
      return (-22);
    } else {
    }
  }
  {
  dev->mtu = (unsigned int )new_mtu;
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
    {
    tmp___2 = netif_device_present(dev);
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
  }
  {
  atomic_inc(& cp->reset_task_pending);
  }
  if (cp->phy_type & 1) {
    {
    atomic_inc(& cp->reset_task_pending_all);
    }
  } else {
    {
    atomic_inc(& cp->reset_task_pending_mtu);
    }
  }
  {
  schedule_work(& cp->reset_task);
  flush_work(& cp->reset_task);
  }
  return (0);
}
}
static void cas_clean_txd(struct cas *cp , int ring )
{
  struct cas_tx_desc *txd ;
  struct sk_buff *skb ;
  struct sk_buff **skbs ;
  u64 daddr ;
  u64 dlen ;
  int i ;
  int size ;
  int frag ;
  int ent ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  {
  txd = cp->init_txds[ring];
  skbs = (struct sk_buff **)(& cp->tx_skbs) + (unsigned long )ring;
  size = 512;
  i = 0;
  goto ldv_49544;
  ldv_49543: ;
  if ((unsigned long )*(skbs + (unsigned long )i) == (unsigned long )((struct sk_buff *)0)) {
    goto ldv_49538;
  } else {
  }
  skb = *(skbs + (unsigned long )i);
  *(skbs + (unsigned long )i) = (struct sk_buff *)0;
  frag = 0;
  goto ldv_49541;
  ldv_49540:
  {
  ent = i & (size + -1);
  daddr = (txd + (unsigned long )ent)->buffer;
  dlen = (txd + (unsigned long )ent)->control & 16383ULL;
  pci_unmap_page(cp->pdev, daddr, (size_t )dlen, 1);
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  }
  if (frag != (int )((struct skb_shared_info *)tmp)->nr_frags) {
    i = i + 1;
    ent = i & (size + -1);
    if (cp->tx_tiny_use[ring][ent].used != 0) {
      i = i + 1;
    } else {
    }
  } else {
  }
  frag = frag + 1;
  ldv_49541:
  {
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  }
  if (frag <= (int )((struct skb_shared_info *)tmp___0)->nr_frags) {
    goto ldv_49540;
  } else {
  }
  {
  dev_kfree_skb_any(skb);
  }
  ldv_49538:
  i = i + 1;
  ldv_49544: ;
  if (i < size) {
    goto ldv_49543;
  } else {
  }
  {
  memset((void *)(& cp->tx_tiny_use) + (unsigned long )ring, 0, (unsigned long )size * 8UL);
  }
  return;
}
}
__inline static void cas_free_rx_desc(struct cas *cp , int ring )
{
  cas_page_t **page ;
  int i ;
  int size ;
  {
  page = (cas_page_t **)(& cp->rx_pages) + (unsigned long )ring;
  size = 512;
  i = 0;
  goto ldv_49554;
  ldv_49553: ;
  if ((unsigned long )*(page + (unsigned long )i) != (unsigned long )((cas_page_t *)0)) {
    {
    cas_page_free(cp, *(page + (unsigned long )i));
    *(page + (unsigned long )i) = (cas_page_t *)0;
    }
  } else {
  }
  i = i + 1;
  ldv_49554: ;
  if (i < size) {
    goto ldv_49553;
  } else {
  }
  return;
}
}
static void cas_free_rxds(struct cas *cp )
{
  int i ;
  {
  i = 0;
  goto ldv_49561;
  ldv_49560:
  {
  cas_free_rx_desc(cp, i);
  i = i + 1;
  }
  ldv_49561: ;
  if (i <= 1) {
    goto ldv_49560;
  } else {
  }
  return;
}
}
static void cas_clean_rings(struct cas *cp )
{
  int i ;
  {
  {
  memset((void *)(& cp->tx_old), 0, 16UL);
  memset((void *)(& cp->tx_new), 0, 16UL);
  i = 0;
  }
  goto ldv_49568;
  ldv_49567:
  {
  cas_clean_txd(cp, i);
  i = i + 1;
  }
  ldv_49568: ;
  if (i <= 3) {
    goto ldv_49567;
  } else {
  }
  {
  memset((void *)cp->init_block, 0, 114696UL);
  cas_clean_rxds(cp);
  cas_clean_rxcs(cp);
  }
  return;
}
}
__inline static int cas_alloc_rx_desc(struct cas *cp , int ring )
{
  cas_page_t **page ;
  int size ;
  int i ;
  cas_page_t *tmp ;
  {
  page = (cas_page_t **)(& cp->rx_pages) + (unsigned long )ring;
  i = 0;
  size = 512;
  i = 0;
  goto ldv_49578;
  ldv_49577:
  {
  tmp = cas_page_alloc(cp, 208U);
  *(page + (unsigned long )i) = tmp;
  }
  if ((unsigned long )tmp == (unsigned long )((cas_page_t *)0)) {
    return (-1);
  } else {
  }
  i = i + 1;
  ldv_49578: ;
  if (i < size) {
    goto ldv_49577;
  } else {
  }
  return (0);
}
}
static int cas_alloc_rxds(struct cas *cp )
{
  int i ;
  int tmp ;
  {
  i = 0;
  goto ldv_49585;
  ldv_49584:
  {
  tmp = cas_alloc_rx_desc(cp, i);
  }
  if (tmp < 0) {
    {
    cas_free_rxds(cp);
    }
    return (-1);
  } else {
  }
  i = i + 1;
  ldv_49585: ;
  if (i <= 1) {
    goto ldv_49584;
  } else {
  }
  return (0);
}
}
static void cas_reset_task(struct work_struct *work )
{
  struct cas *cp ;
  struct work_struct const *__mptr ;
  int pending_all ;
  int tmp ;
  int pending_spare ;
  int tmp___0 ;
  int pending_mtu ;
  int tmp___1 ;
  unsigned long flags ;
  struct cas *xxxcp ;
  struct cas *xxxcp___0 ;
  {
  {
  __mptr = (struct work_struct const *)work;
  cp = (struct cas *)__mptr + 0xffffffffffff3da0UL;
  tmp = atomic_read((atomic_t const *)(& cp->reset_task_pending_all));
  pending_all = tmp;
  tmp___0 = atomic_read((atomic_t const *)(& cp->reset_task_pending_spare));
  pending_spare = tmp___0;
  tmp___1 = atomic_read((atomic_t const *)(& cp->reset_task_pending_mtu));
  pending_mtu = tmp___1;
  }
  if (((pending_all | pending_spare) | pending_mtu) == 0) {
    {
    atomic_dec(& cp->reset_task_pending);
    }
    return;
  } else {
  }
  if (cp->hw_running != 0) {
    {
    netif_device_detach(cp->dev);
    xxxcp = cp;
    ldv___ldv_spin_lock_144(& xxxcp->lock);
    cas_lock_tx(xxxcp);
    }
    if (cp->opened != 0) {
      {
      cas_spare_recover(cp, 32U);
      }
    } else {
    }
    if ((pending_all | pending_mtu) == 0) {
      goto done;
    } else {
    }
    {
    cas_reset(cp, pending_all <= 0);
    }
    if (cp->opened != 0) {
      {
      cas_clean_rings(cp);
      }
    } else {
    }
    {
    cas_init_hw(cp, pending_all > 0);
    }
    done:
    {
    xxxcp___0 = cp;
    cas_unlock_tx(xxxcp___0);
    ldv_spin_unlock_irqrestore_133(& xxxcp___0->lock, flags);
    netif_device_attach(cp->dev);
    }
  } else {
  }
  {
  atomic_sub(pending_all, & cp->reset_task_pending_all);
  atomic_sub(pending_spare, & cp->reset_task_pending_spare);
  atomic_sub(pending_mtu, & cp->reset_task_pending_mtu);
  atomic_dec(& cp->reset_task_pending);
  }
  return;
}
}
static void cas_link_timer(unsigned long data )
{
  struct cas *cp ;
  int mask ;
  int pending ;
  int reset ;
  unsigned long flags ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int i ;
  int rmask ;
  int tmp___2 ;
  u16 bmsr ;
  u32 val ;
  unsigned int tmp___3 ;
  u32 wptr ;
  u32 rptr ;
  int tlm ;
  unsigned int tmp___4 ;
  {
  cp = (struct cas *)data;
  pending = 0;
  reset = 0;
  if ((link_transition_timeout != 0 && cp->link_transition_jiffies_valid != 0) && (unsigned long )jiffies - cp->link_transition_jiffies > (unsigned long )link_transition_timeout) {
    cp->link_transition_jiffies_valid = 0;
  } else {
  }
  if (cp->hw_running == 0) {
    return;
  } else {
  }
  {
  ldv___ldv_spin_lock_146(& cp->lock);
  cas_lock_tx(cp);
  cas_entropy_gather(cp);
  tmp = atomic_read((atomic_t const *)(& cp->reset_task_pending_all));
  }
  if (tmp != 0) {
    goto done;
  } else {
    {
    tmp___0 = atomic_read((atomic_t const *)(& cp->reset_task_pending_spare));
    }
    if (tmp___0 != 0) {
      goto done;
    } else {
      {
      tmp___1 = atomic_read((atomic_t const *)(& cp->reset_task_pending_mtu));
      }
      if (tmp___1 != 0) {
        goto done;
      } else {
      }
    }
  }
  mask = (int )cp->cas_flags & 240;
  if (mask != 0) {
    i = 0;
    goto ldv_49613;
    ldv_49612:
    rmask = (1 << (i + 4)) & 240;
    if ((mask & rmask) == 0) {
      goto ldv_49611;
    } else {
    }
    {
    tmp___2 = cas_post_rxds_ringN(cp, i, cp->rx_last[i]);
    }
    if (tmp___2 < 0) {
      pending = 1;
      goto ldv_49611;
    } else {
    }
    cp->cas_flags = cp->cas_flags & (u32 )(~ rmask);
    ldv_49611:
    i = i + 1;
    ldv_49613: ;
    if (i <= 1) {
      goto ldv_49612;
    } else {
    }
  } else {
  }
  if ((cp->phy_type & 6) != 0) {
    {
    cas_mif_poll(cp, 0);
    bmsr = cas_phy_read(cp, 1);
    bmsr = cas_phy_read(cp, 1);
    cas_mif_poll(cp, 1);
    readl((void const volatile *)cp->regs + 25112U);
    reset = cas_mii_link_check(cp, (int )bmsr);
    }
  } else {
    {
    reset = cas_pcs_link_check(cp);
    }
  }
  if (reset != 0) {
    goto done;
  } else {
  }
  {
  tmp___4 = readl((void const volatile *)cp->regs + 24592U);
  }
  if ((tmp___4 & 1U) == 0U) {
    {
    tmp___3 = readl((void const volatile *)cp->regs + 25040U);
    val = tmp___3;
    tlm = (int )((val & 983040U) >> 16);
    }
    if ((tlm == 5 || tlm == 3) && (val & 61440U) >> 12 == 0U) {
      if ((cp->msg_enable & 128U) != 0U) {
        {
        netdev_printk("\017", (struct net_device const *)cp->dev, "tx err: MAC_STATE[%08x]\n",
                      val);
        }
      } else {
      }
      reset = 1;
      goto done;
    } else {
    }
    {
    val = readl((void const volatile *)cp->regs + 8228U);
    wptr = readl((void const volatile *)cp->regs + 8212U);
    rptr = readl((void const volatile *)cp->regs + 8220U);
    }
    if (val == 0U && wptr != rptr) {
      if ((cp->msg_enable & 128U) != 0U) {
        {
        netdev_printk("\017", (struct net_device const *)cp->dev, "tx err: TX_FIFO[%08x:%08x:%08x]\n",
                      val, wptr, rptr);
        }
      } else {
      }
      reset = 1;
    } else {
    }
    if (reset != 0) {
      {
      cas_hard_reset(cp);
      }
    } else {
    }
  } else {
  }
  done: ;
  if (reset != 0) {
    {
    atomic_inc(& cp->reset_task_pending);
    atomic_inc(& cp->reset_task_pending_all);
    schedule_work(& cp->reset_task);
    }
  } else {
  }
  if (pending == 0) {
    {
    ldv_mod_timer_147(& cp->link_timer, (unsigned long )jiffies + 550UL);
    }
  } else {
  }
  {
  cas_unlock_tx(cp);
  ldv_spin_unlock_irqrestore_133(& cp->lock, flags);
  }
  return;
}
}
static void cas_tx_tiny_free(struct cas *cp )
{
  struct pci_dev *pdev ;
  int i ;
  {
  pdev = cp->pdev;
  i = 0;
  goto ldv_49627;
  ldv_49626: ;
  if ((unsigned long )cp->tx_tiny_bufs[i] == (unsigned long )((u8 *)0U)) {
    goto ldv_49625;
  } else {
  }
  {
  pci_free_consistent(pdev, 131328UL, (void *)cp->tx_tiny_bufs[i], cp->tx_tiny_dvma[i]);
  cp->tx_tiny_bufs[i] = (u8 *)0U;
  }
  ldv_49625:
  i = i + 1;
  ldv_49627: ;
  if (i <= 3) {
    goto ldv_49626;
  } else {
  }
  return;
}
}
static int cas_tx_tiny_alloc(struct cas *cp )
{
  struct pci_dev *pdev ;
  int i ;
  void *tmp ;
  {
  pdev = cp->pdev;
  i = 0;
  goto ldv_49635;
  ldv_49634:
  {
  tmp = pci_alloc_consistent(pdev, 131328UL, (dma_addr_t *)(& cp->tx_tiny_dvma) + (unsigned long )i);
  cp->tx_tiny_bufs[i] = (u8 *)tmp;
  }
  if ((unsigned long )cp->tx_tiny_bufs[i] == (unsigned long )((u8 *)0U)) {
    {
    cas_tx_tiny_free(cp);
    }
    return (-1);
  } else {
  }
  i = i + 1;
  ldv_49635: ;
  if (i <= 3) {
    goto ldv_49634;
  } else {
  }
  return (0);
}
}
static int cas_open(struct net_device *dev )
{
  struct cas *cp ;
  void *tmp ;
  int hw_was_up ;
  int err ;
  unsigned long flags ;
  struct cas *xxxcp ;
  struct cas *xxxcp___0 ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct cas *xxxcp___1 ;
  struct cas *xxxcp___2 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  mutex_lock_nested(& cp->pm_mutex, 0U);
  hw_was_up = cp->hw_running;
  }
  if (cp->hw_running == 0) {
    {
    xxxcp = cp;
    ldv___ldv_spin_lock_149(& xxxcp->lock);
    cas_lock_tx(xxxcp);
    cas_reset(cp, 0);
    cp->hw_running = 1;
    xxxcp___0 = cp;
    cas_unlock_tx(xxxcp___0);
    ldv_spin_unlock_irqrestore_133(& xxxcp___0->lock, flags);
    }
  } else {
  }
  {
  err = -12;
  tmp___0 = cas_tx_tiny_alloc(cp);
  }
  if (tmp___0 < 0) {
    goto err_unlock;
  } else {
  }
  {
  tmp___1 = cas_alloc_rxds(cp);
  }
  if (tmp___1 < 0) {
    goto err_tx_tiny;
  } else {
  }
  {
  cas_spare_init(cp);
  cas_spare_recover(cp, 208U);
  tmp___2 = ldv_request_irq_151((cp->pdev)->irq, & cas_interrupt, 128UL, (char const *)(& dev->name),
                                (void *)dev);
  }
  if (tmp___2 != 0) {
    {
    netdev_err((struct net_device const *)cp->dev, "failed to request irq !\n");
    err = -11;
    }
    goto err_spare;
  } else {
  }
  {
  xxxcp___1 = cp;
  ldv___ldv_spin_lock_152(& xxxcp___1->lock);
  cas_lock_tx(xxxcp___1);
  cas_clean_rings(cp);
  cas_init_hw(cp, hw_was_up == 0);
  cp->opened = 1;
  xxxcp___2 = cp;
  cas_unlock_tx(xxxcp___2);
  ldv_spin_unlock_irqrestore_133(& xxxcp___2->lock, flags);
  netif_start_queue(dev);
  mutex_unlock(& cp->pm_mutex);
  }
  return (0);
  err_spare:
  {
  cas_spare_free(cp);
  cas_free_rxds(cp);
  }
  err_tx_tiny:
  {
  cas_tx_tiny_free(cp);
  }
  err_unlock:
  {
  mutex_unlock(& cp->pm_mutex);
  }
  return (err);
}
}
static int cas_close(struct net_device *dev )
{
  unsigned long flags ;
  struct cas *cp ;
  void *tmp ;
  struct cas *xxxcp ;
  struct cas *xxxcp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  mutex_lock_nested(& cp->pm_mutex, 0U);
  netif_stop_queue(dev);
  xxxcp = cp;
  ldv___ldv_spin_lock_154(& xxxcp->lock);
  cas_lock_tx(xxxcp);
  cp->opened = 0;
  cas_reset(cp, 0);
  cas_phy_init(cp);
  cas_begin_auto_negotiation(cp, (struct ethtool_cmd *)0);
  cas_clean_rings(cp);
  xxxcp___0 = cp;
  cas_unlock_tx(xxxcp___0);
  ldv_spin_unlock_irqrestore_133(& xxxcp___0->lock, flags);
  ldv_free_irq_156((cp->pdev)->irq, (void *)dev);
  cas_spare_free(cp);
  cas_free_rxds(cp);
  cas_tx_tiny_free(cp);
  mutex_unlock(& cp->pm_mutex);
  }
  return (0);
}
}
static struct __anonstruct_ethtool_cassini_statnames_270 ethtool_cassini_statnames[16U] =
  { {{'c', 'o', 'l', 'l', 'i', 's', 'i', 'o', 'n', 's', '\000'}},
        {{'r', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}},
        {{'r', 'x', '_', 'c', 'r', 'c', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '\000'}},
        {{'r', 'x', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}},
        {{'r', 'x', '_', 'f', 'i', 'f', 'o', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}},
        {{'r',
       'x', '_', 'f', 'r', 'a', 'm', 'e', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}},
        {{'r',
       'x', '_', 'l', 'e', 'n', 'g', 't', 'h', '_', 'e', 'r', 'r', 'o', 'r', 's',
       '\000'}},
        {{'r', 'x', '_', 'o', 'v', 'e', 'r', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}},
        {{'r',
       'x', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'t', 'x', '_', 'a', 'b', 'o', 'r', 't', 'e', 'd', '_', 'e', 'r', 'r', 'o',
       'r', 's', '\000'}},
        {{'t', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}},
        {{'t', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '\000'}},
        {{'t', 'x', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}},
        {{'t', 'x', '_', 'f', 'i', 'f', 'o', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}},
        {{'t',
       'x', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}}};
static struct __anonstruct_ethtool_register_table_271 ethtool_register_table[18U] =
  { {-1},
        {0},
        {4},
        {8},
        {4104},
        {16384},
        {16704},
        {24624},
        {24628},
        {24632},
        {24636},
        {25104},
        {36880},
        {4204},
        {36868},
        {36884},
        {25000},
        {25004}};
static void cas_read_regs(struct cas *cp , u8 *ptr , int len )
{
  u8 *p ;
  int i ;
  unsigned long flags ;
  u16 hval ;
  u32 val ;
  {
  {
  ldv___ldv_spin_lock_157(& cp->lock);
  i = 0;
  p = ptr;
  }
  goto ldv_49675;
  ldv_49674: ;
  if ((int )ethtool_register_table[i].offsets < 0) {
    {
    hval = cas_phy_read(cp, - ethtool_register_table[i].offsets);
    val = (u32 )hval;
    }
  } else {
    {
    val = readl((void const volatile *)cp->regs + (unsigned long )ethtool_register_table[i].offsets);
    }
  }
  {
  memcpy((void *)p, (void const *)(& val), 4UL);
  i = i + 1;
  p = p + 4UL;
  }
  ldv_49675: ;
  if (i < len) {
    goto ldv_49674;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_133(& cp->lock, flags);
  }
  return;
}
}
static struct net_device_stats *cas_get_stats(struct net_device *dev )
{
  struct cas *cp ;
  void *tmp ;
  struct net_device_stats *stats ;
  unsigned long flags ;
  int i ;
  unsigned long tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  stats = (struct net_device_stats *)(& cp->net_stats);
  }
  if (cp->hw_running == 0) {
    return (stats + 4UL);
  } else {
  }
  {
  ldv___ldv_spin_lock_159((spinlock_t *)(& cp->stat_lock) + 4UL);
  tmp___1 = readl((void const volatile *)cp->regs + 25028U);
  (stats + 4UL)->rx_crc_errors = (stats + 4UL)->rx_crc_errors + ((unsigned long )tmp___1 & 65535UL);
  tmp___2 = readl((void const volatile *)cp->regs + 25024U);
  (stats + 4UL)->rx_frame_errors = (stats + 4UL)->rx_frame_errors + ((unsigned long )tmp___2 & 65535UL);
  tmp___3 = readl((void const volatile *)cp->regs + 25020U);
  (stats + 4UL)->rx_length_errors = (stats + 4UL)->rx_length_errors + ((unsigned long )tmp___3 & 65535UL);
  tmp___4 = readl((void const volatile *)cp->regs + 25000U);
  tmp___5 = readl((void const volatile *)cp->regs + 25004U);
  tmp___0 = (unsigned long )((tmp___4 & 65535U) + (tmp___5 & 65535U));
  (stats + 4UL)->tx_aborted_errors = (stats + 4UL)->tx_aborted_errors + tmp___0;
  tmp___6 = readl((void const volatile *)cp->regs + 24992U);
  (stats + 4UL)->collisions = (stats + 4UL)->collisions + (tmp___0 + ((unsigned long )tmp___6 & 65535UL));
  cas_clear_mac_err(cp);
  ldv_spin_lock_107((spinlock_t *)(& cp->stat_lock));
  (stats + 4UL)->collisions = (stats + 4UL)->collisions + stats->collisions;
  (stats + 4UL)->rx_over_errors = (stats + 4UL)->rx_over_errors + stats->rx_over_errors;
  (stats + 4UL)->rx_frame_errors = (stats + 4UL)->rx_frame_errors + stats->rx_frame_errors;
  (stats + 4UL)->rx_fifo_errors = (stats + 4UL)->rx_fifo_errors + stats->rx_fifo_errors;
  (stats + 4UL)->tx_aborted_errors = (stats + 4UL)->tx_aborted_errors + stats->tx_aborted_errors;
  (stats + 4UL)->tx_fifo_errors = (stats + 4UL)->tx_fifo_errors + stats->tx_fifo_errors;
  ldv_spin_unlock_108((spinlock_t *)(& cp->stat_lock));
  i = 0;
  }
  goto ldv_49686;
  ldv_49685:
  {
  ldv_spin_lock_77((spinlock_t *)(& cp->stat_lock) + (unsigned long )i);
  (stats + 4UL)->rx_length_errors = (stats + 4UL)->rx_length_errors + (stats + (unsigned long )i)->rx_length_errors;
  (stats + 4UL)->rx_crc_errors = (stats + 4UL)->rx_crc_errors + (stats + (unsigned long )i)->rx_crc_errors;
  (stats + 4UL)->rx_packets = (stats + 4UL)->rx_packets + (stats + (unsigned long )i)->rx_packets;
  (stats + 4UL)->tx_packets = (stats + 4UL)->tx_packets + (stats + (unsigned long )i)->tx_packets;
  (stats + 4UL)->rx_bytes = (stats + 4UL)->rx_bytes + (stats + (unsigned long )i)->rx_bytes;
  (stats + 4UL)->tx_bytes = (stats + 4UL)->tx_bytes + (stats + (unsigned long )i)->tx_bytes;
  (stats + 4UL)->rx_errors = (stats + 4UL)->rx_errors + (stats + (unsigned long )i)->rx_errors;
  (stats + 4UL)->tx_errors = (stats + 4UL)->tx_errors + (stats + (unsigned long )i)->tx_errors;
  (stats + 4UL)->rx_dropped = (stats + 4UL)->rx_dropped + (stats + (unsigned long )i)->rx_dropped;
  (stats + 4UL)->tx_dropped = (stats + 4UL)->tx_dropped + (stats + (unsigned long )i)->tx_dropped;
  memset((void *)stats + (unsigned long )i, 0, 184UL);
  ldv_spin_unlock_79((spinlock_t *)(& cp->stat_lock) + (unsigned long )i);
  i = i + 1;
  }
  ldv_49686: ;
  if (i <= 3) {
    goto ldv_49685;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_135((spinlock_t *)(& cp->stat_lock) + 4UL, flags);
  }
  return (stats + 4UL);
}
}
static void cas_set_multicast(struct net_device *dev )
{
  struct cas *cp ;
  void *tmp ;
  u32 rxcfg ;
  u32 rxcfg_new ;
  unsigned long flags ;
  int limit ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  limit = 5000;
  }
  if (cp->hw_running == 0) {
    return;
  } else {
  }
  {
  ldv___ldv_spin_lock_165(& cp->lock);
  rxcfg = readl((void const volatile *)cp->regs + 24628U);
  writel(rxcfg & 4294967294U, (void volatile *)cp->regs + 24628U);
  }
  goto ldv_49698;
  ldv_49697:
  tmp___0 = limit;
  limit = limit - 1;
  if (tmp___0 == 0) {
    goto ldv_49696;
  } else {
  }
  {
  __const_udelay(42950UL);
  }
  ldv_49698:
  {
  tmp___1 = readl((void const volatile *)cp->regs + 24628U);
  }
  if ((int )tmp___1 & 1) {
    goto ldv_49697;
  } else {
  }
  ldv_49696:
  {
  limit = 5000;
  rxcfg = rxcfg & 4294967255U;
  writel(rxcfg & 4294967294U, (void volatile *)cp->regs + 24628U);
  }
  goto ldv_49701;
  ldv_49700:
  tmp___2 = limit;
  limit = limit - 1;
  if (tmp___2 == 0) {
    goto ldv_49699;
  } else {
  }
  {
  __const_udelay(42950UL);
  }
  ldv_49701:
  {
  tmp___3 = readl((void const volatile *)cp->regs + 24628U);
  }
  if ((tmp___3 & 32U) != 0U) {
    goto ldv_49700;
  } else {
  }
  ldv_49699:
  {
  rxcfg_new = cas_setup_multicast(cp);
  cp->mac_rx_cfg = rxcfg_new;
  rxcfg = rxcfg | rxcfg_new;
  writel(rxcfg, (void volatile *)cp->regs + 24628U);
  ldv_spin_unlock_irqrestore_133(& cp->lock, flags);
  }
  return;
}
}
static void cas_get_drvinfo(struct net_device *dev , struct ethtool_drvinfo *info )
{
  struct cas *cp ;
  void *tmp ;
  char const *tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  strlcpy((char *)(& info->driver), "cassini", 32UL);
  strlcpy((char *)(& info->version), "1.6", 32UL);
  tmp___0 = pci_name((struct pci_dev const *)cp->pdev);
  strlcpy((char *)(& info->bus_info), tmp___0, 32UL);
  info->regdump_len = 72U < (unsigned int )cp->casreg_len ? 72U : (unsigned int )cp->casreg_len;
  info->n_stats = 16U;
  }
  return;
}
}
static int cas_get_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct cas *cp ;
  void *tmp ;
  u16 bmcr ;
  int full_duplex ;
  int speed ;
  int pause ;
  unsigned long flags ;
  enum link_state linkstate ;
  unsigned int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  linkstate = 5;
  cmd->advertising = 0U;
  cmd->supported = 64U;
  }
  if ((int )cp->cas_flags & 1) {
    cmd->supported = cmd->supported | 32U;
    cmd->advertising = cmd->advertising | 32U;
  } else {
  }
  {
  ldv___ldv_spin_lock_167(& cp->lock);
  bmcr = 0U;
  linkstate = cp->lstate;
  }
  if ((cp->phy_type & 6) != 0) {
    cmd->port = 2U;
    cmd->transceiver = (cp->cas_flags & 8U) == 0U;
    cmd->phy_address = (__u8 )cp->phy_addr;
    cmd->advertising = cmd->advertising | 655U;
    cmd->supported = cmd->supported | 655U;
    if (cp->hw_running != 0) {
      {
      cas_mif_poll(cp, 0);
      bmcr = cas_phy_read(cp, 0);
      cas_read_mii_link_mode(cp, & full_duplex, & speed, & pause);
      cas_mif_poll(cp, 1);
      }
    } else {
    }
  } else {
    cmd->port = 3U;
    cmd->transceiver = 0U;
    cmd->phy_address = 0U;
    cmd->supported = cmd->supported | 1024U;
    cmd->advertising = cmd->advertising | 1024U;
    if (cp->hw_running != 0) {
      {
      tmp___0 = readl((void const volatile *)cp->regs + 36864U);
      bmcr = (u16 )tmp___0;
      cas_read_pcs_link_mode(cp, & full_duplex, & speed, & pause);
      }
    } else {
    }
  }
  {
  ldv_spin_unlock_irqrestore_133(& cp->lock, flags);
  }
  if (((int )bmcr & 4096) != 0) {
    {
    cmd->advertising = cmd->advertising | 64U;
    cmd->autoneg = 1U;
    ethtool_cmd_speed_set(cmd, speed != 10 ? (speed == 1000 ? 1000U : 100U) : 10U);
    cmd->duplex = full_duplex != 0;
    }
  } else {
    {
    cmd->autoneg = 0U;
    ethtool_cmd_speed_set(cmd, ((int )bmcr & 64) == 0 ? (((int )bmcr & 8192) != 0 ? 100U : 10U) : 1000U);
    cmd->duplex = ((int )bmcr & 256) != 0;
    }
  }
  if ((unsigned int )linkstate != 5U) {
    if ((cp->link_cntl & 4096) != 0) {
      {
      ethtool_cmd_speed_set(cmd, 0U);
      cmd->duplex = 255U;
      }
    } else {
      {
      ethtool_cmd_speed_set(cmd, 10U);
      }
      if ((cp->link_cntl & 8192) != 0) {
        {
        ethtool_cmd_speed_set(cmd, 100U);
        }
      } else
      if ((cp->link_cntl & 64) != 0) {
        {
        ethtool_cmd_speed_set(cmd, 1000U);
        }
      } else {
      }
      cmd->duplex = (cp->link_cntl & 256) != 0;
    }
  } else {
  }
  return (0);
}
}
static int cas_set_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct cas *cp ;
  void *tmp ;
  unsigned long flags ;
  u32 speed ;
  __u32 tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  tmp___0 = ethtool_cmd_speed((struct ethtool_cmd const *)cmd);
  speed = tmp___0;
  }
  if ((unsigned int )cmd->autoneg > 1U) {
    return (-22);
  } else {
  }
  if ((unsigned int )cmd->autoneg == 0U && (((speed != 1000U && speed != 100U) && speed != 10U) || (unsigned int )cmd->duplex > 1U)) {
    return (-22);
  } else {
  }
  {
  ldv___ldv_spin_lock_169(& cp->lock);
  cas_begin_auto_negotiation(cp, cmd);
  ldv_spin_unlock_irqrestore_133(& cp->lock, flags);
  }
  return (0);
}
}
static int cas_nway_reset(struct net_device *dev )
{
  struct cas *cp ;
  void *tmp ;
  unsigned long flags ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  }
  if ((cp->link_cntl & 4096) == 0) {
    return (-22);
  } else {
  }
  {
  ldv___ldv_spin_lock_171(& cp->lock);
  cas_begin_auto_negotiation(cp, (struct ethtool_cmd *)0);
  ldv_spin_unlock_irqrestore_133(& cp->lock, flags);
  }
  return (0);
}
}
static u32 cas_get_link(struct net_device *dev )
{
  struct cas *cp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  }
  return ((unsigned int )cp->lstate == 5U);
}
}
static u32 cas_get_msglevel(struct net_device *dev )
{
  struct cas *cp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  }
  return (cp->msg_enable);
}
}
static void cas_set_msglevel(struct net_device *dev , u32 value )
{
  struct cas *cp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  cp->msg_enable = value;
  }
  return;
}
}
static int cas_get_regs_len(struct net_device *dev )
{
  struct cas *cp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  }
  return ((int )(72U < (unsigned int )cp->casreg_len ? 72U : (unsigned int )cp->casreg_len));
}
}
static void cas_get_regs(struct net_device *dev , struct ethtool_regs *regs , void *p )
{
  struct cas *cp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  regs->version = 0U;
  cas_read_regs(cp, (u8 *)p, (int )(regs->len / 4U));
  }
  return;
}
}
static int cas_get_sset_count(struct net_device *dev , int sset )
{
  {
  {
  if (sset == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_1: ;
  return (16);
  switch_default: ;
  return (-95);
  switch_break: ;
  }
}
}
static void cas_get_strings(struct net_device *dev , u32 stringset , u8 *data )
{
  {
  {
  memcpy((void *)data, (void const *)(& ethtool_cassini_statnames), 512UL);
  }
  return;
}
}
static void cas_get_ethtool_stats(struct net_device *dev , struct ethtool_stats *estats ,
                                  u64 *data )
{
  struct cas *cp ;
  void *tmp ;
  struct net_device_stats *stats ;
  struct net_device_stats *tmp___0 ;
  int i ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  long tmp___17 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  tmp___0 = cas_get_stats(cp->dev);
  stats = tmp___0;
  i = 0;
  tmp___1 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___1) = (u64 )stats->collisions;
  tmp___2 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___2) = (u64 )stats->rx_bytes;
  tmp___3 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___3) = (u64 )stats->rx_crc_errors;
  tmp___4 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___4) = (u64 )stats->rx_dropped;
  tmp___5 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___5) = (u64 )stats->rx_errors;
  tmp___6 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___6) = (u64 )stats->rx_fifo_errors;
  tmp___7 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___7) = (u64 )stats->rx_frame_errors;
  tmp___8 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___8) = (u64 )stats->rx_length_errors;
  tmp___9 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___9) = (u64 )stats->rx_over_errors;
  tmp___10 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___10) = (u64 )stats->rx_packets;
  tmp___11 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___11) = (u64 )stats->tx_aborted_errors;
  tmp___12 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___12) = (u64 )stats->tx_bytes;
  tmp___13 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___13) = (u64 )stats->tx_dropped;
  tmp___14 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___14) = (u64 )stats->tx_errors;
  tmp___15 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___15) = (u64 )stats->tx_fifo_errors;
  tmp___16 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___16) = (u64 )stats->tx_packets;
  tmp___17 = ldv__builtin_expect(i != 16, 0L);
  }
  if (tmp___17 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/sun/cassini.c"),
                         "i" (4758), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return;
}
}
static struct ethtool_ops const cas_ethtool_ops =
     {& cas_get_settings, & cas_set_settings, & cas_get_drvinfo, & cas_get_regs_len,
    & cas_get_regs, 0, 0, & cas_get_msglevel, & cas_set_msglevel, & cas_nway_reset,
    & cas_get_link, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & cas_get_strings, 0, & cas_get_ethtool_stats,
    0, 0, 0, 0, & cas_get_sset_count, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0};
static int cas_ioctl(struct net_device *dev , struct ifreq *ifr , int cmd )
{
  struct cas *cp ;
  void *tmp ;
  struct mii_ioctl_data *data ;
  struct mii_ioctl_data *tmp___0 ;
  unsigned long flags ;
  int rc ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp;
  tmp___0 = if_mii(ifr);
  data = tmp___0;
  rc = -95;
  mutex_lock_nested(& cp->pm_mutex, 0U);
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
  data->phy_id = (__u16 )cp->phy_addr;
  case_35144:
  {
  ldv___ldv_spin_lock_173(& cp->lock);
  cas_mif_poll(cp, 0);
  data->val_out = cas_phy_read(cp, (int )data->reg_num & 31);
  cas_mif_poll(cp, 1);
  ldv_spin_unlock_irqrestore_133(& cp->lock, flags);
  rc = 0;
  }
  goto ldv_49800;
  case_35145:
  {
  ldv___ldv_spin_lock_175(& cp->lock);
  cas_mif_poll(cp, 0);
  rc = cas_phy_write(cp, (int )data->reg_num & 31, (int )data->val_in);
  cas_mif_poll(cp, 1);
  ldv_spin_unlock_irqrestore_133(& cp->lock, flags);
  }
  goto ldv_49800;
  switch_default: ;
  goto ldv_49800;
  switch_break: ;
  }
  ldv_49800:
  {
  mutex_unlock(& cp->pm_mutex);
  }
  return (rc);
}
}
static void cas_program_bridge(struct pci_dev *cas_pdev )
{
  struct pci_dev *pdev ;
  u32 val ;
  {
  pdev = (cas_pdev->bus)->self;
  if ((unsigned long )pdev == (unsigned long )((struct pci_dev *)0)) {
    return;
  } else {
  }
  if (*((unsigned int *)pdev + 15UL) != 1400668294U) {
    return;
  } else {
  }
  {
  pci_read_config_dword((struct pci_dev const *)pdev, 64, & val);
  val = val & 4294705151U;
  pci_write_config_dword((struct pci_dev const *)pdev, 64, val);
  pci_write_config_word((struct pci_dev const *)pdev, 80, 6143);
  pci_write_config_word((struct pci_dev const *)pdev, 82, 65535);
  pci_write_config_byte((struct pci_dev const *)pdev, 12, 8);
  pci_write_config_byte((struct pci_dev const *)pdev, 13, 255);
  }
  return;
}
}
static struct net_device_ops const cas_netdev_ops =
     {0, 0, & cas_open, & cas_close, & cas_start_xmit, 0, 0, & cas_set_multicast, & eth_mac_addr,
    & eth_validate_addr, & cas_ioctl, 0, & cas_change_mtu, 0, & cas_tx_timeout, 0,
    & cas_get_stats, 0, 0, & cas_netpoll, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int cas_init_one(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  int cas_version_printed ;
  unsigned long casreg_len ;
  struct net_device *dev ;
  struct cas *cp ;
  int i ;
  int err ;
  int pci_using_dac ;
  u16 pci_cmd ;
  u8 orig_cacheline_size ;
  u8 cas_cacheline_size ;
  int tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  void *tmp___4 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct lock_class_key __key___5 ;
  struct lock_class_key __key___6 ;
  struct lock_class_key __key___7 ;
  atomic_long_t __constr_expr_0 ;
  int tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  unsigned int tmp___8 ;
  {
  cas_version_printed = 0;
  orig_cacheline_size = 0U;
  cas_cacheline_size = 0U;
  tmp = cas_version_printed;
  cas_version_printed = cas_version_printed + 1;
  if (tmp == 0) {
    {
    printk("\016cassini: %s", (char *)(& version));
    }
  } else {
  }
  {
  err = pci_enable_device(pdev);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot enable PCI device, aborting\n");
    }
    return (err);
  } else {
  }
  if ((pdev->resource[0].flags & 512UL) == 0UL) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot find proper PCI device base address, aborting\n");
    err = -19;
    }
    goto err_out_disable_pdev;
  } else {
  }
  {
  dev = ldv_alloc_etherdev_mqs_177(49968, 1U, 1U);
  }
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    err = -12;
    goto err_out_disable_pdev;
  } else {
  }
  {
  dev->dev.parent = & pdev->dev;
  err = pci_request_regions(pdev, (char const *)(& dev->name));
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot obtain PCI resources, aborting\n");
    }
    goto err_out_free_netdev;
  } else {
  }
  {
  pci_set_master(pdev);
  pci_read_config_word((struct pci_dev const *)pdev, 4, & pci_cmd);
  pci_cmd = (unsigned int )pci_cmd & 65279U;
  pci_cmd = (u16 )((unsigned int )pci_cmd | 64U);
  pci_write_config_word((struct pci_dev const *)pdev, 4, (int )pci_cmd);
  tmp___1 = pci_try_set_mwi(pdev);
  }
  if (tmp___1 != 0) {
    {
    tmp___0 = pci_name((struct pci_dev const *)pdev);
    printk("\fcassini: Could not enable MWI for %s\n", tmp___0);
    }
  } else {
  }
  {
  cas_program_bridge(pdev);
  pci_read_config_byte((struct pci_dev const *)pdev, 12, & orig_cacheline_size);
  }
  if ((unsigned int )orig_cacheline_size <= 31U) {
    {
    cas_cacheline_size = 32U;
    tmp___2 = pci_write_config_byte((struct pci_dev const *)pdev, 12, (int )cas_cacheline_size);
    }
    if (tmp___2 != 0) {
      {
      dev_err((struct device const *)(& pdev->dev), "Could not set PCI cache line size\n");
      }
      goto err_write_cacheline;
    } else {
    }
  } else {
  }
  {
  tmp___3 = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  }
  if (tmp___3 == 0) {
    {
    pci_using_dac = 1;
    err = pci_set_consistent_dma_mask(pdev, 0xffffffffffffffffULL);
    }
    if (err < 0) {
      {
      dev_err((struct device const *)(& pdev->dev), "Unable to obtain 64-bit DMA for consistent allocations\n");
      }
      goto err_out_free_res;
    } else {
    }
  } else {
    {
    err = pci_set_dma_mask(pdev, 4294967295ULL);
    }
    if (err != 0) {
      {
      dev_err((struct device const *)(& pdev->dev), "No usable DMA configuration, aborting\n");
      }
      goto err_out_free_res;
    } else {
    }
    pci_using_dac = 0;
  }
  {
  casreg_len = pdev->resource[0].start != 0ULL || pdev->resource[0].end != pdev->resource[0].start ? (unsigned long )((pdev->resource[0].end - pdev->resource[0].start) + 1ULL) : 0UL;
  tmp___4 = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp___4;
  cp->pdev = pdev;
  cp->orig_cacheline_size = (unsigned int )cas_cacheline_size != 0U ? orig_cacheline_size : 0U;
  cp->dev = dev;
  cp->msg_enable = cassini_debug >= 0 ? (u32 )cassini_debug : 255U;
  cp->link_transition = 0;
  cp->link_transition_jiffies_valid = 0;
  spinlock_check(& cp->lock);
  __raw_spin_lock_init(& cp->lock.__annonCompField19.rlock, "&(&cp->lock)->rlock",
                       & __key);
  spinlock_check(& cp->rx_inuse_lock);
  __raw_spin_lock_init(& cp->rx_inuse_lock.__annonCompField19.rlock, "&(&cp->rx_inuse_lock)->rlock",
                       & __key___0);
  spinlock_check(& cp->rx_spare_lock);
  __raw_spin_lock_init(& cp->rx_spare_lock.__annonCompField19.rlock, "&(&cp->rx_spare_lock)->rlock",
                       & __key___1);
  i = 0;
  }
  goto ldv_49833;
  ldv_49832:
  {
  spinlock_check((spinlock_t *)(& cp->stat_lock) + (unsigned long )i);
  __raw_spin_lock_init(& ((spinlock_t *)(& cp->stat_lock) + (unsigned long )i)->__annonCompField19.rlock,
                       "&(&cp->stat_lock[i])->rlock", & __key___2);
  spinlock_check((spinlock_t *)(& cp->tx_lock) + (unsigned long )i);
  __raw_spin_lock_init(& ((spinlock_t *)(& cp->tx_lock) + (unsigned long )i)->__annonCompField19.rlock,
                       "&(&cp->tx_lock[i])->rlock", & __key___3);
  i = i + 1;
  }
  ldv_49833: ;
  if (i <= 3) {
    goto ldv_49832;
  } else {
  }
  {
  spinlock_check((spinlock_t *)(& cp->stat_lock) + 4UL);
  __raw_spin_lock_init(& ((spinlock_t *)(& cp->stat_lock) + 4UL)->__annonCompField19.rlock,
                       "&(&cp->stat_lock[(1 << 2)])->rlock", & __key___4);
  __mutex_init(& cp->pm_mutex, "&cp->pm_mutex", & __key___5);
  init_timer_key(& cp->link_timer, 0U, "(&cp->link_timer)", & __key___6);
  cp->link_timer.function = & cas_link_timer;
  cp->link_timer.data = (unsigned long )cp;
  atomic_set(& cp->reset_task_pending, 0);
  atomic_set(& cp->reset_task_pending_all, 0);
  atomic_set(& cp->reset_task_pending_spare, 0);
  atomic_set(& cp->reset_task_pending_mtu, 0);
  __init_work(& cp->reset_task, 0);
  __constr_expr_0.counter = 137438953408L;
  cp->reset_task.data = __constr_expr_0;
  lockdep_init_map(& cp->reset_task.lockdep_map, "(&cp->reset_task)", & __key___7,
                   0);
  INIT_LIST_HEAD(& cp->reset_task.entry);
  cp->reset_task.func = & cas_reset_task;
  }
  if ((unsigned int )link_mode <= 5U) {
    cp->link_cntl = (int )link_modes[link_mode];
  } else {
    cp->link_cntl = 4096;
  }
  {
  cp->lstate = 0;
  cp->link_transition = 5;
  netif_carrier_off(cp->dev);
  cp->timer_ticks = 0;
  cp->regs = pci_iomap(pdev, 0, casreg_len);
  }
  if ((unsigned long )cp->regs == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot map device registers, aborting\n");
    }
    goto err_out_free_res;
  } else {
  }
  {
  cp->casreg_len = (int )casreg_len;
  pci_save_state(pdev);
  cas_check_pci_invariants(cp);
  cas_hard_reset(cp);
  cas_reset(cp, 0);
  tmp___5 = cas_check_invariants(cp);
  }
  if (tmp___5 != 0) {
    goto err_out_iounmap;
  } else {
  }
  if ((cp->cas_flags & 8U) != 0U) {
    {
    cas_saturn_firmware_init(cp);
    }
  } else {
  }
  {
  tmp___6 = pci_alloc_consistent(pdev, 114696UL, & cp->block_dvma);
  cp->init_block = (struct cas_init_block *)tmp___6;
  }
  if ((unsigned long )cp->init_block == (unsigned long )((struct cas_init_block *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot allocate init block, aborting\n");
    }
    goto err_out_iounmap;
  } else {
  }
  i = 0;
  goto ldv_49842;
  ldv_49841:
  cp->init_txds[i] = (struct cas_tx_desc *)(& (cp->init_block)->txds) + (unsigned long )i;
  i = i + 1;
  ldv_49842: ;
  if (i <= 3) {
    goto ldv_49841;
  } else {
  }
  i = 0;
  goto ldv_49845;
  ldv_49844:
  cp->init_rxds[i] = (struct cas_rx_desc *)(& (cp->init_block)->rxds) + (unsigned long )i;
  i = i + 1;
  ldv_49845: ;
  if (i <= 1) {
    goto ldv_49844;
  } else {
  }
  i = 0;
  goto ldv_49848;
  ldv_49847:
  cp->init_rxcs[i] = (struct cas_rx_comp *)(& (cp->init_block)->rxcs) + (unsigned long )i;
  i = i + 1;
  ldv_49848: ;
  if (i <= 0) {
    goto ldv_49847;
  } else {
  }
  i = 0;
  goto ldv_49851;
  ldv_49850:
  {
  skb_queue_head_init((struct sk_buff_head *)(& cp->rx_flows) + (unsigned long )i);
  i = i + 1;
  }
  ldv_49851: ;
  if (i <= 63) {
    goto ldv_49850;
  } else {
  }
  dev->netdev_ops = & cas_netdev_ops;
  dev->ethtool_ops = & cas_ethtool_ops;
  dev->watchdog_timeo = 250;
  dev->irq = (int )pdev->irq;
  dev->dma = 0U;
  if ((cp->cas_flags & 512U) == 0U) {
    dev->features = dev->features | 9ULL;
  } else {
  }
  if (pci_using_dac != 0) {
    dev->features = dev->features | 32ULL;
  } else {
  }
  {
  tmp___7 = ldv_register_netdev_178(dev);
  }
  if (tmp___7 != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot register net device, aborting\n");
    }
    goto err_out_free_consistent;
  } else {
  }
  {
  tmp___8 = readl((void const volatile *)cp->regs + 4104U);
  i = (int )tmp___8;
  netdev_info((struct net_device const *)dev, "Sun Cassini%s (%sbit/%sMHz PCI/%s) Ethernet[%d] %pM\n",
              (cp->cas_flags & 2U) != 0U ? (char *)"+" : (char *)"", (i & 16) != 0 ? (char *)"32" : (char *)"64",
              (i & 8) != 0 ? (char *)"66" : (char *)"33", cp->phy_type == 1 ? (char *)"Fi" : (char *)"Cu",
              pdev->irq, dev->dev_addr);
  pci_set_drvdata(pdev, (void *)dev);
  cp->hw_running = 1;
  cas_entropy_gather(cp);
  cas_phy_init(cp);
  cas_begin_auto_negotiation(cp, (struct ethtool_cmd *)0);
  }
  return (0);
  err_out_free_consistent:
  {
  pci_free_consistent(pdev, 114696UL, (void *)cp->init_block, cp->block_dvma);
  }
  err_out_iounmap:
  {
  mutex_lock_nested(& cp->pm_mutex, 0U);
  }
  if (cp->hw_running != 0) {
    {
    cas_shutdown(cp);
    }
  } else {
  }
  {
  mutex_unlock(& cp->pm_mutex);
  pci_iounmap(pdev, cp->regs);
  }
  err_out_free_res:
  {
  pci_release_regions(pdev);
  }
  err_write_cacheline:
  {
  pci_write_config_byte((struct pci_dev const *)pdev, 12, (int )orig_cacheline_size);
  }
  err_out_free_netdev:
  {
  ldv_free_netdev_179(dev);
  }
  err_out_disable_pdev:
  {
  pci_disable_device(pdev);
  }
  return (-19);
}
}
static void cas_remove_one(struct pci_dev *pdev )
{
  struct net_device *dev ;
  void *tmp ;
  struct cas *cp ;
  void *tmp___0 ;
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
  cp = (struct cas *)tmp___0;
  ldv_unregister_netdev_180(dev);
  }
  if ((unsigned long )cp->fw_data != (unsigned long )((u8 *)0U)) {
    {
    vfree((void const *)cp->fw_data);
    }
  } else {
  }
  {
  mutex_lock_nested(& cp->pm_mutex, 0U);
  cancel_work_sync(& cp->reset_task);
  }
  if (cp->hw_running != 0) {
    {
    cas_shutdown(cp);
    }
  } else {
  }
  {
  mutex_unlock(& cp->pm_mutex);
  }
  if ((unsigned int )cp->orig_cacheline_size != 0U) {
    {
    pci_write_config_byte((struct pci_dev const *)pdev, 12, (int )cp->orig_cacheline_size);
    }
  } else {
  }
  {
  pci_free_consistent(pdev, 114696UL, (void *)cp->init_block, cp->block_dvma);
  pci_iounmap(pdev, cp->regs);
  ldv_free_netdev_181(dev);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  }
  return;
}
}
static int cas_suspend(struct pci_dev *pdev , pm_message_t state )
{
  struct net_device *dev ;
  void *tmp ;
  struct cas *cp ;
  void *tmp___0 ;
  unsigned long flags ;
  struct cas *xxxcp ;
  struct cas *xxxcp___0 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp___0;
  mutex_lock_nested(& cp->pm_mutex, 0U);
  }
  if (cp->opened != 0) {
    {
    netif_device_detach(dev);
    xxxcp = cp;
    ldv___ldv_spin_lock_182(& xxxcp->lock);
    cas_lock_tx(xxxcp);
    cas_reset(cp, 0);
    cas_clean_rings(cp);
    xxxcp___0 = cp;
    cas_unlock_tx(xxxcp___0);
    ldv_spin_unlock_irqrestore_133(& xxxcp___0->lock, flags);
    }
  } else {
  }
  if (cp->hw_running != 0) {
    {
    cas_shutdown(cp);
    }
  } else {
  }
  {
  mutex_unlock(& cp->pm_mutex);
  }
  return (0);
}
}
static int cas_resume(struct pci_dev *pdev )
{
  struct net_device *dev ;
  void *tmp ;
  struct cas *cp ;
  void *tmp___0 ;
  unsigned long flags ;
  struct cas *xxxcp ;
  struct cas *xxxcp___0 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  cp = (struct cas *)tmp___0;
  netdev_info((struct net_device const *)dev, "resuming\n");
  mutex_lock_nested(& cp->pm_mutex, 0U);
  cas_hard_reset(cp);
  }
  if (cp->opened != 0) {
    {
    xxxcp = cp;
    ldv___ldv_spin_lock_184(& xxxcp->lock);
    cas_lock_tx(xxxcp);
    cas_reset(cp, 0);
    cp->hw_running = 1;
    cas_clean_rings(cp);
    cas_init_hw(cp, 1);
    xxxcp___0 = cp;
    cas_unlock_tx(xxxcp___0);
    ldv_spin_unlock_irqrestore_133(& xxxcp___0->lock, flags);
    netif_device_attach(dev);
    }
  } else {
  }
  {
  mutex_unlock(& cp->pm_mutex);
  }
  return (0);
}
}
static struct pci_driver cas_driver =
     {{0, 0}, "cassini", (struct pci_device_id const *)(& cas_pci_tbl), & cas_init_one,
    & cas_remove_one, & cas_suspend, 0, 0, & cas_resume, 0, 0, 0, {0, 0, 0, 0, (_Bool)0,
                                                                   0, 0, 0, 0, 0,
                                                                   0, 0, 0, 0, 0},
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}};
static int cas_init(void)
{
  int tmp ;
  {
  if (linkdown_timeout > 0) {
    link_transition_timeout = linkdown_timeout * 250;
  } else {
    link_transition_timeout = 0;
  }
  {
  tmp = ldv___pci_register_driver_186(& cas_driver, & __this_module, "cassini");
  }
  return (tmp);
}
}
static void cas_cleanup(void)
{
  {
  {
  ldv_pci_unregister_driver_187(& cas_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_cas_cleanup_14_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_cas_init_14_7(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 ) ;
void ldv_allocate_external_0(void) ;
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 ) ;
void ldv_dispatch_deregister_11_1(struct net_device *arg0 ) ;
void ldv_dispatch_deregister_12_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_instance_deregister_5_1(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_8_2(struct timer_list *arg0 ) ;
void ldv_dispatch_irq_deregister_6_1(int arg0 ) ;
void ldv_dispatch_irq_register_10_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_13_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_9_4(struct net_device *arg0 ) ;
void ldv_dummy_resourceless_instance_callback_1_10(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_12(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_13(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_14(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_15(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_18(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_21(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_24(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_27(struct net_device_stats *(*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_28(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_29(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_30(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_31(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_32(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_33(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_34(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_35(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_38(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_7(void (*arg0)(struct net_device * ,
                                                               struct ethtool_stats * ,
                                                               unsigned long long * ) ,
                                                  struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                  unsigned long long *arg3 ) ;
void ldv_entry_EMGentry_14(void *arg0 ) ;
int main(void) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_free_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_initialize_external_data(void) ;
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_0(void *arg0 ) ;
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 ) ;
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
int ldv_register_netdev(int arg0 , struct net_device *arg1 ) ;
int ldv_register_netdev_open_9_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
void ldv_switch_automaton_state_0_1(void) ;
void ldv_switch_automaton_state_0_6(void) ;
void ldv_switch_automaton_state_1_1(void) ;
void ldv_switch_automaton_state_1_5(void) ;
void ldv_switch_automaton_state_2_11(void) ;
void ldv_switch_automaton_state_2_20(void) ;
void ldv_switch_automaton_state_3_1(void) ;
void ldv_switch_automaton_state_3_3(void) ;
void ldv_timer_instance_callback_3_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_3(void *arg0 ) ;
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_unregister_netdev_stop_11_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) ;
void *ldv_0_data_data ;
int ldv_0_line_line ;
enum irqreturn ldv_0_ret_val_default ;
enum irqreturn (*ldv_0_thread_thread)(int , void * ) ;
void (*ldv_14_exit_cas_cleanup_default)(void) ;
int (*ldv_14_init_cas_init_default)(void) ;
int ldv_14_ret_default ;
void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
void (*ldv_1_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                         unsigned long long * ) ;
unsigned int (*ldv_1_callback_get_link)(struct net_device * ) ;
unsigned int (*ldv_1_callback_get_msglevel)(struct net_device * ) ;
void (*ldv_1_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
int (*ldv_1_callback_get_regs_len)(struct net_device * ) ;
int (*ldv_1_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) ;
int (*ldv_1_callback_get_sset_count)(struct net_device * , int ) ;
void (*ldv_1_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) ;
int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) ;
int (*ldv_1_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
struct net_device_stats *(*ldv_1_callback_ndo_get_stats)(struct net_device * ) ;
void (*ldv_1_callback_ndo_poll_controller)(struct net_device * ) ;
int (*ldv_1_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
void (*ldv_1_callback_ndo_set_rx_mode)(struct net_device * ) ;
enum netdev_tx (*ldv_1_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
void (*ldv_1_callback_ndo_tx_timeout)(struct net_device * ) ;
int (*ldv_1_callback_ndo_validate_addr)(struct net_device * ) ;
int (*ldv_1_callback_nway_reset)(struct net_device * ) ;
void (*ldv_1_callback_set_msglevel)(struct net_device * , unsigned int ) ;
int (*ldv_1_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) ;
struct net_device *ldv_1_container_net_device ;
struct ethtool_cmd *ldv_1_container_struct_ethtool_cmd_ptr ;
struct ethtool_drvinfo *ldv_1_container_struct_ethtool_drvinfo_ptr ;
struct ethtool_regs *ldv_1_container_struct_ethtool_regs_ptr ;
struct ethtool_stats *ldv_1_container_struct_ethtool_stats_ptr ;
struct ifreq *ldv_1_container_struct_ifreq_ptr ;
struct sk_buff *ldv_1_container_struct_sk_buff_ptr ;
int ldv_1_ldv_param_15_1_default ;
unsigned int ldv_1_ldv_param_18_1_default ;
unsigned char *ldv_1_ldv_param_18_2_default ;
int ldv_1_ldv_param_21_1_default ;
int ldv_1_ldv_param_24_2_default ;
unsigned int ldv_1_ldv_param_35_1_default ;
unsigned long long *ldv_1_ldv_param_7_2_default ;
struct pci_driver *ldv_2_container_pci_driver ;
struct pci_dev *ldv_2_resource_dev ;
struct pm_message ldv_2_resource_pm_message ;
struct pci_device_id *ldv_2_resource_struct_pci_device_id_ptr ;
int ldv_2_ret_default ;
struct timer_list *ldv_3_container_timer_list ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_14 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) = & cas_interrupt;
void (*ldv_14_exit_cas_cleanup_default)(void) = & cas_cleanup;
int (*ldv_14_init_cas_init_default)(void) = & cas_init;
void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) = & cas_get_drvinfo;
void (*ldv_1_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                         unsigned long long * ) = & cas_get_ethtool_stats;
unsigned int (*ldv_1_callback_get_link)(struct net_device * ) = & cas_get_link;
unsigned int (*ldv_1_callback_get_msglevel)(struct net_device * ) = & cas_get_msglevel;
void (*ldv_1_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) = & cas_get_regs;
int (*ldv_1_callback_get_regs_len)(struct net_device * ) = & cas_get_regs_len;
int (*ldv_1_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) = & cas_get_settings;
int (*ldv_1_callback_get_sset_count)(struct net_device * , int ) = & cas_get_sset_count;
void (*ldv_1_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) = & cas_get_strings;
int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) = & cas_change_mtu;
int (*ldv_1_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) = & cas_ioctl;
struct net_device_stats *(*ldv_1_callback_ndo_get_stats)(struct net_device * ) = & cas_get_stats;
void (*ldv_1_callback_ndo_poll_controller)(struct net_device * ) = & cas_netpoll;
int (*ldv_1_callback_ndo_set_mac_address)(struct net_device * , void * ) = & eth_mac_addr;
void (*ldv_1_callback_ndo_set_rx_mode)(struct net_device * ) = & cas_set_multicast;
enum netdev_tx (*ldv_1_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) = & cas_start_xmit;
void (*ldv_1_callback_ndo_tx_timeout)(struct net_device * ) = & cas_tx_timeout;
int (*ldv_1_callback_ndo_validate_addr)(struct net_device * ) = & eth_validate_addr;
int (*ldv_1_callback_nway_reset)(struct net_device * ) = & cas_nway_reset;
void (*ldv_1_callback_set_msglevel)(struct net_device * , unsigned int ) = & cas_set_msglevel;
int (*ldv_1_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) = & cas_set_settings;
void ldv_EMGentry_exit_cas_cleanup_14_2(void (*arg0)(void) )
{
  {
  {
  cas_cleanup();
  }
  return;
}
}
int ldv_EMGentry_init_cas_init_14_7(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = cas_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_13_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_13_pci_driver_pci_driver = arg1;
    ldv_assume(ldv_statevar_2 == 20);
    ldv_dispatch_register_13_2(ldv_13_pci_driver_pci_driver);
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
  {
  {
  ldv_0_data_data = external_allocated_data();
  tmp = external_allocated_data();
  ldv_0_thread_thread = (enum irqreturn (*)(int , void * ))tmp;
  tmp___0 = external_allocated_data();
  ldv_1_container_net_device = (struct net_device *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_1_container_struct_ethtool_cmd_ptr = (struct ethtool_cmd *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_1_container_struct_ethtool_drvinfo_ptr = (struct ethtool_drvinfo *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_1_container_struct_ethtool_regs_ptr = (struct ethtool_regs *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_1_container_struct_ethtool_stats_ptr = (struct ethtool_stats *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_1_container_struct_ifreq_ptr = (struct ifreq *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_1_container_struct_sk_buff_ptr = (struct sk_buff *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_1_ldv_param_18_2_default = (unsigned char *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_1_ldv_param_7_2_default = (unsigned long long *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_2_resource_dev = (struct pci_dev *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_3_container_timer_list = (struct timer_list *)tmp___10;
  }
  return;
}
}
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 )
{
  struct timer_list *ldv_5_timer_list_timer_list ;
  {
  {
  ldv_5_timer_list_timer_list = arg1;
  ldv_assume(ldv_statevar_3 == 2);
  ldv_dispatch_instance_deregister_5_1(ldv_5_timer_list_timer_list);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_dispatch_deregister_11_1(struct net_device *arg0 )
{
  {
  {
  ldv_1_container_net_device = arg0;
  ldv_switch_automaton_state_1_1();
  }
  return;
}
}
void ldv_dispatch_deregister_12_1(struct pci_driver *arg0 )
{
  {
  {
  ldv_2_container_pci_driver = arg0;
  ldv_switch_automaton_state_2_11();
  }
  return;
}
}
void ldv_dispatch_instance_deregister_5_1(struct timer_list *arg0 )
{
  {
  {
  ldv_3_container_timer_list = arg0;
  ldv_switch_automaton_state_3_1();
  }
  return;
}
}
void ldv_dispatch_instance_register_8_2(struct timer_list *arg0 )
{
  {
  {
  ldv_3_container_timer_list = arg0;
  ldv_switch_automaton_state_3_3();
  }
  return;
}
}
void ldv_dispatch_irq_deregister_6_1(int arg0 )
{
  {
  {
  ldv_0_line_line = arg0;
  ldv_switch_automaton_state_0_1();
  }
  return;
}
}
void ldv_dispatch_irq_register_10_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
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
void ldv_dispatch_register_13_2(struct pci_driver *arg0 )
{
  {
  {
  ldv_2_container_pci_driver = arg0;
  ldv_switch_automaton_state_2_20();
  }
  return;
}
}
void ldv_dispatch_register_9_4(struct net_device *arg0 )
{
  {
  {
  ldv_1_container_net_device = arg0;
  ldv_switch_automaton_state_1_5();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_10(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  cas_get_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  cas_get_msglevel(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_12(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 )
{
  {
  {
  cas_get_regs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_13(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  cas_get_regs_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_14(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  cas_get_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_15(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  cas_get_sset_count(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_18(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  cas_get_strings(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_21(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  cas_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_24(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 )
{
  {
  {
  cas_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_27(struct net_device_stats *(*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  cas_get_stats(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_28(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  cas_netpoll(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_29(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 )
{
  {
  {
  eth_mac_addr(arg1, arg2);
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
  cas_get_drvinfo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_30(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  cas_set_multicast(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_31(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  cas_start_xmit(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_32(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  cas_tx_timeout(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_33(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_34(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  cas_nway_reset(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_35(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 )
{
  {
  {
  cas_set_msglevel(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_38(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  cas_set_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_7(void (*arg0)(struct net_device * ,
                                                               struct ethtool_stats * ,
                                                               unsigned long long * ) ,
                                                  struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                  unsigned long long *arg3 )
{
  {
  {
  cas_get_ethtool_stats(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_entry_EMGentry_14(void *arg0 )
{
  int tmp ;
  {
  {
  if (ldv_statevar_14 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_14 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_14 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_4:
  {
  ldv_assume(ldv_14_ret_default == 0);
  ldv_assume(ldv_statevar_2 == 12);
  ldv_EMGentry_exit_cas_cleanup_14_2(ldv_14_exit_cas_cleanup_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_14 = 7;
  }
  goto ldv_50545;
  case_6:
  {
  ldv_assume(ldv_14_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_14 = 7;
  }
  goto ldv_50545;
  case_7:
  {
  ldv_assume(ldv_statevar_2 == 20);
  ldv_14_ret_default = ldv_EMGentry_init_cas_init_14_7(ldv_14_init_cas_init_default);
  ldv_14_ret_default = ldv_post_init(ldv_14_ret_default);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_14 = 4;
  } else {
    ldv_statevar_14 = 6;
  }
  goto ldv_50545;
  switch_default: ;
  switch_break: ;
  }
  ldv_50545: ;
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
  ldv_statevar_14 = 7;
  ldv_statevar_0 = 6;
  ldv_statevar_1 = 5;
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  ldv_statevar_3 = 3;
  }
  ldv_50558:
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
  ldv_entry_EMGentry_14((void *)0);
  }
  goto ldv_50552;
  case_1:
  {
  ldv_interrupt_interrupt_instance_0((void *)0);
  }
  goto ldv_50552;
  case_2:
  {
  ldv_net_dummy_resourceless_instance_1((void *)0);
  }
  goto ldv_50552;
  case_3:
  {
  ldv_pci_pci_instance_2((void *)0);
  }
  goto ldv_50552;
  case_4:
  {
  ldv_timer_timer_instance_3((void *)0);
  }
  goto ldv_50552;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_50552: ;
  goto ldv_50558;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_6_line_line ;
  {
  {
  ldv_6_line_line = arg1;
  ldv_assume(ldv_statevar_0 == 2);
  ldv_dispatch_irq_deregister_6_1(ldv_6_line_line);
  }
  return;
  return;
}
}
void ldv_free_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_7_netdev_net_device ;
  {
  {
  ldv_7_netdev_net_device = arg1;
  ldv_free((void *)ldv_7_netdev_net_device);
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
  tmp = cas_interrupt(arg1, arg2);
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
  goto ldv_50590;
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
  goto ldv_50590;
  case_5:
  {
  ldv_assume(ldv_statevar_3 == 3);
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
  goto ldv_50590;
  case_6: ;
  goto ldv_50590;
  switch_default: ;
  switch_break: ;
  }
  ldv_50590: ;
  return;
}
}
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 )
{
  struct timer_list *ldv_8_timer_list_timer_list ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_8_timer_list_timer_list = arg1;
    ldv_assume(ldv_statevar_3 == 3);
    ldv_dispatch_instance_register_8_2(ldv_8_timer_list_timer_list);
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
  void *tmp ;
  void *tmp___0 ;
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
  if (ldv_statevar_1 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_1 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_1 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_1 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_1 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_1 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_1 == 29) {
    goto case_29;
  } else {
  }
  if (ldv_statevar_1 == 30) {
    goto case_30;
  } else {
  }
  if (ldv_statevar_1 == 31) {
    goto case_31;
  } else {
  }
  if (ldv_statevar_1 == 32) {
    goto case_32;
  } else {
  }
  if (ldv_statevar_1 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_1 == 34) {
    goto case_34;
  } else {
  }
  if (ldv_statevar_1 == 36) {
    goto case_36;
  } else {
  }
  if (ldv_statevar_1 == 38) {
    goto case_38;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_50605;
  case_2:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_50605;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_get_drvinfo, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_drvinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_4:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_50605;
  case_5: ;
  goto ldv_50605;
  case_8:
  {
  tmp = ldv_xmalloc(8UL);
  ldv_1_ldv_param_7_2_default = (unsigned long long *)tmp;
  ldv_dummy_resourceless_instance_callback_1_7(ldv_1_callback_get_ethtool_stats, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_stats_ptr,
                                               ldv_1_ldv_param_7_2_default);
  ldv_free((void *)ldv_1_ldv_param_7_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_1_10(ldv_1_callback_get_link, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_1_11(ldv_1_callback_get_msglevel, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_1_12(ldv_1_callback_get_regs, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_regs_ptr,
                                                (void *)ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_1_13(ldv_1_callback_get_regs_len, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_1_14(ldv_1_callback_get_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_1_15(ldv_1_callback_get_sset_count, ldv_1_container_net_device,
                                                ldv_1_ldv_param_15_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_19:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_18_2_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_1_18(ldv_1_callback_get_strings, ldv_1_container_net_device,
                                                ldv_1_ldv_param_18_1_default, ldv_1_ldv_param_18_2_default);
  ldv_free((void *)ldv_1_ldv_param_18_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_22:
  {
  ldv_dummy_resourceless_instance_callback_1_21(ldv_1_callback_ndo_change_mtu, ldv_1_container_net_device,
                                                ldv_1_ldv_param_21_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_25:
  {
  ldv_dummy_resourceless_instance_callback_1_24(ldv_1_callback_ndo_do_ioctl, ldv_1_container_net_device,
                                                ldv_1_container_struct_ifreq_ptr,
                                                ldv_1_ldv_param_24_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_27:
  {
  ldv_dummy_resourceless_instance_callback_1_27(ldv_1_callback_ndo_get_stats, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_28:
  {
  ldv_dummy_resourceless_instance_callback_1_28(ldv_1_callback_ndo_poll_controller,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_29:
  {
  ldv_dummy_resourceless_instance_callback_1_29(ldv_1_callback_ndo_set_mac_address,
                                                ldv_1_container_net_device, (void *)ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_30:
  {
  ldv_dummy_resourceless_instance_callback_1_30(ldv_1_callback_ndo_set_rx_mode, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_31:
  {
  ldv_dummy_resourceless_instance_callback_1_31(ldv_1_callback_ndo_start_xmit, ldv_1_container_struct_sk_buff_ptr,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_32:
  {
  ldv_dummy_resourceless_instance_callback_1_32(ldv_1_callback_ndo_tx_timeout, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_33:
  {
  ldv_dummy_resourceless_instance_callback_1_33(ldv_1_callback_ndo_validate_addr,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_34:
  {
  ldv_assume(ldv_statevar_3 == 3);
  ldv_dummy_resourceless_instance_callback_1_34(ldv_1_callback_nway_reset, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_36:
  {
  ldv_dummy_resourceless_instance_callback_1_35(ldv_1_callback_set_msglevel, ldv_1_container_net_device,
                                                ldv_1_ldv_param_35_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  case_38:
  {
  ldv_assume(ldv_statevar_3 == 3);
  ldv_dummy_resourceless_instance_callback_1_38(ldv_1_callback_set_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_50605;
  switch_default: ;
  switch_break: ;
  }
  ldv_50605: ;
  return;
}
}
int ldv_pci_instance_probe_2_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = cas_init_one(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  cas_remove_one(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_2_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  cas_resume(arg1);
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
  tmp = cas_suspend(arg1, arg2);
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
  goto ldv_50676;
  case_2:
  {
  ldv_assume(ldv_statevar_1 == 1 || ldv_statevar_3 == 2);
  ldv_pci_instance_release_2_2(ldv_2_container_pci_driver->remove, ldv_2_resource_dev);
  ldv_statevar_2 = 1;
  }
  goto ldv_50676;
  case_3: ;
  if ((unsigned long )ldv_2_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_2_3(ldv_2_container_pci_driver->shutdown, ldv_2_resource_dev);
    }
  } else {
  }
  ldv_statevar_2 = 2;
  goto ldv_50676;
  case_4:
  {
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_50676;
  case_5:
  {
  ldv_assume(ldv_statevar_3 == 3);
  ldv_pci_instance_resume_2_5(ldv_2_container_pci_driver->resume, ldv_2_resource_dev);
  ldv_statevar_2 = 4;
  }
  goto ldv_50676;
  case_6: ;
  if ((unsigned long )ldv_2_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_2_6(ldv_2_container_pci_driver->resume_early, ldv_2_resource_dev);
    }
  } else {
  }
  ldv_statevar_2 = 5;
  goto ldv_50676;
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
  goto ldv_50676;
  case_8:
  {
  ldv_assume(ldv_statevar_3 == 2);
  ldv_2_ret_default = ldv_pci_instance_suspend_2_8(ldv_2_container_pci_driver->suspend,
                                                   ldv_2_resource_dev, ldv_2_resource_pm_message);
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  ldv_statevar_2 = 7;
  }
  goto ldv_50676;
  case_9:
  {
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_50676;
  case_10:
  ldv_statevar_2 = 9;
  goto ldv_50676;
  case_12:
  {
  ldv_free((void *)ldv_2_resource_dev);
  ldv_free((void *)ldv_2_resource_struct_pci_device_id_ptr);
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  }
  goto ldv_50676;
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
  goto ldv_50676;
  case_16:
  {
  ldv_assume(ldv_2_ret_default == 0);
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_50676;
  case_17:
  {
  ldv_assume((ldv_statevar_1 == 5 || ldv_statevar_3 == 2) || ldv_statevar_3 == 3);
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
  goto ldv_50676;
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
  goto ldv_50676;
  case_20: ;
  goto ldv_50676;
  switch_default: ;
  switch_break: ;
  }
  ldv_50676: ;
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_12_pci_driver_pci_driver ;
  {
  {
  ldv_12_pci_driver_pci_driver = arg1;
  ldv_assume(ldv_statevar_2 == 12);
  ldv_dispatch_deregister_12_1(ldv_12_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_register_netdev(int arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_9_netdev_net_device ;
  int ldv_9_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_9_ret_default = 1;
  ldv_9_ret_default = ldv_pre_register_netdev();
  ldv_9_netdev_net_device = arg1;
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_9_ret_default == 0);
    ldv_assume(ldv_statevar_0 == 6 || ldv_statevar_3 == 3);
    ldv_9_ret_default = ldv_register_netdev_open_9_6((ldv_9_netdev_net_device->netdev_ops)->ndo_open,
                                                     ldv_9_netdev_net_device);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_9_ret_default == 0);
      ldv_assume(ldv_statevar_1 == 5);
      ldv_dispatch_register_9_4(ldv_9_netdev_net_device);
      }
    } else {
      {
      ldv_assume(ldv_9_ret_default != 0);
      }
    }
  } else {
    {
    ldv_assume(ldv_9_ret_default != 0);
    }
  }
  return (ldv_9_ret_default);
  return (arg0);
  return (arg0);
}
}
int ldv_register_netdev_open_9_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = cas_open(arg1);
  }
  return (tmp);
}
}
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_10_callback_handler)(int , void * ) ;
  void *ldv_10_data_data ;
  int ldv_10_line_line ;
  enum irqreturn (*ldv_10_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_10_line_line = (int )arg1;
    ldv_10_callback_handler = arg2;
    ldv_10_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_10_data_data = arg5;
    ldv_assume(ldv_statevar_0 == 6);
    ldv_dispatch_irq_register_10_2(ldv_10_line_line, ldv_10_callback_handler, ldv_10_thread_thread,
                                   ldv_10_data_data);
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
  case_8: ;
  return (16);
  case_9: ;
  return (19);
  case_10: ;
  return (22);
  case_11: ;
  return (25);
  case_12: ;
  return (27);
  case_13: ;
  return (28);
  case_14: ;
  return (29);
  case_15: ;
  return (30);
  case_16: ;
  return (31);
  case_17: ;
  return (32);
  case_18: ;
  return (33);
  case_19: ;
  return (34);
  case_20: ;
  return (36);
  case_21: ;
  return (38);
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
  ldv_statevar_3 = 3;
  return;
}
}
void ldv_switch_automaton_state_3_3(void)
{
  {
  ldv_statevar_3 = 2;
  return;
}
}
void ldv_timer_instance_callback_3_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_3(void *arg0 )
{
  {
  {
  if (ldv_statevar_3 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_3 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_3_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_3_2(ldv_3_container_timer_list->function, ldv_3_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  ldv_statevar_3 = 3;
  }
  goto ldv_50783;
  case_3: ;
  goto ldv_50783;
  switch_default: ;
  switch_break: ;
  }
  ldv_50783: ;
  return;
}
}
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_11_netdev_net_device ;
  {
  {
  ldv_11_netdev_net_device = arg1;
  ldv_assume(ldv_statevar_0 == 2 || ldv_statevar_3 == 3);
  ldv_unregister_netdev_stop_11_2((ldv_11_netdev_net_device->netdev_ops)->ndo_stop,
                                  ldv_11_netdev_net_device);
  ldv_assume(ldv_statevar_1 == 1);
  ldv_dispatch_deregister_11_1(ldv_11_netdev_net_device);
  }
  return;
  return;
}
}
void ldv_unregister_netdev_stop_11_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  {
  {
  cas_close(arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_58(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_59(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
__inline static void ldv_spin_lock_77(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_NOT_ARG_SIGN();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_79(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_NOT_ARG_SIGN();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_81(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_rx_inuse_lock_of_cas();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_82(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_rx_inuse_lock_of_cas();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_83(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_rx_spare_lock_of_cas();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_84(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_rx_spare_lock_of_cas();
  spin_unlock(lock);
  }
  return;
}
}
static int ldv_mod_timer_105(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
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
static int ldv_mod_timer_106(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___1 ldv_func_res ;
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
__inline static void ldv_spin_lock_107(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_stat_lock_of_cas();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_108(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_stat_lock_of_cas();
  spin_unlock(lock);
  }
  return;
}
}
static int ldv_mod_timer_121(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
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
static void ldv___ldv_spin_lock_132(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_lock_of_cas();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_spin_lock_134(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_NOT_ARG_SIGN();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_NOT_ARG_SIGN();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static int ldv_del_timer_sync_141(struct timer_list *ldv_func_arg1 )
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
static void ldv___ldv_spin_lock_142(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_144(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_146(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mod_timer_147(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___4 ldv_func_res ;
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
static void ldv___ldv_spin_lock_149(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static int ldv_request_irq_151(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev )
{
  ldv_func_ret_type___5 ldv_func_res ;
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
static void ldv___ldv_spin_lock_152(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_154(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_irq_156(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv___ldv_spin_lock_157(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_159(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_NOT_ARG_SIGN();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_165(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_167(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_169(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_171(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_173(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_175(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static struct net_device *ldv_alloc_etherdev_mqs_177(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
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
static int ldv_register_netdev_178(struct net_device *ldv_func_arg1 )
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
static void ldv_free_netdev_179(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_unregister_netdev_180(struct net_device *ldv_func_arg1 )
{
  {
  {
  unregister_netdev(ldv_func_arg1);
  ldv_unregister_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_netdev_181(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_182(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_184(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cas();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv___pci_register_driver_186(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 )
{
  ldv_func_ret_type___8 ldv_func_res ;
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
static void ldv_pci_unregister_driver_187(struct pci_driver *ldv_func_arg1 )
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
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_spin_NOT_ARG_SIGN = 1;
void ldv_spin_lock_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_NOT_ARG_SIGN == 1);
  ldv_spin_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_spin_unlock_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_spin_NOT_ARG_SIGN == 2);
  ldv_spin_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_spin_trylock_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_spin_is_locked_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_NOT_ARG_SIGN(void)
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
int ldv_atomic_dec_and_lock_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin__xmit_lock_of_netdev_queue = 1;
void ldv_spin_lock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_spin__xmit_lock_of_netdev_queue = 2;
  }
  return;
}
}
void ldv_spin_unlock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin__xmit_lock_of_netdev_queue == 2);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 2);
  ldv_spin__xmit_lock_of_netdev_queue = 1;
  }
  return;
}
}
int ldv_spin_trylock__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  }
  return;
}
}
int ldv_spin_is_locked__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin__xmit_lock_of_netdev_queue == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock__xmit_lock_of_netdev_queue(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked__xmit_lock_of_netdev_queue();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended__xmit_lock_of_netdev_queue(void)
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
int ldv_atomic_dec_and_lock__xmit_lock_of_netdev_queue(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_addr_list_lock_of_net_device = 1;
void ldv_spin_lock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_spin_addr_list_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_spin_unlock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_addr_list_lock_of_net_device == 2);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 2);
  ldv_spin_addr_list_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_spin_trylock_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_addr_list_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_spin_is_locked_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_addr_list_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_addr_list_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_addr_list_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_addr_list_lock_of_net_device(void)
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
int ldv_atomic_dec_and_lock_addr_list_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_addr_list_lock_of_net_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_alloc_lock_of_task_struct = 1;
void ldv_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_spin_alloc_lock_of_task_struct = 2;
  }
  return;
}
}
void ldv_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_alloc_lock_of_task_struct == 2);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 2);
  ldv_spin_alloc_lock_of_task_struct = 1;
  }
  return;
}
}
int ldv_spin_trylock_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_alloc_lock_of_task_struct = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  }
  return;
}
}
int ldv_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_alloc_lock_of_task_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_alloc_lock_of_task_struct(void)
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
int ldv_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_alloc_lock_of_task_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_i_lock_of_inode = 1;
void ldv_spin_lock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  ldv_spin_i_lock_of_inode = 2;
  }
  return;
}
}
void ldv_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_i_lock_of_inode == 2);
  ldv_assume(ldv_spin_i_lock_of_inode == 2);
  ldv_spin_i_lock_of_inode = 1;
  }
  return;
}
}
int ldv_spin_trylock_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_i_lock_of_inode = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  }
  return;
}
}
int ldv_spin_is_locked_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_i_lock_of_inode == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_i_lock_of_inode(void)
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
int ldv_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_i_lock_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock = 1;
void ldv_spin_lock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  ldv_spin_lock = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock == 2);
  ldv_assume(ldv_spin_lock == 2);
  ldv_spin_lock = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock(void)
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
int ldv_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock_of_NOT_ARG_SIGN = 1;
void ldv_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_spin_lock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_spin_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
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
int ldv_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock_of_cas = 1;
void ldv_spin_lock_lock_of_cas(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock_of_cas == 1);
  ldv_assume(ldv_spin_lock_of_cas == 1);
  ldv_spin_lock_of_cas = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock_of_cas(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock_of_cas == 2);
  ldv_assume(ldv_spin_lock_of_cas == 2);
  ldv_spin_lock_of_cas = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock_of_cas(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_cas == 1);
  ldv_assume(ldv_spin_lock_of_cas == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock_of_cas = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock_of_cas(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_cas == 1);
  ldv_assume(ldv_spin_lock_of_cas == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock_of_cas(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock_of_cas == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock_of_cas(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_cas();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_cas(void)
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
int ldv_atomic_dec_and_lock_lock_of_cas(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_cas == 1);
  ldv_assume(ldv_spin_lock_of_cas == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock_of_cas = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock_of_res_counter = 1;
void ldv_spin_lock_lock_of_res_counter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  ldv_spin_lock_of_res_counter = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock_of_res_counter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock_of_res_counter == 2);
  ldv_assume(ldv_spin_lock_of_res_counter == 2);
  ldv_spin_lock_of_res_counter = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock_of_res_counter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock_of_res_counter = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock_of_res_counter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock_of_res_counter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock_of_res_counter == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock_of_res_counter(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_res_counter();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_res_counter(void)
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
int ldv_atomic_dec_and_lock_lock_of_res_counter(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock_of_res_counter = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lru_lock_of_netns_frags = 1;
void ldv_spin_lock_lru_lock_of_netns_frags(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_spin_lru_lock_of_netns_frags = 2;
  }
  return;
}
}
void ldv_spin_unlock_lru_lock_of_netns_frags(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lru_lock_of_netns_frags == 2);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 2);
  ldv_spin_lru_lock_of_netns_frags = 1;
  }
  return;
}
}
int ldv_spin_trylock_lru_lock_of_netns_frags(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lru_lock_of_netns_frags = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lru_lock_of_netns_frags(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lru_lock_of_netns_frags(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lru_lock_of_netns_frags == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lru_lock_of_netns_frags(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lru_lock_of_netns_frags();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lru_lock_of_netns_frags(void)
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
int ldv_atomic_dec_and_lock_lru_lock_of_netns_frags(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lru_lock_of_netns_frags = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_node_size_lock_of_pglist_data = 1;
void ldv_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_spin_node_size_lock_of_pglist_data = 2;
  }
  return;
}
}
void ldv_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_node_size_lock_of_pglist_data == 2);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 2);
  ldv_spin_node_size_lock_of_pglist_data = 1;
  }
  return;
}
}
int ldv_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  }
  return;
}
}
int ldv_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_node_size_lock_of_pglist_data == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_node_size_lock_of_pglist_data(void)
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
int ldv_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_ptl = 1;
void ldv_spin_lock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  ldv_spin_ptl = 2;
  }
  return;
}
}
void ldv_spin_unlock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_ptl == 2);
  ldv_assume(ldv_spin_ptl == 2);
  ldv_spin_ptl = 1;
  }
  return;
}
}
int ldv_spin_trylock_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_ptl = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  }
  return;
}
}
int ldv_spin_is_locked_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_ptl == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_ptl();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_ptl(void)
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
int ldv_atomic_dec_and_lock_ptl(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_ptl = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_rx_inuse_lock_of_cas = 1;
void ldv_spin_lock_rx_inuse_lock_of_cas(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_rx_inuse_lock_of_cas == 1);
  ldv_assume(ldv_spin_rx_inuse_lock_of_cas == 1);
  ldv_spin_rx_inuse_lock_of_cas = 2;
  }
  return;
}
}
void ldv_spin_unlock_rx_inuse_lock_of_cas(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_rx_inuse_lock_of_cas == 2);
  ldv_assume(ldv_spin_rx_inuse_lock_of_cas == 2);
  ldv_spin_rx_inuse_lock_of_cas = 1;
  }
  return;
}
}
int ldv_spin_trylock_rx_inuse_lock_of_cas(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_rx_inuse_lock_of_cas == 1);
  ldv_assume(ldv_spin_rx_inuse_lock_of_cas == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_rx_inuse_lock_of_cas = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_rx_inuse_lock_of_cas(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_rx_inuse_lock_of_cas == 1);
  ldv_assume(ldv_spin_rx_inuse_lock_of_cas == 1);
  }
  return;
}
}
int ldv_spin_is_locked_rx_inuse_lock_of_cas(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_rx_inuse_lock_of_cas == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_rx_inuse_lock_of_cas(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_rx_inuse_lock_of_cas();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_rx_inuse_lock_of_cas(void)
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
int ldv_atomic_dec_and_lock_rx_inuse_lock_of_cas(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_rx_inuse_lock_of_cas == 1);
  ldv_assume(ldv_spin_rx_inuse_lock_of_cas == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_rx_inuse_lock_of_cas = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_rx_spare_lock_of_cas = 1;
void ldv_spin_lock_rx_spare_lock_of_cas(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_rx_spare_lock_of_cas == 1);
  ldv_assume(ldv_spin_rx_spare_lock_of_cas == 1);
  ldv_spin_rx_spare_lock_of_cas = 2;
  }
  return;
}
}
void ldv_spin_unlock_rx_spare_lock_of_cas(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_rx_spare_lock_of_cas == 2);
  ldv_assume(ldv_spin_rx_spare_lock_of_cas == 2);
  ldv_spin_rx_spare_lock_of_cas = 1;
  }
  return;
}
}
int ldv_spin_trylock_rx_spare_lock_of_cas(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_rx_spare_lock_of_cas == 1);
  ldv_assume(ldv_spin_rx_spare_lock_of_cas == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_rx_spare_lock_of_cas = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_rx_spare_lock_of_cas(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_rx_spare_lock_of_cas == 1);
  ldv_assume(ldv_spin_rx_spare_lock_of_cas == 1);
  }
  return;
}
}
int ldv_spin_is_locked_rx_spare_lock_of_cas(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_rx_spare_lock_of_cas == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_rx_spare_lock_of_cas(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_rx_spare_lock_of_cas();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_rx_spare_lock_of_cas(void)
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
int ldv_atomic_dec_and_lock_rx_spare_lock_of_cas(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_rx_spare_lock_of_cas == 1);
  ldv_assume(ldv_spin_rx_spare_lock_of_cas == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_rx_spare_lock_of_cas = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_siglock_of_sighand_struct = 1;
void ldv_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_spin_siglock_of_sighand_struct = 2;
  }
  return;
}
}
void ldv_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_siglock_of_sighand_struct == 2);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 2);
  ldv_spin_siglock_of_sighand_struct = 1;
  }
  return;
}
}
int ldv_spin_trylock_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_siglock_of_sighand_struct = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_spin_is_locked_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_siglock_of_sighand_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_siglock_of_sighand_struct(void)
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
int ldv_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_siglock_of_sighand_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_sk_dst_lock_of_sock = 1;
void ldv_spin_lock_sk_dst_lock_of_sock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_spin_sk_dst_lock_of_sock = 2;
  }
  return;
}
}
void ldv_spin_unlock_sk_dst_lock_of_sock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_sk_dst_lock_of_sock == 2);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 2);
  ldv_spin_sk_dst_lock_of_sock = 1;
  }
  return;
}
}
int ldv_spin_trylock_sk_dst_lock_of_sock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_sk_dst_lock_of_sock = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_sk_dst_lock_of_sock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  }
  return;
}
}
int ldv_spin_is_locked_sk_dst_lock_of_sock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_sk_dst_lock_of_sock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_sk_dst_lock_of_sock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_sk_dst_lock_of_sock();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_sk_dst_lock_of_sock(void)
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
int ldv_atomic_dec_and_lock_sk_dst_lock_of_sock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_sk_dst_lock_of_sock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_slock_of_NOT_ARG_SIGN = 1;
void ldv_spin_lock_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_spin_slock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_spin_unlock_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_slock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 2);
  ldv_spin_slock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_spin_trylock_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_slock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_spin_is_locked_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_slock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_slock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_slock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_slock_of_NOT_ARG_SIGN(void)
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
int ldv_atomic_dec_and_lock_slock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_slock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_stat_lock_of_cas = 1;
void ldv_spin_lock_stat_lock_of_cas(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_stat_lock_of_cas == 1);
  ldv_assume(ldv_spin_stat_lock_of_cas == 1);
  ldv_spin_stat_lock_of_cas = 2;
  }
  return;
}
}
void ldv_spin_unlock_stat_lock_of_cas(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_stat_lock_of_cas == 2);
  ldv_assume(ldv_spin_stat_lock_of_cas == 2);
  ldv_spin_stat_lock_of_cas = 1;
  }
  return;
}
}
int ldv_spin_trylock_stat_lock_of_cas(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_stat_lock_of_cas == 1);
  ldv_assume(ldv_spin_stat_lock_of_cas == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_stat_lock_of_cas = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_stat_lock_of_cas(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_stat_lock_of_cas == 1);
  ldv_assume(ldv_spin_stat_lock_of_cas == 1);
  }
  return;
}
}
int ldv_spin_is_locked_stat_lock_of_cas(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_stat_lock_of_cas == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_stat_lock_of_cas(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_stat_lock_of_cas();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_stat_lock_of_cas(void)
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
int ldv_atomic_dec_and_lock_stat_lock_of_cas(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_stat_lock_of_cas == 1);
  ldv_assume(ldv_spin_stat_lock_of_cas == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_stat_lock_of_cas = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_tx_global_lock_of_net_device = 1;
void ldv_spin_lock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_spin_tx_global_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_spin_unlock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_tx_global_lock_of_net_device == 2);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 2);
  ldv_spin_tx_global_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_spin_trylock_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_tx_global_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_spin_is_locked_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_tx_global_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_tx_global_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_tx_global_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_tx_global_lock_of_net_device(void)
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
int ldv_atomic_dec_and_lock_tx_global_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_tx_global_lock_of_net_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock_of_cas == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock_of_res_counter == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_rx_inuse_lock_of_cas == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_rx_spare_lock_of_cas == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_stat_lock_of_cas == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_spin_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_spin__xmit_lock_of_netdev_queue == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_addr_list_lock_of_net_device == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_i_lock_of_inode == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock_of_cas == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock_of_res_counter == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lru_lock_of_netns_frags == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_ptl == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_rx_inuse_lock_of_cas == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_rx_spare_lock_of_cas == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_sk_dst_lock_of_sock == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_slock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_stat_lock_of_cas == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_tx_global_lock_of_net_device == 2) {
    return (1);
  } else {
  }
  return (0);
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
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __compiletime_assert_1997() {
  return;
}
void __compiletime_assert_2032() {
  return;
}
void __compiletime_assert_2106() {
  return;
}
void __compiletime_assert_2125() {
  return;
}
void __compiletime_assert_2142() {
  return;
}
void __compiletime_assert_2843() {
  return;
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __dev_kfree_skb_irq(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_netdev_dbg(struct _ddebug *arg0, const struct net_device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void __free_pages(struct page *arg0, unsigned int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool __get_page_tail(struct page *arg0) {
  return __VERIFIER_nondet_bool();
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __ldv_spin_lock(spinlock_t *arg0) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
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
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
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
void *external_alloc(void);
struct page *alloc_pages_current(gfp_t arg0, unsigned int arg1) {
  return (struct page *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
__wsum csum_partial(const void *arg0, int arg1, __wsum arg2) {
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
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void dump_page(struct page *arg0, char *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int eth_mac_addr(struct net_device *arg0, void *arg1) {
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
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void get_random_bytes(void *arg0, int arg1) {
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
void ldv_initialize() {
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
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
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
int netdev_printk(const char *arg0, const struct net_device *arg1, const char *arg2, ...) {
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
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
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
int pci_try_set_mwi(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
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
void schedule() {
  return;
}
int __VERIFIER_nondet_int(void);
int skb_pad(struct sk_buff *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void vfree(const void *arg0) {
  return;
}
void *external_alloc(void);
void *vmalloc(unsigned long arg0) {
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
