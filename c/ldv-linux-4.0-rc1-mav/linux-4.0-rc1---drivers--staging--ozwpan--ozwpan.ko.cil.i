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
typedef __u16 __be16;
typedef __u32 __be32;
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
struct class;
struct device;
struct completion;
struct gendisk;
struct module;
struct mutex;
struct request_queue;
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
struct net_device;
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
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct __anonstruct_nodemask_t_50 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_50 nodemask_t;
struct path;
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
struct ctl_table;
struct __anonstruct_mm_context_t_115 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_115 mm_context_t;
struct bio_vec;
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
    DEV_PM_QOS_RESUME_LATENCY = 1,
    DEV_PM_QOS_LATENCY_TOLERANCE = 2,
    DEV_PM_QOS_FLAGS = 3
} ;
union __anonunion_data_142 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_142 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2,
    PM_QOS_SUM = 3
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   s32 no_constraint_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints resume_latency ;
   struct pm_qos_constraints latency_tolerance ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *resume_latency_req ;
   struct dev_pm_qos_request *latency_tolerance_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_143 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_143 __annonCompField32 ;
   unsigned long nr_segs ;
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
struct __anonstruct____missing_field_name_149 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_150 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_148 {
   struct __anonstruct____missing_field_name_149 __annonCompField35 ;
   struct __anonstruct____missing_field_name_150 __annonCompField36 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_148 __annonCompField37 ;
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
struct mem_cgroup;
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_151 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_153 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_157 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_156 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_157 __annonCompField40 ;
   int units ;
};
struct __anonstruct____missing_field_name_155 {
   union __anonunion____missing_field_name_156 __annonCompField41 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_154 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_155 __annonCompField42 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_152 {
   union __anonunion____missing_field_name_153 __annonCompField39 ;
   union __anonunion____missing_field_name_154 __annonCompField43 ;
};
struct __anonstruct____missing_field_name_159 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_160 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_158 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_159 __annonCompField45 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_160 __annonCompField46 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_161 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_151 __annonCompField38 ;
   struct __anonstruct____missing_field_name_152 __annonCompField44 ;
   union __anonunion____missing_field_name_158 __annonCompField47 ;
   union __anonunion____missing_field_name_161 __annonCompField48 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_162 {
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
   struct __anonstruct_shared_162 shared ;
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
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct file_ra_state;
struct user_struct;
struct writeback_control;
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
struct pid;
struct cred;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct __anonstruct_sync_serial_settings_165 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_165 sync_serial_settings;
struct __anonstruct_te1_settings_166 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_166 te1_settings;
struct __anonstruct_raw_hdlc_proto_167 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_167 raw_hdlc_proto;
struct __anonstruct_fr_proto_168 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_168 fr_proto;
struct __anonstruct_fr_proto_pvc_169 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_169 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_170 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_170 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_171 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_171 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_172 {
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
   union __anonunion_ifs_ifsu_172 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_173 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_174 {
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
   union __anonunion_ifr_ifrn_173 ifr_ifrn ;
   union __anonunion_ifr_ifru_174 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_177 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_176 {
   struct __anonstruct____missing_field_name_177 __annonCompField49 ;
};
struct lockref {
   union __anonunion____missing_field_name_176 __annonCompField50 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_179 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_178 {
   struct __anonstruct____missing_field_name_179 __annonCompField51 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_178 __annonCompField52 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_180 {
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
   union __anonunion_d_u_180 d_u ;
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
struct __anonstruct____missing_field_name_182 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_181 {
   struct __anonstruct____missing_field_name_182 __annonCompField53 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_181 __annonCompField54 ;
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
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct backing_dev_info;
struct export_operations;
struct nameidata;
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
struct __anonstruct_kprojid_t_185 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_185 kprojid_t;
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
union __anonunion____missing_field_name_186 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_186 __annonCompField56 ;
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
union __anonunion____missing_field_name_189 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_190 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
union __anonunion____missing_field_name_191 {
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
   union __anonunion____missing_field_name_189 __annonCompField57 ;
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
   union __anonunion____missing_field_name_190 __annonCompField58 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_191 __annonCompField59 ;
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
union __anonunion_f_u_192 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_192 f_u ;
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
struct __anonstruct_afs_194 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_193 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_194 afs ;
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
   union __anonunion_fl_u_193 fl_u ;
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
typedef unsigned long cputime_t;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_195 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_195 sigset_t;
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
struct __anonstruct__kill_197 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_198 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_199 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_200 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_202 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_201 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_202 _addr_bnd ;
};
struct __anonstruct__sigpoll_203 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_204 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_196 {
   int _pad[28U] ;
   struct __anonstruct__kill_197 _kill ;
   struct __anonstruct__timer_198 _timer ;
   struct __anonstruct__rt_199 _rt ;
   struct __anonstruct__sigchld_200 _sigchld ;
   struct __anonstruct__sigfault_201 _sigfault ;
   struct __anonstruct__sigpoll_203 _sigpoll ;
   struct __anonstruct__sigsys_204 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_196 _sifields ;
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
struct __anonstruct____missing_field_name_208 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_207 {
   struct __anonstruct____missing_field_name_208 __annonCompField60 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_207 __annonCompField61 ;
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
union __anonunion____missing_field_name_209 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_210 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_212 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_211 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_212 __annonCompField64 ;
};
union __anonunion_type_data_213 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_215 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_214 {
   union __anonunion_payload_215 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_209 __annonCompField62 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_210 __annonCompField63 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_211 __annonCompField65 ;
   union __anonunion_type_data_213 type_data ;
   union __anonunion____missing_field_name_214 __annonCompField66 ;
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
struct napi_struct;
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
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_237 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_236 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_237 __annonCompField71 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_236 __annonCompField72 ;
};
union __anonunion____missing_field_name_240 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_239 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_240 __annonCompField73 ;
};
union __anonunion____missing_field_name_238 {
   struct __anonstruct____missing_field_name_239 __annonCompField74 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_242 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_241 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_242 __annonCompField76 ;
};
union __anonunion____missing_field_name_243 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_244 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_245 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_238 __annonCompField75 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   void (*destructor)(struct sk_buff * ) ;
   struct sec_path *sp ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   __u16 queue_mapping ;
   unsigned char cloned : 1 ;
   unsigned char nohdr : 1 ;
   unsigned char fclone : 2 ;
   unsigned char peeked : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char xmit_more : 1 ;
   __u32 headers_start[0U] ;
   __u8 __pkt_type_offset[0U] ;
   unsigned char pkt_type : 3 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ignore_df : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char nf_trace : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char sw_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   unsigned char csum_level : 2 ;
   unsigned char csum_bad : 1 ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char inner_protocol_type : 1 ;
   unsigned char remcsum_offload : 1 ;
   __u16 tc_index ;
   __u16 tc_verd ;
   union __anonunion____missing_field_name_241 __annonCompField77 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_243 __annonCompField78 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_244 __annonCompField79 ;
   union __anonunion____missing_field_name_245 __annonCompField80 ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __be16 protocol ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   __u32 headers_end[0U] ;
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
   char erom_version[32U] ;
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
struct ethtool_tunable {
   __u32 cmd ;
   __u32 id ;
   __u32 type_id ;
   __u32 len ;
   void *data[0U] ;
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
   u32 (*get_rxfh_key_size)(struct net_device * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh)(struct net_device * , u32 * , u8 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * , u8 const ) ;
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
   int (*get_tunable)(struct net_device * , struct ethtool_tunable const * , void * ) ;
   int (*set_tunable)(struct net_device * , struct ethtool_tunable const * , void const * ) ;
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
   unsigned long mibs[9U] ;
};
struct linux_mib {
   unsigned long mibs[113U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct proc_dir_entry;
struct netns_mib {
   struct tcp_mib *tcp_statistics ;
   struct ipstats_mib *ip_statistics ;
   struct linux_mib *net_statistics ;
   struct udp_mib *udp_statistics ;
   struct udp_mib *udplite_statistics ;
   struct icmp_mib *icmp_statistics ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6 ;
   struct udp_mib *udplite_stats_in6 ;
   struct ipstats_mib *ipv6_statistics ;
   struct icmpv6_mib *icmpv6_statistics ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics ;
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
struct ping_group_range {
   seqlock_t lock ;
   kgid_t range[2U] ;
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
   struct sock **tcp_sk ;
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
   struct local_ports ip_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_ip_nonlocal_bind ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   int sysctl_tcp_mtu_probing ;
   int sysctl_tcp_base_mss ;
   struct ping_group_range ping_group_range ;
   atomic_t dev_addr_genid ;
   unsigned long *sysctl_local_reserved_ports ;
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
   int auto_flowlabels ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
   int fwmark_reflect ;
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
   atomic_t fib6_sernum ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct netns_sysctl_lowpan {
   struct ctl_table_header *frags_hdr ;
};
struct netns_ieee802154_lowpan {
   struct netns_sysctl_lowpan sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics ;
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
struct ct_pcpu {
   spinlock_t lock ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct delayed_work ecache_dwork ;
   bool ecache_dwork_pending ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   seqcount_t generation ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct ct_pcpu *pcpu_lists ;
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
   unsigned int base_seq ;
   u8 gencursor ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct flow_cache_percpu {
   struct hlist_head *hash_table ;
   int hash_count ;
   u32 hash_rnd ;
   int hash_rnd_recalc ;
   struct tasklet_struct flush_tasklet ;
};
struct flow_cache {
   u32 hash_shift ;
   struct flow_cache_percpu *percpu ;
   struct notifier_block hotcpu_notifier ;
   int low_watermark ;
   int high_watermark ;
   struct timer_list rnd_timer ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
   u8 dbits4 ;
   u8 sbits4 ;
   u8 dbits6 ;
   u8 sbits6 ;
};
struct xfrm_policy_hthresh {
   struct work_struct work ;
   seqlock_t lock ;
   u8 lbits4 ;
   u8 rbits4 ;
   u8 lbits6 ;
   u8 rbits6 ;
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
   struct hlist_head policy_inexact[3U] ;
   struct xfrm_policy_hash policy_bydst[3U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct xfrm_policy_hthresh policy_hthresh ;
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
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
   struct flow_cache flow_cache_global ;
   atomic_t flow_cache_genid ;
   struct list_head flow_cache_gc_list ;
   spinlock_t flow_cache_gc_lock ;
   struct work_struct flow_cache_gc_work ;
   struct work_struct flow_cache_flush_work ;
   struct mutex flow_flush_sem ;
};
struct proc_ns_operations;
struct ns_common {
   atomic_long_t stashed ;
   struct proc_ns_operations const *ops ;
   unsigned int inum ;
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
   struct idr netns_ids ;
   struct ns_common ns ;
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
   struct netns_ieee802154_lowpan ieee802154_lowpan ;
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
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2
} ;
struct fwnode_handle {
   enum fwnode_type type ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
   struct bin_attribute attr ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct fwnode_handle fwnode ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
};
enum ldv_27526 {
    PHY_INTERFACE_MODE_NA = 0,
    PHY_INTERFACE_MODE_MII = 1,
    PHY_INTERFACE_MODE_GMII = 2,
    PHY_INTERFACE_MODE_SGMII = 3,
    PHY_INTERFACE_MODE_TBI = 4,
    PHY_INTERFACE_MODE_REVMII = 5,
    PHY_INTERFACE_MODE_RMII = 6,
    PHY_INTERFACE_MODE_RGMII = 7,
    PHY_INTERFACE_MODE_RGMII_ID = 8,
    PHY_INTERFACE_MODE_RGMII_RXID = 9,
    PHY_INTERFACE_MODE_RGMII_TXID = 10,
    PHY_INTERFACE_MODE_RTBI = 11,
    PHY_INTERFACE_MODE_SMII = 12,
    PHY_INTERFACE_MODE_XGMII = 13,
    PHY_INTERFACE_MODE_MOCA = 14,
    PHY_INTERFACE_MODE_QSGMII = 15,
    PHY_INTERFACE_MODE_MAX = 16
} ;
typedef enum ldv_27526 phy_interface_t;
enum ldv_27579 {
    MDIOBUS_ALLOCATED = 1,
    MDIOBUS_REGISTERED = 2,
    MDIOBUS_UNREGISTERED = 3,
    MDIOBUS_RELEASED = 4
} ;
struct phy_device;
struct mii_bus {
   char const *name ;
   char id[17U] ;
   void *priv ;
   int (*read)(struct mii_bus * , int , int ) ;
   int (*write)(struct mii_bus * , int , int , u16 ) ;
   int (*reset)(struct mii_bus * ) ;
   struct mutex mdio_lock ;
   struct device *parent ;
   enum ldv_27579 state ;
   struct device dev ;
   struct phy_device *phy_map[32U] ;
   u32 phy_mask ;
   int *irq ;
};
enum phy_state {
    PHY_DOWN = 0,
    PHY_STARTING = 1,
    PHY_READY = 2,
    PHY_PENDING = 3,
    PHY_UP = 4,
    PHY_AN = 5,
    PHY_RUNNING = 6,
    PHY_NOLINK = 7,
    PHY_FORCING = 8,
    PHY_CHANGELINK = 9,
    PHY_HALTED = 10,
    PHY_RESUMING = 11
} ;
struct phy_c45_device_ids {
   u32 devices_in_package ;
   u32 device_ids[8U] ;
};
struct phy_driver;
struct phy_device {
   struct phy_driver *drv ;
   struct mii_bus *bus ;
   struct device dev ;
   u32 phy_id ;
   struct phy_c45_device_ids c45_ids ;
   bool is_c45 ;
   bool is_internal ;
   bool has_fixups ;
   bool suspended ;
   enum phy_state state ;
   u32 dev_flags ;
   phy_interface_t interface ;
   int addr ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
   int link ;
   u32 interrupts ;
   u32 supported ;
   u32 advertising ;
   u32 lp_advertising ;
   int autoneg ;
   int link_timeout ;
   int irq ;
   void *priv ;
   struct work_struct phy_queue ;
   struct delayed_work state_queue ;
   atomic_t irq_disable ;
   struct mutex lock ;
   struct net_device *attached_dev ;
   void (*adjust_link)(struct net_device * ) ;
};
struct phy_driver {
   u32 phy_id ;
   char *name ;
   unsigned int phy_id_mask ;
   u32 features ;
   u32 flags ;
   void const *driver_data ;
   int (*soft_reset)(struct phy_device * ) ;
   int (*config_init)(struct phy_device * ) ;
   int (*probe)(struct phy_device * ) ;
   int (*suspend)(struct phy_device * ) ;
   int (*resume)(struct phy_device * ) ;
   int (*config_aneg)(struct phy_device * ) ;
   int (*aneg_done)(struct phy_device * ) ;
   int (*read_status)(struct phy_device * ) ;
   int (*ack_interrupt)(struct phy_device * ) ;
   int (*config_intr)(struct phy_device * ) ;
   int (*did_interrupt)(struct phy_device * ) ;
   void (*remove)(struct phy_device * ) ;
   int (*match_phy_device)(struct phy_device * ) ;
   int (*ts_info)(struct phy_device * , struct ethtool_ts_info * ) ;
   int (*hwtstamp)(struct phy_device * , struct ifreq * ) ;
   bool (*rxtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   void (*txtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   int (*set_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*get_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*link_change_notify)(struct phy_device * ) ;
   int (*read_mmd_indirect)(struct phy_device * , int , int , int ) ;
   void (*write_mmd_indirect)(struct phy_device * , int , int , int , u32 ) ;
   int (*module_info)(struct phy_device * , struct ethtool_modinfo * ) ;
   int (*module_eeprom)(struct phy_device * , struct ethtool_eeprom * , u8 * ) ;
   struct device_driver driver ;
};
struct fixed_phy_status {
   int link ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
};
enum dsa_tag_protocol {
    DSA_TAG_PROTO_NONE = 0,
    DSA_TAG_PROTO_DSA = 1,
    DSA_TAG_PROTO_TRAILER = 2,
    DSA_TAG_PROTO_EDSA = 3,
    DSA_TAG_PROTO_BRCM = 4
} ;
struct dsa_chip_data {
   struct device *host_dev ;
   int sw_addr ;
   int eeprom_len ;
   struct device_node *of_node ;
   char *port_names[12U] ;
   struct device_node *port_dn[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct packet_type;
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   int (*rcv)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   enum dsa_tag_protocol tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct device *master_dev ;
   char hwmon_name[24U] ;
   struct device *hwmon_dev ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   u32 phys_mii_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   enum dsa_tag_protocol tag_protocol ;
   int priv_size ;
   char *(*probe)(struct device * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   u32 (*get_phy_flags)(struct dsa_switch * , int ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*adjust_link)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*fixed_link_update)(struct dsa_switch * , int , struct fixed_phy_status * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
   void (*get_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*suspend)(struct dsa_switch * ) ;
   int (*resume)(struct dsa_switch * ) ;
   int (*port_enable)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*port_disable)(struct dsa_switch * , int , struct phy_device * ) ;
   int (*set_eee)(struct dsa_switch * , int , struct phy_device * , struct ethtool_eee * ) ;
   int (*get_eee)(struct dsa_switch * , int , struct ethtool_eee * ) ;
   int (*get_temp)(struct dsa_switch * , int * ) ;
   int (*get_temp_limit)(struct dsa_switch * , int * ) ;
   int (*set_temp_limit)(struct dsa_switch * , int ) ;
   int (*get_temp_alarm)(struct dsa_switch * , bool * ) ;
   int (*get_eeprom_len)(struct dsa_switch * ) ;
   int (*get_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_regs_len)(struct dsa_switch * , int ) ;
   void (*get_regs)(struct dsa_switch * , int , struct ethtool_regs * , void * ) ;
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
   int (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   int (*getapp)(struct net_device * , u8 , u16 ) ;
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
struct cgroup_root;
struct cgroup_subsys;
struct cgroup;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   struct list_head sibling ;
   struct list_head children ;
   int id ;
   unsigned int flags ;
   u64 serial_nr ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *populated_kn ;
   unsigned int subtree_control ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
   struct work_struct release_agent_work ;
};
struct cgroup_root {
   struct kernfs_root *kf_root ;
   unsigned int subsys_mask ;
   int hierarchy_id ;
   struct cgroup cgrp ;
   atomic_t nr_cgrps ;
   struct list_head root_list ;
   unsigned int flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head mg_tasks ;
   struct list_head cgrp_links ;
   struct cgroup *dfl_cgrp ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct list_head mg_preload_node ;
   struct list_head mg_node ;
   struct cgroup *mg_src_cgrp ;
   struct css_set *mg_dst_cset ;
   struct list_head e_cset_node[12U] ;
   struct callback_head callback_head ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   struct list_head node ;
   struct kernfs_ops *kf_ops ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   struct lock_class_key lockdep_key ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_released)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   void (*css_reset)(struct cgroup_subsys_state * ) ;
   void (*css_e_css_changed)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   int id ;
   char const *name ;
   struct cgroup_root *root ;
   struct idr css_idr ;
   struct list_head cfts ;
   struct cftype *dfl_cftypes ;
   struct cftype *legacy_cftypes ;
   unsigned int depends_on ;
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
   __u32 spoofchk ;
   __u32 linkstate ;
   __u32 min_tx_rate ;
   __u32 max_tx_rate ;
};
struct netpoll_info;
struct wireless_dev;
struct wpan_dev;
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
   struct hrtimer timer ;
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
struct netdev_phys_item_id {
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
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_rate)(struct net_device * , int , int , int ) ;
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
                      u16 , u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       struct net_device * , int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_item_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
   netdev_features_t (*ndo_features_check)(struct sk_buff * , struct net_device * ,
                                           netdev_features_t ) ;
   int (*ndo_switch_parent_id_get)(struct net_device * , struct netdev_phys_item_id * ) ;
   int (*ndo_switch_port_stp_update)(struct net_device * , u8 ) ;
};
struct __anonstruct_adj_list_264 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_265 {
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
union __anonunion____missing_field_name_266 {
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
   struct list_head ptype_all ;
   struct list_head ptype_specific ;
   struct __anonstruct_adj_list_264 adj_list ;
   struct __anonstruct_all_adj_list_265 all_adj_list ;
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
   atomic_long_t tx_dropped ;
   atomic_t carrier_changes ;
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
   unsigned short dev_port ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   unsigned char name_assign_type ;
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
   struct wpan_dev *ieee802154_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   unsigned long gro_flush_timeout ;
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
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion____missing_field_name_266 __annonCompField86 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   u16 gso_min_segs ;
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
struct packet_type {
   __be16 type ;
   struct net_device *dev ;
   int (*func)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   bool (*id_match)(struct packet_type * , struct sock * ) ;
   void *af_packet_priv ;
   struct list_head list ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
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
   char *driver_override ;
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
union __anonunion____missing_field_name_271 {
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
   union __anonunion____missing_field_name_271 __annonCompField87 ;
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
struct oz_elt {
   u8 type ;
   u8 length ;
};
struct oz_pd;
struct oz_elt_buf {
   spinlock_t lock ;
   struct list_head stream_list ;
   struct list_head order_list ;
   struct list_head isoc_list ;
   u8 tx_seq_num[5U] ;
};
struct oz_pd {
   struct list_head link ;
   atomic_t ref_count ;
   u8 mac_addr[6U] ;
   unsigned int state ;
   unsigned int state_flags ;
   unsigned int send_flags ;
   u16 total_apps ;
   u16 paused_apps ;
   u8 session_id ;
   u8 param_rsp_status ;
   u8 pd_info ;
   u8 isoc_sent ;
   u32 last_rx_pkt_num ;
   u32 last_tx_pkt_num ;
   struct timespec last_rx_timestamp ;
   u32 trigger_pkt_num ;
   unsigned long pulse_time ;
   unsigned long pulse_period ;
   unsigned long presleep ;
   unsigned long keep_alive ;
   struct oz_elt_buf elt_buff ;
   void *app_ctx[5U] ;
   spinlock_t app_lock[5U] ;
   int max_tx_size ;
   u8 mode ;
   u8 ms_per_isoc ;
   unsigned int isoc_latency ;
   unsigned int max_stream_buffering ;
   int nb_queued_frames ;
   int nb_queued_isoc_frames ;
   spinlock_t tx_frame_lock ;
   struct list_head *last_sent_frame ;
   struct list_head tx_queue ;
   struct list_head farewell_list ;
   spinlock_t stream_lock ;
   struct list_head stream_list ;
   struct net_device *net_dev ;
   struct hrtimer heartbeat ;
   struct hrtimer timeout ;
   u8 timeout_type ;
   struct tasklet_struct heartbeat_tasklet ;
   struct tasklet_struct timeout_tasklet ;
   struct work_struct workitem ;
};
struct oz_app_if {
   int (*init)(void) ;
   void (*term)(void) ;
   int (*start)(struct oz_pd * , int ) ;
   void (*stop)(struct oz_pd * , int ) ;
   void (*rx)(struct oz_pd * , struct oz_elt * ) ;
   int (*heartbeat)(struct oz_pd * ) ;
   void (*farewell)(struct oz_pd * , u8 , u8 * , u8 ) ;
};
struct ldv_struct_platform_instance_1 {
   struct platform_driver *arg0 ;
   int signal_pending ;
};
typedef __u16 __le16;
typedef __u32 __le32;
typedef __u64 __le64;
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
enum hrtimer_restart;
enum hrtimer_mode {
    HRTIMER_MODE_ABS = 0,
    HRTIMER_MODE_REL = 1,
    HRTIMER_MODE_PINNED = 2,
    HRTIMER_MODE_ABS_PINNED = 2,
    HRTIMER_MODE_REL_PINNED = 3
} ;
typedef int pao_T_____33;
typedef int pao_T_____34;
typedef int pao_T_____35;
typedef int pao_T_____36;
struct oz_hdr {
   u8 control ;
   u8 last_pkt_num ;
   u32 pkt_num ;
};
struct oz_isoc_large {
   u8 endpoint ;
   u8 format ;
   u8 ms_data ;
   u8 frame_number ;
};
struct oz_elt_stream {
   struct list_head link ;
   struct list_head elt_list ;
   atomic_t ref_count ;
   unsigned int buf_count ;
   unsigned int max_buf_count ;
   u8 frame_number ;
   u8 id ;
};
struct oz_elt_info {
   struct list_head link ;
   struct list_head link_order ;
   u8 flags ;
   u8 app_id ;
   void (*callback)(struct oz_pd * , long ) ;
   long context ;
   struct oz_elt_stream *stream ;
   u8 data[257U] ;
   int length ;
};
struct oz_tx_frame {
   struct list_head link ;
   struct list_head elt_list ;
   struct oz_hdr hdr ;
   struct sk_buff *skb ;
   int total_size ;
};
struct oz_isoc_stream {
   struct list_head link ;
   u8 ep_num ;
   u8 frame_num ;
   u8 nb_units ;
   int size ;
   struct sk_buff *skb ;
   struct oz_hdr *oz_hdr ;
};
struct oz_farewell {
   struct list_head link ;
   u8 ep_num ;
   u8 index ;
   u8 len ;
   u8 report[0U] ;
};
enum hrtimer_restart;
struct oz_port;
struct oz_usb_ctx {
   atomic_t ref_count ;
   u8 tx_seq_num ;
   u8 rx_seq_num ;
   struct oz_pd *pd ;
   void *hport ;
   int stopped ;
};
struct urb;
struct usb_device;
enum hrtimer_restart;
struct oz_app_hdr {
   u8 app_id ;
   u8 elt_seq_num ;
};
struct oz_usb_hdr {
   u8 app_id ;
   u8 elt_seq_num ;
   u8 type ;
};
struct oz_get_desc_req {
   u8 app_id ;
   u8 elt_seq_num ;
   u8 type ;
   u8 req_id ;
   u16 offset ;
   u16 size ;
   u8 req_type ;
   u8 desc_type ;
   __le16 w_index ;
   u8 index ;
};
struct oz_get_desc_rsp {
   u8 app_id ;
   u8 elt_seq_num ;
   u8 type ;
   u8 req_id ;
   __le16 offset ;
   __le16 total_size ;
   u8 rcode ;
   u8 data[1U] ;
};
struct oz_feature_req {
   u8 app_id ;
   u8 elt_seq_num ;
   u8 type ;
   u8 req_id ;
   u8 recipient ;
   u8 index ;
   u16 feature ;
};
struct oz_set_config_req {
   u8 app_id ;
   u8 elt_seq_num ;
   u8 type ;
   u8 req_id ;
   u8 index ;
};
struct oz_set_config_rsp {
   u8 app_id ;
   u8 elt_seq_num ;
   u8 type ;
   u8 req_id ;
   u8 rcode ;
};
struct oz_set_interface_req {
   u8 app_id ;
   u8 elt_seq_num ;
   u8 type ;
   u8 req_id ;
   u8 index ;
   u8 alternative ;
};
struct oz_set_interface_rsp {
   u8 app_id ;
   u8 elt_seq_num ;
   u8 type ;
   u8 req_id ;
   u8 rcode ;
};
struct oz_vendor_class_req {
   u8 app_id ;
   u8 elt_seq_num ;
   u8 type ;
   u8 req_id ;
   u8 req_type ;
   u8 request ;
   u16 value ;
   u16 index ;
   u8 data[1U] ;
};
struct oz_vendor_class_rsp {
   u8 app_id ;
   u8 elt_seq_num ;
   u8 type ;
   u8 req_id ;
   u8 rcode ;
   u8 data[1U] ;
};
struct oz_data {
   u8 app_id ;
   u8 elt_seq_num ;
   u8 type ;
   u8 endpoint ;
   u8 format ;
};
struct oz_isoc_fixed {
   u8 app_id ;
   u8 elt_seq_num ;
   u8 type ;
   u8 endpoint ;
   u8 format ;
   u8 unit_size ;
   u8 frame_number ;
   u8 data[1U] ;
};
struct oz_multiple_fixed {
   u8 app_id ;
   u8 elt_seq_num ;
   u8 type ;
   u8 endpoint ;
   u8 format ;
   u8 unit_size ;
   u8 data[1U] ;
};
struct usb_ctrlrequest {
   __u8 bRequestType ;
   __u8 bRequest ;
   __le16 wValue ;
   __le16 wIndex ;
   __le16 wLength ;
};
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
};
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
};
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
};
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
};
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
};
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
};
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
};
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
};
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16U] ;
};
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
struct wusb_dev;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
   int streams ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   int extralen ;
   unsigned char *extra ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned char sysfs_files_created : 1 ;
   unsigned char ep_devs_created : 1 ;
   unsigned char unregistering : 1 ;
   unsigned char needs_remote_wakeup : 1 ;
   unsigned char needs_altsetting0 : 1 ;
   unsigned char needs_binding : 1 ;
   unsigned char resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0U] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16U] ;
   struct usb_interface *interface[32U] ;
   struct usb_interface_cache *intf_cache[32U] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[2U] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned char is_b_host : 1 ;
   unsigned char b_hnp_enable : 1 ;
   unsigned char no_stop_on_short : 1 ;
   unsigned char no_sg_constraint : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   struct mutex usb_address0_mutex ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   unsigned int resuming_ports ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb2_lpm_parameters {
   unsigned int besl ;
   int timeout ;
};
struct usb3_lpm_parameters {
   unsigned int mel ;
   unsigned int pel ;
   unsigned int sel ;
   int timeout ;
};
struct usb_device {
   int devnum ;
   char devpath[16U] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2U] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16U] ;
   struct usb_host_endpoint *ep_out[16U] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned char can_submit : 1 ;
   unsigned char persist_enabled : 1 ;
   unsigned char have_langid : 1 ;
   unsigned char authorized : 1 ;
   unsigned char authenticated : 1 ;
   unsigned char wusb : 1 ;
   unsigned char lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_besl_capable : 1 ;
   unsigned char usb2_hw_lpm_enabled : 1 ;
   unsigned char usb2_hw_lpm_allowed : 1 ;
   unsigned char usb3_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   int maxchild ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned char do_remote_wakeup : 1 ;
   unsigned char reset_resume : 1 ;
   unsigned char port_is_suspended : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
   struct usb2_lpm_parameters l1_params ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   atomic_t suspend_wakeups ;
   unsigned char poisoned : 1 ;
};
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0U] ;
};
typedef unsigned int uint;
enum hrtimer_restart;
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
enum usb3_link_state {
    USB3_LPM_U0 = 0,
    USB3_LPM_U1 = 1,
    USB3_LPM_U2 = 2,
    USB3_LPM_U3 = 3
} ;
struct giveback_urb_bh {
   bool running ;
   spinlock_t lock ;
   struct list_head head ;
   struct tasklet_struct bh ;
   struct usb_host_endpoint *completing_ep ;
};
struct hc_driver;
struct usb_phy;
struct phy;
struct dma_pool;
struct usb_hcd {
   struct usb_bus self ;
   struct kref kref ;
   char const *product_desc ;
   int speed ;
   char irq_descr[24U] ;
   struct timer_list rh_timer ;
   struct urb *status_urb ;
   struct work_struct wakeup_work ;
   struct hc_driver const *driver ;
   struct usb_phy *usb_phy ;
   struct phy *phy ;
   unsigned long flags ;
   unsigned char rh_registered : 1 ;
   unsigned char rh_pollable : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char remove_phy : 1 ;
   unsigned char uses_new_polling : 1 ;
   unsigned char wireless : 1 ;
   unsigned char authorized_default : 1 ;
   unsigned char has_tt : 1 ;
   unsigned char amd_resume_bug : 1 ;
   unsigned char can_do_streams : 1 ;
   unsigned char tpl_support : 1 ;
   unsigned char cant_recv_wakeups : 1 ;
   unsigned int irq ;
   void *regs ;
   resource_size_t rsrc_start ;
   resource_size_t rsrc_len ;
   unsigned int power_budget ;
   struct giveback_urb_bh high_prio_bh ;
   struct giveback_urb_bh low_prio_bh ;
   struct mutex *bandwidth_mutex ;
   struct usb_hcd *shared_hcd ;
   struct usb_hcd *primary_hcd ;
   struct dma_pool *pool[4U] ;
   int state ;
   unsigned long hcd_priv[0U] ;
};
struct hc_driver {
   char const *description ;
   char const *product_desc ;
   size_t hcd_priv_size ;
   irqreturn_t (*irq)(struct usb_hcd * ) ;
   int flags ;
   int (*reset)(struct usb_hcd * ) ;
   int (*start)(struct usb_hcd * ) ;
   int (*pci_suspend)(struct usb_hcd * , bool ) ;
   int (*pci_resume)(struct usb_hcd * , bool ) ;
   void (*stop)(struct usb_hcd * ) ;
   void (*shutdown)(struct usb_hcd * ) ;
   int (*get_frame_number)(struct usb_hcd * ) ;
   int (*urb_enqueue)(struct usb_hcd * , struct urb * , gfp_t ) ;
   int (*urb_dequeue)(struct usb_hcd * , struct urb * , int ) ;
   int (*map_urb_for_dma)(struct usb_hcd * , struct urb * , gfp_t ) ;
   void (*unmap_urb_for_dma)(struct usb_hcd * , struct urb * ) ;
   void (*endpoint_disable)(struct usb_hcd * , struct usb_host_endpoint * ) ;
   void (*endpoint_reset)(struct usb_hcd * , struct usb_host_endpoint * ) ;
   int (*hub_status_data)(struct usb_hcd * , char * ) ;
   int (*hub_control)(struct usb_hcd * , u16 , u16 , u16 , char * , u16 ) ;
   int (*bus_suspend)(struct usb_hcd * ) ;
   int (*bus_resume)(struct usb_hcd * ) ;
   int (*start_port_reset)(struct usb_hcd * , unsigned int ) ;
   void (*relinquish_port)(struct usb_hcd * , int ) ;
   int (*port_handed_over)(struct usb_hcd * , int ) ;
   void (*clear_tt_buffer_complete)(struct usb_hcd * , struct usb_host_endpoint * ) ;
   int (*alloc_dev)(struct usb_hcd * , struct usb_device * ) ;
   void (*free_dev)(struct usb_hcd * , struct usb_device * ) ;
   int (*alloc_streams)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint ** ,
                        unsigned int , unsigned int , gfp_t ) ;
   int (*free_streams)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint ** ,
                       unsigned int , gfp_t ) ;
   int (*add_endpoint)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint * ) ;
   int (*drop_endpoint)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint * ) ;
   int (*check_bandwidth)(struct usb_hcd * , struct usb_device * ) ;
   void (*reset_bandwidth)(struct usb_hcd * , struct usb_device * ) ;
   int (*address_device)(struct usb_hcd * , struct usb_device * ) ;
   int (*enable_device)(struct usb_hcd * , struct usb_device * ) ;
   int (*update_hub_device)(struct usb_hcd * , struct usb_device * , struct usb_tt * ,
                            gfp_t ) ;
   int (*reset_device)(struct usb_hcd * , struct usb_device * ) ;
   int (*update_device)(struct usb_hcd * , struct usb_device * ) ;
   int (*set_usb2_hw_lpm)(struct usb_hcd * , struct usb_device * , int ) ;
   int (*enable_usb3_lpm_timeout)(struct usb_hcd * , struct usb_device * , enum usb3_link_state ) ;
   int (*disable_usb3_lpm_timeout)(struct usb_hcd * , struct usb_device * , enum usb3_link_state ) ;
   int (*find_raw_port_number)(struct usb_hcd * , int ) ;
   int (*port_power)(struct usb_hcd * , int , bool ) ;
};
struct __anonstruct_hs_268 {
   __u8 DeviceRemovable[4U] ;
   __u8 PortPwrCtrlMask[4U] ;
};
struct __anonstruct_ss_269 {
   __u8 bHubHdrDecLat ;
   __le16 wHubDelay ;
   __le16 DeviceRemovable ;
};
union __anonunion_u_267 {
   struct __anonstruct_hs_268 hs ;
   struct __anonstruct_ss_269 ss ;
};
struct usb_hub_descriptor {
   __u8 bDescLength ;
   __u8 bDescriptorType ;
   __u8 bNbrPorts ;
   __le16 wHubCharacteristics ;
   __u8 bPwrOn2PwrGood ;
   __u8 bHubContrCurrent ;
   union __anonunion_u_267 u ;
};
struct usb_tt {
   struct usb_device *hub ;
   int multi ;
   unsigned int think_time ;
   void *hcpriv ;
   spinlock_t lock ;
   struct list_head clear_list ;
   struct work_struct clear_work ;
};
struct oz_urb_link {
   struct list_head link ;
   struct urb *urb ;
   struct oz_port *port ;
   u8 req_id ;
   u8 ep_num ;
   unsigned int submit_counter ;
};
struct oz_endpoint {
   struct list_head urb_list ;
   struct list_head link ;
   struct timespec timestamp ;
   int credit ;
   int credit_ceiling ;
   u8 ep_num ;
   u8 attrib ;
   u8 *buffer ;
   int buffer_size ;
   int in_ix ;
   int out_ix ;
   int buffered_units ;
   unsigned int flags ;
   int start_frame ;
};
struct oz_interface {
   unsigned int ep_mask ;
   u8 alt ;
};
struct oz_hcd;
struct oz_port {
   unsigned int flags ;
   unsigned int status ;
   void *hpd ;
   struct oz_hcd *ozhcd ;
   spinlock_t port_lock ;
   u8 bus_addr ;
   u8 next_req_id ;
   u8 config_num ;
   int num_iface ;
   struct oz_interface *iface ;
   struct oz_endpoint *out_ep[16U] ;
   struct oz_endpoint *in_ep[16U] ;
   struct list_head isoc_out_ep ;
   struct list_head isoc_in_ep ;
};
struct oz_hcd {
   spinlock_t hcd_lock ;
   struct list_head urb_pending_list ;
   struct list_head urb_cancel_list ;
   struct list_head orphanage ;
   int conn_port ;
   struct oz_port ports[8U] ;
   uint flags ;
   struct usb_hcd *hcd ;
};
typedef int ldv_func_ret_type___1;
enum hrtimer_restart;
enum hrtimer_restart;
typedef int pao_T_____37;
typedef int pao_T_____38;
typedef int pao_T_____39;
typedef int pao_T_____40;
struct oz_elt_connect_req {
   u8 mode ;
   u8 resv1[16U] ;
   u8 pd_info ;
   u8 session_id ;
   u8 presleep ;
   u8 ms_isoc_latency ;
   u8 host_vendor ;
   u8 keep_alive ;
   u16 apps ;
   u8 max_len_div16 ;
   u8 ms_per_isoc ;
   u8 resv3[2U] ;
};
struct oz_elt_connect_rsp {
   u8 mode ;
   u8 status ;
   u8 resv1[3U] ;
   u8 session_id ;
   u16 apps ;
   u32 resv2 ;
};
struct oz_elt_farewell {
   u8 ep_num ;
   u8 index ;
   u8 report[1U] ;
};
struct oz_elt_update_param {
   u8 resv1[16U] ;
   u8 presleep ;
   u8 resv2 ;
   u8 host_vendor ;
   u8 keepalive ;
};
struct oz_mac_addr {
   __u8 a[6U] ;
};
struct oz_binding {
   struct packet_type ptype ;
   char name[32U] ;
   struct list_head link ;
};
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
struct __anonstruct_mm_segment_t_25 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_25 mm_segment_t;
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
enum hrtimer_restart;
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
struct oz_pd_list {
   __u32 count ;
   struct oz_mac_addr addr[8U] ;
};
struct oz_binding_info {
   char name[32U] ;
};
struct oz_cdev {
   dev_t devnum ;
   struct cdev cdev ;
   wait_queue_head_t rdq ;
   spinlock_t lock ;
   u8 active_addr[6U] ;
   struct oz_pd *active_pd ;
};
struct oz_serial_ctx {
   atomic_t ref_count ;
   u8 tx_seq_num ;
   u8 rx_seq_num ;
   u8 rd_buf[256U] ;
   int rd_in ;
   int rd_out ;
};
struct ldv_struct_file_operations_instance_0 {
   struct file_operations *arg0 ;
   int signal_pending ;
};
struct request;
struct device_private {
   void *driver_data ;
};
typedef short s16;
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
enum hrtimer_restart;
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
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
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
typedef _Bool ldv_set;
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
void ldv_linux_drivers_base_class_check_final_state(void) ;
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
int ldv_undef_int(void) ;
static void ldv_ldv_initialize_124(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_121(int ldv_func_arg1 ) ;
int ldv_filter_err_code(int ret_val ) ;
static void ldv_ldv_check_final_state_122(void) ;
static void ldv_ldv_check_final_state_123(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
void *ldv_malloc_unknown_size(void) ;
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
unsigned int oz_dbg_mask ;
void oz_apps_init(void) ;
void oz_apps_term(void) ;
int oz_protocol_init(char *devs ) ;
void oz_protocol_term(void) ;
void oz_app_enable(int app_id , int enable ) ;
int oz_cdev_register(void) ;
int oz_cdev_deregister(void) ;
unsigned int oz_dbg_mask = 8U;
static char *g_net_dev = (char *)"";
static int ozwpan_init(void)
{
  {
  {
  oz_cdev_register();
  oz_protocol_init(g_net_dev);
  oz_app_enable(1, 1);
  oz_apps_init();
  }
  return (0);
}
}
static void ozwpan_exit(void)
{
  {
  {
  oz_protocol_term();
  oz_apps_term();
  oz_cdev_deregister();
  }
  return;
}
}
void ldv_EMGentry_exit_ozwpan_exit_9_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_ozwpan_init_9_11(int (*arg0)(void) ) ;
void ldv_dispatch_deregister_io_instance_8_9_4(void) ;
void ldv_dispatch_deregister_io_instance_9_9_5(void) ;
void ldv_dispatch_register_io_instance_8_9_6(void) ;
void ldv_dispatch_register_io_instance_9_9_7(void) ;
void ldv_entry_EMGentry_9(void *arg0 ) ;
int main(void) ;
void ldv_io_instance_callback_4_21(int (*arg0)(struct oz_pd * ) , struct oz_pd *arg1 ) ;
void ldv_io_instance_callback_4_22(int (*arg0)(void) ) ;
void ldv_io_instance_callback_4_23(void (*arg0)(struct oz_pd * , struct oz_elt * ) ,
                                   struct oz_pd *arg1 , struct oz_elt *arg2 ) ;
void ldv_io_instance_callback_4_24(void (*arg0)(void) ) ;
void ldv_io_instance_callback_4_4(void (*arg0)(struct oz_pd * , unsigned char , unsigned char * ,
                                               unsigned char ) , struct oz_pd *arg1 ,
                                  unsigned char arg2 , unsigned char *arg3 , unsigned char arg4 ) ;
int ldv_io_instance_probe_4_11(int (*arg0)(struct oz_pd * , int ) , struct oz_pd *arg1 ,
                               int arg2 ) ;
void ldv_io_instance_release_4_2(void (*arg0)(struct oz_pd * , int ) , struct oz_pd *arg1 ,
                                 int arg2 ) ;
void ldv_platform_pm_ops_instance_2(void *arg0 ) ;
void ldv_pm_ops_instance_complete_2_3(void (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_2_15(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_late_2_14(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_noirq_2_12(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_2_9(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_late_2_8(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_noirq_2_6(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_prepare_2_22(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_2_4(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_early_2_7(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_noirq_2_5(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_2_16(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_early_2_17(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_noirq_2_19(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_idle_2_27(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_resume_2_24(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_suspend_2_25(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_2_21(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_late_2_18(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_noirq_2_20(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_2_10(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_early_2_13(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_noirq_2_11(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_struct_hc_driver_io_instance_3(void *arg0 ) ;
void ldv_struct_oz_app_if_io_instance_4(void *arg0 ) ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_9 ;
void ldv_EMGentry_exit_ozwpan_exit_9_2(void (*arg0)(void) )
{
  {
  {
  ozwpan_exit();
  }
  return;
}
}
int ldv_EMGentry_init_ozwpan_init_9_11(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = ozwpan_init();
  }
  return (tmp);
}
}
void ldv_dispatch_deregister_io_instance_8_9_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_io_instance_9_9_5(void)
{
  {
  return;
}
}
void ldv_dispatch_register_io_instance_8_9_6(void)
{
  struct ldv_struct_platform_instance_1 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_3 = (struct ldv_struct_platform_instance_1 *)tmp;
  ldv_struct_hc_driver_io_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_dispatch_register_io_instance_9_9_7(void)
{
  struct ldv_struct_platform_instance_1 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_4 = (struct ldv_struct_platform_instance_1 *)tmp;
  ldv_struct_oz_app_if_io_instance_4((void *)cf_arg_4);
  }
  return;
}
}
void ldv_entry_EMGentry_9(void *arg0 )
{
  void (*ldv_9_exit_ozwpan_exit_default)(void) ;
  int (*ldv_9_init_ozwpan_init_default)(void) ;
  int ldv_9_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_9_ret_default = ldv_EMGentry_init_ozwpan_init_9_11(ldv_9_init_ozwpan_init_default);
  ldv_9_ret_default = ldv_ldv_post_init_121(ldv_9_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_9_ret_default != 0);
    ldv_ldv_check_final_state_122();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_9_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_io_instance_9_9_7();
      ldv_dispatch_register_io_instance_8_9_6();
      ldv_dispatch_deregister_io_instance_9_9_5();
      ldv_dispatch_deregister_io_instance_8_9_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_ozwpan_exit_9_2(ldv_9_exit_ozwpan_exit_default);
    ldv_ldv_check_final_state_123();
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
  ldv_ldv_initialize_124();
  ldv_entry_EMGentry_9((void *)0);
  }
return 0;
}
}
void ldv_platform_pm_ops_instance_2(void *arg0 )
{
  struct device *ldv_2_device_device ;
  struct dev_pm_ops *ldv_2_pm_ops_dev_pm_ops ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  goto ldv_do_2;
  return;
  ldv_do_2:
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
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->runtime_idle != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_idle_2_27(ldv_2_pm_ops_dev_pm_ops->runtime_idle, ldv_2_device_device);
    }
  } else {
  }
  goto ldv_do_2;
  case_2: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->runtime_suspend != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_suspend_2_25(ldv_2_pm_ops_dev_pm_ops->runtime_suspend,
                                             ldv_2_device_device);
    }
  } else {
  }
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->runtime_resume != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_resume_2_24(ldv_2_pm_ops_dev_pm_ops->runtime_resume,
                                            ldv_2_device_device);
    }
  } else {
  }
  goto ldv_do_2;
  case_3: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->prepare != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_prepare_2_22(ldv_2_pm_ops_dev_pm_ops->prepare, ldv_2_device_device);
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
  case_1___0: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->suspend != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_suspend_2_21(ldv_2_pm_ops_dev_pm_ops->suspend, ldv_2_device_device);
    }
  } else {
  }
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->suspend_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_suspend_noirq_2_20(ldv_2_pm_ops_dev_pm_ops->suspend_noirq,
                                             ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->resume_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_resume_noirq_2_19(ldv_2_pm_ops_dev_pm_ops->resume_noirq,
                                            ldv_2_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->suspend_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_suspend_late_2_18(ldv_2_pm_ops_dev_pm_ops->suspend_late,
                                            ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->resume_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_resume_early_2_17(ldv_2_pm_ops_dev_pm_ops->resume_early,
                                            ldv_2_device_device);
      }
    } else {
    }
  }
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->resume != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_resume_2_16(ldv_2_pm_ops_dev_pm_ops->resume, ldv_2_device_device);
    }
  } else {
  }
  goto ldv_47894;
  case_2___0: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->freeze != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_freeze_2_15(ldv_2_pm_ops_dev_pm_ops->freeze, ldv_2_device_device);
    }
  } else {
  }
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->freeze_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_freeze_late_2_14(ldv_2_pm_ops_dev_pm_ops->freeze_late, ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->thaw_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_thaw_early_2_13(ldv_2_pm_ops_dev_pm_ops->thaw_early, ldv_2_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->freeze_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_freeze_noirq_2_12(ldv_2_pm_ops_dev_pm_ops->freeze_noirq,
                                            ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->thaw_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_thaw_noirq_2_11(ldv_2_pm_ops_dev_pm_ops->thaw_noirq, ldv_2_device_device);
      }
    } else {
    }
  }
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->thaw != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_thaw_2_10(ldv_2_pm_ops_dev_pm_ops->thaw, ldv_2_device_device);
    }
  } else {
  }
  goto ldv_47894;
  case_3___0: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->poweroff != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_poweroff_2_9(ldv_2_pm_ops_dev_pm_ops->poweroff, ldv_2_device_device);
    }
  } else {
  }
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->poweroff_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_poweroff_late_2_8(ldv_2_pm_ops_dev_pm_ops->poweroff_late,
                                            ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->restore_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_restore_early_2_7(ldv_2_pm_ops_dev_pm_ops->restore_early,
                                            ldv_2_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->poweroff_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_poweroff_noirq_2_6(ldv_2_pm_ops_dev_pm_ops->poweroff_noirq,
                                             ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->restore_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_restore_noirq_2_5(ldv_2_pm_ops_dev_pm_ops->restore_noirq,
                                            ldv_2_device_device);
      }
    } else {
    }
  }
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->restore != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_restore_2_4(ldv_2_pm_ops_dev_pm_ops->restore, ldv_2_device_device);
    }
  } else {
  }
  goto ldv_47894;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_47894: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->complete != (unsigned long )((void (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_complete_2_3(ldv_2_pm_ops_dev_pm_ops->complete, ldv_2_device_device);
    }
  } else {
  }
  goto ldv_do_2;
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
void ldv_pm_ops_instance_complete_2_3(void (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_2_15(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_late_2_14(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_noirq_2_12(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_2_9(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_late_2_8(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_noirq_2_6(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_prepare_2_22(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_2_4(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_early_2_7(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_noirq_2_5(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_2_16(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_early_2_17(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_noirq_2_19(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_idle_2_27(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_resume_2_24(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_suspend_2_25(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_2_21(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_late_2_18(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_noirq_2_20(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_2_10(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_early_2_13(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_noirq_2_11(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_struct_oz_app_if_io_instance_4(void *arg0 )
{
  void (*ldv_4_callback_farewell)(struct oz_pd * , unsigned char , unsigned char * ,
                                  unsigned char ) ;
  int (*ldv_4_callback_heartbeat)(struct oz_pd * ) ;
  int (*ldv_4_callback_init)(void) ;
  void (*ldv_4_callback_rx)(struct oz_pd * , struct oz_elt * ) ;
  void (*ldv_4_callback_term)(void) ;
  struct oz_app_if *ldv_4_container_struct_oz_app_if ;
  int ldv_4_ldv_param_11_1_default ;
  int ldv_4_ldv_param_2_1_default ;
  unsigned char ldv_4_ldv_param_4_1_default ;
  unsigned char *ldv_4_ldv_param_4_2_default ;
  unsigned char ldv_4_ldv_param_4_3_default ;
  struct oz_elt *ldv_4_resource_struct_oz_elt_ptr ;
  struct oz_pd *ldv_4_resource_struct_oz_pd_ptr ;
  int ldv_4_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  ldv_4_ret_default = 1;
  tmp = ldv_xmalloc(2UL);
  ldv_4_resource_struct_oz_elt_ptr = (struct oz_elt *)tmp;
  tmp___0 = ldv_xmalloc(1232UL);
  ldv_4_resource_struct_oz_pd_ptr = (struct oz_pd *)tmp___0;
  }
  goto ldv_main_4;
  return;
  ldv_main_4:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_4_ret_default = ldv_io_instance_probe_4_11(ldv_4_container_struct_oz_app_if->start,
                                                   ldv_4_resource_struct_oz_pd_ptr,
                                                   ldv_4_ldv_param_11_1_default);
    ldv_4_ret_default = ldv_filter_err_code(ldv_4_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
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
    ldv_free((void *)ldv_4_resource_struct_oz_elt_ptr);
    ldv_free((void *)ldv_4_resource_struct_oz_pd_ptr);
    }
    return;
  }
  return;
  ldv_call_4:
  {
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    {
    ldv_io_instance_release_4_2(ldv_4_container_struct_oz_app_if->stop, ldv_4_resource_struct_oz_pd_ptr,
                                ldv_4_ldv_param_2_1_default);
    }
    goto ldv_main_4;
  } else {
    {
    tmp___3 = ldv_xmalloc(1UL);
    ldv_4_ldv_param_4_2_default = (unsigned char *)tmp___3;
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
    if (tmp___4 == 4) {
      goto case_4;
    } else {
    }
    if (tmp___4 == 5) {
      goto case_5;
    } else {
    }
    goto switch_default;
    case_1:
    {
    ldv_io_instance_callback_4_24(ldv_4_callback_term);
    }
    goto ldv_48044;
    case_2:
    {
    ldv_io_instance_callback_4_23(ldv_4_callback_rx, ldv_4_resource_struct_oz_pd_ptr,
                                  ldv_4_resource_struct_oz_elt_ptr);
    }
    goto ldv_48044;
    case_3:
    {
    ldv_io_instance_callback_4_22(ldv_4_callback_init);
    }
    goto ldv_48044;
    case_4:
    {
    ldv_io_instance_callback_4_21(ldv_4_callback_heartbeat, ldv_4_resource_struct_oz_pd_ptr);
    }
    goto ldv_48044;
    case_5:
    {
    ldv_io_instance_callback_4_4(ldv_4_callback_farewell, ldv_4_resource_struct_oz_pd_ptr,
                                 (int )ldv_4_ldv_param_4_1_default, ldv_4_ldv_param_4_2_default,
                                 (int )ldv_4_ldv_param_4_3_default);
    }
    goto ldv_48044;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_48044: ;
  }
  {
  ldv_free((void *)ldv_4_ldv_param_4_2_default);
  }
  goto ldv_call_4;
  return;
}
}
static int ldv_ldv_post_init_121(int ldv_func_arg1 )
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
static void ldv_ldv_check_final_state_122(void)
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
static void ldv_ldv_check_final_state_123(void)
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
static void ldv_ldv_initialize_124(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
void ldv_linux_usb_dev_atomic_inc(atomic_t *v ) ;
void ldv_linux_usb_dev_atomic_dec(atomic_t *v ) ;
int ldv_linux_usb_dev_atomic_dec_and_test(atomic_t *v ) ;
__inline static __u32 __le32_to_cpup(__le32 const *p )
{
  {
  return ((__u32 )*p);
}
}
extern void __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
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
__inline static void list_del_init(struct list_head *entry )
{
  {
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
  }
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static int list_is_singular(struct list_head const *head )
{
  int tmp ;
  {
  {
  tmp = list_empty(head);
  }
  return (tmp == 0 && (unsigned long )head->next == (unsigned long )head->prev);
}
}
__inline static void __list_cut_position(struct list_head *list , struct list_head *head ,
                                         struct list_head *entry )
{
  struct list_head *new_first ;
  {
  new_first = entry->next;
  list->next = head->next;
  (list->next)->prev = list;
  list->prev = entry;
  entry->next = list;
  head->next = new_first;
  new_first->prev = head;
  return;
}
}
__inline static void list_cut_position(struct list_head *list , struct list_head *head ,
                                       struct list_head *entry )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = list_empty((struct list_head const *)head);
  }
  if (tmp != 0) {
    return;
  } else {
  }
  {
  tmp___0 = list_is_singular((struct list_head const *)head);
  }
  if (tmp___0 != 0 && ((unsigned long )head->next != (unsigned long )entry && (unsigned long )head != (unsigned long )entry)) {
    return;
  } else {
  }
  if ((unsigned long )entry == (unsigned long )head) {
    {
    INIT_LIST_HEAD(list);
    }
  } else {
    {
    __list_cut_position(list, head, entry);
    }
  }
  return;
}
}
extern void __bad_percpu_size(void) ;
extern void __bad_size_call_parameter(void) ;
extern void *memcpy(void * , void const * , size_t ) ;
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
__inline static void atomic_inc(atomic_t *v ) ;
__inline static void atomic_dec(atomic_t *v ) ;
__inline static int atomic_dec_and_test(atomic_t *v ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_g_polling_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_g_polling_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_oz_elt_buf(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_oz_elt_buf(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_stream_lock_of_oz_pd(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_stream_lock_of_oz_pd(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_tx_frame_lock_of_oz_pd(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_tx_frame_lock_of_oz_pd(void) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_133(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_133(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_133(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_133(spinlock_t *lock ) ;
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_bh(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_135(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_143(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_143(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_143(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_143(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_143(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_155(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_134(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_134(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_134(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_134(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_134(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_134(spinlock_t *lock ) ;
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_bh(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_136(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_144(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_144(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_144(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_144(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_144(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_156(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
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
extern void hrtimer_init(struct hrtimer * , clockid_t , enum hrtimer_mode ) ;
extern int hrtimer_cancel(struct hrtimer * ) ;
__inline static int hrtimer_active(struct hrtimer const *timer )
{
  {
  return ((unsigned long )timer->state != 0UL);
}
}
extern void kfree(void const * ) ;
static void *ldv_kmem_cache_alloc_132(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern void kmem_cache_free(struct kmem_cache * , void * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void kfree_skb(struct sk_buff * ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags ) ;
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
__inline static void skb_reset_network_header(struct sk_buff *skb )
{
  {
  skb->network_header = (int )((__u16 )((long )skb->data)) - (int )((__u16 )((long )skb->head));
  return;
}
}
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
extern int dev_queue_xmit(struct sk_buff * ) ;
__inline static int dev_hard_header(struct sk_buff *skb , struct net_device *dev ,
                                    unsigned short type , void const *daddr , void const *saddr ,
                                    unsigned int len )
{
  int tmp ;
  {
  if ((unsigned long )dev->header_ops == (unsigned long )((struct header_ops const *)0) || (unsigned long )(dev->header_ops)->create == (unsigned long )((int (* )(struct sk_buff * ,
                                                                                                                                                                                struct net_device * ,
                                                                                                                                                                                unsigned short ,
                                                                                                                                                                                void const * ,
                                                                                                                                                                                void const * ,
                                                                                                                                                                                unsigned int ))0)) {
    return (0);
  } else {
  }
  {
  tmp = (*((dev->header_ops)->create))(skb, dev, (int )type, daddr, saddr, len);
  }
  return (tmp);
}
}
__inline static void dev_put(struct net_device *dev )
{
  void const *__vpp_verify ;
  int pao_ID__ ;
  int pao_ID_____0 ;
  int pao_ID_____1 ;
  int pao_ID_____2 ;
  {
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
  case_1:
  pao_ID__ = -1;
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
  __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43922;
  case_2:
  __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43922;
  case_4:
  __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43922;
  case_8:
  __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43922;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break___0: ;
  }
  ldv_43922: ;
  goto ldv_43927;
  case_2___0:
  pao_ID_____0 = -1;
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
  __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43933;
  case_2___1:
  __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43933;
  case_4___0:
  __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43933;
  case_8___0:
  __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43933;
  switch_default___0:
  {
  __bad_percpu_size();
  }
  switch_break___1: ;
  }
  ldv_43933: ;
  goto ldv_43927;
  case_4___1:
  pao_ID_____1 = -1;
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
  __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43943;
  case_2___2:
  __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43943;
  case_4___2:
  __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43943;
  case_8___1:
  __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43943;
  switch_default___1:
  {
  __bad_percpu_size();
  }
  switch_break___2: ;
  }
  ldv_43943: ;
  goto ldv_43927;
  case_8___2:
  pao_ID_____2 = -1;
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
  __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43953;
  case_2___3:
  __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43953;
  case_4___3:
  __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43953;
  case_8___3:
  __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43953;
  switch_default___2:
  {
  __bad_percpu_size();
  }
  switch_break___3: ;
  }
  ldv_43953: ;
  goto ldv_43927;
  switch_default___3:
  {
  __bad_size_call_parameter();
  }
  goto ldv_43927;
  switch_break: ;
  }
  ldv_43927: ;
  return;
}
}
__inline static u32 get_unaligned_le32(void const *p )
{
  __u32 tmp ;
  {
  {
  tmp = __le32_to_cpup((__le32 const *)p);
  }
  return (tmp);
}
}
__inline static void put_unaligned_le16(u16 val , void *p )
{
  {
  *((__le16 *)p) = val;
  return;
}
}
__inline static void put_unaligned_le32(u32 val , void *p )
{
  {
  *((__le32 *)p) = val;
  return;
}
}
__inline static void put_unaligned_le64(u64 val , void *p )
{
  {
  *((__le64 *)p) = val;
  return;
}
}
extern void __bad_unaligned_access_size(void) ;
__inline static void ether_addr_copy(u8 *dst , u8 const *src )
{
  {
  *((u32 *)dst) = *((u32 const *)src);
  *((u16 *)dst + 4U) = *((u16 const *)src + 4U);
  return;
}
}
void oz_elt_buf_init(struct oz_elt_buf *buf ) ;
void oz_elt_buf_term(struct oz_elt_buf *buf ) ;
void oz_elt_info_free(struct oz_elt_buf *buf , struct oz_elt_info *ei ) ;
void oz_elt_info_free_chain(struct oz_elt_buf *buf , struct list_head *list ) ;
int oz_select_elts_for_tx(struct oz_elt_buf *buf , u8 isoc , unsigned int *len , unsigned int max_len ,
                          struct list_head *list ) ;
int oz_are_elts_available(struct oz_elt_buf *buf ) ;
spinlock_t g_polling_lock ;
struct oz_pd *oz_pd_alloc(u8 const *mac_addr ) ;
void oz_pd_destroy(struct oz_pd *pd ) ;
void oz_pd_get(struct oz_pd *pd ) ;
void oz_pd_put(struct oz_pd *pd ) ;
void oz_pd_set_state(struct oz_pd *pd , unsigned int state ) ;
void oz_pd_indicate_farewells(struct oz_pd *pd ) ;
int oz_pd_sleep(struct oz_pd *pd ) ;
void oz_pd_stop(struct oz_pd *pd ) ;
void oz_pd_heartbeat(struct oz_pd *pd , u16 apps ) ;
int oz_services_start(struct oz_pd *pd , u16 apps , int resume ) ;
void oz_services_stop(struct oz_pd *pd , u16 apps , int pause ) ;
int oz_prepare_frame(struct oz_pd *pd , int empty ) ;
void oz_send_queued_frames(struct oz_pd *pd , int backlog ) ;
void oz_retire_tx_frames(struct oz_pd *pd , u8 lpn ) ;
int oz_isoc_stream_create(struct oz_pd *pd , u8 ep_num ) ;
int oz_isoc_stream_delete(struct oz_pd *pd , u8 ep_num ) ;
int oz_send_isoc_unit(struct oz_pd *pd , u8 ep_num , u8 const *data , int len ) ;
void oz_handle_app_elt(struct oz_pd *pd , u8 app_id , struct oz_elt *elt ) ;
struct kmem_cache *oz_tx_frame_cache ;
void oz_timer_add(struct oz_pd *pd , int type , unsigned long due_time ) ;
void oz_pd_heartbeat_handler(unsigned long data ) ;
void oz_pd_timeout_handler(unsigned long data ) ;
enum hrtimer_restart oz_pd_heartbeat_event(struct hrtimer *timer ) ;
enum hrtimer_restart oz_pd_timeout_event(struct hrtimer *timer ) ;
int oz_cdev_init(void) ;
void oz_cdev_term(void) ;
int oz_cdev_start(struct oz_pd *pd , int resume ) ;
void oz_cdev_stop(struct oz_pd *pd , int pause ) ;
void oz_cdev_rx(struct oz_pd *pd , struct oz_elt *elt ) ;
int oz_usb_init(void) ;
void oz_usb_term(void) ;
int oz_usb_start(struct oz_pd *pd , int resume ) ;
void oz_usb_stop(struct oz_pd *pd , int pause ) ;
void oz_usb_rx(struct oz_pd *pd , struct oz_elt *elt ) ;
int oz_usb_heartbeat(struct oz_pd *pd ) ;
void oz_usb_farewell(struct oz_pd *pd , u8 ep_num , u8 *data , u8 len ) ;
static struct oz_tx_frame *oz_tx_frame_alloc(struct oz_pd *pd ) ;
static void oz_tx_frame_free(struct oz_pd *pd , struct oz_tx_frame *f ) ;
static void oz_tx_isoc_free(struct oz_pd *pd , struct oz_tx_frame *f ) ;
static struct sk_buff *oz_build_frame(struct oz_pd *pd , struct oz_tx_frame *f ) ;
static int oz_send_isoc_frame(struct oz_pd *pd ) ;
static void oz_retire_frame(struct oz_pd *pd , struct oz_tx_frame *f ) ;
static void oz_isoc_stream_free(struct oz_isoc_stream *st ) ;
static int oz_send_next_queued_frame(struct oz_pd *pd , int more_data ) ;
static void oz_isoc_destructor(struct sk_buff *skb ) ;
static atomic_t g_submitted_isoc = {0};
static struct oz_app_if const g_app_if[5U] = { {0, 0, 0, 0, 0, 0, 0},
        {& oz_usb_init, & oz_usb_term, & oz_usb_start, & oz_usb_stop, & oz_usb_rx, & oz_usb_heartbeat,
      & oz_usb_farewell},
        {0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0},
        {& oz_cdev_init, & oz_cdev_term, & oz_cdev_start, & oz_cdev_stop, & oz_cdev_rx,
      0, 0}};
void oz_pd_set_state(struct oz_pd *pd , unsigned int state )
{
  {
  pd->state = state;
  {
  if (state == 1U) {
    goto case_1;
  } else {
  }
  if (state == 2U) {
    goto case_2;
  } else {
  }
  if (state == 8U) {
    goto case_8;
  } else {
  }
  if (state == 4U) {
    goto case_4;
  } else {
  }
  goto switch_break;
  case_1: ;
  goto ldv_46971;
  case_2: ;
  goto ldv_46971;
  case_8: ;
  goto ldv_46971;
  case_4: ;
  goto ldv_46971;
  switch_break: ;
  }
  ldv_46971: ;
  return;
}
}
void oz_pd_get(struct oz_pd *pd )
{
  {
  {
  atomic_inc(& pd->ref_count);
  }
  return;
}
}
void oz_pd_put(struct oz_pd *pd )
{
  int tmp ;
  {
  {
  tmp = atomic_dec_and_test(& pd->ref_count);
  }
  if (tmp != 0) {
    {
    oz_pd_destroy(pd);
    }
  } else {
  }
  return;
}
}
struct oz_pd *oz_pd_alloc(u8 const *mac_addr )
{
  struct oz_pd *pd ;
  void *tmp ;
  int i ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  {
  {
  tmp = kzalloc(1232UL, 32U);
  pd = (struct oz_pd *)tmp;
  }
  if ((unsigned long )pd != (unsigned long )((struct oz_pd *)0)) {
    {
    atomic_set(& pd->ref_count, 2);
    i = 0;
    }
    goto ldv_46991;
    ldv_46990:
    {
    spinlock_check((spinlock_t *)(& pd->app_lock) + (unsigned long )i);
    __raw_spin_lock_init(& ((spinlock_t *)(& pd->app_lock) + (unsigned long )i)->__annonCompField18.rlock,
                         "&(&pd->app_lock[i])->rlock", & __key);
    i = i + 1;
    }
    ldv_46991: ;
    if (i <= 4) {
      goto ldv_46990;
    } else {
    }
    {
    pd->last_rx_pkt_num = 4294967295U;
    oz_pd_set_state(pd, 1U);
    pd->max_tx_size = 760;
    ether_addr_copy((u8 *)(& pd->mac_addr), mac_addr);
    oz_elt_buf_init(& pd->elt_buff);
    spinlock_check(& pd->tx_frame_lock);
    __raw_spin_lock_init(& pd->tx_frame_lock.__annonCompField18.rlock, "&(&pd->tx_frame_lock)->rlock",
                         & __key___0);
    INIT_LIST_HEAD(& pd->tx_queue);
    INIT_LIST_HEAD(& pd->farewell_list);
    pd->last_sent_frame = & pd->tx_queue;
    spinlock_check(& pd->stream_lock);
    __raw_spin_lock_init(& pd->stream_lock.__annonCompField18.rlock, "&(&pd->stream_lock)->rlock",
                         & __key___1);
    INIT_LIST_HEAD(& pd->stream_list);
    tasklet_init(& pd->heartbeat_tasklet, & oz_pd_heartbeat_handler, (unsigned long )pd);
    tasklet_init(& pd->timeout_tasklet, & oz_pd_timeout_handler, (unsigned long )pd);
    hrtimer_init(& pd->heartbeat, 1, 1);
    hrtimer_init(& pd->timeout, 1, 1);
    pd->heartbeat.function = & oz_pd_heartbeat_event;
    pd->timeout.function = & oz_pd_timeout_event;
    }
  } else {
  }
  return (pd);
}
}
static void oz_pd_free(struct work_struct *work )
{
  struct list_head *e ;
  struct list_head *n ;
  struct oz_pd *pd ;
  struct work_struct const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct oz_tx_frame *f ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  {
  __mptr = (struct work_struct const *)work;
  pd = (struct oz_pd *)__mptr + 0xfffffffffffffb80UL;
  tasklet_kill(& pd->heartbeat_tasklet);
  tasklet_kill(& pd->timeout_tasklet);
  e = pd->stream_list.next;
  n = e->next;
  }
  goto ldv_47008;
  ldv_47007:
  {
  __mptr___0 = (struct list_head const *)e;
  oz_isoc_stream_free((struct oz_isoc_stream *)__mptr___0);
  e = n;
  n = e->next;
  }
  ldv_47008: ;
  if ((unsigned long )e != (unsigned long )(& pd->stream_list)) {
    goto ldv_47007;
  } else {
  }
  e = pd->tx_queue.next;
  n = e->next;
  goto ldv_47014;
  ldv_47013:
  __mptr___1 = (struct list_head const *)e;
  f = (struct oz_tx_frame *)__mptr___1;
  if ((unsigned long )f->skb != (unsigned long )((struct sk_buff *)0)) {
    {
    kfree_skb(f->skb);
    }
  } else {
  }
  {
  oz_retire_frame(pd, f);
  e = n;
  n = e->next;
  }
  ldv_47014: ;
  if ((unsigned long )e != (unsigned long )(& pd->tx_queue)) {
    goto ldv_47013;
  } else {
  }
  {
  oz_elt_buf_term(& pd->elt_buff);
  e = pd->farewell_list.next;
  n = e->next;
  }
  goto ldv_47019;
  ldv_47018:
  {
  __mptr___2 = (struct list_head const *)e;
  kfree((void const *)((struct oz_farewell *)__mptr___2));
  e = n;
  n = e->next;
  }
  ldv_47019: ;
  if ((unsigned long )e != (unsigned long )(& pd->farewell_list)) {
    goto ldv_47018;
  } else {
  }
  if ((unsigned long )pd->net_dev != (unsigned long )((struct net_device *)0)) {
    {
    dev_put(pd->net_dev);
    }
  } else {
  }
  {
  kfree((void const *)pd);
  }
  return;
}
}
void oz_pd_destroy(struct oz_pd *pd )
{
  int tmp ;
  int tmp___0 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = hrtimer_active((struct hrtimer const *)(& pd->timeout));
  }
  if (tmp != 0) {
    {
    hrtimer_cancel(& pd->timeout);
    }
  } else {
  }
  {
  tmp___0 = hrtimer_active((struct hrtimer const *)(& pd->heartbeat));
  }
  if (tmp___0 != 0) {
    {
    hrtimer_cancel(& pd->heartbeat);
    }
  } else {
  }
  {
  __init_work(& pd->workitem, 0);
  __constr_expr_0.counter = 137438953408L;
  pd->workitem.data = __constr_expr_0;
  lockdep_init_map(& pd->workitem.lockdep_map, "(&pd->workitem)", & __key, 0);
  INIT_LIST_HEAD(& pd->workitem.entry);
  pd->workitem.func = & oz_pd_free;
  tmp___2 = schedule_work(& pd->workitem);
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  return;
}
}
int oz_services_start(struct oz_pd *pd , u16 apps , int resume )
{
  int i ;
  int rc ;
  int tmp___1 ;
  {
  rc = 0;
  i = 0;
  goto ldv_47040;
  ldv_47039: ;
  if ((unsigned long )g_app_if[i].start != (unsigned long )((int (* )(struct oz_pd * ,
                                                                                 int ))0) && ((int )apps >> i) & 1) {
    {
    tmp___1 = (*(g_app_if[i].start))(pd, resume);
    }
    if (tmp___1 != 0) {
      rc = -1;
      goto ldv_47038;
    } else {
    }
    {
    ldv_spin_lock_bh_121(& g_polling_lock);
    pd->total_apps = (u16 )((int )((short )pd->total_apps) | (int )((short )(1 << i)));
    }
    if (resume != 0) {
      pd->paused_apps = (u16 )((int )((short )pd->paused_apps) & ~ ((int )((short )(1 << i))));
    } else {
    }
    {
    ldv_spin_unlock_bh_122(& g_polling_lock);
    }
  } else {
  }
  i = i + 1;
  ldv_47040: ;
  if (i <= 4) {
    goto ldv_47039;
  } else {
  }
  ldv_47038: ;
  return (rc);
}
}
void oz_services_stop(struct oz_pd *pd , u16 apps , int pause )
{
  int i ;
  {
  i = 0;
  goto ldv_47050;
  ldv_47049: ;
  if ((unsigned long )g_app_if[i].stop != (unsigned long )((void (* )(struct oz_pd * ,
                                                                                 int ))0) && ((int )apps >> i) & 1) {
    {
    ldv_spin_lock_bh_121(& g_polling_lock);
    }
    if (pause != 0) {
      pd->paused_apps = (u16 )((int )((short )pd->paused_apps) | (int )((short )(1 << i)));
    } else {
      pd->total_apps = (u16 )((int )((short )pd->total_apps) & ~ ((int )((short )(1 << i))));
      pd->paused_apps = (u16 )((int )((short )pd->paused_apps) & ~ ((int )((short )(1 << i))));
    }
    {
    ldv_spin_unlock_bh_122(& g_polling_lock);
    (*(g_app_if[i].stop))(pd, pause);
    }
  } else {
  }
  i = i + 1;
  ldv_47050: ;
  if (i <= 4) {
    goto ldv_47049;
  } else {
  }
  return;
}
}
void oz_pd_heartbeat(struct oz_pd *pd , u16 apps )
{
  int i ;
  int more ;
  int tmp ;
  int tmp___0 ;
  int count ;
  int tmp___1 ;
  int tmp___2 ;
  {
  more = 0;
  i = 0;
  goto ldv_47059;
  ldv_47058: ;
  if ((unsigned long )g_app_if[i].heartbeat != (unsigned long )((int (* )(struct oz_pd * ))0) && ((int )apps >> i) & 1) {
    {
    tmp = (*(g_app_if[i].heartbeat))(pd);
    }
    if (tmp != 0) {
      more = 1;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_47059: ;
  if (i <= 4) {
    goto ldv_47058;
  } else {
  }
  if (more == 0) {
    {
    tmp___0 = hrtimer_active((struct hrtimer const *)(& pd->heartbeat));
    }
    if (tmp___0 != 0) {
      {
      hrtimer_cancel(& pd->heartbeat);
      }
    } else {
    }
  } else {
  }
  if ((int )((signed char )pd->mode) < 0) {
    count = 8;
    goto ldv_47063;
    ldv_47062: ;
    ldv_47063:
    tmp___1 = count;
    count = count - 1;
    if (tmp___1 != 0) {
      {
      tmp___2 = oz_send_isoc_frame(pd);
      }
      if (tmp___2 >= 0) {
        goto ldv_47062;
      } else {
        goto ldv_47064;
      }
    } else {
    }
    ldv_47064: ;
  } else {
  }
  return;
}
}
void oz_pd_stop(struct oz_pd *pd )
{
  u16 stop_apps ;
  {
  {
  oz_pd_indicate_farewells(pd);
  ldv_spin_lock_bh_121(& g_polling_lock);
  stop_apps = pd->total_apps;
  pd->total_apps = 0U;
  pd->paused_apps = 0U;
  ldv_spin_unlock_bh_122(& g_polling_lock);
  oz_services_stop(pd, (int )stop_apps, 0);
  ldv_spin_lock_bh_121(& g_polling_lock);
  oz_pd_set_state(pd, 8U);
  list_del(& pd->link);
  ldv_spin_unlock_bh_122(& g_polling_lock);
  oz_pd_put(pd);
  }
  return;
}
}
int oz_pd_sleep(struct oz_pd *pd )
{
  int do_stop ;
  u16 stop_apps ;
  {
  {
  do_stop = 0;
  ldv_spin_lock_bh_121(& g_polling_lock);
  }
  if ((pd->state & 12U) != 0U) {
    {
    ldv_spin_unlock_bh_122(& g_polling_lock);
    }
    return (0);
  } else {
  }
  if (pd->keep_alive != 0UL && (unsigned int )pd->session_id != 0U) {
    {
    oz_pd_set_state(pd, 4U);
    }
  } else {
    do_stop = 1;
  }
  {
  stop_apps = pd->total_apps;
  ldv_spin_unlock_bh_122(& g_polling_lock);
  }
  if (do_stop != 0) {
    {
    oz_pd_stop(pd);
    }
  } else {
    {
    oz_services_stop(pd, (int )stop_apps, 1);
    oz_timer_add(pd, 3, pd->keep_alive);
    }
  }
  return (do_stop);
}
}
static struct oz_tx_frame *oz_tx_frame_alloc(struct oz_pd *pd )
{
  struct oz_tx_frame *f ;
  void *tmp ;
  {
  {
  tmp = ldv_kmem_cache_alloc_132(oz_tx_frame_cache, 32U);
  f = (struct oz_tx_frame *)tmp;
  }
  if ((unsigned long )f != (unsigned long )((struct oz_tx_frame *)0)) {
    {
    f->total_size = 6;
    INIT_LIST_HEAD(& f->link);
    INIT_LIST_HEAD(& f->elt_list);
    }
  } else {
  }
  return (f);
}
}
static void oz_tx_isoc_free(struct oz_pd *pd , struct oz_tx_frame *f )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  pd->nb_queued_isoc_frames = pd->nb_queued_isoc_frames - 1;
  list_del_init(& f->link);
  kmem_cache_free(oz_tx_frame_cache, (void *)f);
  }
  if ((oz_dbg_mask & 32U) != 0U) {
    {
    descriptor.modname = "ozwpan";
    descriptor.function = "oz_tx_isoc_free";
    descriptor.filename = "drivers/staging/ozwpan/ozpd.c";
    descriptor.format = "Releasing ISOC Frame isoc_nb= %d\n";
    descriptor.lineno = 340U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "Releasing ISOC Frame isoc_nb= %d\n", pd->nb_queued_isoc_frames);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void oz_tx_frame_free(struct oz_pd *pd , struct oz_tx_frame *f )
{
  {
  {
  kmem_cache_free(oz_tx_frame_cache, (void *)f);
  }
  return;
}
}
static void oz_set_more_bit(struct sk_buff *skb )
{
  struct oz_hdr *oz_hdr ;
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header((struct sk_buff const *)skb);
  oz_hdr = (struct oz_hdr *)tmp;
  oz_hdr->control = (u8 )((unsigned int )oz_hdr->control | 64U);
  }
  return;
}
}
static void oz_set_last_pkt_nb(struct oz_pd *pd , struct sk_buff *skb )
{
  struct oz_hdr *oz_hdr ;
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header((struct sk_buff const *)skb);
  oz_hdr = (struct oz_hdr *)tmp;
  oz_hdr->last_pkt_num = (u8 )pd->trigger_pkt_num;
  }
  return;
}
}
int oz_prepare_frame(struct oz_pd *pd , int empty )
{
  struct oz_tx_frame *f ;
  int tmp ;
  void *__gu_p ;
  {
  if (((int )pd->mode & 15) != 1) {
    return (-1);
  } else {
  }
  if (pd->nb_queued_frames > 3) {
    return (-1);
  } else {
  }
  if (empty == 0) {
    {
    tmp = oz_are_elts_available(& pd->elt_buff);
    }
    if (tmp == 0) {
      return (-1);
    } else {
    }
  } else {
  }
  {
  f = oz_tx_frame_alloc(pd);
  }
  if ((unsigned long )f == (unsigned long )((struct oz_tx_frame *)0)) {
    return (-1);
  } else {
  }
  f->skb = (struct sk_buff *)0;
  f->hdr.control = 132U;
  pd->last_tx_pkt_num = pd->last_tx_pkt_num + 1U;
  __gu_p = (void *)(& f->hdr.pkt_num);
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
  *((u8 *)__gu_p) = (unsigned char )pd->last_tx_pkt_num;
  goto ldv_47107;
  case_2:
  {
  put_unaligned_le16((int )((unsigned short )pd->last_tx_pkt_num), __gu_p);
  }
  goto ldv_47107;
  case_4:
  {
  put_unaligned_le32(pd->last_tx_pkt_num, __gu_p);
  }
  goto ldv_47107;
  case_8:
  {
  put_unaligned_le64((unsigned long long )pd->last_tx_pkt_num, __gu_p);
  }
  goto ldv_47107;
  switch_default:
  {
  __bad_unaligned_access_size();
  }
  goto ldv_47107;
  switch_break: ;
  }
  ldv_47107: ;
  if (empty == 0) {
    {
    oz_select_elts_for_tx(& pd->elt_buff, 0, (unsigned int *)(& f->total_size), (unsigned int )pd->max_tx_size,
                          & f->elt_list);
    }
  } else {
  }
  {
  ldv_spin_lock_133(& pd->tx_frame_lock);
  list_add_tail(& f->link, & pd->tx_queue);
  pd->nb_queued_frames = pd->nb_queued_frames + 1;
  ldv_spin_unlock_134(& pd->tx_frame_lock);
  }
  return (0);
}
}
static struct sk_buff *oz_build_frame(struct oz_pd *pd , struct oz_tx_frame *f )
{
  struct sk_buff *skb ;
  struct net_device *dev ;
  struct oz_hdr *oz_hdr ;
  struct oz_elt *elt ;
  struct oz_elt_info *ei ;
  int tmp ;
  unsigned char *tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  dev = pd->net_dev;
  skb = alloc_skb((unsigned int )(f->total_size + (((((int )dev->hard_header_len + (int )dev->needed_headroom) & -16) + 16) + (int )dev->needed_tailroom)),
                  32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return ((struct sk_buff *)0);
  } else {
  }
  {
  skb_reserve(skb, (((int )dev->hard_header_len + (int )dev->needed_headroom) & -16) + 16);
  skb_reset_network_header(skb);
  skb->dev = dev;
  skb->protocol = 11913U;
  tmp = dev_hard_header(skb, dev, 35118, (void const *)(& pd->mac_addr), (void const *)dev->dev_addr,
                        skb->len);
  }
  if (tmp < 0) {
    goto fail;
  } else {
  }
  {
  tmp___0 = skb_put(skb, (unsigned int )f->total_size);
  oz_hdr = (struct oz_hdr *)tmp___0;
  f->hdr.last_pkt_num = (u8 )pd->trigger_pkt_num;
  memcpy((void *)oz_hdr, (void const *)(& f->hdr), 6UL);
  elt = (struct oz_elt *)oz_hdr + 1U;
  __mptr = (struct list_head const *)f->elt_list.next;
  ei = (struct oz_elt_info *)__mptr;
  }
  goto ldv_47127;
  ldv_47126:
  {
  memcpy((void *)elt, (void const *)(& ei->data), (size_t )ei->length);
  elt = elt + ((unsigned long )elt->length + 1UL);
  __mptr___0 = (struct list_head const *)ei->link.next;
  ei = (struct oz_elt_info *)__mptr___0;
  }
  ldv_47127: ;
  if ((unsigned long )(& ei->link) != (unsigned long )(& f->elt_list)) {
    goto ldv_47126;
  } else {
  }
  return (skb);
  fail:
  {
  kfree_skb(skb);
  }
  return ((struct sk_buff *)0);
}
}
static void oz_retire_frame(struct oz_pd *pd , struct oz_tx_frame *f )
{
  struct oz_elt_info *ei ;
  struct oz_elt_info *n ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)f->elt_list.next;
  ei = (struct oz_elt_info *)__mptr;
  __mptr___0 = (struct list_head const *)ei->link.next;
  n = (struct oz_elt_info *)__mptr___0;
  goto ldv_47142;
  ldv_47141:
  {
  list_del_init(& ei->link);
  }
  if ((unsigned long )ei->callback != (unsigned long )((void (*)(struct oz_pd * ,
                                                                 long ))0)) {
    {
    (*(ei->callback))(pd, ei->context);
    }
  } else {
  }
  {
  ldv_spin_lock_bh_135(& pd->elt_buff.lock);
  oz_elt_info_free(& pd->elt_buff, ei);
  ldv_spin_unlock_bh_136(& pd->elt_buff.lock);
  ei = n;
  __mptr___1 = (struct list_head const *)n->link.next;
  n = (struct oz_elt_info *)__mptr___1;
  }
  ldv_47142: ;
  if ((unsigned long )(& ei->link) != (unsigned long )(& f->elt_list)) {
    goto ldv_47141;
  } else {
  }
  {
  oz_tx_frame_free(pd, f);
  }
  return;
}
}
static int oz_send_next_queued_frame(struct oz_pd *pd , int more_data )
{
  struct sk_buff *skb ;
  struct oz_tx_frame *f ;
  struct list_head *e ;
  struct list_head const *__mptr ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  struct _ddebug descriptor___2 ;
  long tmp___4 ;
  int tmp___5 ;
  {
  {
  ldv_spin_lock_133(& pd->tx_frame_lock);
  e = (pd->last_sent_frame)->next;
  }
  if ((unsigned long )e == (unsigned long )(& pd->tx_queue)) {
    {
    ldv_spin_unlock_134(& pd->tx_frame_lock);
    }
    return (-1);
  } else {
  }
  __mptr = (struct list_head const *)e;
  f = (struct oz_tx_frame *)__mptr;
  if ((unsigned long )f->skb != (unsigned long )((struct sk_buff *)0)) {
    {
    skb = f->skb;
    oz_tx_isoc_free(pd, f);
    ldv_spin_unlock_134(& pd->tx_frame_lock);
    }
    if (more_data != 0) {
      {
      oz_set_more_bit(skb);
      }
    } else {
    }
    {
    oz_set_last_pkt_nb(pd, skb);
    tmp___2 = atomic_read((atomic_t const *)(& g_submitted_isoc));
    }
    if (tmp___2 <= 15) {
      {
      tmp___0 = dev_queue_xmit(skb);
      }
      if (tmp___0 < 0) {
        if ((oz_dbg_mask & 32U) != 0U) {
          {
          descriptor.modname = "ozwpan";
          descriptor.function = "oz_send_next_queued_frame";
          descriptor.filename = "drivers/staging/ozwpan/ozpd.c";
          descriptor.format = "Dropping ISOC Frame\n";
          descriptor.lineno = 492U;
          descriptor.flags = 0U;
          tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
          }
          if (tmp != 0L) {
            {
            __dynamic_pr_debug(& descriptor, "Dropping ISOC Frame\n");
            }
          } else {
          }
        } else {
        }
        return (-1);
      } else {
      }
      {
      atomic_inc(& g_submitted_isoc);
      }
      if ((oz_dbg_mask & 32U) != 0U) {
        {
        descriptor___0.modname = "ozwpan";
        descriptor___0.function = "oz_send_next_queued_frame";
        descriptor___0.filename = "drivers/staging/ozwpan/ozpd.c";
        descriptor___0.format = "Sending ISOC Frame, nb_isoc= %d\n";
        descriptor___0.lineno = 497U;
        descriptor___0.flags = 0U;
        tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        }
        if (tmp___1 != 0L) {
          {
          __dynamic_pr_debug(& descriptor___0, "Sending ISOC Frame, nb_isoc= %d\n",
                             pd->nb_queued_isoc_frames);
          }
        } else {
        }
      } else {
      }
      return (0);
    } else {
    }
    {
    kfree_skb(skb);
    }
    if ((oz_dbg_mask & 32U) != 0U) {
      {
      descriptor___1.modname = "ozwpan";
      descriptor___1.function = "oz_send_next_queued_frame";
      descriptor___1.filename = "drivers/staging/ozwpan/ozpd.c";
      descriptor___1.format = "Dropping ISOC Frame>\n";
      descriptor___1.lineno = 501U;
      descriptor___1.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___3 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "Dropping ISOC Frame>\n");
        }
      } else {
      }
    } else {
    }
    return (-1);
  } else {
  }
  {
  pd->last_sent_frame = e;
  skb = oz_build_frame(pd, f);
  ldv_spin_unlock_134(& pd->tx_frame_lock);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-1);
  } else {
  }
  if (more_data != 0) {
    {
    oz_set_more_bit(skb);
    }
  } else {
  }
  if ((oz_dbg_mask & 32U) != 0U) {
    {
    descriptor___2.modname = "ozwpan";
    descriptor___2.function = "oz_send_next_queued_frame";
    descriptor___2.filename = "drivers/staging/ozwpan/ozpd.c";
    descriptor___2.format = "TX frame PN=0x%x\n";
    descriptor___2.lineno = 512U;
    descriptor___2.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___2, "TX frame PN=0x%x\n", f->hdr.pkt_num);
      }
    } else {
    }
  } else {
  }
  {
  tmp___5 = dev_queue_xmit(skb);
  }
  if (tmp___5 < 0) {
    return (-1);
  } else {
  }
  return (0);
}
}
void oz_send_queued_frames(struct oz_pd *pd , int backlog )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  goto ldv_47163;
  ldv_47162:
  backlog = backlog + 1;
  ldv_47163:
  {
  tmp = oz_prepare_frame(pd, 0);
  }
  if (tmp >= 0) {
    goto ldv_47162;
  } else {
  }
  {
  if (((int )pd->mode & 192) == 64) {
    goto case_64;
  } else {
  }
  if (((int )pd->mode & 192) == 192) {
    goto case_192;
  } else {
  }
  goto switch_default;
  case_64:
  backlog = backlog + pd->nb_queued_isoc_frames;
  if (backlog <= 0) {
    goto out;
  } else {
  }
  if (backlog > 16) {
    backlog = 16;
  } else {
  }
  goto ldv_47167;
  case_192: ;
  if (backlog <= 0 && (unsigned int )pd->isoc_sent == 0U) {
    goto out;
  } else {
  }
  goto ldv_47167;
  switch_default: ;
  if (backlog <= 0) {
    goto out;
  } else {
  }
  goto ldv_47167;
  switch_break: ;
  }
  ldv_47167: ;
  goto ldv_47172;
  ldv_47171:
  {
  tmp___0 = oz_send_next_queued_frame(pd, backlog);
  }
  if (tmp___0 < 0) {
    goto ldv_47170;
  } else {
  }
  ldv_47172:
  tmp___1 = backlog;
  backlog = backlog - 1;
  if (tmp___1 != 0) {
    goto ldv_47171;
  } else {
  }
  ldv_47170: ;
  return;
  out:
  {
  oz_prepare_frame(pd, 1);
  oz_send_next_queued_frame(pd, 0);
  }
  return;
}
}
static int oz_send_isoc_frame(struct oz_pd *pd )
{
  struct sk_buff *skb ;
  struct net_device *dev ;
  struct oz_hdr *oz_hdr ;
  struct oz_elt *elt ;
  struct oz_elt_info *ei ;
  struct list_head list ;
  int total_size ;
  int tmp ;
  int tmp___1 ;
  unsigned char *tmp___2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  dev = pd->net_dev;
  list.next = & list;
  list.prev = & list;
  total_size = 6;
  oz_select_elts_for_tx(& pd->elt_buff, 1, (unsigned int *)(& total_size), (unsigned int )pd->max_tx_size,
                        & list);
  tmp = list_empty((struct list_head const *)(& list));
  }
  if (tmp != 0) {
    return (0);
  } else {
  }
  {
  skb = alloc_skb((unsigned int )(total_size + (((((int )dev->hard_header_len + (int )dev->needed_headroom) & -16) + 16) + (int )dev->needed_tailroom)),
                  32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    oz_elt_info_free_chain(& pd->elt_buff, & list);
    }
    return (-1);
  } else {
  }
  {
  skb_reserve(skb, (((int )dev->hard_header_len + (int )dev->needed_headroom) & -16) + 16);
  skb_reset_network_header(skb);
  skb->dev = dev;
  skb->protocol = 11913U;
  tmp___1 = dev_hard_header(skb, dev, 35118, (void const *)(& pd->mac_addr), (void const *)dev->dev_addr,
                            skb->len);
  }
  if (tmp___1 < 0) {
    {
    kfree_skb(skb);
    }
    return (-1);
  } else {
  }
  {
  tmp___2 = skb_put(skb, (unsigned int )total_size);
  oz_hdr = (struct oz_hdr *)tmp___2;
  oz_hdr->control = 36U;
  oz_hdr->last_pkt_num = (u8 )pd->trigger_pkt_num;
  elt = (struct oz_elt *)oz_hdr + 1U;
  __mptr = (struct list_head const *)list.next;
  ei = (struct oz_elt_info *)__mptr;
  }
  goto ldv_47190;
  ldv_47189:
  {
  memcpy((void *)elt, (void const *)(& ei->data), (size_t )ei->length);
  elt = elt + ((unsigned long )elt->length + 1UL);
  __mptr___0 = (struct list_head const *)ei->link.next;
  ei = (struct oz_elt_info *)__mptr___0;
  }
  ldv_47190: ;
  if ((unsigned long )(& ei->link) != (unsigned long )(& list)) {
    goto ldv_47189;
  } else {
  }
  {
  dev_queue_xmit(skb);
  oz_elt_info_free_chain(& pd->elt_buff, & list);
  }
  return (0);
}
}
void oz_retire_tx_frames(struct oz_pd *pd , u8 lpn )
{
  struct oz_tx_frame *f ;
  struct oz_tx_frame *tmp ;
  u8 diff ;
  u32 pkt_num ;
  struct list_head list ;
  struct list_head const *__mptr ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  {
  {
  tmp = (struct oz_tx_frame *)0;
  list.next = & list;
  list.prev = & list;
  ldv_spin_lock_133(& pd->tx_frame_lock);
  __mptr = (struct list_head const *)pd->tx_queue.next;
  f = (struct oz_tx_frame *)__mptr;
  }
  goto ldv_47209;
  ldv_47208:
  {
  pkt_num = get_unaligned_le32((void const *)(& f->hdr.pkt_num));
  diff = (int )lpn - (int )((u8 )pkt_num);
  }
  if ((int )((signed char )diff) < 0 || pkt_num == 0U) {
    goto ldv_47205;
  } else {
  }
  if ((oz_dbg_mask & 32U) != 0U) {
    {
    descriptor.modname = "ozwpan";
    descriptor.function = "oz_retire_tx_frames";
    descriptor.filename = "drivers/staging/ozwpan/ozpd.c";
    descriptor.format = "Releasing pkt_num= %u, nb= %d\n";
    descriptor.lineno = 622U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "Releasing pkt_num= %u, nb= %d\n", pkt_num,
                         pd->nb_queued_frames);
      }
    } else {
    }
  } else {
  }
  tmp = f;
  pd->nb_queued_frames = pd->nb_queued_frames - 1;
  __mptr___0 = (struct list_head const *)f->link.next;
  f = (struct oz_tx_frame *)__mptr___0;
  ldv_47209: ;
  if ((unsigned long )(& f->link) != (unsigned long )(& pd->tx_queue)) {
    goto ldv_47208;
  } else {
  }
  ldv_47205: ;
  if ((unsigned long )tmp != (unsigned long )((struct oz_tx_frame *)0)) {
    {
    list_cut_position(& list, & pd->tx_queue, & tmp->link);
    }
  } else {
  }
  {
  pd->last_sent_frame = & pd->tx_queue;
  ldv_spin_unlock_134(& pd->tx_frame_lock);
  __mptr___1 = (struct list_head const *)list.next;
  f = (struct oz_tx_frame *)__mptr___1;
  __mptr___2 = (struct list_head const *)f->link.next;
  tmp = (struct oz_tx_frame *)__mptr___2;
  }
  goto ldv_47217;
  ldv_47216:
  {
  oz_retire_frame(pd, f);
  f = tmp;
  __mptr___3 = (struct list_head const *)tmp->link.next;
  tmp = (struct oz_tx_frame *)__mptr___3;
  }
  ldv_47217: ;
  if ((unsigned long )(& f->link) != (unsigned long )(& list)) {
    goto ldv_47216;
  } else {
  }
  return;
}
}
static struct oz_isoc_stream *pd_stream_find(struct oz_pd *pd , u8 ep_num )
{
  struct oz_isoc_stream *st ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)pd->stream_list.next;
  st = (struct oz_isoc_stream *)__mptr;
  goto ldv_47229;
  ldv_47228: ;
  if ((int )st->ep_num == (int )ep_num) {
    return (st);
  } else {
  }
  __mptr___0 = (struct list_head const *)st->link.next;
  st = (struct oz_isoc_stream *)__mptr___0;
  ldv_47229: ;
  if ((unsigned long )(& st->link) != (unsigned long )(& pd->stream_list)) {
    goto ldv_47228;
  } else {
  }
  return ((struct oz_isoc_stream *)0);
}
}
int oz_isoc_stream_create(struct oz_pd *pd , u8 ep_num )
{
  struct oz_isoc_stream *st ;
  void *tmp ;
  struct oz_isoc_stream *tmp___0 ;
  {
  {
  tmp = kzalloc(40UL, 32U);
  st = (struct oz_isoc_stream *)tmp;
  }
  if ((unsigned long )st == (unsigned long )((struct oz_isoc_stream *)0)) {
    return (-12);
  } else {
  }
  {
  st->ep_num = ep_num;
  ldv_spin_lock_bh_143(& pd->stream_lock);
  tmp___0 = pd_stream_find(pd, (int )ep_num);
  }
  if ((unsigned long )tmp___0 == (unsigned long )((struct oz_isoc_stream *)0)) {
    {
    list_add(& st->link, & pd->stream_list);
    st = (struct oz_isoc_stream *)0;
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_144(& pd->stream_lock);
  kfree((void const *)st);
  }
  return (0);
}
}
static void oz_isoc_stream_free(struct oz_isoc_stream *st )
{
  {
  {
  kfree_skb(st->skb);
  kfree((void const *)st);
  }
  return;
}
}
int oz_isoc_stream_delete(struct oz_pd *pd , u8 ep_num )
{
  struct oz_isoc_stream *st ;
  {
  {
  ldv_spin_lock_bh_143(& pd->stream_lock);
  st = pd_stream_find(pd, (int )ep_num);
  }
  if ((unsigned long )st != (unsigned long )((struct oz_isoc_stream *)0)) {
    {
    list_del(& st->link);
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_144(& pd->stream_lock);
  }
  if ((unsigned long )st != (unsigned long )((struct oz_isoc_stream *)0)) {
    {
    oz_isoc_stream_free(st);
    }
  } else {
  }
  return (0);
}
}
static void oz_isoc_destructor(struct sk_buff *skb )
{
  {
  {
  atomic_dec(& g_submitted_isoc);
  }
  return;
}
}
int oz_send_isoc_unit(struct oz_pd *pd , u8 ep_num , u8 const *data , int len )
{
  struct net_device *dev ;
  struct oz_isoc_stream *st ;
  u8 nb_units ;
  struct sk_buff *skb ;
  struct oz_hdr *oz_hdr ;
  int size ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  struct oz_hdr oz ;
  struct oz_isoc_large iso ;
  int tmp___1 ;
  struct oz_tx_frame *isoc_unit ;
  int nb ;
  struct oz_tx_frame *f ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  dev = pd->net_dev;
  nb_units = 0U;
  skb = (struct sk_buff *)0;
  oz_hdr = (struct oz_hdr *)0;
  size = 0;
  ldv_spin_lock_bh_143(& pd->stream_lock);
  st = pd_stream_find(pd, (int )ep_num);
  }
  if ((unsigned long )st != (unsigned long )((struct oz_isoc_stream *)0)) {
    skb = st->skb;
    st->skb = (struct sk_buff *)0;
    nb_units = st->nb_units;
    st->nb_units = 0U;
    oz_hdr = st->oz_hdr;
    size = st->size;
  } else {
  }
  {
  ldv_spin_unlock_bh_144(& pd->stream_lock);
  }
  if ((unsigned long )st == (unsigned long )((struct oz_isoc_stream *)0)) {
    return (0);
  } else {
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    skb = alloc_skb((unsigned int )(pd->max_tx_size + (((((int )dev->hard_header_len + (int )dev->needed_headroom) & -16) + 16) + (int )dev->needed_tailroom)),
                    32U);
    }
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      return (0);
    } else {
    }
    {
    skb_reserve(skb, (((int )dev->hard_header_len + (int )dev->needed_headroom) & -16) + 16);
    skb_reset_network_header(skb);
    skb->dev = dev;
    skb->protocol = 11913U;
    skb->priority = 7U;
    size = 10;
    tmp = skb_put(skb, (unsigned int )size);
    oz_hdr = (struct oz_hdr *)tmp;
    }
  } else {
  }
  {
  tmp___0 = skb_put(skb, (unsigned int )len);
  memcpy((void *)tmp___0, (void const *)data, (size_t )len);
  size = size + len;
  nb_units = (u8 )((int )nb_units + 1);
  }
  if ((int )nb_units < (int )pd->ms_per_isoc) {
    {
    ldv_spin_lock_bh_143(& pd->stream_lock);
    st->skb = skb;
    st->nb_units = nb_units;
    st->oz_hdr = oz_hdr;
    st->size = size;
    ldv_spin_unlock_bh_144(& pd->stream_lock);
    }
  } else {
    {
    ldv_spin_lock_bh_143(& pd->stream_lock);
    iso.frame_number = st->frame_num;
    st->frame_num = (int )st->frame_num + (int )nb_units;
    ldv_spin_unlock_bh_144(& pd->stream_lock);
    oz.control = 36U;
    oz.last_pkt_num = (u8 )pd->trigger_pkt_num;
    oz.pkt_num = 0U;
    iso.endpoint = ep_num;
    iso.format = 7U;
    iso.ms_data = nb_units;
    memcpy((void *)oz_hdr, (void const *)(& oz), 6UL);
    memcpy((void *)oz_hdr + 1U, (void const *)(& iso), 4UL);
    tmp___1 = dev_hard_header(skb, dev, 35118, (void const *)(& pd->mac_addr), (void const *)dev->dev_addr,
                              skb->len);
    }
    if (tmp___1 < 0) {
      goto out;
    } else {
    }
    skb->destructor = & oz_isoc_destructor;
    if ((int )((signed char )pd->mode) >= 0) {
      isoc_unit = (struct oz_tx_frame *)0;
      nb = pd->nb_queued_isoc_frames;
      if ((unsigned int )nb >= pd->isoc_latency) {
        if ((oz_dbg_mask & 32U) != 0U) {
          {
          descriptor.modname = "ozwpan";
          descriptor.function = "oz_send_isoc_unit";
          descriptor.filename = "drivers/staging/ozwpan/ozpd.c";
          descriptor.format = "Dropping ISOC Unit nb= %d\n";
          descriptor.lineno = 785U;
          descriptor.flags = 0U;
          tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
          }
          if (tmp___2 != 0L) {
            {
            __dynamic_pr_debug(& descriptor, "Dropping ISOC Unit nb= %d\n", nb);
            }
          } else {
          }
        } else {
        }
        {
        ldv_spin_lock_133(& pd->tx_frame_lock);
        __mptr = (struct list_head const *)pd->tx_queue.next;
        f = (struct oz_tx_frame *)__mptr;
        }
        goto ldv_47273;
        ldv_47272: ;
        if ((unsigned long )f->skb != (unsigned long )((struct sk_buff *)0)) {
          {
          oz_tx_isoc_free(pd, f);
          }
          goto ldv_47271;
        } else {
        }
        __mptr___0 = (struct list_head const *)f->link.next;
        f = (struct oz_tx_frame *)__mptr___0;
        ldv_47273: ;
        if ((unsigned long )(& f->link) != (unsigned long )(& pd->tx_queue)) {
          goto ldv_47272;
        } else {
        }
        ldv_47271:
        {
        ldv_spin_unlock_134(& pd->tx_frame_lock);
        }
      } else {
      }
      {
      isoc_unit = oz_tx_frame_alloc(pd);
      }
      if ((unsigned long )isoc_unit == (unsigned long )((struct oz_tx_frame *)0)) {
        goto out;
      } else {
      }
      {
      isoc_unit->hdr = oz;
      isoc_unit->skb = skb;
      ldv_spin_lock_bh_155(& pd->tx_frame_lock);
      list_add_tail(& isoc_unit->link, & pd->tx_queue);
      pd->nb_queued_isoc_frames = pd->nb_queued_isoc_frames + 1;
      ldv_spin_unlock_bh_156(& pd->tx_frame_lock);
      }
      if ((oz_dbg_mask & 32U) != 0U) {
        {
        descriptor___0.modname = "ozwpan";
        descriptor___0.function = "oz_send_isoc_unit";
        descriptor___0.filename = "drivers/staging/ozwpan/ozpd.c";
        descriptor___0.format = "Added ISOC Frame to Tx Queue isoc_nb= %d, nb= %d\n";
        descriptor___0.lineno = 806U;
        descriptor___0.flags = 0U;
        tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        }
        if (tmp___3 != 0L) {
          {
          __dynamic_pr_debug(& descriptor___0, "Added ISOC Frame to Tx Queue isoc_nb= %d, nb= %d\n",
                             pd->nb_queued_isoc_frames, pd->nb_queued_frames);
          }
        } else {
        }
      } else {
      }
      return (0);
    } else {
    }
    {
    tmp___5 = atomic_read((atomic_t const *)(& g_submitted_isoc));
    }
    if (tmp___5 <= 15) {
      {
      atomic_inc(& g_submitted_isoc);
      tmp___4 = dev_queue_xmit(skb);
      }
      if (tmp___4 < 0) {
        return (-1);
      } else {
      }
      return (0);
    } else {
    }
    out:
    {
    kfree_skb(skb);
    }
    return (-1);
  }
  return (0);
}
}
void oz_apps_init(void)
{
  int i ;
  {
  i = 0;
  goto ldv_47280;
  ldv_47279: ;
  if ((unsigned long )g_app_if[i].init != (unsigned long )((int (* )(void))0)) {
    {
    (*(g_app_if[i].init))();
    }
  } else {
  }
  i = i + 1;
  ldv_47280: ;
  if (i <= 4) {
    goto ldv_47279;
  } else {
  }
  return;
}
}
void oz_apps_term(void)
{
  int i ;
  {
  i = 0;
  goto ldv_47287;
  ldv_47286: ;
  if ((unsigned long )g_app_if[i].term != (unsigned long )((void (* )(void))0)) {
    {
    (*(g_app_if[i].term))();
    }
  } else {
  }
  i = i + 1;
  ldv_47287: ;
  if (i <= 4) {
    goto ldv_47286;
  } else {
  }
  return;
}
}
void oz_handle_app_elt(struct oz_pd *pd , u8 app_id , struct oz_elt *elt )
{
  {
  if ((unsigned int )app_id <= 4U && (unsigned long )g_app_if[(int )app_id].rx != (unsigned long )((void (* )(struct oz_pd * ,
                                                                                                                         struct oz_elt * ))0)) {
    {
    (*(g_app_if[(int )app_id].rx))(pd, elt);
    }
  } else {
  }
  return;
}
}
void oz_pd_indicate_farewells(struct oz_pd *pd )
{
  struct oz_farewell *f ;
  struct oz_app_if const *ai ;
  int tmp ;
  struct list_head const *__mptr ;
  {
  ai = (struct oz_app_if const *)(& g_app_if) + 1UL;
  ldv_47302:
  {
  ldv_spin_lock_bh_121(& g_polling_lock);
  tmp = list_empty((struct list_head const *)(& pd->farewell_list));
  }
  if (tmp != 0) {
    {
    ldv_spin_unlock_bh_122(& g_polling_lock);
    }
    goto ldv_47299;
  } else {
  }
  {
  __mptr = (struct list_head const *)pd->farewell_list.next;
  f = (struct oz_farewell *)__mptr;
  list_del(& f->link);
  ldv_spin_unlock_bh_122(& g_polling_lock);
  }
  if ((unsigned long )ai->farewell != (unsigned long )((void (* )(struct oz_pd * ,
                                                                             u8 ,
                                                                             u8 * ,
                                                                             u8 ))0)) {
    {
    (*(ai->farewell))(pd, (int )f->ep_num, (u8 *)(& f->report), (int )f->len);
    }
  } else {
  }
  {
  kfree((void const *)f);
  }
  goto ldv_47302;
  ldv_47299: ;
  return;
}
}
void ldv_io_instance_callback_4_21(int (*arg0)(struct oz_pd * ) , struct oz_pd *arg1 )
{
  {
  {
  oz_usb_heartbeat(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_4_22(int (*arg0)(void) )
{
  {
  {
  oz_usb_init();
  }
  return;
}
}
void ldv_io_instance_callback_4_23(void (*arg0)(struct oz_pd * , struct oz_elt * ) ,
                                   struct oz_pd *arg1 , struct oz_elt *arg2 )
{
  {
  {
  oz_usb_rx(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_4_24(void (*arg0)(void) )
{
  {
  {
  oz_usb_term();
  }
  return;
}
}
void ldv_io_instance_callback_4_4(void (*arg0)(struct oz_pd * , unsigned char , unsigned char * ,
                                               unsigned char ) , struct oz_pd *arg1 ,
                                  unsigned char arg2 , unsigned char *arg3 , unsigned char arg4 )
{
  {
  {
  oz_usb_farewell(arg1, (int )arg2, arg3, (int )arg4);
  }
  return;
}
}
int ldv_io_instance_probe_4_11(int (*arg0)(struct oz_pd * , int ) , struct oz_pd *arg1 ,
                               int arg2 )
{
  int tmp ;
  {
  {
  tmp = oz_usb_start(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_io_instance_release_4_2(void (*arg0)(struct oz_pd * , int ) , struct oz_pd *arg1 ,
                                 int arg2 )
{
  {
  {
  oz_usb_stop(arg1, arg2);
  }
  return;
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
__inline static void atomic_dec(atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_dec(v);
  }
  return;
}
}
__inline static int atomic_dec_and_test(atomic_t *v )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_usb_dev_atomic_dec_and_test(v);
  }
  return (tmp);
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
void *ldv_malloc(size_t size ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  }
  return ((struct sk_buff *)tmp);
}
}
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_g_polling_lock();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_g_polling_lock();
  spin_unlock_bh(lock);
  }
  return;
}
}
static void *ldv_kmem_cache_alloc_132(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
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
__inline static void ldv_spin_lock_133(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_tx_frame_lock_of_oz_pd();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_134(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_tx_frame_lock_of_oz_pd();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_135(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_oz_elt_buf();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_136(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_oz_elt_buf();
  spin_unlock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_143(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_stream_lock_of_oz_pd();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_144(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_stream_lock_of_oz_pd();
  spin_unlock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_155(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_tx_frame_lock_of_oz_pd();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_156(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_tx_frame_lock_of_oz_pd();
  spin_unlock_bh(lock);
  }
  return;
}
}
__inline static void atomic_inc(atomic_t *v ) ;
__inline static int atomic_dec_and_test(atomic_t *v ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_NOT_ARG_SIGN(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_NOT_ARG_SIGN(void) ;
__inline static void ldv_spin_lock_bh_121___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122___0(spinlock_t *lock ) ;
extern void getnstimeofday64(struct timespec * ) ;
__inline static void getnstimeofday(struct timespec *ts )
{
  {
  {
  getnstimeofday64(ts);
  }
  return;
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
int oz_elt_stream_create(struct oz_elt_buf *buf , u8 id , int max_buf_count ) ;
int oz_elt_stream_delete(struct oz_elt_buf *buf , u8 id ) ;
void oz_pd_request_heartbeat(struct oz_pd *pd ) ;
void oz_usb_get(void *hpd ) ;
void oz_usb_put(void *hpd ) ;
int oz_usb_stream_create(void *hpd , u8 ep_num ) ;
int oz_usb_stream_delete(void *hpd , u8 ep_num ) ;
void oz_usb_request_heartbeat(void *hpd ) ;
int oz_hcd_heartbeat(void *hport ) ;
int oz_hcd_init(void) ;
void oz_hcd_term(void) ;
struct oz_port *oz_hcd_pd_arrived(void *hpd ) ;
void oz_hcd_pd_departed(struct oz_port *port ) ;
void oz_hcd_pd_reset(void *hpd , void *hport ) ;
int oz_usb_init(void)
{
  int tmp ;
  {
  {
  tmp = oz_hcd_init();
  }
  return (tmp);
}
}
void oz_usb_term(void)
{
  {
  {
  oz_hcd_term();
  }
  return;
}
}
int oz_usb_start(struct oz_pd *pd , int resume )
{
  int rc ;
  struct oz_usb_ctx *usb_ctx ;
  struct oz_usb_ctx *old_ctx ;
  void *tmp___1 ;
  struct oz_port *tmp___3 ;
  {
  rc = 0;
  if (resume != 0) {
    return (0);
  } else {
  }
  {
  tmp___1 = kzalloc(32UL, 32U);
  usb_ctx = (struct oz_usb_ctx *)tmp___1;
  }
  if ((unsigned long )usb_ctx == (unsigned long )((struct oz_usb_ctx *)0)) {
    return (-12);
  } else {
  }
  {
  atomic_set(& usb_ctx->ref_count, 1);
  usb_ctx->pd = pd;
  usb_ctx->stopped = 0;
  ldv_spin_lock_bh_121___0((spinlock_t *)(& pd->app_lock) + 1UL);
  old_ctx = (struct oz_usb_ctx *)pd->app_ctx[1];
  }
  if ((unsigned long )old_ctx == (unsigned long )((struct oz_usb_ctx *)0)) {
    pd->app_ctx[1] = (void *)usb_ctx;
  } else {
  }
  {
  oz_usb_get(pd->app_ctx[1]);
  ldv_spin_unlock_bh_122___0((spinlock_t *)(& pd->app_lock) + 1UL);
  }
  if ((unsigned long )old_ctx != (unsigned long )((struct oz_usb_ctx *)0)) {
    {
    kfree((void const *)usb_ctx);
    usb_ctx = old_ctx;
    }
  } else
  if ((unsigned long )usb_ctx != (unsigned long )((struct oz_usb_ctx *)0)) {
    {
    oz_pd_get(pd);
    }
  } else {
  }
  if ((unsigned long )usb_ctx->hport != (unsigned long )((void *)0)) {
    {
    oz_hcd_pd_reset((void *)usb_ctx, usb_ctx->hport);
    }
  } else {
    {
    tmp___3 = oz_hcd_pd_arrived((void *)usb_ctx);
    usb_ctx->hport = (void *)tmp___3;
    }
    if ((unsigned long )usb_ctx->hport == (unsigned long )((void *)0)) {
      {
      ldv_spin_lock_bh_121___0((spinlock_t *)(& pd->app_lock) + 1UL);
      pd->app_ctx[1] = (void *)0;
      ldv_spin_unlock_bh_122___0((spinlock_t *)(& pd->app_lock) + 1UL);
      oz_usb_put((void *)usb_ctx);
      rc = -1;
      }
    } else {
    }
  }
  {
  oz_usb_put((void *)usb_ctx);
  }
  return (rc);
}
}
void oz_usb_stop(struct oz_pd *pd , int pause )
{
  struct oz_usb_ctx *usb_ctx ;
  struct timespec ts ;
  struct timespec now ;
  int tmp___1 ;
  {
  if (pause != 0) {
    return;
  } else {
  }
  {
  ldv_spin_lock_bh_121___0((spinlock_t *)(& pd->app_lock) + 1UL);
  usb_ctx = (struct oz_usb_ctx *)pd->app_ctx[1];
  pd->app_ctx[1] = (void *)0;
  ldv_spin_unlock_bh_122___0((spinlock_t *)(& pd->app_lock) + 1UL);
  }
  if ((unsigned long )usb_ctx != (unsigned long )((struct oz_usb_ctx *)0)) {
    {
    getnstimeofday(& ts);
    usb_ctx->stopped = 1;
    }
    goto ldv_48183;
    ldv_48182:
    {
    getnstimeofday(& now);
    }
    if (now.tv_sec != ts.tv_sec) {
      goto ldv_48181;
    } else {
    }
    ldv_48183:
    {
    tmp___1 = atomic_read((atomic_t const *)(& usb_ctx->ref_count));
    }
    if (tmp___1 > 2) {
      goto ldv_48182;
    } else {
    }
    ldv_48181:
    {
    oz_hcd_pd_departed((struct oz_port *)usb_ctx->hport);
    oz_usb_put((void *)usb_ctx);
    }
  } else {
  }
  return;
}
}
void oz_usb_get(void *hpd )
{
  struct oz_usb_ctx *usb_ctx ;
  {
  {
  usb_ctx = (struct oz_usb_ctx *)hpd;
  atomic_inc(& usb_ctx->ref_count);
  }
  return;
}
}
void oz_usb_put(void *hpd )
{
  struct oz_usb_ctx *usb_ctx ;
  int tmp___0 ;
  {
  {
  usb_ctx = (struct oz_usb_ctx *)hpd;
  tmp___0 = atomic_dec_and_test(& usb_ctx->ref_count);
  }
  if (tmp___0 != 0) {
    {
    oz_pd_put(usb_ctx->pd);
    kfree((void const *)usb_ctx);
    }
  } else {
  }
  return;
}
}
int oz_usb_heartbeat(struct oz_pd *pd )
{
  struct oz_usb_ctx *usb_ctx ;
  int rc ;
  int tmp ;
  {
  {
  rc = 0;
  ldv_spin_lock_bh_121___0((spinlock_t *)(& pd->app_lock) + 1UL);
  usb_ctx = (struct oz_usb_ctx *)pd->app_ctx[1];
  }
  if ((unsigned long )usb_ctx != (unsigned long )((struct oz_usb_ctx *)0)) {
    {
    oz_usb_get((void *)usb_ctx);
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_122___0((spinlock_t *)(& pd->app_lock) + 1UL);
  }
  if ((unsigned long )usb_ctx == (unsigned long )((struct oz_usb_ctx *)0)) {
    return (rc);
  } else {
  }
  if (usb_ctx->stopped != 0) {
    goto done;
  } else {
  }
  if ((unsigned long )usb_ctx->hport != (unsigned long )((void *)0)) {
    {
    tmp = oz_hcd_heartbeat(usb_ctx->hport);
    }
    if (tmp != 0) {
      rc = 1;
    } else {
    }
  } else {
  }
  done:
  {
  oz_usb_put((void *)usb_ctx);
  }
  return (rc);
}
}
int oz_usb_stream_create(void *hpd , u8 ep_num )
{
  struct oz_usb_ctx *usb_ctx ;
  struct oz_pd *pd ;
  int tmp___0 ;
  {
  usb_ctx = (struct oz_usb_ctx *)hpd;
  pd = usb_ctx->pd;
  if (((int )pd->mode & 64) != 0) {
    {
    oz_isoc_stream_create(pd, (int )ep_num);
    }
  } else {
    {
    oz_pd_get(pd);
    tmp___0 = oz_elt_stream_create(& pd->elt_buff, (int )ep_num, pd->max_tx_size * 4);
    }
    if (tmp___0 != 0) {
      {
      oz_pd_put(pd);
      }
      return (-1);
    } else {
    }
  }
  return (0);
}
}
int oz_usb_stream_delete(void *hpd , u8 ep_num )
{
  struct oz_usb_ctx *usb_ctx ;
  struct oz_pd *pd ;
  int tmp___0 ;
  {
  usb_ctx = (struct oz_usb_ctx *)hpd;
  if ((unsigned long )usb_ctx != (unsigned long )((struct oz_usb_ctx *)0)) {
    pd = usb_ctx->pd;
    if ((unsigned long )pd != (unsigned long )((struct oz_pd *)0)) {
      if (((int )pd->mode & 64) != 0) {
        {
        oz_isoc_stream_delete(pd, (int )ep_num);
        }
      } else {
        {
        tmp___0 = oz_elt_stream_delete(& pd->elt_buff, (int )ep_num);
        }
        if (tmp___0 != 0) {
          return (-1);
        } else {
        }
        {
        oz_pd_put(pd);
        }
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
void oz_usb_request_heartbeat(void *hpd )
{
  struct oz_usb_ctx *usb_ctx ;
  {
  usb_ctx = (struct oz_usb_ctx *)hpd;
  if ((unsigned long )usb_ctx != (unsigned long )((struct oz_usb_ctx *)0) && (unsigned long )usb_ctx->pd != (unsigned long )((struct oz_pd *)0)) {
    {
    oz_pd_request_heartbeat(usb_ctx->pd);
    }
  } else {
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_121___0(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_NOT_ARG_SIGN();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_122___0(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_NOT_ARG_SIGN();
  spin_unlock_bh(lock);
  }
  return;
}
}
__inline static __u16 __le16_to_cpup(__le16 const *p )
{
  {
  return ((__u16 )*p);
}
}
__inline static void ldv_spin_lock_bh_135(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_136(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122___0(spinlock_t *lock ) ;
__inline static u16 get_unaligned_le16(void const *p )
{
  __u16 tmp ;
  {
  {
  tmp = __le16_to_cpup((__le16 const *)p);
  }
  return (tmp);
}
}
struct oz_elt_info *oz_elt_info_alloc(struct oz_elt_buf *buf ) ;
int oz_queue_elt_info(struct oz_elt_buf *buf , u8 isoc , u8 id , struct oz_elt_info *ei ) ;
int oz_usb_control_req(void *hpd , u8 req_id , struct usb_ctrlrequest *setup , u8 const *data ,
                       int data_len ) ;
int oz_usb_get_desc_req(void *hpd , u8 req_id , u8 req_type , u8 desc_type , u8 index ,
                        __le16 windex , int offset , int len ) ;
int oz_usb_send_isoc(void *hpd , u8 ep_num , struct urb *urb ) ;
void oz_hcd_get_desc_cnf(void *hport , u8 req_id , int status , u8 const *desc ,
                         int length , int offset , int total_size ) ;
void oz_hcd_control_cnf(void *hport , u8 req_id , u8 rcode , u8 const *data , int data_len ) ;
void oz_hcd_data_ind(void *hport , u8 endpoint , u8 const *data , int data_len ) ;
static int oz_usb_submit_elt(struct oz_elt_buf *eb , struct oz_elt_info *ei , struct oz_usb_ctx *usb_ctx ,
                             u8 strid , u8 isoc )
{
  int ret ;
  struct oz_elt *elt ;
  struct oz_app_hdr *app_hdr ;
  u8 tmp ;
  {
  {
  elt = (struct oz_elt *)(& ei->data);
  app_hdr = (struct oz_app_hdr *)elt + 1U;
  elt->type = 49U;
  ei->app_id = 1U;
  ei->length = (int )((unsigned int )elt->length + 2U);
  app_hdr->app_id = 1U;
  ldv_spin_lock_bh_135(& eb->lock);
  }
  if ((unsigned int )isoc == 0U) {
    tmp = usb_ctx->tx_seq_num;
    usb_ctx->tx_seq_num = (u8 )((int )usb_ctx->tx_seq_num + 1);
    app_hdr->elt_seq_num = tmp;
    if ((unsigned int )usb_ctx->tx_seq_num == 0U) {
      usb_ctx->tx_seq_num = 1U;
    } else {
    }
  } else {
  }
  {
  ret = oz_queue_elt_info(eb, (int )isoc, (int )strid, ei);
  }
  if (ret != 0) {
    {
    oz_elt_info_free(eb, ei);
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_136(& eb->lock);
  }
  return (ret);
}
}
int oz_usb_get_desc_req(void *hpd , u8 req_id , u8 req_type , u8 desc_type , u8 index ,
                        __le16 windex , int offset , int len )
{
  struct oz_usb_ctx *usb_ctx ;
  struct oz_pd *pd ;
  struct oz_elt *elt ;
  struct oz_get_desc_req *body ;
  struct oz_elt_buf *eb ;
  struct oz_elt_info *ei ;
  struct oz_elt_info *tmp ;
  void *__gu_p ;
  void *__gu_p___0 ;
  int tmp___6 ;
  {
  {
  usb_ctx = (struct oz_usb_ctx *)hpd;
  pd = usb_ctx->pd;
  eb = & pd->elt_buff;
  tmp = oz_elt_info_alloc(& pd->elt_buff);
  ei = tmp;
  }
  if (len > 200) {
    len = 200;
  } else {
  }
  if ((unsigned long )ei == (unsigned long )((struct oz_elt_info *)0)) {
    return (-1);
  } else {
  }
  elt = (struct oz_elt *)(& ei->data);
  elt->length = 13U;
  body = (struct oz_get_desc_req *)elt + 1U;
  body->type = 1U;
  body->req_id = req_id;
  __gu_p = (void *)(& body->offset);
  {
  if (2UL == 1UL) {
    goto case_1;
  } else {
  }
  if (2UL == 2UL) {
    goto case_2;
  } else {
  }
  if (2UL == 4UL) {
    goto case_4;
  } else {
  }
  if (2UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  *((u8 *)__gu_p) = (unsigned char )offset;
  goto ldv_48178;
  case_2:
  {
  put_unaligned_le16((int )((unsigned short )offset), __gu_p);
  }
  goto ldv_48178;
  case_4:
  {
  put_unaligned_le32((unsigned int )((unsigned short )offset), __gu_p);
  }
  goto ldv_48178;
  case_8:
  {
  put_unaligned_le64((unsigned long long )((unsigned short )offset), __gu_p);
  }
  goto ldv_48178;
  switch_default:
  {
  __bad_unaligned_access_size();
  }
  goto ldv_48178;
  switch_break: ;
  }
  ldv_48178:
  __gu_p___0 = (void *)(& body->size);
  {
  if (2UL == 1UL) {
    goto case_1___0;
  } else {
  }
  if (2UL == 2UL) {
    goto case_2___0;
  } else {
  }
  if (2UL == 4UL) {
    goto case_4___0;
  } else {
  }
  if (2UL == 8UL) {
    goto case_8___0;
  } else {
  }
  goto switch_default___0;
  case_1___0:
  *((u8 *)__gu_p___0) = (unsigned char )len;
  goto ldv_48185;
  case_2___0:
  {
  put_unaligned_le16((int )((unsigned short )len), __gu_p___0);
  }
  goto ldv_48185;
  case_4___0:
  {
  put_unaligned_le32((unsigned int )((unsigned short )len), __gu_p___0);
  }
  goto ldv_48185;
  case_8___0:
  {
  put_unaligned_le64((unsigned long long )((unsigned short )len), __gu_p___0);
  }
  goto ldv_48185;
  switch_default___0:
  {
  __bad_unaligned_access_size();
  }
  goto ldv_48185;
  switch_break___0: ;
  }
  ldv_48185:
  {
  body->req_type = req_type;
  body->desc_type = desc_type;
  body->w_index = windex;
  body->index = index;
  tmp___6 = oz_usb_submit_elt(eb, ei, usb_ctx, 0, 0);
  }
  return (tmp___6);
}
}
static int oz_usb_set_config_req(void *hpd , u8 req_id , u8 index )
{
  struct oz_usb_ctx *usb_ctx ;
  struct oz_pd *pd ;
  struct oz_elt *elt ;
  struct oz_elt_buf *eb ;
  struct oz_elt_info *ei ;
  struct oz_elt_info *tmp ;
  struct oz_set_config_req *body ;
  int tmp___0 ;
  {
  {
  usb_ctx = (struct oz_usb_ctx *)hpd;
  pd = usb_ctx->pd;
  eb = & pd->elt_buff;
  tmp = oz_elt_info_alloc(& pd->elt_buff);
  ei = tmp;
  }
  if ((unsigned long )ei == (unsigned long )((struct oz_elt_info *)0)) {
    return (-1);
  } else {
  }
  {
  elt = (struct oz_elt *)(& ei->data);
  elt->length = 5U;
  body = (struct oz_set_config_req *)elt + 1U;
  body->type = 3U;
  body->req_id = req_id;
  body->index = index;
  tmp___0 = oz_usb_submit_elt(eb, ei, usb_ctx, 0, 0);
  }
  return (tmp___0);
}
}
static int oz_usb_set_interface_req(void *hpd , u8 req_id , u8 index , u8 alt )
{
  struct oz_usb_ctx *usb_ctx ;
  struct oz_pd *pd ;
  struct oz_elt *elt ;
  struct oz_elt_buf *eb ;
  struct oz_elt_info *ei ;
  struct oz_elt_info *tmp ;
  struct oz_set_interface_req *body ;
  int tmp___0 ;
  {
  {
  usb_ctx = (struct oz_usb_ctx *)hpd;
  pd = usb_ctx->pd;
  eb = & pd->elt_buff;
  tmp = oz_elt_info_alloc(& pd->elt_buff);
  ei = tmp;
  }
  if ((unsigned long )ei == (unsigned long )((struct oz_elt_info *)0)) {
    return (-1);
  } else {
  }
  {
  elt = (struct oz_elt *)(& ei->data);
  elt->length = 6U;
  body = (struct oz_set_interface_req *)elt + 1U;
  body->type = 5U;
  body->req_id = req_id;
  body->index = index;
  body->alternative = alt;
  tmp___0 = oz_usb_submit_elt(eb, ei, usb_ctx, 0, 0);
  }
  return (tmp___0);
}
}
static int oz_usb_set_clear_feature_req(void *hpd , u8 req_id , u8 type , u8 recipient ,
                                        u8 index , __le16 feature )
{
  struct oz_usb_ctx *usb_ctx ;
  struct oz_pd *pd ;
  struct oz_elt *elt ;
  struct oz_elt_buf *eb ;
  struct oz_elt_info *ei ;
  struct oz_elt_info *tmp ;
  struct oz_feature_req *body ;
  void *__gu_p ;
  int tmp___0 ;
  {
  {
  usb_ctx = (struct oz_usb_ctx *)hpd;
  pd = usb_ctx->pd;
  eb = & pd->elt_buff;
  tmp = oz_elt_info_alloc(& pd->elt_buff);
  ei = tmp;
  }
  if ((unsigned long )ei == (unsigned long )((struct oz_elt_info *)0)) {
    return (-1);
  } else {
  }
  elt = (struct oz_elt *)(& ei->data);
  elt->length = 8U;
  body = (struct oz_feature_req *)elt + 1U;
  body->type = type;
  body->req_id = req_id;
  body->recipient = recipient;
  body->index = index;
  __gu_p = (void *)(& body->feature);
  {
  if (2UL == 1UL) {
    goto case_1;
  } else {
  }
  if (2UL == 2UL) {
    goto case_2;
  } else {
  }
  if (2UL == 4UL) {
    goto case_4;
  } else {
  }
  if (2UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  *((u8 *)__gu_p) = (unsigned char )feature;
  goto ldv_48229;
  case_2:
  {
  put_unaligned_le16((int )feature, __gu_p);
  }
  goto ldv_48229;
  case_4:
  {
  put_unaligned_le32((unsigned int )feature, __gu_p);
  }
  goto ldv_48229;
  case_8:
  {
  put_unaligned_le64((unsigned long long )feature, __gu_p);
  }
  goto ldv_48229;
  switch_default:
  {
  __bad_unaligned_access_size();
  }
  goto ldv_48229;
  switch_break: ;
  }
  ldv_48229:
  {
  tmp___0 = oz_usb_submit_elt(eb, ei, usb_ctx, 0, 0);
  }
  return (tmp___0);
}
}
static int oz_usb_vendor_class_req(void *hpd , u8 req_id , u8 req_type , u8 request ,
                                   __le16 value , __le16 index , u8 const *data ,
                                   int data_len )
{
  struct oz_usb_ctx *usb_ctx ;
  struct oz_pd *pd ;
  struct oz_elt *elt ;
  struct oz_elt_buf *eb ;
  struct oz_elt_info *ei ;
  struct oz_elt_info *tmp ;
  struct oz_vendor_class_req *body ;
  void *__gu_p ;
  void *__gu_p___0 ;
  int tmp___0 ;
  {
  {
  usb_ctx = (struct oz_usb_ctx *)hpd;
  pd = usb_ctx->pd;
  eb = & pd->elt_buff;
  tmp = oz_elt_info_alloc(& pd->elt_buff);
  ei = tmp;
  }
  if ((unsigned long )ei == (unsigned long )((struct oz_elt_info *)0)) {
    return (-1);
  } else {
  }
  elt = (struct oz_elt *)(& ei->data);
  elt->length = (unsigned int )((u8 )data_len) + 10U;
  body = (struct oz_vendor_class_req *)elt + 1U;
  body->type = 7U;
  body->req_id = req_id;
  body->req_type = req_type;
  body->request = request;
  __gu_p = (void *)(& body->value);
  {
  if (2UL == 1UL) {
    goto case_1;
  } else {
  }
  if (2UL == 2UL) {
    goto case_2;
  } else {
  }
  if (2UL == 4UL) {
    goto case_4;
  } else {
  }
  if (2UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  *((u8 *)__gu_p) = (unsigned char )value;
  goto ldv_48252;
  case_2:
  {
  put_unaligned_le16((int )value, __gu_p);
  }
  goto ldv_48252;
  case_4:
  {
  put_unaligned_le32((unsigned int )value, __gu_p);
  }
  goto ldv_48252;
  case_8:
  {
  put_unaligned_le64((unsigned long long )value, __gu_p);
  }
  goto ldv_48252;
  switch_default:
  {
  __bad_unaligned_access_size();
  }
  goto ldv_48252;
  switch_break: ;
  }
  ldv_48252:
  __gu_p___0 = (void *)(& body->index);
  {
  if (2UL == 1UL) {
    goto case_1___0;
  } else {
  }
  if (2UL == 2UL) {
    goto case_2___0;
  } else {
  }
  if (2UL == 4UL) {
    goto case_4___0;
  } else {
  }
  if (2UL == 8UL) {
    goto case_8___0;
  } else {
  }
  goto switch_default___0;
  case_1___0:
  *((u8 *)__gu_p___0) = (unsigned char )index;
  goto ldv_48259;
  case_2___0:
  {
  put_unaligned_le16((int )index, __gu_p___0);
  }
  goto ldv_48259;
  case_4___0:
  {
  put_unaligned_le32((unsigned int )index, __gu_p___0);
  }
  goto ldv_48259;
  case_8___0:
  {
  put_unaligned_le64((unsigned long long )index, __gu_p___0);
  }
  goto ldv_48259;
  switch_default___0:
  {
  __bad_unaligned_access_size();
  }
  goto ldv_48259;
  switch_break___0: ;
  }
  ldv_48259: ;
  if (data_len != 0) {
    {
    memcpy((void *)(& body->data), (void const *)data, (size_t )data_len);
    }
  } else {
  }
  {
  tmp___0 = oz_usb_submit_elt(eb, ei, usb_ctx, 0, 0);
  }
  return (tmp___0);
}
}
int oz_usb_control_req(void *hpd , u8 req_id , struct usb_ctrlrequest *setup , u8 const *data ,
                       int data_len )
{
  unsigned int wvalue ;
  unsigned int windex ;
  unsigned int wlength ;
  int rc ;
  u8 if_num ;
  u8 alt ;
  {
  wvalue = (unsigned int )setup->wValue;
  windex = (unsigned int )setup->wIndex;
  wlength = (unsigned int )setup->wLength;
  rc = 0;
  if (((int )setup->bRequestType & 96) == 0) {
    {
    if ((int )setup->bRequest == 6) {
      goto case_6;
    } else {
    }
    if ((int )setup->bRequest == 9) {
      goto case_9;
    } else {
    }
    if ((int )setup->bRequest == 11) {
      goto case_11;
    } else {
    }
    if ((int )setup->bRequest == 3) {
      goto case_3;
    } else {
    }
    if ((int )setup->bRequest == 1) {
      goto case_1;
    } else {
    }
    goto switch_break;
    case_6:
    {
    rc = oz_usb_get_desc_req(hpd, (int )req_id, (int )setup->bRequestType, (int )((unsigned char )(wvalue >> 8)),
                             (int )((unsigned char )wvalue), (int )setup->wIndex,
                             0, (int )wlength);
    }
    goto ldv_48276;
    case_9:
    {
    rc = oz_usb_set_config_req(hpd, (int )req_id, (int )((unsigned char )wvalue));
    }
    goto ldv_48276;
    case_11:
    {
    if_num = (unsigned char )windex;
    alt = (unsigned char )wvalue;
    rc = oz_usb_set_interface_req(hpd, (int )req_id, (int )if_num, (int )alt);
    }
    goto ldv_48276;
    case_3:
    {
    rc = oz_usb_set_clear_feature_req(hpd, (int )req_id, 13, (int )setup->bRequestType & 15,
                                      (int )((unsigned char )windex), (int )setup->wValue);
    }
    goto ldv_48276;
    case_1:
    {
    rc = oz_usb_set_clear_feature_req(hpd, (int )req_id, 11, (int )setup->bRequestType & 15,
                                      (int )((unsigned char )windex), (int )setup->wValue);
    }
    goto ldv_48276;
    switch_break: ;
    }
    ldv_48276: ;
  } else {
    {
    rc = oz_usb_vendor_class_req(hpd, (int )req_id, (int )setup->bRequestType, (int )setup->bRequest,
                                 (int )setup->wValue, (int )setup->wIndex, data, data_len);
    }
  }
  return (rc);
}
}
int oz_usb_send_isoc(void *hpd , u8 ep_num , struct urb *urb )
{
  struct oz_usb_ctx *usb_ctx ;
  struct oz_pd *pd ;
  struct oz_elt_buf *eb ;
  int i ;
  int hdr_size ;
  u8 *data ;
  struct usb_iso_packet_descriptor *desc ;
  u8 *data___0 ;
  struct oz_elt_info *ei ;
  struct oz_elt_info *tmp ;
  struct oz_elt *elt ;
  struct oz_isoc_fixed *body ;
  int unit_count ;
  int unit_size ;
  int rem ;
  {
  usb_ctx = (struct oz_usb_ctx *)hpd;
  pd = usb_ctx->pd;
  if (((int )pd->mode & 64) != 0) {
    i = 0;
    goto ldv_48297;
    ldv_48296:
    {
    desc = (struct usb_iso_packet_descriptor *)(& urb->iso_frame_desc) + (unsigned long )i;
    data___0 = (u8 *)urb->transfer_buffer + (unsigned long )desc->offset;
    oz_send_isoc_unit(pd, (int )ep_num, (u8 const *)data___0, (int )desc->length);
    i = i + 1;
    }
    ldv_48297: ;
    if (i < urb->number_of_packets) {
      goto ldv_48296;
    } else {
    }
    return (0);
  } else {
  }
  hdr_size = 7;
  eb = & pd->elt_buff;
  i = 0;
  goto ldv_48309;
  ldv_48308:
  {
  tmp = oz_elt_info_alloc(eb);
  ei = tmp;
  }
  if ((unsigned long )ei == (unsigned long )((struct oz_elt_info *)0)) {
    return (-1);
  } else {
  }
  rem = 245;
  elt = (struct oz_elt *)(& ei->data);
  body = (struct oz_isoc_fixed *)elt + 1U;
  body->type = 23U;
  body->endpoint = ep_num;
  body->format = 3U;
  unit_size = (int )urb->iso_frame_desc[i].length;
  body->unit_size = (unsigned char )unit_size;
  data = (u8 *)elt + ((unsigned long )hdr_size + 1UL);
  unit_count = 0;
  goto ldv_48307;
  ldv_48306:
  desc = (struct usb_iso_packet_descriptor *)(& urb->iso_frame_desc) + (unsigned long )i;
  if ((unsigned int )unit_size == desc->length && desc->length <= (unsigned int )rem) {
    {
    memcpy((void *)data, (void const *)urb->transfer_buffer + (unsigned long )desc->offset,
             (size_t )unit_size);
    data = data + (unsigned long )unit_size;
    rem = rem - unit_size;
    unit_count = unit_count + 1;
    desc->status = 0;
    desc->actual_length = desc->length;
    i = i + 1;
    }
  } else {
    goto ldv_48305;
  }
  ldv_48307: ;
  if (i < urb->number_of_packets) {
    goto ldv_48306;
  } else {
  }
  ldv_48305:
  {
  elt->length = (unsigned int )((int )((u8 )hdr_size) - (int )((u8 )rem)) + 245U;
  body->frame_number = (unsigned char )unit_count;
  oz_usb_submit_elt(eb, ei, usb_ctx, (int )ep_num, (int )pd->mode & 128);
  }
  ldv_48309: ;
  if (i < urb->number_of_packets) {
    goto ldv_48308;
  } else {
  }
  return (0);
}
}
static void oz_usb_handle_ep_data(struct oz_usb_ctx *usb_ctx , struct oz_usb_hdr *usb_hdr ,
                                  int len )
{
  struct oz_data *data_hdr ;
  struct oz_multiple_fixed *body ;
  u8 *data ;
  int n ;
  int tmp ;
  struct oz_isoc_fixed *body___0 ;
  int data_len ;
  int unit_size ;
  u8 *data___0 ;
  int count ;
  int i ;
  {
  data_hdr = (struct oz_data *)usb_hdr;
  {
  if ((int )data_hdr->format == 1) {
    goto case_1;
  } else {
  }
  if ((int )data_hdr->format == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_1:
  body = (struct oz_multiple_fixed *)data_hdr;
  data = (u8 *)(& body->data);
  n = (int )(((unsigned long )len - 6UL) / (unsigned long )body->unit_size);
  goto ldv_48322;
  ldv_48321:
  {
  oz_hcd_data_ind(usb_ctx->hport, (int )body->endpoint, (u8 const *)data, (int )body->unit_size);
  data = data + (unsigned long )body->unit_size;
  }
  ldv_48322:
  tmp = n;
  n = n - 1;
  if (tmp != 0) {
    goto ldv_48321;
  } else {
  }
  goto ldv_48324;
  case_3:
  body___0 = (struct oz_isoc_fixed *)data_hdr;
  data_len = (int )((unsigned int )len - 7U);
  unit_size = (int )body___0->unit_size;
  data___0 = (u8 *)(& body___0->data);
  if (unit_size == 0) {
    goto ldv_48324;
  } else {
  }
  count = data_len / unit_size;
  i = 0;
  goto ldv_48333;
  ldv_48332:
  {
  oz_hcd_data_ind(usb_ctx->hport, (int )body___0->endpoint, (u8 const *)data___0,
                  unit_size);
  data___0 = data___0 + (unsigned long )unit_size;
  i = i + 1;
  }
  ldv_48333: ;
  if (i < count) {
    goto ldv_48332;
  } else {
  }
  goto ldv_48324;
  switch_break: ;
  }
  ldv_48324: ;
  return;
}
}
void oz_usb_rx(struct oz_pd *pd , struct oz_elt *elt )
{
  struct oz_usb_hdr *usb_hdr ;
  struct oz_usb_ctx *usb_ctx ;
  struct oz_get_desc_rsp *body ;
  int data_len ;
  u16 offs ;
  u16 tmp ;
  u16 total_size ;
  u16 tmp___0 ;
  struct oz_set_config_rsp *body___0 ;
  struct oz_set_interface_rsp *body___1 ;
  struct oz_vendor_class_rsp *body___2 ;
  {
  {
  usb_hdr = (struct oz_usb_hdr *)elt + 1U;
  ldv_spin_lock_bh_121___0((spinlock_t *)(& pd->app_lock) + 1UL);
  usb_ctx = (struct oz_usb_ctx *)pd->app_ctx[1];
  }
  if ((unsigned long )usb_ctx != (unsigned long )((struct oz_usb_ctx *)0)) {
    {
    oz_usb_get((void *)usb_ctx);
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_122___0((spinlock_t *)(& pd->app_lock) + 1UL);
  }
  if ((unsigned long )usb_ctx == (unsigned long )((struct oz_usb_ctx *)0)) {
    return;
  } else {
  }
  if (usb_ctx->stopped != 0) {
    goto done;
  } else {
  }
  if ((unsigned int )usb_hdr->elt_seq_num != 0U) {
    if ((((int )usb_ctx->rx_seq_num - (int )usb_hdr->elt_seq_num) & 128) == 0) {
      goto done;
    } else {
    }
  } else {
  }
  usb_ctx->rx_seq_num = usb_hdr->elt_seq_num;
  {
  if ((int )usb_hdr->type == 2) {
    goto case_2;
  } else {
  }
  if ((int )usb_hdr->type == 4) {
    goto case_4;
  } else {
  }
  if ((int )usb_hdr->type == 6) {
    goto case_6;
  } else {
  }
  if ((int )usb_hdr->type == 8) {
    goto case_8;
  } else {
  }
  if ((int )usb_hdr->type == 23) {
    goto case_23;
  } else {
  }
  goto switch_break;
  case_2:
  {
  body = (struct oz_get_desc_rsp *)usb_hdr;
  data_len = (int )((unsigned int )elt->length - 9U);
  tmp = get_unaligned_le16((void const *)(& body->offset));
  offs = tmp;
  tmp___0 = get_unaligned_le16((void const *)(& body->total_size));
  total_size = tmp___0;
  oz_hcd_get_desc_cnf(usb_ctx->hport, (int )body->req_id, (int )body->rcode, (u8 const *)(& body->data),
                      data_len, (int )offs, (int )total_size);
  }
  goto ldv_48349;
  case_4:
  {
  body___0 = (struct oz_set_config_rsp *)usb_hdr;
  oz_hcd_control_cnf(usb_ctx->hport, (int )body___0->req_id, (int )body___0->rcode,
                     (u8 const *)0U, 0);
  }
  goto ldv_48349;
  case_6:
  {
  body___1 = (struct oz_set_interface_rsp *)usb_hdr;
  oz_hcd_control_cnf(usb_ctx->hport, (int )body___1->req_id, (int )body___1->rcode,
                     (u8 const *)0U, 0);
  }
  goto ldv_48349;
  case_8:
  {
  body___2 = (struct oz_vendor_class_rsp *)usb_hdr;
  oz_hcd_control_cnf(usb_ctx->hport, (int )body___2->req_id, (int )body___2->rcode,
                     (u8 const *)(& body___2->data), (int )((unsigned int )elt->length - 5U));
  }
  goto ldv_48349;
  case_23:
  {
  oz_usb_handle_ep_data(usb_ctx, usb_hdr, (int )elt->length);
  }
  goto ldv_48349;
  switch_break: ;
  }
  ldv_48349: ;
  done:
  {
  oz_usb_put((void *)usb_ctx);
  }
  return;
}
}
void oz_usb_farewell(struct oz_pd *pd , u8 ep_num , u8 *data , u8 len )
{
  struct oz_usb_ctx *usb_ctx ;
  {
  {
  ldv_spin_lock_bh_121___0((spinlock_t *)(& pd->app_lock) + 1UL);
  usb_ctx = (struct oz_usb_ctx *)pd->app_ctx[1];
  }
  if ((unsigned long )usb_ctx != (unsigned long )((struct oz_usb_ctx *)0)) {
    {
    oz_usb_get((void *)usb_ctx);
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_122___0((spinlock_t *)(& pd->app_lock) + 1UL);
  }
  if ((unsigned long )usb_ctx == (unsigned long )((struct oz_usb_ctx *)0)) {
    return;
  } else {
  }
  if (usb_ctx->stopped == 0) {
    {
    oz_hcd_data_ind(usb_ctx->hport, (int )ep_num, (u8 const *)data, (int )len);
    }
  } else {
  }
  {
  oz_usb_put((void *)usb_ctx);
  }
  return;
}
}
void ldv_linux_net_register_check_return_value_probe(int retval ) ;
void ldv_linux_usb_register_check_return_value_probe(int retval ) ;
int ldv_linux_usb_dev_atomic_add_return(int i , atomic_t *v ) ;
extern void ldv_pre_probe(void) ;
static void ldv_ldv_pre_probe_210(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_211(int retval ) ;
extern void ldv_after_alloc(void * ) ;
extern struct module __this_module ;
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
__inline static void list_replace(struct list_head *old , struct list_head *new )
{
  {
  new->next = old->next;
  (new->next)->prev = new;
  new->prev = old->prev;
  (new->prev)->next = new;
  return;
}
}
__inline static void list_replace_init(struct list_head *old , struct list_head *new )
{
  {
  {
  list_replace(old, new);
  INIT_LIST_HEAD(old);
  }
  return;
}
}
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  {
  __list_del_entry(list);
  list_add_tail(list, head);
  }
  return;
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
__inline static void list_splice_tail(struct list_head *list , struct list_head *head )
{
  int tmp ;
  {
  {
  tmp = list_empty((struct list_head const *)list);
  }
  if (tmp == 0) {
    {
    __list_splice((struct list_head const *)list, head->prev, head);
    }
  } else {
  }
  return;
}
}
extern void *memset(void * , int , size_t ) ;
__inline static u64 div_u64_rem(u64 dividend , u32 divisor , u32 *remainder )
{
  {
  *remainder = (u32 )(dividend % (u64 )divisor);
  return (dividend / (u64 )divisor);
}
}
__inline static u64 div_u64(u64 dividend , u32 divisor )
{
  u32 remainder ;
  u64 tmp ;
  {
  {
  tmp = div_u64_rem(dividend, divisor, & remainder);
  }
  return (tmp);
}
}
__inline static void atomic_inc(atomic_t *v ) ;
__inline static void atomic_dec(atomic_t *v ) ;
__inline static int atomic_add_return(int i , atomic_t *v ) ;
extern void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t * ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_122(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_174(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_176(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_178(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_181(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_183(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_185(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_187(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_190(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_g_hcdlock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_g_hcdlock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_g_tasklet_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_g_tasklet_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_hcd_lock_of_oz_hcd(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_hcd_lock_of_oz_hcd(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_port_lock_of_oz_port(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_port_lock_of_oz_port(void) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void ldv_spin_lock_124(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_139(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_139(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_136(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_148(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_148(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_148(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_148(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_136(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_136(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_123(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_140___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_140___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_140___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_137(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_149(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_149(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_149(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_149(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_137(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_137(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_125(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_125(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_125(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_125(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_125(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_182(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_125(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_125(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_125(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_125(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_125(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_125(spinlock_t *lock , unsigned long flags ) ;
extern void set_normalized_timespec(struct timespec * , time_t , s64 ) ;
__inline static struct timespec timespec_sub(struct timespec lhs , struct timespec rhs )
{
  struct timespec ts_delta ;
  {
  {
  set_normalized_timespec(& ts_delta, lhs.tv_sec - rhs.tv_sec, (s64 )(lhs.tv_nsec - rhs.tv_nsec));
  }
  return (ts_delta);
}
}
__inline static s64 timespec_to_ns(struct timespec const *ts )
{
  {
  return ((long long )ts->tv_sec * 1000000000LL + (long long )ts->tv_nsec);
}
}
extern void getrawmonotonic64(struct timespec * ) ;
__inline static void getrawmonotonic(struct timespec *ts )
{
  {
  {
  getrawmonotonic64(ts);
  }
  return;
}
}
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern int device_wakeup_enable(struct device * ) ;
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
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
extern void msleep(unsigned int ) ;
extern struct kmem_cache *kmem_cache_create(char const * , size_t , size_t , unsigned long ,
                                            void (*)(void * ) ) ;
extern void kmem_cache_destroy(struct kmem_cache * ) ;
static void *ldv_kmem_cache_alloc_121(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *ldv_kmalloc_array_165(size_t n , size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void tasklet_unlock_wait(struct tasklet_struct *t )
{
  int tmp ;
  {
  goto ldv_37552;
  ldv_37551:
  __asm__ volatile ("": : : "memory");
  ldv_37552:
  {
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& t->state));
  }
  if (tmp != 0) {
    goto ldv_37551;
  } else {
  }
  return;
}
}
extern void __tasklet_schedule(struct tasklet_struct * ) ;
__inline static void tasklet_schedule(struct tasklet_struct *t )
{
  int tmp ;
  {
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& t->state));
  }
  if (tmp == 0) {
    {
    __tasklet_schedule(t);
    }
  } else {
  }
  return;
}
}
__inline static void tasklet_disable_nosync(struct tasklet_struct *t )
{
  {
  {
  atomic_inc(& t->count);
  __asm__ volatile ("": : : "memory");
  }
  return;
}
}
__inline static void tasklet_disable(struct tasklet_struct *t )
{
  {
  {
  tasklet_disable_nosync(t);
  tasklet_unlock_wait(t);
  __asm__ volatile ("mfence": : : "memory");
  }
  return;
}
}
extern void platform_device_unregister(struct platform_device * ) ;
extern struct platform_device *platform_device_alloc(char const * , int ) ;
extern int platform_device_add(struct platform_device * ) ;
extern void platform_device_put(struct platform_device * ) ;
extern int __platform_driver_register(struct platform_driver * , struct module * ) ;
static int ldv___platform_driver_register_207(struct platform_driver *ldv_func_arg1 ,
                                              struct module *ldv_func_arg2 ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
static void ldv_platform_driver_unregister_208(struct platform_driver *ldv_func_arg1 ) ;
static void ldv_platform_driver_unregister_209(struct platform_driver *ldv_func_arg1 ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{
  void *tmp ;
  {
  {
  tmp = dev_get_drvdata(& pdev->dev);
  }
  return (tmp);
}
}
extern int usb_disabled(void) ;
extern int usb_hcd_link_urb_to_ep(struct usb_hcd * , struct urb * ) ;
extern int usb_hcd_check_unlink_urb(struct usb_hcd * , struct urb * , int ) ;
extern void usb_hcd_unlink_urb_from_ep(struct usb_hcd * , struct urb * ) ;
extern void usb_hcd_giveback_urb(struct usb_hcd * , struct urb * , int ) ;
extern struct usb_hcd *usb_create_hcd(struct hc_driver const * , struct device * ,
                                      char const * ) ;
extern struct usb_hcd *usb_get_hcd(struct usb_hcd * ) ;
extern void usb_put_hcd(struct usb_hcd * ) ;
extern int usb_add_hcd(struct usb_hcd * , unsigned int , unsigned long ) ;
extern void usb_remove_hcd(struct usb_hcd * ) ;
extern void usb_hcd_poll_rh_status(struct usb_hcd * ) ;
extern void usb_hcd_resume_root_hub(struct usb_hcd * ) ;
__inline static void oz_remember_urb(struct urb *urb )
{
  {
  return;
}
}
__inline static int oz_forget_urb(struct urb *urb )
{
  {
  return (0);
}
}
static struct kmem_cache *oz_urb_link_cache ;
static int oz_hcd_start(struct usb_hcd *hcd ) ;
static void oz_hcd_stop(struct usb_hcd *hcd ) ;
static void oz_hcd_shutdown(struct usb_hcd *hcd ) ;
static int oz_hcd_urb_enqueue(struct usb_hcd *hcd , struct urb *urb , gfp_t mem_flags ) ;
static int oz_hcd_urb_dequeue(struct usb_hcd *hcd , struct urb *urb , int status ) ;
static void oz_hcd_endpoint_disable(struct usb_hcd *hcd , struct usb_host_endpoint *ep ) ;
static void oz_hcd_endpoint_reset(struct usb_hcd *hcd , struct usb_host_endpoint *ep ) ;
static int oz_hcd_get_frame_number(struct usb_hcd *hcd ) ;
static int oz_hcd_hub_status_data(struct usb_hcd *hcd , char *buf ) ;
static int oz_hcd_hub_control(struct usb_hcd *hcd , u16 req_type , u16 wvalue , u16 windex ,
                              char *buf , u16 wlength ) ;
static int oz_hcd_bus_suspend(struct usb_hcd *hcd ) ;
static int oz_hcd_bus_resume(struct usb_hcd *hcd ) ;
static int oz_plat_probe(struct platform_device *dev ) ;
static int oz_plat_remove(struct platform_device *dev ) ;
static void oz_plat_shutdown(struct platform_device *dev ) ;
static int oz_plat_suspend(struct platform_device *dev , pm_message_t msg ) ;
static int oz_plat_resume(struct platform_device *dev ) ;
static void oz_urb_process_tasklet(unsigned long unused ) ;
static int oz_build_endpoints_for_config(struct usb_hcd *hcd , struct oz_port *port ,
                                         struct usb_host_config *config , gfp_t mem_flags ) ;
static void oz_clean_endpoints_for_config(struct usb_hcd *hcd , struct oz_port *port ) ;
static int oz_build_endpoints_for_interface(struct usb_hcd *hcd , struct oz_port *port ,
                                            struct usb_host_interface *intf , gfp_t mem_flags ) ;
static void oz_clean_endpoints_for_interface(struct usb_hcd *hcd , struct oz_port *port ,
                                             int if_ix ) ;
static void oz_process_ep0_urb(struct oz_hcd *ozhcd , struct urb *urb , gfp_t mem_flags ) ;
static struct oz_urb_link *oz_remove_urb(struct oz_endpoint *ep , struct urb *urb ) ;
static void oz_hcd_clear_orphanage(struct oz_hcd *ozhcd , int status ) ;
static struct platform_device *g_plat_dev ;
static struct oz_hcd *g_ozhcd ;
static spinlock_t g_hcdlock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "g_hcdlock", 0, 0UL}}}};
static char const g_hcd_name[10U] =
  { 'O', 'z', 'm', 'o',
        ' ', 'W', 'P', 'A',
        'N', '\000'};
static spinlock_t g_tasklet_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "g_tasklet_lock",
                                                     0, 0UL}}}};
static struct tasklet_struct g_urb_process_tasklet ;
static struct tasklet_struct g_urb_cancel_tasklet ;
static atomic_t g_pending_urbs = {0};
static atomic_t g_usb_frame_number = {0};
static struct hc_driver const g_oz_hc_drv =
     {(char const *)(& g_hcd_name), "Ozmo Devices WPAN", 3344UL, 0, 16, 0, & oz_hcd_start,
    0, 0, & oz_hcd_stop, & oz_hcd_shutdown, & oz_hcd_get_frame_number, & oz_hcd_urb_enqueue,
    & oz_hcd_urb_dequeue, 0, 0, & oz_hcd_endpoint_disable, & oz_hcd_endpoint_reset,
    & oz_hcd_hub_status_data, & oz_hcd_hub_control, & oz_hcd_bus_suspend, & oz_hcd_bus_resume,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct platform_driver g_oz_plat_drv =
     {& oz_plat_probe, & oz_plat_remove, & oz_plat_shutdown, & oz_plat_suspend, & oz_plat_resume,
    {"ozwpan", 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 0, (_Bool)0};
__inline static struct oz_hcd *oz_hcd_private(struct usb_hcd *hcd )
{
  {
  return ((struct oz_hcd *)(& hcd->hcd_priv));
}
}
static int oz_get_port_from_addr(struct oz_hcd *ozhcd , u8 bus_addr )
{
  int i ;
  {
  i = 0;
  goto ldv_47555;
  ldv_47554: ;
  if ((int )ozhcd->ports[i].bus_addr == (int )bus_addr) {
    return (i);
  } else {
  }
  i = i + 1;
  ldv_47555: ;
  if (i <= 7) {
    goto ldv_47554;
  } else {
  }
  return (ozhcd->conn_port);
}
}
static struct oz_urb_link *oz_alloc_urb_link(void)
{
  void *tmp ;
  {
  {
  tmp = ldv_kmem_cache_alloc_121(oz_urb_link_cache, 32U);
  }
  return ((struct oz_urb_link *)tmp);
}
}
static void oz_free_urb_link(struct oz_urb_link *urbl )
{
  {
  if ((unsigned long )urbl == (unsigned long )((struct oz_urb_link *)0)) {
    return;
  } else {
  }
  {
  kmem_cache_free(oz_urb_link_cache, (void *)urbl);
  }
  return;
}
}
static struct oz_endpoint *oz_ep_alloc(int buffer_size , gfp_t mem_flags )
{
  struct oz_endpoint *ep ;
  void *tmp ;
  {
  {
  tmp = kzalloc((unsigned long )buffer_size + 96UL, mem_flags);
  ep = (struct oz_endpoint *)tmp;
  }
  if ((unsigned long )ep != (unsigned long )((struct oz_endpoint *)0)) {
    {
    INIT_LIST_HEAD(& ep->urb_list);
    INIT_LIST_HEAD(& ep->link);
    ep->credit = -1;
    }
    if (buffer_size != 0) {
      ep->buffer_size = buffer_size;
      ep->buffer = (u8 *)ep + 1U;
    } else {
    }
  } else {
  }
  return (ep);
}
}
static struct oz_urb_link *oz_uncancel_urb(struct oz_hcd *ozhcd , struct urb *urb )
{
  struct oz_urb_link *urbl ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)ozhcd->urb_cancel_list.next;
  urbl = (struct oz_urb_link *)__mptr;
  goto ldv_47578;
  ldv_47577: ;
  if ((unsigned long )urb == (unsigned long )urbl->urb) {
    {
    list_del_init(& urbl->link);
    }
    return (urbl);
  } else {
  }
  __mptr___0 = (struct list_head const *)urbl->link.next;
  urbl = (struct oz_urb_link *)__mptr___0;
  ldv_47578: ;
  if ((unsigned long )(& urbl->link) != (unsigned long )(& ozhcd->urb_cancel_list)) {
    goto ldv_47577;
  } else {
  }
  return ((struct oz_urb_link *)0);
}
}
static void oz_complete_urb(struct usb_hcd *hcd , struct urb *urb , int status )
{
  struct oz_hcd *ozhcd ;
  struct oz_hcd *tmp ;
  unsigned long irq_state ;
  struct oz_urb_link *cancel_urbl ;
  int tmp___1 ;
  {
  {
  tmp = oz_hcd_private(hcd);
  ozhcd = tmp;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_122(& g_tasklet_lock);
  usb_hcd_unlink_urb_from_ep(hcd, urb);
  urb->hcpriv = (void *)0;
  cancel_urbl = oz_uncancel_urb(ozhcd, urb);
  ldv_spin_unlock_123(& g_tasklet_lock);
  tmp___1 = oz_forget_urb(urb);
  }
  if (tmp___1 != 0) {
  } else {
    {
    atomic_dec(& g_pending_urbs);
    usb_hcd_giveback_urb(hcd, urb, status);
    }
  }
  {
  ldv_spin_lock_124(& g_tasklet_lock);
  ldv_spin_unlock_irqrestore_125(& g_tasklet_lock, irq_state);
  oz_free_urb_link(cancel_urbl);
  }
  return;
}
}
static void oz_ep_free(struct oz_port *port , struct oz_endpoint *ep )
{
  struct list_head list ;
  struct oz_hcd *ozhcd ;
  {
  if ((unsigned long )port != (unsigned long )((struct oz_port *)0)) {
    list.next = & list;
    list.prev = & list;
    ozhcd = port->ozhcd;
    if ((ep->flags & 2U) != 0U) {
      {
      oz_usb_stream_delete(port->hpd, (int )ep->ep_num);
      }
    } else {
    }
    {
    ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
    list_replace_init(& ep->urb_list, & list);
    list_splice_tail(& list, & ozhcd->orphanage);
    ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
    }
  } else {
  }
  {
  kfree((void const *)ep);
  }
  return;
}
}
static void oz_complete_buffered_urb(struct oz_port *port , struct oz_endpoint *ep ,
                                     struct urb *urb )
{
  int data_len ;
  int available_space ;
  int copy_len ;
  {
  data_len = (int )*(ep->buffer + (unsigned long )ep->out_ix);
  if ((u32 )data_len <= urb->transfer_buffer_length) {
    available_space = data_len;
  } else {
    available_space = (int )urb->transfer_buffer_length;
  }
  ep->out_ix = ep->out_ix + 1;
  if (ep->out_ix == ep->buffer_size) {
    ep->out_ix = 0;
  } else {
  }
  copy_len = ep->buffer_size - ep->out_ix;
  if (copy_len >= available_space) {
    copy_len = available_space;
  } else {
  }
  {
  memcpy(urb->transfer_buffer, (void const *)ep->buffer + (unsigned long )ep->out_ix,
           (size_t )copy_len);
  }
  if (copy_len < available_space) {
    {
    memcpy(urb->transfer_buffer + (unsigned long )copy_len, (void const *)ep->buffer,
             (size_t )(available_space - copy_len));
    ep->out_ix = available_space - copy_len;
    }
  } else {
    ep->out_ix = ep->out_ix + copy_len;
  }
  urb->actual_length = (u32 )available_space;
  if (ep->out_ix == ep->buffer_size) {
    ep->out_ix = 0;
  } else {
  }
  {
  ep->buffered_units = ep->buffered_units - 1;
  oz_complete_urb((port->ozhcd)->hcd, urb, 0);
  }
  return;
}
}
static int oz_enqueue_ep_urb(struct oz_port *port , u8 ep_addr , int in_dir , struct urb *urb ,
                             u8 req_id )
{
  struct oz_urb_link *urbl ;
  struct oz_endpoint *ep ;
  int err ;
  {
  ep = (struct oz_endpoint *)0;
  err = 0;
  if ((unsigned int )ep_addr > 15U) {
    return (-22);
  } else {
  }
  {
  urbl = oz_alloc_urb_link();
  }
  if ((unsigned long )urbl == (unsigned long )((struct oz_urb_link *)0)) {
    return (-12);
  } else {
  }
  {
  urbl->submit_counter = 0U;
  urbl->urb = urb;
  urbl->req_id = req_id;
  urbl->ep_num = ep_addr;
  ldv_spin_lock_bh_126(& (port->ozhcd)->hcd_lock);
  }
  if (urb->unlinked != 0) {
    {
    ldv_spin_unlock_bh_127(& (port->ozhcd)->hcd_lock);
    oz_complete_urb((port->ozhcd)->hcd, urb, 0);
    oz_free_urb_link(urbl);
    }
    return (0);
  } else {
  }
  if (in_dir != 0) {
    ep = port->in_ep[(int )ep_addr];
  } else {
    ep = port->out_ep[(int )ep_addr];
  }
  if ((unsigned long )ep == (unsigned long )((struct oz_endpoint *)0)) {
    err = -12;
    goto out;
  } else {
  }
  if (((int )ep->attrib & 3) == 3 && ep->buffered_units > 0) {
    {
    oz_free_urb_link(urbl);
    ldv_spin_unlock_bh_127(& (port->ozhcd)->hcd_lock);
    oz_complete_buffered_urb(port, ep, urb);
    }
    return (0);
  } else {
  }
  if ((unsigned long )port->hpd != (unsigned long )((void *)0)) {
    {
    list_add_tail(& urbl->link, & ep->urb_list);
    }
    if ((in_dir == 0 && (unsigned int )ep_addr != 0U) && ep->credit < 0) {
      {
      getrawmonotonic(& ep->timestamp);
      ep->credit = 0;
      }
    } else {
    }
  } else {
    err = -32;
  }
  out:
  {
  ldv_spin_unlock_bh_127(& (port->ozhcd)->hcd_lock);
  }
  if (err != 0) {
    {
    oz_free_urb_link(urbl);
    }
  } else {
  }
  return (err);
}
}
static int oz_dequeue_ep_urb(struct oz_port *port , u8 ep_addr , int in_dir , struct urb *urb )
{
  struct oz_urb_link *urbl ;
  struct oz_endpoint *ep ;
  struct list_head *e ;
  struct list_head const *__mptr ;
  {
  {
  urbl = (struct oz_urb_link *)0;
  ldv_spin_lock_bh_126(& (port->ozhcd)->hcd_lock);
  }
  if (in_dir != 0) {
    ep = port->in_ep[(int )ep_addr];
  } else {
    ep = port->out_ep[(int )ep_addr];
  }
  if ((unsigned long )ep != (unsigned long )((struct oz_endpoint *)0)) {
    e = ep->urb_list.next;
    goto ldv_47635;
    ldv_47634:
    __mptr = (struct list_head const *)e;
    urbl = (struct oz_urb_link *)__mptr;
    if ((unsigned long )urbl->urb == (unsigned long )urb) {
      {
      list_del_init(e);
      }
      goto ldv_47633;
    } else {
    }
    urbl = (struct oz_urb_link *)0;
    e = e->next;
    ldv_47635: ;
    if ((unsigned long )e != (unsigned long )(& ep->urb_list)) {
      goto ldv_47634;
    } else {
    }
    ldv_47633: ;
  } else {
  }
  {
  ldv_spin_unlock_bh_127(& (port->ozhcd)->hcd_lock);
  oz_free_urb_link(urbl);
  }
  return ((unsigned long )urbl != (unsigned long )((struct oz_urb_link *)0) ? 0 : -43);
}
}
static struct urb *oz_find_urb_by_id(struct oz_port *port , int ep_ix , u8 req_id )
{
  struct oz_hcd *ozhcd ;
  struct urb *urb ;
  struct oz_urb_link *urbl ;
  struct oz_endpoint *ep ;
  struct list_head *e ;
  struct list_head const *__mptr ;
  {
  {
  ozhcd = port->ozhcd;
  urb = (struct urb *)0;
  ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
  ep = port->out_ep[ep_ix];
  }
  if ((unsigned long )ep != (unsigned long )((struct oz_endpoint *)0)) {
    e = ep->urb_list.next;
    goto ldv_47650;
    ldv_47649:
    __mptr = (struct list_head const *)e;
    urbl = (struct oz_urb_link *)__mptr;
    if ((int )urbl->req_id == (int )req_id) {
      {
      urb = urbl->urb;
      list_del_init(e);
      }
      goto ldv_47648;
    } else {
    }
    e = e->next;
    ldv_47650: ;
    if ((unsigned long )e != (unsigned long )(& ep->urb_list)) {
      goto ldv_47649;
    } else {
    }
    ldv_47648: ;
  } else {
  }
  {
  ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
  }
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    {
    oz_free_urb_link(urbl);
    }
  } else {
  }
  return (urb);
}
}
static void oz_acquire_port(struct oz_port *port , void *hpd )
{
  {
  {
  INIT_LIST_HEAD(& port->isoc_out_ep);
  INIT_LIST_HEAD(& port->isoc_in_ep);
  port->flags = port->flags | 3U;
  port->status = port->status | 65537U;
  oz_usb_get(hpd);
  port->hpd = hpd;
  }
  return;
}
}
static struct oz_hcd *oz_hcd_claim(void)
{
  struct oz_hcd *ozhcd ;
  {
  {
  ldv_spin_lock_bh_136(& g_hcdlock);
  ozhcd = g_ozhcd;
  }
  if ((unsigned long )ozhcd != (unsigned long )((struct oz_hcd *)0)) {
    {
    usb_get_hcd(ozhcd->hcd);
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_137(& g_hcdlock);
  }
  return (ozhcd);
}
}
__inline static void oz_hcd_put(struct oz_hcd *ozhcd )
{
  {
  if ((unsigned long )ozhcd != (unsigned long )((struct oz_hcd *)0)) {
    {
    usb_put_hcd(ozhcd->hcd);
    }
  } else {
  }
  return;
}
}
struct oz_port *oz_hcd_pd_arrived(void *hpd )
{
  int i ;
  struct oz_port *hport ;
  struct oz_hcd *ozhcd ;
  struct oz_endpoint *ep ;
  struct oz_port *port ;
  {
  {
  ozhcd = oz_hcd_claim();
  }
  if ((unsigned long )ozhcd == (unsigned long )((struct oz_hcd *)0)) {
    return ((struct oz_port *)0);
  } else {
  }
  {
  ep = oz_ep_alloc(0, 32U);
  }
  if ((unsigned long )ep == (unsigned long )((struct oz_endpoint *)0)) {
    goto err_put;
  } else {
  }
  {
  ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
  }
  if (ozhcd->conn_port >= 0) {
    goto err_unlock;
  } else {
  }
  i = 0;
  goto ldv_47674;
  ldv_47673:
  {
  port = (struct oz_port *)(& ozhcd->ports) + (unsigned long )i;
  ldv_spin_lock_139(& port->port_lock);
  }
  if ((port->flags & 3U) == 0U) {
    {
    oz_acquire_port(port, hpd);
    ldv_spin_unlock_140___0(& port->port_lock);
    }
    goto ldv_47672;
  } else {
  }
  {
  ldv_spin_unlock_140___0(& port->port_lock);
  i = i + 1;
  }
  ldv_47674: ;
  if (i <= 7) {
    goto ldv_47673;
  } else {
  }
  ldv_47672: ;
  if (i == 8) {
    goto err_unlock;
  } else {
  }
  {
  ozhcd->conn_port = i;
  hport = (struct oz_port *)(& ozhcd->ports) + (unsigned long )i;
  hport->out_ep[0] = ep;
  ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
  }
  if ((int )ozhcd->flags & 1) {
    {
    usb_hcd_resume_root_hub(ozhcd->hcd);
    }
  } else {
  }
  {
  usb_hcd_poll_rh_status(ozhcd->hcd);
  oz_hcd_put(ozhcd);
  }
  return (hport);
  err_unlock:
  {
  ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
  oz_ep_free((struct oz_port *)0, ep);
  }
  err_put:
  {
  oz_hcd_put(ozhcd);
  }
  return ((struct oz_port *)0);
}
}
void oz_hcd_pd_departed(struct oz_port *port )
{
  struct oz_hcd *ozhcd ;
  void *hpd ;
  struct oz_endpoint *ep ;
  {
  ep = (struct oz_endpoint *)0;
  if ((unsigned long )port == (unsigned long )((struct oz_port *)0)) {
    return;
  } else {
  }
  ozhcd = port->ozhcd;
  if ((unsigned long )ozhcd == (unsigned long )((struct oz_hcd *)0)) {
    return;
  } else {
  }
  {
  ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
  }
  if (ozhcd->conn_port >= 0 && (unsigned long )port == (unsigned long )((struct oz_port *)(& ozhcd->ports) + (unsigned long )ozhcd->conn_port)) {
    ozhcd->conn_port = -1;
  } else {
  }
  {
  ldv_spin_lock_139(& port->port_lock);
  port->flags = port->flags | 4U;
  ldv_spin_unlock_140___0(& port->port_lock);
  ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
  oz_clean_endpoints_for_config(ozhcd->hcd, port);
  ldv_spin_lock_bh_148(& port->port_lock);
  hpd = port->hpd;
  port->hpd = (void *)0;
  port->bus_addr = 255U;
  port->config_num = 0U;
  port->flags = port->flags & 4294967290U;
  port->flags = port->flags | 2U;
  port->status = port->status & 4294967292U;
  port->status = port->status | 65536U;
  }
  if ((unsigned long )port->out_ep[0] != (unsigned long )((struct oz_endpoint *)0)) {
    ep = port->out_ep[0];
    port->out_ep[0] = (struct oz_endpoint *)0;
  } else {
  }
  {
  ldv_spin_unlock_bh_149(& port->port_lock);
  }
  if ((unsigned long )ep != (unsigned long )((struct oz_endpoint *)0)) {
    {
    oz_ep_free(port, ep);
    }
  } else {
  }
  {
  usb_hcd_poll_rh_status(ozhcd->hcd);
  oz_usb_put(hpd);
  }
  return;
}
}
void oz_hcd_pd_reset(void *hpd , void *hport )
{
  struct oz_port *port ;
  struct oz_hcd *ozhcd ;
  {
  {
  port = (struct oz_port *)hport;
  ozhcd = port->ozhcd;
  ldv_spin_lock_bh_148(& port->port_lock);
  port->flags = port->flags | 2U;
  port->status = port->status | 16U;
  port->status = port->status | 1048576U;
  ldv_spin_unlock_bh_149(& port->port_lock);
  oz_clean_endpoints_for_config(ozhcd->hcd, port);
  usb_hcd_poll_rh_status(ozhcd->hcd);
  }
  return;
}
}
void oz_hcd_get_desc_cnf(void *hport , u8 req_id , int status , u8 const *desc ,
                         int length , int offset , int total_size )
{
  struct oz_port *port ;
  struct urb *urb ;
  int err ;
  int copy_len ;
  int required_size ;
  struct usb_ctrlrequest *setup ;
  unsigned int wvalue ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  port = (struct oz_port *)hport;
  err = 0;
  urb = oz_find_urb_by_id(port, 0, (int )req_id);
  }
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    return;
  } else {
  }
  if (status == 0) {
    required_size = (int )urb->transfer_buffer_length;
    if (required_size > total_size) {
      required_size = total_size;
    } else {
    }
    copy_len = required_size - offset;
    if (length <= copy_len) {
      copy_len = length;
    } else {
    }
    {
    memcpy(urb->transfer_buffer + (unsigned long )offset, (void const *)desc,
             (size_t )copy_len);
    offset = offset + copy_len;
    }
    if (offset < required_size) {
      {
      setup = (struct usb_ctrlrequest *)urb->setup_packet;
      wvalue = (unsigned int )setup->wValue;
      tmp___1 = oz_enqueue_ep_urb(port, 0, 0, urb, (int )req_id);
      }
      if (tmp___1 != 0) {
        err = -12;
      } else {
        {
        tmp___0 = oz_usb_get_desc_req(port->hpd, (int )req_id, (int )setup->bRequestType,
                                      (int )((unsigned char )(wvalue >> 8)), (int )((unsigned char )wvalue),
                                      (int )setup->wIndex, offset, required_size - offset);
        }
        if (tmp___0 != 0) {
          {
          oz_dequeue_ep_urb(port, 0, 0, urb);
          err = -12;
          }
        } else {
        }
      }
      if (err == 0) {
        return;
      } else {
      }
    } else {
    }
  } else {
  }
  {
  urb->actual_length = (u32 )total_size;
  oz_complete_urb((port->ozhcd)->hcd, urb, 0);
  }
  return;
}
}
static void oz_display_conf_type(u8 t )
{
  {
  {
  if ((int )t == 0) {
    goto case_0;
  } else {
  }
  if ((int )t == 1) {
    goto case_1;
  } else {
  }
  if ((int )t == 3) {
    goto case_3;
  } else {
  }
  if ((int )t == 5) {
    goto case_5;
  } else {
  }
  if ((int )t == 6) {
    goto case_6;
  } else {
  }
  if ((int )t == 7) {
    goto case_7;
  } else {
  }
  if ((int )t == 8) {
    goto case_8;
  } else {
  }
  if ((int )t == 9) {
    goto case_9;
  } else {
  }
  if ((int )t == 10) {
    goto case_10;
  } else {
  }
  if ((int )t == 11) {
    goto case_11;
  } else {
  }
  if ((int )t == 12) {
    goto case_12;
  } else {
  }
  goto switch_break;
  case_0: ;
  goto ldv_47716;
  case_1: ;
  goto ldv_47716;
  case_3: ;
  goto ldv_47716;
  case_5: ;
  goto ldv_47716;
  case_6: ;
  goto ldv_47716;
  case_7: ;
  goto ldv_47716;
  case_8: ;
  goto ldv_47716;
  case_9: ;
  goto ldv_47716;
  case_10: ;
  goto ldv_47716;
  case_11: ;
  goto ldv_47716;
  case_12: ;
  goto ldv_47716;
  switch_break: ;
  }
  ldv_47716: ;
  return;
}
}
static void oz_hcd_complete_set_config(struct oz_port *port , struct urb *urb , u8 rcode ,
                                       u8 config_num )
{
  int rc ;
  struct usb_hcd *hcd ;
  int tmp ;
  {
  rc = 0;
  hcd = (port->ozhcd)->hcd;
  if ((unsigned int )rcode == 0U) {
    {
    port->config_num = config_num;
    oz_clean_endpoints_for_config(hcd, port);
    tmp = oz_build_endpoints_for_config(hcd, port, (urb->dev)->config + ((unsigned long )port->config_num + 0xffffffffffffffffUL),
                                        32U);
    }
    if (tmp != 0) {
      rc = -12;
    } else {
    }
  } else {
    rc = -12;
  }
  {
  oz_complete_urb(hcd, urb, rc);
  }
  return;
}
}
static void oz_hcd_complete_set_interface(struct oz_port *port , struct urb *urb ,
                                          u8 rcode , u8 if_num , u8 alt )
{
  struct usb_hcd *hcd ;
  int rc ;
  struct usb_host_config *config ;
  struct usb_host_interface *intf ;
  int tmp___0 ;
  {
  hcd = (port->ozhcd)->hcd;
  rc = 0;
  if ((unsigned int )rcode == 0U && (unsigned int )port->config_num != 0U) {
    {
    oz_clean_endpoints_for_interface(hcd, port, (int )if_num);
    config = (urb->dev)->config + ((unsigned long )port->config_num + 0xffffffffffffffffUL);
    intf = (struct usb_host_interface *)(& (config->intf_cache[(int )if_num])->altsetting) + (unsigned long )alt;
    tmp___0 = oz_build_endpoints_for_interface(hcd, port, intf, 32U);
    }
    if (tmp___0 != 0) {
      rc = -12;
    } else {
      (port->iface + (unsigned long )if_num)->alt = alt;
    }
  } else {
    rc = -12;
  }
  {
  oz_complete_urb(hcd, urb, rc);
  }
  return;
}
}
void oz_hcd_control_cnf(void *hport , u8 req_id , u8 rcode , u8 const *data , int data_len )
{
  struct oz_port *port ;
  struct urb *urb ;
  struct usb_ctrlrequest *setup ;
  struct usb_hcd *hcd ;
  unsigned int windex ;
  unsigned int wvalue ;
  int copy_len ;
  {
  {
  port = (struct oz_port *)hport;
  hcd = (port->ozhcd)->hcd;
  urb = oz_find_urb_by_id(port, 0, (int )req_id);
  }
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    return;
  } else {
  }
  setup = (struct usb_ctrlrequest *)urb->setup_packet;
  windex = (unsigned int )setup->wIndex;
  wvalue = (unsigned int )setup->wValue;
  if (((int )setup->bRequestType & 96) == 0) {
    {
    oz_display_conf_type((int )setup->bRequest);
    }
    {
    if ((int )setup->bRequest == 9) {
      goto case_9;
    } else {
    }
    if ((int )setup->bRequest == 11) {
      goto case_11;
    } else {
    }
    goto switch_default;
    case_9:
    {
    oz_hcd_complete_set_config(port, urb, (int )rcode, (int )((unsigned char )wvalue));
    }
    goto ldv_47775;
    case_11:
    {
    oz_hcd_complete_set_interface(port, urb, (int )rcode, (int )((unsigned char )windex),
                                  (int )((unsigned char )wvalue));
    }
    goto ldv_47775;
    switch_default:
    {
    oz_complete_urb(hcd, urb, 0);
    }
    switch_break: ;
    }
    ldv_47775: ;
  } else {
    if (data_len != 0) {
      if ((u32 )data_len <= urb->transfer_buffer_length) {
        copy_len = data_len;
      } else {
        copy_len = (int )urb->transfer_buffer_length;
      }
      {
      memcpy(urb->transfer_buffer, (void const *)data, (size_t )copy_len);
      urb->actual_length = (u32 )copy_len;
      }
    } else {
    }
    {
    oz_complete_urb(hcd, urb, 0);
    }
  }
  return;
}
}
static int oz_hcd_buffer_data(struct oz_endpoint *ep , u8 const *data , int data_len )
{
  int space ;
  int copy_len ;
  {
  if ((unsigned long )ep->buffer == (unsigned long )((u8 *)0U)) {
    return (-1);
  } else {
  }
  space = (ep->out_ix - ep->in_ix) + -1;
  if (space < 0) {
    space = space + ep->buffer_size;
  } else {
  }
  if (space < data_len + 1) {
    return (-1);
  } else {
  }
  *(ep->buffer + (unsigned long )ep->in_ix) = (unsigned char )data_len;
  ep->in_ix = ep->in_ix + 1;
  if (ep->in_ix == ep->buffer_size) {
    ep->in_ix = 0;
  } else {
  }
  copy_len = ep->buffer_size - ep->in_ix;
  if (copy_len > data_len) {
    copy_len = data_len;
  } else {
  }
  {
  memcpy((void *)ep->buffer + (unsigned long )ep->in_ix, (void const *)data, (size_t )copy_len);
  }
  if (copy_len < data_len) {
    {
    memcpy((void *)ep->buffer, (void const *)data + (unsigned long )copy_len,
             (size_t )(data_len - copy_len));
    ep->in_ix = data_len - copy_len;
    }
  } else {
    ep->in_ix = ep->in_ix + copy_len;
  }
  if (ep->in_ix == ep->buffer_size) {
    ep->in_ix = 0;
  } else {
  }
  ep->buffered_units = ep->buffered_units + 1;
  return (0);
}
}
void oz_hcd_data_ind(void *hport , u8 endpoint , u8 const *data , int data_len )
{
  struct oz_port *port ;
  struct oz_endpoint *ep ;
  struct oz_hcd *ozhcd ;
  struct oz_urb_link *urbl ;
  struct list_head const *__mptr ;
  struct urb *urb ;
  int copy_len ;
  int tmp ;
  {
  {
  port = (struct oz_port *)hport;
  ozhcd = port->ozhcd;
  ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
  ep = port->in_ep[(int )endpoint & 15];
  }
  if ((unsigned long )ep == (unsigned long )((struct oz_endpoint *)0)) {
    goto done;
  } else {
  }
  {
  if (((int )ep->attrib & 3) == 3) {
    goto case_3;
  } else {
  }
  if (((int )ep->attrib & 3) == 2) {
    goto case_2;
  } else {
  }
  if (((int )ep->attrib & 3) == 1) {
    goto case_1;
  } else {
  }
  goto switch_break;
  case_3: ;
  case_2:
  {
  tmp = list_empty((struct list_head const *)(& ep->urb_list));
  }
  if (tmp == 0) {
    {
    __mptr = (struct list_head const *)ep->urb_list.next;
    urbl = (struct oz_urb_link *)__mptr;
    list_del_init(& urbl->link);
    ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
    urb = urbl->urb;
    oz_free_urb_link(urbl);
    }
    if ((u32 )data_len <= urb->transfer_buffer_length) {
      copy_len = data_len;
    } else {
      copy_len = (int )urb->transfer_buffer_length;
    }
    {
    memcpy(urb->transfer_buffer, (void const *)data, (size_t )copy_len);
    urb->actual_length = (u32 )copy_len;
    oz_complete_urb((port->ozhcd)->hcd, urb, 0);
    }
    return;
  } else {
  }
  {
  oz_hcd_buffer_data(ep, data, data_len);
  }
  goto ldv_47808;
  case_1:
  {
  oz_hcd_buffer_data(ep, data, data_len);
  }
  goto ldv_47808;
  switch_break: ;
  }
  ldv_47808: ;
  done:
  {
  ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
  }
  return;
}
}
__inline static int oz_usb_get_frame_number(void)
{
  int tmp ;
  {
  {
  tmp = atomic_add_return(1, & g_usb_frame_number);
  }
  return (tmp);
}
}
int oz_hcd_heartbeat(void *hport )
{
  int rc ;
  struct oz_port *port ;
  struct oz_hcd *ozhcd ;
  struct oz_urb_link *urbl ;
  struct oz_urb_link *n ;
  struct list_head xfr_list ;
  struct urb *urb ;
  struct oz_endpoint *ep ;
  struct timespec ts ;
  struct timespec delta ;
  struct list_head const *__mptr ;
  s64 tmp ;
  u64 tmp___0 ;
  struct list_head const *__mptr___0 ;
  int tmp___1 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  s64 tmp___2 ;
  u64 tmp___3 ;
  struct list_head const *__mptr___6 ;
  struct list_head const *__mptr___7 ;
  struct urb *urb___0 ;
  int len ;
  int copy_len ;
  int i ;
  struct list_head const *__mptr___8 ;
  struct list_head const *__mptr___9 ;
  int tmp___4 ;
  int tmp___5 ;
  struct list_head const *__mptr___10 ;
  struct list_head const *__mptr___11 ;
  struct list_head const *__mptr___12 ;
  struct list_head const *__mptr___13 ;
  struct list_head const *__mptr___14 ;
  struct list_head const *__mptr___15 ;
  int tmp___7 ;
  struct list_head const *__mptr___16 ;
  struct list_head const *__mptr___17 ;
  struct list_head const *__mptr___18 ;
  {
  {
  rc = 0;
  port = (struct oz_port *)hport;
  ozhcd = port->ozhcd;
  xfr_list.next = & xfr_list;
  xfr_list.prev = & xfr_list;
  getrawmonotonic(& ts);
  ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
  __mptr = (struct list_head const *)port->isoc_out_ep.next;
  ep = (struct oz_endpoint *)__mptr + 0xfffffffffffffff0UL;
  }
  goto ldv_47837;
  ldv_47836: ;
  if (ep->credit < 0) {
    goto ldv_47830;
  } else {
  }
  {
  delta = timespec_sub(ts, ep->timestamp);
  tmp = timespec_to_ns((struct timespec const *)(& delta));
  tmp___0 = div_u64((u64 )tmp, 1000000U);
  ep->credit = (int )((unsigned int )ep->credit + (unsigned int )tmp___0);
  }
  if (ep->credit > ep->credit_ceiling) {
    ep->credit = ep->credit_ceiling;
  } else {
  }
  ep->timestamp = ts;
  goto ldv_47835;
  ldv_47834:
  __mptr___0 = (struct list_head const *)ep->urb_list.next;
  urbl = (struct oz_urb_link *)__mptr___0;
  urb = urbl->urb;
  if (ep->credit + 1 < urb->number_of_packets) {
    goto ldv_47833;
  } else {
  }
  ep->credit = ep->credit - urb->number_of_packets;
  if (ep->credit < 0) {
    ep->credit = 0;
  } else {
  }
  {
  list_move_tail(& urbl->link, & xfr_list);
  }
  ldv_47835: ;
  if (ep->credit != 0) {
    {
    tmp___1 = list_empty((struct list_head const *)(& ep->urb_list));
    }
    if (tmp___1 == 0) {
      goto ldv_47834;
    } else {
      goto ldv_47833;
    }
  } else {
  }
  ldv_47833: ;
  ldv_47830:
  __mptr___1 = (struct list_head const *)ep->link.next;
  ep = (struct oz_endpoint *)__mptr___1 + 0xfffffffffffffff0UL;
  ldv_47837: ;
  if ((unsigned long )(& ep->link) != (unsigned long )(& port->isoc_out_ep)) {
    goto ldv_47836;
  } else {
  }
  {
  ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
  __mptr___2 = (struct list_head const *)xfr_list.next;
  urbl = (struct oz_urb_link *)__mptr___2;
  __mptr___3 = (struct list_head const *)urbl->link.next;
  n = (struct oz_urb_link *)__mptr___3;
  }
  goto ldv_47846;
  ldv_47845:
  {
  urb = urbl->urb;
  list_del_init(& urbl->link);
  urb->error_count = 0;
  urb->start_frame = oz_usb_get_frame_number();
  oz_usb_send_isoc(port->hpd, (int )urbl->ep_num, urb);
  oz_free_urb_link(urbl);
  oz_complete_urb((port->ozhcd)->hcd, urb, 0);
  urbl = n;
  __mptr___4 = (struct list_head const *)n->link.next;
  n = (struct oz_urb_link *)__mptr___4;
  }
  ldv_47846: ;
  if ((unsigned long )(& urbl->link) != (unsigned long )(& xfr_list)) {
    goto ldv_47845;
  } else {
  }
  {
  ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
  __mptr___5 = (struct list_head const *)port->isoc_in_ep.next;
  ep = (struct oz_endpoint *)__mptr___5 + 0xfffffffffffffff0UL;
  }
  goto ldv_47870;
  ldv_47869: ;
  if ((int )ep->flags & 1) {
    if (ep->buffered_units > 99) {
      ep->flags = ep->flags & 4294967294U;
      ep->credit = 0;
      ep->timestamp = ts;
      ep->start_frame = 0;
    } else {
    }
    goto ldv_47852;
  } else {
  }
  {
  delta = timespec_sub(ts, ep->timestamp);
  tmp___2 = timespec_to_ns((struct timespec const *)(& delta));
  tmp___3 = div_u64((u64 )tmp___2, 1000000U);
  ep->credit = (int )((unsigned int )ep->credit + (unsigned int )tmp___3);
  ep->timestamp = ts;
  __mptr___6 = (struct list_head const *)ep->urb_list.next;
  urbl = (struct oz_urb_link *)__mptr___6;
  __mptr___7 = (struct list_head const *)urbl->link.next;
  n = (struct oz_urb_link *)__mptr___7;
  }
  goto ldv_47868;
  ldv_47867:
  urb___0 = urbl->urb;
  len = 0;
  if (ep->credit < urb___0->number_of_packets) {
    goto ldv_47863;
  } else {
  }
  if (ep->buffered_units < urb___0->number_of_packets) {
    goto ldv_47863;
  } else {
  }
  urb___0->actual_length = 0U;
  i = 0;
  goto ldv_47865;
  ldv_47864:
  len = (int )*(ep->buffer + (unsigned long )ep->out_ix);
  ep->out_ix = ep->out_ix + 1;
  if (ep->out_ix == ep->buffer_size) {
    ep->out_ix = 0;
  } else {
  }
  copy_len = ep->buffer_size - ep->out_ix;
  if (copy_len > len) {
    copy_len = len;
  } else {
  }
  {
  memcpy(urb___0->transfer_buffer, (void const *)ep->buffer + (unsigned long )ep->out_ix,
           (size_t )copy_len);
  }
  if (copy_len < len) {
    {
    memcpy(urb___0->transfer_buffer + (unsigned long )copy_len, (void const *)ep->buffer,
             (size_t )(len - copy_len));
    ep->out_ix = len - copy_len;
    }
  } else {
    ep->out_ix = ep->out_ix + copy_len;
  }
  if (ep->out_ix == ep->buffer_size) {
    ep->out_ix = 0;
  } else {
  }
  urb___0->iso_frame_desc[i].offset = urb___0->actual_length;
  urb___0->actual_length = urb___0->actual_length + (u32 )len;
  urb___0->iso_frame_desc[i].actual_length = (unsigned int )len;
  urb___0->iso_frame_desc[i].status = 0;
  i = i + 1;
  ldv_47865: ;
  if (i < urb___0->number_of_packets) {
    goto ldv_47864;
  } else {
  }
  {
  ep->buffered_units = ep->buffered_units - urb___0->number_of_packets;
  urb___0->error_count = 0;
  urb___0->start_frame = ep->start_frame;
  ep->start_frame = ep->start_frame + urb___0->number_of_packets;
  list_move_tail(& urbl->link, & xfr_list);
  ep->credit = ep->credit - urb___0->number_of_packets;
  urbl = n;
  __mptr___8 = (struct list_head const *)n->link.next;
  n = (struct oz_urb_link *)__mptr___8;
  }
  ldv_47868: ;
  if ((unsigned long )urbl != (unsigned long )ep) {
    goto ldv_47867;
  } else {
  }
  ldv_47863: ;
  ldv_47852:
  __mptr___9 = (struct list_head const *)ep->link.next;
  ep = (struct oz_endpoint *)__mptr___9 + 0xfffffffffffffff0UL;
  ldv_47870: ;
  if ((unsigned long )(& ep->link) != (unsigned long )(& port->isoc_in_ep)) {
    goto ldv_47869;
  } else {
  }
  {
  tmp___4 = list_empty((struct list_head const *)(& port->isoc_out_ep));
  }
  if (tmp___4 == 0) {
    rc = 1;
  } else {
    {
    tmp___5 = list_empty((struct list_head const *)(& port->isoc_in_ep));
    }
    if (tmp___5 == 0) {
      rc = 1;
    } else {
    }
  }
  {
  ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
  __mptr___10 = (struct list_head const *)xfr_list.next;
  urbl = (struct oz_urb_link *)__mptr___10;
  __mptr___11 = (struct list_head const *)urbl->link.next;
  n = (struct oz_urb_link *)__mptr___11;
  }
  goto ldv_47879;
  ldv_47878:
  {
  urb = urbl->urb;
  list_del_init(& urbl->link);
  oz_free_urb_link(urbl);
  oz_complete_urb((port->ozhcd)->hcd, urb, 0);
  urbl = n;
  __mptr___12 = (struct list_head const *)n->link.next;
  n = (struct oz_urb_link *)__mptr___12;
  }
  ldv_47879: ;
  if ((unsigned long )(& urbl->link) != (unsigned long )(& xfr_list)) {
    goto ldv_47878;
  } else {
  }
  ep = port->out_ep[0];
  if ((unsigned long )ep != (unsigned long )((struct oz_endpoint *)0)) {
    {
    ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
    __mptr___13 = (struct list_head const *)ep->urb_list.next;
    urbl = (struct oz_urb_link *)__mptr___13;
    __mptr___14 = (struct list_head const *)urbl->link.next;
    n = (struct oz_urb_link *)__mptr___14;
    }
    goto ldv_47890;
    ldv_47889: ;
    if (urbl->submit_counter > 13U) {
      {
      list_move_tail(& urbl->link, & xfr_list);
      urbl->submit_counter = 0U;
      }
    } else {
      urbl->submit_counter = urbl->submit_counter + 1U;
    }
    urbl = n;
    __mptr___15 = (struct list_head const *)n->link.next;
    n = (struct oz_urb_link *)__mptr___15;
    ldv_47890: ;
    if ((unsigned long )urbl != (unsigned long )ep) {
      goto ldv_47889;
    } else {
    }
    {
    tmp___7 = list_empty((struct list_head const *)(& ep->urb_list));
    }
    if (tmp___7 == 0) {
      rc = 1;
    } else {
    }
    {
    ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
    __mptr___16 = (struct list_head const *)xfr_list.next;
    urbl = (struct oz_urb_link *)__mptr___16;
    __mptr___17 = (struct list_head const *)urbl->link.next;
    n = (struct oz_urb_link *)__mptr___17;
    }
    goto ldv_47900;
    ldv_47899:
    {
    oz_process_ep0_urb(ozhcd, urbl->urb, 32U);
    oz_free_urb_link(urbl);
    urbl = n;
    __mptr___18 = (struct list_head const *)n->link.next;
    n = (struct oz_urb_link *)__mptr___18;
    }
    ldv_47900: ;
    if ((unsigned long )(& urbl->link) != (unsigned long )(& xfr_list)) {
      goto ldv_47899;
    } else {
    }
  } else {
  }
  return (rc);
}
}
static int oz_build_endpoints_for_interface(struct usb_hcd *hcd , struct oz_port *port ,
                                            struct usb_host_interface *intf , gfp_t mem_flags )
{
  struct oz_hcd *ozhcd ;
  int i ;
  int if_ix ;
  int request_heartbeat ;
  struct usb_host_endpoint *hep ;
  u8 ep_addr ;
  u8 ep_num ;
  struct oz_endpoint *ep ;
  int buffer_size ;
  int tmp___3 ;
  {
  ozhcd = port->ozhcd;
  if_ix = (int )intf->desc.bInterfaceNumber;
  request_heartbeat = 0;
  if (if_ix >= port->num_iface || (unsigned long )port->iface == (unsigned long )((struct oz_interface *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_47925;
  ldv_47924:
  hep = intf->endpoint + (unsigned long )i;
  ep_addr = hep->desc.bEndpointAddress;
  ep_num = (unsigned int )ep_addr & 15U;
  buffer_size = 0;
  if ((int )((signed char )ep_addr) < 0) {
    {
    if (((int )hep->desc.bmAttributes & 3) == 1) {
      goto case_1;
    } else {
    }
    if (((int )hep->desc.bmAttributes & 3) == 3) {
      goto case_3;
    } else {
    }
    goto switch_break;
    case_1:
    buffer_size = 24576;
    goto ldv_47921;
    case_3:
    buffer_size = 512;
    goto ldv_47921;
    switch_break: ;
    }
    ldv_47921: ;
  } else {
  }
  {
  ep = oz_ep_alloc(buffer_size, mem_flags);
  }
  if ((unsigned long )ep == (unsigned long )((struct oz_endpoint *)0)) {
    {
    oz_clean_endpoints_for_interface(hcd, port, if_ix);
    }
    return (-12);
  } else {
  }
  ep->attrib = hep->desc.bmAttributes;
  ep->ep_num = ep_num;
  if (((int )ep->attrib & 3) == 1) {
    ep->credit_ceiling = 200;
    if ((int )((signed char )ep_addr) < 0) {
      ep->flags = ep->flags | 1U;
    } else {
      {
      ep->flags = ep->flags | 2U;
      tmp___3 = oz_usb_stream_create(port->hpd, (int )ep_num);
      }
      if (tmp___3 != 0) {
        ep->flags = ep->flags & 4294967293U;
      } else {
      }
    }
  } else {
  }
  {
  ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
  }
  if ((int )((signed char )ep_addr) < 0) {
    port->in_ep[(int )ep_num] = ep;
    (port->iface + (unsigned long )if_ix)->ep_mask = (port->iface + (unsigned long )if_ix)->ep_mask | (unsigned int )(1 << ((int )ep_num + 16));
    if (((int )ep->attrib & 3) == 1) {
      {
      list_add_tail(& ep->link, & port->isoc_in_ep);
      request_heartbeat = 1;
      }
    } else {
    }
  } else {
    port->out_ep[(int )ep_num] = ep;
    (port->iface + (unsigned long )if_ix)->ep_mask = (port->iface + (unsigned long )if_ix)->ep_mask | (unsigned int )(1 << (int )ep_num);
    if (((int )ep->attrib & 3) == 1) {
      {
      list_add_tail(& ep->link, & port->isoc_out_ep);
      request_heartbeat = 1;
      }
    } else {
    }
  }
  {
  ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
  }
  if (request_heartbeat != 0 && (unsigned long )port->hpd != (unsigned long )((void *)0)) {
    {
    oz_usb_request_heartbeat(port->hpd);
    }
  } else {
  }
  i = i + 1;
  ldv_47925: ;
  if (i < (int )intf->desc.bNumEndpoints) {
    goto ldv_47924;
  } else {
  }
  return (0);
}
}
static void oz_clean_endpoints_for_interface(struct usb_hcd *hcd , struct oz_port *port ,
                                             int if_ix )
{
  struct oz_hcd *ozhcd ;
  unsigned int mask ;
  int i ;
  struct list_head ep_list ;
  struct oz_endpoint *ep ;
  struct oz_endpoint *n ;
  struct list_head *e ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  ozhcd = port->ozhcd;
  ep_list.next = & ep_list;
  ep_list.prev = & ep_list;
  if (if_ix >= port->num_iface) {
    return;
  } else {
  }
  {
  ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
  mask = (port->iface + (unsigned long )if_ix)->ep_mask;
  (port->iface + (unsigned long )if_ix)->ep_mask = 0U;
  i = 0;
  }
  goto ldv_47942;
  ldv_47941: ;
  if ((mask & (unsigned int )(1 << i)) != 0U && (unsigned long )port->out_ep[i] != (unsigned long )((struct oz_endpoint *)0)) {
    {
    e = & (port->out_ep[i])->link;
    port->out_ep[i] = (struct oz_endpoint *)0;
    list_move_tail(e, & ep_list);
    }
  } else {
  }
  if ((mask & (unsigned int )(1 << (i + 16))) != 0U && (unsigned long )port->in_ep[i] != (unsigned long )((struct oz_endpoint *)0)) {
    {
    e = & (port->in_ep[i])->link;
    port->in_ep[i] = (struct oz_endpoint *)0;
    list_move_tail(e, & ep_list);
    }
  } else {
  }
  i = i + 1;
  ldv_47942: ;
  if (i <= 15) {
    goto ldv_47941;
  } else {
  }
  {
  ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
  __mptr = (struct list_head const *)ep_list.next;
  ep = (struct oz_endpoint *)__mptr + 0xfffffffffffffff0UL;
  __mptr___0 = (struct list_head const *)ep->link.next;
  n = (struct oz_endpoint *)__mptr___0 + 0xfffffffffffffff0UL;
  }
  goto ldv_47951;
  ldv_47950:
  {
  list_del_init(& ep->link);
  oz_ep_free(port, ep);
  ep = n;
  __mptr___1 = (struct list_head const *)n->link.next;
  n = (struct oz_endpoint *)__mptr___1 + 0xfffffffffffffff0UL;
  }
  ldv_47951: ;
  if ((unsigned long )(& ep->link) != (unsigned long )(& ep_list)) {
    goto ldv_47950;
  } else {
  }
  return;
}
}
static int oz_build_endpoints_for_config(struct usb_hcd *hcd , struct oz_port *port ,
                                         struct usb_host_config *config , gfp_t mem_flags )
{
  struct oz_hcd *ozhcd ;
  int i ;
  int num_iface ;
  struct oz_interface *iface ;
  void *tmp ;
  struct usb_host_interface *intf ;
  int tmp___0 ;
  {
  ozhcd = port->ozhcd;
  num_iface = (int )config->desc.bNumInterfaces;
  if (num_iface != 0) {
    {
    tmp = ldv_kmalloc_array_165((size_t )num_iface, 8UL, mem_flags | 32768U);
    iface = (struct oz_interface *)tmp;
    }
    if ((unsigned long )iface == (unsigned long )((struct oz_interface *)0)) {
      return (-12);
    } else {
    }
    {
    ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
    port->iface = iface;
    port->num_iface = num_iface;
    ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
    }
  } else {
  }
  i = 0;
  goto ldv_47966;
  ldv_47965:
  {
  intf = (struct usb_host_interface *)(& (config->intf_cache[i])->altsetting);
  tmp___0 = oz_build_endpoints_for_interface(hcd, port, intf, mem_flags);
  }
  if (tmp___0 != 0) {
    goto fail;
  } else {
  }
  i = i + 1;
  ldv_47966: ;
  if (i < num_iface) {
    goto ldv_47965;
  } else {
  }
  return (0);
  fail:
  {
  oz_clean_endpoints_for_config(hcd, port);
  }
  return (-1);
}
}
static void oz_clean_endpoints_for_config(struct usb_hcd *hcd , struct oz_port *port )
{
  struct oz_hcd *ozhcd ;
  int i ;
  {
  ozhcd = port->ozhcd;
  i = 0;
  goto ldv_47977;
  ldv_47976:
  {
  oz_clean_endpoints_for_interface(hcd, port, i);
  i = i + 1;
  }
  ldv_47977: ;
  if (i < port->num_iface) {
    goto ldv_47976;
  } else {
  }
  {
  ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
  }
  if ((unsigned long )port->iface != (unsigned long )((struct oz_interface *)0)) {
    {
    kfree((void const *)port->iface);
    port->iface = (struct oz_interface *)0;
    }
  } else {
  }
  {
  port->num_iface = 0;
  ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
  }
  return;
}
}
static void *oz_claim_hpd(struct oz_port *port )
{
  void *hpd ;
  struct oz_hcd *ozhcd ;
  {
  {
  ozhcd = port->ozhcd;
  ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
  hpd = port->hpd;
  }
  if ((unsigned long )hpd != (unsigned long )((void *)0)) {
    {
    oz_usb_get(hpd);
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
  }
  return (hpd);
}
}
static void oz_process_ep0_urb(struct oz_hcd *ozhcd , struct urb *urb , gfp_t mem_flags )
{
  struct usb_ctrlrequest *setup ;
  unsigned int windex ;
  unsigned int wvalue ;
  unsigned int wlength ;
  void *hpd ;
  u8 req_id ;
  int rc ;
  unsigned int complete___0 ;
  int port_ix ;
  struct oz_port *port ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  struct _ddebug descriptor___3 ;
  long tmp___3 ;
  struct _ddebug descriptor___4 ;
  long tmp___4 ;
  struct _ddebug descriptor___5 ;
  long tmp___5 ;
  u8 tmp___6 ;
  int data_len ;
  int tmp___17 ;
  int tmp___18 ;
  {
  rc = 0;
  complete___0 = 0U;
  port_ix = -1;
  port = (struct oz_port *)0;
  if ((oz_dbg_mask & 2U) != 0U) {
    {
    descriptor.modname = "ozwpan";
    descriptor.function = "oz_process_ep0_urb";
    descriptor.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor.format = "[%s]:(%p)\n";
    descriptor.lineno = 1393U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "[%s]:(%p)\n", "oz_process_ep0_urb", urb);
      }
    } else {
    }
  } else {
  }
  {
  port_ix = oz_get_port_from_addr(ozhcd, (int )((u8 )(urb->dev)->devnum));
  }
  if (port_ix < 0) {
    rc = -32;
    goto out;
  } else {
  }
  port = (struct oz_port *)(& ozhcd->ports) + (unsigned long )port_ix;
  if (*((unsigned int *)port + 0UL) != 1U) {
    rc = -32;
    goto out;
  } else {
  }
  urb->hcpriv = (void *)port;
  setup = (struct usb_ctrlrequest *)urb->setup_packet;
  windex = (unsigned int )setup->wIndex;
  wvalue = (unsigned int )setup->wValue;
  wlength = (unsigned int )setup->wLength;
  if ((oz_dbg_mask & 4U) != 0U) {
    {
    descriptor___1.modname = "ozwpan";
    descriptor___1.function = "oz_process_ep0_urb";
    descriptor___1.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___1.format = "bRequestType = %x\n";
    descriptor___1.lineno = 1414U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "bRequestType = %x\n", (int )setup->bRequestType);
      }
    } else {
    }
  } else {
  }
  if ((oz_dbg_mask & 4U) != 0U) {
    {
    descriptor___2.modname = "ozwpan";
    descriptor___2.function = "oz_process_ep0_urb";
    descriptor___2.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___2.format = "bRequest = %x\n";
    descriptor___2.lineno = 1415U;
    descriptor___2.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___2, "bRequest = %x\n", (int )setup->bRequest);
      }
    } else {
    }
  } else {
  }
  if ((oz_dbg_mask & 4U) != 0U) {
    {
    descriptor___3.modname = "ozwpan";
    descriptor___3.function = "oz_process_ep0_urb";
    descriptor___3.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___3.format = "wValue = %x\n";
    descriptor___3.lineno = 1416U;
    descriptor___3.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___3, "wValue = %x\n", wvalue);
      }
    } else {
    }
  } else {
  }
  if ((oz_dbg_mask & 4U) != 0U) {
    {
    descriptor___4.modname = "ozwpan";
    descriptor___4.function = "oz_process_ep0_urb";
    descriptor___4.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___4.format = "wIndex = %x\n";
    descriptor___4.lineno = 1417U;
    descriptor___4.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___4, "wIndex = %x\n", windex);
      }
    } else {
    }
  } else {
  }
  if ((oz_dbg_mask & 4U) != 0U) {
    {
    descriptor___5.modname = "ozwpan";
    descriptor___5.function = "oz_process_ep0_urb";
    descriptor___5.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___5.format = "wLength = %x\n";
    descriptor___5.lineno = 1418U;
    descriptor___5.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    }
    if (tmp___5 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___5, "wLength = %x\n", wlength);
      }
    } else {
    }
  } else {
  }
  {
  tmp___6 = port->next_req_id;
  port->next_req_id = (u8 )((int )port->next_req_id + 1);
  req_id = tmp___6;
  hpd = oz_claim_hpd(port);
  }
  if ((unsigned long )hpd == (unsigned long )((void *)0)) {
    rc = -32;
    goto out;
  } else {
  }
  if (((int )setup->bRequestType & 96) == 0) {
    {
    if ((int )setup->bRequest == 6) {
      goto case_6;
    } else {
    }
    if ((int )setup->bRequest == 5) {
      goto case_5;
    } else {
    }
    if ((int )setup->bRequest == 9) {
      goto case_9;
    } else {
    }
    if ((int )setup->bRequest == 8) {
      goto case_8;
    } else {
    }
    if ((int )setup->bRequest == 10) {
      goto case_10;
    } else {
    }
    if ((int )setup->bRequest == 11) {
      goto case_11;
    } else {
    }
    goto switch_break;
    case_6: ;
    goto ldv_48012;
    case_5:
    {
    ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
    }
    if (ozhcd->conn_port >= 0) {
      ozhcd->ports[ozhcd->conn_port].bus_addr = (unsigned char )setup->wValue;
      ozhcd->conn_port = -1;
    } else {
    }
    {
    ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
    complete___0 = 1U;
    }
    goto ldv_48012;
    case_9: ;
    goto ldv_48012;
    case_8: ;
    if (urb->transfer_buffer_length != 0U) {
      urb->actual_length = 1U;
      *((u8 *)urb->transfer_buffer) = port->config_num;
      complete___0 = 1U;
    } else {
      rc = -32;
    }
    goto ldv_48012;
    case_10: ;
    if (urb->transfer_buffer_length != 0U) {
      urb->actual_length = 1U;
      *((u8 *)urb->transfer_buffer) = (port->iface + (unsigned long )((unsigned char )windex))->alt;
      complete___0 = 1U;
    } else {
      rc = -32;
    }
    goto ldv_48012;
    case_11: ;
    goto ldv_48012;
    switch_break: ;
    }
    ldv_48012: ;
  } else {
  }
  if (rc == 0 && complete___0 == 0U) {
    data_len = 0;
    if ((int )((signed char )setup->bRequestType) >= 0) {
      data_len = (int )wlength;
    } else {
    }
    {
    urb->actual_length = (u32 )data_len;
    tmp___18 = oz_usb_control_req(port->hpd, (int )req_id, setup, (u8 const *)urb->transfer_buffer,
                                  data_len);
    }
    if (tmp___18 != 0) {
      rc = -12;
    } else {
      {
      tmp___17 = oz_enqueue_ep_urb(port, 0, 0, urb, (int )req_id);
      }
      if (tmp___17 != 0) {
        rc = -12;
      } else {
      }
    }
  } else {
  }
  {
  oz_usb_put(hpd);
  }
  out: ;
  if (rc != 0 || complete___0 != 0U) {
    {
    oz_complete_urb(ozhcd->hcd, urb, rc);
    }
  } else {
    {
    oz_usb_request_heartbeat(port->hpd);
    }
  }
  return;
}
}
static int oz_urb_process(struct oz_hcd *ozhcd , struct urb *urb )
{
  int rc ;
  struct oz_port *port ;
  u8 ep_addr ;
  int tmp ;
  {
  {
  rc = 0;
  port = (struct oz_port *)urb->hcpriv;
  oz_remember_urb(urb);
  }
  if ((unsigned long )urb->transfer_buffer == (unsigned long )((void *)0) && urb->transfer_buffer_length != 0U) {
    return (-22);
  } else {
  }
  if ((port->flags & 1U) == 0U) {
    return (-32);
  } else {
  }
  ep_addr = (unsigned int )((u8 )(urb->pipe >> 15)) & 15U;
  if ((unsigned int )ep_addr != 0U) {
    {
    tmp = oz_enqueue_ep_urb(port, (int )ep_addr, (int )urb->pipe & 128, urb, 0);
    }
    if (tmp != 0) {
      rc = -32;
    } else {
    }
  } else {
    {
    oz_process_ep0_urb(ozhcd, urb, 32U);
    }
  }
  return (rc);
}
}
static void oz_urb_process_tasklet(unsigned long unused )
{
  unsigned long irq_state ;
  struct urb *urb ;
  struct oz_hcd *ozhcd ;
  struct oz_hcd *tmp ;
  struct oz_urb_link *urbl ;
  struct oz_urb_link *n ;
  int rc ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  {
  tmp = oz_hcd_claim();
  ozhcd = tmp;
  rc = 0;
  }
  if ((unsigned long )ozhcd == (unsigned long )((struct oz_hcd *)0)) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_174(& g_tasklet_lock);
  __mptr = (struct list_head const *)ozhcd->urb_pending_list.next;
  urbl = (struct oz_urb_link *)__mptr;
  __mptr___0 = (struct list_head const *)urbl->link.next;
  n = (struct oz_urb_link *)__mptr___0;
  }
  goto ldv_48051;
  ldv_48050:
  {
  list_del_init(& urbl->link);
  ldv_spin_unlock_irqrestore_125(& g_tasklet_lock, irq_state);
  urb = urbl->urb;
  oz_free_urb_link(urbl);
  rc = oz_urb_process(ozhcd, urb);
  }
  if (rc != 0) {
    {
    oz_complete_urb(ozhcd->hcd, urb, rc);
    }
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_176(& g_tasklet_lock);
  urbl = n;
  __mptr___1 = (struct list_head const *)n->link.next;
  n = (struct oz_urb_link *)__mptr___1;
  }
  ldv_48051: ;
  if ((unsigned long )(& urbl->link) != (unsigned long )(& ozhcd->urb_pending_list)) {
    goto ldv_48050;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_125(& g_tasklet_lock, irq_state);
  oz_hcd_put(ozhcd);
  }
  return;
}
}
static void oz_urb_cancel(struct oz_port *port , u8 ep_num , struct urb *urb )
{
  struct oz_urb_link *urbl ;
  struct list_head *e ;
  struct oz_hcd *ozhcd ;
  unsigned long irq_state ;
  u8 ix ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  urbl = (struct oz_urb_link *)0;
  if ((unsigned long )port == (unsigned long )((struct oz_port *)0)) {
    return;
  } else {
  }
  ozhcd = port->ozhcd;
  if ((unsigned long )ozhcd == (unsigned long )((struct oz_hcd *)0)) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_178(& g_tasklet_lock);
  e = ozhcd->urb_cancel_list.next;
  }
  goto ldv_48070;
  ldv_48069:
  __mptr = (struct list_head const *)e;
  urbl = (struct oz_urb_link *)__mptr;
  if ((unsigned long )urb == (unsigned long )urbl->urb) {
    {
    list_del_init(e);
    ldv_spin_unlock_irqrestore_125(& g_tasklet_lock, irq_state);
    }
    goto out2;
  } else {
  }
  e = e->next;
  ldv_48070: ;
  if ((unsigned long )e != (unsigned long )(& ozhcd->urb_cancel_list)) {
    goto ldv_48069;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_125(& g_tasklet_lock, irq_state);
  urbl = (struct oz_urb_link *)0;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_181(& ozhcd->hcd_lock);
  e = ozhcd->orphanage.next;
  }
  goto ldv_48077;
  ldv_48076:
  __mptr___0 = (struct list_head const *)e;
  urbl = (struct oz_urb_link *)__mptr___0;
  if ((unsigned long )urbl->urb == (unsigned long )urb) {
    {
    list_del(e);
    }
    goto out;
  } else {
  }
  e = e->next;
  ldv_48077: ;
  if ((unsigned long )e != (unsigned long )(& ozhcd->orphanage)) {
    goto ldv_48076;
  } else {
  }
  ix = (unsigned int )ep_num & 15U;
  urbl = (struct oz_urb_link *)0;
  if ((int )((signed char )ep_num) < 0 && (unsigned int )ix != 0U) {
    {
    urbl = oz_remove_urb(port->in_ep[(int )ix], urb);
    }
  } else {
    {
    urbl = oz_remove_urb(port->out_ep[(int )ix], urb);
    }
  }
  out:
  {
  ldv_spin_unlock_irqrestore_182(& ozhcd->hcd_lock, irq_state);
  }
  out2: ;
  if ((unsigned long )urbl != (unsigned long )((struct oz_urb_link *)0)) {
    {
    urb->actual_length = 0U;
    oz_free_urb_link(urbl);
    oz_complete_urb(ozhcd->hcd, urb, -32);
    }
  } else {
  }
  return;
}
}
static void oz_urb_cancel_tasklet(unsigned long unused )
{
  unsigned long irq_state ;
  struct urb *urb ;
  struct oz_urb_link *urbl ;
  struct oz_urb_link *n ;
  struct oz_hcd *ozhcd ;
  struct oz_hcd *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  {
  tmp = oz_hcd_claim();
  ozhcd = tmp;
  }
  if ((unsigned long )ozhcd == (unsigned long )((struct oz_hcd *)0)) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_183(& g_tasklet_lock);
  __mptr = (struct list_head const *)ozhcd->urb_cancel_list.next;
  urbl = (struct oz_urb_link *)__mptr;
  __mptr___0 = (struct list_head const *)urbl->link.next;
  n = (struct oz_urb_link *)__mptr___0;
  }
  goto ldv_48094;
  ldv_48093:
  {
  list_del_init(& urbl->link);
  ldv_spin_unlock_irqrestore_125(& g_tasklet_lock, irq_state);
  urb = urbl->urb;
  }
  if (urb->unlinked != 0) {
    {
    oz_urb_cancel(urbl->port, (int )urbl->ep_num, urb);
    }
  } else {
  }
  {
  oz_free_urb_link(urbl);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_185(& g_tasklet_lock);
  urbl = n;
  __mptr___1 = (struct list_head const *)n->link.next;
  n = (struct oz_urb_link *)__mptr___1;
  }
  ldv_48094: ;
  if ((unsigned long )(& urbl->link) != (unsigned long )(& ozhcd->urb_cancel_list)) {
    goto ldv_48093;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_125(& g_tasklet_lock, irq_state);
  oz_hcd_put(ozhcd);
  }
  return;
}
}
static void oz_hcd_clear_orphanage(struct oz_hcd *ozhcd , int status )
{
  struct oz_urb_link *urbl ;
  struct oz_urb_link *n ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  if ((unsigned long )ozhcd != (unsigned long )((struct oz_hcd *)0)) {
    __mptr = (struct list_head const *)ozhcd->orphanage.next;
    urbl = (struct oz_urb_link *)__mptr;
    __mptr___0 = (struct list_head const *)urbl->link.next;
    n = (struct oz_urb_link *)__mptr___0;
    goto ldv_48109;
    ldv_48108:
    {
    list_del(& urbl->link);
    oz_complete_urb(ozhcd->hcd, urbl->urb, status);
    oz_free_urb_link(urbl);
    urbl = n;
    __mptr___1 = (struct list_head const *)n->link.next;
    n = (struct oz_urb_link *)__mptr___1;
    }
    ldv_48109: ;
    if ((unsigned long )(& urbl->link) != (unsigned long )(& ozhcd->orphanage)) {
      goto ldv_48108;
    } else {
    }
  } else {
  }
  return;
}
}
static int oz_hcd_start(struct usb_hcd *hcd )
{
  {
  hcd->power_budget = 200U;
  hcd->state = 1;
  hcd->uses_new_polling = 1U;
  return (0);
}
}
static void oz_hcd_stop(struct usb_hcd *hcd )
{
  {
  return;
}
}
static void oz_hcd_shutdown(struct usb_hcd *hcd )
{
  {
  return;
}
}
static int oz_hcd_urb_enqueue(struct usb_hcd *hcd , struct urb *urb , gfp_t mem_flags )
{
  struct oz_hcd *ozhcd ;
  struct oz_hcd *tmp ;
  int rc ;
  int port_ix ;
  struct oz_port *port ;
  unsigned long irq_state ;
  struct oz_urb_link *urbl ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___6 ;
  long tmp___7 ;
  {
  {
  tmp = oz_hcd_private(hcd);
  ozhcd = tmp;
  }
  if ((oz_dbg_mask & 2U) != 0U) {
    {
    descriptor.modname = "ozwpan";
    descriptor.function = "oz_hcd_urb_enqueue";
    descriptor.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor.format = "%s: (%p)\n";
    descriptor.lineno = 1741U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s: (%p)\n", "oz_hcd_urb_enqueue", urb);
      }
    } else {
    }
  } else {
  }
  {
  tmp___2 = ldv__builtin_expect((unsigned long )ozhcd == (unsigned long )((struct oz_hcd *)0),
                             0L);
  }
  if (tmp___2 != 0L) {
    if ((oz_dbg_mask & 2U) != 0U) {
      {
      descriptor___0.modname = "ozwpan";
      descriptor___0.function = "oz_hcd_urb_enqueue";
      descriptor___0.filename = "drivers/staging/ozwpan/ozhcd.c";
      descriptor___0.format = "Refused urb(%p) not ozhcd\n";
      descriptor___0.lineno = 1743U;
      descriptor___0.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "Refused urb(%p) not ozhcd\n", urb);
        }
      } else {
      }
    } else {
    }
    return (-32);
  } else {
  }
  {
  tmp___4 = ldv__builtin_expect(hcd->state != 1, 0L);
  }
  if (tmp___4 != 0L) {
    if ((oz_dbg_mask & 2U) != 0U) {
      {
      descriptor___1.modname = "ozwpan";
      descriptor___1.function = "oz_hcd_urb_enqueue";
      descriptor___1.filename = "drivers/staging/ozwpan/ozhcd.c";
      descriptor___1.format = "Refused urb(%p) not running\n";
      descriptor___1.lineno = 1747U;
      descriptor___1.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___3 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "Refused urb(%p) not running\n", urb);
        }
      } else {
      }
    } else {
    }
    return (-32);
  } else {
  }
  {
  port_ix = oz_get_port_from_addr(ozhcd, (int )((u8 )(urb->dev)->devnum));
  }
  if (port_ix < 0) {
    return (-32);
  } else {
  }
  port = (struct oz_port *)(& ozhcd->ports) + (unsigned long )port_ix;
  if ((unsigned long )port == (unsigned long )((struct oz_port *)0)) {
    return (-32);
  } else {
  }
  if (*((unsigned int *)port + 0UL) != 1U) {
    return (-32);
  } else {
  }
  {
  urb->hcpriv = (void *)port;
  urbl = oz_alloc_urb_link();
  tmp___6 = ldv__builtin_expect((unsigned long )urbl == (unsigned long )((struct oz_urb_link *)0),
                             0L);
  }
  if (tmp___6 != 0L) {
    return (-12);
  } else {
  }
  {
  urbl->urb = urb;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_187(& g_tasklet_lock);
  rc = usb_hcd_link_urb_to_ep(hcd, urb);
  tmp___7 = ldv__builtin_expect(rc != 0, 0L);
  }
  if (tmp___7 != 0L) {
    {
    ldv_spin_unlock_irqrestore_125(& g_tasklet_lock, irq_state);
    oz_free_urb_link(urbl);
    }
    return (rc);
  } else {
  }
  {
  list_add_tail(& urbl->link, & ozhcd->urb_pending_list);
  ldv_spin_unlock_irqrestore_125(& g_tasklet_lock, irq_state);
  tasklet_schedule(& g_urb_process_tasklet);
  atomic_inc(& g_pending_urbs);
  }
  return (0);
}
}
static struct oz_urb_link *oz_remove_urb(struct oz_endpoint *ep , struct urb *urb )
{
  struct oz_urb_link *urbl ;
  long tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )ep == (unsigned long )((struct oz_endpoint *)0),
                         0L);
  }
  if (tmp != 0L) {
    return ((struct oz_urb_link *)0);
  } else {
  }
  __mptr = (struct list_head const *)ep->urb_list.next;
  urbl = (struct oz_urb_link *)__mptr;
  goto ldv_48146;
  ldv_48145: ;
  if ((unsigned long )urbl->urb == (unsigned long )urb) {
    {
    list_del_init(& urbl->link);
    }
    if (urb->pipe >> 30 == 0U) {
      ep->credit = ep->credit - urb->number_of_packets;
      if (ep->credit < 0) {
        ep->credit = 0;
      } else {
      }
    } else {
    }
    return (urbl);
  } else {
  }
  __mptr___0 = (struct list_head const *)urbl->link.next;
  urbl = (struct oz_urb_link *)__mptr___0;
  ldv_48146: ;
  if ((unsigned long )urbl != (unsigned long )ep) {
    goto ldv_48145;
  } else {
  }
  return ((struct oz_urb_link *)0);
}
}
static int oz_hcd_urb_dequeue(struct usb_hcd *hcd , struct urb *urb , int status )
{
  struct oz_hcd *ozhcd ;
  struct oz_hcd *tmp ;
  struct oz_urb_link *urbl ;
  int rc ;
  unsigned long irq_state ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = oz_hcd_private(hcd);
  ozhcd = tmp;
  }
  if ((oz_dbg_mask & 2U) != 0U) {
    {
    descriptor.modname = "ozwpan";
    descriptor.function = "oz_hcd_urb_dequeue";
    descriptor.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor.format = "%s: (%p)\n";
    descriptor.lineno = 1819U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s: (%p)\n", "oz_hcd_urb_dequeue", urb);
      }
    } else {
    }
  } else {
  }
  {
  urbl = oz_alloc_urb_link();
  tmp___1 = ldv__builtin_expect((unsigned long )urbl == (unsigned long )((struct oz_urb_link *)0),
                             0L);
  }
  if (tmp___1 != 0L) {
    return (-12);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_190(& g_tasklet_lock);
  rc = usb_hcd_check_unlink_urb(hcd, urb, status);
  }
  if (rc == 0 && (unsigned long )urb->hcpriv != (unsigned long )((void *)0)) {
    urbl->urb = urb;
    urbl->port = (struct oz_port *)urb->hcpriv;
    urbl->ep_num = (unsigned int )((u8 )(urb->pipe >> 15)) & 15U;
    if ((urb->pipe & 128U) != 0U) {
      urbl->ep_num = (u8 )((unsigned int )urbl->ep_num | 128U);
    } else {
    }
    {
    list_add_tail(& urbl->link, & ozhcd->urb_cancel_list);
    ldv_spin_unlock_irqrestore_125(& g_tasklet_lock, irq_state);
    tasklet_schedule(& g_urb_cancel_tasklet);
    }
  } else {
    {
    ldv_spin_unlock_irqrestore_125(& g_tasklet_lock, irq_state);
    oz_free_urb_link(urbl);
    }
  }
  return (rc);
}
}
static void oz_hcd_endpoint_disable(struct usb_hcd *hcd , struct usb_host_endpoint *ep )
{
  {
  return;
}
}
static void oz_hcd_endpoint_reset(struct usb_hcd *hcd , struct usb_host_endpoint *ep )
{
  {
  return;
}
}
static int oz_hcd_get_frame_number(struct usb_hcd *hcd )
{
  int tmp___0 ;
  {
  {
  tmp___0 = oz_usb_get_frame_number();
  }
  return (tmp___0);
}
}
static int oz_hcd_hub_status_data(struct usb_hcd *hcd , char *buf )
{
  struct oz_hcd *ozhcd ;
  struct oz_hcd *tmp ;
  int i ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = oz_hcd_private(hcd);
  ozhcd = tmp;
  *buf = 0;
  *(buf + 1UL) = 0;
  ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
  i = 0;
  }
  goto ldv_48181;
  ldv_48180: ;
  if ((ozhcd->ports[i].flags & 2U) != 0U) {
    if ((oz_dbg_mask & 8U) != 0U) {
      {
      descriptor.modname = "ozwpan";
      descriptor.function = "oz_hcd_hub_status_data";
      descriptor.filename = "drivers/staging/ozwpan/ozhcd.c";
      descriptor.format = "Port %d changed\n";
      descriptor.lineno = 1891U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __dynamic_pr_debug(& descriptor, "Port %d changed\n", i);
        }
      } else {
      }
    } else {
    }
    ozhcd->ports[i].flags = ozhcd->ports[i].flags & 4294967293U;
    if (i <= 6) {
      *buf = (int )*buf | (int )((char )(1 << (i + 1)));
    } else {
      *(buf + 1UL) = (int )*(buf + 1UL) | (int )((char )(1 << (i + -7)));
    }
  } else {
  }
  i = i + 1;
  ldv_48181: ;
  if (i <= 7) {
    goto ldv_48180;
  } else {
  }
  {
  ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
  }
  if ((int )((signed char )*buf) != 0 || (int )((signed char )*(buf + 1UL)) != 0) {
    return (2);
  } else {
  }
  return (0);
}
}
static void oz_get_hub_descriptor(struct usb_hcd *hcd , struct usb_hub_descriptor *desc )
{
  {
  {
  memset((void *)desc, 0, 15UL);
  desc->bDescriptorType = 41U;
  desc->bDescLength = 9U;
  desc->wHubCharacteristics = 1U;
  desc->bNbrPorts = 8U;
  }
  return;
}
}
static int oz_set_port_feature(struct usb_hcd *hcd , u16 wvalue , u16 windex )
{
  struct oz_port *port ;
  u8 port_id ;
  struct oz_hcd *ozhcd ;
  struct oz_hcd *tmp ;
  unsigned int set_bits ;
  unsigned int clear_bits ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___10 ;
  long tmp___11 ;
  struct _ddebug descriptor___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___12 ;
  long tmp___13 ;
  struct _ddebug descriptor___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___14 ;
  long tmp___15 ;
  {
  {
  port_id = (unsigned char )windex;
  tmp = oz_hcd_private(hcd);
  ozhcd = tmp;
  set_bits = 0U;
  clear_bits = 0U;
  }
  if ((unsigned int )port_id - 1U > 7U) {
    return (-32);
  } else {
  }
  port = (struct oz_port *)(& ozhcd->ports) + ((unsigned long )port_id + 0xffffffffffffffffUL);
  {
  if ((int )wvalue == 0) {
    goto case_0;
  } else {
  }
  if ((int )wvalue == 1) {
    goto case_1;
  } else {
  }
  if ((int )wvalue == 2) {
    goto case_2;
  } else {
  }
  if ((int )wvalue == 3) {
    goto case_3;
  } else {
  }
  if ((int )wvalue == 4) {
    goto case_4;
  } else {
  }
  if ((int )wvalue == 8) {
    goto case_8;
  } else {
  }
  if ((int )wvalue == 9) {
    goto case_9;
  } else {
  }
  if ((int )wvalue == 16) {
    goto case_16;
  } else {
  }
  if ((int )wvalue == 17) {
    goto case_17;
  } else {
  }
  if ((int )wvalue == 18) {
    goto case_18;
  } else {
  }
  if ((int )wvalue == 19) {
    goto case_19;
  } else {
  }
  if ((int )wvalue == 20) {
    goto case_20;
  } else {
  }
  if ((int )wvalue == 21) {
    goto case_21;
  } else {
  }
  if ((int )wvalue == 22) {
    goto case_22;
  } else {
  }
  goto switch_default;
  case_0: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor.modname = "ozwpan";
    descriptor.function = "oz_set_port_feature";
    descriptor.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor.format = "USB_PORT_FEAT_CONNECTION\n";
    descriptor.lineno = 1934U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "USB_PORT_FEAT_CONNECTION\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48200;
  case_1: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___0.modname = "ozwpan";
    descriptor___0.function = "oz_set_port_feature";
    descriptor___0.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___0.format = "USB_PORT_FEAT_ENABLE\n";
    descriptor___0.lineno = 1937U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "USB_PORT_FEAT_ENABLE\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48200;
  case_2: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___1.modname = "ozwpan";
    descriptor___1.function = "oz_set_port_feature";
    descriptor___1.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___1.format = "USB_PORT_FEAT_SUSPEND\n";
    descriptor___1.lineno = 1940U;
    descriptor___1.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "USB_PORT_FEAT_SUSPEND\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48200;
  case_3: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___2.modname = "ozwpan";
    descriptor___2.function = "oz_set_port_feature";
    descriptor___2.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___2.format = "USB_PORT_FEAT_OVER_CURRENT\n";
    descriptor___2.lineno = 1943U;
    descriptor___2.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___2, "USB_PORT_FEAT_OVER_CURRENT\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48200;
  case_4: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___3.modname = "ozwpan";
    descriptor___3.function = "oz_set_port_feature";
    descriptor___3.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___3.format = "USB_PORT_FEAT_RESET\n";
    descriptor___3.lineno = 1946U;
    descriptor___3.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___3, "USB_PORT_FEAT_RESET\n");
      }
    } else {
    }
  } else {
  }
  set_bits = 1048578U;
  clear_bits = 16U;
  ozhcd->ports[(int )port_id + -1].bus_addr = 0U;
  goto ldv_48200;
  case_8: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___4.modname = "ozwpan";
    descriptor___4.function = "oz_set_port_feature";
    descriptor___4.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___4.format = "USB_PORT_FEAT_POWER\n";
    descriptor___4.lineno = 1952U;
    descriptor___4.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    }
    if (tmp___5 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___4, "USB_PORT_FEAT_POWER\n");
      }
    } else {
    }
  } else {
  }
  set_bits = set_bits | 256U;
  goto ldv_48200;
  case_9: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___5.modname = "ozwpan";
    descriptor___5.function = "oz_set_port_feature";
    descriptor___5.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___5.format = "USB_PORT_FEAT_LOWSPEED\n";
    descriptor___5.lineno = 1956U;
    descriptor___5.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    }
    if (tmp___6 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___5, "USB_PORT_FEAT_LOWSPEED\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48200;
  case_16: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___6.modname = "ozwpan";
    descriptor___6.function = "oz_set_port_feature";
    descriptor___6.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___6.format = "USB_PORT_FEAT_C_CONNECTION\n";
    descriptor___6.lineno = 1959U;
    descriptor___6.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    }
    if (tmp___7 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___6, "USB_PORT_FEAT_C_CONNECTION\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48200;
  case_17: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___7.modname = "ozwpan";
    descriptor___7.function = "oz_set_port_feature";
    descriptor___7.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___7.format = "USB_PORT_FEAT_C_ENABLE\n";
    descriptor___7.lineno = 1962U;
    descriptor___7.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    }
    if (tmp___8 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___7, "USB_PORT_FEAT_C_ENABLE\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48200;
  case_18: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___8.modname = "ozwpan";
    descriptor___8.function = "oz_set_port_feature";
    descriptor___8.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___8.format = "USB_PORT_FEAT_C_SUSPEND\n";
    descriptor___8.lineno = 1965U;
    descriptor___8.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
    }
    if (tmp___9 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___8, "USB_PORT_FEAT_C_SUSPEND\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48200;
  case_19: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___9.modname = "ozwpan";
    descriptor___9.function = "oz_set_port_feature";
    descriptor___9.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___9.format = "USB_PORT_FEAT_C_OVER_CURRENT\n";
    descriptor___9.lineno = 1968U;
    descriptor___9.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
    }
    if (tmp___10 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___9, "USB_PORT_FEAT_C_OVER_CURRENT\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48200;
  case_20: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___10.modname = "ozwpan";
    descriptor___10.function = "oz_set_port_feature";
    descriptor___10.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___10.format = "USB_PORT_FEAT_C_RESET\n";
    descriptor___10.lineno = 1971U;
    descriptor___10.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
    }
    if (tmp___11 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___10, "USB_PORT_FEAT_C_RESET\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48200;
  case_21: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___11.modname = "ozwpan";
    descriptor___11.function = "oz_set_port_feature";
    descriptor___11.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___11.format = "USB_PORT_FEAT_TEST\n";
    descriptor___11.lineno = 1974U;
    descriptor___11.flags = 0U;
    tmp___12 = ldv__builtin_expect((long )descriptor___11.flags & 1L, 0L);
    }
    if (tmp___12 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___11, "USB_PORT_FEAT_TEST\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48200;
  case_22: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___12.modname = "ozwpan";
    descriptor___12.function = "oz_set_port_feature";
    descriptor___12.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___12.format = "USB_PORT_FEAT_INDICATOR\n";
    descriptor___12.lineno = 1977U;
    descriptor___12.flags = 0U;
    tmp___13 = ldv__builtin_expect((long )descriptor___12.flags & 1L, 0L);
    }
    if (tmp___13 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___12, "USB_PORT_FEAT_INDICATOR\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48200;
  switch_default: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___13.modname = "ozwpan";
    descriptor___13.function = "oz_set_port_feature";
    descriptor___13.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___13.format = "Other %d\n";
    descriptor___13.lineno = 1980U;
    descriptor___13.flags = 0U;
    tmp___14 = ldv__builtin_expect((long )descriptor___13.flags & 1L, 0L);
    }
    if (tmp___14 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___13, "Other %d\n", (int )wvalue);
      }
    } else {
    }
  } else {
  }
  goto ldv_48200;
  switch_break: ;
  }
  ldv_48200: ;
  if ((set_bits | clear_bits) != 0U) {
    {
    ldv_spin_lock_bh_148(& port->port_lock);
    port->status = port->status & ~ clear_bits;
    port->status = port->status | set_bits;
    ldv_spin_unlock_bh_149(& port->port_lock);
    }
  } else {
  }
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___14.modname = "ozwpan";
    descriptor___14.function = "oz_set_port_feature";
    descriptor___14.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___14.format = "Port[%d] status = 0x%x\n";
    descriptor___14.lineno = 1989U;
    descriptor___14.flags = 0U;
    tmp___15 = ldv__builtin_expect((long )descriptor___14.flags & 1L, 0L);
    }
    if (tmp___15 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___14, "Port[%d] status = 0x%x\n", (int )port_id,
                         port->status);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int oz_clear_port_feature(struct usb_hcd *hcd , u16 wvalue , u16 windex )
{
  struct oz_port *port ;
  u8 port_id ;
  struct oz_hcd *ozhcd ;
  struct oz_hcd *tmp ;
  unsigned int clear_bits ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___10 ;
  long tmp___11 ;
  struct _ddebug descriptor___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___12 ;
  long tmp___13 ;
  struct _ddebug descriptor___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___14 ;
  long tmp___15 ;
  {
  {
  port_id = (unsigned char )windex;
  tmp = oz_hcd_private(hcd);
  ozhcd = tmp;
  clear_bits = 0U;
  }
  if ((unsigned int )port_id - 1U > 7U) {
    return (-32);
  } else {
  }
  port = (struct oz_port *)(& ozhcd->ports) + ((unsigned long )port_id + 0xffffffffffffffffUL);
  {
  if ((int )wvalue == 0) {
    goto case_0;
  } else {
  }
  if ((int )wvalue == 1) {
    goto case_1;
  } else {
  }
  if ((int )wvalue == 2) {
    goto case_2;
  } else {
  }
  if ((int )wvalue == 3) {
    goto case_3;
  } else {
  }
  if ((int )wvalue == 4) {
    goto case_4;
  } else {
  }
  if ((int )wvalue == 8) {
    goto case_8;
  } else {
  }
  if ((int )wvalue == 9) {
    goto case_9;
  } else {
  }
  if ((int )wvalue == 16) {
    goto case_16;
  } else {
  }
  if ((int )wvalue == 17) {
    goto case_17;
  } else {
  }
  if ((int )wvalue == 18) {
    goto case_18;
  } else {
  }
  if ((int )wvalue == 19) {
    goto case_19;
  } else {
  }
  if ((int )wvalue == 20) {
    goto case_20;
  } else {
  }
  if ((int )wvalue == 21) {
    goto case_21;
  } else {
  }
  if ((int )wvalue == 22) {
    goto case_22;
  } else {
  }
  goto switch_default;
  case_0: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor.modname = "ozwpan";
    descriptor.function = "oz_clear_port_feature";
    descriptor.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor.format = "USB_PORT_FEAT_CONNECTION\n";
    descriptor.lineno = 2008U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "USB_PORT_FEAT_CONNECTION\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48242;
  case_1: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___0.modname = "ozwpan";
    descriptor___0.function = "oz_clear_port_feature";
    descriptor___0.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___0.format = "USB_PORT_FEAT_ENABLE\n";
    descriptor___0.lineno = 2011U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "USB_PORT_FEAT_ENABLE\n");
      }
    } else {
    }
  } else {
  }
  clear_bits = 2U;
  goto ldv_48242;
  case_2: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___1.modname = "ozwpan";
    descriptor___1.function = "oz_clear_port_feature";
    descriptor___1.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___1.format = "USB_PORT_FEAT_SUSPEND\n";
    descriptor___1.lineno = 2015U;
    descriptor___1.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "USB_PORT_FEAT_SUSPEND\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48242;
  case_3: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___2.modname = "ozwpan";
    descriptor___2.function = "oz_clear_port_feature";
    descriptor___2.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___2.format = "USB_PORT_FEAT_OVER_CURRENT\n";
    descriptor___2.lineno = 2018U;
    descriptor___2.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___2, "USB_PORT_FEAT_OVER_CURRENT\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48242;
  case_4: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___3.modname = "ozwpan";
    descriptor___3.function = "oz_clear_port_feature";
    descriptor___3.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___3.format = "USB_PORT_FEAT_RESET\n";
    descriptor___3.lineno = 2021U;
    descriptor___3.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___3, "USB_PORT_FEAT_RESET\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48242;
  case_8: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___4.modname = "ozwpan";
    descriptor___4.function = "oz_clear_port_feature";
    descriptor___4.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___4.format = "USB_PORT_FEAT_POWER\n";
    descriptor___4.lineno = 2024U;
    descriptor___4.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    }
    if (tmp___5 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___4, "USB_PORT_FEAT_POWER\n");
      }
    } else {
    }
  } else {
  }
  clear_bits = clear_bits | 256U;
  goto ldv_48242;
  case_9: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___5.modname = "ozwpan";
    descriptor___5.function = "oz_clear_port_feature";
    descriptor___5.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___5.format = "USB_PORT_FEAT_LOWSPEED\n";
    descriptor___5.lineno = 2028U;
    descriptor___5.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    }
    if (tmp___6 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___5, "USB_PORT_FEAT_LOWSPEED\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48242;
  case_16: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___6.modname = "ozwpan";
    descriptor___6.function = "oz_clear_port_feature";
    descriptor___6.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___6.format = "USB_PORT_FEAT_C_CONNECTION\n";
    descriptor___6.lineno = 2031U;
    descriptor___6.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    }
    if (tmp___7 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___6, "USB_PORT_FEAT_C_CONNECTION\n");
      }
    } else {
    }
  } else {
  }
  clear_bits = 65536U;
  goto ldv_48242;
  case_17: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___7.modname = "ozwpan";
    descriptor___7.function = "oz_clear_port_feature";
    descriptor___7.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___7.format = "USB_PORT_FEAT_C_ENABLE\n";
    descriptor___7.lineno = 2035U;
    descriptor___7.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    }
    if (tmp___8 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___7, "USB_PORT_FEAT_C_ENABLE\n");
      }
    } else {
    }
  } else {
  }
  clear_bits = 131072U;
  goto ldv_48242;
  case_18: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___8.modname = "ozwpan";
    descriptor___8.function = "oz_clear_port_feature";
    descriptor___8.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___8.format = "USB_PORT_FEAT_C_SUSPEND\n";
    descriptor___8.lineno = 2039U;
    descriptor___8.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
    }
    if (tmp___9 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___8, "USB_PORT_FEAT_C_SUSPEND\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48242;
  case_19: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___9.modname = "ozwpan";
    descriptor___9.function = "oz_clear_port_feature";
    descriptor___9.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___9.format = "USB_PORT_FEAT_C_OVER_CURRENT\n";
    descriptor___9.lineno = 2042U;
    descriptor___9.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
    }
    if (tmp___10 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___9, "USB_PORT_FEAT_C_OVER_CURRENT\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48242;
  case_20: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___10.modname = "ozwpan";
    descriptor___10.function = "oz_clear_port_feature";
    descriptor___10.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___10.format = "USB_PORT_FEAT_C_RESET\n";
    descriptor___10.lineno = 2045U;
    descriptor___10.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
    }
    if (tmp___11 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___10, "USB_PORT_FEAT_C_RESET\n");
      }
    } else {
    }
  } else {
  }
  clear_bits = 1310720U;
  goto ldv_48242;
  case_21: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___11.modname = "ozwpan";
    descriptor___11.function = "oz_clear_port_feature";
    descriptor___11.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___11.format = "USB_PORT_FEAT_TEST\n";
    descriptor___11.lineno = 2049U;
    descriptor___11.flags = 0U;
    tmp___12 = ldv__builtin_expect((long )descriptor___11.flags & 1L, 0L);
    }
    if (tmp___12 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___11, "USB_PORT_FEAT_TEST\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48242;
  case_22: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___12.modname = "ozwpan";
    descriptor___12.function = "oz_clear_port_feature";
    descriptor___12.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___12.format = "USB_PORT_FEAT_INDICATOR\n";
    descriptor___12.lineno = 2052U;
    descriptor___12.flags = 0U;
    tmp___13 = ldv__builtin_expect((long )descriptor___12.flags & 1L, 0L);
    }
    if (tmp___13 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___12, "USB_PORT_FEAT_INDICATOR\n");
      }
    } else {
    }
  } else {
  }
  goto ldv_48242;
  switch_default: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___13.modname = "ozwpan";
    descriptor___13.function = "oz_clear_port_feature";
    descriptor___13.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___13.format = "Other %d\n";
    descriptor___13.lineno = 2055U;
    descriptor___13.flags = 0U;
    tmp___14 = ldv__builtin_expect((long )descriptor___13.flags & 1L, 0L);
    }
    if (tmp___14 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___13, "Other %d\n", (int )wvalue);
      }
    } else {
    }
  } else {
  }
  goto ldv_48242;
  switch_break: ;
  }
  ldv_48242: ;
  if (clear_bits != 0U) {
    {
    ldv_spin_lock_bh_148(& port->port_lock);
    port->status = port->status & ~ clear_bits;
    ldv_spin_unlock_bh_149(& port->port_lock);
    }
  } else {
  }
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___14.modname = "ozwpan";
    descriptor___14.function = "oz_clear_port_feature";
    descriptor___14.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___14.format = "Port[%d] status = 0x%x\n";
    descriptor___14.lineno = 2064U;
    descriptor___14.flags = 0U;
    tmp___15 = ldv__builtin_expect((long )descriptor___14.flags & 1L, 0L);
    }
    if (tmp___15 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___14, "Port[%d] status = 0x%x\n", (int )port_id,
                         ozhcd->ports[(int )port_id + -1].status);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int oz_get_port_status(struct usb_hcd *hcd , u16 windex , char *buf )
{
  struct oz_hcd *ozhcd ;
  u32 status ;
  struct _ddebug descriptor ;
  long tmp ;
  void *__gu_p ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  if ((unsigned int )windex - 1U > 7U) {
    return (-32);
  } else {
  }
  {
  ozhcd = oz_hcd_private(hcd);
  }
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor.modname = "ozwpan";
    descriptor.function = "oz_get_port_status";
    descriptor.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor.format = "GetPortStatus windex = %d\n";
    descriptor.lineno = 2079U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "GetPortStatus windex = %d\n", (int )windex);
      }
    } else {
    }
  } else {
  }
  status = ozhcd->ports[(int )windex + -1].status;
  __gu_p = (void *)buf;
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
  *((u8 *)__gu_p) = (unsigned char )status;
  goto ldv_48283;
  case_2:
  {
  put_unaligned_le16((int )((unsigned short )status), __gu_p);
  }
  goto ldv_48283;
  case_4:
  {
  put_unaligned_le32(status, __gu_p);
  }
  goto ldv_48283;
  case_8:
  {
  put_unaligned_le64((unsigned long long )status, __gu_p);
  }
  goto ldv_48283;
  switch_default:
  {
  __bad_unaligned_access_size();
  }
  goto ldv_48283;
  switch_break: ;
  }
  ldv_48283: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___0.modname = "ozwpan";
    descriptor___0.function = "oz_get_port_status";
    descriptor___0.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___0.format = "Port[%d] status = %x\n";
    descriptor___0.lineno = 2082U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "Port[%d] status = %x\n", (int )windex,
                         status);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int oz_hcd_hub_control(struct usb_hcd *hcd , u16 req_type , u16 wvalue , u16 windex ,
                              char *buf , u16 wlength )
{
  int err ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  void *__gu_p ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  {
  err = 0;
  {
  if ((int )req_type == 8193) {
    goto case_8193;
  } else {
  }
  if ((int )req_type == 8961) {
    goto case_8961;
  } else {
  }
  if ((int )req_type == 40966) {
    goto case_40966;
  } else {
  }
  if ((int )req_type == 40960) {
    goto case_40960;
  } else {
  }
  if ((int )req_type == 41728) {
    goto case_41728;
  } else {
  }
  if ((int )req_type == 8195) {
    goto case_8195;
  } else {
  }
  if ((int )req_type == 8963) {
    goto case_8963;
  } else {
  }
  goto switch_default___0;
  case_8193: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor.modname = "ozwpan";
    descriptor.function = "oz_hcd_hub_control";
    descriptor.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor.format = "ClearHubFeature: %d\n";
    descriptor.lineno = 2096U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "ClearHubFeature: %d\n", (int )req_type);
      }
    } else {
    }
  } else {
  }
  goto ldv_48301;
  case_8961:
  {
  err = oz_clear_port_feature(hcd, (int )wvalue, (int )windex);
  }
  goto ldv_48301;
  case_40966:
  {
  oz_get_hub_descriptor(hcd, (struct usb_hub_descriptor *)buf);
  }
  goto ldv_48301;
  case_40960: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___0.modname = "ozwpan";
    descriptor___0.function = "oz_hcd_hub_control";
    descriptor___0.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___0.format = "GetHubStatus: req_type = 0x%x\n";
    descriptor___0.lineno = 2105U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "GetHubStatus: req_type = 0x%x\n", (int )req_type);
      }
    } else {
    }
  } else {
  }
  __gu_p = (void *)buf;
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
  *((u8 *)__gu_p) = 0U;
  goto ldv_48308;
  case_2:
  {
  put_unaligned_le16(0, __gu_p);
  }
  goto ldv_48308;
  case_4:
  {
  put_unaligned_le32(0U, __gu_p);
  }
  goto ldv_48308;
  case_8:
  {
  put_unaligned_le64(0ULL, __gu_p);
  }
  goto ldv_48308;
  switch_default:
  {
  __bad_unaligned_access_size();
  }
  goto ldv_48308;
  switch_break___0: ;
  }
  ldv_48308: ;
  goto ldv_48301;
  case_41728:
  {
  err = oz_get_port_status(hcd, (int )windex, buf);
  }
  goto ldv_48301;
  case_8195: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___1.modname = "ozwpan";
    descriptor___1.function = "oz_hcd_hub_control";
    descriptor___1.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___1.format = "SetHubFeature: %d\n";
    descriptor___1.lineno = 2112U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "SetHubFeature: %d\n", (int )req_type);
      }
    } else {
    }
  } else {
  }
  goto ldv_48301;
  case_8963:
  {
  err = oz_set_port_feature(hcd, (int )wvalue, (int )windex);
  }
  goto ldv_48301;
  switch_default___0: ;
  if ((oz_dbg_mask & 8U) != 0U) {
    {
    descriptor___2.modname = "ozwpan";
    descriptor___2.function = "oz_hcd_hub_control";
    descriptor___2.filename = "drivers/staging/ozwpan/ozhcd.c";
    descriptor___2.format = "Other: %d\n";
    descriptor___2.lineno = 2118U;
    descriptor___2.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___2, "Other: %d\n", (int )req_type);
      }
    } else {
    }
  } else {
  }
  goto ldv_48301;
  switch_break: ;
  }
  ldv_48301: ;
  return (err);
}
}
static int oz_hcd_bus_suspend(struct usb_hcd *hcd )
{
  struct oz_hcd *ozhcd ;
  {
  {
  ozhcd = oz_hcd_private(hcd);
  ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
  hcd->state = 4;
  ozhcd->flags = ozhcd->flags | 1U;
  ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
  }
  return (0);
}
}
static int oz_hcd_bus_resume(struct usb_hcd *hcd )
{
  struct oz_hcd *ozhcd ;
  {
  {
  ozhcd = oz_hcd_private(hcd);
  ldv_spin_lock_bh_126(& ozhcd->hcd_lock);
  ozhcd->flags = ozhcd->flags & 4294967294U;
  hcd->state = 1;
  ldv_spin_unlock_bh_127(& ozhcd->hcd_lock);
  }
  return (0);
}
}
static void oz_plat_shutdown(struct platform_device *dev )
{
  {
  return;
}
}
static int oz_plat_probe(struct platform_device *dev )
{
  int i ;
  int err ;
  struct usb_hcd *hcd ;
  struct oz_hcd *ozhcd ;
  char const *tmp ;
  struct lock_class_key __key ;
  struct oz_port *port ;
  struct lock_class_key __key___0 ;
  {
  {
  tmp = dev_name((struct device const *)(& dev->dev));
  hcd = usb_create_hcd(& g_oz_hc_drv, & dev->dev, tmp);
  }
  if ((unsigned long )hcd == (unsigned long )((struct usb_hcd *)0)) {
    return (-12);
  } else {
  }
  {
  ozhcd = oz_hcd_private(hcd);
  memset((void *)ozhcd, 0, 3344UL);
  INIT_LIST_HEAD(& ozhcd->urb_pending_list);
  INIT_LIST_HEAD(& ozhcd->urb_cancel_list);
  INIT_LIST_HEAD(& ozhcd->orphanage);
  ozhcd->hcd = hcd;
  ozhcd->conn_port = -1;
  spinlock_check(& ozhcd->hcd_lock);
  __raw_spin_lock_init(& ozhcd->hcd_lock.__annonCompField18.rlock, "&(&ozhcd->hcd_lock)->rlock",
                       & __key);
  i = 0;
  }
  goto ldv_48343;
  ldv_48342:
  {
  port = (struct oz_port *)(& ozhcd->ports) + (unsigned long )i;
  port->ozhcd = ozhcd;
  port->flags = 0U;
  port->status = 0U;
  port->bus_addr = 255U;
  spinlock_check(& port->port_lock);
  __raw_spin_lock_init(& port->port_lock.__annonCompField18.rlock, "&(&port->port_lock)->rlock",
                       & __key___0);
  i = i + 1;
  }
  ldv_48343: ;
  if (i <= 7) {
    goto ldv_48342;
  } else {
  }
  {
  err = usb_add_hcd(hcd, 0U, 0UL);
  }
  if (err != 0) {
    {
    usb_put_hcd(hcd);
    }
    return (-1);
  } else {
  }
  {
  device_wakeup_enable(hcd->self.controller);
  ldv_spin_lock_bh_136(& g_hcdlock);
  g_ozhcd = ozhcd;
  ldv_spin_unlock_bh_137(& g_hcdlock);
  }
  return (0);
}
}
static int oz_plat_remove(struct platform_device *dev )
{
  struct usb_hcd *hcd ;
  void *tmp ;
  struct oz_hcd *ozhcd ;
  {
  {
  tmp = platform_get_drvdata((struct platform_device const *)dev);
  hcd = (struct usb_hcd *)tmp;
  }
  if ((unsigned long )hcd == (unsigned long )((struct usb_hcd *)0)) {
    return (-1);
  } else {
  }
  {
  ozhcd = oz_hcd_private(hcd);
  ldv_spin_lock_bh_136(& g_hcdlock);
  }
  if ((unsigned long )ozhcd == (unsigned long )g_ozhcd) {
    g_ozhcd = (struct oz_hcd *)0;
  } else {
  }
  {
  ldv_spin_unlock_bh_137(& g_hcdlock);
  oz_hcd_clear_orphanage(ozhcd, -32);
  usb_remove_hcd(hcd);
  usb_put_hcd(hcd);
  }
  return (0);
}
}
static int oz_plat_suspend(struct platform_device *dev , pm_message_t msg )
{
  {
  return (0);
}
}
static int oz_plat_resume(struct platform_device *dev )
{
  {
  return (0);
}
}
int oz_hcd_init(void)
{
  int err ;
  int tmp ;
  {
  {
  tmp = usb_disabled();
  }
  if (tmp != 0) {
    return (-19);
  } else {
  }
  {
  oz_urb_link_cache = kmem_cache_create("oz_urb_link", 40UL, 8UL, 0UL, (void (*)(void * ))0);
  }
  if ((unsigned long )oz_urb_link_cache == (unsigned long )((struct kmem_cache *)0)) {
    return (-12);
  } else {
  }
  {
  tasklet_init(& g_urb_process_tasklet, & oz_urb_process_tasklet, 0UL);
  tasklet_init(& g_urb_cancel_tasklet, & oz_urb_cancel_tasklet, 0UL);
  err = ldv___platform_driver_register_207(& g_oz_plat_drv, & __this_module);
  }
  if (err != 0) {
    goto error;
  } else {
  }
  {
  g_plat_dev = platform_device_alloc("ozwpan", -1);
  }
  if ((unsigned long )g_plat_dev == (unsigned long )((struct platform_device *)0)) {
    err = -12;
    goto error1;
  } else {
  }
  {
  err = platform_device_add(g_plat_dev);
  }
  if (err != 0) {
    goto error2;
  } else {
  }
  return (0);
  error2:
  {
  platform_device_put(g_plat_dev);
  }
  error1:
  {
  ldv_platform_driver_unregister_208(& g_oz_plat_drv);
  }
  error:
  {
  tasklet_disable(& g_urb_process_tasklet);
  tasklet_disable(& g_urb_cancel_tasklet);
  }
  return (err);
}
}
void oz_hcd_term(void)
{
  {
  {
  msleep(1500U);
  tasklet_kill(& g_urb_process_tasklet);
  tasklet_kill(& g_urb_cancel_tasklet);
  platform_device_unregister(g_plat_dev);
  ldv_platform_driver_unregister_209(& g_oz_plat_drv);
  kmem_cache_destroy(oz_urb_link_cache);
  }
  return;
}
}
int ldv___platform_driver_register(int arg0 , struct platform_driver *arg1 , struct module *arg2 ) ;
void ldv_dispatch_deregister_8_1(struct platform_driver *arg0 ) ;
void ldv_dispatch_pm_deregister_1_5(void) ;
void ldv_dispatch_pm_register_1_6(void) ;
void ldv_dispatch_register_5_2(struct platform_driver *arg0 ) ;
void ldv_io_instance_callback_3_17(int (*arg0)(struct usb_hcd * ) , struct usb_hcd *arg1 ) ;
void ldv_io_instance_callback_3_18(void (*arg0)(struct usb_hcd * , struct usb_host_endpoint * ) ,
                                   struct usb_hcd *arg1 , struct usb_host_endpoint *arg2 ) ;
void ldv_io_instance_callback_3_19(void (*arg0)(struct usb_hcd * , struct usb_host_endpoint * ) ,
                                   struct usb_hcd *arg1 , struct usb_host_endpoint *arg2 ) ;
void ldv_io_instance_callback_3_20(int (*arg0)(struct usb_hcd * ) , struct usb_hcd *arg1 ) ;
void ldv_io_instance_callback_3_21(int (*arg0)(struct usb_hcd * , unsigned short ,
                                               unsigned short , unsigned short ,
                                               char * , unsigned short ) , struct usb_hcd *arg1 ,
                                   unsigned short arg2 , unsigned short arg3 , unsigned short arg4 ,
                                   char *arg5 , unsigned short arg6 ) ;
void ldv_io_instance_callback_3_24(int (*arg0)(struct usb_hcd * , char * ) , struct usb_hcd *arg1 ,
                                   char *arg2 ) ;
void ldv_io_instance_callback_3_27(void (*arg0)(struct usb_hcd * ) , struct usb_hcd *arg1 ) ;
void ldv_io_instance_callback_3_28(int (*arg0)(struct usb_hcd * , struct urb * , int ) ,
                                   struct usb_hcd *arg1 , struct urb *arg2 , int arg3 ) ;
void ldv_io_instance_callback_3_31(int (*arg0)(struct usb_hcd * , struct urb * , unsigned int ) ,
                                   struct usb_hcd *arg1 , struct urb *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_3_4(int (*arg0)(struct usb_hcd * ) , struct usb_hcd *arg1 ) ;
int ldv_io_instance_probe_3_11(int (*arg0)(struct usb_hcd * ) , struct usb_hcd *arg1 ) ;
void ldv_io_instance_release_3_2(void (*arg0)(struct usb_hcd * ) , struct usb_hcd *arg1 ) ;
void ldv_platform_driver_unregister(void *arg0 , struct platform_driver *arg1 ) ;
void ldv_platform_instance_callback_1_20(void (*arg0)(struct platform_device * ) ,
                                         struct platform_device *arg1 ) ;
void ldv_platform_instance_callback_1_21(int (*arg0)(struct platform_device * , struct pm_message ) ,
                                         struct platform_device *arg1 , struct pm_message arg2 ) ;
void ldv_platform_instance_callback_1_7(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
int ldv_platform_instance_probe_1_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_instance_release_1_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_platform_instance_1(void *arg0 ) ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_3 ;
int ldv___platform_driver_register(int arg0 , struct platform_driver *arg1 , struct module *arg2 )
{
  struct platform_driver *ldv_5_platform_driver_platform_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_5_platform_driver_platform_driver = arg1;
    ldv_dispatch_register_5_2(ldv_5_platform_driver_platform_driver);
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
void ldv_dispatch_deregister_8_1(struct platform_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_pm_deregister_1_5(void)
{
  {
  return;
}
}
void ldv_dispatch_pm_register_1_6(void)
{
  struct ldv_struct_platform_instance_1 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_2 = (struct ldv_struct_platform_instance_1 *)tmp;
  ldv_platform_pm_ops_instance_2((void *)cf_arg_2);
  }
  return;
}
}
void ldv_dispatch_register_5_2(struct platform_driver *arg0 )
{
  struct ldv_struct_platform_instance_1 *cf_arg_1 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_1 = (struct ldv_struct_platform_instance_1 *)tmp;
  cf_arg_1->arg0 = arg0;
  ldv_platform_platform_instance_1((void *)cf_arg_1);
  }
  return;
}
}
void ldv_io_instance_callback_3_17(int (*arg0)(struct usb_hcd * ) , struct usb_hcd *arg1 )
{
  {
  {
  oz_hcd_bus_suspend(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_3_18(void (*arg0)(struct usb_hcd * , struct usb_host_endpoint * ) ,
                                   struct usb_hcd *arg1 , struct usb_host_endpoint *arg2 )
{
  {
  {
  oz_hcd_endpoint_disable(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_3_19(void (*arg0)(struct usb_hcd * , struct usb_host_endpoint * ) ,
                                   struct usb_hcd *arg1 , struct usb_host_endpoint *arg2 )
{
  {
  {
  oz_hcd_endpoint_reset(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_3_20(int (*arg0)(struct usb_hcd * ) , struct usb_hcd *arg1 )
{
  {
  {
  oz_hcd_get_frame_number(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_3_21(int (*arg0)(struct usb_hcd * , unsigned short ,
                                               unsigned short , unsigned short ,
                                               char * , unsigned short ) , struct usb_hcd *arg1 ,
                                   unsigned short arg2 , unsigned short arg3 , unsigned short arg4 ,
                                   char *arg5 , unsigned short arg6 )
{
  {
  {
  oz_hcd_hub_control(arg1, (int )arg2, (int )arg3, (int )arg4, arg5, (int )arg6);
  }
  return;
}
}
void ldv_io_instance_callback_3_24(int (*arg0)(struct usb_hcd * , char * ) , struct usb_hcd *arg1 ,
                                   char *arg2 )
{
  {
  {
  oz_hcd_hub_status_data(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_3_27(void (*arg0)(struct usb_hcd * ) , struct usb_hcd *arg1 )
{
  {
  {
  oz_hcd_shutdown(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_3_28(int (*arg0)(struct usb_hcd * , struct urb * , int ) ,
                                   struct usb_hcd *arg1 , struct urb *arg2 , int arg3 )
{
  {
  {
  oz_hcd_urb_dequeue(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_31(int (*arg0)(struct usb_hcd * , struct urb * , unsigned int ) ,
                                   struct usb_hcd *arg1 , struct urb *arg2 , unsigned int arg3 )
{
  {
  {
  oz_hcd_urb_enqueue(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_4(int (*arg0)(struct usb_hcd * ) , struct usb_hcd *arg1 )
{
  {
  {
  oz_hcd_bus_resume(arg1);
  }
  return;
}
}
int ldv_io_instance_probe_3_11(int (*arg0)(struct usb_hcd * ) , struct usb_hcd *arg1 )
{
  int tmp ;
  {
  {
  tmp = oz_hcd_start(arg1);
  }
  return (tmp);
}
}
void ldv_io_instance_release_3_2(void (*arg0)(struct usb_hcd * ) , struct usb_hcd *arg1 )
{
  {
  {
  oz_hcd_stop(arg1);
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
  ldv_dispatch_deregister_8_1(ldv_8_platform_driver_platform_driver);
  }
  return;
  return;
}
}
void ldv_platform_instance_callback_1_20(void (*arg0)(struct platform_device * ) ,
                                         struct platform_device *arg1 )
{
  {
  {
  oz_plat_shutdown(arg1);
  }
  return;
}
}
void ldv_platform_instance_callback_1_21(int (*arg0)(struct platform_device * , struct pm_message ) ,
                                         struct platform_device *arg1 , struct pm_message arg2 )
{
  {
  {
  oz_plat_suspend(arg1, arg2);
  }
  return;
}
}
void ldv_platform_instance_callback_1_7(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  {
  {
  oz_plat_resume(arg1);
  }
  return;
}
}
int ldv_platform_instance_probe_1_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = oz_plat_probe(arg1);
  }
  return (tmp);
}
}
void ldv_platform_instance_release_1_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  {
  {
  oz_plat_remove(arg1);
  }
  return;
}
}
void ldv_platform_platform_instance_1(void *arg0 )
{
  int (*ldv_1_callback_resume)(struct platform_device * ) ;
  void (*ldv_1_callback_shutdown)(struct platform_device * ) ;
  int (*ldv_1_callback_suspend)(struct platform_device * , struct pm_message ) ;
  struct platform_driver *ldv_1_container_platform_driver ;
  int ldv_1_probed_default ;
  struct platform_device *ldv_1_resource_platform_device ;
  struct pm_message ldv_1_resource_struct_pm_message ;
  struct ldv_struct_platform_instance_1 *data ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  data = (struct ldv_struct_platform_instance_1 *)arg0;
  ldv_1_probed_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_platform_instance_1 *)0)) {
    {
    ldv_1_container_platform_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(1464UL);
  ldv_1_resource_platform_device = (struct platform_device *)tmp;
  }
  goto ldv_main_1;
  return;
  ldv_main_1:
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    ldv_ldv_pre_probe_210();
    ldv_1_probed_default = ldv_platform_instance_probe_1_14(ldv_1_container_platform_driver->probe,
                                                            ldv_1_resource_platform_device);
    ldv_1_probed_default = ldv_ldv_post_probe_211(ldv_1_probed_default);
    tmp___0 = ldv_undef_int();
    }
    if (tmp___0 != 0) {
      {
      ldv_assume(ldv_1_probed_default == 0);
      }
      goto ldv_call_1;
    } else {
      {
      ldv_assume(ldv_1_probed_default != 0);
      }
      goto ldv_main_1;
    }
  } else {
    {
    ldv_free((void *)ldv_1_resource_platform_device);
    }
    return;
  }
  return;
  ldv_call_1:
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
  if (tmp___2 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___2 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_platform_instance_callback_1_21(ldv_1_callback_suspend, ldv_1_resource_platform_device,
                                      ldv_1_resource_struct_pm_message);
  }
  goto ldv_call_1;
  case_2:
  {
  ldv_platform_instance_callback_1_20(ldv_1_callback_shutdown, ldv_1_resource_platform_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  case_3:
  {
  ldv_platform_instance_callback_1_7(ldv_1_callback_resume, ldv_1_resource_platform_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_4:
  {
  ldv_dispatch_pm_register_1_6();
  ldv_dispatch_pm_deregister_1_5();
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_5:
  {
  ldv_platform_instance_release_1_3(ldv_1_container_platform_driver->remove, ldv_1_resource_platform_device);
  ldv_1_probed_default = 1;
  }
  goto ldv_main_1;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_hc_driver_io_instance_3(void *arg0 )
{
  int (*ldv_3_callback_bus_resume)(struct usb_hcd * ) ;
  int (*ldv_3_callback_bus_suspend)(struct usb_hcd * ) ;
  void (*ldv_3_callback_endpoint_disable)(struct usb_hcd * , struct usb_host_endpoint * ) ;
  void (*ldv_3_callback_endpoint_reset)(struct usb_hcd * , struct usb_host_endpoint * ) ;
  int (*ldv_3_callback_get_frame_number)(struct usb_hcd * ) ;
  int (*ldv_3_callback_hub_control)(struct usb_hcd * , unsigned short , unsigned short ,
                                    unsigned short , char * , unsigned short ) ;
  int (*ldv_3_callback_hub_status_data)(struct usb_hcd * , char * ) ;
  void (*ldv_3_callback_shutdown)(struct usb_hcd * ) ;
  int (*ldv_3_callback_urb_dequeue)(struct usb_hcd * , struct urb * , int ) ;
  int (*ldv_3_callback_urb_enqueue)(struct usb_hcd * , struct urb * , unsigned int ) ;
  struct hc_driver *ldv_3_container_struct_hc_driver ;
  unsigned short ldv_3_ldv_param_21_1_default ;
  unsigned short ldv_3_ldv_param_21_2_default ;
  unsigned short ldv_3_ldv_param_21_3_default ;
  char *ldv_3_ldv_param_21_4_default ;
  unsigned short ldv_3_ldv_param_21_5_default ;
  char *ldv_3_ldv_param_24_1_default ;
  int ldv_3_ldv_param_28_2_default ;
  unsigned int ldv_3_ldv_param_31_2_default ;
  struct urb *ldv_3_resource_struct_urb_ptr ;
  struct usb_hcd *ldv_3_resource_struct_usb_hcd_ptr ;
  struct usb_host_endpoint *ldv_3_resource_struct_usb_host_endpoint_ptr ;
  int ldv_3_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  {
  ldv_3_ret_default = 1;
  tmp = ldv_xmalloc(192UL);
  ldv_3_resource_struct_urb_ptr = (struct urb *)tmp;
  tmp___0 = ldv_xmalloc(968UL);
  ldv_3_resource_struct_usb_hcd_ptr = (struct usb_hcd *)tmp___0;
  tmp___1 = ldv_xmalloc(72UL);
  ldv_3_resource_struct_usb_host_endpoint_ptr = (struct usb_host_endpoint *)tmp___1;
  }
  goto ldv_main_3;
  return;
  ldv_main_3:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_3_ret_default = ldv_io_instance_probe_3_11(ldv_3_container_struct_hc_driver->start,
                                                   ldv_3_resource_struct_usb_hcd_ptr);
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
    ldv_free((void *)ldv_3_resource_struct_urb_ptr);
    ldv_free((void *)ldv_3_resource_struct_usb_hcd_ptr);
    ldv_free((void *)ldv_3_resource_struct_usb_host_endpoint_ptr);
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
  if (tmp___4 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___4 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___4 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___4 == 7) {
    goto case_7;
  } else {
  }
  if (tmp___4 == 8) {
    goto case_8;
  } else {
  }
  if (tmp___4 == 9) {
    goto case_9;
  } else {
  }
  if (tmp___4 == 10) {
    goto case_10;
  } else {
  }
  if (tmp___4 == 11) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_io_instance_callback_3_31(ldv_3_callback_urb_enqueue, ldv_3_resource_struct_usb_hcd_ptr,
                                ldv_3_resource_struct_urb_ptr, ldv_3_ldv_param_31_2_default);
  }
  goto ldv_call_3;
  case_2:
  {
  ldv_io_instance_callback_3_28(ldv_3_callback_urb_dequeue, ldv_3_resource_struct_usb_hcd_ptr,
                                ldv_3_resource_struct_urb_ptr, ldv_3_ldv_param_28_2_default);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  case_3:
  {
  ldv_io_instance_callback_3_27(ldv_3_callback_shutdown, ldv_3_resource_struct_usb_hcd_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_4:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_24_1_default = (char *)tmp___5;
  ldv_io_instance_callback_3_24(ldv_3_callback_hub_status_data, ldv_3_resource_struct_usb_hcd_ptr,
                                ldv_3_ldv_param_24_1_default);
  ldv_free((void *)ldv_3_ldv_param_24_1_default);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_5:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_21_4_default = (char *)tmp___6;
  ldv_io_instance_callback_3_21(ldv_3_callback_hub_control, ldv_3_resource_struct_usb_hcd_ptr,
                                (int )ldv_3_ldv_param_21_1_default, (int )ldv_3_ldv_param_21_2_default,
                                (int )ldv_3_ldv_param_21_3_default, ldv_3_ldv_param_21_4_default,
                                (int )ldv_3_ldv_param_21_5_default);
  ldv_free((void *)ldv_3_ldv_param_21_4_default);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_6:
  {
  ldv_io_instance_callback_3_20(ldv_3_callback_get_frame_number, ldv_3_resource_struct_usb_hcd_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_7:
  {
  ldv_io_instance_callback_3_19(ldv_3_callback_endpoint_reset, ldv_3_resource_struct_usb_hcd_ptr,
                                ldv_3_resource_struct_usb_host_endpoint_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_8:
  {
  ldv_io_instance_callback_3_18(ldv_3_callback_endpoint_disable, ldv_3_resource_struct_usb_hcd_ptr,
                                ldv_3_resource_struct_usb_host_endpoint_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_9:
  {
  ldv_io_instance_callback_3_17(ldv_3_callback_bus_suspend, ldv_3_resource_struct_usb_hcd_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_10:
  {
  ldv_io_instance_callback_3_4(ldv_3_callback_bus_resume, ldv_3_resource_struct_usb_hcd_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_11:
  {
  ldv_io_instance_release_3_2(ldv_3_container_struct_hc_driver->stop, ldv_3_resource_struct_usb_hcd_ptr);
  }
  goto ldv_main_3;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
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
static void *ldv_kmem_cache_alloc_121(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
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
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_122(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_g_tasklet_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_123(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_g_tasklet_lock();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_124(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_g_tasklet_lock();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_125(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_g_tasklet_lock();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_hcd_lock_of_oz_hcd();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_hcd_lock_of_oz_hcd();
  spin_unlock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_136(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_g_hcdlock();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_137(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_g_hcdlock();
  spin_unlock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_139(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_port_lock_of_oz_port();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_140___0(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_port_lock_of_oz_port();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_148(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_port_lock_of_oz_port();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_149(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_port_lock_of_oz_port();
  spin_unlock_bh(lock);
  }
  return;
}
}
void *ldv_malloc(size_t size ) ;
__inline static void *ldv_kmalloc_array_165(size_t n , size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_malloc(size * n);
  ldv_after_alloc(res);
  }
  return (res);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_174(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_g_tasklet_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_176(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_g_tasklet_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_178(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_g_tasklet_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_181(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_hcd_lock_of_oz_hcd();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_182(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_hcd_lock_of_oz_hcd();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_183(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_g_tasklet_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_185(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_g_tasklet_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_187(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_g_tasklet_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_190(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_g_tasklet_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv___platform_driver_register_207(struct platform_driver *ldv_func_arg1 ,
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
static void ldv_platform_driver_unregister_208(struct platform_driver *ldv_func_arg1 )
{
  {
  {
  platform_driver_unregister(ldv_func_arg1);
  ldv_platform_driver_unregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_platform_driver_unregister_209(struct platform_driver *ldv_func_arg1 )
{
  {
  {
  platform_driver_unregister(ldv_func_arg1);
  ldv_platform_driver_unregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_ldv_pre_probe_210(void)
{
  {
  {
  ldv_linux_net_register_reset_error_counter();
  ldv_linux_usb_register_reset_error_counter();
  ldv_pre_probe();
  }
  return;
}
}
static int ldv_ldv_post_probe_211(int retval )
{
  int tmp ;
  {
  {
  ldv_linux_net_register_check_return_value_probe(retval);
  ldv_linux_usb_register_check_return_value_probe(retval);
  tmp = ldv_post_probe(retval);
  }
  return (tmp);
}
}
__inline static void atomic_inc(atomic_t *v ) ;
__inline static int atomic_dec_and_test(atomic_t *v ) ;
__inline static void ldv_spin_lock_bh_135(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_135(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_135(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_135(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_136(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_136(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_136(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_136(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_136(spinlock_t *lock ) ;
__inline static void *kmem_cache_zalloc(struct kmem_cache *k , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void oz_elt_stream_get(struct oz_elt_stream *st ) ;
void oz_elt_stream_put(struct oz_elt_stream *st ) ;
struct kmem_cache *oz_elt_info_cache ;
void oz_elt_buf_init(struct oz_elt_buf *buf )
{
  struct lock_class_key __key ;
  {
  {
  memset((void *)buf, 0, 128UL);
  INIT_LIST_HEAD(& buf->stream_list);
  INIT_LIST_HEAD(& buf->order_list);
  INIT_LIST_HEAD(& buf->isoc_list);
  spinlock_check(& buf->lock);
  __raw_spin_lock_init(& buf->lock.__annonCompField18.rlock, "&(&buf->lock)->rlock",
                       & __key);
  }
  return;
}
}
void oz_elt_buf_term(struct oz_elt_buf *buf )
{
  struct oz_elt_info *ei ;
  struct oz_elt_info *n ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  {
  __mptr = (struct list_head const *)buf->isoc_list.next;
  ei = (struct oz_elt_info *)__mptr + 0xfffffffffffffff0UL;
  __mptr___0 = (struct list_head const *)ei->link_order.next;
  n = (struct oz_elt_info *)__mptr___0 + 0xfffffffffffffff0UL;
  goto ldv_46488;
  ldv_46487:
  {
  kfree((void const *)ei);
  ei = n;
  __mptr___1 = (struct list_head const *)n->link_order.next;
  n = (struct oz_elt_info *)__mptr___1 + 0xfffffffffffffff0UL;
  }
  ldv_46488: ;
  if ((unsigned long )(& ei->link_order) != (unsigned long )(& buf->isoc_list)) {
    goto ldv_46487;
  } else {
  }
  __mptr___2 = (struct list_head const *)buf->order_list.next;
  ei = (struct oz_elt_info *)__mptr___2 + 0xfffffffffffffff0UL;
  __mptr___3 = (struct list_head const *)ei->link_order.next;
  n = (struct oz_elt_info *)__mptr___3 + 0xfffffffffffffff0UL;
  goto ldv_46497;
  ldv_46496:
  {
  kfree((void const *)ei);
  ei = n;
  __mptr___4 = (struct list_head const *)n->link_order.next;
  n = (struct oz_elt_info *)__mptr___4 + 0xfffffffffffffff0UL;
  }
  ldv_46497: ;
  if ((unsigned long )(& ei->link_order) != (unsigned long )(& buf->order_list)) {
    goto ldv_46496;
  } else {
  }
  return;
}
}
struct oz_elt_info *oz_elt_info_alloc(struct oz_elt_buf *buf )
{
  struct oz_elt_info *ei ;
  void *tmp ;
  {
  {
  tmp = kmem_cache_zalloc(oz_elt_info_cache, 32U);
  ei = (struct oz_elt_info *)tmp;
  }
  if ((unsigned long )ei != (unsigned long )((struct oz_elt_info *)0)) {
    {
    INIT_LIST_HEAD(& ei->link);
    INIT_LIST_HEAD(& ei->link_order);
    }
  } else {
  }
  return (ei);
}
}
void oz_elt_info_free(struct oz_elt_buf *buf , struct oz_elt_info *ei )
{
  {
  if ((unsigned long )ei != (unsigned long )((struct oz_elt_info *)0)) {
    {
    kmem_cache_free(oz_elt_info_cache, (void *)ei);
    }
  } else {
  }
  return;
}
}
void oz_elt_info_free_chain(struct oz_elt_buf *buf , struct list_head *list )
{
  struct oz_elt_info *ei ;
  struct oz_elt_info *n ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  {
  ldv_spin_lock_bh_135(& buf->lock);
  __mptr = (struct list_head const *)(list->next)->next;
  ei = (struct oz_elt_info *)__mptr;
  __mptr___0 = (struct list_head const *)ei->link.next;
  n = (struct oz_elt_info *)__mptr___0;
  }
  goto ldv_46520;
  ldv_46519:
  {
  oz_elt_info_free(buf, ei);
  ei = n;
  __mptr___1 = (struct list_head const *)n->link.next;
  n = (struct oz_elt_info *)__mptr___1;
  }
  ldv_46520: ;
  if ((unsigned long )(& ei->link) != (unsigned long )list->next) {
    goto ldv_46519;
  } else {
  }
  {
  ldv_spin_unlock_bh_136(& buf->lock);
  }
  return;
}
}
int oz_elt_stream_create(struct oz_elt_buf *buf , u8 id , int max_buf_count )
{
  struct oz_elt_stream *st ;
  void *tmp___0 ;
  {
  {
  tmp___0 = kzalloc(48UL, 32U);
  st = (struct oz_elt_stream *)tmp___0;
  }
  if ((unsigned long )st == (unsigned long )((struct oz_elt_stream *)0)) {
    return (-12);
  } else {
  }
  {
  atomic_set(& st->ref_count, 1);
  st->id = id;
  st->max_buf_count = (unsigned int )max_buf_count;
  INIT_LIST_HEAD(& st->elt_list);
  ldv_spin_lock_bh_135(& buf->lock);
  list_add_tail(& st->link, & buf->stream_list);
  ldv_spin_unlock_bh_136(& buf->lock);
  }
  return (0);
}
}
int oz_elt_stream_delete(struct oz_elt_buf *buf , u8 id )
{
  struct list_head *e ;
  struct list_head *n ;
  struct oz_elt_stream *st ;
  struct list_head const *__mptr ;
  struct oz_elt_info *ei ;
  struct list_head const *__mptr___0 ;
  struct _ddebug descriptor___0 ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  st = (struct oz_elt_stream *)0;
  ldv_spin_lock_bh_135(& buf->lock);
  e = buf->stream_list.next;
  }
  goto ldv_46543;
  ldv_46542:
  __mptr = (struct list_head const *)e;
  st = (struct oz_elt_stream *)__mptr;
  if ((int )st->id == (int )id) {
    {
    list_del(e);
    }
    goto ldv_46541;
  } else {
  }
  st = (struct oz_elt_stream *)0;
  e = e->next;
  ldv_46543: ;
  if ((unsigned long )e != (unsigned long )(& buf->stream_list)) {
    goto ldv_46542;
  } else {
  }
  ldv_46541: ;
  if ((unsigned long )st == (unsigned long )((struct oz_elt_stream *)0)) {
    {
    ldv_spin_unlock_bh_136(& buf->lock);
    }
    return (-1);
  } else {
  }
  e = st->elt_list.next;
  n = e->next;
  goto ldv_46549;
  ldv_46548:
  {
  __mptr___0 = (struct list_head const *)e;
  ei = (struct oz_elt_info *)__mptr___0;
  list_del_init(& ei->link);
  list_del_init(& ei->link_order);
  st->buf_count = st->buf_count - (unsigned int )ei->length;
  }
  if ((int )oz_dbg_mask & 1) {
    {
    descriptor___0.modname = "ozwpan";
    descriptor___0.function = "oz_elt_stream_delete";
    descriptor___0.filename = "drivers/staging/ozwpan/ozeltbuf.c";
    descriptor___0.format = "Stream down: %d %d %d\n";
    descriptor___0.lineno = 121U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___0 = atomic_read((atomic_t const *)(& st->ref_count));
      __dynamic_pr_debug(& descriptor___0, "Stream down: %d %d %d\n", st->buf_count,
                         ei->length, tmp___0);
      }
    } else {
    }
  } else {
  }
  {
  oz_elt_stream_put(st);
  oz_elt_info_free(buf, ei);
  e = n;
  n = e->next;
  }
  ldv_46549: ;
  if ((unsigned long )e != (unsigned long )(& st->elt_list)) {
    goto ldv_46548;
  } else {
  }
  {
  ldv_spin_unlock_bh_136(& buf->lock);
  oz_elt_stream_put(st);
  }
  return (0);
}
}
void oz_elt_stream_get(struct oz_elt_stream *st )
{
  {
  {
  atomic_inc(& st->ref_count);
  }
  return;
}
}
void oz_elt_stream_put(struct oz_elt_stream *st )
{
  int tmp___0 ;
  {
  {
  tmp___0 = atomic_dec_and_test(& st->ref_count);
  }
  if (tmp___0 != 0) {
    {
    kfree((void const *)st);
    }
  } else {
  }
  return;
}
}
int oz_queue_elt_info(struct oz_elt_buf *buf , u8 isoc , u8 id , struct oz_elt_info *ei )
{
  struct oz_elt_stream *st ;
  struct list_head *e ;
  struct list_head const *__mptr ;
  struct oz_isoc_fixed *body ;
  u8 unit_count ;
  struct _ddebug descriptor ;
  long tmp ;
  struct oz_elt_info *ei2 ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  {
  st = (struct oz_elt_stream *)0;
  if ((unsigned int )id != 0U) {
    e = buf->stream_list.next;
    goto ldv_46571;
    ldv_46570:
    __mptr = (struct list_head const *)e;
    st = (struct oz_elt_stream *)__mptr;
    if ((int )st->id == (int )id) {
      goto ldv_46569;
    } else {
    }
    e = e->next;
    ldv_46571: ;
    if ((unsigned long )e != (unsigned long )(& buf->stream_list)) {
      goto ldv_46570;
    } else {
    }
    ldv_46569: ;
    if ((unsigned long )e == (unsigned long )(& buf->stream_list)) {
      return (-1);
    } else {
    }
  } else {
  }
  if ((unsigned long )st != (unsigned long )((struct oz_elt_stream *)0)) {
    body = (struct oz_isoc_fixed *)(& ei->data) + 2U;
    if (((unsigned int )body->app_id == 1U && (unsigned int )body->type == 23U) && (unsigned int )body->format == 3U) {
      unit_count = body->frame_number;
      body->frame_number = st->frame_number;
      st->frame_number = (int )st->frame_number + (int )unit_count;
    } else {
    }
    {
    oz_elt_stream_get(st);
    ei->stream = st;
    st->buf_count = st->buf_count + (unsigned int )ei->length;
    list_add_tail(& ei->link, & st->elt_list);
    }
    if ((int )oz_dbg_mask & 1) {
      {
      descriptor.modname = "ozwpan";
      descriptor.function = "oz_queue_elt_info";
      descriptor.filename = "drivers/staging/ozwpan/ozeltbuf.c";
      descriptor.format = "Stream up: %d %d\n";
      descriptor.lineno = 187U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp != 0L) {
        {
        __dynamic_pr_debug(& descriptor, "Stream up: %d %d\n", st->buf_count, ei->length);
        }
      } else {
      }
    } else {
    }
    goto ldv_46580;
    ldv_46579:
    {
    __mptr___0 = (struct list_head const *)st->elt_list.next;
    ei2 = (struct oz_elt_info *)__mptr___0;
    list_del_init(& ei2->link);
    list_del_init(& ei2->link_order);
    st->buf_count = st->buf_count - (unsigned int )ei2->length;
    oz_elt_info_free(buf, ei2);
    oz_elt_stream_put(st);
    }
    ldv_46580: ;
    if (st->buf_count > st->max_buf_count) {
      {
      tmp___0 = list_empty((struct list_head const *)(& st->elt_list));
      }
      if (tmp___0 == 0) {
        goto ldv_46579;
      } else {
        goto ldv_46581;
      }
    } else {
    }
    ldv_46581: ;
  } else {
  }
  {
  list_add_tail(& ei->link_order, (unsigned int )isoc != 0U ? & buf->isoc_list : & buf->order_list);
  }
  return (0);
}
}
int oz_select_elts_for_tx(struct oz_elt_buf *buf , u8 isoc , unsigned int *len , unsigned int max_len ,
                          struct list_head *list )
{
  int count ;
  struct list_head *el ;
  struct oz_elt_info *ei ;
  struct oz_elt_info *n ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct oz_app_hdr *app_hdr ;
  u8 tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct list_head const *__mptr___1 ;
  {
  {
  count = 0;
  ldv_spin_lock_bh_135(& buf->lock);
  }
  if ((unsigned int )isoc != 0U) {
    el = & buf->isoc_list;
  } else {
    el = & buf->order_list;
  }
  __mptr = (struct list_head const *)el->next;
  ei = (struct oz_elt_info *)__mptr + 0xfffffffffffffff0UL;
  __mptr___0 = (struct list_head const *)ei->link_order.next;
  n = (struct oz_elt_info *)__mptr___0 + 0xfffffffffffffff0UL;
  goto ldv_46604;
  ldv_46603: ;
  if (*len + (unsigned int )ei->length <= max_len) {
    app_hdr = (struct oz_app_hdr *)(& ei->data) + 2U;
    tmp = buf->tx_seq_num[(int )ei->app_id];
    buf->tx_seq_num[(int )ei->app_id] = (u8 )((int )buf->tx_seq_num[(int )ei->app_id] + 1);
    app_hdr->elt_seq_num = tmp;
    if ((unsigned int )buf->tx_seq_num[(int )ei->app_id] == 0U) {
      buf->tx_seq_num[(int )ei->app_id] = 1U;
    } else {
    }
    {
    *len = *len + (unsigned int )ei->length;
    list_del(& ei->link);
    list_del(& ei->link_order);
    }
    if ((unsigned long )ei->stream != (unsigned long )((struct oz_elt_stream *)0)) {
      (ei->stream)->buf_count = (ei->stream)->buf_count - (unsigned int )ei->length;
      if ((int )oz_dbg_mask & 1) {
        {
        descriptor.modname = "ozwpan";
        descriptor.function = "oz_select_elts_for_tx";
        descriptor.filename = "drivers/staging/ozwpan/ozeltbuf.c";
        descriptor.format = "Stream down: %d %d\n";
        descriptor.lineno = 234U;
        descriptor.flags = 0U;
        tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
        }
        if (tmp___0 != 0L) {
          {
          __dynamic_pr_debug(& descriptor, "Stream down: %d %d\n", (ei->stream)->buf_count,
                             ei->length);
          }
        } else {
        }
      } else {
      }
      {
      oz_elt_stream_put(ei->stream);
      ei->stream = (struct oz_elt_stream *)0;
      }
    } else {
    }
    {
    INIT_LIST_HEAD(& ei->link_order);
    list_add_tail(& ei->link, list);
    count = count + 1;
    }
  } else {
    goto ldv_46602;
  }
  ei = n;
  __mptr___1 = (struct list_head const *)n->link_order.next;
  n = (struct oz_elt_info *)__mptr___1 + 0xfffffffffffffff0UL;
  ldv_46604: ;
  if ((unsigned long )(& ei->link_order) != (unsigned long )el) {
    goto ldv_46603;
  } else {
  }
  ldv_46602:
  {
  ldv_spin_unlock_bh_136(& buf->lock);
  }
  return (count);
}
}
int oz_are_elts_available(struct oz_elt_buf *buf )
{
  int tmp ;
  {
  {
  tmp = list_empty((struct list_head const *)(& buf->order_list));
  }
  return (tmp == 0);
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kmem_cache_zalloc(struct kmem_cache *k , gfp_t flags )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_zalloc(sizeof(struct oz_elt_info));
  }
  return (tmp);
}
}
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
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_g_binding_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_g_binding_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_sk_buff_head(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_sk_buff_head(void) ;
__inline static void ldv_spin_lock_122(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_122(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_122(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_132___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_132___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_151___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_151___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_132___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_132___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_121(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_121(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_121(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_133___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_133___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_152___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_152___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_152___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_133___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_133___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122(spinlock_t *lock ) ;
__inline static ktime_t ktime_set(s64 const secs , unsigned long const nsecs )
{
  ktime_t __constr_expr_0 ;
  long tmp ;
  ktime_t __constr_expr_1 ;
  {
  {
  tmp = ldv__builtin_expect((long long )secs > 9223372035LL, 0L);
  }
  if (tmp != 0L) {
    __constr_expr_0.tv64 = 9223372036854775807LL;
    return (__constr_expr_0);
  } else {
  }
  __constr_expr_1.tv64 = (long long )secs * 1000000000LL + (long long )nsecs;
  return (__constr_expr_1);
}
}
__inline static void hrtimer_set_expires(struct hrtimer *timer , ktime_t time )
{
  {
  timer->node.expires = time;
  timer->_softexpires = time;
  return;
}
}
__inline static ktime_t hrtimer_get_expires(struct hrtimer const *timer )
{
  ktime_t __constr_expr_0 ;
  {
  __constr_expr_0 = timer->node.expires;
  return (__constr_expr_0);
}
}
__inline static ktime_t hrtimer_get_softexpires(struct hrtimer const *timer )
{
  ktime_t __constr_expr_0 ;
  {
  __constr_expr_0 = timer->_softexpires;
  return (__constr_expr_0);
}
}
extern int hrtimer_start(struct hrtimer * , ktime_t , enum hrtimer_mode const ) ;
extern int hrtimer_start_range_ns(struct hrtimer * , ktime_t , unsigned long , enum hrtimer_mode const ) ;
__inline static int hrtimer_start_expires(struct hrtimer *timer , enum hrtimer_mode mode )
{
  unsigned long delta ;
  ktime_t soft ;
  ktime_t hard ;
  ktime_t __constr_expr_0 ;
  int tmp ;
  {
  {
  soft = hrtimer_get_softexpires((struct hrtimer const *)timer);
  hard = hrtimer_get_expires((struct hrtimer const *)timer);
  __constr_expr_0.tv64 = hard.tv64 - soft.tv64;
  delta = (unsigned long )__constr_expr_0.tv64;
  tmp = hrtimer_start_range_ns(timer, soft, delta, mode);
  }
  return (tmp);
}
}
extern u64 hrtimer_forward(struct hrtimer * , ktime_t , ktime_t ) ;
__inline static u64 hrtimer_forward_now(struct hrtimer *timer , ktime_t interval )
{
  ktime_t tmp ;
  u64 tmp___0 ;
  {
  {
  tmp = (*((timer->base)->get_time))();
  tmp___0 = hrtimer_forward(timer, tmp, interval);
  }
  return (tmp___0);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void consume_skb(struct sk_buff * ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags ) ;
__inline static int skb_queue_empty(struct sk_buff_head const *list )
{
  {
  return ((unsigned long )((struct sk_buff const *)list->next) == (unsigned long )((struct sk_buff const *)list));
}
}
__inline static struct sk_buff *skb_share_check(struct sk_buff *skb , gfp_t flags ) ;
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
  __raw_spin_lock_init(& list->lock.__annonCompField18.rlock, "&(&list->lock)->rlock",
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
  newsk->__annonCompField75.__annonCompField74.next = next;
  newsk->__annonCompField75.__annonCompField74.prev = prev;
  tmp = newsk;
  prev->__annonCompField75.__annonCompField74.next = tmp;
  next->__annonCompField75.__annonCompField74.prev = tmp;
  list->qlen = list->qlen + 1U;
  return;
}
}
__inline static void __skb_queue_after(struct sk_buff_head *list , struct sk_buff *prev ,
                                       struct sk_buff *newsk )
{
  {
  {
  __skb_insert(newsk, prev, prev->__annonCompField75.__annonCompField74.next, list);
  }
  return;
}
}
__inline static void __skb_queue_head(struct sk_buff_head *list , struct sk_buff *newsk )
{
  {
  {
  __skb_queue_after(list, (struct sk_buff *)list, newsk);
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
  next = skb->__annonCompField75.__annonCompField74.next;
  prev = skb->__annonCompField75.__annonCompField74.prev;
  tmp = (struct sk_buff *)0;
  skb->__annonCompField75.__annonCompField74.prev = tmp;
  skb->__annonCompField75.__annonCompField74.next = tmp;
  next->__annonCompField75.__annonCompField74.prev = prev;
  prev->__annonCompField75.__annonCompField74.next = next;
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
__inline static unsigned char *skb_mac_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->mac_header);
}
}
extern struct net init_net ;
extern void dev_add_pack(struct packet_type * ) ;
extern void dev_remove_pack(struct packet_type * ) ;
extern struct net_device *dev_get_by_name(struct net * , char const * ) ;
__inline static void dev_put___0(struct net_device *dev )
{
  void const *__vpp_verify ;
  int pao_ID__ ;
  int pao_ID_____0 ;
  int pao_ID_____1 ;
  int pao_ID_____2 ;
  {
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
  case_1:
  pao_ID__ = -1;
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
  __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43941;
  case_2:
  __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43941;
  case_4:
  __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43941;
  case_8:
  __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43941;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break___0: ;
  }
  ldv_43941: ;
  goto ldv_43946;
  case_2___0:
  pao_ID_____0 = -1;
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
  __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43952;
  case_2___1:
  __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43952;
  case_4___0:
  __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43952;
  case_8___0:
  __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43952;
  switch_default___0:
  {
  __bad_percpu_size();
  }
  switch_break___1: ;
  }
  ldv_43952: ;
  goto ldv_43946;
  case_4___1:
  pao_ID_____1 = -1;
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
  __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43962;
  case_2___2:
  __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43962;
  case_4___2:
  __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43962;
  case_8___1:
  __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43962;
  switch_default___1:
  {
  __bad_percpu_size();
  }
  switch_break___2: ;
  }
  ldv_43962: ;
  goto ldv_43946;
  case_8___2:
  pao_ID_____2 = -1;
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
  __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43972;
  case_2___3:
  __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43972;
  case_4___3:
  __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43972;
  case_8___3:
  __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43972;
  switch_default___2:
  {
  __bad_percpu_size();
  }
  switch_break___3: ;
  }
  ldv_43972: ;
  goto ldv_43946;
  switch_default___3:
  {
  __bad_size_call_parameter();
  }
  goto ldv_43946;
  switch_break: ;
  }
  ldv_43946: ;
  return;
}
}
__inline static void dev_hold(struct net_device *dev )
{
  void const *__vpp_verify ;
  int pao_ID__ ;
  int pao_ID_____0 ;
  int pao_ID_____1 ;
  int pao_ID_____2 ;
  {
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
  case_1:
  pao_ID__ = 1;
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
  __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43987;
  case_2:
  __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43987;
  case_4:
  __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43987;
  case_8:
  __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43987;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break___0: ;
  }
  ldv_43987: ;
  goto ldv_43992;
  case_2___0:
  pao_ID_____0 = 1;
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
  __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43998;
  case_2___1:
  __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43998;
  case_4___0:
  __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43998;
  case_8___0:
  __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43998;
  switch_default___0:
  {
  __bad_percpu_size();
  }
  switch_break___1: ;
  }
  ldv_43998: ;
  goto ldv_43992;
  case_4___1:
  pao_ID_____1 = 1;
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
  __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_44008;
  case_2___2:
  __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_44008;
  case_4___2:
  __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_44008;
  case_8___1:
  __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_44008;
  switch_default___1:
  {
  __bad_percpu_size();
  }
  switch_break___2: ;
  }
  ldv_44008: ;
  goto ldv_43992;
  case_8___2:
  pao_ID_____2 = 1;
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
  __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_44018;
  case_2___3:
  __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_44018;
  case_4___3:
  __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_44018;
  case_8___3:
  __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_44018;
  switch_default___2:
  {
  __bad_percpu_size();
  }
  switch_break___3: ;
  }
  ldv_44018: ;
  goto ldv_43992;
  switch_default___3:
  {
  __bad_size_call_parameter();
  }
  goto ldv_43992;
  switch_break: ;
  }
  ldv_43992: ;
  return;
}
}
__inline static bool ether_addr_equal(u8 const *addr1 , u8 const *addr2 )
{
  u32 fold ;
  {
  fold = ((unsigned int )*((u32 const *)addr1) ^ (unsigned int )*((u32 const *)addr2)) | (unsigned int )((int )((unsigned short )*((u16 const *)addr1 + 4U)) ^ (int )((unsigned short )*((u16 const *)addr2 + 4U)));
  return (fold == 0U);
}
}
struct kmem_cache *oz_elt_info_cache ;
struct kmem_cache *oz_tx_frame_cache ;
int oz_get_pd_list(struct oz_mac_addr *addr , int max_count ) ;
struct oz_pd *oz_pd_find(u8 const *mac_addr ) ;
void oz_binding_add(char const *net_dev ) ;
void oz_binding_remove(char const *net_dev ) ;
spinlock_t g_polling_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "g_polling_lock",
                                                     0, 0UL}}}};
static struct list_head g_pd_list = {& g_pd_list, & g_pd_list};
static struct list_head g_binding = {& g_binding, & g_binding};
static spinlock_t g_binding_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "g_binding_lock",
                                                     0, 0UL}}}};
static struct sk_buff_head g_rx_queue ;
static u8 g_session_id ;
static u16 g_apps = 1U;
static int g_processing_rx ;
static u8 oz_get_new_session_id(u8 exclude )
{
  {
  g_session_id = (u8 )((int )g_session_id + 1);
  if ((unsigned int )g_session_id == 0U) {
    g_session_id = 1U;
  } else {
  }
  if ((int )g_session_id == (int )exclude) {
    g_session_id = (u8 )((int )g_session_id + 1);
    if ((unsigned int )g_session_id == 0U) {
      g_session_id = 1U;
    } else {
    }
  } else {
  }
  return (g_session_id);
}
}
static void oz_send_conn_rsp(struct oz_pd *pd , u8 status )
{
  struct sk_buff *skb ;
  struct net_device *dev ;
  struct oz_hdr *oz_hdr ;
  struct oz_elt *elt ;
  struct oz_elt_connect_rsp *body ;
  int sz ;
  unsigned char *tmp ;
  int tmp___0 ;
  void *__gu_p ;
  void *__gu_p___0 ;
  {
  {
  dev = pd->net_dev;
  sz = 20;
  skb = alloc_skb((unsigned int )(sz + (((((int )dev->hard_header_len + (int )dev->needed_headroom) & -16) + 16) + (int )dev->needed_tailroom)),
                  32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return;
  } else {
  }
  {
  skb_reserve(skb, (((int )dev->hard_header_len + (int )dev->needed_headroom) & -16) + 16);
  skb_reset_network_header(skb);
  tmp = skb_put(skb, (unsigned int )sz);
  oz_hdr = (struct oz_hdr *)tmp;
  elt = (struct oz_elt *)oz_hdr + 1U;
  body = (struct oz_elt_connect_rsp *)elt + 1U;
  skb->dev = dev;
  skb->protocol = 11913U;
  tmp___0 = dev_hard_header(skb, dev, 35118, (void const *)(& pd->mac_addr), (void const *)dev->dev_addr,
                            skb->len);
  }
  if (tmp___0 < 0) {
    {
    kfree_skb(skb);
    }
    return;
  } else {
  }
  oz_hdr->control = 4U;
  oz_hdr->last_pkt_num = 0U;
  __gu_p = (void *)(& oz_hdr->pkt_num);
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
  *((u8 *)__gu_p) = 0U;
  goto ldv_48029;
  case_2:
  {
  put_unaligned_le16(0, __gu_p);
  }
  goto ldv_48029;
  case_4:
  {
  put_unaligned_le32(0U, __gu_p);
  }
  goto ldv_48029;
  case_8:
  {
  put_unaligned_le64(0ULL, __gu_p);
  }
  goto ldv_48029;
  switch_default:
  {
  __bad_unaligned_access_size();
  }
  goto ldv_48029;
  switch_break: ;
  }
  ldv_48029:
  {
  elt->type = 7U;
  elt->length = 12U;
  memset((void *)body, 0, 12UL);
  body->status = status;
  }
  if ((unsigned int )status == 0U) {
    body->mode = pd->mode;
    body->session_id = pd->session_id;
    __gu_p___0 = (void *)(& body->apps);
    {
    if (2UL == 1UL) {
      goto case_1___0;
    } else {
    }
    if (2UL == 2UL) {
      goto case_2___0;
    } else {
    }
    if (2UL == 4UL) {
      goto case_4___0;
    } else {
    }
    if (2UL == 8UL) {
      goto case_8___0;
    } else {
    }
    goto switch_default___0;
    case_1___0:
    *((u8 *)__gu_p___0) = (unsigned char )pd->total_apps;
    goto ldv_48036;
    case_2___0:
    {
    put_unaligned_le16((int )pd->total_apps, __gu_p___0);
    }
    goto ldv_48036;
    case_4___0:
    {
    put_unaligned_le32((unsigned int )pd->total_apps, __gu_p___0);
    }
    goto ldv_48036;
    case_8___0:
    {
    put_unaligned_le64((unsigned long long )pd->total_apps, __gu_p___0);
    }
    goto ldv_48036;
    switch_default___0:
    {
    __bad_unaligned_access_size();
    }
    goto ldv_48036;
    switch_break___0: ;
    }
    ldv_48036: ;
  } else {
  }
  {
  dev_queue_xmit(skb);
  }
  return;
}
}
static void pd_set_keepalive(struct oz_pd *pd , u8 kalive )
{
  unsigned long keep_alive ;
  {
  keep_alive = (unsigned long )kalive & 63UL;
  {
  if (((int )kalive & 192) == 0) {
    goto case_0;
  } else {
  }
  if (((int )kalive & 192) == 64) {
    goto case_64;
  } else {
  }
  if (((int )kalive & 192) == 128) {
    goto case_128;
  } else {
  }
  if (((int )kalive & 192) == 192) {
    goto case_192;
  } else {
  }
  goto switch_default;
  case_0:
  pd->keep_alive = keep_alive * 1728000000UL;
  goto ldv_48049;
  case_64:
  pd->keep_alive = keep_alive * 1000UL;
  goto ldv_48049;
  case_128:
  pd->keep_alive = keep_alive * 60000UL;
  goto ldv_48049;
  case_192:
  pd->keep_alive = keep_alive * 3600000UL;
  goto ldv_48049;
  switch_default:
  pd->keep_alive = 0UL;
  switch_break: ;
  }
  ldv_48049: ;
  return;
}
}
static void pd_set_presleep(struct oz_pd *pd , u8 presleep , u8 start_timer )
{
  {
  if ((unsigned int )presleep != 0U) {
    pd->presleep = (unsigned long )((int )presleep * 100);
  } else {
    pd->presleep = 11UL;
  }
  if ((unsigned int )start_timer != 0U) {
    {
    ldv_spin_unlock_121(& g_polling_lock);
    oz_timer_add(pd, 1, pd->presleep);
    ldv_spin_lock_122(& g_polling_lock);
    }
  } else {
  }
  return;
}
}
static struct oz_pd *oz_connect_req(struct oz_pd *cur_pd , struct oz_elt *elt , u8 const *pd_addr ,
                                    struct net_device *net_dev )
{
  struct oz_pd *pd ;
  struct oz_elt_connect_req *body ;
  u8 rsp_status ;
  u8 stop_needed ;
  u16 new_apps ;
  struct net_device *old_net_dev ;
  struct oz_pd *free_pd ;
  struct oz_pd *pd2 ;
  struct list_head *e ;
  struct list_head const *__mptr ;
  bool tmp ;
  u16 tmp___2 ;
  u16 start_apps ;
  u16 stop_apps ;
  u16 resume_apps ;
  int tmp___4 ;
  int tmp___5 ;
  {
  body = (struct oz_elt_connect_req *)elt + 1U;
  rsp_status = 0U;
  stop_needed = 0U;
  new_apps = g_apps;
  old_net_dev = (struct net_device *)0;
  free_pd = (struct oz_pd *)0;
  if ((unsigned long )cur_pd != (unsigned long )((struct oz_pd *)0)) {
    {
    pd = cur_pd;
    ldv_spin_lock_bh_121(& g_polling_lock);
    }
  } else {
    {
    pd2 = (struct oz_pd *)0;
    pd = oz_pd_alloc(pd_addr);
    }
    if ((unsigned long )pd == (unsigned long )((struct oz_pd *)0)) {
      return ((struct oz_pd *)0);
    } else {
    }
    {
    getnstimeofday(& pd->last_rx_timestamp);
    ldv_spin_lock_bh_121(& g_polling_lock);
    e = g_pd_list.next;
    }
    goto ldv_48082;
    ldv_48081:
    {
    __mptr = (struct list_head const *)e;
    pd2 = (struct oz_pd *)__mptr;
    tmp = ether_addr_equal((u8 const *)(& pd2->mac_addr), pd_addr);
    }
    if ((int )tmp) {
      free_pd = pd;
      pd = pd2;
      goto ldv_48080;
    } else {
    }
    e = e->next;
    ldv_48082: ;
    if ((unsigned long )e != (unsigned long )(& g_pd_list)) {
      goto ldv_48081;
    } else {
    }
    ldv_48080: ;
    if ((unsigned long )pd != (unsigned long )pd2) {
      {
      list_add_tail(& pd->link, & g_pd_list);
      }
    } else {
    }
  }
  if ((unsigned long )pd == (unsigned long )((struct oz_pd *)0)) {
    {
    ldv_spin_unlock_bh_122(& g_polling_lock);
    }
    return ((struct oz_pd *)0);
  } else {
  }
  if ((unsigned long )pd->net_dev != (unsigned long )net_dev) {
    {
    old_net_dev = pd->net_dev;
    dev_hold(net_dev);
    pd->net_dev = net_dev;
    }
  } else {
  }
  pd->max_tx_size = 760;
  pd->mode = body->mode;
  pd->pd_info = body->pd_info;
  if (((int )pd->mode & 64) != 0) {
    pd->ms_per_isoc = body->ms_per_isoc;
    if ((unsigned int )pd->ms_per_isoc == 0U) {
      pd->ms_per_isoc = 4U;
    } else {
    }
    {
    if (((int )body->ms_isoc_latency & 192) == 64) {
      goto case_64;
    } else {
    }
    if (((int )body->ms_isoc_latency & 192) == 128) {
      goto case_128;
    } else {
    }
    goto switch_default;
    case_64:
    pd->isoc_latency = (unsigned int )(((int )body->ms_isoc_latency & -193) / (int )pd->ms_per_isoc);
    goto ldv_48086;
    case_128:
    pd->isoc_latency = (unsigned int )((((int )body->ms_isoc_latency & -193) * 10) / (int )pd->ms_per_isoc);
    goto ldv_48086;
    switch_default:
    pd->isoc_latency = 32U;
    switch_break: ;
    }
    ldv_48086: ;
  } else {
  }
  if ((unsigned int )body->max_len_div16 != 0U) {
    pd->max_tx_size = (int )body->max_len_div16 << 4;
  } else {
  }
  {
  pd->max_stream_buffering = 3072U;
  pd->pulse_period = 8UL;
  pd_set_presleep(pd, (int )body->presleep, 0);
  pd_set_keepalive(pd, (int )body->keep_alive);
  tmp___2 = get_unaligned_le16((void const *)(& body->apps));
  new_apps = (u16 )((int )new_apps & (int )tmp___2);
  }
  if ((int )new_apps & 1 && (unsigned int )body->session_id != 0U) {
    if ((unsigned int )pd->session_id != 0U) {
      if ((int )pd->session_id != (int )body->session_id) {
        rsp_status = 5U;
        goto done;
      } else {
      }
    } else {
      {
      new_apps = (unsigned int )new_apps & 65534U;
      pd->session_id = oz_get_new_session_id((int )body->session_id);
      }
    }
  } else
  if ((unsigned int )pd->session_id != 0U && (unsigned int )body->session_id == 0U) {
    rsp_status = 6U;
    stop_needed = 1U;
  } else {
    {
    new_apps = (unsigned int )new_apps & 65534U;
    pd->session_id = oz_get_new_session_id((int )body->session_id);
    }
  }
  done: ;
  if ((unsigned int )rsp_status == 0U) {
    {
    start_apps = (unsigned int )((u16 )((int )((short )new_apps) & ~ ((int )((short )pd->total_apps)))) & 65534U;
    stop_apps = (unsigned int )((u16 )((int )((short )pd->total_apps) & ~ ((int )((short )new_apps)))) & 65534U;
    resume_apps = (unsigned int )((u16 )((int )new_apps & (int )pd->paused_apps)) & 65534U;
    ldv_spin_unlock_bh_122(& g_polling_lock);
    oz_pd_set_state(pd, 2U);
    }
    if ((unsigned int )start_apps != 0U) {
      {
      tmp___4 = oz_services_start(pd, (int )start_apps, 0);
      }
      if (tmp___4 != 0) {
        rsp_status = 2U;
      } else {
      }
    } else {
    }
    if ((unsigned int )resume_apps != 0U) {
      {
      tmp___5 = oz_services_start(pd, (int )resume_apps, 1);
      }
      if (tmp___5 != 0) {
        rsp_status = 2U;
      } else {
      }
    } else {
    }
    if ((unsigned int )stop_apps != 0U) {
      {
      oz_services_stop(pd, (int )stop_apps, 0);
      }
    } else {
    }
    {
    oz_pd_request_heartbeat(pd);
    }
  } else {
    {
    ldv_spin_unlock_bh_122(& g_polling_lock);
    }
  }
  {
  oz_send_conn_rsp(pd, (int )rsp_status);
  }
  if ((unsigned int )rsp_status != 0U) {
    if ((unsigned int )stop_needed != 0U) {
      {
      oz_pd_stop(pd);
      }
    } else {
    }
    {
    oz_pd_put(pd);
    pd = (struct oz_pd *)0;
    }
  } else {
  }
  if ((unsigned long )old_net_dev != (unsigned long )((struct net_device *)0)) {
    {
    dev_put___0(old_net_dev);
    }
  } else {
  }
  if ((unsigned long )free_pd != (unsigned long )((struct oz_pd *)0)) {
    {
    oz_pd_destroy(free_pd);
    }
  } else {
  }
  return (pd);
}
}
static void oz_add_farewell(struct oz_pd *pd , u8 ep_num , u8 index , u8 const *report ,
                            u8 len )
{
  struct oz_farewell *f ;
  struct oz_farewell *f2 ;
  int found ;
  void *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  found = 0;
  tmp = kmalloc((unsigned long )len + 24UL, 32U);
  f = (struct oz_farewell *)tmp;
  }
  if ((unsigned long )f == (unsigned long )((struct oz_farewell *)0)) {
    return;
  } else {
  }
  {
  f->ep_num = ep_num;
  f->index = index;
  f->len = len;
  memcpy((void *)(& f->report), (void const *)report, (size_t )len);
  ldv_spin_lock_122(& g_polling_lock);
  __mptr = (struct list_head const *)pd->farewell_list.next;
  f2 = (struct oz_farewell *)__mptr;
  }
  goto ldv_48113;
  ldv_48112: ;
  if ((int )f2->ep_num == (int )ep_num && (int )f2->index == (int )index) {
    {
    found = 1;
    list_del(& f2->link);
    }
    goto ldv_48111;
  } else {
  }
  __mptr___0 = (struct list_head const *)f2->link.next;
  f2 = (struct oz_farewell *)__mptr___0;
  ldv_48113: ;
  if ((unsigned long )(& f2->link) != (unsigned long )(& pd->farewell_list)) {
    goto ldv_48112;
  } else {
  }
  ldv_48111:
  {
  list_add_tail(& f->link, & pd->farewell_list);
  ldv_spin_unlock_121(& g_polling_lock);
  }
  if (found != 0) {
    {
    kfree((void const *)f2);
    }
  } else {
  }
  return;
}
}
static void oz_rx_frame(struct sk_buff *skb )
{
  u8 *mac_hdr ;
  u8 *src_addr ;
  struct oz_elt *elt ;
  int length ;
  struct oz_pd *pd ;
  struct oz_hdr *oz_hdr ;
  unsigned char *tmp ;
  struct timespec current_time ;
  int dup ;
  u32 pkt_num ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  unsigned char *tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___4 ;
  int backlog ;
  struct oz_elt_update_param *body ;
  struct oz_elt_farewell *body___0 ;
  struct oz_app_hdr *app_hdr ;
  {
  {
  pd = (struct oz_pd *)0;
  tmp = skb_network_header((struct sk_buff const *)skb);
  oz_hdr = (struct oz_hdr *)tmp;
  dup = 0;
  }
  if ((oz_dbg_mask & 16U) != 0U) {
    {
    descriptor.modname = "ozwpan";
    descriptor.function = "oz_rx_frame";
    descriptor.filename = "drivers/staging/ozwpan/ozproto.c";
    descriptor.format = "RX frame PN=0x%x LPN=0x%x control=0x%x\n";
    descriptor.lineno = 345U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "RX frame PN=0x%x LPN=0x%x control=0x%x\n",
                         oz_hdr->pkt_num, (int )oz_hdr->last_pkt_num, (int )oz_hdr->control);
      }
    } else {
    }
  } else {
  }
  {
  tmp___1 = skb_mac_header((struct sk_buff const *)skb);
  mac_hdr = tmp___1;
  src_addr = mac_hdr + 6UL;
  length = (int )skb->len;
  }
  if (((int )oz_hdr->control & 12) >> 2 != 1) {
    goto done;
  } else {
  }
  {
  pkt_num = get_unaligned_le32((void const *)(& oz_hdr->pkt_num));
  pd = oz_pd_find((u8 const *)src_addr);
  }
  if ((unsigned long )pd != (unsigned long )((struct oz_pd *)0)) {
    if ((pd->state & 2U) == 0U) {
      {
      oz_pd_set_state(pd, 2U);
      }
    } else {
    }
    {
    getnstimeofday(& current_time);
    }
    if (current_time.tv_sec != pd->last_rx_timestamp.tv_sec || pd->presleep <= 999UL) {
      {
      oz_timer_add(pd, 1, pd->presleep);
      pd->last_rx_timestamp = current_time;
      }
    } else {
    }
    if (pkt_num != pd->last_rx_pkt_num) {
      pd->last_rx_pkt_num = pkt_num;
    } else {
      dup = 1;
    }
  } else {
  }
  if (((unsigned long )pd != (unsigned long )((struct oz_pd *)0) && dup == 0) && ((int )pd->mode & 15) == 1) {
    if ((oz_dbg_mask & 16U) != 0U) {
      {
      descriptor___2.modname = "ozwpan";
      descriptor___2.function = "oz_rx_frame";
      descriptor___2.filename = "drivers/staging/ozwpan/ozproto.c";
      descriptor___2.format = "Received TRIGGER Frame\n";
      descriptor___2.lineno = 378U;
      descriptor___2.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___4 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___2, "Received TRIGGER Frame\n");
        }
      } else {
      }
    } else {
    }
    pd->last_sent_frame = & pd->tx_queue;
    if (((int )oz_hdr->control & 16) != 0) {
      {
      oz_retire_tx_frames(pd, (int )oz_hdr->last_pkt_num);
      }
    } else {
    }
    if ((int )((signed char )oz_hdr->control) < 0 && pd->state == 2U) {
      {
      backlog = pd->nb_queued_frames;
      pd->trigger_pkt_num = pkt_num;
      oz_send_queued_frames(pd, backlog);
      }
    } else {
    }
  } else {
  }
  length = (int )((unsigned int )length - 6U);
  elt = (struct oz_elt *)oz_hdr + 6U;
  goto ldv_48150;
  ldv_48149:
  length = (int )(((unsigned int )length - (unsigned int )elt->length) - 2U);
  if (length < 0) {
    goto ldv_48133;
  } else {
  }
  {
  if ((int )elt->type == 6) {
    goto case_6;
  } else {
  }
  if ((int )elt->type == 8) {
    goto case_8;
  } else {
  }
  if ((int )elt->type == 17) {
    goto case_17;
  } else {
  }
  if ((int )elt->type == 18) {
    goto case_18;
  } else {
  }
  if ((int )elt->type == 49) {
    goto case_49;
  } else {
  }
  goto switch_default;
  case_6:
  {
  pd = oz_connect_req(pd, elt, (u8 const *)src_addr, skb->dev);
  }
  goto ldv_48136;
  case_8: ;
  if ((unsigned long )pd != (unsigned long )((struct oz_pd *)0)) {
    {
    oz_pd_sleep(pd);
    }
  } else {
  }
  goto ldv_48136;
  case_17:
  body = (struct oz_elt_update_param *)elt + 1U;
  if ((unsigned long )pd != (unsigned long )((struct oz_pd *)0) && (pd->state & 2U) != 0U) {
    {
    ldv_spin_lock_122(& g_polling_lock);
    pd_set_keepalive(pd, (int )body->keepalive);
    pd_set_presleep(pd, (int )body->presleep, 1);
    ldv_spin_unlock_121(& g_polling_lock);
    }
  } else {
  }
  goto ldv_48136;
  case_18:
  {
  body___0 = (struct oz_elt_farewell *)elt + 1U;
  oz_add_farewell(pd, (int )body___0->ep_num, (int )body___0->index, (u8 const *)(& body___0->report),
                  (int )((unsigned int )elt->length - 2U));
  }
  goto ldv_48136;
  case_49: ;
  if ((unsigned long )pd != (unsigned long )((struct oz_pd *)0) && (pd->state & 2U) != 0U) {
    app_hdr = (struct oz_app_hdr *)elt + 1U;
    if (dup != 0) {
      goto ldv_48136;
    } else {
    }
    {
    oz_handle_app_elt(pd, (int )app_hdr->app_id, elt);
    }
  } else {
  }
  goto ldv_48136;
  switch_default: ;
  switch_break: ;
  }
  ldv_48136:
  elt = elt + ((unsigned long )elt->length + 1UL);
  ldv_48150: ;
  if ((unsigned int )length > 1U) {
    goto ldv_48149;
  } else {
  }
  ldv_48133: ;
  done: ;
  if ((unsigned long )pd != (unsigned long )((struct oz_pd *)0)) {
    {
    oz_pd_put(pd);
    }
  } else {
  }
  {
  consume_skb(skb);
  }
  return;
}
}
void oz_protocol_term(void)
{
  struct oz_binding *b ;
  struct oz_binding *t ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct oz_pd *pd ;
  struct list_head const *__mptr___2 ;
  int tmp ;
  {
  {
  ldv_spin_lock_bh_132___0(& g_binding_lock);
  __mptr = (struct list_head const *)g_binding.next;
  b = (struct oz_binding *)__mptr + 0xffffffffffffffa8UL;
  __mptr___0 = (struct list_head const *)b->link.next;
  t = (struct oz_binding *)__mptr___0 + 0xffffffffffffffa8UL;
  }
  goto ldv_48163;
  ldv_48162:
  {
  list_del(& b->link);
  ldv_spin_unlock_bh_133___0(& g_binding_lock);
  dev_remove_pack(& b->ptype);
  }
  if ((unsigned long )b->ptype.dev != (unsigned long )((struct net_device *)0)) {
    {
    dev_put___0(b->ptype.dev);
    }
  } else {
  }
  {
  kfree((void const *)b);
  ldv_spin_lock_bh_132___0(& g_binding_lock);
  b = t;
  __mptr___1 = (struct list_head const *)t->link.next;
  t = (struct oz_binding *)__mptr___1 + 0xffffffffffffffa8UL;
  }
  ldv_48163: ;
  if ((unsigned long )(& b->link) != (unsigned long )(& g_binding)) {
    goto ldv_48162;
  } else {
  }
  {
  ldv_spin_unlock_bh_133___0(& g_binding_lock);
  ldv_spin_lock_bh_121(& g_polling_lock);
  }
  goto ldv_48169;
  ldv_48168:
  {
  __mptr___2 = (struct list_head const *)g_pd_list.next;
  pd = (struct oz_pd *)__mptr___2;
  oz_pd_get(pd);
  ldv_spin_unlock_bh_122(& g_polling_lock);
  oz_pd_stop(pd);
  oz_pd_put(pd);
  ldv_spin_lock_bh_121(& g_polling_lock);
  }
  ldv_48169:
  {
  tmp = list_empty((struct list_head const *)(& g_pd_list));
  }
  if (tmp == 0) {
    goto ldv_48168;
  } else {
  }
  {
  ldv_spin_unlock_bh_122(& g_polling_lock);
  kmem_cache_destroy(oz_tx_frame_cache);
  kmem_cache_destroy(oz_elt_info_cache);
  }
  return;
}
}
void oz_pd_heartbeat_handler(unsigned long data )
{
  struct oz_pd *pd ;
  u16 apps ;
  {
  {
  pd = (struct oz_pd *)data;
  apps = 0U;
  ldv_spin_lock_bh_121(& g_polling_lock);
  }
  if ((pd->state & 2U) != 0U) {
    apps = pd->total_apps;
  } else {
  }
  {
  ldv_spin_unlock_bh_122(& g_polling_lock);
  }
  if ((unsigned int )apps != 0U) {
    {
    oz_pd_heartbeat(pd, (int )apps);
    }
  } else {
  }
  {
  oz_pd_put(pd);
  }
  return;
}
}
void oz_pd_timeout_handler(unsigned long data )
{
  int type ;
  struct oz_pd *pd ;
  {
  {
  pd = (struct oz_pd *)data;
  ldv_spin_lock_bh_121(& g_polling_lock);
  type = (int )pd->timeout_type;
  ldv_spin_unlock_bh_122(& g_polling_lock);
  }
  {
  if (type == 1) {
    goto case_1;
  } else {
  }
  if (type == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_1:
  {
  oz_pd_sleep(pd);
  }
  goto ldv_48184;
  case_3:
  {
  oz_pd_stop(pd);
  }
  goto ldv_48184;
  switch_break: ;
  }
  ldv_48184:
  {
  oz_pd_put(pd);
  }
  return;
}
}
enum hrtimer_restart oz_pd_heartbeat_event(struct hrtimer *timer )
{
  struct oz_pd *pd ;
  struct hrtimer const *__mptr ;
  ktime_t tmp ;
  {
  {
  __mptr = (struct hrtimer const *)timer;
  pd = (struct oz_pd *)__mptr + 0xfffffffffffffc98UL;
  tmp = ktime_set((s64 const )(pd->pulse_period / 1000UL), (pd->pulse_period % 1000UL) * 1000000UL);
  hrtimer_forward_now(timer, tmp);
  oz_pd_get(pd);
  tasklet_schedule(& pd->heartbeat_tasklet);
  }
  return (1);
}
}
enum hrtimer_restart oz_pd_timeout_event(struct hrtimer *timer )
{
  struct oz_pd *pd ;
  struct hrtimer const *__mptr ;
  {
  {
  __mptr = (struct hrtimer const *)timer;
  pd = (struct oz_pd *)__mptr + 0xfffffffffffffc38UL;
  oz_pd_get(pd);
  tasklet_schedule(& pd->timeout_tasklet);
  }
  return (0);
}
}
void oz_timer_add(struct oz_pd *pd , int type , unsigned long due_time )
{
  ktime_t tmp ;
  ktime_t tmp___0 ;
  int tmp___1 ;
  ktime_t tmp___2 ;
  int tmp___3 ;
  {
  {
  ldv_spin_lock_bh_121(& g_polling_lock);
  }
  {
  if (type == 1) {
    goto case_1;
  } else {
  }
  if (type == 3) {
    goto case_3;
  } else {
  }
  if (type == 2) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_1: ;
  case_3:
  {
  tmp___1 = hrtimer_active((struct hrtimer const *)(& pd->timeout));
  }
  if (tmp___1 != 0) {
    {
    tmp = ktime_set((s64 const )(due_time / 1000UL), (due_time % 1000UL) * 1000000UL);
    hrtimer_set_expires(& pd->timeout, tmp);
    hrtimer_start_expires(& pd->timeout, 1);
    }
  } else {
    {
    tmp___0 = ktime_set((s64 const )(due_time / 1000UL), (due_time % 1000UL) * 1000000UL);
    hrtimer_start(& pd->timeout, tmp___0, 1);
    }
  }
  pd->timeout_type = (u8 )type;
  goto ldv_48205;
  case_2:
  {
  tmp___3 = hrtimer_active((struct hrtimer const *)(& pd->heartbeat));
  }
  if (tmp___3 == 0) {
    {
    tmp___2 = ktime_set((s64 const )(due_time / 1000UL), (due_time % 1000UL) * 1000000UL);
    hrtimer_start(& pd->heartbeat, tmp___2, 1);
    }
  } else {
  }
  goto ldv_48205;
  switch_break: ;
  }
  ldv_48205:
  {
  ldv_spin_unlock_bh_122(& g_polling_lock);
  }
  return;
}
}
void oz_pd_request_heartbeat(struct oz_pd *pd )
{
  {
  {
  oz_timer_add(pd, 2, pd->pulse_period != 0UL ? pd->pulse_period : 8UL);
  }
  return;
}
}
struct oz_pd *oz_pd_find(u8 const *mac_addr )
{
  struct oz_pd *pd ;
  struct list_head const *__mptr ;
  bool tmp ;
  struct list_head const *__mptr___0 ;
  {
  {
  ldv_spin_lock_bh_121(& g_polling_lock);
  __mptr = (struct list_head const *)g_pd_list.next;
  pd = (struct oz_pd *)__mptr;
  }
  goto ldv_48219;
  ldv_48218:
  {
  tmp = ether_addr_equal((u8 const *)(& pd->mac_addr), mac_addr);
  }
  if ((int )tmp) {
    {
    oz_pd_get(pd);
    ldv_spin_unlock_bh_122(& g_polling_lock);
    }
    return (pd);
  } else {
  }
  __mptr___0 = (struct list_head const *)pd->link.next;
  pd = (struct oz_pd *)__mptr___0;
  ldv_48219: ;
  if ((unsigned long )(& pd->link) != (unsigned long )(& g_pd_list)) {
    goto ldv_48218;
  } else {
  }
  {
  ldv_spin_unlock_bh_122(& g_polling_lock);
  }
  return ((struct oz_pd *)0);
}
}
void oz_app_enable(int app_id , int enable )
{
  {
  if (app_id <= 4) {
    {
    ldv_spin_lock_bh_121(& g_polling_lock);
    }
    if (enable != 0) {
      g_apps = (u16 )((int )((short )g_apps) | (int )((short )(1 << app_id)));
    } else {
      g_apps = (u16 )((int )((short )g_apps) & ~ ((int )((short )(1 << app_id))));
    }
    {
    ldv_spin_unlock_bh_122(& g_polling_lock);
    }
  } else {
  }
  return;
}
}
static int oz_pkt_recv(struct sk_buff *skb , struct net_device *dev , struct packet_type *pt ,
                       struct net_device *orig_dev )
{
  int tmp ;
  {
  {
  skb = skb_share_check(skb, 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (0);
  } else {
  }
  {
  ldv_spin_lock_bh_151___0(& g_rx_queue.lock);
  }
  if (g_processing_rx != 0) {
    {
    __skb_queue_head(& g_rx_queue, skb);
    ldv_spin_unlock_bh_152___0(& g_rx_queue.lock);
    }
  } else {
    g_processing_rx = 1;
    ldv_48232:
    {
    ldv_spin_unlock_bh_152___0(& g_rx_queue.lock);
    oz_rx_frame(skb);
    ldv_spin_lock_bh_151___0(& g_rx_queue.lock);
    tmp = skb_queue_empty((struct sk_buff_head const *)(& g_rx_queue));
    }
    if (tmp != 0) {
      {
      g_processing_rx = 0;
      ldv_spin_unlock_bh_152___0(& g_rx_queue.lock);
      }
      goto ldv_48231;
    } else {
    }
    {
    skb = __skb_dequeue(& g_rx_queue);
    }
    goto ldv_48232;
    ldv_48231: ;
  }
  return (0);
}
}
void oz_binding_add(char const *net_dev )
{
  struct oz_binding *binding ;
  void *tmp ;
  {
  {
  tmp = kzalloc(104UL, 208U);
  binding = (struct oz_binding *)tmp;
  }
  if ((unsigned long )binding == (unsigned long )((struct oz_binding *)0)) {
    return;
  } else {
  }
  binding->ptype.type = 11913U;
  binding->ptype.func = & oz_pkt_recv;
  if ((unsigned long )net_dev != (unsigned long )((char const *)0) && (int )((signed char )*net_dev) != 0) {
    {
    memcpy((void *)(& binding->name), (void const *)net_dev, 32UL);
    binding->ptype.dev = dev_get_by_name(& init_net, net_dev);
    }
    if ((unsigned long )binding->ptype.dev == (unsigned long )((struct net_device *)0)) {
      {
      kfree((void const *)binding);
      }
      return;
    } else {
    }
  } else {
  }
  {
  dev_add_pack(& binding->ptype);
  ldv_spin_lock_bh_132___0(& g_binding_lock);
  list_add_tail(& binding->link, & g_binding);
  ldv_spin_unlock_bh_133___0(& g_binding_lock);
  }
  return;
}
}
static void pd_stop_all_for_device(struct net_device *net_dev )
{
  struct list_head h ;
  struct oz_pd *pd ;
  struct oz_pd *n ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  int tmp ;
  {
  {
  h.next = & h;
  h.prev = & h;
  ldv_spin_lock_bh_121(& g_polling_lock);
  __mptr = (struct list_head const *)g_pd_list.next;
  pd = (struct oz_pd *)__mptr;
  __mptr___0 = (struct list_head const *)pd->link.next;
  n = (struct oz_pd *)__mptr___0;
  }
  goto ldv_48253;
  ldv_48252: ;
  if ((unsigned long )pd->net_dev == (unsigned long )net_dev) {
    {
    list_move(& pd->link, & h);
    oz_pd_get(pd);
    }
  } else {
  }
  pd = n;
  __mptr___1 = (struct list_head const *)n->link.next;
  n = (struct oz_pd *)__mptr___1;
  ldv_48253: ;
  if ((unsigned long )(& pd->link) != (unsigned long )(& g_pd_list)) {
    goto ldv_48252;
  } else {
  }
  {
  ldv_spin_unlock_bh_122(& g_polling_lock);
  }
  goto ldv_48258;
  ldv_48257:
  {
  __mptr___2 = (struct list_head const *)h.next;
  pd = (struct oz_pd *)__mptr___2;
  oz_pd_stop(pd);
  oz_pd_put(pd);
  }
  ldv_48258:
  {
  tmp = list_empty((struct list_head const *)(& h));
  }
  if (tmp == 0) {
    goto ldv_48257;
  } else {
  }
  return;
}
}
void oz_binding_remove(char const *net_dev )
{
  struct oz_binding *binding ;
  int found ;
  struct list_head const *__mptr ;
  int tmp___1 ;
  struct list_head const *__mptr___0 ;
  {
  {
  found = 0;
  ldv_spin_lock_bh_132___0(& g_binding_lock);
  __mptr = (struct list_head const *)g_binding.next;
  binding = (struct oz_binding *)__mptr + 0xffffffffffffffa8UL;
  }
  goto ldv_48274;
  ldv_48273:
  {
  tmp___1 = strncmp((char const *)(& binding->name), net_dev, 32UL);
  }
  if (tmp___1 == 0) {
    found = 1;
    goto ldv_48272;
  } else {
  }
  __mptr___0 = (struct list_head const *)binding->link.next;
  binding = (struct oz_binding *)__mptr___0 + 0xffffffffffffffa8UL;
  ldv_48274: ;
  if ((unsigned long )(& binding->link) != (unsigned long )(& g_binding)) {
    goto ldv_48273;
  } else {
  }
  ldv_48272:
  {
  ldv_spin_unlock_bh_133___0(& g_binding_lock);
  }
  if (found != 0) {
    {
    dev_remove_pack(& binding->ptype);
    }
    if ((unsigned long )binding->ptype.dev != (unsigned long )((struct net_device *)0)) {
      {
      dev_put___0(binding->ptype.dev);
      pd_stop_all_for_device(binding->ptype.dev);
      }
    } else {
    }
    {
    list_del(& binding->link);
    kfree((void const *)binding);
    }
  } else {
  }
  return;
}
}
static char *oz_get_next_device_name(char *s , char *dname , int max_size )
{
  char *tmp ;
  char *tmp___0 ;
  {
  goto ldv_48281;
  ldv_48280:
  s = s + 1;
  ldv_48281: ;
  if ((int )((signed char )*s) == 44) {
    goto ldv_48280;
  } else {
  }
  goto ldv_48284;
  ldv_48283:
  tmp = dname;
  dname = dname + 1;
  tmp___0 = s;
  s = s + 1;
  *tmp = *tmp___0;
  max_size = max_size - 1;
  ldv_48284: ;
  if (((int )*s != 0 && (int )*s != 44) && max_size > 1) {
    goto ldv_48283;
  } else {
  }
  *dname = 0;
  return (s);
}
}
int oz_protocol_init(char *devs )
{
  char d[32U] ;
  {
  {
  oz_elt_info_cache = kmem_cache_create("oz_elt_info", 328UL, 8UL, 0UL, (void (*)(void * ))0);
  }
  if ((unsigned long )oz_elt_info_cache == (unsigned long )((struct kmem_cache *)0)) {
    return (-12);
  } else {
  }
  {
  oz_tx_frame_cache = kmem_cache_create("oz_tx_frame", 56UL, 8UL, 0UL, (void (*)(void * ))0);
  }
  if ((unsigned long )oz_tx_frame_cache == (unsigned long )((struct kmem_cache *)0)) {
    {
    kmem_cache_destroy(oz_elt_info_cache);
    }
    return (-12);
  } else {
  }
  {
  skb_queue_head_init(& g_rx_queue);
  }
  if ((int )((signed char )*devs) == 42) {
    {
    oz_binding_add((char const *)0);
    }
  } else {
    goto ldv_48291;
    ldv_48290:
    {
    devs = oz_get_next_device_name(devs, (char *)(& d), 32);
    }
    if ((int )((signed char )d[0]) != 0) {
      {
      oz_binding_add((char const *)(& d));
      }
    } else {
    }
    ldv_48291: ;
    if ((int )((signed char )*devs) != 0) {
      goto ldv_48290;
    } else {
    }
  }
  return (0);
}
}
int oz_get_pd_list(struct oz_mac_addr *addr , int max_count )
{
  struct oz_pd *pd ;
  int count ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  {
  count = 0;
  ldv_spin_lock_bh_121(& g_polling_lock);
  __mptr = (struct list_head const *)g_pd_list.next;
  pd = (struct oz_pd *)__mptr;
  }
  goto ldv_48305;
  ldv_48304: ;
  if (count >= max_count) {
    goto ldv_48303;
  } else {
  }
  {
  tmp = count;
  count = count + 1;
  ether_addr_copy((u8 *)addr + (unsigned long )tmp, (u8 const *)(& pd->mac_addr));
  __mptr___0 = (struct list_head const *)pd->link.next;
  pd = (struct oz_pd *)__mptr___0;
  }
  ldv_48305: ;
  if ((unsigned long )(& pd->link) != (unsigned long )(& g_pd_list)) {
    goto ldv_48304;
  } else {
  }
  ldv_48303:
  {
  ldv_spin_unlock_bh_122(& g_polling_lock);
  }
  return (count);
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
__inline static struct sk_buff *skb_share_check(struct sk_buff *skb , gfp_t flags )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc_unknown_size();
  }
  return ((struct sk_buff *)tmp);
}
}
__inline static void ldv_spin_unlock_121(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_g_polling_lock();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_122(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_g_polling_lock();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_132___0(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_g_binding_lock();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_133___0(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_g_binding_lock();
  spin_unlock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_151___0(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_sk_buff_head();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_152___0(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_sk_buff_head();
  spin_unlock_bh(lock);
  }
  return;
}
}
void ldv_linux_drivers_base_class_destroy_class(struct class *cls ) ;
int ldv_linux_fs_char_dev_register_chrdev_region(void) ;
void ldv_linux_fs_char_dev_unregister_chrdev_region(void) ;
void ldv_linux_usb_gadget_destroy_class(struct class *cls ) ;
int ldv_linux_usb_gadget_register_chrdev_region(void) ;
void ldv_linux_usb_gadget_unregister_chrdev_region(void) ;
long ldv_ptr_err(void const *ptr ) ;
extern void might_fault(void) ;
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
__inline static void atomic_inc(atomic_t *v ) ;
__inline static int atomic_dec_and_test(atomic_t *v ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_oz_cdev(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_oz_cdev(void) ;
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
  goto ldv_7202;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7202;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7202;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7202;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7202:
  ti = (struct thread_info *)(pfo_ret__ - 32728UL);
  return (ti);
}
}
__inline static void ldv_spin_lock_128___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_151(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_151(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_123___4(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_123___4(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_135(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_123___4(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_123___4(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_123___4(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_123___4(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_121___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_129___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_152(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_152(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_124___3(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_124___3(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_136(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_124___3(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_124___3(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_124___3(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_124___3(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_122___0(spinlock_t *lock ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void cdev_init(struct cdev * , struct file_operations const * ) ;
static void ldv_cdev_init_142(struct cdev *ldv_func_arg1 , struct file_operations const *ldv_func_arg2 ) ;
extern int cdev_add(struct cdev * , dev_t , unsigned int ) ;
extern void cdev_del(struct cdev * ) ;
static void ldv_cdev_del_143(struct cdev *ldv_func_arg1 ) ;
static void ldv_cdev_del_145(struct cdev *ldv_func_arg1 ) ;
static void ldv_class_destroy_147(struct class *cls ) ;
extern struct device *device_create(struct class * , struct device * , dev_t , void * ,
                                    char const * , ...) ;
extern void device_destroy(struct class * , dev_t ) ;
extern int alloc_chrdev_region(dev_t * , unsigned int , unsigned int , char const * ) ;
static int ldv_alloc_chrdev_region_141(dev_t *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                       unsigned int ldv_func_arg3 , char const *ldv_func_arg4 ) ;
extern void unregister_chrdev_region(dev_t , unsigned int ) ;
static void ldv_unregister_chrdev_region_144(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
static void ldv_unregister_chrdev_region_146(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
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
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
}
}
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
static struct oz_cdev g_cdev ;
static struct class *g_oz_class ;
static struct oz_serial_ctx *oz_cdev_claim_ctx(struct oz_pd *pd )
{
  struct oz_serial_ctx *ctx ;
  {
  {
  ldv_spin_lock_bh_121___0((spinlock_t *)(& pd->app_lock) + 4UL);
  ctx = (struct oz_serial_ctx *)pd->app_ctx[4];
  }
  if ((unsigned long )ctx != (unsigned long )((struct oz_serial_ctx *)0)) {
    {
    atomic_inc(& ctx->ref_count);
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_122___0((spinlock_t *)(& pd->app_lock) + 4UL);
  }
  return (ctx);
}
}
static void oz_cdev_release_ctx(struct oz_serial_ctx *ctx )
{
  int tmp___0 ;
  {
  {
  tmp___0 = atomic_dec_and_test(& ctx->ref_count);
  }
  if (tmp___0 != 0) {
    {
    kfree((void const *)ctx);
    }
  } else {
  }
  return;
}
}
static int oz_cdev_open(struct inode *inode , struct file *filp )
{
  struct oz_cdev *dev ;
  struct cdev const *__mptr ;
  {
  __mptr = (struct cdev const *)inode->__annonCompField59.i_cdev;
  dev = (struct oz_cdev *)__mptr + 0xfffffffffffffff8UL;
  filp->private_data = (void *)dev;
  return (0);
}
}
static int oz_cdev_release(struct inode *inode , struct file *filp )
{
  {
  return (0);
}
}
static ssize_t oz_cdev_read(struct file *filp , char *buf , size_t count , loff_t *fpos )
{
  int n ;
  int ix ;
  struct oz_pd *pd ;
  struct oz_serial_ctx *ctx ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  {
  ldv_spin_lock_bh_123___4(& g_cdev.lock);
  pd = g_cdev.active_pd;
  }
  if ((unsigned long )pd != (unsigned long )((struct oz_pd *)0)) {
    {
    oz_pd_get(pd);
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_124___3(& g_cdev.lock);
  }
  if ((unsigned long )pd == (unsigned long )((struct oz_pd *)0)) {
    return (-1L);
  } else {
  }
  {
  ctx = oz_cdev_claim_ctx(pd);
  }
  if ((unsigned long )ctx == (unsigned long )((struct oz_serial_ctx *)0)) {
    goto out2;
  } else {
  }
  n = ctx->rd_in - ctx->rd_out;
  if (n < 0) {
    n = n + 256;
  } else {
  }
  if (count > (size_t )n) {
    count = (size_t )n;
  } else {
  }
  ix = ctx->rd_out;
  n = 256 - ix;
  if ((size_t )n > count) {
    n = (int )count;
  } else {
  }
  {
  tmp = copy_to_user((void *)buf, (void const *)(& ctx->rd_buf) + (unsigned long )ix,
                     (unsigned long )n);
  }
  if (tmp != 0UL) {
    count = 0UL;
    goto out1;
  } else {
  }
  ix = ix + n;
  if (ix == 256) {
    ix = 0;
  } else {
  }
  if ((size_t )n < count) {
    {
    tmp___0 = copy_to_user((void *)buf + (unsigned long )n, (void const *)(& ctx->rd_buf),
                           count - (size_t )n);
    }
    if (tmp___0 != 0UL) {
      count = 0UL;
      goto out1;
    } else {
    }
    ix = (int )((unsigned int )count - (unsigned int )n);
  } else {
  }
  ctx->rd_out = ix;
  out1:
  {
  oz_cdev_release_ctx(ctx);
  }
  out2:
  {
  oz_pd_put(pd);
  }
  return ((ssize_t )count);
}
}
static ssize_t oz_cdev_write(struct file *filp , char const *buf , size_t count ,
                             loff_t *fpos )
{
  struct oz_pd *pd ;
  struct oz_elt_buf *eb ;
  struct oz_elt_info *ei ;
  struct oz_elt *elt ;
  struct oz_app_hdr *app_hdr ;
  struct oz_serial_ctx *ctx ;
  unsigned long tmp ;
  u8 tmp___0 ;
  int tmp___1 ;
  {
  if (count > 253UL) {
    return (-22L);
  } else {
  }
  {
  ldv_spin_lock_bh_123___4(& g_cdev.lock);
  pd = g_cdev.active_pd;
  }
  if ((unsigned long )pd != (unsigned long )((struct oz_pd *)0)) {
    {
    oz_pd_get(pd);
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_124___3(& g_cdev.lock);
  }
  if ((unsigned long )pd == (unsigned long )((struct oz_pd *)0)) {
    return (-6L);
  } else {
  }
  if ((pd->state & 2U) == 0U) {
    return (-11L);
  } else {
  }
  {
  eb = & pd->elt_buff;
  ei = oz_elt_info_alloc(eb);
  }
  if ((unsigned long )ei == (unsigned long )((struct oz_elt_info *)0)) {
    count = 0UL;
    goto out;
  } else {
  }
  {
  elt = (struct oz_elt *)(& ei->data);
  app_hdr = (struct oz_app_hdr *)elt + 1U;
  elt->length = (unsigned int )((u8 )count) + 2U;
  elt->type = 49U;
  ei->app_id = 4U;
  ei->length = (int )((unsigned int )elt->length + 2U);
  app_hdr->app_id = 4U;
  tmp = copy_from_user((void *)app_hdr + 1U, (void const *)buf, count);
  }
  if (tmp != 0UL) {
    goto out;
  } else {
  }
  {
  ldv_spin_lock_bh_121___0((spinlock_t *)(& pd->app_lock) + 1UL);
  ctx = (struct oz_serial_ctx *)pd->app_ctx[4];
  }
  if ((unsigned long )ctx != (unsigned long )((struct oz_serial_ctx *)0)) {
    tmp___0 = ctx->tx_seq_num;
    ctx->tx_seq_num = (u8 )((int )ctx->tx_seq_num + 1);
    app_hdr->elt_seq_num = tmp___0;
    if ((unsigned int )ctx->tx_seq_num == 0U) {
      ctx->tx_seq_num = 1U;
    } else {
    }
    {
    ldv_spin_lock_128___0(& eb->lock);
    tmp___1 = oz_queue_elt_info(eb, 0, 0, ei);
    }
    if (tmp___1 == 0) {
      ei = (struct oz_elt_info *)0;
    } else {
    }
    {
    ldv_spin_unlock_129___0(& eb->lock);
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_122___0((spinlock_t *)(& pd->app_lock) + 1UL);
  }
  out: ;
  if ((unsigned long )ei != (unsigned long )((struct oz_elt_info *)0)) {
    {
    count = 0UL;
    ldv_spin_lock_bh_135(& eb->lock);
    oz_elt_info_free(eb, ei);
    ldv_spin_unlock_bh_136(& eb->lock);
    }
  } else {
  }
  {
  oz_pd_put(pd);
  }
  return ((ssize_t )count);
}
}
static int oz_set_active_pd(u8 const *addr )
{
  int rc ;
  struct oz_pd *pd ;
  struct oz_pd *old_pd ;
  bool tmp ;
  {
  {
  rc = 0;
  pd = oz_pd_find(addr);
  }
  if ((unsigned long )pd != (unsigned long )((struct oz_pd *)0)) {
    {
    ldv_spin_lock_bh_123___4(& g_cdev.lock);
    ether_addr_copy((u8 *)(& g_cdev.active_addr), addr);
    old_pd = g_cdev.active_pd;
    g_cdev.active_pd = pd;
    ldv_spin_unlock_bh_124___3(& g_cdev.lock);
    }
    if ((unsigned long )old_pd != (unsigned long )((struct oz_pd *)0)) {
      {
      oz_pd_put(old_pd);
      }
    } else {
    }
  } else {
    {
    tmp = is_zero_ether_addr(addr);
    }
    if ((int )tmp) {
      {
      ldv_spin_lock_bh_123___4(& g_cdev.lock);
      pd = g_cdev.active_pd;
      g_cdev.active_pd = (struct oz_pd *)0;
      memset((void *)(& g_cdev.active_addr), 0, 6UL);
      ldv_spin_unlock_bh_124___3(& g_cdev.lock);
      }
      if ((unsigned long )pd != (unsigned long )((struct oz_pd *)0)) {
        {
        oz_pd_put(pd);
        }
      } else {
      }
    } else {
      rc = -1;
    }
  }
  return (rc);
}
}
static long oz_cdev_ioctl(struct file *filp , unsigned int cmd , unsigned long arg )
{
  int rc ;
  struct thread_info *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  struct thread_info *tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  struct oz_pd_list list ;
  int tmp___8 ;
  unsigned long tmp___9 ;
  u8 addr[6U] ;
  unsigned long tmp___11 ;
  u8 addr___0[6U] ;
  unsigned long tmp___13 ;
  struct oz_binding_info b ;
  unsigned long tmp___14 ;
  {
  rc = 0;
  if (((cmd >> 8) & 255U) != 244U) {
    return (-25L);
  } else {
  }
  if ((cmd & 255U) > 5U) {
    return (-25L);
  } else {
  }
  if ((int )cmd < 0) {
    {
    tmp = current_thread_info();
    tmp___0 = __chk_range_not_ok(arg, (unsigned long )(cmd >> 16) & 16383UL, tmp->addr_limit.seg);
    }
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    {
    tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
    rc = tmp___2 == 0L;
    }
  } else
  if ((cmd & 1073741824U) != 0U) {
    {
    tmp___3 = current_thread_info();
    tmp___4 = __chk_range_not_ok(arg, (unsigned long )(cmd >> 16) & 16383UL, tmp___3->addr_limit.seg);
    }
    if (tmp___4) {
      tmp___5 = 0;
    } else {
      tmp___5 = 1;
    }
    {
    tmp___6 = ldv__builtin_expect((long )tmp___5, 1L);
    rc = tmp___6 == 0L;
    }
  } else {
  }
  if (rc != 0) {
    return (-14L);
  } else {
  }
  {
  if (cmd == 2150953984U) {
    goto case_2150953984;
  } else {
  }
  if (cmd == 1074197505U) {
    goto case_1074197505;
  } else {
  }
  if (cmd == 2147939330U) {
    goto case_2147939330;
  } else {
  }
  if (cmd == 1075901443U) {
    goto case_1075901443;
  } else {
  }
  if (cmd == 1075901444U) {
    goto case_1075901444;
  } else {
  }
  goto switch_break;
  case_2150953984:
  {
  memset((void *)(& list), 0, 52UL);
  tmp___8 = oz_get_pd_list((struct oz_mac_addr *)(& list.addr), 8);
  list.count = (__u32 )tmp___8;
  tmp___9 = copy_to_user((void *)arg, (void const *)(& list), 52UL);
  }
  if (tmp___9 != 0UL) {
    return (-14L);
  } else {
  }
  goto ldv_47067;
  case_1074197505:
  {
  tmp___11 = copy_from_user((void *)(& addr), (void const *)arg, 6UL);
  }
  if (tmp___11 != 0UL) {
    return (-14L);
  } else {
  }
  {
  rc = oz_set_active_pd((u8 const *)(& addr));
  }
  goto ldv_47067;
  case_2147939330:
  {
  ldv_spin_lock_bh_123___4(& g_cdev.lock);
  ether_addr_copy((u8 *)(& addr___0), (u8 const *)(& g_cdev.active_addr));
  ldv_spin_unlock_bh_124___3(& g_cdev.lock);
  tmp___13 = copy_to_user((void *)arg, (void const *)(& addr___0), 6UL);
  }
  if (tmp___13 != 0UL) {
    return (-14L);
  } else {
  }
  goto ldv_47067;
  case_1075901443: ;
  case_1075901444:
  {
  tmp___14 = copy_from_user((void *)(& b), (void const *)arg, 32UL);
  }
  if (tmp___14 != 0UL) {
    return (-14L);
  } else {
  }
  b.name[31] = 0;
  if (cmd == 1075901443U) {
    {
    oz_binding_add((char const *)(& b.name));
    }
  } else {
    {
    oz_binding_remove((char const *)(& b.name));
    }
  }
  goto ldv_47067;
  switch_break: ;
  }
  ldv_47067: ;
  return ((long )rc);
}
}
static unsigned int oz_cdev_poll(struct file *filp , poll_table *wait )
{
  unsigned int ret ;
  struct oz_cdev *dev ;
  struct oz_serial_ctx *ctx ;
  struct oz_serial_ctx *tmp___0 ;
  {
  {
  ret = 0U;
  dev = (struct oz_cdev *)filp->private_data;
  ldv_spin_lock_bh_123___4(& dev->lock);
  }
  if ((unsigned long )dev->active_pd != (unsigned long )((struct oz_pd *)0)) {
    {
    tmp___0 = oz_cdev_claim_ctx(dev->active_pd);
    ctx = tmp___0;
    }
    if ((unsigned long )ctx != (unsigned long )((struct oz_serial_ctx *)0)) {
      if (ctx->rd_in != ctx->rd_out) {
        ret = ret | 65U;
      } else {
      }
      {
      oz_cdev_release_ctx(ctx);
      }
    } else {
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_124___3(& dev->lock);
  }
  if ((unsigned long )wait != (unsigned long )((poll_table *)0)) {
    {
    poll_wait(filp, & dev->rdq, wait);
    }
  } else {
  }
  return (ret);
}
}
static struct file_operations const oz_fops =
     {& __this_module, 0, & oz_cdev_read, & oz_cdev_write, 0, 0, 0, 0, 0, & oz_cdev_poll,
    & oz_cdev_ioctl, 0, 0, 0, & oz_cdev_open, 0, & oz_cdev_release, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0};
int oz_cdev_register(void)
{
  int err ;
  struct device *dev ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  void *tmp___1 ;
  long tmp___3 ;
  bool tmp___4 ;
  long tmp___6 ;
  bool tmp___7 ;
  {
  {
  memset((void *)(& g_cdev), 0, 520UL);
  err = ldv_alloc_chrdev_region_141(& g_cdev.devnum, 0U, 1U, "ozwpan");
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  ldv_cdev_init_142(& g_cdev.cdev, & oz_fops);
  g_cdev.cdev.owner = & __this_module;
  spinlock_check(& g_cdev.lock);
  __raw_spin_lock_init(& g_cdev.lock.__annonCompField18.rlock, "&(&g_cdev.lock)->rlock",
                       & __key);
  __init_waitqueue_head(& g_cdev.rdq, "&g_cdev.rdq", & __key___0);
  err = cdev_add(& g_cdev.cdev, g_cdev.devnum, 1U);
  }
  if (err < 0) {
    goto unregister;
  } else {
  }
  {
  tmp___1 = ldv_create_class();
  g_oz_class = (struct class *)tmp___1;
  tmp___4 = IS_ERR((void const *)g_oz_class);
  }
  if ((int )tmp___4) {
    {
    tmp___3 = PTR_ERR((void const *)g_oz_class);
    err = (int )tmp___3;
    }
    goto delete;
  } else {
  }
  {
  dev = device_create(g_oz_class, (struct device *)0, g_cdev.devnum, (void *)0, "ozwpan");
  tmp___7 = IS_ERR((void const *)dev);
  }
  if ((int )tmp___7) {
    {
    tmp___6 = PTR_ERR((void const *)dev);
    err = (int )tmp___6;
    }
    goto delete;
  } else {
  }
  return (0);
  delete:
  {
  ldv_cdev_del_143(& g_cdev.cdev);
  }
  unregister:
  {
  ldv_unregister_chrdev_region_144(g_cdev.devnum, 1U);
  }
  return (err);
}
}
int oz_cdev_deregister(void)
{
  {
  {
  ldv_cdev_del_145(& g_cdev.cdev);
  ldv_unregister_chrdev_region_146(g_cdev.devnum, 1U);
  }
  if ((unsigned long )g_oz_class != (unsigned long )((struct class *)0)) {
    {
    device_destroy(g_oz_class, g_cdev.devnum);
    ldv_class_destroy_147(g_oz_class);
    }
  } else {
  }
  return (0);
}
}
int oz_cdev_init(void)
{
  {
  {
  oz_app_enable(4, 1);
  }
  return (0);
}
}
void oz_cdev_term(void)
{
  {
  {
  oz_app_enable(4, 0);
  }
  return;
}
}
int oz_cdev_start(struct oz_pd *pd , int resume )
{
  struct oz_serial_ctx *ctx ;
  struct oz_serial_ctx *old_ctx ;
  void *tmp___0 ;
  bool tmp___2 ;
  {
  if (resume != 0) {
    return (0);
  } else {
  }
  {
  tmp___0 = kzalloc(272UL, 32U);
  ctx = (struct oz_serial_ctx *)tmp___0;
  }
  if ((unsigned long )ctx == (unsigned long )((struct oz_serial_ctx *)0)) {
    return (-12);
  } else {
  }
  {
  atomic_set(& ctx->ref_count, 1);
  ctx->tx_seq_num = 1U;
  ldv_spin_lock_bh_121___0((spinlock_t *)(& pd->app_lock) + 4UL);
  old_ctx = (struct oz_serial_ctx *)pd->app_ctx[4];
  }
  if ((unsigned long )old_ctx != (unsigned long )((struct oz_serial_ctx *)0)) {
    {
    ldv_spin_unlock_bh_122___0((spinlock_t *)(& pd->app_lock) + 4UL);
    kfree((void const *)ctx);
    }
  } else {
    {
    pd->app_ctx[4] = (void *)ctx;
    ldv_spin_unlock_bh_122___0((spinlock_t *)(& pd->app_lock) + 4UL);
    }
  }
  {
  ldv_spin_lock_151(& g_cdev.lock);
  }
  if ((unsigned long )g_cdev.active_pd == (unsigned long )((struct oz_pd *)0)) {
    {
    tmp___2 = ether_addr_equal((u8 const *)(& pd->mac_addr), (u8 const *)(& g_cdev.active_addr));
    }
    if ((int )tmp___2) {
      {
      oz_pd_get(pd);
      g_cdev.active_pd = pd;
      }
    } else {
    }
  } else {
  }
  {
  ldv_spin_unlock_152(& g_cdev.lock);
  }
  return (0);
}
}
void oz_cdev_stop(struct oz_pd *pd , int pause )
{
  struct oz_serial_ctx *ctx ;
  {
  if (pause != 0) {
    return;
  } else {
  }
  {
  ldv_spin_lock_bh_121___0((spinlock_t *)(& pd->app_lock) + 4UL);
  ctx = (struct oz_serial_ctx *)pd->app_ctx[4];
  pd->app_ctx[4] = (void *)0;
  ldv_spin_unlock_bh_122___0((spinlock_t *)(& pd->app_lock) + 4UL);
  }
  if ((unsigned long )ctx != (unsigned long )((struct oz_serial_ctx *)0)) {
    {
    oz_cdev_release_ctx(ctx);
    }
  } else {
  }
  {
  ldv_spin_lock_151(& g_cdev.lock);
  }
  if ((unsigned long )pd == (unsigned long )g_cdev.active_pd) {
    g_cdev.active_pd = (struct oz_pd *)0;
  } else {
    pd = (struct oz_pd *)0;
  }
  {
  ldv_spin_unlock_152(& g_cdev.lock);
  }
  if ((unsigned long )pd != (unsigned long )((struct oz_pd *)0)) {
    {
    oz_pd_put(pd);
    }
  } else {
  }
  return;
}
}
void oz_cdev_rx(struct oz_pd *pd , struct oz_elt *elt )
{
  struct oz_serial_ctx *ctx ;
  struct oz_app_hdr *app_hdr ;
  u8 *data ;
  int len ;
  int space ;
  int copy_sz ;
  int ix ;
  {
  {
  ctx = oz_cdev_claim_ctx(pd);
  }
  if ((unsigned long )ctx == (unsigned long )((struct oz_serial_ctx *)0)) {
    return;
  } else {
  }
  app_hdr = (struct oz_app_hdr *)elt + 1U;
  if ((unsigned int )app_hdr->elt_seq_num != 0U) {
    if ((((int )ctx->rx_seq_num - (int )app_hdr->elt_seq_num) & 128) == 0) {
      goto out;
    } else {
    }
  } else {
  }
  ctx->rx_seq_num = app_hdr->elt_seq_num;
  len = (int )((unsigned int )elt->length - 2U);
  data = (u8 *)elt + 3U;
  if (len <= 0) {
    goto out;
  } else {
  }
  space = (ctx->rd_out - ctx->rd_in) + -1;
  if (space < 0) {
    space = space + 256;
  } else {
  }
  if (len > space) {
    len = space;
  } else {
  }
  ix = ctx->rd_in;
  copy_sz = 256 - ix;
  if (copy_sz > len) {
    copy_sz = len;
  } else {
  }
  {
  memcpy((void *)(& ctx->rd_buf) + (unsigned long )ix, (void const *)data, (size_t )copy_sz);
  len = len - copy_sz;
  ix = ix + copy_sz;
  }
  if (ix == 256) {
    ix = 0;
  } else {
  }
  if (len != 0) {
    {
    memcpy((void *)(& ctx->rd_buf), (void const *)data + (unsigned long )copy_sz,
             (size_t )len);
    ix = len;
    }
  } else {
  }
  {
  ctx->rd_in = ix;
  __wake_up(& g_cdev.rdq, 3U, 1, (void *)0);
  }
  out:
  {
  oz_cdev_release_ctx(ctx);
  }
  return;
}
}
void ldv_cdev_del(void *arg0 , struct cdev *arg1 ) ;
void ldv_cdev_init(void *arg0 , struct cdev *arg1 , struct file_operations *arg2 ) ;
void ldv_dispatch_deregister_6_1(struct file_operations *arg0 ) ;
void ldv_dispatch_register_7_1(struct file_operations *arg0 ) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_instance_callback_0_20(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_0_23(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_0_5(unsigned int (*arg0)(struct file * ,
                                                                    struct poll_table_struct * ) ,
                                               struct file *arg1 , struct poll_table_struct *arg2 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
struct ldv_thread ldv_thread_0 ;
void ldv_cdev_del(void *arg0 , struct cdev *arg1 )
{
  struct cdev *ldv_6_cdev_cdev ;
  struct file_operations *ldv_6_file_operations_file_operations ;
  {
  {
  ldv_6_cdev_cdev = arg1;
  ldv_6_file_operations_file_operations = (struct file_operations *)ldv_6_cdev_cdev->ops;
  ldv_dispatch_deregister_6_1(ldv_6_file_operations_file_operations);
  }
  return;
  return;
}
}
void ldv_cdev_init(void *arg0 , struct cdev *arg1 , struct file_operations *arg2 )
{
  struct cdev *ldv_7_cdev_cdev ;
  struct file_operations *ldv_7_file_operations_file_operations ;
  {
  {
  ldv_7_cdev_cdev = arg1;
  ldv_7_file_operations_file_operations = arg2;
  ldv_7_cdev_cdev->ops = (struct file_operations const *)ldv_7_file_operations_file_operations;
  ldv_dispatch_register_7_1(ldv_7_file_operations_file_operations);
  }
  return;
  return;
}
}
void ldv_dispatch_deregister_6_1(struct file_operations *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_register_7_1(struct file_operations *arg0 )
{
  struct ldv_struct_file_operations_instance_0 *cf_arg_0 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_0 = (struct ldv_struct_file_operations_instance_0 *)tmp;
  cf_arg_0->arg0 = arg0;
  ldv_file_operations_file_operations_instance_0((void *)cf_arg_0);
  }
  return;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  unsigned int (*ldv_0_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_0_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_0_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_0_container_file_operations ;
  char *ldv_0_ldv_param_20_1_default ;
  long long *ldv_0_ldv_param_20_3_default ;
  unsigned int ldv_0_ldv_param_23_1_default ;
  char *ldv_0_ldv_param_4_1_default ;
  long long *ldv_0_ldv_param_4_3_default ;
  struct file *ldv_0_resource_file ;
  struct inode *ldv_0_resource_inode ;
  int ldv_0_ret_default ;
  struct poll_table_struct *ldv_0_size_cnt_struct_poll_table_struct_ptr ;
  unsigned long ldv_0_size_cnt_write_size ;
  struct ldv_struct_file_operations_instance_0 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  {
  data = (struct ldv_struct_file_operations_instance_0 *)arg0;
  ldv_0_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_file_operations_instance_0 *)0)) {
    {
    ldv_0_container_file_operations = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
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
  if (tmp___4 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___4 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_file_operations_instance_callback_0_23(ldv_0_callback_unlocked_ioctl, ldv_0_resource_file,
                                             ldv_0_ldv_param_23_1_default, ldv_0_size_cnt_write_size);
  }
  goto ldv_call_0;
  case_2:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_20_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_20_3_default = (long long *)tmp___6;
  ldv_file_operations_instance_callback_0_20(ldv_0_callback_read, ldv_0_resource_file,
                                             ldv_0_ldv_param_20_1_default, ldv_0_size_cnt_write_size,
                                             ldv_0_ldv_param_20_3_default);
  ldv_free((void *)ldv_0_ldv_param_20_1_default);
  ldv_free((void *)ldv_0_ldv_param_20_3_default);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  case_3:
  {
  tmp___7 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_4_1_default = (char *)tmp___7;
  tmp___8 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_4_3_default = (long long *)tmp___8;
  ldv_assume((unsigned long )ldv_0_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
  ldv_file_operations_instance_write_0_4((long (*)(struct file * , char * , unsigned long ,
                                                   long long * ))ldv_0_container_file_operations->write,
                                         ldv_0_resource_file, ldv_0_ldv_param_4_1_default,
                                         ldv_0_size_cnt_write_size, ldv_0_ldv_param_4_3_default);
  ldv_free((void *)ldv_0_ldv_param_4_1_default);
  ldv_free((void *)ldv_0_ldv_param_4_3_default);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_4:
  {
  ldv_file_operations_instance_callback_0_5(ldv_0_callback_poll, ldv_0_resource_file,
                                            ldv_0_size_cnt_struct_poll_table_struct_ptr);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_5:
  {
  ldv_file_operations_instance_release_0_2(ldv_0_container_file_operations->release,
                                           ldv_0_resource_inode, ldv_0_resource_file);
  }
  goto ldv_main_0;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_20(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  oz_cdev_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_23(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  oz_cdev_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_5(unsigned int (*arg0)(struct file * ,
                                                                    struct poll_table_struct * ) ,
                                               struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  oz_cdev_poll(arg1, arg2);
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
  tmp = oz_cdev_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  oz_cdev_release(arg1, arg2);
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
  oz_cdev_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
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
__inline static void ldv_spin_lock_bh_123___4(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_oz_cdev();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_124___3(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_oz_cdev();
  spin_unlock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_128___0(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_oz_elt_buf();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_129___0(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_oz_elt_buf();
  spin_unlock(lock);
  }
  return;
}
}
static int ldv_alloc_chrdev_region_141(dev_t *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                       unsigned int ldv_func_arg3 , char const *ldv_func_arg4 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int res1 ;
  int tmp___0 ;
  int res2 ;
  int tmp___1 ;
  {
  {
  tmp = alloc_chrdev_region(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
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
static void ldv_cdev_init_142(struct cdev *ldv_func_arg1 , struct file_operations const *ldv_func_arg2 )
{
  {
  {
  cdev_init(ldv_func_arg1, ldv_func_arg2);
  ldv_cdev_init((void *)0, ldv_func_arg1, (struct file_operations *)ldv_func_arg2);
  }
  return;
}
}
static void ldv_cdev_del_143(struct cdev *ldv_func_arg1 )
{
  {
  {
  cdev_del(ldv_func_arg1);
  ldv_cdev_del((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_unregister_chrdev_region_144(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 )
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
static void ldv_cdev_del_145(struct cdev *ldv_func_arg1 )
{
  {
  {
  cdev_del(ldv_func_arg1);
  ldv_cdev_del((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_unregister_chrdev_region_146(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 )
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
static void ldv_class_destroy_147(struct class *cls )
{
  {
  {
  ldv_linux_drivers_base_class_destroy_class(cls);
  ldv_linux_usb_gadget_destroy_class(cls);
  }
  return;
}
}
__inline static void ldv_spin_lock_151(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_oz_cdev();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_152(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_oz_cdev();
  spin_unlock(lock);
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
void *ldv_undef_ptr(void) ;
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
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
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
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 2);
  ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_NOT_ARG_SIGN(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 2);
  ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock__xmit_lock_of_netdev_queue(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked__xmit_lock_of_netdev_queue();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended__xmit_lock_of_netdev_queue(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock__xmit_lock_of_netdev_queue(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 2);
  ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_addr_list_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_addr_list_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_addr_list_lock_of_net_device(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_addr_list_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
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
static int ldv_linux_kernel_locking_spinlock_spin_g_binding_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_g_binding_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_g_binding_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_binding_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_g_binding_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_g_binding_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_g_binding_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_binding_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_g_binding_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_g_binding_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_g_binding_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_binding_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_g_binding_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_g_binding_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_g_binding_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_binding_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_g_binding_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_g_binding_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_g_binding_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_g_binding_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_g_binding_lock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_g_binding_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_g_binding_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_binding_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_g_binding_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_g_hcdlock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_g_hcdlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_g_hcdlock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_hcdlock == 1);
  ldv_linux_kernel_locking_spinlock_spin_g_hcdlock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_g_hcdlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_g_hcdlock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_hcdlock == 2);
  ldv_linux_kernel_locking_spinlock_spin_g_hcdlock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_g_hcdlock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_g_hcdlock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_hcdlock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_g_hcdlock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_g_hcdlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_g_hcdlock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_hcdlock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_g_hcdlock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_g_hcdlock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_g_hcdlock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_g_hcdlock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_g_hcdlock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_g_hcdlock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_g_hcdlock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_hcdlock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_g_hcdlock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_g_polling_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_g_polling_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_g_polling_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_polling_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_g_polling_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_g_polling_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_g_polling_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_polling_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_g_polling_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_g_polling_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_g_polling_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_polling_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_g_polling_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_g_polling_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_g_polling_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_polling_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_g_polling_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_g_polling_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_g_polling_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_g_polling_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_g_polling_lock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_g_polling_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_g_polling_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_polling_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_g_polling_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_g_tasklet_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_g_tasklet_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_g_tasklet_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_g_tasklet_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_g_tasklet_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_g_tasklet_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_g_tasklet_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_g_tasklet_lock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_g_tasklet_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_hcd_lock_of_oz_hcd(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd == 1);
  ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_hcd_lock_of_oz_hcd(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd == 2);
  ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_hcd_lock_of_oz_hcd(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_hcd_lock_of_oz_hcd(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_hcd_lock_of_oz_hcd(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_hcd_lock_of_oz_hcd(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_hcd_lock_of_oz_hcd();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_hcd_lock_of_oz_hcd(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_hcd_lock_of_oz_hcd(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd = 2;
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
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_oz_cdev(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_oz_cdev(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_oz_cdev(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_oz_cdev(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_oz_cdev(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_oz_cdev(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_oz_cdev();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_oz_cdev(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_oz_cdev(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_oz_elt_buf(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_oz_elt_buf(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_oz_elt_buf(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_oz_elt_buf(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_oz_elt_buf(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_oz_elt_buf(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_oz_elt_buf();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_oz_elt_buf(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_oz_elt_buf(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_sk_buff_head(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_sk_buff_head(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_sk_buff_head(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_sk_buff_head(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_sk_buff_head(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_sk_buff_head(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_sk_buff_head();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_sk_buff_head(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_sk_buff_head(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head = 2;
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
static int ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_port_lock_of_oz_port(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port == 1);
  ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_port_lock_of_oz_port(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port == 2);
  ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_port_lock_of_oz_port(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_port_lock_of_oz_port(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_port_lock_of_oz_port(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_port_lock_of_oz_port(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_port_lock_of_oz_port();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_port_lock_of_oz_port(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_port_lock_of_oz_port(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port = 2;
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
static int ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_stream_lock_of_oz_pd(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd == 1);
  ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_stream_lock_of_oz_pd(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd == 2);
  ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_stream_lock_of_oz_pd(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_stream_lock_of_oz_pd(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_stream_lock_of_oz_pd(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_stream_lock_of_oz_pd(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_stream_lock_of_oz_pd();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_stream_lock_of_oz_pd(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_stream_lock_of_oz_pd(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_tx_frame_lock_of_oz_pd(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd == 1);
  ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_tx_frame_lock_of_oz_pd(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd == 2);
  ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_tx_frame_lock_of_oz_pd(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_tx_frame_lock_of_oz_pd(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_tx_frame_lock_of_oz_pd(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_tx_frame_lock_of_oz_pd(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_tx_frame_lock_of_oz_pd();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_tx_frame_lock_of_oz_pd(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_tx_frame_lock_of_oz_pd(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 2);
  ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_tx_global_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_tx_global_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_tx_global_lock_of_net_device(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_tx_global_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 2;
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
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_g_binding_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_g_hcdlock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_g_polling_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_g_binding_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_g_hcdlock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_g_polling_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_g_tasklet_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_hcd_lock_of_oz_hcd == 2) {
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
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_cdev == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_oz_elt_buf == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_sk_buff_head == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_port_lock_of_oz_port == 2) {
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
  if (ldv_linux_kernel_locking_spinlock_spin_stream_lock_of_oz_pd == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_tx_frame_lock_of_oz_pd == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 2) {
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
static int ldv_linux_lib_idr_idr = 0;
void ldv_linux_lib_idr_idr_init(void)
{
  {
  {
  ldv_assert_linux_lib_idr__double_init(ldv_linux_lib_idr_idr == 0);
  ldv_linux_lib_idr_idr = 1;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_alloc(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_find(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_remove(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_destroy(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 3;
  }
  return;
}
}
void ldv_linux_lib_idr_check_final_state(void)
{
  {
  {
  ldv_assert_linux_lib_idr__more_at_exit(ldv_linux_lib_idr_idr == 0 || ldv_linux_lib_idr_idr == 3);
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
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t *arg0) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __platform_driver_register(struct platform_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __tasklet_schedule(struct tasklet_struct *arg0) {
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
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int alloc_chrdev_region(dev_t *arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int cdev_add(struct cdev *arg0, dev_t arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
void cdev_del(struct cdev *arg0) {
  return;
}
void cdev_init(struct cdev *arg0, const struct file_operations *arg1) {
  return;
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
void dev_add_pack(struct packet_type *arg0) {
  return;
}
void *external_alloc(void);
struct net_device *dev_get_by_name(struct net *arg0, const char *arg1) {
  return (struct net_device *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int dev_queue_xmit(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
void dev_remove_pack(struct packet_type *arg0) {
  return;
}
void *external_alloc(void);
struct device *device_create(struct class *arg0, struct device *arg1, dev_t arg2, void *arg3, const char *arg4, ...) {
  return (struct device *)external_alloc();
}
void device_destroy(struct class *arg0, dev_t arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_wakeup_enable(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void getnstimeofday64(struct timespec *arg0) {
  return;
}
void getrawmonotonic64(struct timespec *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int hrtimer_cancel(struct hrtimer *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
u64 hrtimer_forward(struct hrtimer *arg0, ktime_t arg1, ktime_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void hrtimer_init(struct hrtimer *arg0, clockid_t arg1, enum hrtimer_mode arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int hrtimer_start(struct hrtimer *arg0, ktime_t arg1, const enum hrtimer_mode arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int hrtimer_start_range_ns(struct hrtimer *arg0, ktime_t arg1, unsigned long arg2, const enum hrtimer_mode arg3) {
  return __VERIFIER_nondet_int();
}
void kfree_skb(struct sk_buff *arg0) {
  return;
}
void *external_alloc(void);
struct kmem_cache *kmem_cache_create(const char *arg0, size_t arg1, size_t arg2, unsigned long arg3, void (*arg4)(void *)) {
  return (struct kmem_cache *)external_alloc();
}
void kmem_cache_destroy(struct kmem_cache *arg0) {
  return;
}
void kmem_cache_free(struct kmem_cache *arg0, void *arg1) {
  return;
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_pre_probe() {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void might_fault() {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_device_add(struct platform_device *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct platform_device *platform_device_alloc(const char *arg0, int arg1) {
  return (struct platform_device *)external_alloc();
}
void platform_device_put(struct platform_device *arg0) {
  return;
}
void platform_device_unregister(struct platform_device *arg0) {
  return;
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
void set_normalized_timespec(struct timespec *arg0, time_t arg1, s64 arg2) {
  return;
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
void unregister_chrdev_region(dev_t arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_add_hcd(struct usb_hcd *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct usb_hcd *usb_create_hcd(const struct hc_driver *arg0, struct device *arg1, const char *arg2) {
  return (struct usb_hcd *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int usb_disabled() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct usb_hcd *usb_get_hcd(struct usb_hcd *arg0) {
  return (struct usb_hcd *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int usb_hcd_check_unlink_urb(struct usb_hcd *arg0, struct urb *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void usb_hcd_giveback_urb(struct usb_hcd *arg0, struct urb *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_hcd_link_urb_to_ep(struct usb_hcd *arg0, struct urb *arg1) {
  return __VERIFIER_nondet_int();
}
void usb_hcd_poll_rh_status(struct usb_hcd *arg0) {
  return;
}
void usb_hcd_resume_root_hub(struct usb_hcd *arg0) {
  return;
}
void usb_hcd_unlink_urb_from_ep(struct usb_hcd *arg0, struct urb *arg1) {
  return;
}
void usb_put_hcd(struct usb_hcd *arg0) {
  return;
}
void usb_remove_hcd(struct usb_hcd *arg0) {
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
