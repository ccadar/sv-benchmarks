typedef signed char __s8;
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
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
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
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
struct __anonstruct_nodemask_t_53 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_53 nodemask_t;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct pci_dev;
struct pci_bus;
struct __anonstruct_mm_context_t_118 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_118 mm_context_t;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
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
struct __anonstruct____missing_field_name_151 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_152 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_150 {
   struct __anonstruct____missing_field_name_151 __annonCompField34 ;
   struct __anonstruct____missing_field_name_152 __annonCompField35 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_150 __annonCompField36 ;
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
union __anonunion____missing_field_name_153 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_155 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_159 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_158 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_159 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_157 {
   union __anonunion____missing_field_name_158 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_156 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_157 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_154 {
   union __anonunion____missing_field_name_155 __annonCompField38 ;
   union __anonunion____missing_field_name_156 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_161 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_162 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_160 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_161 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_162 __annonCompField45 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_163 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_153 __annonCompField37 ;
   struct __anonstruct____missing_field_name_154 __annonCompField43 ;
   union __anonunion____missing_field_name_160 __annonCompField46 ;
   union __anonunion____missing_field_name_163 __annonCompField47 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_164 {
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
   struct __anonstruct_shared_164 shared ;
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
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_166 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_166 sigset_t;
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
struct __anonstruct__kill_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_169 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_170 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_171 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_173 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_172 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_173 _addr_bnd ;
};
struct __anonstruct__sigpoll_174 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_175 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_167 {
   int _pad[28U] ;
   struct __anonstruct__kill_168 _kill ;
   struct __anonstruct__timer_169 _timer ;
   struct __anonstruct__rt_170 _rt ;
   struct __anonstruct__sigchld_171 _sigchld ;
   struct __anonstruct__sigfault_172 _sigfault ;
   struct __anonstruct__sigpoll_174 _sigpoll ;
   struct __anonstruct__sigsys_175 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_167 _sifields ;
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
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
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct cred;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_180 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_181 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_183 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_182 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_183 __annonCompField52 ;
};
union __anonunion_type_data_184 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_186 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_185 {
   union __anonunion_payload_186 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_180 __annonCompField50 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_181 __annonCompField51 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_182 __annonCompField53 ;
   union __anonunion_type_data_184 type_data ;
   union __anonunion____missing_field_name_185 __annonCompField54 ;
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
struct backing_dev_info;
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
struct io_context;
struct pipe_inode_info;
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
struct proc_dir_entry;
struct pci_driver;
union __anonunion____missing_field_name_191 {
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
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   u8 dma_alias_devfn ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char pme_poll : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char no_d3cold : 1 ;
   unsigned char d3cold_allowed : 1 ;
   unsigned char mmio_always_on : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned char runtime_d3cold : 1 ;
   unsigned char ignore_hotplug : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char no_64bit_msi : 1 ;
   unsigned char block_cfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
   unsigned char needs_freset : 1 ;
   unsigned char state_saved : 1 ;
   unsigned char is_physfn : 1 ;
   unsigned char is_virtfn : 1 ;
   unsigned char reset_fn : 1 ;
   unsigned char is_hotplug_bridge : 1 ;
   unsigned char __aer_firmware_first_valid : 1 ;
   unsigned char __aer_firmware_first : 1 ;
   unsigned char broken_intx_masking : 1 ;
   unsigned char io_window_1k : 1 ;
   unsigned char irq_managed : 1 ;
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
   union __anonunion____missing_field_name_191 __annonCompField58 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
};
struct pci_ops;
struct msi_controller;
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
   struct msi_controller *msi ;
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
   unsigned char is_added : 1 ;
};
struct pci_ops {
   void *(*map_bus)(struct pci_bus * , unsigned int , int ) ;
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
   void (*reset_notify)(struct pci_dev * , bool ) ;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
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
struct file_ra_state;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_193 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_192 {
   struct __anonstruct____missing_field_name_193 __annonCompField59 ;
};
struct lockref {
   union __anonunion____missing_field_name_192 __annonCompField60 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_195 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_194 {
   struct __anonstruct____missing_field_name_195 __annonCompField61 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_194 __annonCompField62 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_196 {
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
   union __anonunion_d_u_196 d_u ;
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
struct __anonstruct____missing_field_name_198 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_197 {
   struct __anonstruct____missing_field_name_198 __annonCompField63 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_197 __annonCompField64 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
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
struct bio_set;
struct bio;
struct bio_integrity_payload;
struct block_device;
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
union __anonunion____missing_field_name_199 {
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
   union __anonunion____missing_field_name_199 __annonCompField65 ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct iovec;
struct nameidata;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
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
struct __anonstruct_kprojid_t_200 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_200 kprojid_t;
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
union __anonunion____missing_field_name_201 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_201 __annonCompField66 ;
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
union __anonunion____missing_field_name_204 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_205 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
union __anonunion____missing_field_name_206 {
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
   union __anonunion____missing_field_name_204 __annonCompField67 ;
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
   union __anonunion____missing_field_name_205 __annonCompField68 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_206 __annonCompField69 ;
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
union __anonunion_f_u_207 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_207 f_u ;
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
struct __anonstruct_afs_209 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_208 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_209 afs ;
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
   union __anonunion_fl_u_208 fl_u ;
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
union __anonunion____missing_field_name_214 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_215 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_214 __annonCompField73 ;
   union __anonunion____missing_field_name_215 __annonCompField74 ;
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
struct card_cfg_hdr {
   __u32 version ;
   __u32 crc ;
};
struct __anonstruct_intr_coal_216 {
   __u32 mode ;
   __u32 count ;
   __u32 latency ;
};
struct card_cfg_data {
   __u32 block_size ;
   __u32 stripe_size ;
   __u32 vendor_id ;
   __u32 cache_order ;
   struct __anonstruct_intr_coal_216 intr_coal ;
};
struct rsxx_card_cfg {
   struct card_cfg_hdr hdr ;
   struct card_cfg_data data ;
};
struct dma_tracker_list;
struct rsxx_cs_buffer {
   dma_addr_t dma_addr ;
   void *buf ;
   u32 idx ;
};
struct rsxx_dma_stats {
   u32 crc_errors ;
   u32 hard_errors ;
   u32 soft_errors ;
   u32 writes_issued ;
   u32 writes_failed ;
   u32 reads_issued ;
   u32 reads_failed ;
   u32 reads_retried ;
   u32 discards_issued ;
   u32 discards_failed ;
   u32 done_rescheduled ;
   u32 issue_rescheduled ;
   u32 dma_sw_err ;
   u32 dma_hw_fault ;
   u32 dma_cancelled ;
   u32 sw_q_depth ;
   atomic_t hw_q_depth ;
};
struct rsxx_cardinfo;
struct rsxx_dma_ctrl {
   struct rsxx_cardinfo *card ;
   int id ;
   void *regmap ;
   struct rsxx_cs_buffer status ;
   struct rsxx_cs_buffer cmd ;
   u16 e_cnt ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct workqueue_struct *issue_wq ;
   struct work_struct issue_dma_work ;
   struct workqueue_struct *done_wq ;
   struct work_struct dma_done_work ;
   struct timer_list activity_timer ;
   struct dma_tracker_list *trackers ;
   struct rsxx_dma_stats stats ;
   struct mutex work_lock ;
};
struct creg_cmd;
struct __anonstruct_creg_stats_218 {
   u32 stat ;
   u32 failed_cancel_timer ;
   u32 creg_timeout ;
};
struct __anonstruct_creg_ctrl_217 {
   spinlock_t lock ;
   bool active ;
   struct creg_cmd *active_cmd ;
   struct workqueue_struct *creg_wq ;
   struct work_struct done_work ;
   struct list_head queue ;
   unsigned int q_depth ;
   struct __anonstruct_creg_stats_218 creg_stats ;
   struct timer_list cmd_timer ;
   struct mutex reset_lock ;
   int reset ;
};
struct __anonstruct_log_219 {
   char tmp[32U] ;
   char buf[128U] ;
   int buf_len ;
};
struct __anonstruct__stripe_220 {
   u64 lower_mask ;
   u64 upper_shift ;
   u64 upper_mask ;
   u64 target_mask ;
   u64 target_shift ;
};
struct rsxx_cardinfo {
   struct pci_dev *dev ;
   unsigned int halt ;
   unsigned int eeh_state ;
   void *regmap ;
   spinlock_t irq_lock ;
   unsigned int isr_mask ;
   unsigned int ier_mask ;
   struct rsxx_card_cfg config ;
   int config_valid ;
   struct __anonstruct_creg_ctrl_217 creg_ctrl ;
   struct __anonstruct_log_219 log ;
   struct workqueue_struct *event_wq ;
   struct work_struct event_work ;
   unsigned int state ;
   u64 size8 ;
   struct mutex dev_lock ;
   bool bdev_attached ;
   int disk_id ;
   int major ;
   struct request_queue *queue ;
   struct gendisk *gendisk ;
   struct __anonstruct__stripe_220 _stripe ;
   unsigned int dma_fault ;
   int scrub_hard ;
   int n_targets ;
   struct rsxx_dma_ctrl *ctrl ;
   struct dentry *debugfs_dir ;
};
typedef signed char s8;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
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
typedef void (*ctor_fn_t)(void);
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct ldv_thread;
struct jump_entry;
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
enum hrtimer_restart;
struct hd_geometry;
struct block_device_operations;
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
union __anonunion____missing_field_name_218 {
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
   union __anonunion____missing_field_name_218 __annonCompField73 ;
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
struct ldv_struct_EMGentry_12 {
   int signal_pending ;
};
struct ldv_struct_free_irq_7 {
   int arg0 ;
   int signal_pending ;
};
struct ldv_struct_interrupt_instance_3 {
   int arg0 ;
   enum irqreturn (*arg1)(int , void * ) ;
   enum irqreturn (*arg2)(int , void * ) ;
   void *arg3 ;
   int signal_pending ;
};
struct ldv_struct_pci_instance_4 {
   struct pci_driver *arg0 ;
   int signal_pending ;
};
struct ldv_struct_timer_instance_5 {
   struct timer_list *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
enum hrtimer_restart;
struct rsxx_reg_access {
   __u32 addr ;
   __u32 cnt ;
   __u32 stat ;
   __u32 stream ;
   __u32 data[8U] ;
};
struct creg_cmd {
   struct list_head list ;
   void (*cb)(struct rsxx_cardinfo * , struct creg_cmd * , int ) ;
   void *cb_private ;
   unsigned int op ;
   unsigned int addr ;
   int cnt8 ;
   void *buf ;
   unsigned int stream ;
   unsigned int status ;
};
struct creg_completion {
   struct completion *cmd_done ;
   int st ;
   u32 creg_status ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
struct request;
enum hrtimer_restart;
struct call_single_data {
   struct llist_node llist ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
};
struct hd_geometry {
   unsigned char heads ;
   unsigned char sectors ;
   unsigned short cylinders ;
   unsigned long start ;
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
struct elevator_queue;
struct blk_trace;
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
union __anonunion____missing_field_name_222 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion____missing_field_name_223 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion____missing_field_name_224 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_226 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_227 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_225 {
   struct __anonstruct_elv_226 elv ;
   struct __anonstruct_flush_227 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion____missing_field_name_222 __annonCompField76 ;
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
   union __anonunion____missing_field_name_223 __annonCompField77 ;
   union __anonunion____missing_field_name_224 __annonCompField78 ;
   union __anonunion____missing_field_name_225 __annonCompField79 ;
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
struct rsxx_bio_meta {
   struct bio *bio ;
   atomic_t pending_dmas ;
   atomic_t error ;
   unsigned long start_time ;
};
typedef struct request_queue *ldv_func_ret_type___5;
typedef struct gendisk *ldv_func_ret_type___6;
typedef __u16 __le16;
typedef __u32 __le32;
typedef __u64 __le64;
enum hrtimer_restart;
struct __anonstruct_sub_page_221 {
   u32 off ;
   u32 cnt ;
};
struct rsxx_dma {
   struct list_head list ;
   u8 cmd ;
   unsigned int laddr ;
   struct __anonstruct_sub_page_221 sub_page ;
   dma_addr_t dma_addr ;
   struct page *page ;
   unsigned int pg_off ;
   void (*cb)(struct rsxx_cardinfo * , void * , unsigned int ) ;
   void *cb_data ;
};
struct hw_status {
   u8 status ;
   u8 tag ;
   __le16 count ;
   __le32 _rsvd2 ;
   __le64 _rsvd3 ;
};
struct hw_cmd {
   u8 command ;
   u8 tag ;
   u8 _rsvd ;
   u8 sub_page ;
   __le32 device_addr ;
   __le64 host_addr ;
};
struct dma_tracker {
   int next_tag ;
   struct rsxx_dma *dma ;
};
struct dma_tracker_list {
   spinlock_t lock ;
   int head ;
   struct dma_tracker list[0U] ;
};
typedef int ldv_func_ret_type___7;
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
struct notifier_block;
enum hrtimer_restart;
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
};
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
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_irq_check_alloc_nonatomic(void) ;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void) ;
void *ldv_linux_drivers_base_class_create_class(void) ;
int ldv_linux_drivers_base_class_register_class(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void) ;
void *ldv_linux_usb_gadget_create_class(void) ;
int ldv_linux_usb_gadget_register_class(void) ;
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
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void dev_err(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
int rsxx_load_config(struct rsxx_cardinfo *card ) ;
int rsxx_creg_write(struct rsxx_cardinfo *card , u32 addr , unsigned int size8 , void *data ,
                    int byte_stream ) ;
int rsxx_creg_read(struct rsxx_cardinfo *card , u32 addr , unsigned int size8 , void *data ,
                   int byte_stream ) ;
static void initialize_config(struct rsxx_card_cfg *cfg )
{
  {
  cfg->hdr.version = 4U;
  cfg->data.block_size = 4096U;
  cfg->data.stripe_size = 4096U;
  cfg->data.vendor_id = 0U;
  cfg->data.cache_order = 4294967295U;
  cfg->data.intr_coal.mode = 0U;
  cfg->data.intr_coal.count = 0U;
  cfg->data.intr_coal.latency = 0U;
  return;
}
}
static u32 config_data_crc32(struct rsxx_card_cfg *cfg )
{
  u32 tmp ;
  {
  {
  tmp = crc32_le(4294967295U, (unsigned char const *)(& cfg->data), 28UL);
  }
  return (~ tmp);
}
}
static void config_hdr_be_to_cpu(struct card_cfg_hdr *hdr )
{
  __u32 tmp ;
  __u32 tmp___0 ;
  {
  {
  tmp = __fswab32(hdr->version);
  hdr->version = tmp;
  tmp___0 = __fswab32(hdr->crc);
  hdr->crc = tmp___0;
  }
  return;
}
}
static void config_hdr_cpu_to_be(struct card_cfg_hdr *hdr )
{
  __u32 tmp ;
  __u32 tmp___0 ;
  {
  {
  tmp = __fswab32(hdr->version);
  hdr->version = tmp;
  tmp___0 = __fswab32(hdr->crc);
  hdr->crc = tmp___0;
  }
  return;
}
}
static void config_data_swab(struct rsxx_card_cfg *cfg )
{
  u32 *data ;
  int i ;
  __u32 tmp ;
  {
  data = (u32 *)(& cfg->data);
  i = 0;
  goto ldv_33699;
  ldv_33698:
  {
  tmp = __fswab32(*(data + (unsigned long )i));
  *(data + (unsigned long )i) = tmp;
  i = i + 1;
  }
  ldv_33699: ;
  if ((unsigned int )i <= 6U) {
    goto ldv_33698;
  } else {
  }
  return;
}
}
static void config_data_le_to_cpu(struct rsxx_card_cfg *cfg )
{
  u32 *data ;
  int i ;
  {
  data = (u32 *)(& cfg->data);
  i = 0;
  goto ldv_33707;
  ldv_33706:
  *(data + (unsigned long )i) = *(data + (unsigned long )i);
  i = i + 1;
  ldv_33707: ;
  if ((unsigned int )i <= 6U) {
    goto ldv_33706;
  } else {
  }
  return;
}
}
static void config_data_cpu_to_le(struct rsxx_card_cfg *cfg )
{
  u32 *data ;
  int i ;
  {
  data = (u32 *)(& cfg->data);
  i = 0;
  goto ldv_33715;
  ldv_33714:
  *(data + (unsigned long )i) = *(data + (unsigned long )i);
  i = i + 1;
  ldv_33715: ;
  if ((unsigned int )i <= 6U) {
    goto ldv_33714;
  } else {
  }
  return;
}
}
static int rsxx_save_config(struct rsxx_cardinfo *card )
{
  struct rsxx_card_cfg cfg ;
  int st ;
  long tmp ;
  {
  {
  memcpy((void *)(& cfg), (void const *)(& card->config), 36UL);
  tmp = ldv__builtin_expect(cfg.hdr.version != 4U, 0L);
  }
  if (tmp != 0L) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Cannot save config with invalid version %d\n",
            cfg.hdr.version);
    }
    return (-22);
  } else {
  }
  {
  config_data_cpu_to_le(& cfg);
  cfg.hdr.crc = config_data_crc32(& cfg);
  config_data_swab(& cfg);
  config_hdr_cpu_to_be(& cfg.hdr);
  st = rsxx_creg_write(card, 2952790016U, 36U, (void *)(& cfg), 1);
  }
  if (st != 0) {
    return (st);
  } else {
  }
  return (0);
}
}
int rsxx_load_config(struct rsxx_cardinfo *card )
{
  int st ;
  u32 crc ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
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
  struct _ddebug descriptor___6 ;
  long tmp___6 ;
  struct _ddebug descriptor___7 ;
  long tmp___7 ;
  {
  {
  st = rsxx_creg_read(card, 2952790016U, 36U, (void *)(& card->config), 1);
  }
  if (st != 0) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Failed reading card config.\n");
    }
    return (st);
  } else {
  }
  {
  config_hdr_be_to_cpu(& card->config.hdr);
  }
  if (card->config.hdr.version == 4U) {
    {
    config_data_swab(& card->config);
    crc = config_data_crc32(& card->config);
    }
    if (crc != card->config.hdr.crc) {
      {
      dev_err((struct device const *)(& (card->dev)->dev), "Config corruption detected!\n");
      _dev_info((struct device const *)(& (card->dev)->dev), "CRC (sb x%08x is x%08x)\n",
                card->config.hdr.crc, crc);
      }
      return (-5);
    } else {
    }
    {
    config_data_le_to_cpu(& card->config);
    }
  } else
  if (card->config.hdr.version != 0U) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Invalid config version %d.\n",
            card->config.hdr.version);
    }
    return (-22);
  } else {
    {
    _dev_info((struct device const *)(& (card->dev)->dev), "Initializing card configuration.\n");
    initialize_config(& card->config);
    st = rsxx_save_config(card);
    }
    if (st != 0) {
      return (st);
    } else {
    }
  }
  {
  card->config_valid = 1;
  descriptor.modname = "rsxx";
  descriptor.function = "rsxx_load_config";
  descriptor.filename = "drivers/block/rsxx/config.c";
  descriptor.format = "version:     x%08x\n";
  descriptor.lineno = 191U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (card->dev)->dev),
                      "version:     x%08x\n", card->config.hdr.version);
    }
  } else {
  }
  {
  descriptor___0.modname = "rsxx";
  descriptor___0.function = "rsxx_load_config";
  descriptor___0.filename = "drivers/block/rsxx/config.c";
  descriptor___0.format = "crc:         x%08x\n";
  descriptor___0.lineno = 193U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (card->dev)->dev),
                      "crc:         x%08x\n", card->config.hdr.crc);
    }
  } else {
  }
  {
  descriptor___1.modname = "rsxx";
  descriptor___1.function = "rsxx_load_config";
  descriptor___1.filename = "drivers/block/rsxx/config.c";
  descriptor___1.format = "block_size:  x%08x\n";
  descriptor___1.lineno = 195U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& (card->dev)->dev),
                      "block_size:  x%08x\n", card->config.data.block_size);
    }
  } else {
  }
  {
  descriptor___2.modname = "rsxx";
  descriptor___2.function = "rsxx_load_config";
  descriptor___2.filename = "drivers/block/rsxx/config.c";
  descriptor___2.format = "stripe_size: x%08x\n";
  descriptor___2.lineno = 197U;
  descriptor___2.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)(& (card->dev)->dev),
                      "stripe_size: x%08x\n", card->config.data.stripe_size);
    }
  } else {
  }
  {
  descriptor___3.modname = "rsxx";
  descriptor___3.function = "rsxx_load_config";
  descriptor___3.filename = "drivers/block/rsxx/config.c";
  descriptor___3.format = "vendor_id:   x%08x\n";
  descriptor___3.lineno = 199U;
  descriptor___3.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)(& (card->dev)->dev),
                      "vendor_id:   x%08x\n", card->config.data.vendor_id);
    }
  } else {
  }
  {
  descriptor___4.modname = "rsxx";
  descriptor___4.function = "rsxx_load_config";
  descriptor___4.filename = "drivers/block/rsxx/config.c";
  descriptor___4.format = "cache_order: x%08x\n";
  descriptor___4.lineno = 201U;
  descriptor___4.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)(& (card->dev)->dev),
                      "cache_order: x%08x\n", card->config.data.cache_order);
    }
  } else {
  }
  {
  descriptor___5.modname = "rsxx";
  descriptor___5.function = "rsxx_load_config";
  descriptor___5.filename = "drivers/block/rsxx/config.c";
  descriptor___5.format = "mode:        x%08x\n";
  descriptor___5.lineno = 203U;
  descriptor___5.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)(& (card->dev)->dev),
                      "mode:        x%08x\n", card->config.data.intr_coal.mode);
    }
  } else {
  }
  {
  descriptor___6.modname = "rsxx";
  descriptor___6.function = "rsxx_load_config";
  descriptor___6.filename = "drivers/block/rsxx/config.c";
  descriptor___6.format = "count:       x%08x\n";
  descriptor___6.lineno = 205U;
  descriptor___6.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  }
  if (tmp___6 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)(& (card->dev)->dev),
                      "count:       x%08x\n", card->config.data.intr_coal.count);
    }
  } else {
  }
  {
  descriptor___7.modname = "rsxx";
  descriptor___7.function = "rsxx_load_config";
  descriptor___7.filename = "drivers/block/rsxx/config.c";
  descriptor___7.format = "latency:     x%08x\n";
  descriptor___7.lineno = 207U;
  descriptor___7.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  }
  if (tmp___7 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___7, (struct device const *)(& (card->dev)->dev),
                      "latency:     x%08x\n", card->config.data.intr_coal.latency);
    }
  } else {
  }
  return (0);
}
}
void ldv_stop(void) ;
void ldv_linux_arch_io_check_final_state(void) ;
void ldv_linux_block_genhd_check_final_state(void) ;
void ldv_linux_block_queue_check_final_state(void) ;
void ldv_linux_block_request_check_final_state(void) ;
void ldv_linux_drivers_base_class_check_final_state(void) ;
void ldv_linux_fs_char_dev_check_final_state(void) ;
void ldv_linux_fs_sysfs_check_final_state(void) ;
void ldv_linux_kernel_locking_rwlock_check_final_state(void) ;
void ldv_linux_kernel_module_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_check_final_state(void) ;
void ldv_linux_kernel_rcu_srcu_check_final_state(void) ;
void ldv_linux_lib_find_bit_initialize(void) ;
void ldv_linux_lib_idr_check_final_state(void) ;
void ldv_linux_mmc_sdio_func_check_final_state(void) ;
void ldv_linux_net_register_reset_error_counter(void) ;
void ldv_linux_net_register_check_return_value_probe(int retval ) ;
void ldv_linux_net_rtnetlink_check_final_state(void) ;
void ldv_linux_net_sock_check_final_state(void) ;
void ldv_linux_usb_coherent_check_final_state(void) ;
void ldv_linux_usb_gadget_check_final_state(void) ;
void ldv_linux_usb_register_reset_error_counter(void) ;
void ldv_linux_usb_register_check_return_value_probe(int retval ) ;
void ldv_linux_usb_urb_check_final_state(void) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
int ldv_undef_int(void) ;
static void ldv_ldv_initialize_135(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_132(int ldv_func_arg1 ) ;
extern void ldv_pre_probe(void) ;
static void ldv_ldv_pre_probe_136(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_137(int retval ) ;
int ldv_filter_err_code(int ret_val ) ;
static void ldv_ldv_check_final_state_133(void) ;
static void ldv_ldv_check_final_state_134(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static int ffs(int x )
{
  int r ;
  {
  __asm__ ("bsfl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
extern void might_fault(void) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
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
__inline static bool IS_ERR_OR_NULL(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    {
    tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
    }
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((bool )tmp___0);
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
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t * ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_98(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_102(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_121(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_123(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_125(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_128(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_irq_lock_of_rsxx_cardinfo(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_irq_lock_of_rsxx_cardinfo(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_queue_lock_of_rsxx_dma_ctrl(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_queue_lock_of_rsxx_dma_ctrl(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_rsxx_ida_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_rsxx_ida_lock(void) ;
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
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
__inline static void ldv_spin_lock_96(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_107(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_107(spinlock_t *lock ) ;
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_bh(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_100(spinlock_t *lock ) ;
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_irq(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_irq_109(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_109(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_109(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_109(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_97(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_108(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_108(spinlock_t *lock ) ;
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_bh(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_101(spinlock_t *lock ) ;
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_irq(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_110(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_110(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_110(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_110(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_99(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_99(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_99(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_99(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_99(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_99(spinlock_t *lock , unsigned long flags ) ;
extern int ida_pre_get(struct ida * , gfp_t ) ;
extern int ida_get_new_above(struct ida * , int , int * ) ;
extern void ida_remove(struct ida * , int ) ;
__inline static int ida_get_new(struct ida *ida , int *p_id )
{
  int tmp ;
  {
  {
  tmp = ida_get_new_above(ida, 0, p_id);
  }
  return (tmp);
}
}
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
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
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
extern unsigned int ioread32(void * ) ;
extern void iowrite32(u32 , void * ) ;
extern void pci_iounmap(struct pci_dev * , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
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
extern void dev_crit(struct device const * , char const * , ...) ;
extern void dev_warn(struct device const * , char const * , ...) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
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
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_set_dma_max_seg_size(struct pci_dev * , unsigned int ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_130(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_131(struct pci_driver *ldv_func_arg1 ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern int pci_enable_msi_range(struct pci_dev * , int , int ) ;
__inline static int pci_enable_msi_exact(struct pci_dev *dev , int nvec )
{
  int rc ;
  int tmp ;
  {
  {
  tmp = pci_enable_msi_range(dev, nvec, nvec);
  rc = tmp;
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  return (0);
}
}
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
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
extern int dma_set_mask(struct device * , u64 ) ;
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
    warn_slowpath_null("./arch/x86/include/asm/dma-mapping.h", 166);
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
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  dev_set_drvdata(& pdev->dev, data);
  }
  return;
}
}
__inline static struct inode *file_inode(struct file const *f )
{
  {
  return ((struct inode *)f->f_inode);
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
__inline static int ldv_request_irq_111(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_118(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_127(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void msleep(unsigned int ) ;
__inline static void ssleep(unsigned int seconds )
{
  {
  {
  msleep(seconds * 1000U);
  }
  return;
}
}
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
extern void debugfs_remove(struct dentry * ) ;
extern void debugfs_remove_recursive(struct dentry * ) ;
__inline static void set_capacity(struct gendisk *disk , sector_t size )
{
  {
  disk->part0.nr_sects = size;
  return;
}
}
__inline static int CR_INTR_DMA(int N )
{
  unsigned int _CR_INTR_DMA[8U] ;
  {
  _CR_INTR_DMA[0] = 1U;
  _CR_INTR_DMA[1] = 4U;
  _CR_INTR_DMA[2] = 16U;
  _CR_INTR_DMA[3] = 32U;
  _CR_INTR_DMA[4] = 64U;
  _CR_INTR_DMA[5] = 128U;
  _CR_INTR_DMA[6] = 256U;
  _CR_INTR_DMA[7] = 512U;
  return ((int )_CR_INTR_DMA[N]);
}
}
void rsxx_enable_ier(struct rsxx_cardinfo *card , unsigned int intr ) ;
void rsxx_disable_ier(struct rsxx_cardinfo *card , unsigned int intr ) ;
void rsxx_enable_ier_and_isr(struct rsxx_cardinfo *card , unsigned int intr ) ;
void rsxx_disable_ier_and_isr(struct rsxx_cardinfo *card , unsigned int intr ) ;
int rsxx_attach_dev(struct rsxx_cardinfo *card ) ;
void rsxx_detach_dev(struct rsxx_cardinfo *card ) ;
int rsxx_setup_dev(struct rsxx_cardinfo *card ) ;
void rsxx_destroy_dev(struct rsxx_cardinfo *card ) ;
int rsxx_dev_init(void) ;
void rsxx_dev_cleanup(void) ;
int rsxx_dma_setup(struct rsxx_cardinfo *card ) ;
void rsxx_dma_destroy(struct rsxx_cardinfo *card ) ;
int rsxx_dma_init(void) ;
int rsxx_cleanup_dma_queue(struct rsxx_dma_ctrl *ctrl , struct list_head *q , unsigned int done ) ;
int rsxx_dma_cancel(struct rsxx_dma_ctrl *ctrl ) ;
void rsxx_dma_cleanup(void) ;
void rsxx_dma_queue_reset(struct rsxx_cardinfo *card ) ;
int rsxx_dma_configure(struct rsxx_cardinfo *card ) ;
int rsxx_hw_buffers_init(struct pci_dev *dev , struct rsxx_dma_ctrl *ctrl ) ;
int rsxx_eeh_save_issued_dmas(struct rsxx_cardinfo *card ) ;
int rsxx_read_hw_log(struct rsxx_cardinfo *card ) ;
int rsxx_get_card_state(struct rsxx_cardinfo *card , unsigned int *state ) ;
int rsxx_get_card_size8(struct rsxx_cardinfo *card , u64 *size8 ) ;
int rsxx_get_num_targets(struct rsxx_cardinfo *card , unsigned int *n_targets ) ;
int rsxx_issue_card_cmd(struct rsxx_cardinfo *card , u32 cmd ) ;
int rsxx_creg_setup(struct rsxx_cardinfo *card ) ;
void rsxx_creg_destroy(struct rsxx_cardinfo *card ) ;
int rsxx_creg_init(void) ;
void rsxx_creg_cleanup(void) ;
void rsxx_eeh_save_issued_creg(struct rsxx_cardinfo *card ) ;
void rsxx_kick_creg_queue(struct rsxx_cardinfo *card ) ;
static unsigned int force_legacy = 0U;
static unsigned int sync_start = 1U;
static struct ida rsxx_disk_ida = {{0, 0, 0, 0, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "(rsxx_disk_ida).idr.lock",
                                                                   0, 0UL}}}}, 0,
     0}, (struct ida_bitmap *)0};
static spinlock_t rsxx_ida_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "rsxx_ida_lock", 0,
                                                     0UL}}}};
static int rsxx_attr_pci_regs_show(struct seq_file *m , void *p )
{
  struct rsxx_cardinfo *card ;
  unsigned int tmp ;
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
  unsigned int tmp___17 ;
  unsigned int tmp___18 ;
  unsigned int tmp___19 ;
  unsigned int tmp___20 ;
  unsigned int tmp___21 ;
  unsigned int tmp___22 ;
  unsigned int tmp___23 ;
  unsigned int tmp___24 ;
  unsigned int tmp___25 ;
  {
  {
  card = (struct rsxx_cardinfo *)m->private;
  tmp = ioread32(card->regmap);
  seq_printf(m, "HWID\t\t0x%08x\n", tmp);
  tmp___0 = ioread32(card->regmap + 4UL);
  seq_printf(m, "SCRATCH\t\t0x%08x\n", tmp___0);
  tmp___1 = ioread32(card->regmap + 20UL);
  seq_printf(m, "IER\t\t0x%08x\n", tmp___1);
  tmp___2 = ioread32(card->regmap + 24UL);
  seq_printf(m, "IPR\t\t0x%08x\n", tmp___2);
  tmp___3 = ioread32(card->regmap + 64UL);
  seq_printf(m, "CREG_CMD\t\t0x%08x\n", tmp___3);
  tmp___4 = ioread32(card->regmap + 68UL);
  seq_printf(m, "CREG_ADD\t\t0x%08x\n", tmp___4);
  tmp___5 = ioread32(card->regmap + 72UL);
  seq_printf(m, "CREG_CNT\t\t0x%08x\n", tmp___5);
  tmp___6 = ioread32(card->regmap + 76UL);
  seq_printf(m, "CREG_STAT\t0x%08x\n", tmp___6);
  tmp___7 = ioread32(card->regmap + 80UL);
  seq_printf(m, "CREG_DATA0\t0x%08x\n", tmp___7);
  tmp___8 = ioread32(card->regmap + 84UL);
  seq_printf(m, "CREG_DATA1\t0x%08x\n", tmp___8);
  tmp___9 = ioread32(card->regmap + 88UL);
  seq_printf(m, "CREG_DATA2\t0x%08x\n", tmp___9);
  tmp___10 = ioread32(card->regmap + 92UL);
  seq_printf(m, "CREG_DATA3\t0x%08x\n", tmp___10);
  tmp___11 = ioread32(card->regmap + 96UL);
  seq_printf(m, "CREG_DATA4\t0x%08x\n", tmp___11);
  tmp___12 = ioread32(card->regmap + 100UL);
  seq_printf(m, "CREG_DATA5\t0x%08x\n", tmp___12);
  tmp___13 = ioread32(card->regmap + 104UL);
  seq_printf(m, "CREG_DATA6\t0x%08x\n", tmp___13);
  tmp___14 = ioread32(card->regmap + 108UL);
  seq_printf(m, "CREG_DATA7\t0x%08x\n", tmp___14);
  tmp___15 = ioread32(card->regmap + 112UL);
  seq_printf(m, "INTR_COAL\t0x%08x\n", tmp___15);
  tmp___16 = ioread32(card->regmap + 116UL);
  seq_printf(m, "HW_ERROR\t\t0x%08x\n", tmp___16);
  tmp___17 = ioread32(card->regmap + 120UL);
  seq_printf(m, "DEBUG0\t\t0x%08x\n", tmp___17);
  tmp___18 = ioread32(card->regmap + 124UL);
  seq_printf(m, "DEBUG1\t\t0x%08x\n", tmp___18);
  tmp___19 = ioread32(card->regmap + 128UL);
  seq_printf(m, "DEBUG2\t\t0x%08x\n", tmp___19);
  tmp___20 = ioread32(card->regmap + 132UL);
  seq_printf(m, "DEBUG3\t\t0x%08x\n", tmp___20);
  tmp___21 = ioread32(card->regmap + 136UL);
  seq_printf(m, "DEBUG4\t\t0x%08x\n", tmp___21);
  tmp___22 = ioread32(card->regmap + 140UL);
  seq_printf(m, "DEBUG5\t\t0x%08x\n", tmp___22);
  tmp___23 = ioread32(card->regmap + 144UL);
  seq_printf(m, "DEBUG6\t\t0x%08x\n", tmp___23);
  tmp___24 = ioread32(card->regmap + 148UL);
  seq_printf(m, "DEBUG7\t\t0x%08x\n", tmp___24);
  tmp___25 = ioread32(card->regmap + 184UL);
  seq_printf(m, "RECONFIG\t\t0x%08x\n", tmp___25);
  }
  return (0);
}
}
static int rsxx_attr_stats_show(struct seq_file *m , void *p )
{
  struct rsxx_cardinfo *card ;
  int i ;
  int tmp ;
  {
  card = (struct rsxx_cardinfo *)m->private;
  i = 0;
  goto ldv_35327;
  ldv_35326:
  {
  seq_printf(m, "Ctrl %d CRC Errors\t= %d\n", i, (card->ctrl + (unsigned long )i)->stats.crc_errors);
  seq_printf(m, "Ctrl %d Hard Errors\t= %d\n", i, (card->ctrl + (unsigned long )i)->stats.hard_errors);
  seq_printf(m, "Ctrl %d Soft Errors\t= %d\n", i, (card->ctrl + (unsigned long )i)->stats.soft_errors);
  seq_printf(m, "Ctrl %d Writes Issued\t= %d\n", i, (card->ctrl + (unsigned long )i)->stats.writes_issued);
  seq_printf(m, "Ctrl %d Writes Failed\t= %d\n", i, (card->ctrl + (unsigned long )i)->stats.writes_failed);
  seq_printf(m, "Ctrl %d Reads Issued\t= %d\n", i, (card->ctrl + (unsigned long )i)->stats.reads_issued);
  seq_printf(m, "Ctrl %d Reads Failed\t= %d\n", i, (card->ctrl + (unsigned long )i)->stats.reads_failed);
  seq_printf(m, "Ctrl %d Reads Retried\t= %d\n", i, (card->ctrl + (unsigned long )i)->stats.reads_retried);
  seq_printf(m, "Ctrl %d Discards Issued\t= %d\n", i, (card->ctrl + (unsigned long )i)->stats.discards_issued);
  seq_printf(m, "Ctrl %d Discards Failed\t= %d\n", i, (card->ctrl + (unsigned long )i)->stats.discards_failed);
  seq_printf(m, "Ctrl %d DMA SW Errors\t= %d\n", i, (card->ctrl + (unsigned long )i)->stats.dma_sw_err);
  seq_printf(m, "Ctrl %d DMA HW Faults\t= %d\n", i, (card->ctrl + (unsigned long )i)->stats.dma_hw_fault);
  seq_printf(m, "Ctrl %d DMAs Cancelled\t= %d\n", i, (card->ctrl + (unsigned long )i)->stats.dma_cancelled);
  seq_printf(m, "Ctrl %d SW Queue Depth\t= %d\n", i, (card->ctrl + (unsigned long )i)->stats.sw_q_depth);
  tmp = atomic_read((atomic_t const *)(& (card->ctrl + (unsigned long )i)->stats.hw_q_depth));
  seq_printf(m, "Ctrl %d HW Queue Depth\t= %d\n", i, tmp);
  i = i + 1;
  }
  ldv_35327: ;
  if (i < card->n_targets) {
    goto ldv_35326;
  } else {
  }
  return (0);
}
}
static int rsxx_attr_stats_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & rsxx_attr_stats_show, inode->i_private);
  }
  return (tmp);
}
}
static int rsxx_attr_pci_regs_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & rsxx_attr_pci_regs_show, inode->i_private);
  }
  return (tmp);
}
}
static ssize_t rsxx_cram_read(struct file *fp , char *ubuf , size_t cnt , loff_t *ppos )
{
  struct rsxx_cardinfo *card ;
  struct inode *tmp ;
  char *buf ;
  ssize_t st ;
  void *tmp___0 ;
  int tmp___1 ;
  unsigned long tmp___2 ;
  {
  {
  tmp = file_inode((struct file const *)fp);
  card = (struct rsxx_cardinfo *)tmp->i_private;
  tmp___0 = kzalloc(cnt, 208U);
  buf = (char *)tmp___0;
  }
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    return (-12L);
  } else {
  }
  {
  tmp___1 = rsxx_creg_read(card, (unsigned int )*ppos + 2684354560U, (unsigned int )cnt,
                           (void *)buf, 1);
  st = (ssize_t )tmp___1;
  }
  if (st == 0L) {
    {
    tmp___2 = copy_to_user((void *)ubuf, (void const *)buf, cnt);
    st = (ssize_t )tmp___2;
    }
  } else {
  }
  {
  kfree((void const *)buf);
  }
  if (st != 0L) {
    return (st);
  } else {
  }
  *ppos = (loff_t )((unsigned long long )*ppos + (unsigned long long )cnt);
  return ((ssize_t )cnt);
}
}
static ssize_t rsxx_cram_write(struct file *fp , char const *ubuf , size_t cnt ,
                               loff_t *ppos )
{
  struct rsxx_cardinfo *card ;
  struct inode *tmp ;
  char *buf ;
  ssize_t st ;
  void *tmp___0 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = file_inode((struct file const *)fp);
  card = (struct rsxx_cardinfo *)tmp->i_private;
  tmp___0 = kzalloc(cnt, 208U);
  buf = (char *)tmp___0;
  }
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    return (-12L);
  } else {
  }
  {
  tmp___1 = copy_from_user((void *)buf, (void const *)ubuf, cnt);
  st = (ssize_t )tmp___1;
  }
  if (st == 0L) {
    {
    tmp___2 = rsxx_creg_write(card, (unsigned int )*ppos + 2684354560U, (unsigned int )cnt,
                              (void *)buf, 1);
    st = (ssize_t )tmp___2;
    }
  } else {
  }
  {
  kfree((void const *)buf);
  }
  if (st != 0L) {
    return (st);
  } else {
  }
  *ppos = (loff_t )((unsigned long long )*ppos + (unsigned long long )cnt);
  return ((ssize_t )cnt);
}
}
static struct file_operations const debugfs_cram_fops =
     {& __this_module, 0, & rsxx_cram_read, & rsxx_cram_write, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct file_operations const debugfs_stats_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & rsxx_attr_stats_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct file_operations const debugfs_pci_regs_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & rsxx_attr_pci_regs_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void rsxx_debugfs_dev_new(struct rsxx_cardinfo *card )
{
  struct dentry *debugfs_stats ;
  struct dentry *debugfs_pci_regs ;
  struct dentry *debugfs_cram ;
  bool tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  {
  {
  card->debugfs_dir = debugfs_create_dir((char const *)(& (card->gendisk)->disk_name),
                                         (struct dentry *)0);
  tmp = IS_ERR_OR_NULL((void const *)card->debugfs_dir);
  }
  if ((int )tmp) {
    goto failed_debugfs_dir;
  } else {
  }
  {
  debugfs_stats = debugfs_create_file("stats", 292, card->debugfs_dir, (void *)card,
                                      & debugfs_stats_fops);
  tmp___0 = IS_ERR_OR_NULL((void const *)debugfs_stats);
  }
  if ((int )tmp___0) {
    goto failed_debugfs_stats;
  } else {
  }
  {
  debugfs_pci_regs = debugfs_create_file("pci_regs", 292, card->debugfs_dir, (void *)card,
                                         & debugfs_pci_regs_fops);
  tmp___1 = IS_ERR_OR_NULL((void const *)debugfs_pci_regs);
  }
  if ((int )tmp___1) {
    goto failed_debugfs_pci_regs;
  } else {
  }
  {
  debugfs_cram = debugfs_create_file("cram", 420, card->debugfs_dir, (void *)card,
                                     & debugfs_cram_fops);
  tmp___2 = IS_ERR_OR_NULL((void const *)debugfs_cram);
  }
  if ((int )tmp___2) {
    goto failed_debugfs_cram;
  } else {
  }
  return;
  failed_debugfs_cram:
  {
  debugfs_remove(debugfs_pci_regs);
  }
  failed_debugfs_pci_regs:
  {
  debugfs_remove(debugfs_stats);
  }
  failed_debugfs_stats:
  {
  debugfs_remove(card->debugfs_dir);
  }
  failed_debugfs_dir:
  card->debugfs_dir = (struct dentry *)0;
  return;
}
}
static void rsxx_mask_interrupts(struct rsxx_cardinfo *card )
{
  {
  card->isr_mask = 0U;
  card->ier_mask = 0U;
  return;
}
}
static void __enable_intr(unsigned int *mask , unsigned int intr )
{
  {
  *mask = *mask | intr;
  return;
}
}
static void __disable_intr(unsigned int *mask , unsigned int intr )
{
  {
  *mask = *mask & ~ intr;
  return;
}
}
void rsxx_enable_ier(struct rsxx_cardinfo *card , unsigned int intr )
{
  long tmp ;
  long tmp___0 ;
  {
  {
  tmp = ldv__builtin_expect(card->halt != 0U, 0L);
  }
  if (tmp != 0L) {
    return;
  } else {
    {
    tmp___0 = ldv__builtin_expect(card->eeh_state != 0U, 0L);
    }
    if (tmp___0 != 0L) {
      return;
    } else {
    }
  }
  {
  __enable_intr(& card->ier_mask, intr);
  iowrite32(card->ier_mask, card->regmap + 20UL);
  }
  return;
}
}
void rsxx_disable_ier(struct rsxx_cardinfo *card , unsigned int intr )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect(card->eeh_state != 0U, 0L);
  }
  if (tmp != 0L) {
    return;
  } else {
  }
  {
  __disable_intr(& card->ier_mask, intr);
  iowrite32(card->ier_mask, card->regmap + 20UL);
  }
  return;
}
}
void rsxx_enable_ier_and_isr(struct rsxx_cardinfo *card , unsigned int intr )
{
  long tmp ;
  long tmp___0 ;
  {
  {
  tmp = ldv__builtin_expect(card->halt != 0U, 0L);
  }
  if (tmp != 0L) {
    return;
  } else {
    {
    tmp___0 = ldv__builtin_expect(card->eeh_state != 0U, 0L);
    }
    if (tmp___0 != 0L) {
      return;
    } else {
    }
  }
  {
  __enable_intr(& card->isr_mask, intr);
  __enable_intr(& card->ier_mask, intr);
  iowrite32(card->ier_mask, card->regmap + 20UL);
  }
  return;
}
}
void rsxx_disable_ier_and_isr(struct rsxx_cardinfo *card , unsigned int intr )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect(card->eeh_state != 0U, 0L);
  }
  if (tmp != 0L) {
    return;
  } else {
  }
  {
  __disable_intr(& card->isr_mask, intr);
  __disable_intr(& card->ier_mask, intr);
  iowrite32(card->ier_mask, card->regmap + 20UL);
  }
  return;
}
}
static irqreturn_t rsxx_isr(int irq , void *pdata )
{
  struct rsxx_cardinfo *card ;
  unsigned int isr ;
  int handled ;
  int reread_isr ;
  int i ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  card = (struct rsxx_cardinfo *)pdata;
  handled = 0;
  ldv_spin_lock_96(& card->irq_lock);
  }
  ldv_35408:
  {
  reread_isr = 0;
  tmp = ldv__builtin_expect(card->eeh_state != 0U, 0L);
  }
  if (tmp != 0L) {
    goto ldv_35404;
  } else {
  }
  {
  isr = ioread32(card->regmap + 16UL);
  }
  if (isr == 4294967295U) {
    {
    _dev_info((struct device const *)(& (card->dev)->dev), "ISR = 0xFFFFFFFF, retrying later\n");
    }
    goto ldv_35404;
  } else {
  }
  isr = isr & card->isr_mask;
  if (isr == 0U) {
    goto ldv_35404;
  } else {
  }
  i = 0;
  goto ldv_35406;
  ldv_35405:
  {
  tmp___2 = CR_INTR_DMA(i);
  }
  if ((isr & (unsigned int )tmp___2) != 0U) {
    {
    tmp___1 = CR_INTR_DMA(i);
    }
    if ((card->ier_mask & (unsigned int )tmp___1) != 0U) {
      {
      tmp___0 = CR_INTR_DMA(i);
      rsxx_disable_ier(card, (unsigned int )tmp___0);
      reread_isr = 1;
      }
    } else {
    }
    {
    queue_work((card->ctrl + (unsigned long )i)->done_wq, & (card->ctrl + (unsigned long )i)->dma_done_work);
    handled = handled + 1;
    }
  } else {
  }
  i = i + 1;
  ldv_35406: ;
  if (i < card->n_targets) {
    goto ldv_35405;
  } else {
  }
  if ((isr & 2U) != 0U) {
    {
    queue_work(card->creg_ctrl.creg_wq, & card->creg_ctrl.done_work);
    handled = handled + 1;
    }
  } else {
  }
  if ((isr & 8U) != 0U) {
    {
    queue_work(card->event_wq, & card->event_work);
    rsxx_disable_ier_and_isr(card, 8U);
    handled = handled + 1;
    }
  } else {
  }
  if (reread_isr != 0) {
    goto ldv_35408;
  } else {
  }
  ldv_35404:
  {
  ldv_spin_unlock_97(& card->irq_lock);
  }
  return (handled != 0);
}
}
static char const * const rsxx_card_state_to_str(unsigned int state )
{
  char const *state_strings[10U] ;
  int tmp ;
  {
  {
  state_strings[0] = "Unknown";
  state_strings[1] = "Shutdown";
  state_strings[2] = "Starting";
  state_strings[3] = "Formatting";
  state_strings[4] = "Uninitialized";
  state_strings[5] = "Good";
  state_strings[6] = "Shutting Down";
  state_strings[7] = "Fault";
  state_strings[8] = "Read Only Fault";
  state_strings[9] = "dStroying";
  tmp = ffs((int )state);
  }
  return (state_strings[tmp]);
}
}
static void card_state_change(struct rsxx_cardinfo *card , unsigned int new_state )
{
  int st ;
  char const *tmp ;
  char const *tmp___0 ;
  {
  {
  tmp = (char const *)rsxx_card_state_to_str(new_state);
  tmp___0 = (char const *)rsxx_card_state_to_str(card->state);
  _dev_info((struct device const *)(& (card->dev)->dev), "card state change detected.(%s -> %s)\n",
            tmp___0, tmp);
  card->state = new_state;
  }
  if (card->config_valid == 0) {
    return;
  } else {
  }
  {
  if (new_state == 128U) {
    goto case_128;
  } else {
  }
  if (new_state == 16U) {
    goto case_16;
  } else {
  }
  if (new_state == 64U) {
    goto case_64;
  } else {
  }
  if (new_state == 1U) {
    goto case_1;
  } else {
  }
  if (new_state == 2U) {
    goto case_2;
  } else {
  }
  if (new_state == 4U) {
    goto case_4;
  } else {
  }
  if (new_state == 8U) {
    goto case_8;
  } else {
  }
  if (new_state == 32U) {
    goto case_32;
  } else {
  }
  if (new_state == 256U) {
    goto case_256;
  } else {
  }
  goto switch_break;
  case_128:
  {
  dev_crit((struct device const *)(& (card->dev)->dev), "Hardware has entered read-only mode!\n");
  }
  case_16:
  {
  st = rsxx_get_card_size8(card, & card->size8);
  }
  if (st != 0) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Failed attaching DMA devices\n");
    }
  } else {
  }
  if (card->config_valid != 0) {
    {
    set_capacity(card->gendisk, (sector_t )(card->size8 >> 9));
    }
  } else {
  }
  goto ldv_35420;
  case_64:
  {
  dev_crit((struct device const *)(& (card->dev)->dev), "Hardware Fault reported!\n");
  }
  case_1: ;
  case_2: ;
  case_4: ;
  case_8: ;
  case_32: ;
  case_256:
  {
  set_capacity(card->gendisk, 0UL);
  }
  goto ldv_35420;
  switch_break: ;
  }
  ldv_35420: ;
  return;
}
}
static void card_event_handler(struct work_struct *work )
{
  struct rsxx_cardinfo *card ;
  unsigned int state ;
  unsigned long flags ;
  int st ;
  struct work_struct const *__mptr ;
  long tmp ;
  {
  {
  __mptr = (struct work_struct const *)work;
  card = (struct rsxx_cardinfo *)__mptr + 0xfffffffffffffcc8UL;
  tmp = ldv__builtin_expect(card->halt != 0U, 0L);
  }
  if (tmp != 0L) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_98(& card->irq_lock);
  rsxx_enable_ier_and_isr(card, 8U);
  ldv_spin_unlock_irqrestore_99(& card->irq_lock, flags);
  st = rsxx_get_card_state(card, & state);
  }
  if (st != 0) {
    {
    _dev_info((struct device const *)(& (card->dev)->dev), "Failed reading state after event.\n");
    }
    return;
  } else {
  }
  if (card->state != state) {
    {
    card_state_change(card, state);
    }
  } else {
  }
  if ((card->creg_ctrl.creg_stats.stat & 8U) != 0U) {
    {
    rsxx_read_hw_log(card);
    }
  } else {
  }
  return;
}
}
static int card_shutdown(struct rsxx_cardinfo *card )
{
  unsigned int state ;
  long start ;
  int timeout ;
  unsigned long tmp ;
  int st ;
  {
  {
  tmp = msecs_to_jiffies(120000U);
  timeout = (int const )tmp;
  start = (long )jiffies;
  }
  ldv_35444:
  {
  st = rsxx_get_card_state(card, & state);
  }
  if (st != 0) {
    return (st);
  } else {
  }
  if (state == 2U && (unsigned long )jiffies - (unsigned long )start < (unsigned long )timeout) {
    goto ldv_35444;
  } else {
  }
  if (state == 2U) {
    return (-110);
  } else {
  }
  if (state != 32U && state != 1U) {
    {
    st = rsxx_issue_card_cmd(card, 2U);
    }
    if (st != 0) {
      return (st);
    } else {
    }
  } else {
  }
  start = (long )jiffies;
  ldv_35446:
  {
  st = rsxx_get_card_state(card, & state);
  }
  if (st != 0) {
    return (st);
  } else {
  }
  if (state != 1U && (unsigned long )jiffies - (unsigned long )start < (unsigned long )timeout) {
    goto ldv_35446;
  } else {
  }
  if (state != 1U) {
    return (-110);
  } else {
  }
  return (0);
}
}
static int rsxx_eeh_frozen(struct pci_dev *dev )
{
  struct rsxx_cardinfo *card ;
  void *tmp ;
  int i ;
  int st ;
  {
  {
  tmp = pci_get_drvdata(dev);
  card = (struct rsxx_cardinfo *)tmp;
  dev_warn((struct device const *)(& dev->dev), "IBM Flash Adapter PCI: preparing for slot reset.\n");
  card->eeh_state = 1U;
  rsxx_mask_interrupts(card);
  __asm__ volatile ("sfence": : : "memory");
  pci_disable_device(dev);
  st = rsxx_eeh_save_issued_dmas(card);
  }
  if (st != 0) {
    return (st);
  } else {
  }
  {
  rsxx_eeh_save_issued_creg(card);
  i = 0;
  }
  goto ldv_35455;
  ldv_35454: ;
  if ((unsigned long )(card->ctrl + (unsigned long )i)->status.buf != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(card->dev, 4096UL, (card->ctrl + (unsigned long )i)->status.buf,
                        (card->ctrl + (unsigned long )i)->status.dma_addr);
    }
  } else {
  }
  if ((unsigned long )(card->ctrl + (unsigned long )i)->cmd.buf != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(card->dev, 4096UL, (card->ctrl + (unsigned long )i)->cmd.buf,
                        (card->ctrl + (unsigned long )i)->cmd.dma_addr);
    }
  } else {
  }
  i = i + 1;
  ldv_35455: ;
  if (i < card->n_targets) {
    goto ldv_35454;
  } else {
  }
  return (0);
}
}
static void rsxx_eeh_failure(struct pci_dev *dev )
{
  struct rsxx_cardinfo *card ;
  void *tmp ;
  int i ;
  int cnt ;
  int tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(dev);
  card = (struct rsxx_cardinfo *)tmp;
  cnt = 0;
  dev_err((struct device const *)(& dev->dev), "IBM Flash Adapter PCI: disabling failed card.\n");
  card->eeh_state = 1U;
  card->halt = 1U;
  i = 0;
  }
  goto ldv_35464;
  ldv_35463:
  {
  ldv_spin_lock_bh_100(& (card->ctrl + (unsigned long )i)->queue_lock);
  cnt = rsxx_cleanup_dma_queue(card->ctrl + (unsigned long )i, & (card->ctrl + (unsigned long )i)->queue,
                               1U);
  ldv_spin_unlock_bh_101(& (card->ctrl + (unsigned long )i)->queue_lock);
  tmp___0 = rsxx_dma_cancel(card->ctrl + (unsigned long )i);
  cnt = cnt + tmp___0;
  }
  if (cnt != 0) {
    {
    _dev_info((struct device const *)(& (card->dev)->dev), "Freed %d queued DMAs on channel %d\n",
              cnt, (card->ctrl + (unsigned long )i)->id);
    }
  } else {
  }
  i = i + 1;
  ldv_35464: ;
  if (i < card->n_targets) {
    goto ldv_35463;
  } else {
  }
  return;
}
}
static int rsxx_eeh_fifo_flush_poll(struct rsxx_cardinfo *card )
{
  unsigned int status ;
  int iter ;
  int tmp ;
  {
  iter = 0;
  goto ldv_35471;
  ldv_35472:
  {
  status = ioread32(card->regmap + 184UL);
  }
  if ((status & 2U) != 0U) {
    {
    ssleep(1U);
    }
    goto ldv_35471;
  } else {
  }
  if ((status & 4U) != 0U) {
    {
    dev_warn((struct device const *)(& (card->dev)->dev), "HW: flash controller timeout\n");
    }
  } else {
  }
  return (0);
  ldv_35471:
  tmp = iter;
  iter = iter + 1;
  if (tmp <= 9) {
    goto ldv_35472;
  } else {
  }
  return (-1);
}
}
static pci_ers_result_t rsxx_error_detected(struct pci_dev *dev , enum pci_channel_state error )
{
  int st ;
  {
  if ((unsigned int )dev->revision <= 2U) {
    return (1U);
  } else {
  }
  if ((unsigned int )error == 3U) {
    {
    rsxx_eeh_failure(dev);
    }
    return (4U);
  } else {
  }
  {
  st = rsxx_eeh_frozen(dev);
  }
  if (st != 0) {
    {
    dev_err((struct device const *)(& dev->dev), "Slot reset setup failed\n");
    rsxx_eeh_failure(dev);
    }
    return (4U);
  } else {
  }
  return (3U);
}
}
static pci_ers_result_t rsxx_slot_reset(struct pci_dev *dev )
{
  struct rsxx_cardinfo *card ;
  void *tmp ;
  unsigned long flags ;
  int i ;
  int st ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(dev);
  card = (struct rsxx_cardinfo *)tmp;
  dev_warn((struct device const *)(& dev->dev), "IBM Flash Adapter PCI: recovering from slot reset.\n");
  st = pci_enable_device(dev);
  }
  if (st != 0) {
    goto failed_hw_setup;
  } else {
  }
  {
  pci_set_master(dev);
  st = rsxx_eeh_fifo_flush_poll(card);
  }
  if (st != 0) {
    goto failed_hw_setup;
  } else {
  }
  {
  rsxx_dma_queue_reset(card);
  i = 0;
  }
  goto ldv_35489;
  ldv_35488:
  {
  st = rsxx_hw_buffers_init(dev, card->ctrl + (unsigned long )i);
  }
  if (st != 0) {
    goto failed_hw_buffers_init;
  } else {
  }
  i = i + 1;
  ldv_35489: ;
  if (i < card->n_targets) {
    goto ldv_35488;
  } else {
  }
  if (card->config_valid != 0) {
    {
    rsxx_dma_configure(card);
    }
  } else {
  }
  {
  tmp___0 = ioread32(card->regmap + 16UL);
  st = (int )tmp___0;
  card->eeh_state = 0U;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_102(& card->irq_lock);
  }
  if ((card->n_targets & 8) != 0) {
    {
    rsxx_enable_ier_and_isr(card, 1023U);
    }
  } else {
    {
    rsxx_enable_ier_and_isr(card, 63U);
    }
  }
  {
  ldv_spin_unlock_irqrestore_99(& card->irq_lock, flags);
  rsxx_kick_creg_queue(card);
  i = 0;
  }
  goto ldv_35493;
  ldv_35492:
  {
  ldv_spin_lock_104(& (card->ctrl + (unsigned long )i)->queue_lock);
  tmp___1 = list_empty((struct list_head const *)(& (card->ctrl + (unsigned long )i)->queue));
  }
  if (tmp___1 != 0) {
    {
    ldv_spin_unlock_105(& (card->ctrl + (unsigned long )i)->queue_lock);
    }
    goto ldv_35491;
  } else {
  }
  {
  ldv_spin_unlock_105(& (card->ctrl + (unsigned long )i)->queue_lock);
  queue_work((card->ctrl + (unsigned long )i)->issue_wq, & (card->ctrl + (unsigned long )i)->issue_dma_work);
  }
  ldv_35491:
  i = i + 1;
  ldv_35493: ;
  if (i < card->n_targets) {
    goto ldv_35492;
  } else {
  }
  {
  _dev_info((struct device const *)(& dev->dev), "IBM Flash Adapter PCI: recovery complete.\n");
  }
  return (5U);
  failed_hw_buffers_init:
  i = 0;
  goto ldv_35496;
  ldv_35495: ;
  if ((unsigned long )(card->ctrl + (unsigned long )i)->status.buf != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(card->dev, 4096UL, (card->ctrl + (unsigned long )i)->status.buf,
                        (card->ctrl + (unsigned long )i)->status.dma_addr);
    }
  } else {
  }
  if ((unsigned long )(card->ctrl + (unsigned long )i)->cmd.buf != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(card->dev, 4096UL, (card->ctrl + (unsigned long )i)->cmd.buf,
                        (card->ctrl + (unsigned long )i)->cmd.dma_addr);
    }
  } else {
  }
  i = i + 1;
  ldv_35496: ;
  if (i < card->n_targets) {
    goto ldv_35495;
  } else {
  }
  failed_hw_setup:
  {
  rsxx_eeh_failure(dev);
  }
  return (4U);
}
}
static int rsxx_compatibility_check(struct rsxx_cardinfo *card )
{
  unsigned char pci_rev ;
  {
  {
  pci_read_config_byte((struct pci_dev const *)card->dev, 8, & pci_rev);
  }
  if ((unsigned int )pci_rev > 4U) {
    return (-1);
  } else {
  }
  return (0);
}
}
static int rsxx_pci_probe(struct pci_dev *dev , struct pci_device_id const *id )
{
  struct rsxx_cardinfo *card ;
  int st ;
  unsigned int sync_timeout ;
  void *tmp ;
  int tmp___0 ;
  struct lock_class_key __key ;
  void *tmp___1 ;
  struct lock_class_key __key___0 ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___2 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_0 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  {
  {
  _dev_info((struct device const *)(& dev->dev), "PCI-Flash SSD discovered\n");
  tmp = kzalloc(1184UL, 208U);
  card = (struct rsxx_cardinfo *)tmp;
  }
  if ((unsigned long )card == (unsigned long )((struct rsxx_cardinfo *)0)) {
    return (-12);
  } else {
  }
  {
  card->dev = dev;
  pci_set_drvdata(dev, (void *)card);
  }
  ldv_35510:
  {
  tmp___0 = ida_pre_get(& rsxx_disk_ida, 208U);
  }
  if (tmp___0 == 0) {
    st = -12;
    goto failed_ida_get;
  } else {
  }
  {
  ldv_spin_lock_107(& rsxx_ida_lock);
  st = ida_get_new(& rsxx_disk_ida, & card->disk_id);
  ldv_spin_unlock_108(& rsxx_ida_lock);
  }
  if (st == -11) {
    goto ldv_35510;
  } else {
  }
  if (st != 0) {
    goto failed_ida_get;
  } else {
  }
  {
  st = pci_enable_device(dev);
  }
  if (st != 0) {
    goto failed_enable;
  } else {
  }
  {
  pci_set_master(dev);
  pci_set_dma_max_seg_size(dev, 4096U);
  st = pci_set_dma_mask(dev, 0xffffffffffffffffULL);
  }
  if (st != 0) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "No usable DMA configuration,aborting\n");
    }
    goto failed_dma_mask;
  } else {
  }
  {
  st = pci_request_regions(dev, "rsxx");
  }
  if (st != 0) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Failed to request memory region\n");
    }
    goto failed_request_regions;
  } else {
  }
  if ((dev->resource[0].start == 0ULL && dev->resource[0].end == dev->resource[0].start) || dev->resource[0].end - dev->resource[0].start == 0xffffffffffffffffULL) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "BAR0 has length 0!\n");
    st = -12;
    }
    goto failed_iomap;
  } else {
  }
  {
  card->regmap = pci_iomap(dev, 0, 0UL);
  }
  if ((unsigned long )card->regmap == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Failed to map BAR0\n");
    st = -12;
    }
    goto failed_iomap;
  } else {
  }
  {
  spinlock_check(& card->irq_lock);
  __raw_spin_lock_init(& card->irq_lock.__annonCompField18.rlock, "&(&card->irq_lock)->rlock",
                       & __key);
  card->halt = 0U;
  card->eeh_state = 0U;
  ldv_spin_lock_irq_109(& card->irq_lock);
  rsxx_disable_ier_and_isr(card, 4294967295U);
  ldv_spin_unlock_irq_110(& card->irq_lock);
  }
  if (force_legacy == 0U) {
    {
    st = pci_enable_msi_exact(dev, 1);
    }
    if (st != 0) {
      {
      dev_warn((struct device const *)(& (card->dev)->dev), "Failed to enable MSI\n");
      }
    } else {
    }
  } else {
  }
  {
  st = ldv_request_irq_111(dev->irq, & rsxx_isr, 128UL, "rsxx", (void *)card);
  }
  if (st != 0) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Failed requesting IRQ%d\n",
            dev->irq);
    }
    goto failed_irq;
  } else {
  }
  {
  st = rsxx_creg_setup(card);
  }
  if (st != 0) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Failed to setup creg interface.\n");
    }
    goto failed_creg_setup;
  } else {
  }
  {
  ldv_spin_lock_irq_109(& card->irq_lock);
  rsxx_enable_ier_and_isr(card, 2U);
  ldv_spin_unlock_irq_110(& card->irq_lock);
  st = rsxx_compatibility_check(card);
  }
  if (st != 0) {
    {
    dev_warn((struct device const *)(& (card->dev)->dev), "Incompatible driver detected. Please update the driver.\n");
    st = -22;
    }
    goto failed_compatiblity_check;
  } else {
  }
  {
  st = rsxx_load_config(card);
  }
  if (st != 0) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Failed loading card config\n");
    }
  } else {
  }
  {
  st = rsxx_get_num_targets(card, (unsigned int *)(& card->n_targets));
  }
  if (st != 0) {
    {
    _dev_info((struct device const *)(& (card->dev)->dev), "Failed reading the number of DMA targets\n");
    }
  } else {
  }
  {
  tmp___1 = kzalloc((unsigned long )card->n_targets * 712UL, 208U);
  card->ctrl = (struct rsxx_dma_ctrl *)tmp___1;
  }
  if ((unsigned long )card->ctrl == (unsigned long )((struct rsxx_dma_ctrl *)0)) {
    st = -12;
    goto failed_dma_setup;
  } else {
  }
  {
  st = rsxx_dma_setup(card);
  }
  if (st != 0) {
    {
    _dev_info((struct device const *)(& (card->dev)->dev), "Failed to setup DMA engine\n");
    }
    goto failed_dma_setup;
  } else {
  }
  {
  __lock_name = "\"%s\"\"rsxx\"\"_event\"";
  tmp___2 = __alloc_workqueue_key("%s", 131082U, 1, & __key___0, __lock_name, (char *)"rsxx_event");
  card->event_wq = tmp___2;
  }
  if ((unsigned long )card->event_wq == (unsigned long )((struct workqueue_struct *)0)) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Failed card event setup.\n");
    }
    goto failed_event_handler;
  } else {
  }
  {
  __init_work(& card->event_work, 0);
  __constr_expr_0.counter = 137438953408L;
  card->event_work.data = __constr_expr_0;
  lockdep_init_map(& card->event_work.lockdep_map, "(&card->event_work)", & __key___1,
                   0);
  INIT_LIST_HEAD(& card->event_work.entry);
  card->event_work.func = & card_event_handler;
  st = rsxx_setup_dev(card);
  }
  if (st != 0) {
    goto failed_create_dev;
  } else {
  }
  {
  rsxx_get_card_state(card, & card->state);
  tmp___3 = (char const *)rsxx_card_state_to_str(card->state);
  _dev_info((struct device const *)(& (card->dev)->dev), "card state: %s\n", tmp___3);
  ldv_spin_lock_irq_109(& card->irq_lock);
  rsxx_enable_ier_and_isr(card, 8U);
  ldv_spin_unlock_irq_110(& card->irq_lock);
  }
  if (card->state == 1U) {
    {
    st = rsxx_issue_card_cmd(card, 1U);
    }
    if (st != 0) {
      {
      dev_crit((struct device const *)(& (card->dev)->dev), "Failed issuing card startup\n");
      }
    } else {
    }
    if (sync_start != 0U) {
      {
      sync_timeout = 600U;
      _dev_info((struct device const *)(& (card->dev)->dev), "Waiting for card to startup\n");
      }
      ldv_35528:
      {
      ssleep(1U);
      sync_timeout = sync_timeout - 1U;
      rsxx_get_card_state(card, & card->state);
      }
      if (sync_timeout != 0U && card->state == 2U) {
        goto ldv_35528;
      } else {
      }
      if (card->state == 2U) {
        {
        dev_warn((struct device const *)(& (card->dev)->dev), "Card startup timed out\n");
        card->size8 = 0ULL;
        }
      } else {
        {
        tmp___4 = (char const *)rsxx_card_state_to_str(card->state);
        _dev_info((struct device const *)(& (card->dev)->dev), "card state: %s\n",
                  tmp___4);
        st = rsxx_get_card_size8(card, & card->size8);
        }
        if (st != 0) {
          card->size8 = 0ULL;
        } else {
        }
      }
    } else {
    }
  } else
  if (card->state == 16U || card->state == 128U) {
    {
    st = rsxx_get_card_size8(card, & card->size8);
    }
    if (st != 0) {
      card->size8 = 0ULL;
    } else {
    }
  } else {
  }
  {
  rsxx_attach_dev(card);
  rsxx_debugfs_dev_new(card);
  }
  return (0);
  failed_create_dev:
  {
  destroy_workqueue(card->event_wq);
  card->event_wq = (struct workqueue_struct *)0;
  }
  failed_event_handler:
  {
  rsxx_dma_destroy(card);
  }
  failed_dma_setup: ;
  failed_compatiblity_check:
  {
  destroy_workqueue(card->creg_ctrl.creg_wq);
  card->creg_ctrl.creg_wq = (struct workqueue_struct *)0;
  }
  failed_creg_setup:
  {
  ldv_spin_lock_irq_109(& card->irq_lock);
  rsxx_disable_ier_and_isr(card, 4294967295U);
  ldv_spin_unlock_irq_110(& card->irq_lock);
  ldv_free_irq_118(dev->irq, (void *)card);
  }
  if (force_legacy == 0U) {
    {
    pci_disable_msi(dev);
    }
  } else {
  }
  failed_irq:
  {
  pci_iounmap(dev, card->regmap);
  }
  failed_iomap:
  {
  pci_release_regions(dev);
  }
  failed_request_regions: ;
  failed_dma_mask:
  {
  pci_disable_device(dev);
  }
  failed_enable:
  {
  ldv_spin_lock_107(& rsxx_ida_lock);
  ida_remove(& rsxx_disk_ida, card->disk_id);
  ldv_spin_unlock_108(& rsxx_ida_lock);
  }
  failed_ida_get:
  {
  kfree((void const *)card);
  }
  return (st);
}
}
static void rsxx_pci_remove(struct pci_dev *dev )
{
  struct rsxx_cardinfo *card ;
  void *tmp ;
  unsigned long flags ;
  int st ;
  int i ;
  int tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(dev);
  card = (struct rsxx_cardinfo *)tmp;
  }
  if ((unsigned long )card == (unsigned long )((struct rsxx_cardinfo *)0)) {
    return;
  } else {
  }
  {
  _dev_info((struct device const *)(& (card->dev)->dev), "Removing PCI-Flash SSD.\n");
  rsxx_detach_dev(card);
  i = 0;
  }
  goto ldv_35538;
  ldv_35537:
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_121(& card->irq_lock);
  tmp___0 = CR_INTR_DMA(i);
  rsxx_disable_ier_and_isr(card, (unsigned int )tmp___0);
  ldv_spin_unlock_irqrestore_99(& card->irq_lock, flags);
  i = i + 1;
  }
  ldv_35538: ;
  if (i < card->n_targets) {
    goto ldv_35537;
  } else {
  }
  {
  st = card_shutdown(card);
  }
  if (st != 0) {
    {
    dev_crit((struct device const *)(& (card->dev)->dev), "Shutdown failed!\n");
    }
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_123(& card->irq_lock);
  rsxx_disable_ier_and_isr(card, 8U);
  ldv_spin_unlock_irqrestore_99(& card->irq_lock, flags);
  cancel_work_sync(& card->event_work);
  rsxx_destroy_dev(card);
  rsxx_dma_destroy(card);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_125(& card->irq_lock);
  rsxx_disable_ier_and_isr(card, 4294967295U);
  ldv_spin_unlock_irqrestore_99(& card->irq_lock, flags);
  card->halt = 1U;
  debugfs_remove_recursive(card->debugfs_dir);
  ldv_free_irq_127(dev->irq, (void *)card);
  }
  if (force_legacy == 0U) {
    {
    pci_disable_msi(dev);
    }
  } else {
  }
  {
  rsxx_creg_destroy(card);
  pci_iounmap(dev, card->regmap);
  pci_disable_device(dev);
  pci_release_regions(dev);
  kfree((void const *)card);
  }
  return;
}
}
static int rsxx_pci_suspend(struct pci_dev *dev , pm_message_t state )
{
  {
  return (-38);
}
}
static void rsxx_pci_shutdown(struct pci_dev *dev )
{
  struct rsxx_cardinfo *card ;
  void *tmp ;
  unsigned long flags ;
  int i ;
  int tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(dev);
  card = (struct rsxx_cardinfo *)tmp;
  }
  if ((unsigned long )card == (unsigned long )((struct rsxx_cardinfo *)0)) {
    return;
  } else {
  }
  {
  _dev_info((struct device const *)(& (card->dev)->dev), "Shutting down PCI-Flash SSD.\n");
  rsxx_detach_dev(card);
  i = 0;
  }
  goto ldv_35551;
  ldv_35550:
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_128(& card->irq_lock);
  tmp___0 = CR_INTR_DMA(i);
  rsxx_disable_ier_and_isr(card, (unsigned int )tmp___0);
  ldv_spin_unlock_irqrestore_99(& card->irq_lock, flags);
  i = i + 1;
  }
  ldv_35551: ;
  if (i < card->n_targets) {
    goto ldv_35550;
  } else {
  }
  {
  card_shutdown(card);
  }
  return;
}
}
static struct pci_error_handlers const rsxx_err_handler = {& rsxx_error_detected, 0, 0, & rsxx_slot_reset, 0, 0};
static struct pci_device_id const rsxx_pci_ids[3U] = { {4116U, 1193U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4116U, 1194U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__rsxx_pci_ids_device_table[3U] ;
static struct pci_driver rsxx_pci_driver =
     {{0, 0}, "rsxx", (struct pci_device_id const *)(& rsxx_pci_ids), & rsxx_pci_probe,
    & rsxx_pci_remove, & rsxx_pci_suspend, 0, 0, 0, & rsxx_pci_shutdown, 0, & rsxx_err_handler,
    {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {{{{{{0U}}, 0U, 0U, 0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                           {0, 0}}};
static int rsxx_core_init(void)
{
  int st ;
  int tmp ;
  {
  {
  st = rsxx_dev_init();
  }
  if (st != 0) {
    return (st);
  } else {
  }
  {
  st = rsxx_dma_init();
  }
  if (st != 0) {
    goto dma_init_failed;
  } else {
  }
  {
  st = rsxx_creg_init();
  }
  if (st != 0) {
    goto creg_init_failed;
  } else {
  }
  {
  tmp = ldv___pci_register_driver_130(& rsxx_pci_driver, & __this_module, "rsxx");
  }
  return (tmp);
  creg_init_failed:
  {
  rsxx_dma_cleanup();
  }
  dma_init_failed:
  {
  rsxx_dev_cleanup();
  }
  return (st);
}
}
static void rsxx_core_cleanup(void)
{
  {
  {
  ldv_pci_unregister_driver_131(& rsxx_pci_driver);
  rsxx_creg_cleanup();
  rsxx_dma_cleanup();
  rsxx_dev_cleanup();
  }
  return;
}
}
void ldv_EMGentry_exit_rsxx_core_cleanup_12_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_rsxx_core_init_12_9(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
void ldv_dispatch_deregister_10_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_file_operations_instance_5_12_4(void) ;
void ldv_dispatch_irq_deregister_7_1(int arg0 ) ;
void ldv_dispatch_irq_register_9_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_11_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_file_operations_instance_5_12_5(void) ;
void ldv_entry_EMGentry_12(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_1(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_2(void *arg0 ) ;
void ldv_file_operations_instance_callback_0_20(int (*arg0)(struct block_device * ,
                                                            unsigned int , unsigned int ,
                                                            unsigned long ) , struct block_device *arg1 ,
                                                unsigned int arg2 , unsigned int arg3 ,
                                                unsigned long arg4 ) ;
void ldv_file_operations_instance_callback_0_23(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_0_26(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_0_5(int (*arg0)(struct block_device * ,
                                                           struct hd_geometry * ) ,
                                               struct block_device *arg1 , struct hd_geometry *arg2 ) ;
void ldv_file_operations_instance_callback_1_20(int (*arg0)(struct block_device * ,
                                                            unsigned int , unsigned int ,
                                                            unsigned long ) , struct block_device *arg1 ,
                                                unsigned int arg2 , unsigned int arg3 ,
                                                unsigned long arg4 ) ;
void ldv_file_operations_instance_callback_1_23(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_1_26(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_1_5(int (*arg0)(struct block_device * ,
                                                           struct hd_geometry * ) ,
                                               struct block_device *arg1 , struct hd_geometry *arg2 ) ;
void ldv_file_operations_instance_callback_2_20(int (*arg0)(struct block_device * ,
                                                            unsigned int , unsigned int ,
                                                            unsigned long ) , struct block_device *arg1 ,
                                                unsigned int arg2 , unsigned int arg3 ,
                                                unsigned long arg4 ) ;
void ldv_file_operations_instance_callback_2_23(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_2_26(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_2_5(int (*arg0)(struct block_device * ,
                                                           struct hd_geometry * ) ,
                                               struct block_device *arg1 , struct hd_geometry *arg2 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_2_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_1_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
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
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
enum irqreturn ldv_interrupt_instance_handler_3_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_3_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_3(void *arg0 ) ;
void ldv_pci_instance_callback_4_10(unsigned int (*arg0)(struct pci_dev * , enum pci_channel_state ) ,
                                    struct pci_dev *arg1 , enum pci_channel_state arg2 ) ;
void ldv_pci_instance_callback_4_23(unsigned int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_probe_4_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_4_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_4_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_4_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_4_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_4_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_4_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_4(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
void ldv_timer_instance_callback_5_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_5(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_12 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
void ldv_EMGentry_exit_rsxx_core_cleanup_12_2(void (*arg0)(void) )
{
  {
  {
  rsxx_core_cleanup();
  }
  return;
}
}
int ldv_EMGentry_init_rsxx_core_init_12_9(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = rsxx_core_init();
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
void ldv_dispatch_deregister_10_1(struct pci_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_file_operations_instance_5_12_4(void)
{
  {
  return;
}
}
void ldv_dispatch_irq_deregister_7_1(int arg0 )
{
  {
  return;
}
}
void ldv_dispatch_irq_register_9_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  struct ldv_struct_interrupt_instance_3 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(40UL);
  cf_arg_3 = (struct ldv_struct_interrupt_instance_3 *)tmp;
  cf_arg_3->arg0 = arg0;
  cf_arg_3->arg1 = arg1;
  cf_arg_3->arg2 = arg2;
  cf_arg_3->arg3 = arg3;
  ldv_interrupt_interrupt_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_dispatch_register_11_2(struct pci_driver *arg0 )
{
  struct ldv_struct_pci_instance_4 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_4 = (struct ldv_struct_pci_instance_4 *)tmp;
  cf_arg_4->arg0 = arg0;
  ldv_pci_pci_instance_4((void *)cf_arg_4);
  }
  return;
}
}
void ldv_dispatch_register_file_operations_instance_5_12_5(void)
{
  struct ldv_struct_EMGentry_12 *cf_arg_0 ;
  struct ldv_struct_EMGentry_12 *cf_arg_1 ;
  struct ldv_struct_EMGentry_12 *cf_arg_2 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_0 = (struct ldv_struct_EMGentry_12 *)tmp;
  ldv_file_operations_file_operations_instance_0((void *)cf_arg_0);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_1 = (struct ldv_struct_EMGentry_12 *)tmp___0;
  ldv_file_operations_file_operations_instance_1((void *)cf_arg_1);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_2 = (struct ldv_struct_EMGentry_12 *)tmp___1;
  ldv_file_operations_file_operations_instance_2((void *)cf_arg_2);
  }
  return;
}
}
void ldv_entry_EMGentry_12(void *arg0 )
{
  void (*ldv_12_exit_rsxx_core_cleanup_default)(void) ;
  int (*ldv_12_init_rsxx_core_init_default)(void) ;
  int ldv_12_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_12_ret_default = ldv_EMGentry_init_rsxx_core_init_12_9(ldv_12_init_rsxx_core_init_default);
  ldv_12_ret_default = ldv_ldv_post_init_132(ldv_12_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_12_ret_default != 0);
    ldv_ldv_check_final_state_133();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_12_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_file_operations_instance_5_12_5();
      ldv_dispatch_deregister_file_operations_instance_5_12_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_rsxx_core_cleanup_12_2(ldv_12_exit_rsxx_core_cleanup_default);
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
  ldv_entry_EMGentry_12((void *)0);
  }
return 0;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  int (*ldv_0_callback_getgeo)(struct block_device * , struct hd_geometry * ) ;
  int (*ldv_0_callback_ioctl)(struct block_device * , unsigned int , unsigned int ,
                              unsigned long ) ;
  long long (*ldv_0_callback_llseek)(struct file * , long long , int ) ;
  long (*ldv_0_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  struct file_operations *ldv_0_container_file_operations ;
  unsigned int ldv_0_ldv_param_20_1_default ;
  unsigned int ldv_0_ldv_param_20_2_default ;
  long long ldv_0_ldv_param_23_1_default ;
  int ldv_0_ldv_param_23_2_default ;
  char *ldv_0_ldv_param_26_1_default ;
  long long *ldv_0_ldv_param_26_3_default ;
  char *ldv_0_ldv_param_4_1_default ;
  long long *ldv_0_ldv_param_4_3_default ;
  struct file *ldv_0_resource_file ;
  struct inode *ldv_0_resource_inode ;
  struct block_device *ldv_0_resource_struct_block_device_ptr ;
  int ldv_0_ret_default ;
  struct hd_geometry *ldv_0_size_cnt_struct_hd_geometry_ptr ;
  unsigned long ldv_0_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  {
  ldv_0_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_0_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_0_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_xmalloc(480UL);
  ldv_0_resource_struct_block_device_ptr = (struct block_device *)tmp___1;
  tmp___2 = ldv_undef_int();
  ldv_0_size_cnt_struct_hd_geometry_ptr = (struct hd_geometry *)((long )tmp___2);
  }
  goto ldv_main_0;
  return;
  ldv_main_0:
  {
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
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
    tmp___3 = ldv_undef_int();
    }
    if (tmp___3 != 0) {
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
    ldv_free((void *)ldv_0_resource_struct_block_device_ptr);
    }
    return;
  }
  return;
  ldv_call_0:
  {
  tmp___5 = ldv_undef_int();
  }
  {
  if (tmp___5 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___5 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___5 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___5 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___5 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___5 == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_26_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_26_3_default = (long long *)tmp___7;
  ldv_file_operations_instance_callback_0_26(ldv_0_callback_read, ldv_0_resource_file,
                                             ldv_0_ldv_param_26_1_default, ldv_0_size_cnt_write_size,
                                             ldv_0_ldv_param_26_3_default);
  ldv_free((void *)ldv_0_ldv_param_26_1_default);
  ldv_free((void *)ldv_0_ldv_param_26_3_default);
  }
  goto ldv_call_0;
  case_2: ;
  if ((unsigned long )ldv_0_callback_llseek != (unsigned long )((long long (*)(struct file * ,
                                                                               long long ,
                                                                               int ))0)) {
    {
    ldv_file_operations_instance_callback_0_23(ldv_0_callback_llseek, ldv_0_resource_file,
                                               ldv_0_ldv_param_23_1_default, ldv_0_ldv_param_23_2_default);
    }
  } else {
  }
  goto ldv_call_0;
  goto ldv_call_0;
  case_3:
  {
  ldv_file_operations_instance_callback_0_20(ldv_0_callback_ioctl, ldv_0_resource_struct_block_device_ptr,
                                             ldv_0_ldv_param_20_1_default, ldv_0_ldv_param_20_2_default,
                                             ldv_0_size_cnt_write_size);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_4:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_4_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_4_3_default = (long long *)tmp___9;
  ldv_assume((unsigned long )ldv_0_size_cnt_struct_hd_geometry_ptr <= (unsigned long )((struct hd_geometry *)2147479552));
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
  goto ldv_call_0;
  case_5:
  {
  ldv_file_operations_instance_callback_0_5(ldv_0_callback_getgeo, ldv_0_resource_struct_block_device_ptr,
                                            ldv_0_size_cnt_struct_hd_geometry_ptr);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_6: ;
  if ((unsigned long )ldv_0_container_file_operations->release != (unsigned long )((int (*)(struct inode * ,
                                                                                            struct file * ))0)) {
    {
    ldv_file_operations_instance_release_0_2(ldv_0_container_file_operations->release,
                                             ldv_0_resource_inode, ldv_0_resource_file);
    }
  } else {
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
void ldv_file_operations_file_operations_instance_1(void *arg0 )
{
  int (*ldv_1_callback_getgeo)(struct block_device * , struct hd_geometry * ) ;
  int (*ldv_1_callback_ioctl)(struct block_device * , unsigned int , unsigned int ,
                              unsigned long ) ;
  long long (*ldv_1_callback_llseek)(struct file * , long long , int ) ;
  long (*ldv_1_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  struct file_operations *ldv_1_container_file_operations ;
  unsigned int ldv_1_ldv_param_20_1_default ;
  unsigned int ldv_1_ldv_param_20_2_default ;
  long long ldv_1_ldv_param_23_1_default ;
  int ldv_1_ldv_param_23_2_default ;
  char *ldv_1_ldv_param_26_1_default ;
  long long *ldv_1_ldv_param_26_3_default ;
  char *ldv_1_ldv_param_4_1_default ;
  long long *ldv_1_ldv_param_4_3_default ;
  struct file *ldv_1_resource_file ;
  struct inode *ldv_1_resource_inode ;
  struct block_device *ldv_1_resource_struct_block_device_ptr ;
  int ldv_1_ret_default ;
  struct hd_geometry *ldv_1_size_cnt_struct_hd_geometry_ptr ;
  unsigned long ldv_1_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  {
  ldv_1_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_1_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_1_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_xmalloc(480UL);
  ldv_1_resource_struct_block_device_ptr = (struct block_device *)tmp___1;
  tmp___2 = ldv_undef_int();
  ldv_1_size_cnt_struct_hd_geometry_ptr = (struct hd_geometry *)((long )tmp___2);
  }
  goto ldv_main_1;
  return;
  ldv_main_1:
  {
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
    {
    ldv_1_ret_default = ldv_file_operations_instance_probe_1_12(ldv_1_container_file_operations->open,
                                                                ldv_1_resource_inode,
                                                                ldv_1_resource_file);
    ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
    tmp___3 = ldv_undef_int();
    }
    if (tmp___3 != 0) {
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
    ldv_free((void *)ldv_1_resource_struct_block_device_ptr);
    }
    return;
  }
  return;
  ldv_call_1:
  {
  tmp___5 = ldv_undef_int();
  }
  {
  if (tmp___5 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___5 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___5 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___5 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___5 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___5 == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_26_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_26_3_default = (long long *)tmp___7;
  ldv_file_operations_instance_callback_1_26(ldv_1_callback_read, ldv_1_resource_file,
                                             ldv_1_ldv_param_26_1_default, ldv_1_size_cnt_write_size,
                                             ldv_1_ldv_param_26_3_default);
  ldv_free((void *)ldv_1_ldv_param_26_1_default);
  ldv_free((void *)ldv_1_ldv_param_26_3_default);
  }
  goto ldv_call_1;
  case_2:
  {
  ldv_file_operations_instance_callback_1_23(ldv_1_callback_llseek, ldv_1_resource_file,
                                             ldv_1_ldv_param_23_1_default, ldv_1_ldv_param_23_2_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  case_3:
  {
  ldv_file_operations_instance_callback_1_20(ldv_1_callback_ioctl, ldv_1_resource_struct_block_device_ptr,
                                             ldv_1_ldv_param_20_1_default, ldv_1_ldv_param_20_2_default,
                                             ldv_1_size_cnt_write_size);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_4:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_4_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_4_3_default = (long long *)tmp___9;
  ldv_assume((unsigned long )ldv_1_size_cnt_struct_hd_geometry_ptr <= (unsigned long )((struct hd_geometry *)2147479552));
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
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_5:
  {
  ldv_file_operations_instance_callback_1_5(ldv_1_callback_getgeo, ldv_1_resource_struct_block_device_ptr,
                                            ldv_1_size_cnt_struct_hd_geometry_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_6:
  {
  ldv_file_operations_instance_release_1_2(ldv_1_container_file_operations->release,
                                           ldv_1_resource_inode, ldv_1_resource_file);
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
void ldv_file_operations_file_operations_instance_2(void *arg0 )
{
  int (*ldv_2_callback_getgeo)(struct block_device * , struct hd_geometry * ) ;
  int (*ldv_2_callback_ioctl)(struct block_device * , unsigned int , unsigned int ,
                              unsigned long ) ;
  long long (*ldv_2_callback_llseek)(struct file * , long long , int ) ;
  long (*ldv_2_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  struct file_operations *ldv_2_container_file_operations ;
  unsigned int ldv_2_ldv_param_20_1_default ;
  unsigned int ldv_2_ldv_param_20_2_default ;
  long long ldv_2_ldv_param_23_1_default ;
  int ldv_2_ldv_param_23_2_default ;
  char *ldv_2_ldv_param_26_1_default ;
  long long *ldv_2_ldv_param_26_3_default ;
  char *ldv_2_ldv_param_4_1_default ;
  long long *ldv_2_ldv_param_4_3_default ;
  struct file *ldv_2_resource_file ;
  struct inode *ldv_2_resource_inode ;
  struct block_device *ldv_2_resource_struct_block_device_ptr ;
  int ldv_2_ret_default ;
  struct hd_geometry *ldv_2_size_cnt_struct_hd_geometry_ptr ;
  unsigned long ldv_2_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  {
  ldv_2_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_2_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_2_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_xmalloc(480UL);
  ldv_2_resource_struct_block_device_ptr = (struct block_device *)tmp___1;
  tmp___2 = ldv_undef_int();
  ldv_2_size_cnt_struct_hd_geometry_ptr = (struct hd_geometry *)((long )tmp___2);
  }
  goto ldv_main_2;
  return;
  ldv_main_2:
  {
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
    {
    ldv_2_ret_default = ldv_file_operations_instance_probe_2_12(ldv_2_container_file_operations->open,
                                                                ldv_2_resource_inode,
                                                                ldv_2_resource_file);
    ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
    tmp___3 = ldv_undef_int();
    }
    if (tmp___3 != 0) {
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
    ldv_free((void *)ldv_2_resource_struct_block_device_ptr);
    }
    return;
  }
  return;
  ldv_call_2:
  {
  tmp___5 = ldv_undef_int();
  }
  {
  if (tmp___5 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___5 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___5 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___5 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___5 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___5 == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_26_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_2_ldv_param_26_3_default = (long long *)tmp___7;
  ldv_file_operations_instance_callback_2_26(ldv_2_callback_read, ldv_2_resource_file,
                                             ldv_2_ldv_param_26_1_default, ldv_2_size_cnt_write_size,
                                             ldv_2_ldv_param_26_3_default);
  ldv_free((void *)ldv_2_ldv_param_26_1_default);
  ldv_free((void *)ldv_2_ldv_param_26_3_default);
  }
  goto ldv_call_2;
  case_2:
  {
  ldv_file_operations_instance_callback_2_23(ldv_2_callback_llseek, ldv_2_resource_file,
                                             ldv_2_ldv_param_23_1_default, ldv_2_ldv_param_23_2_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  case_3:
  {
  ldv_file_operations_instance_callback_2_20(ldv_2_callback_ioctl, ldv_2_resource_struct_block_device_ptr,
                                             ldv_2_ldv_param_20_1_default, ldv_2_ldv_param_20_2_default,
                                             ldv_2_size_cnt_write_size);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_4:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_4_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_2_ldv_param_4_3_default = (long long *)tmp___9;
  ldv_assume((unsigned long )ldv_2_size_cnt_struct_hd_geometry_ptr <= (unsigned long )((struct hd_geometry *)2147479552));
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
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_5:
  {
  ldv_file_operations_instance_callback_2_5(ldv_2_callback_getgeo, ldv_2_resource_struct_block_device_ptr,
                                            ldv_2_size_cnt_struct_hd_geometry_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_6:
  {
  ldv_file_operations_instance_release_2_2(ldv_2_container_file_operations->release,
                                           ldv_2_resource_inode, ldv_2_resource_file);
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
void ldv_file_operations_instance_callback_0_23(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_26(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  rsxx_cram_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_23(long long (*arg0)(struct file * ,
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
void ldv_file_operations_instance_callback_1_26(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_callback_2_23(long long (*arg0)(struct file * ,
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
void ldv_file_operations_instance_callback_2_26(long (*arg0)(struct file * , char * ,
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
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = rsxx_attr_pci_regs_open(arg1, arg2);
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
  tmp = rsxx_attr_stats_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_1_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  single_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
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
  rsxx_cram_write(arg1, (char const *)arg2, arg3, arg4);
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
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_7_line_line ;
  {
  {
  ldv_7_line_line = arg1;
  ldv_dispatch_irq_deregister_7_1(ldv_7_line_line);
  }
  return;
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_3_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = rsxx_isr(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_3_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_3(void *arg0 )
{
  enum irqreturn (*ldv_3_callback_handler)(int , void * ) ;
  void *ldv_3_data_data ;
  int ldv_3_line_line ;
  enum irqreturn ldv_3_ret_val_default ;
  enum irqreturn (*ldv_3_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_instance_3 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_interrupt_instance_3 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_instance_3 *)0)) {
    {
    ldv_3_line_line = data->arg0;
    ldv_3_callback_handler = data->arg1;
    ldv_3_thread_thread = data->arg2;
    ldv_3_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  ldv_3_ret_val_default = ldv_interrupt_instance_handler_3_5(ldv_3_callback_handler,
                                                             ldv_3_line_line, ldv_3_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume((unsigned int )ldv_3_ret_val_default == 2U);
    }
    if ((unsigned long )ldv_3_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                    void * ))0)) {
      {
      ldv_interrupt_instance_thread_3_3(ldv_3_thread_thread, ldv_3_line_line, ldv_3_data_data);
      }
    } else {
    }
  } else {
    {
    ldv_assume((unsigned int )ldv_3_ret_val_default != 2U);
    }
  }
  return;
  return;
}
}
void ldv_pci_instance_callback_4_10(unsigned int (*arg0)(struct pci_dev * , enum pci_channel_state ) ,
                                    struct pci_dev *arg1 , enum pci_channel_state arg2 )
{
  {
  {
  rsxx_error_detected(arg1, arg2);
  }
  return;
}
}
void ldv_pci_instance_callback_4_23(unsigned int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  rsxx_slot_reset(arg1);
  }
  return;
}
}
int ldv_pci_instance_probe_4_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = rsxx_pci_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_4_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  rsxx_pci_remove(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_4_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_4_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_4_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  rsxx_pci_shutdown(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_4_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = rsxx_pci_suspend(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_pci_instance_suspend_late_4_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
void ldv_pci_pci_instance_4(void *arg0 )
{
  unsigned int (*ldv_4_callback_error_detected)(struct pci_dev * , enum pci_channel_state ) ;
  unsigned int (*ldv_4_callback_slot_reset)(struct pci_dev * ) ;
  struct pci_driver *ldv_4_container_pci_driver ;
  struct pci_dev *ldv_4_resource_dev ;
  enum pci_channel_state ldv_4_resource_enum_pci_channel_state ;
  struct pm_message ldv_4_resource_pm_message ;
  struct pci_device_id *ldv_4_resource_struct_pci_device_id_ptr ;
  int ldv_4_ret_default ;
  struct ldv_struct_pci_instance_4 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_pci_instance_4 *)arg0;
  ldv_4_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_pci_instance_4 *)0)) {
    {
    ldv_4_container_pci_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(2968UL);
  ldv_4_resource_dev = (struct pci_dev *)tmp;
  tmp___0 = ldv_xmalloc(32UL);
  ldv_4_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___0;
  }
  goto ldv_main_4;
  return;
  ldv_main_4:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_ldv_pre_probe_136();
    ldv_4_ret_default = ldv_pci_instance_probe_4_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_4_container_pci_driver->probe,
                                                    ldv_4_resource_dev, ldv_4_resource_struct_pci_device_id_ptr);
    ldv_4_ret_default = ldv_ldv_post_probe_137(ldv_4_ret_default);
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
    ldv_free((void *)ldv_4_resource_dev);
    ldv_free((void *)ldv_4_resource_struct_pci_device_id_ptr);
    }
    return;
  }
  return;
  ldv_call_4:
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
  goto switch_default;
  case_1:
  {
  ldv_pci_instance_callback_4_23(ldv_4_callback_slot_reset, ldv_4_resource_dev);
  }
  goto ldv_call_4;
  case_2:
  {
  ldv_pci_instance_callback_4_10(ldv_4_callback_error_detected, ldv_4_resource_dev,
                                 ldv_4_resource_enum_pci_channel_state);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  case_3:
  {
  ldv_4_ret_default = ldv_pci_instance_suspend_4_8(ldv_4_container_pci_driver->suspend,
                                                   ldv_4_resource_dev, ldv_4_resource_pm_message);
  ldv_4_ret_default = ldv_filter_err_code(ldv_4_ret_default);
  }
  if ((unsigned long )ldv_4_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_4_ret_default = ldv_pci_instance_suspend_late_4_7(ldv_4_container_pci_driver->suspend_late,
                                                          ldv_4_resource_dev, ldv_4_resource_pm_message);
    }
  } else {
  }
  {
  ldv_4_ret_default = ldv_filter_err_code(ldv_4_ret_default);
  }
  if ((unsigned long )ldv_4_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_4_6(ldv_4_container_pci_driver->resume_early, ldv_4_resource_dev);
    }
  } else {
  }
  if ((unsigned long )ldv_4_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_4_5(ldv_4_container_pci_driver->resume, ldv_4_resource_dev);
    }
  } else {
  }
  goto ldv_call_4;
  case_4:
  {
  ldv_pci_instance_shutdown_4_3(ldv_4_container_pci_driver->shutdown, ldv_4_resource_dev);
  ldv_pci_instance_release_4_2(ldv_4_container_pci_driver->remove, ldv_4_resource_dev);
  }
  goto ldv_main_4;
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
  struct pci_driver *ldv_10_pci_driver_pci_driver ;
  {
  {
  ldv_10_pci_driver_pci_driver = arg1;
  ldv_dispatch_deregister_10_1(ldv_10_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
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
    ldv_9_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_9_data_data = arg5;
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
__inline static void ldv_spin_lock_96(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irq_lock_of_rsxx_cardinfo();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_97(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_irq_lock_of_rsxx_cardinfo();
  spin_unlock(lock);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_98(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irq_lock_of_rsxx_cardinfo();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_99(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_irq_lock_of_rsxx_cardinfo();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_100(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_queue_lock_of_rsxx_dma_ctrl();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_101(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_queue_lock_of_rsxx_dma_ctrl();
  spin_unlock_bh(lock);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_102(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irq_lock_of_rsxx_cardinfo();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_lock_104(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_queue_lock_of_rsxx_dma_ctrl();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_105(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_queue_lock_of_rsxx_dma_ctrl();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_107(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_rsxx_ida_lock();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_108(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_rsxx_ida_lock();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_irq_109(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irq_lock_of_rsxx_cardinfo();
  spin_lock_irq(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_110(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_irq_lock_of_rsxx_cardinfo();
  spin_unlock_irq(lock);
  }
  return;
}
}
__inline static int ldv_request_irq_111(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev )
{
  ldv_func_ret_type___0 ldv_func_res ;
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
static void ldv_free_irq_118(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_121(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irq_lock_of_rsxx_cardinfo();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_123(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irq_lock_of_rsxx_cardinfo();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_125(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irq_lock_of_rsxx_cardinfo();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_irq_127(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_128(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irq_lock_of_rsxx_cardinfo();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv___pci_register_driver_130(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
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
static void ldv_pci_unregister_driver_131(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
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
static void ldv_ldv_pre_probe_136(void)
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
static int ldv_ldv_post_probe_137(int retval )
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
void ldv_linux_kernel_sched_completion_init_completion_cmd_done(void) ;
void ldv_linux_kernel_sched_completion_wait_for_completion_cmd_done_of_creg_completion(void) ;
int ldv_linux_kernel_locking_mutex_mutex_trylock_reset_lock_of_NOT_ARG_SIGN(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_reset_lock_of_NOT_ARG_SIGN(struct mutex *lock ) ;
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
extern void list_del(struct list_head * ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_110(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_115(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_NOT_ARG_SIGN(void) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static int ldv_mutex_trylock_109(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_117(struct mutex *ldv_func_arg1 ) ;
__inline static void ldv_spin_lock_100(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_100(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_98(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_98(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_98(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_98(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_98(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_98(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_98(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_101(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_101(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_99(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_99(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_99(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_99(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_99(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_99(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_99(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_99(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_99(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_init_completion_118(struct completion *x ) ;
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
static unsigned long ldv_wait_for_completion_timeout_119(struct completion *ldv_func_arg1 ,
                                                         unsigned long ldv_func_arg2 ) ;
extern void complete(struct completion * ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.next != (unsigned long )((struct list_head * )0));
}
}
extern int mod_timer(struct timer_list * , unsigned long ) ;
static int ldv_mod_timer_96(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
static int ldv_del_timer_sync_104(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_sync_113(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_sync_120(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_sync_126(struct timer_list *ldv_func_arg1 ) ;
extern unsigned int ioread32be(void * ) ;
extern void iowrite32be(u32 , void * ) ;
extern void dev_emerg(struct device const * , char const * , ...) ;
extern void dev_alert(struct device const * , char const * , ...) ;
extern void dev_notice(struct device const * , char const * , ...) ;
extern struct kmem_cache *kmem_cache_create(char const * , size_t , size_t , unsigned long ,
                                            void (*)(void * ) ) ;
extern void kmem_cache_destroy(struct kmem_cache * ) ;
static void *ldv_kmem_cache_alloc_97(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern void kmem_cache_free(struct kmem_cache * , void * ) ;
__inline static unsigned int CREG_DATA(int N )
{
  {
  return ((unsigned int )((N << 2) + 80));
}
}
int rsxx_get_card_capabilities(struct rsxx_cardinfo *card , u32 *capabilities ) ;
int rsxx_reg_access(struct rsxx_cardinfo *card , struct rsxx_reg_access *ucmd , int read ) ;
static struct kmem_cache *creg_cmd_pool ;
static int copy_to_creg_data(struct rsxx_cardinfo *card , int cnt8 , void *buf , unsigned int stream )
{
  int i ;
  u32 *data ;
  long tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  i = 0;
  data = (u32 *)buf;
  tmp = ldv__builtin_expect(card->eeh_state != 0U, 0L);
  }
  if (tmp != 0L) {
    return (-5);
  } else {
  }
  i = 0;
  goto ldv_33827;
  ldv_33826: ;
  if (stream != 0U) {
    {
    tmp___0 = CREG_DATA(i);
    iowrite32be(*(data + (unsigned long )i), card->regmap + (unsigned long )tmp___0);
    }
  } else {
    {
    tmp___1 = CREG_DATA(i);
    iowrite32(*(data + (unsigned long )i), card->regmap + (unsigned long )tmp___1);
    }
  }
  i = i + 1;
  cnt8 = cnt8 + -4;
  ldv_33827: ;
  if (cnt8 > 0) {
    goto ldv_33826;
  } else {
  }
  return (0);
}
}
static int copy_from_creg_data(struct rsxx_cardinfo *card , int cnt8 , void *buf ,
                               unsigned int stream )
{
  int i ;
  u32 *data ;
  long tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  i = 0;
  data = (u32 *)buf;
  tmp = ldv__builtin_expect(card->eeh_state != 0U, 0L);
  }
  if (tmp != 0L) {
    return (-5);
  } else {
  }
  i = 0;
  goto ldv_33838;
  ldv_33837: ;
  if (stream != 0U) {
    {
    tmp___0 = CREG_DATA(i);
    *(data + (unsigned long )i) = ioread32be(card->regmap + (unsigned long )tmp___0);
    }
  } else {
    {
    tmp___1 = CREG_DATA(i);
    *(data + (unsigned long )i) = ioread32(card->regmap + (unsigned long )tmp___1);
    }
  }
  i = i + 1;
  cnt8 = cnt8 + -4;
  ldv_33838: ;
  if (cnt8 > 0) {
    goto ldv_33837;
  } else {
  }
  return (0);
}
}
static void creg_issue_cmd(struct rsxx_cardinfo *card , struct creg_cmd *cmd )
{
  int st ;
  long tmp ;
  long tmp___0 ;
  {
  {
  tmp = ldv__builtin_expect(card->eeh_state != 0U, 0L);
  }
  if (tmp != 0L) {
    return;
  } else {
  }
  {
  iowrite32(cmd->addr, card->regmap + 68UL);
  iowrite32((u32 )cmd->cnt8, card->regmap + 72UL);
  }
  if (cmd->op == 192U) {
    if ((unsigned long )cmd->buf != (unsigned long )((void *)0)) {
      {
      st = copy_to_creg_data(card, cmd->cnt8, cmd->buf, cmd->stream);
      }
      if (st != 0) {
        return;
      } else {
      }
    } else {
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(card->eeh_state != 0U, 0L);
  }
  if (tmp___0 != 0L) {
    return;
  } else {
  }
  {
  iowrite32(cmd->op, card->regmap + 64UL);
  }
  return;
}
}
static void creg_kick_queue(struct rsxx_cardinfo *card )
{
  int tmp ;
  struct list_head const *__mptr ;
  unsigned long tmp___0 ;
  {
  if ((int )card->creg_ctrl.active) {
    return;
  } else {
    {
    tmp = list_empty((struct list_head const *)(& card->creg_ctrl.queue));
    }
    if (tmp != 0) {
      return;
    } else {
    }
  }
  {
  card->creg_ctrl.active = 1;
  __mptr = (struct list_head const *)card->creg_ctrl.queue.next;
  card->creg_ctrl.active_cmd = (struct creg_cmd *)__mptr;
  list_del(& (card->creg_ctrl.active_cmd)->list);
  card->creg_ctrl.q_depth = card->creg_ctrl.q_depth - 1U;
  tmp___0 = msecs_to_jiffies(10000U);
  ldv_mod_timer_96(& card->creg_ctrl.cmd_timer, (unsigned long )jiffies + tmp___0);
  creg_issue_cmd(card, card->creg_ctrl.active_cmd);
  }
  return;
}
}
static int creg_queue_cmd(struct rsxx_cardinfo *card , unsigned int op , unsigned int addr ,
                          unsigned int cnt8 , void *buf , int stream , void (*callback)(struct rsxx_cardinfo * ,
                                                                                        struct creg_cmd * ,
                                                                                        int ) ,
                          void *cb_private )
{
  struct creg_cmd *cmd ;
  long tmp ;
  void *tmp___0 ;
  {
  {
  tmp = ldv__builtin_expect(card->halt != 0U, 0L);
  }
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  if (card->creg_ctrl.reset != 0) {
    return (-11);
  } else {
  }
  if (cnt8 > 32U) {
    return (-22);
  } else {
  }
  {
  tmp___0 = ldv_kmem_cache_alloc_97(creg_cmd_pool, 208U);
  cmd = (struct creg_cmd *)tmp___0;
  }
  if ((unsigned long )cmd == (unsigned long )((struct creg_cmd *)0)) {
    return (-12);
  } else {
  }
  {
  INIT_LIST_HEAD(& cmd->list);
  cmd->op = op;
  cmd->addr = addr;
  cmd->cnt8 = (int )cnt8;
  cmd->buf = buf;
  cmd->stream = (unsigned int )stream;
  cmd->cb = callback;
  cmd->cb_private = cb_private;
  cmd->status = 0U;
  ldv_spin_lock_bh_98(& card->creg_ctrl.lock);
  list_add_tail(& cmd->list, & card->creg_ctrl.queue);
  card->creg_ctrl.q_depth = card->creg_ctrl.q_depth + 1U;
  creg_kick_queue(card);
  ldv_spin_unlock_bh_99(& card->creg_ctrl.lock);
  }
  return (0);
}
}
static void creg_cmd_timed_out(unsigned long data )
{
  struct rsxx_cardinfo *card ;
  struct creg_cmd *cmd ;
  {
  {
  card = (struct rsxx_cardinfo *)data;
  ldv_spin_lock_100(& card->creg_ctrl.lock);
  cmd = card->creg_ctrl.active_cmd;
  card->creg_ctrl.active_cmd = (struct creg_cmd *)0;
  ldv_spin_unlock_101(& card->creg_ctrl.lock);
  }
  if ((unsigned long )cmd == (unsigned long )((struct creg_cmd *)0)) {
    {
    card->creg_ctrl.creg_stats.creg_timeout = card->creg_ctrl.creg_stats.creg_timeout + 1U;
    dev_warn((struct device const *)(& (card->dev)->dev), "No active command associated with timeout!\n");
    }
    return;
  } else {
  }
  if ((unsigned long )cmd->cb != (unsigned long )((void (*)(struct rsxx_cardinfo * ,
                                                            struct creg_cmd * , int ))0)) {
    {
    (*(cmd->cb))(card, cmd, -110);
    }
  } else {
  }
  {
  kmem_cache_free(creg_cmd_pool, (void *)cmd);
  ldv_spin_lock_100(& card->creg_ctrl.lock);
  card->creg_ctrl.active = 0;
  creg_kick_queue(card);
  ldv_spin_unlock_101(& card->creg_ctrl.lock);
  }
  return;
}
}
static void creg_cmd_done(struct work_struct *work )
{
  struct rsxx_cardinfo *card ;
  struct creg_cmd *cmd ;
  int st ;
  struct work_struct const *__mptr ;
  int tmp ;
  unsigned int cnt8 ;
  unsigned int tmp___0 ;
  {
  {
  st = 0;
  __mptr = (struct work_struct const *)work;
  card = (struct rsxx_cardinfo *)__mptr + 0xffffffffffffff10UL;
  tmp = ldv_del_timer_sync_104(& card->creg_ctrl.cmd_timer);
  }
  if (tmp == 0) {
    card->creg_ctrl.creg_stats.failed_cancel_timer = card->creg_ctrl.creg_stats.failed_cancel_timer + 1U;
  } else {
  }
  {
  ldv_spin_lock_bh_98(& card->creg_ctrl.lock);
  cmd = card->creg_ctrl.active_cmd;
  card->creg_ctrl.active_cmd = (struct creg_cmd *)0;
  ldv_spin_unlock_bh_99(& card->creg_ctrl.lock);
  }
  if ((unsigned long )cmd == (unsigned long )((struct creg_cmd *)0)) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Spurious creg interrupt!\n");
    }
    return;
  } else {
  }
  {
  card->creg_ctrl.creg_stats.stat = ioread32(card->regmap + 76UL);
  cmd->status = card->creg_ctrl.creg_stats.stat;
  }
  if ((cmd->status & 3U) == 0U) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Invalid status on creg command\n");
    st = -5;
    }
    goto creg_done;
  } else
  if ((cmd->status & 2U) != 0U) {
    st = -5;
  } else {
  }
  if (cmd->op == 224U) {
    {
    tmp___0 = ioread32(card->regmap + 72UL);
    cnt8 = tmp___0;
    }
    if ((unsigned long )cmd->buf == (unsigned long )((void *)0)) {
      {
      dev_err((struct device const *)(& (card->dev)->dev), "Buffer not given for read.\n");
      st = -5;
      }
      goto creg_done;
    } else {
    }
    if (cnt8 != (unsigned int )cmd->cnt8) {
      {
      dev_err((struct device const *)(& (card->dev)->dev), "count mismatch\n");
      st = -5;
      }
      goto creg_done;
    } else {
    }
    {
    st = copy_from_creg_data(card, (int )cnt8, cmd->buf, cmd->stream);
    }
  } else {
  }
  creg_done: ;
  if ((unsigned long )cmd->cb != (unsigned long )((void (*)(struct rsxx_cardinfo * ,
                                                            struct creg_cmd * , int ))0)) {
    {
    (*(cmd->cb))(card, cmd, st);
    }
  } else {
  }
  {
  kmem_cache_free(creg_cmd_pool, (void *)cmd);
  ldv_spin_lock_bh_98(& card->creg_ctrl.lock);
  card->creg_ctrl.active = 0;
  creg_kick_queue(card);
  ldv_spin_unlock_bh_99(& card->creg_ctrl.lock);
  }
  return;
}
}
static void creg_reset(struct rsxx_cardinfo *card )
{
  struct creg_cmd *cmd ;
  struct creg_cmd *tmp ;
  unsigned long flags ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___1 ;
  {
  {
  cmd = (struct creg_cmd *)0;
  tmp___0 = ldv_mutex_trylock_109(& card->creg_ctrl.reset_lock);
  }
  if (tmp___0 == 0) {
    return;
  } else {
  }
  {
  card->creg_ctrl.reset = 1;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_110(& card->irq_lock);
  rsxx_disable_ier_and_isr(card, 10U);
  ldv_spin_unlock_irqrestore_99(& card->irq_lock, flags);
  dev_warn((struct device const *)(& (card->dev)->dev), "Resetting creg interface for recovery\n");
  ldv_spin_lock_bh_98(& card->creg_ctrl.lock);
  __mptr = (struct list_head const *)card->creg_ctrl.queue.next;
  cmd = (struct creg_cmd *)__mptr;
  __mptr___0 = (struct list_head const *)cmd->list.next;
  tmp = (struct creg_cmd *)__mptr___0;
  }
  goto ldv_33889;
  ldv_33888:
  {
  list_del(& cmd->list);
  card->creg_ctrl.q_depth = card->creg_ctrl.q_depth - 1U;
  }
  if ((unsigned long )cmd->cb != (unsigned long )((void (*)(struct rsxx_cardinfo * ,
                                                            struct creg_cmd * , int ))0)) {
    {
    (*(cmd->cb))(card, cmd, -125);
    }
  } else {
  }
  {
  kmem_cache_free(creg_cmd_pool, (void *)cmd);
  cmd = tmp;
  __mptr___1 = (struct list_head const *)tmp->list.next;
  tmp = (struct creg_cmd *)__mptr___1;
  }
  ldv_33889: ;
  if ((unsigned long )(& cmd->list) != (unsigned long )(& card->creg_ctrl.queue)) {
    goto ldv_33888;
  } else {
  }
  cmd = card->creg_ctrl.active_cmd;
  card->creg_ctrl.active_cmd = (struct creg_cmd *)0;
  if ((unsigned long )cmd != (unsigned long )((struct creg_cmd *)0)) {
    {
    tmp___1 = timer_pending((struct timer_list const *)(& card->creg_ctrl.cmd_timer));
    }
    if (tmp___1 != 0) {
      {
      ldv_del_timer_sync_113(& card->creg_ctrl.cmd_timer);
      }
    } else {
    }
    if ((unsigned long )cmd->cb != (unsigned long )((void (*)(struct rsxx_cardinfo * ,
                                                              struct creg_cmd * ,
                                                              int ))0)) {
      {
      (*(cmd->cb))(card, cmd, -125);
      }
    } else {
    }
    {
    kmem_cache_free(creg_cmd_pool, (void *)cmd);
    card->creg_ctrl.active = 0;
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_99(& card->creg_ctrl.lock);
  card->creg_ctrl.reset = 0;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_115(& card->irq_lock);
  rsxx_enable_ier_and_isr(card, 10U);
  ldv_spin_unlock_irqrestore_99(& card->irq_lock, flags);
  ldv_mutex_unlock_117(& card->creg_ctrl.reset_lock);
  }
  return;
}
}
static void creg_cmd_done_cb(struct rsxx_cardinfo *card , struct creg_cmd *cmd , int st )
{
  struct creg_completion *cmd_completion ;
  long tmp ;
  {
  {
  cmd_completion = (struct creg_completion *)cmd->cb_private;
  tmp = ldv__builtin_expect((unsigned long )cmd_completion == (unsigned long )((struct creg_completion *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/block/rsxx/cregs.c"),
                         "i" (378), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  cmd_completion->st = st;
  cmd_completion->creg_status = cmd->status;
  complete(cmd_completion->cmd_done);
  }
  return;
}
}
static int __issue_creg_rw(struct rsxx_cardinfo *card , unsigned int op , unsigned int addr ,
                           unsigned int cnt8 , void *buf , int stream , unsigned int *hw_stat )
{
  struct completion cmd_done ;
  struct creg_completion completion ;
  unsigned long timeout ;
  int st ;
  unsigned long tmp ;
  {
  {
  ldv_init_completion_118(& cmd_done);
  cmd_done = cmd_done;
  completion.cmd_done = & cmd_done;
  completion.st = 0;
  completion.creg_status = 0U;
  st = creg_queue_cmd(card, op, addr, cnt8, buf, stream, & creg_cmd_done_cb, (void *)(& completion));
  }
  if (st != 0) {
    return (st);
  } else {
  }
  {
  timeout = msecs_to_jiffies(card->creg_ctrl.q_depth * 10000U + 20000U);
  tmp = ldv_wait_for_completion_timeout_119(completion.cmd_done, timeout);
  st = (int )tmp;
  }
  if (st == 0) {
    {
    dev_crit((struct device const *)(& (card->dev)->dev), "cregs timer failed\n");
    creg_reset(card);
    }
    return (-5);
  } else {
  }
  *hw_stat = completion.creg_status;
  if (completion.st != 0) {
    {
    ioread32(card->regmap + 4UL);
    dev_warn((struct device const *)(& (card->dev)->dev), "creg command failed(%d x%08x)\n",
             completion.st, addr);
    }
    return (completion.st);
  } else {
  }
  return (0);
}
}
static int issue_creg_rw(struct rsxx_cardinfo *card , u32 addr , unsigned int size8 ,
                         void *data , int stream , int read )
{
  unsigned int hw_stat ;
  unsigned int xfer ;
  unsigned int op ;
  int st ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  {
  op = read != 0 ? 224U : 192U;
  ldv_33930:
  {
  __min1 = size8;
  __min2 = 32U;
  xfer = __min1 < __min2 ? __min1 : __min2;
  st = __issue_creg_rw(card, op, addr, xfer, data, stream, & hw_stat);
  }
  if (st != 0) {
    return (st);
  } else {
  }
  data = data + (unsigned long )xfer;
  addr = addr + xfer;
  size8 = size8 - xfer;
  if (size8 != 0U) {
    goto ldv_33930;
  } else {
  }
  return (0);
}
}
int rsxx_creg_write(struct rsxx_cardinfo *card , u32 addr , unsigned int size8 , void *data ,
                    int byte_stream )
{
  int tmp ;
  {
  {
  tmp = issue_creg_rw(card, addr, size8, data, byte_stream, 0);
  }
  return (tmp);
}
}
int rsxx_creg_read(struct rsxx_cardinfo *card , u32 addr , unsigned int size8 , void *data ,
                   int byte_stream )
{
  int tmp ;
  {
  {
  tmp = issue_creg_rw(card, addr, size8, data, byte_stream, 1);
  }
  return (tmp);
}
}
int rsxx_get_card_state(struct rsxx_cardinfo *card , unsigned int *state )
{
  int tmp ;
  {
  {
  tmp = rsxx_creg_read(card, 2147487748U, 4U, (void *)state, 0);
  }
  return (tmp);
}
}
int rsxx_get_card_size8(struct rsxx_cardinfo *card , u64 *size8 )
{
  unsigned int size ;
  int st ;
  {
  {
  st = rsxx_creg_read(card, 2147487756U, 4U, (void *)(& size), 0);
  }
  if (st != 0) {
    return (st);
  } else {
  }
  *size8 = (unsigned long long )size * 4096ULL;
  return (0);
}
}
int rsxx_get_num_targets(struct rsxx_cardinfo *card , unsigned int *n_targets )
{
  int tmp ;
  {
  {
  tmp = rsxx_creg_read(card, 2147495936U, 4U, (void *)n_targets, 0);
  }
  return (tmp);
}
}
int rsxx_get_card_capabilities(struct rsxx_cardinfo *card , u32 *capabilities )
{
  int tmp ;
  {
  {
  tmp = rsxx_creg_read(card, 2147487824U, 4U, (void *)capabilities, 0);
  }
  return (tmp);
}
}
int rsxx_issue_card_cmd(struct rsxx_cardinfo *card , u32 cmd )
{
  int tmp ;
  {
  {
  tmp = rsxx_creg_write(card, 2147487744U, 4U, (void *)(& cmd), 0);
  }
  return (tmp);
}
}
static void hw_log_msg(struct rsxx_cardinfo *card , char const *str , int len )
{
  char level ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  if ((len > 3 && (int )((signed char )*str) == 60) && (int )((signed char )*(str + 2UL)) == 62) {
    level = *(str + 1UL);
    str = str + 3UL;
    len = len + -3;
  } else {
  }
  {
  if ((int )level == 48) {
    goto case_48;
  } else {
  }
  if ((int )level == 49) {
    goto case_49;
  } else {
  }
  if ((int )level == 50) {
    goto case_50;
  } else {
  }
  if ((int )level == 51) {
    goto case_51;
  } else {
  }
  if ((int )level == 52) {
    goto case_52;
  } else {
  }
  if ((int )level == 53) {
    goto case_53;
  } else {
  }
  if ((int )level == 54) {
    goto case_54;
  } else {
  }
  if ((int )level == 55) {
    goto case_55;
  } else {
  }
  goto switch_default;
  case_48:
  {
  dev_emerg((struct device const *)(& (card->dev)->dev), "HW: %.*s", len, str);
  }
  goto ldv_33975;
  case_49:
  {
  dev_alert((struct device const *)(& (card->dev)->dev), "HW: %.*s", len, str);
  }
  goto ldv_33975;
  case_50:
  {
  dev_crit((struct device const *)(& (card->dev)->dev), "HW: %.*s", len, str);
  }
  goto ldv_33975;
  case_51:
  {
  dev_err((struct device const *)(& (card->dev)->dev), "HW: %.*s", len, str);
  }
  goto ldv_33975;
  case_52:
  {
  dev_warn((struct device const *)(& (card->dev)->dev), "HW: %.*s", len, str);
  }
  goto ldv_33975;
  case_53:
  {
  dev_notice((struct device const *)(& (card->dev)->dev), "HW: %.*s", len, str);
  }
  goto ldv_33975;
  case_54:
  {
  _dev_info((struct device const *)(& (card->dev)->dev), "HW: %.*s", len, str);
  }
  goto ldv_33975;
  case_55:
  {
  descriptor.modname = "rsxx";
  descriptor.function = "hw_log_msg";
  descriptor.filename = "drivers/block/rsxx/cregs.c";
  descriptor.format = "HW: %.*s";
  descriptor.lineno = 580U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (card->dev)->dev),
                      "HW: %.*s", len, str);
    }
  } else {
  }
  goto ldv_33975;
  switch_default:
  {
  _dev_info((struct device const *)(& (card->dev)->dev), "HW: %.*s", len, str);
  }
  goto ldv_33975;
  switch_break: ;
  }
  ldv_33975: ;
  return;
}
}
static int substrncpy(char *dest , char const *src , int count )
{
  int max_cnt ;
  {
  max_cnt = count;
  goto ldv_33994;
  ldv_33993:
  count = count - 1;
  *dest = *src;
  if ((int )((signed char )*dest) == 0) {
    goto ldv_33992;
  } else {
  }
  src = src + 1;
  dest = dest + 1;
  ldv_33994: ;
  if (count != 0) {
    goto ldv_33993;
  } else {
  }
  ldv_33992: ;
  return (max_cnt - count);
}
}
static void read_hw_log_done(struct rsxx_cardinfo *card , struct creg_cmd *cmd , int st )
{
  char *buf ;
  char *log_str ;
  int cnt ;
  int len ;
  int off ;
  int _min1 ;
  int _min2 ;
  {
  buf = (char *)cmd->buf;
  off = 0;
  if (st != 0) {
    return;
  } else {
  }
  goto ldv_34009;
  ldv_34008:
  {
  log_str = (char *)(& card->log.buf) + (unsigned long )card->log.buf_len;
  _min1 = cmd->cnt8 - off;
  _min2 = 128 - card->log.buf_len;
  cnt = _min1 < _min2 ? _min1 : _min2;
  len = substrncpy(log_str, (char const *)buf + (unsigned long )off, cnt);
  off = off + len;
  card->log.buf_len = card->log.buf_len + len;
  }
  if ((int )((signed char )*(log_str + ((unsigned long )len + 0xffffffffffffffffUL))) == 0 || card->log.buf_len == 128) {
    if (card->log.buf_len != 1) {
      {
      hw_log_msg(card, (char const *)(& card->log.buf), card->log.buf_len);
      }
    } else {
    }
    card->log.buf_len = 0;
  } else {
  }
  ldv_34009: ;
  if (off < cmd->cnt8) {
    goto ldv_34008;
  } else {
  }
  if ((cmd->status & 8U) != 0U) {
    {
    rsxx_read_hw_log(card);
    }
  } else {
  }
  return;
}
}
int rsxx_read_hw_log(struct rsxx_cardinfo *card )
{
  int st ;
  {
  {
  st = creg_queue_cmd(card, 224U, 2147491840U, 32U, (void *)(& card->log.tmp), 1,
                      & read_hw_log_done, (void *)0);
  }
  if (st != 0) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Failed getting log text\n");
    }
  } else {
  }
  return (st);
}
}
static int issue_reg_cmd(struct rsxx_cardinfo *card , struct rsxx_reg_access *cmd ,
                         int read )
{
  unsigned int op ;
  int tmp ;
  {
  {
  op = read != 0 ? 224U : 192U;
  tmp = __issue_creg_rw(card, op, cmd->addr, cmd->cnt, (void *)(& cmd->data), (int )cmd->stream,
                        & cmd->stat);
  }
  return (tmp);
}
}
int rsxx_reg_access(struct rsxx_cardinfo *card , struct rsxx_reg_access *ucmd , int read )
{
  struct rsxx_reg_access cmd ;
  int st ;
  unsigned long tmp ;
  int __ret_pu ;
  __u32 __pu_val ;
  unsigned long tmp___0 ;
  {
  {
  tmp = copy_from_user((void *)(& cmd), (void const *)ucmd, 48UL);
  st = (int )tmp;
  }
  if (st != 0) {
    return (-14);
  } else {
  }
  if (cmd.cnt > 32U) {
    return (-14);
  } else {
  }
  {
  st = issue_reg_cmd(card, & cmd, read);
  }
  if (st != 0) {
    return (st);
  } else {
  }
  {
  might_fault();
  __pu_val = cmd.stat;
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
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (& ucmd->stat): "ebx");
  goto ldv_34031;
  case_2:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (& ucmd->stat): "ebx");
  goto ldv_34031;
  case_4:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (& ucmd->stat): "ebx");
  goto ldv_34031;
  case_8:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (& ucmd->stat): "ebx");
  goto ldv_34031;
  switch_default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (& ucmd->stat): "ebx");
  goto ldv_34031;
  switch_break: ;
  }
  ldv_34031:
  st = __ret_pu;
  if (st != 0) {
    return (-14);
  } else {
  }
  if (read != 0) {
    {
    tmp___0 = copy_to_user((void *)(& ucmd->data), (void const *)(& cmd.data), (unsigned long )cmd.cnt);
    st = (int )tmp___0;
    }
    if (st != 0) {
      return (-14);
    } else {
    }
  } else {
  }
  return (0);
}
}
void rsxx_eeh_save_issued_creg(struct rsxx_cardinfo *card )
{
  struct creg_cmd *cmd ;
  {
  cmd = (struct creg_cmd *)0;
  cmd = card->creg_ctrl.active_cmd;
  card->creg_ctrl.active_cmd = (struct creg_cmd *)0;
  if ((unsigned long )cmd != (unsigned long )((struct creg_cmd *)0)) {
    {
    ldv_del_timer_sync_120(& card->creg_ctrl.cmd_timer);
    ldv_spin_lock_bh_98(& card->creg_ctrl.lock);
    list_add(& cmd->list, & card->creg_ctrl.queue);
    card->creg_ctrl.q_depth = card->creg_ctrl.q_depth + 1U;
    card->creg_ctrl.active = 0;
    ldv_spin_unlock_bh_99(& card->creg_ctrl.lock);
    }
  } else {
  }
  return;
}
}
void rsxx_kick_creg_queue(struct rsxx_cardinfo *card )
{
  int tmp ;
  {
  {
  ldv_spin_lock_bh_98(& card->creg_ctrl.lock);
  tmp = list_empty((struct list_head const *)(& card->creg_ctrl.queue));
  }
  if (tmp == 0) {
    {
    creg_kick_queue(card);
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_99(& card->creg_ctrl.lock);
  }
  return;
}
}
int rsxx_creg_setup(struct rsxx_cardinfo *card )
{
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  {
  {
  card->creg_ctrl.active_cmd = (struct creg_cmd *)0;
  __lock_name = "\"%s\"\"rsxx\"\"_creg\"";
  tmp = __alloc_workqueue_key("%s", 131082U, 1, & __key, __lock_name, (char *)"rsxx_creg");
  card->creg_ctrl.creg_wq = tmp;
  }
  if ((unsigned long )card->creg_ctrl.creg_wq == (unsigned long )((struct workqueue_struct *)0)) {
    return (-12);
  } else {
  }
  {
  __init_work(& card->creg_ctrl.done_work, 0);
  __constr_expr_0.counter = 137438953408L;
  card->creg_ctrl.done_work.data = __constr_expr_0;
  lockdep_init_map(& card->creg_ctrl.done_work.lockdep_map, "(&card->creg_ctrl.done_work)",
                   & __key___0, 0);
  INIT_LIST_HEAD(& card->creg_ctrl.done_work.entry);
  card->creg_ctrl.done_work.func = & creg_cmd_done;
  __mutex_init(& card->creg_ctrl.reset_lock, "&card->creg_ctrl.reset_lock", & __key___1);
  INIT_LIST_HEAD(& card->creg_ctrl.queue);
  spinlock_check(& card->creg_ctrl.lock);
  __raw_spin_lock_init(& card->creg_ctrl.lock.__annonCompField18.rlock, "&(&card->creg_ctrl.lock)->rlock",
                       & __key___2);
  init_timer_key(& card->creg_ctrl.cmd_timer, 0U, "((&card->creg_ctrl.cmd_timer))",
                 & __key___3);
  card->creg_ctrl.cmd_timer.function = & creg_cmd_timed_out;
  card->creg_ctrl.cmd_timer.data = (unsigned long )card;
  }
  return (0);
}
}
void rsxx_creg_destroy(struct rsxx_cardinfo *card )
{
  struct creg_cmd *cmd ;
  struct creg_cmd *tmp ;
  int cnt ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___0 ;
  {
  {
  cnt = 0;
  ldv_spin_lock_bh_98(& card->creg_ctrl.lock);
  __mptr = (struct list_head const *)card->creg_ctrl.queue.next;
  cmd = (struct creg_cmd *)__mptr;
  __mptr___0 = (struct list_head const *)cmd->list.next;
  tmp = (struct creg_cmd *)__mptr___0;
  }
  goto ldv_34068;
  ldv_34067:
  {
  list_del(& cmd->list);
  }
  if ((unsigned long )cmd->cb != (unsigned long )((void (*)(struct rsxx_cardinfo * ,
                                                            struct creg_cmd * , int ))0)) {
    {
    (*(cmd->cb))(card, cmd, -125);
    }
  } else {
  }
  {
  kmem_cache_free(creg_cmd_pool, (void *)cmd);
  cnt = cnt + 1;
  cmd = tmp;
  __mptr___1 = (struct list_head const *)tmp->list.next;
  tmp = (struct creg_cmd *)__mptr___1;
  }
  ldv_34068: ;
  if ((unsigned long )(& cmd->list) != (unsigned long )(& card->creg_ctrl.queue)) {
    goto ldv_34067;
  } else {
  }
  if (cnt != 0) {
    {
    _dev_info((struct device const *)(& (card->dev)->dev), "Canceled %d queue creg commands\n",
              cnt);
    }
  } else {
  }
  cmd = card->creg_ctrl.active_cmd;
  card->creg_ctrl.active_cmd = (struct creg_cmd *)0;
  if ((unsigned long )cmd != (unsigned long )((struct creg_cmd *)0)) {
    {
    tmp___0 = timer_pending((struct timer_list const *)(& card->creg_ctrl.cmd_timer));
    }
    if (tmp___0 != 0) {
      {
      ldv_del_timer_sync_126(& card->creg_ctrl.cmd_timer);
      }
    } else {
    }
    if ((unsigned long )cmd->cb != (unsigned long )((void (*)(struct rsxx_cardinfo * ,
                                                              struct creg_cmd * ,
                                                              int ))0)) {
      {
      (*(cmd->cb))(card, cmd, -125);
      }
    } else {
    }
    {
    _dev_info((struct device const *)(& (card->dev)->dev), "Canceled active creg command\n");
    kmem_cache_free(creg_cmd_pool, (void *)cmd);
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_99(& card->creg_ctrl.lock);
  cancel_work_sync(& card->creg_ctrl.done_work);
  }
  return;
}
}
int rsxx_creg_init(void)
{
  {
  {
  creg_cmd_pool = kmem_cache_create("creg_cmd", 64UL, 8UL, 8192UL, (void (*)(void * ))0);
  }
  if ((unsigned long )creg_cmd_pool == (unsigned long )((struct kmem_cache *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
void rsxx_creg_cleanup(void)
{
  {
  {
  kmem_cache_destroy(creg_cmd_pool);
  }
  return;
}
}
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 ) ;
void ldv_dispatch_instance_deregister_6_1(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_8_2(struct timer_list *arg0 ) ;
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 ) ;
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 )
{
  struct timer_list *ldv_6_timer_list_timer_list ;
  {
  {
  ldv_6_timer_list_timer_list = arg1;
  ldv_dispatch_instance_deregister_6_1(ldv_6_timer_list_timer_list);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_dispatch_instance_deregister_6_1(struct timer_list *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_instance_register_8_2(struct timer_list *arg0 )
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
static int ldv_mod_timer_96(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
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
static void *ldv_kmem_cache_alloc_97(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
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
__inline static void ldv_spin_lock_bh_98(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_99(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_NOT_ARG_SIGN();
  spin_unlock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_100(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_101(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_NOT_ARG_SIGN();
  spin_unlock(lock);
  }
  return;
}
}
static int ldv_del_timer_sync_104(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___1 ldv_func_res ;
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
static int ldv_mutex_trylock_109(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_mutex_mutex_trylock_reset_lock_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_110(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irq_lock_of_rsxx_cardinfo();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_del_timer_sync_113(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
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
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_115(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irq_lock_of_rsxx_cardinfo();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_117(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_reset_lock_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_init_completion_118(struct completion *x )
{
  {
  {
  ldv_linux_kernel_sched_completion_init_completion_cmd_done();
  }
  return;
}
}
static unsigned long ldv_wait_for_completion_timeout_119(struct completion *ldv_func_arg1 ,
                                                         unsigned long ldv_func_arg2 )
{
  unsigned long tmp ;
  {
  {
  ldv_linux_kernel_sched_completion_wait_for_completion_cmd_done_of_creg_completion();
  tmp = wait_for_completion_timeout(ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp);
}
}
static int ldv_del_timer_sync_120(struct timer_list *ldv_func_arg1 )
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
static int ldv_del_timer_sync_126(struct timer_list *ldv_func_arg1 )
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
int ldv_linux_usb_dev_atomic_dec_and_test(atomic_t *v ) ;
struct gendisk *ldv_linux_block_genhd_alloc_disk(void) ;
void ldv_linux_block_genhd_add_disk(void) ;
void ldv_linux_block_genhd_del_gendisk(void) ;
void ldv_linux_block_genhd_put_disk(struct gendisk *disk ) ;
static void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_100(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_dev_lock_of_rsxx_cardinfo(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_dev_lock_of_rsxx_cardinfo(struct mutex *lock ) ;
struct request_queue *ldv_linux_block_queue_request_queue(void) ;
void ldv_linux_block_queue_blk_cleanup_queue(void) ;
__inline static void __set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void __clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
extern void __might_sleep(char const * , int , int ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static int atomic_dec_and_test(atomic_t *v ) ;
static void ldv_mutex_unlock_99(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_102(struct mutex *ldv_func_arg1 ) ;
static void *ldv_kmem_cache_alloc_96(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern int register_blkdev(unsigned int , char const * ) ;
extern void unregister_blkdev(unsigned int , char const * ) ;
extern void add_disk(struct gendisk * ) ;
static void ldv_add_disk_98(struct gendisk *disk ) ;
extern void del_gendisk(struct gendisk * ) ;
static void ldv_del_gendisk_101(struct gendisk *gp ) ;
__inline static sector_t get_capacity(struct gendisk *disk )
{
  {
  return (disk->part0.nr_sects);
}
}
extern struct gendisk *alloc_disk(int ) ;
static struct gendisk *ldv_alloc_disk_104(int minors ) ;
extern void put_disk(struct gendisk * ) ;
static void ldv_put_disk_106(struct gendisk *disk ) ;
extern void bio_endio(struct bio * , int ) ;
extern void generic_start_io_acct(int , unsigned long , struct hd_struct * ) ;
extern void generic_end_io_acct(int , struct hd_struct * , unsigned long ) ;
__inline static void queue_flag_set_unlocked(unsigned int flag , struct request_queue *q )
{
  {
  {
  __set_bit((long )flag, (unsigned long volatile *)(& q->queue_flags));
  }
  return;
}
}
__inline static void queue_flag_clear_unlocked(unsigned int flag , struct request_queue *q )
{
  {
  {
  __clear_bit((long )flag, (unsigned long volatile *)(& q->queue_flags));
  }
  return;
}
}
extern void blk_cleanup_queue(struct request_queue * ) ;
static void ldv_blk_cleanup_queue_105(struct request_queue *ldv_func_arg1 ) ;
static void ldv_blk_cleanup_queue_107(struct request_queue *ldv_func_arg1 ) ;
extern void blk_queue_make_request(struct request_queue * , make_request_fn * ) ;
extern void blk_queue_bounce_limit(struct request_queue * , u64 ) ;
extern void blk_queue_max_hw_sectors(struct request_queue * , unsigned int ) ;
extern void blk_queue_max_discard_sectors(struct request_queue * , unsigned int ) ;
extern void blk_queue_logical_block_size(struct request_queue * , unsigned short ) ;
extern void blk_queue_physical_block_size(struct request_queue * , unsigned int ) ;
extern void blk_queue_dma_alignment(struct request_queue * , int ) ;
extern struct request_queue *blk_alloc_queue(gfp_t ) ;
static struct request_queue *ldv_blk_alloc_queue_103(gfp_t ldv_func_arg1 ) ;
int rsxx_dma_queue_bio(struct rsxx_cardinfo *card , struct bio *bio , atomic_t *n_dmas ,
                       void (*cb)(struct rsxx_cardinfo * , void * , unsigned int ) ,
                       void *cb_data ) ;
static unsigned int blkdev_minors = 64U;
static unsigned int blkdev_max_hw_sectors = 1024U;
static unsigned int enable_blkdev = 1U;
static struct kmem_cache *bio_meta_pool ;
static int rsxx_blkdev_ioctl(struct block_device *bdev , fmode_t mode , unsigned int cmd ,
                             unsigned long arg )
{
  struct rsxx_cardinfo *card ;
  int tmp ;
  int tmp___0 ;
  {
  card = (struct rsxx_cardinfo *)(bdev->bd_disk)->private_data;
  {
  if (cmd == 3224400416U) {
    goto case_3224400416;
  } else {
  }
  if (cmd == 3224400417U) {
    goto case_3224400417;
  } else {
  }
  goto switch_break;
  case_3224400416:
  {
  tmp = rsxx_reg_access(card, (struct rsxx_reg_access *)arg, 1);
  }
  return (tmp);
  case_3224400417:
  {
  tmp___0 = rsxx_reg_access(card, (struct rsxx_reg_access *)arg, 0);
  }
  return (tmp___0);
  switch_break: ;
  }
  return (-25);
}
}
static int rsxx_getgeo(struct block_device *bdev , struct hd_geometry *geo )
{
  struct rsxx_cardinfo *card ;
  u64 blocks ;
  uint32_t __base ;
  uint32_t __rem ;
  {
  card = (struct rsxx_cardinfo *)(bdev->bd_disk)->private_data;
  blocks = card->size8 >> 9;
  if (card->size8 != 0ULL) {
    geo->heads = 64U;
    geo->sectors = 16U;
    __base = (uint32_t )((int )geo->heads * (int )geo->sectors);
    __rem = (uint32_t )(blocks % (u64 )__base);
    blocks = blocks / (u64 )__base;
    geo->cylinders = (unsigned short )blocks;
  } else {
    geo->heads = 0U;
    geo->sectors = 0U;
    geo->cylinders = 0U;
  }
  return (0);
}
}
static struct block_device_operations const rsxx_fops =
     {0, 0, 0, & rsxx_blkdev_ioctl, 0, 0, 0, 0, 0, 0, & rsxx_getgeo, 0, & __this_module};
static void disk_stats_start(struct rsxx_cardinfo *card , struct bio *bio )
{
  {
  {
  generic_start_io_acct((int )bio->bi_rw & 1, (unsigned long )(bio->bi_iter.bi_size >> 9),
                        & (card->gendisk)->part0);
  }
  return;
}
}
static void disk_stats_complete(struct rsxx_cardinfo *card , struct bio *bio , unsigned long start_time )
{
  {
  {
  generic_end_io_acct((int )bio->bi_rw & 1, & (card->gendisk)->part0, start_time);
  }
  return;
}
}
static void bio_dma_done_cb(struct rsxx_cardinfo *card , void *cb_data , unsigned int error )
{
  struct rsxx_bio_meta *meta ;
  int tmp ;
  int tmp___0 ;
  {
  meta = (struct rsxx_bio_meta *)cb_data;
  if (error != 0U) {
    {
    atomic_set(& meta->error, 1);
    }
  } else {
  }
  {
  tmp___0 = atomic_dec_and_test(& meta->pending_dmas);
  }
  if (tmp___0 != 0) {
    if (card->eeh_state == 0U && (unsigned long )card->gendisk != (unsigned long )((struct gendisk *)0)) {
      {
      disk_stats_complete(card, meta->bio, meta->start_time);
      }
    } else {
    }
    {
    tmp = atomic_read((atomic_t const *)(& meta->error));
    bio_endio(meta->bio, tmp != 0 ? -5 : 0);
    kmem_cache_free(bio_meta_pool, (void *)meta);
    }
  } else {
  }
  return;
}
}
static void rsxx_make_request(struct request_queue *q , struct bio *bio )
{
  struct rsxx_cardinfo *card ;
  struct rsxx_bio_meta *bio_meta ;
  int st ;
  sector_t tmp ;
  long tmp___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor ;
  long tmp___4 ;
  {
  {
  card = (struct rsxx_cardinfo *)q->queuedata;
  st = -22;
  __might_sleep("drivers/block/rsxx/dev.c", 151, 0);
  }
  if ((unsigned long )card == (unsigned long )((struct rsxx_cardinfo *)0)) {
    goto req_err;
  } else {
  }
  {
  tmp = get_capacity(card->gendisk);
  }
  if (bio->bi_iter.bi_sector + (sector_t )(bio->bi_iter.bi_size >> 9) > tmp) {
    goto req_err;
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(card->halt != 0U, 0L);
  }
  if (tmp___0 != 0L) {
    st = -14;
    goto req_err;
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect(card->dma_fault != 0U, 0L);
  }
  if (tmp___1 != 0L) {
    st = -14;
    goto req_err;
  } else {
  }
  if (bio->bi_iter.bi_size == 0U) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "size zero BIO!\n");
    }
    goto req_err;
  } else {
  }
  {
  tmp___2 = ldv_kmem_cache_alloc_96(bio_meta_pool, 208U);
  bio_meta = (struct rsxx_bio_meta *)tmp___2;
  }
  if ((unsigned long )bio_meta == (unsigned long )((struct rsxx_bio_meta *)0)) {
    st = -12;
    goto req_err;
  } else {
  }
  {
  bio_meta->bio = bio;
  atomic_set(& bio_meta->error, 0);
  atomic_set(& bio_meta->pending_dmas, 0);
  bio_meta->start_time = jiffies;
  tmp___3 = ldv__builtin_expect(card->halt != 0U, 0L);
  }
  if (tmp___3 == 0L) {
    {
    disk_stats_start(card, bio);
    }
  } else {
  }
  {
  descriptor.modname = "rsxx";
  descriptor.function = "rsxx_make_request";
  descriptor.filename = "drivers/block/rsxx/dev.c";
  descriptor.format = "BIO[%c]: meta: %p addr8: x%llx size: %d\n";
  descriptor.lineno = 190U;
  descriptor.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (card->dev)->dev),
                      "BIO[%c]: meta: %p addr8: x%llx size: %d\n", (int )bio->bi_rw & 1 ? 87 : 82,
                      bio_meta, (unsigned long long )bio->bi_iter.bi_sector << 9,
                      bio->bi_iter.bi_size);
    }
  } else {
  }
  {
  st = rsxx_dma_queue_bio(card, bio, & bio_meta->pending_dmas, & bio_dma_done_cb,
                          (void *)bio_meta);
  }
  if (st != 0) {
    goto queue_err;
  } else {
  }
  return;
  queue_err:
  {
  kmem_cache_free(bio_meta_pool, (void *)bio_meta);
  }
  req_err:
  {
  bio_endio(bio, st);
  }
  return;
}
}
static bool rsxx_discard_supported(struct rsxx_cardinfo *card )
{
  unsigned char pci_rev ;
  {
  {
  pci_read_config_byte((struct pci_dev const *)card->dev, 8, & pci_rev);
  }
  return ((unsigned int )pci_rev > 1U);
}
}
int rsxx_attach_dev(struct rsxx_cardinfo *card )
{
  {
  {
  ldv_mutex_lock_97(& card->dev_lock);
  }
  if (enable_blkdev != 0U) {
    if (card->config_valid != 0) {
      {
      set_capacity(card->gendisk, (sector_t )(card->size8 >> 9));
      }
    } else {
      {
      set_capacity(card->gendisk, 0UL);
      }
    }
    {
    ldv_add_disk_98(card->gendisk);
    card->bdev_attached = 1;
    }
  } else {
  }
  {
  ldv_mutex_unlock_99(& card->dev_lock);
  }
  return (0);
}
}
void rsxx_detach_dev(struct rsxx_cardinfo *card )
{
  {
  {
  ldv_mutex_lock_100(& card->dev_lock);
  }
  if ((int )card->bdev_attached) {
    {
    ldv_del_gendisk_101(card->gendisk);
    card->bdev_attached = 0;
    }
  } else {
  }
  {
  ldv_mutex_unlock_102(& card->dev_lock);
  }
  return;
}
}
int rsxx_setup_dev(struct rsxx_cardinfo *card )
{
  unsigned short blk_size ;
  struct lock_class_key __key ;
  bool tmp ;
  {
  {
  __mutex_init(& card->dev_lock, "&card->dev_lock", & __key);
  }
  if (enable_blkdev == 0U) {
    return (0);
  } else {
  }
  {
  card->major = register_blkdev(0U, "rsxx");
  }
  if (card->major < 0) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Failed to get major number\n");
    }
    return (-12);
  } else {
  }
  {
  card->queue = ldv_blk_alloc_queue_103(208U);
  }
  if ((unsigned long )card->queue == (unsigned long )((struct request_queue *)0)) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Failed queue alloc\n");
    unregister_blkdev((unsigned int )card->major, "rsxx");
    }
    return (-12);
  } else {
  }
  {
  card->gendisk = ldv_alloc_disk_104((int )blkdev_minors);
  }
  if ((unsigned long )card->gendisk == (unsigned long )((struct gendisk *)0)) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "Failed disk alloc\n");
    ldv_blk_cleanup_queue_105(card->queue);
    unregister_blkdev((unsigned int )card->major, "rsxx");
    }
    return (-12);
  } else {
  }
  if (card->config_valid != 0) {
    {
    blk_size = (unsigned short )card->config.data.block_size;
    blk_queue_dma_alignment(card->queue, (int )blk_size + -1);
    blk_queue_logical_block_size(card->queue, (int )blk_size);
    }
  } else {
  }
  {
  blk_queue_make_request(card->queue, & rsxx_make_request);
  blk_queue_bounce_limit(card->queue, 0xffffffffffffffffULL);
  blk_queue_max_hw_sectors(card->queue, blkdev_max_hw_sectors);
  blk_queue_physical_block_size(card->queue, 4096U);
  queue_flag_set_unlocked(12U, card->queue);
  queue_flag_clear_unlocked(16U, card->queue);
  tmp = rsxx_discard_supported(card);
  }
  if ((int )tmp) {
    {
    queue_flag_set_unlocked(14U, card->queue);
    blk_queue_max_discard_sectors(card->queue, 8U);
    (card->queue)->limits.discard_granularity = 4096U;
    (card->queue)->limits.discard_alignment = 4096U;
    (card->queue)->limits.discard_zeroes_data = 1U;
    }
  } else {
  }
  {
  (card->queue)->queuedata = (void *)card;
  snprintf((char *)(& (card->gendisk)->disk_name), 32UL, "rsxx%d", card->disk_id);
  (card->gendisk)->driverfs_dev = & (card->dev)->dev;
  (card->gendisk)->major = card->major;
  (card->gendisk)->first_minor = 0;
  (card->gendisk)->fops = & rsxx_fops;
  (card->gendisk)->private_data = (void *)card;
  (card->gendisk)->queue = card->queue;
  }
  return (0);
}
}
void rsxx_destroy_dev(struct rsxx_cardinfo *card )
{
  {
  if (enable_blkdev == 0U) {
    return;
  } else {
  }
  {
  ldv_put_disk_106(card->gendisk);
  card->gendisk = (struct gendisk *)0;
  ldv_blk_cleanup_queue_107(card->queue);
  (card->queue)->queuedata = (void *)0;
  unregister_blkdev((unsigned int )card->major, "rsxx");
  }
  return;
}
}
int rsxx_dev_init(void)
{
  {
  {
  bio_meta_pool = kmem_cache_create("rsxx_bio_meta", 24UL, 8UL, 8192UL, (void (*)(void * ))0);
  }
  if ((unsigned long )bio_meta_pool == (unsigned long )((struct kmem_cache *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
void rsxx_dev_cleanup(void)
{
  {
  {
  kmem_cache_destroy(bio_meta_pool);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_20(int (*arg0)(struct block_device * ,
                                                            unsigned int , unsigned int ,
                                                            unsigned long ) , struct block_device *arg1 ,
                                                unsigned int arg2 , unsigned int arg3 ,
                                                unsigned long arg4 )
{
  {
  {
  rsxx_blkdev_ioctl(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_5(int (*arg0)(struct block_device * ,
                                                           struct hd_geometry * ) ,
                                               struct block_device *arg1 , struct hd_geometry *arg2 )
{
  {
  {
  rsxx_getgeo(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_20(int (*arg0)(struct block_device * ,
                                                            unsigned int , unsigned int ,
                                                            unsigned long ) , struct block_device *arg1 ,
                                                unsigned int arg2 , unsigned int arg3 ,
                                                unsigned long arg4 )
{
  {
  {
  rsxx_blkdev_ioctl(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_5(int (*arg0)(struct block_device * ,
                                                           struct hd_geometry * ) ,
                                               struct block_device *arg1 , struct hd_geometry *arg2 )
{
  {
  {
  rsxx_getgeo(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_20(int (*arg0)(struct block_device * ,
                                                            unsigned int , unsigned int ,
                                                            unsigned long ) , struct block_device *arg1 ,
                                                unsigned int arg2 , unsigned int arg3 ,
                                                unsigned long arg4 )
{
  {
  {
  rsxx_blkdev_ioctl(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_5(int (*arg0)(struct block_device * ,
                                                           struct hd_geometry * ) ,
                                               struct block_device *arg1 , struct hd_geometry *arg2 )
{
  {
  {
  rsxx_getgeo(arg1, arg2);
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
static void *ldv_kmem_cache_alloc_96(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
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
static void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_dev_lock_of_rsxx_cardinfo(ldv_func_arg1);
  }
  return;
}
}
static void ldv_add_disk_98(struct gendisk *disk )
{
  {
  {
  ldv_linux_block_genhd_add_disk();
  add_disk(disk);
  }
  return;
}
}
static void ldv_mutex_unlock_99(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_dev_lock_of_rsxx_cardinfo(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_100(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_dev_lock_of_rsxx_cardinfo(ldv_func_arg1);
  }
  return;
}
}
static void ldv_del_gendisk_101(struct gendisk *gp )
{
  {
  {
  ldv_linux_block_genhd_del_gendisk();
  del_gendisk(gp);
  }
  return;
}
}
static void ldv_mutex_unlock_102(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_dev_lock_of_rsxx_cardinfo(ldv_func_arg1);
  }
  return;
}
}
static struct request_queue *ldv_blk_alloc_queue_103(gfp_t ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  struct request_queue *tmp ;
  struct request_queue *tmp___0 ;
  {
  {
  tmp = blk_alloc_queue(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_linux_block_queue_request_queue();
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static struct gendisk *ldv_alloc_disk_104(int minors )
{
  ldv_func_ret_type___6 ldv_func_res ;
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
static void ldv_blk_cleanup_queue_105(struct request_queue *ldv_func_arg1 )
{
  {
  {
  ldv_linux_block_queue_blk_cleanup_queue();
  blk_cleanup_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_put_disk_106(struct gendisk *disk )
{
  {
  {
  ldv_linux_block_genhd_put_disk(disk);
  put_disk(disk);
  }
  return;
}
}
static void ldv_blk_cleanup_queue_107(struct request_queue *ldv_func_arg1 )
{
  {
  {
  ldv_linux_block_queue_blk_cleanup_queue();
  blk_cleanup_queue(ldv_func_arg1);
  }
  return;
}
}
void ldv_linux_usb_dev_atomic_add(int i , atomic_t *v ) ;
void ldv_linux_usb_dev_atomic_sub(int i , atomic_t *v ) ;
void ldv_linux_usb_dev_atomic_inc(atomic_t *v ) ;
void ldv_linux_usb_dev_atomic_dec(atomic_t *v ) ;
static void ldv_mutex_lock_120(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_122(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_work_lock_of_rsxx_dma_ctrl(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_work_lock_of_rsxx_dma_ctrl(struct mutex *lock ) ;
__inline static bool is_power_of_2(unsigned long n )
{
  {
  return ((bool )(n != 0UL && (n & (n - 1UL)) == 0UL));
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
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
__inline static void atomic_add(int i , atomic_t *v ) ;
__inline static void atomic_sub(int i , atomic_t *v ) ;
__inline static void atomic_inc(atomic_t *v ) ;
__inline static void atomic_dec(atomic_t *v ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_112(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_116(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_129(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_dma_tracker_list(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_dma_tracker_list(void) ;
static void ldv_mutex_unlock_121(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_123(struct mutex *ldv_func_arg1 ) ;
__inline static void ldv_spin_lock_96___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_96___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_100(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_100(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_100(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_100(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_100(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_100(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_100(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_97___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_97___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_101(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_101(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_101(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_101(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_101(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_101(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_101(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_101(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_99(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_99(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_99(spinlock_t *lock , unsigned long flags ) ;
static int ldv_mod_timer_102(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_110(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_114(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_del_timer_sync_111(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_sync_115(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_sync_131(struct timer_list *ldv_func_arg1 ) ;
static void *ldv_vmalloc_128(unsigned long ldv_func_arg1 ) ;
extern void vfree(void const * ) ;
static void *ldv_kmem_cache_alloc_124(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
static void *ldv_kmem_cache_alloc_125(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
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
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern struct device x86_dma_fallback_dev ;
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
__inline static int pci_dma_mapping_error(struct pci_dev *pdev , dma_addr_t dma_addr )
{
  int tmp ;
  {
  {
  tmp = dma_mapping_error(& pdev->dev, dma_addr);
  }
  return (tmp);
}
}
__inline static void bvec_iter_advance(struct bio_vec *bv , struct bvec_iter *iter ,
                                       unsigned int bytes )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned int len ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  {
  {
  __ret_warn_once = bytes > iter->bi_size;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp != 0L) {
      {
      warn_slowpath_fmt("include/linux/bio.h", 211, "Attempted to advance past end of bvec iter\n");
      }
    } else {
    }
    {
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  }
  goto ldv_33144;
  ldv_33143:
  _min1 = bytes;
  _min1___0 = iter->bi_size;
  _min2___0 = (bv + (unsigned long )iter->bi_idx)->bv_len - iter->bi_bvec_done;
  _min2 = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  len = _min1 < _min2 ? _min1 : _min2;
  bytes = bytes - len;
  iter->bi_size = iter->bi_size - len;
  iter->bi_bvec_done = iter->bi_bvec_done + len;
  if (iter->bi_bvec_done == (bv + (unsigned long )iter->bi_idx)->bv_len) {
    iter->bi_bvec_done = 0U;
    iter->bi_idx = iter->bi_idx + 1U;
  } else {
  }
  ldv_33144: ;
  if (bytes != 0U) {
    goto ldv_33143;
  } else {
  }
  return;
}
}
__inline static void bio_advance_iter(struct bio *bio , struct bvec_iter *iter , unsigned int bytes )
{
  {
  iter->bi_sector = iter->bi_sector + (sector_t )(bytes >> 9);
  if (((unsigned long long )bio->bi_rw & 640ULL) != 0ULL) {
    iter->bi_size = iter->bi_size - bytes;
  } else {
    {
    bvec_iter_advance(bio->bi_io_vec, iter, bytes);
    }
  }
  return;
}
}
static struct kmem_cache *rsxx_dma_pool ;
static unsigned int rsxx_addr8_to_laddr(u64 addr8 , struct rsxx_cardinfo *card )
{
  unsigned long long tgt_addr8 ;
  uint32_t __base ;
  uint32_t __rem ;
  {
  tgt_addr8 = ((addr8 >> (int )card->_stripe.upper_shift) & card->_stripe.upper_mask) | (addr8 & card->_stripe.lower_mask);
  __base = 4096U;
  __rem = (uint32_t )(tgt_addr8 % (unsigned long long )__base);
  tgt_addr8 = tgt_addr8 / (unsigned long long )__base;
  return ((unsigned int )tgt_addr8);
}
}
static unsigned int rsxx_get_dma_tgt(struct rsxx_cardinfo *card , u64 addr8 )
{
  unsigned int tgt ;
  {
  tgt = (unsigned int )(addr8 >> (int )card->_stripe.target_shift) & (unsigned int )card->_stripe.target_mask;
  return (tgt);
}
}
void rsxx_dma_queue_reset(struct rsxx_cardinfo *card )
{
  {
  {
  iowrite32(1U, card->regmap + 8UL);
  }
  return;
}
}
static unsigned int get_dma_size(struct rsxx_dma *dma )
{
  {
  if (dma->sub_page.cnt != 0U) {
    return (dma->sub_page.cnt << 9);
  } else {
    return (4096U);
  }
}
}
static void set_tracker_dma(struct dma_tracker_list *trackers , int tag , struct rsxx_dma *dma )
{
  {
  trackers->list[tag].dma = dma;
  return;
}
}
static struct rsxx_dma *get_tracker_dma(struct dma_tracker_list *trackers , int tag )
{
  {
  return (trackers->list[tag].dma);
}
}
static int pop_tracker(struct dma_tracker_list *trackers )
{
  int tag ;
  {
  {
  ldv_spin_lock_96___0(& trackers->lock);
  tag = trackers->head;
  }
  if (tag != -1) {
    trackers->head = trackers->list[tag].next_tag;
    trackers->list[tag].next_tag = -1;
  } else {
  }
  {
  ldv_spin_unlock_97___0(& trackers->lock);
  }
  return (tag);
}
}
static void push_tracker(struct dma_tracker_list *trackers , int tag )
{
  {
  {
  ldv_spin_lock_96___0(& trackers->lock);
  trackers->list[tag].next_tag = trackers->head;
  trackers->head = tag;
  trackers->list[tag].dma = (struct rsxx_dma *)0;
  ldv_spin_unlock_97___0(& trackers->lock);
  }
  return;
}
}
static u32 dma_intr_coal_val(u32 mode , u32 count , u32 latency )
{
  u32 latency_units ;
  {
  latency_units = latency / 64U;
  if (mode == 0U) {
    return (0U);
  } else {
  }
  return (((count << 16) & 33488896U) | (latency_units & 65535U));
}
}
static void dma_intr_coal_auto_tune(struct rsxx_cardinfo *card )
{
  int i ;
  u32 q_depth ;
  u32 intr_coal ;
  long tmp ;
  int tmp___0 ;
  {
  q_depth = 0U;
  if (card->config.data.intr_coal.mode != 2U) {
    return;
  } else {
    {
    tmp = ldv__builtin_expect(card->eeh_state != 0U, 0L);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
  }
  i = 0;
  goto ldv_33942;
  ldv_33941:
  {
  tmp___0 = atomic_read((atomic_t const *)(& (card->ctrl + (unsigned long )i)->stats.hw_q_depth));
  q_depth = q_depth + (u32 )tmp___0;
  i = i + 1;
  }
  ldv_33942: ;
  if (i < card->n_targets) {
    goto ldv_33941;
  } else {
  }
  {
  intr_coal = dma_intr_coal_val(card->config.data.intr_coal.mode, q_depth / 2U, card->config.data.intr_coal.latency);
  iowrite32(intr_coal, card->regmap + 112UL);
  }
  return;
}
}
static void rsxx_free_dma(struct rsxx_dma_ctrl *ctrl , struct rsxx_dma *dma )
{
  unsigned int tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )dma->cmd != 112U) {
    {
    tmp___0 = pci_dma_mapping_error((ctrl->card)->dev, dma->dma_addr);
    }
    if (tmp___0 == 0) {
      {
      tmp = get_dma_size(dma);
      pci_unmap_page((ctrl->card)->dev, dma->dma_addr, (size_t )tmp, (unsigned int )dma->cmd == 128U ? 1 : 2);
      }
    } else {
    }
  } else {
  }
  {
  kmem_cache_free(rsxx_dma_pool, (void *)dma);
  }
  return;
}
}
static void rsxx_complete_dma(struct rsxx_dma_ctrl *ctrl , struct rsxx_dma *dma ,
                              unsigned int status )
{
  {
  if ((int )status & 1) {
    ctrl->stats.dma_sw_err = ctrl->stats.dma_sw_err + 1U;
  } else {
  }
  if ((status & 2U) != 0U) {
    ctrl->stats.dma_hw_fault = ctrl->stats.dma_hw_fault + 1U;
  } else {
  }
  if ((status & 4U) != 0U) {
    ctrl->stats.dma_cancelled = ctrl->stats.dma_cancelled + 1U;
  } else {
  }
  if ((unsigned long )dma->cb != (unsigned long )((void (*)(struct rsxx_cardinfo * ,
                                                            void * , unsigned int ))0)) {
    {
    (*(dma->cb))(ctrl->card, dma->cb_data, status != 0U);
    }
  } else {
  }
  {
  rsxx_free_dma(ctrl, dma);
  }
  return;
}
}
int rsxx_cleanup_dma_queue(struct rsxx_dma_ctrl *ctrl , struct list_head *q , unsigned int done )
{
  struct rsxx_dma *dma ;
  struct rsxx_dma *tmp ;
  int cnt ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  cnt = 0;
  __mptr = (struct list_head const *)q->next;
  dma = (struct rsxx_dma *)__mptr;
  __mptr___0 = (struct list_head const *)dma->list.next;
  tmp = (struct rsxx_dma *)__mptr___0;
  goto ldv_33968;
  ldv_33967:
  {
  list_del(& dma->list);
  }
  if ((int )done & 1) {
    {
    rsxx_complete_dma(ctrl, dma, 4U);
    }
  } else {
    {
    rsxx_free_dma(ctrl, dma);
    }
  }
  cnt = cnt + 1;
  dma = tmp;
  __mptr___1 = (struct list_head const *)tmp->list.next;
  tmp = (struct rsxx_dma *)__mptr___1;
  ldv_33968: ;
  if ((unsigned long )(& dma->list) != (unsigned long )q) {
    goto ldv_33967;
  } else {
  }
  return (cnt);
}
}
static void rsxx_requeue_dma(struct rsxx_dma_ctrl *ctrl , struct rsxx_dma *dma )
{
  {
  {
  ldv_spin_lock_bh_100(& ctrl->queue_lock);
  ctrl->stats.sw_q_depth = ctrl->stats.sw_q_depth + 1U;
  list_add(& dma->list, & ctrl->queue);
  ldv_spin_unlock_bh_101(& ctrl->queue_lock);
  }
  return;
}
}
static void rsxx_handle_dma_error(struct rsxx_dma_ctrl *ctrl , struct rsxx_dma *dma ,
                                  u8 hw_st )
{
  unsigned int status ;
  int requeue_cmd ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  status = 0U;
  requeue_cmd = 0;
  descriptor.modname = "rsxx";
  descriptor.function = "rsxx_handle_dma_error";
  descriptor.filename = "drivers/block/rsxx/dma.c";
  descriptor.format = "Handling DMA error(cmd x%02x, laddr x%08x st:x%02x)\n";
  descriptor.lineno = 297U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ctrl->card)->dev)->dev),
                      "Handling DMA error(cmd x%02x, laddr x%08x st:x%02x)\n", (int )dma->cmd,
                      dma->laddr, (int )hw_st);
    }
  } else {
  }
  if ((int )hw_st & 1) {
    ctrl->stats.crc_errors = ctrl->stats.crc_errors + 1U;
  } else {
  }
  if (((int )hw_st & 2) != 0) {
    ctrl->stats.hard_errors = ctrl->stats.hard_errors + 1U;
  } else {
  }
  if (((int )hw_st & 4) != 0) {
    ctrl->stats.soft_errors = ctrl->stats.soft_errors + 1U;
  } else {
  }
  {
  if ((int )dma->cmd == 192) {
    goto case_192;
  } else {
  }
  if ((int )dma->cmd == 224) {
    goto case_224;
  } else {
  }
  if ((int )dma->cmd == 128) {
    goto case_128;
  } else {
  }
  if ((int )dma->cmd == 112) {
    goto case_112;
  } else {
  }
  goto switch_default;
  case_192: ;
  if (((int )hw_st & 3) != 0) {
    if ((ctrl->card)->scrub_hard != 0) {
      dma->cmd = 224U;
      requeue_cmd = 1;
      ctrl->stats.reads_retried = ctrl->stats.reads_retried + 1U;
    } else {
      status = status | 2U;
      ctrl->stats.reads_failed = ctrl->stats.reads_failed + 1U;
    }
  } else
  if (((int )hw_st & 8) != 0) {
    status = status | 2U;
    ctrl->stats.reads_failed = ctrl->stats.reads_failed + 1U;
  } else {
  }
  goto ldv_33984;
  case_224: ;
  if (((int )hw_st & 3) != 0) {
    status = status | 2U;
    ctrl->stats.reads_failed = ctrl->stats.reads_failed + 1U;
  } else {
  }
  goto ldv_33984;
  case_128:
  status = status | 2U;
  ctrl->stats.writes_failed = ctrl->stats.writes_failed + 1U;
  goto ldv_33984;
  case_112:
  status = status | 2U;
  ctrl->stats.discards_failed = ctrl->stats.discards_failed + 1U;
  goto ldv_33984;
  switch_default:
  {
  dev_err((struct device const *)(& ((ctrl->card)->dev)->dev), "Unknown command in DMA!(cmd: x%02x laddr x%08x st: x%02x\n",
          (int )dma->cmd, dma->laddr, (int )hw_st);
  status = status | 1U;
  }
  goto ldv_33984;
  switch_break: ;
  }
  ldv_33984: ;
  if (requeue_cmd != 0) {
    {
    rsxx_requeue_dma(ctrl, dma);
    }
  } else {
    {
    rsxx_complete_dma(ctrl, dma, status);
    }
  }
  return;
}
}
static void dma_engine_stalled(unsigned long data )
{
  struct rsxx_dma_ctrl *ctrl ;
  int cnt ;
  int tmp ;
  long tmp___0 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  {
  {
  ctrl = (struct rsxx_dma_ctrl *)data;
  tmp = atomic_read((atomic_t const *)(& ctrl->stats.hw_q_depth));
  }
  if (tmp == 0) {
    return;
  } else {
    {
    tmp___0 = ldv__builtin_expect((ctrl->card)->eeh_state != 0U, 0L);
    }
    if (tmp___0 != 0L) {
      return;
    } else {
    }
  }
  {
  tmp___3 = ioread32(ctrl->regmap + 44UL);
  }
  if (ctrl->cmd.idx != tmp___3) {
    {
    dev_warn((struct device const *)(& ((ctrl->card)->dev)->dev), "SW_CMD_IDX write was lost, re-writing...\n");
    iowrite32(ctrl->cmd.idx, ctrl->regmap + 44UL);
    tmp___1 = msecs_to_jiffies(10000U);
    ldv_mod_timer_102(& ctrl->activity_timer, (unsigned long )jiffies + tmp___1);
    }
  } else {
    {
    dev_warn((struct device const *)(& ((ctrl->card)->dev)->dev), "DMA channel %d has stalled, faulting interface.\n",
             ctrl->id);
    (ctrl->card)->dma_fault = 1U;
    ldv_spin_lock_104(& ctrl->queue_lock);
    cnt = rsxx_cleanup_dma_queue(ctrl, & ctrl->queue, 1U);
    ldv_spin_unlock_105(& ctrl->queue_lock);
    tmp___2 = rsxx_dma_cancel(ctrl);
    cnt = cnt + tmp___2;
    }
    if (cnt != 0) {
      {
      _dev_info((struct device const *)(& ((ctrl->card)->dev)->dev), "Freed %d queued DMAs on channel %d\n",
                cnt, ctrl->id);
      }
    } else {
    }
  }
  return;
}
}
static void rsxx_issue_dmas(struct rsxx_dma_ctrl *ctrl )
{
  struct rsxx_dma *dma ;
  int tag ;
  int cmds_pending ;
  struct hw_cmd *hw_cmd_buf ;
  int dir ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr ;
  long tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor ;
  long tmp___4 ;
  unsigned long tmp___5 ;
  long tmp___6 ;
  {
  {
  cmds_pending = 0;
  hw_cmd_buf = (struct hw_cmd *)ctrl->cmd.buf;
  tmp = ldv__builtin_expect((ctrl->card)->halt != 0U, 0L);
  }
  if (tmp != 0L) {
    return;
  } else {
    {
    tmp___0 = ldv__builtin_expect((ctrl->card)->eeh_state != 0U, 0L);
    }
    if (tmp___0 != 0L) {
      return;
    } else {
    }
  }
  ldv_34008:
  {
  ldv_spin_lock_bh_100(& ctrl->queue_lock);
  tmp___1 = list_empty((struct list_head const *)(& ctrl->queue));
  }
  if (tmp___1 != 0) {
    {
    ldv_spin_unlock_bh_101(& ctrl->queue_lock);
    }
    goto ldv_34002;
  } else {
  }
  {
  ldv_spin_unlock_bh_101(& ctrl->queue_lock);
  tag = pop_tracker(ctrl->trackers);
  }
  if (tag == -1) {
    goto ldv_34002;
  } else {
  }
  {
  ldv_spin_lock_bh_100(& ctrl->queue_lock);
  __mptr = (struct list_head const *)ctrl->queue.next;
  dma = (struct rsxx_dma *)__mptr;
  list_del(& dma->list);
  ctrl->stats.sw_q_depth = ctrl->stats.sw_q_depth - 1U;
  ldv_spin_unlock_bh_101(& ctrl->queue_lock);
  tmp___2 = ldv__builtin_expect((ctrl->card)->dma_fault != 0U, 0L);
  }
  if (tmp___2 != 0L) {
    {
    push_tracker(ctrl->trackers, tag);
    rsxx_complete_dma(ctrl, dma, 4U);
    }
    goto ldv_34005;
  } else {
  }
  if ((unsigned int )dma->cmd != 112U) {
    if ((unsigned int )dma->cmd == 128U) {
      dir = 1;
    } else {
      dir = 2;
    }
    {
    dma->dma_addr = pci_map_page((ctrl->card)->dev, dma->page, (unsigned long )dma->pg_off,
                                 (size_t )(dma->sub_page.cnt << 9), dir);
    tmp___3 = pci_dma_mapping_error((ctrl->card)->dev, dma->dma_addr);
    }
    if (tmp___3 != 0) {
      {
      push_tracker(ctrl->trackers, tag);
      rsxx_complete_dma(ctrl, dma, 4U);
      }
      goto ldv_34005;
    } else {
    }
  } else {
  }
  {
  set_tracker_dma(ctrl->trackers, tag, dma);
  (hw_cmd_buf + (unsigned long )ctrl->cmd.idx)->command = dma->cmd;
  (hw_cmd_buf + (unsigned long )ctrl->cmd.idx)->tag = (u8 )tag;
  (hw_cmd_buf + (unsigned long )ctrl->cmd.idx)->_rsvd = 0U;
  (hw_cmd_buf + (unsigned long )ctrl->cmd.idx)->sub_page = (((unsigned int )((u8 )dma->sub_page.cnt) & 7U) << 4U) | ((unsigned int )((u8 )dma->sub_page.off) & 7U);
  (hw_cmd_buf + (unsigned long )ctrl->cmd.idx)->device_addr = dma->laddr;
  (hw_cmd_buf + (unsigned long )ctrl->cmd.idx)->host_addr = dma->dma_addr;
  descriptor.modname = "rsxx";
  descriptor.function = "rsxx_issue_dmas";
  descriptor.filename = "drivers/block/rsxx/dma.c";
  descriptor.format = "Issue DMA%d(laddr %d tag %d) to idx %d\n";
  descriptor.lineno = 480U;
  descriptor.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ctrl->card)->dev)->dev),
                      "Issue DMA%d(laddr %d tag %d) to idx %d\n", ctrl->id, dma->laddr,
                      tag, ctrl->cmd.idx);
    }
  } else {
  }
  ctrl->cmd.idx = (ctrl->cmd.idx + 1U) & 255U;
  cmds_pending = cmds_pending + 1;
  if ((unsigned int )dma->cmd == 128U) {
    ctrl->stats.writes_issued = ctrl->stats.writes_issued + 1U;
  } else
  if ((unsigned int )dma->cmd == 112U) {
    ctrl->stats.discards_issued = ctrl->stats.discards_issued + 1U;
  } else {
    ctrl->stats.reads_issued = ctrl->stats.reads_issued + 1U;
  }
  ldv_34005: ;
  goto ldv_34008;
  ldv_34002: ;
  if (cmds_pending != 0) {
    {
    atomic_add(cmds_pending, & ctrl->stats.hw_q_depth);
    tmp___5 = msecs_to_jiffies(10000U);
    ldv_mod_timer_110(& ctrl->activity_timer, (unsigned long )jiffies + tmp___5);
    tmp___6 = ldv__builtin_expect((ctrl->card)->eeh_state != 0U, 0L);
    }
    if (tmp___6 != 0L) {
      {
      ldv_del_timer_sync_111(& ctrl->activity_timer);
      }
      return;
    } else {
    }
    {
    iowrite32(ctrl->cmd.idx, ctrl->regmap + 44UL);
    }
  } else {
  }
  return;
}
}
static void rsxx_dma_done(struct rsxx_dma_ctrl *ctrl )
{
  struct rsxx_dma *dma ;
  unsigned long flags ;
  u16 count ;
  u8 status ;
  u8 tag ;
  struct hw_status *hw_st_buf ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  unsigned long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  hw_st_buf = (struct hw_status *)ctrl->status.buf;
  tmp = ldv__builtin_expect((ctrl->card)->halt != 0U, 0L);
  }
  if (tmp != 0L) {
    return;
  } else {
    {
    tmp___0 = ldv__builtin_expect((ctrl->card)->dma_fault != 0U, 0L);
    }
    if (tmp___0 != 0L) {
      return;
    } else {
      {
      tmp___1 = ldv__builtin_expect((ctrl->card)->eeh_state != 0U, 0L);
      }
      if (tmp___1 != 0L) {
        return;
      } else {
      }
    }
  }
  count = (hw_st_buf + (unsigned long )ctrl->status.idx)->count;
  goto ldv_34021;
  ldv_34020:
  {
  __asm__ volatile ("lfence": : : "memory");
  status = (hw_st_buf + (unsigned long )ctrl->status.idx)->status;
  tag = (hw_st_buf + (unsigned long )ctrl->status.idx)->tag;
  dma = get_tracker_dma(ctrl->trackers, (int )tag);
  }
  if ((unsigned long )dma == (unsigned long )((struct rsxx_dma *)0)) {
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_112(& (ctrl->card)->irq_lock);
    rsxx_disable_ier(ctrl->card, 1013U);
    ldv_spin_unlock_irqrestore_99(& (ctrl->card)->irq_lock, flags);
    dev_err((struct device const *)(& ((ctrl->card)->dev)->dev), "No tracker for tag %d (idx %d id %d)\n",
            (int )tag, ctrl->status.idx, ctrl->id);
    }
    return;
  } else {
  }
  {
  descriptor.modname = "rsxx";
  descriptor.function = "rsxx_dma_done";
  descriptor.filename = "drivers/block/rsxx/dma.c";
  descriptor.format = "Completing DMA%d(laddr x%x tag %d st: x%x cnt: x%04x) from idx %d.\n";
  descriptor.lineno = 556U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ctrl->card)->dev)->dev),
                      "Completing DMA%d(laddr x%x tag %d st: x%x cnt: x%04x) from idx %d.\n",
                      ctrl->id, dma->laddr, (int )tag, (int )status, (int )count,
                      ctrl->status.idx);
    }
  } else {
  }
  {
  atomic_dec(& ctrl->stats.hw_q_depth);
  tmp___3 = msecs_to_jiffies(10000U);
  ldv_mod_timer_114(& ctrl->activity_timer, (unsigned long )jiffies + tmp___3);
  }
  if ((unsigned int )status != 0U) {
    {
    rsxx_handle_dma_error(ctrl, dma, (int )status);
    }
  } else {
    {
    rsxx_complete_dma(ctrl, dma, 0U);
    }
  }
  {
  push_tracker(ctrl->trackers, (int )tag);
  ctrl->status.idx = (ctrl->status.idx + 1U) & 255U;
  ctrl->e_cnt = (u16 )((int )ctrl->e_cnt + 1);
  count = (hw_st_buf + (unsigned long )ctrl->status.idx)->count;
  }
  ldv_34021: ;
  if ((int )count == (int )ctrl->e_cnt) {
    goto ldv_34020;
  } else {
  }
  {
  dma_intr_coal_auto_tune(ctrl->card);
  tmp___4 = atomic_read((atomic_t const *)(& ctrl->stats.hw_q_depth));
  }
  if (tmp___4 == 0) {
    {
    ldv_del_timer_sync_115(& ctrl->activity_timer);
    }
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_116(& (ctrl->card)->irq_lock);
  tmp___5 = CR_INTR_DMA(ctrl->id);
  rsxx_enable_ier(ctrl->card, (unsigned int )tmp___5);
  ldv_spin_unlock_irqrestore_99(& (ctrl->card)->irq_lock, flags);
  ldv_spin_lock_bh_100(& ctrl->queue_lock);
  }
  if (ctrl->stats.sw_q_depth != 0U) {
    {
    queue_work(ctrl->issue_wq, & ctrl->issue_dma_work);
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_101(& ctrl->queue_lock);
  }
  return;
}
}
static void rsxx_schedule_issue(struct work_struct *work )
{
  struct rsxx_dma_ctrl *ctrl ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)work;
  ctrl = (struct rsxx_dma_ctrl *)__mptr + 0xffffffffffffff50UL;
  ldv_mutex_lock_120(& ctrl->work_lock);
  rsxx_issue_dmas(ctrl);
  ldv_mutex_unlock_121(& ctrl->work_lock);
  }
  return;
}
}
static void rsxx_schedule_done(struct work_struct *work )
{
  struct rsxx_dma_ctrl *ctrl ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)work;
  ctrl = (struct rsxx_dma_ctrl *)__mptr + 0xfffffffffffffef8UL;
  ldv_mutex_lock_122(& ctrl->work_lock);
  rsxx_dma_done(ctrl);
  ldv_mutex_unlock_123(& ctrl->work_lock);
  }
  return;
}
}
static int rsxx_queue_discard(struct rsxx_cardinfo *card , struct list_head *q , unsigned int laddr ,
                              void (*cb)(struct rsxx_cardinfo * , void * , unsigned int ) ,
                              void *cb_data )
{
  struct rsxx_dma *dma ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = ldv_kmem_cache_alloc_124(rsxx_dma_pool, 208U);
  dma = (struct rsxx_dma *)tmp;
  }
  if ((unsigned long )dma == (unsigned long )((struct rsxx_dma *)0)) {
    return (-12);
  } else {
  }
  {
  dma->cmd = 112U;
  dma->laddr = laddr;
  dma->dma_addr = 0ULL;
  dma->sub_page.off = 0U;
  dma->sub_page.cnt = 0U;
  dma->page = (struct page *)0;
  dma->pg_off = 0U;
  dma->cb = cb;
  dma->cb_data = cb_data;
  descriptor.modname = "rsxx";
  descriptor.function = "rsxx_queue_discard";
  descriptor.filename = "drivers/block/rsxx/dma.c";
  descriptor.format = "Queuing[D] laddr %x\n";
  descriptor.lineno = 636U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (card->dev)->dev),
                      "Queuing[D] laddr %x\n", dma->laddr);
    }
  } else {
  }
  {
  list_add_tail(& dma->list, q);
  }
  return (0);
}
}
static int rsxx_queue_dma(struct rsxx_cardinfo *card , struct list_head *q , int dir ,
                          unsigned int dma_off , unsigned int dma_len , unsigned int laddr ,
                          struct page *page , unsigned int pg_off , void (*cb)(struct rsxx_cardinfo * ,
                                                                               void * ,
                                                                               unsigned int ) ,
                          void *cb_data )
{
  struct rsxx_dma *dma ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = ldv_kmem_cache_alloc_125(rsxx_dma_pool, 208U);
  dma = (struct rsxx_dma *)tmp;
  }
  if ((unsigned long )dma == (unsigned long )((struct rsxx_dma *)0)) {
    return (-12);
  } else {
  }
  {
  dma->cmd = dir != 0 ? 128U : 192U;
  dma->laddr = laddr;
  dma->sub_page.off = dma_off >> 9;
  dma->sub_page.cnt = dma_len >> 9;
  dma->page = page;
  dma->pg_off = pg_off;
  dma->cb = cb;
  dma->cb_data = cb_data;
  descriptor.modname = "rsxx";
  descriptor.function = "rsxx_queue_dma";
  descriptor.filename = "drivers/block/rsxx/dma.c";
  descriptor.format = "Queuing[%c] laddr %x off %d cnt %d page %p pg_off %d\n";
  descriptor.lineno = 672U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (card->dev)->dev),
                      "Queuing[%c] laddr %x off %d cnt %d page %p pg_off %d\n", dir != 0 ? 87 : 82,
                      dma->laddr, dma->sub_page.off, dma->sub_page.cnt, dma->page,
                      dma->pg_off);
    }
  } else {
  }
  {
  list_add_tail(& dma->list, q);
  }
  return (0);
}
}
int rsxx_dma_queue_bio(struct rsxx_cardinfo *card , struct bio *bio , atomic_t *n_dmas ,
                       void (*cb)(struct rsxx_cardinfo * , void * , unsigned int ) ,
                       void *cb_data )
{
  struct list_head dma_list[8U] ;
  struct bio_vec bvec ;
  struct bvec_iter iter ;
  unsigned long long addr8 ;
  unsigned int laddr ;
  unsigned int bv_len ;
  unsigned int bv_off ;
  unsigned int dma_off ;
  unsigned int dma_len ;
  int dma_cnt[8U] ;
  int tgt ;
  int st ;
  int i ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  struct bio_vec __constr_expr_0 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  int tmp___1 ;
  {
  {
  addr8 = (unsigned long long )(bio->bi_iter.bi_sector << 9);
  atomic_set(n_dmas, 0);
  i = 0;
  }
  goto ldv_34081;
  ldv_34080:
  {
  INIT_LIST_HEAD((struct list_head *)(& dma_list) + (unsigned long )i);
  dma_cnt[i] = 0;
  i = i + 1;
  }
  ldv_34081: ;
  if (i < card->n_targets) {
    goto ldv_34080;
  } else {
  }
  if (((unsigned long long )bio->bi_rw & 128ULL) != 0ULL) {
    bv_len = bio->bi_iter.bi_size;
    goto ldv_34085;
    ldv_34084:
    {
    tmp = rsxx_get_dma_tgt(card, addr8);
    tgt = (int )tmp;
    laddr = rsxx_addr8_to_laddr(addr8, card);
    st = rsxx_queue_discard(card, (struct list_head *)(& dma_list) + (unsigned long )tgt,
                            laddr, cb, cb_data);
    }
    if (st != 0) {
      goto bvec_err;
    } else {
    }
    {
    dma_cnt[tgt] = dma_cnt[tgt] + 1;
    atomic_inc(n_dmas);
    addr8 = addr8 + 4096ULL;
    bv_len = bv_len - 4096U;
    }
    ldv_34085: ;
    if (bv_len != 0U) {
      goto ldv_34084;
    } else {
    }
  } else {
    iter = bio->bi_iter;
    goto ldv_34098;
    ldv_34097:
    bv_len = bvec.bv_len;
    bv_off = bvec.bv_offset;
    goto ldv_34095;
    ldv_34094:
    {
    tmp___0 = rsxx_get_dma_tgt(card, addr8);
    tgt = (int )tmp___0;
    laddr = rsxx_addr8_to_laddr(addr8, card);
    dma_off = (unsigned int )addr8 & 4095U;
    _min1 = bv_len;
    _min2 = 4096U - dma_off;
    dma_len = _min1 < _min2 ? _min1 : _min2;
    st = rsxx_queue_dma(card, (struct list_head *)(& dma_list) + (unsigned long )tgt,
                        (int )bio->bi_rw & 1, dma_off, dma_len, laddr, bvec.bv_page,
                        bv_off, cb, cb_data);
    }
    if (st != 0) {
      goto bvec_err;
    } else {
    }
    {
    dma_cnt[tgt] = dma_cnt[tgt] + 1;
    atomic_inc(n_dmas);
    addr8 = addr8 + (unsigned long long )dma_len;
    bv_off = bv_off + dma_len;
    bv_len = bv_len - dma_len;
    }
    ldv_34095: ;
    if (bv_len != 0U) {
      goto ldv_34094;
    } else {
    }
    {
    bio_advance_iter(bio, & iter, bvec.bv_len);
    }
    ldv_34098: ;
    if (iter.bi_size != 0U) {
      _min1___0 = iter.bi_size;
      _min2___0 = (bio->bi_io_vec + (unsigned long )iter.bi_idx)->bv_len - iter.bi_bvec_done;
      __constr_expr_0.bv_page = (bio->bi_io_vec + (unsigned long )iter.bi_idx)->bv_page;
      __constr_expr_0.bv_len = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
      __constr_expr_0.bv_offset = (bio->bi_io_vec + (unsigned long )iter.bi_idx)->bv_offset + iter.bi_bvec_done;
      bvec = __constr_expr_0;
      goto ldv_34097;
    } else {
    }
  }
  i = 0;
  goto ldv_34101;
  ldv_34100:
  {
  tmp___1 = list_empty((struct list_head const *)(& dma_list) + (unsigned long )i);
  }
  if (tmp___1 == 0) {
    {
    ldv_spin_lock_bh_100(& (card->ctrl + (unsigned long )i)->queue_lock);
    (card->ctrl + (unsigned long )i)->stats.sw_q_depth = (card->ctrl + (unsigned long )i)->stats.sw_q_depth + (u32 )dma_cnt[i];
    list_splice_tail((struct list_head *)(& dma_list) + (unsigned long )i, & (card->ctrl + (unsigned long )i)->queue);
    ldv_spin_unlock_bh_101(& (card->ctrl + (unsigned long )i)->queue_lock);
    queue_work((card->ctrl + (unsigned long )i)->issue_wq, & (card->ctrl + (unsigned long )i)->issue_dma_work);
    }
  } else {
  }
  i = i + 1;
  ldv_34101: ;
  if (i < card->n_targets) {
    goto ldv_34100;
  } else {
  }
  return (0);
  bvec_err:
  i = 0;
  goto ldv_34104;
  ldv_34103:
  {
  rsxx_cleanup_dma_queue(card->ctrl + (unsigned long )i, (struct list_head *)(& dma_list) + (unsigned long )i,
                         0U);
  i = i + 1;
  }
  ldv_34104: ;
  if (i < card->n_targets) {
    goto ldv_34103;
  } else {
  }
  return (st);
}
}
int rsxx_hw_buffers_init(struct pci_dev *dev , struct rsxx_dma_ctrl *ctrl )
{
  {
  {
  ctrl->status.buf = pci_alloc_consistent(dev, 4096UL, & ctrl->status.dma_addr);
  ctrl->cmd.buf = pci_alloc_consistent(dev, 4096UL, & ctrl->cmd.dma_addr);
  }
  if ((unsigned long )ctrl->status.buf == (unsigned long )((void *)0) || (unsigned long )ctrl->cmd.buf == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  {
  memset(ctrl->status.buf, 172, 4096UL);
  iowrite32((unsigned int )ctrl->status.dma_addr, ctrl->regmap + 48UL);
  iowrite32((unsigned int )(ctrl->status.dma_addr >> 32ULL), ctrl->regmap + 52UL);
  memset(ctrl->cmd.buf, 131, 4096UL);
  iowrite32((unsigned int )ctrl->cmd.dma_addr, ctrl->regmap + 32UL);
  iowrite32((unsigned int )(ctrl->cmd.dma_addr >> 32ULL), ctrl->regmap + 36UL);
  ctrl->status.idx = ioread32(ctrl->regmap + 56UL);
  }
  if (ctrl->status.idx > 255U) {
    {
    dev_crit((struct device const *)(& dev->dev), "Failed reading status cnt x%x\n",
             ctrl->status.idx);
    }
    return (-22);
  } else {
  }
  {
  iowrite32(ctrl->status.idx, ctrl->regmap + 56UL);
  iowrite32(ctrl->status.idx, ctrl->regmap + 60UL);
  ctrl->cmd.idx = ioread32(ctrl->regmap + 40UL);
  }
  if (ctrl->cmd.idx > 255U) {
    {
    dev_crit((struct device const *)(& dev->dev), "Failed reading cmd cnt x%x\n",
             ctrl->status.idx);
    }
    return (-22);
  } else {
  }
  {
  iowrite32(ctrl->cmd.idx, ctrl->regmap + 40UL);
  iowrite32(ctrl->cmd.idx, ctrl->regmap + 44UL);
  }
  return (0);
}
}
static int rsxx_dma_ctrl_init(struct pci_dev *dev , struct rsxx_dma_ctrl *ctrl )
{
  int i ;
  int st ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___0 ;
  struct lock_class_key __key___4 ;
  char const *__lock_name___0 ;
  struct workqueue_struct *tmp___1 ;
  struct lock_class_key __key___5 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___6 ;
  atomic_long_t __constr_expr_1 ;
  {
  {
  memset((void *)(& ctrl->stats), 0, 68UL);
  tmp = ldv_vmalloc_128(4160UL);
  ctrl->trackers = (struct dma_tracker_list *)tmp;
  }
  if ((unsigned long )ctrl->trackers == (unsigned long )((struct dma_tracker_list *)0)) {
    return (-12);
  } else {
  }
  (ctrl->trackers)->head = 0;
  i = 0;
  goto ldv_34117;
  ldv_34116:
  (ctrl->trackers)->list[i].next_tag = i + 1;
  (ctrl->trackers)->list[i].dma = (struct rsxx_dma *)0;
  i = i + 1;
  ldv_34117: ;
  if (i <= 254) {
    goto ldv_34116;
  } else {
  }
  {
  (ctrl->trackers)->list[254].next_tag = -1;
  spinlock_check(& (ctrl->trackers)->lock);
  __raw_spin_lock_init(& (ctrl->trackers)->lock.__annonCompField18.rlock, "&(&ctrl->trackers->lock)->rlock",
                       & __key);
  spinlock_check(& ctrl->queue_lock);
  __raw_spin_lock_init(& ctrl->queue_lock.__annonCompField18.rlock, "&(&ctrl->queue_lock)->rlock",
                       & __key___0);
  __mutex_init(& ctrl->work_lock, "&ctrl->work_lock", & __key___1);
  INIT_LIST_HEAD(& ctrl->queue);
  init_timer_key(& ctrl->activity_timer, 0U, "((&ctrl->activity_timer))", & __key___2);
  ctrl->activity_timer.function = & dma_engine_stalled;
  ctrl->activity_timer.data = (unsigned long )ctrl;
  __lock_name = "\"rsxx\"\"_issue\"";
  tmp___0 = __alloc_workqueue_key("rsxx_issue", 131074U, 1, & __key___3, __lock_name);
  ctrl->issue_wq = tmp___0;
  }
  if ((unsigned long )ctrl->issue_wq == (unsigned long )((struct workqueue_struct *)0)) {
    return (-12);
  } else {
  }
  {
  __lock_name___0 = "\"rsxx\"\"_done\"";
  tmp___1 = __alloc_workqueue_key("rsxx_done", 131074U, 1, & __key___4, __lock_name___0);
  ctrl->done_wq = tmp___1;
  }
  if ((unsigned long )ctrl->done_wq == (unsigned long )((struct workqueue_struct *)0)) {
    return (-12);
  } else {
  }
  {
  __init_work(& ctrl->issue_dma_work, 0);
  __constr_expr_0.counter = 137438953408L;
  ctrl->issue_dma_work.data = __constr_expr_0;
  lockdep_init_map(& ctrl->issue_dma_work.lockdep_map, "(&ctrl->issue_dma_work)",
                   & __key___5, 0);
  INIT_LIST_HEAD(& ctrl->issue_dma_work.entry);
  ctrl->issue_dma_work.func = & rsxx_schedule_issue;
  __init_work(& ctrl->dma_done_work, 0);
  __constr_expr_1.counter = 137438953408L;
  ctrl->dma_done_work.data = __constr_expr_1;
  lockdep_init_map(& ctrl->dma_done_work.lockdep_map, "(&ctrl->dma_done_work)", & __key___6,
                   0);
  INIT_LIST_HEAD(& ctrl->dma_done_work.entry);
  ctrl->dma_done_work.func = & rsxx_schedule_done;
  st = rsxx_hw_buffers_init(dev, ctrl);
  }
  if (st != 0) {
    return (st);
  } else {
  }
  return (0);
}
}
static int rsxx_dma_stripe_setup(struct rsxx_cardinfo *card , unsigned int stripe_size8 )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor ;
  long tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  struct _ddebug descriptor___1 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  long tmp___7 ;
  {
  {
  tmp = is_power_of_2((unsigned long )stripe_size8);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    dev_err((struct device const *)(& (card->dev)->dev), "stripe_size is NOT a power of 2!\n");
    }
    return (-22);
  } else {
  }
  {
  card->_stripe.lower_mask = (u64 )(stripe_size8 - 1U);
  card->_stripe.upper_mask = ~ card->_stripe.lower_mask;
  tmp___1 = ffs(card->n_targets);
  card->_stripe.upper_shift = (u64 )(tmp___1 + -1);
  card->_stripe.target_mask = (u64 )(card->n_targets + -1);
  tmp___2 = ffs((int )stripe_size8);
  card->_stripe.target_shift = (u64 )(tmp___2 + -1);
  descriptor.modname = "rsxx";
  descriptor.function = "rsxx_dma_stripe_setup";
  descriptor.filename = "drivers/block/rsxx/dma.c";
  descriptor.format = "_stripe.lower_mask   = x%016llx\n";
  descriptor.lineno = 881U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (card->dev)->dev),
                      "_stripe.lower_mask   = x%016llx\n", card->_stripe.lower_mask);
    }
  } else {
  }
  {
  descriptor___0.modname = "rsxx";
  descriptor___0.function = "rsxx_dma_stripe_setup";
  descriptor___0.filename = "drivers/block/rsxx/dma.c";
  descriptor___0.format = "_stripe.upper_shift  = x%016llx\n";
  descriptor___0.lineno = 883U;
  descriptor___0.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (card->dev)->dev),
                      "_stripe.upper_shift  = x%016llx\n", card->_stripe.upper_shift);
    }
  } else {
  }
  {
  descriptor___1.modname = "rsxx";
  descriptor___1.function = "rsxx_dma_stripe_setup";
  descriptor___1.filename = "drivers/block/rsxx/dma.c";
  descriptor___1.format = "_stripe.upper_mask   = x%016llx\n";
  descriptor___1.lineno = 885U;
  descriptor___1.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& (card->dev)->dev),
                      "_stripe.upper_mask   = x%016llx\n", card->_stripe.upper_mask);
    }
  } else {
  }
  {
  descriptor___2.modname = "rsxx";
  descriptor___2.function = "rsxx_dma_stripe_setup";
  descriptor___2.filename = "drivers/block/rsxx/dma.c";
  descriptor___2.format = "_stripe.target_mask  = x%016llx\n";
  descriptor___2.lineno = 887U;
  descriptor___2.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___6 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)(& (card->dev)->dev),
                      "_stripe.target_mask  = x%016llx\n", card->_stripe.target_mask);
    }
  } else {
  }
  {
  descriptor___3.modname = "rsxx";
  descriptor___3.function = "rsxx_dma_stripe_setup";
  descriptor___3.filename = "drivers/block/rsxx/dma.c";
  descriptor___3.format = "_stripe.target_shift = x%016llx\n";
  descriptor___3.lineno = 889U;
  descriptor___3.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___7 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)(& (card->dev)->dev),
                      "_stripe.target_shift = x%016llx\n", card->_stripe.target_shift);
    }
  } else {
  }
  return (0);
}
}
int rsxx_dma_configure(struct rsxx_cardinfo *card )
{
  u32 intr_coal ;
  int tmp ;
  {
  {
  intr_coal = dma_intr_coal_val(card->config.data.intr_coal.mode, card->config.data.intr_coal.count,
                                card->config.data.intr_coal.latency);
  iowrite32(intr_coal, card->regmap + 112UL);
  tmp = rsxx_dma_stripe_setup(card, card->config.data.stripe_size);
  }
  return (tmp);
}
}
int rsxx_dma_setup(struct rsxx_cardinfo *card )
{
  unsigned long flags ;
  int st ;
  int i ;
  int tmp ;
  struct rsxx_dma_ctrl *ctrl ;
  {
  {
  _dev_info((struct device const *)(& (card->dev)->dev), "Initializing %d DMA targets\n",
            card->n_targets);
  i = 0;
  }
  goto ldv_34154;
  ldv_34153:
  (card->ctrl + (unsigned long )i)->regmap = card->regmap + (unsigned long )(i * 4096);
  i = i + 1;
  ldv_34154: ;
  if (i < card->n_targets) {
    goto ldv_34153;
  } else {
  }
  {
  card->dma_fault = 0U;
  rsxx_dma_queue_reset(card);
  i = 0;
  }
  goto ldv_34158;
  ldv_34157:
  {
  st = rsxx_dma_ctrl_init(card->dev, card->ctrl + (unsigned long )i);
  }
  if (st != 0) {
    goto failed_dma_setup;
  } else {
  }
  (card->ctrl + (unsigned long )i)->card = card;
  (card->ctrl + (unsigned long )i)->id = i;
  i = i + 1;
  ldv_34158: ;
  if (i < card->n_targets) {
    goto ldv_34157;
  } else {
  }
  card->scrub_hard = 1;
  if (card->config_valid != 0) {
    {
    rsxx_dma_configure(card);
    }
  } else {
  }
  i = 0;
  goto ldv_34161;
  ldv_34160:
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_129(& card->irq_lock);
  tmp = CR_INTR_DMA(i);
  rsxx_enable_ier_and_isr(card, (unsigned int )tmp);
  ldv_spin_unlock_irqrestore_99(& card->irq_lock, flags);
  i = i + 1;
  }
  ldv_34161: ;
  if (i < card->n_targets) {
    goto ldv_34160;
  } else {
  }
  return (0);
  failed_dma_setup:
  i = 0;
  goto ldv_34165;
  ldv_34164:
  ctrl = card->ctrl + (unsigned long )i;
  if ((unsigned long )ctrl->issue_wq != (unsigned long )((struct workqueue_struct *)0)) {
    {
    destroy_workqueue(ctrl->issue_wq);
    ctrl->issue_wq = (struct workqueue_struct *)0;
    }
  } else {
  }
  if ((unsigned long )ctrl->done_wq != (unsigned long )((struct workqueue_struct *)0)) {
    {
    destroy_workqueue(ctrl->done_wq);
    ctrl->done_wq = (struct workqueue_struct *)0;
    }
  } else {
  }
  if ((unsigned long )ctrl->trackers != (unsigned long )((struct dma_tracker_list *)0)) {
    {
    vfree((void const *)ctrl->trackers);
    }
  } else {
  }
  if ((unsigned long )ctrl->status.buf != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(card->dev, 4096UL, ctrl->status.buf, ctrl->status.dma_addr);
    }
  } else {
  }
  if ((unsigned long )ctrl->cmd.buf != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(card->dev, 4096UL, ctrl->cmd.buf, ctrl->cmd.dma_addr);
    }
  } else {
  }
  i = i + 1;
  ldv_34165: ;
  if (i < card->n_targets) {
    goto ldv_34164;
  } else {
  }
  return (st);
}
}
int rsxx_dma_cancel(struct rsxx_dma_ctrl *ctrl )
{
  struct rsxx_dma *dma ;
  int i ;
  int cnt ;
  {
  cnt = 0;
  i = 0;
  goto ldv_34174;
  ldv_34173:
  {
  dma = get_tracker_dma(ctrl->trackers, i);
  }
  if ((unsigned long )dma != (unsigned long )((struct rsxx_dma *)0)) {
    {
    atomic_dec(& ctrl->stats.hw_q_depth);
    rsxx_complete_dma(ctrl, dma, 4U);
    push_tracker(ctrl->trackers, i);
    cnt = cnt + 1;
    }
  } else {
  }
  i = i + 1;
  ldv_34174: ;
  if (i <= 254) {
    goto ldv_34173;
  } else {
  }
  return (cnt);
}
}
void rsxx_dma_destroy(struct rsxx_cardinfo *card )
{
  struct rsxx_dma_ctrl *ctrl ;
  int i ;
  int tmp ;
  {
  i = 0;
  goto ldv_34182;
  ldv_34181:
  ctrl = card->ctrl + (unsigned long )i;
  if ((unsigned long )ctrl->issue_wq != (unsigned long )((struct workqueue_struct *)0)) {
    {
    destroy_workqueue(ctrl->issue_wq);
    ctrl->issue_wq = (struct workqueue_struct *)0;
    }
  } else {
  }
  if ((unsigned long )ctrl->done_wq != (unsigned long )((struct workqueue_struct *)0)) {
    {
    destroy_workqueue(ctrl->done_wq);
    ctrl->done_wq = (struct workqueue_struct *)0;
    }
  } else {
  }
  {
  tmp = timer_pending((struct timer_list const *)(& ctrl->activity_timer));
  }
  if (tmp != 0) {
    {
    ldv_del_timer_sync_131(& ctrl->activity_timer);
    }
  } else {
  }
  {
  ldv_spin_lock_bh_100(& ctrl->queue_lock);
  rsxx_cleanup_dma_queue(ctrl, & ctrl->queue, 1U);
  ldv_spin_unlock_bh_101(& ctrl->queue_lock);
  rsxx_dma_cancel(ctrl);
  vfree((void const *)ctrl->trackers);
  pci_free_consistent(card->dev, 4096UL, ctrl->status.buf, ctrl->status.dma_addr);
  pci_free_consistent(card->dev, 4096UL, ctrl->cmd.buf, ctrl->cmd.dma_addr);
  i = i + 1;
  }
  ldv_34182: ;
  if (i < card->n_targets) {
    goto ldv_34181;
  } else {
  }
  return;
}
}
int rsxx_eeh_save_issued_dmas(struct rsxx_cardinfo *card )
{
  int i ;
  int j ;
  int cnt ;
  struct rsxx_dma *dma ;
  struct list_head *issued_dmas ;
  void *tmp ;
  unsigned int tmp___0 ;
  {
  {
  tmp = kzalloc((unsigned long )card->n_targets * 16UL, 208U);
  issued_dmas = (struct list_head *)tmp;
  }
  if ((unsigned long )issued_dmas == (unsigned long )((struct list_head *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_34197;
  ldv_34196:
  {
  INIT_LIST_HEAD(issued_dmas + (unsigned long )i);
  cnt = 0;
  j = 0;
  }
  goto ldv_34194;
  ldv_34193:
  {
  dma = get_tracker_dma((card->ctrl + (unsigned long )i)->trackers, j);
  }
  if ((unsigned long )dma == (unsigned long )((struct rsxx_dma *)0)) {
    goto ldv_34192;
  } else {
  }
  if ((unsigned int )dma->cmd == 128U) {
    (card->ctrl + (unsigned long )i)->stats.writes_issued = (card->ctrl + (unsigned long )i)->stats.writes_issued - 1U;
  } else
  if ((unsigned int )dma->cmd == 112U) {
    (card->ctrl + (unsigned long )i)->stats.discards_issued = (card->ctrl + (unsigned long )i)->stats.discards_issued - 1U;
  } else {
    (card->ctrl + (unsigned long )i)->stats.reads_issued = (card->ctrl + (unsigned long )i)->stats.reads_issued - 1U;
  }
  if ((unsigned int )dma->cmd != 112U) {
    {
    tmp___0 = get_dma_size(dma);
    pci_unmap_page(card->dev, dma->dma_addr, (size_t )tmp___0, (unsigned int )dma->cmd == 128U ? 1 : 2);
    }
  } else {
  }
  {
  list_add_tail(& dma->list, issued_dmas + (unsigned long )i);
  push_tracker((card->ctrl + (unsigned long )i)->trackers, j);
  cnt = cnt + 1;
  }
  ldv_34192:
  j = j + 1;
  ldv_34194: ;
  if (j <= 254) {
    goto ldv_34193;
  } else {
  }
  {
  ldv_spin_lock_bh_100(& (card->ctrl + (unsigned long )i)->queue_lock);
  list_splice((struct list_head const *)issued_dmas + (unsigned long )i, & (card->ctrl + (unsigned long )i)->queue);
  atomic_sub(cnt, & (card->ctrl + (unsigned long )i)->stats.hw_q_depth);
  (card->ctrl + (unsigned long )i)->stats.sw_q_depth = (card->ctrl + (unsigned long )i)->stats.sw_q_depth + (u32 )cnt;
  (card->ctrl + (unsigned long )i)->e_cnt = 0U;
  ldv_spin_unlock_bh_101(& (card->ctrl + (unsigned long )i)->queue_lock);
  i = i + 1;
  }
  ldv_34197: ;
  if (i < card->n_targets) {
    goto ldv_34196;
  } else {
  }
  {
  kfree((void const *)issued_dmas);
  }
  return (0);
}
}
int rsxx_dma_init(void)
{
  {
  {
  rsxx_dma_pool = kmem_cache_create("rsxx_dma", 72UL, 8UL, 8192UL, (void (*)(void * ))0);
  }
  if ((unsigned long )rsxx_dma_pool == (unsigned long )((struct kmem_cache *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
void rsxx_dma_cleanup(void)
{
  {
  {
  kmem_cache_destroy(rsxx_dma_pool);
  }
  return;
}
}
__inline static void atomic_add(int i , atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_add(i, v);
  }
  return;
}
}
__inline static void atomic_sub(int i , atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_sub(i, v);
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
__inline static void ldv_spin_lock_96___0(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_dma_tracker_list();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_97___0(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_dma_tracker_list();
  spin_unlock(lock);
  }
  return;
}
}
static int ldv_mod_timer_102(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
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
static int ldv_mod_timer_110(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
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
static int ldv_del_timer_sync_111(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
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
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_112(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irq_lock_of_rsxx_cardinfo();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mod_timer_114(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
static int ldv_del_timer_sync_115(struct timer_list *ldv_func_arg1 )
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
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_116(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irq_lock_of_rsxx_cardinfo();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_120(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_work_lock_of_rsxx_dma_ctrl(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_121(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_work_lock_of_rsxx_dma_ctrl(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_122(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_work_lock_of_rsxx_dma_ctrl(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_123(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_work_lock_of_rsxx_dma_ctrl(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_kmem_cache_alloc_124(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
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
static void *ldv_kmem_cache_alloc_125(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
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
void *ldv_malloc(size_t size ) ;
static void *ldv_vmalloc_128(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_129(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irq_lock_of_rsxx_cardinfo();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_del_timer_sync_131(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_dev_lock_of_rsxx_cardinfo ;
void ldv_linux_kernel_locking_mutex_mutex_lock_dev_lock_of_rsxx_cardinfo(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_dev_lock_of_rsxx_cardinfo);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_dev_lock_of_rsxx_cardinfo = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_dev_lock_of_rsxx_cardinfo(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_dev_lock_of_rsxx_cardinfo);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_dev_lock_of_rsxx_cardinfo = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_dev_lock_of_rsxx_cardinfo(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_dev_lock_of_rsxx_cardinfo) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_dev_lock_of_rsxx_cardinfo(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_dev_lock_of_rsxx_cardinfo);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_dev_lock_of_rsxx_cardinfo(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_dev_lock_of_rsxx_cardinfo = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_dev_lock_of_rsxx_cardinfo(atomic_t *cnt ,
                                                                                       struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_dev_lock_of_rsxx_cardinfo(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_dev_lock_of_rsxx_cardinfo(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_dev_lock_of_rsxx_cardinfo);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_dev_lock_of_rsxx_cardinfo = 0;
  }
  return;
}
}
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_reset_lock_of_NOT_ARG_SIGN ;
void ldv_linux_kernel_locking_mutex_mutex_lock_reset_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_reset_lock_of_NOT_ARG_SIGN);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_reset_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_reset_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_reset_lock_of_NOT_ARG_SIGN);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_reset_lock_of_NOT_ARG_SIGN = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_reset_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_reset_lock_of_NOT_ARG_SIGN) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_reset_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_reset_lock_of_NOT_ARG_SIGN);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_reset_lock_of_NOT_ARG_SIGN(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_reset_lock_of_NOT_ARG_SIGN = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_reset_lock_of_NOT_ARG_SIGN(atomic_t *cnt ,
                                                                                        struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_reset_lock_of_NOT_ARG_SIGN(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_reset_lock_of_NOT_ARG_SIGN(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_reset_lock_of_NOT_ARG_SIGN);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_reset_lock_of_NOT_ARG_SIGN = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_work_lock_of_rsxx_dma_ctrl ;
void ldv_linux_kernel_locking_mutex_mutex_lock_work_lock_of_rsxx_dma_ctrl(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_work_lock_of_rsxx_dma_ctrl);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_work_lock_of_rsxx_dma_ctrl = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_work_lock_of_rsxx_dma_ctrl(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_work_lock_of_rsxx_dma_ctrl);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_work_lock_of_rsxx_dma_ctrl = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_work_lock_of_rsxx_dma_ctrl(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_work_lock_of_rsxx_dma_ctrl) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_work_lock_of_rsxx_dma_ctrl(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_work_lock_of_rsxx_dma_ctrl);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_work_lock_of_rsxx_dma_ctrl(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_work_lock_of_rsxx_dma_ctrl = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_work_lock_of_rsxx_dma_ctrl(atomic_t *cnt ,
                                                                                        struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_work_lock_of_rsxx_dma_ctrl(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_work_lock_of_rsxx_dma_ctrl(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_work_lock_of_rsxx_dma_ctrl);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_work_lock_of_rsxx_dma_ctrl = 0;
  }
  return;
}
}
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_dev_lock_of_rsxx_cardinfo = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_reset_lock_of_NOT_ARG_SIGN = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_work_lock_of_rsxx_dma_ctrl = 0;
  return;
}
}
void ldv_linux_kernel_locking_mutex_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_dev_lock_of_rsxx_cardinfo);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_reset_lock_of_NOT_ARG_SIGN);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_work_lock_of_rsxx_dma_ctrl);
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
static int ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_irq_lock_of_rsxx_cardinfo(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo == 1);
  ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_irq_lock_of_rsxx_cardinfo(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo == 2);
  ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_irq_lock_of_rsxx_cardinfo(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_irq_lock_of_rsxx_cardinfo(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_irq_lock_of_rsxx_cardinfo(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_irq_lock_of_rsxx_cardinfo(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_irq_lock_of_rsxx_cardinfo();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_irq_lock_of_rsxx_cardinfo(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_irq_lock_of_rsxx_cardinfo(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo = 2;
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
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_dma_tracker_list(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_dma_tracker_list(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_dma_tracker_list(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_dma_tracker_list(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_dma_tracker_list(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_dma_tracker_list(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_dma_tracker_list();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_dma_tracker_list(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_dma_tracker_list(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list = 2;
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
static int ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_queue_lock_of_rsxx_dma_ctrl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl == 1);
  ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_queue_lock_of_rsxx_dma_ctrl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl == 2);
  ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_queue_lock_of_rsxx_dma_ctrl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_queue_lock_of_rsxx_dma_ctrl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_queue_lock_of_rsxx_dma_ctrl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_queue_lock_of_rsxx_dma_ctrl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_queue_lock_of_rsxx_dma_ctrl();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_queue_lock_of_rsxx_dma_ctrl(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_queue_lock_of_rsxx_dma_ctrl(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_rsxx_ida_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_rsxx_ida_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_rsxx_ida_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_rsxx_ida_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_rsxx_ida_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_rsxx_ida_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_rsxx_ida_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_rsxx_ida_lock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_rsxx_ida_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock = 2;
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
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock == 1);
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
  if (ldv_linux_kernel_locking_spinlock_spin_irq_lock_of_rsxx_cardinfo == 2) {
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
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_dma_tracker_list == 2) {
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
  if (ldv_linux_kernel_locking_spinlock_spin_queue_lock_of_rsxx_dma_ctrl == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_rsxx_ida_lock == 2) {
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
static int ldv_linux_kernel_sched_completion_completion_cmd_done = 0;
void ldv_linux_kernel_sched_completion_init_completion_cmd_done(void)
{
  {
  ldv_linux_kernel_sched_completion_completion_cmd_done = 1;
  return;
}
}
void ldv_linux_kernel_sched_completion_init_completion_macro_cmd_done(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__double_init(ldv_linux_kernel_sched_completion_completion_cmd_done != 0);
  ldv_linux_kernel_sched_completion_completion_cmd_done = 1;
  }
  return;
}
}
void ldv_linux_kernel_sched_completion_wait_for_completion_cmd_done(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__wait_without_init(ldv_linux_kernel_sched_completion_completion_cmd_done != 0);
  ldv_linux_kernel_sched_completion_completion_cmd_done = 2;
  }
  return;
}
}
static int ldv_linux_kernel_sched_completion_completion_cmd_done_of_creg_completion = 0;
void ldv_linux_kernel_sched_completion_init_completion_cmd_done_of_creg_completion(void)
{
  {
  ldv_linux_kernel_sched_completion_completion_cmd_done_of_creg_completion = 1;
  return;
}
}
void ldv_linux_kernel_sched_completion_init_completion_macro_cmd_done_of_creg_completion(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__double_init(ldv_linux_kernel_sched_completion_completion_cmd_done_of_creg_completion != 0);
  ldv_linux_kernel_sched_completion_completion_cmd_done_of_creg_completion = 1;
  }
  return;
}
}
void ldv_linux_kernel_sched_completion_wait_for_completion_cmd_done_of_creg_completion(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__wait_without_init(ldv_linux_kernel_sched_completion_completion_cmd_done_of_creg_completion != 0);
  ldv_linux_kernel_sched_completion_completion_cmd_done_of_creg_completion = 2;
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
void *external_alloc(void);
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return (struct workqueue_struct *)external_alloc();
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
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
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
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
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_disk(struct gendisk *arg0) {
  return;
}
void *external_alloc(void);
struct gendisk *alloc_disk(int arg0) {
  return (struct gendisk *)external_alloc();
}
void bio_endio(struct bio *arg0, int arg1) {
  return;
}
void *external_alloc(void);
struct request_queue *blk_alloc_queue(gfp_t arg0) {
  return (struct request_queue *)external_alloc();
}
void blk_cleanup_queue(struct request_queue *arg0) {
  return;
}
void blk_queue_bounce_limit(struct request_queue *arg0, u64 arg1) {
  return;
}
void blk_queue_dma_alignment(struct request_queue *arg0, int arg1) {
  return;
}
void blk_queue_logical_block_size(struct request_queue *arg0, unsigned short arg1) {
  return;
}
void blk_queue_make_request(struct request_queue *arg0, make_request_fn *arg1) {
  return;
}
void blk_queue_max_discard_sectors(struct request_queue *arg0, unsigned int arg1) {
  return;
}
void blk_queue_max_hw_sectors(struct request_queue *arg0, unsigned int arg1) {
  return;
}
void blk_queue_physical_block_size(struct request_queue *arg0, unsigned int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void complete(struct completion *arg0) {
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
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
void *external_alloc(void);
struct dentry *debugfs_create_dir(const char *arg0, struct dentry *arg1) {
  return (struct dentry *)external_alloc();
}
void *external_alloc(void);
struct dentry *debugfs_create_file(const char *arg0, umode_t arg1, struct dentry *arg2, void *arg3, const struct file_operations *arg4) {
  return (struct dentry *)external_alloc();
}
void debugfs_remove(struct dentry *arg0) {
  return;
}
void debugfs_remove_recursive(struct dentry *arg0) {
  return;
}
void del_gendisk(struct gendisk *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
void dev_alert(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_crit(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_emerg(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_notice(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void generic_end_io_acct(int arg0, struct hd_struct *arg1, unsigned long arg2) {
  return;
}
void generic_start_io_acct(int arg0, unsigned long arg1, struct hd_struct *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int ida_get_new_above(struct ida *arg0, int arg1, int *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ida_pre_get(struct ida *arg0, gfp_t arg1) {
  return __VERIFIER_nondet_int();
}
void ida_remove(struct ida *arg0, int arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32(void *arg0) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32be(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void iowrite32(u32 arg0, void *arg1) {
  return;
}
void iowrite32be(u32 arg0, void *arg1) {
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
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void msleep(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 *arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_range(struct pci_dev *arg0, int arg1, int arg2) {
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
int __VERIFIER_nondet_int(void);
int pci_set_dma_max_seg_size(struct pci_dev *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
void put_disk(struct gendisk *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_blkdev(unsigned int arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t seq_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int single_open(struct file *arg0, int (*arg1)(struct seq_file *, void *), void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
void unregister_blkdev(unsigned int arg0, const char *arg1) {
  return;
}
void vfree(const void *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int wait_for_completion_timeout(struct completion *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
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
