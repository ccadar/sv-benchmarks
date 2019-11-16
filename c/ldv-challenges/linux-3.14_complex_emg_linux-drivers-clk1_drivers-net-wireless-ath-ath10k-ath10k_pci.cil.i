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
typedef __s16 int16_t;
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
typedef void (*ctor_fn_t)(void);
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
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
   struct __anonstruct____missing_field_name_12 __annonCompField4 ;
   struct __anonstruct____missing_field_name_13 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_11 __annonCompField6 ;
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
union __anonunion____missing_field_name_18 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_18 __annonCompField7 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_20 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_19 {
   s64 lock ;
   struct __anonstruct____missing_field_name_20 __annonCompField8 ;
};
typedef union __anonunion_arch_rwlock_t_19 arch_rwlock_t;
struct net_device;
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
union __anonunion____missing_field_name_21 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_21 __annonCompField9 ;
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
struct __anonstruct____missing_field_name_26 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_27 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_25 {
   struct __anonstruct____missing_field_name_26 __annonCompField13 ;
   struct __anonstruct____missing_field_name_27 __annonCompField14 ;
};
union __anonunion____missing_field_name_28 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_25 __annonCompField15 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_28 __annonCompField16 ;
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
struct __anonstruct____missing_field_name_32 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_31 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_32 __annonCompField18 ;
};
struct spinlock {
   union __anonunion____missing_field_name_31 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_33 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_33 rwlock_t;
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
struct __anonstruct_seqlock_t_38 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_38 seqlock_t;
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
union __anonunion_u_39 {
   struct completion *completion ;
   struct kernfs_node *removed_list ;
};
union __anonunion____missing_field_name_40 {
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
   union __anonunion_u_39 u ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_40 __annonCompField21 ;
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
struct user_namespace;
struct __anonstruct_kuid_t_41 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_41 kuid_t;
struct __anonstruct_kgid_t_42 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_42 kgid_t;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct __anonstruct_nodemask_t_43 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_43 nodemask_t;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
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
struct ctl_table;
struct pci_dev;
struct pci_bus;
struct __anonstruct_mm_context_t_108 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_108 mm_context_t;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
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
union __anonunion____missing_field_name_136 {
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
   union __anonunion____missing_field_name_136 __annonCompField33 ;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
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
struct __anonstruct____missing_field_name_139 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_140 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_138 {
   struct __anonstruct____missing_field_name_139 __annonCompField35 ;
   struct __anonstruct____missing_field_name_140 __annonCompField36 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_138 __annonCompField37 ;
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
union __anonunion____missing_field_name_141 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_143 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_147 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_146 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_147 __annonCompField40 ;
   int units ;
};
struct __anonstruct____missing_field_name_145 {
   union __anonunion____missing_field_name_146 __annonCompField41 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_144 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_145 __annonCompField42 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_142 {
   union __anonunion____missing_field_name_143 __annonCompField39 ;
   union __anonunion____missing_field_name_144 __annonCompField43 ;
};
struct __anonstruct____missing_field_name_149 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_148 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_149 __annonCompField45 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_150 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_141 __annonCompField38 ;
   struct __anonstruct____missing_field_name_142 __annonCompField44 ;
   union __anonunion____missing_field_name_148 __annonCompField46 ;
   union __anonunion____missing_field_name_150 __annonCompField47 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_152 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_151 {
   struct __anonstruct_linear_152 linear ;
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
   union __anonunion_shared_151 shared ;
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
struct mem_cgroup;
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
struct __anonstruct____missing_field_name_154 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_155 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_153 {
   struct __anonstruct____missing_field_name_154 __annonCompField48 ;
   struct __anonstruct____missing_field_name_155 __annonCompField49 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_153 __annonCompField50 ;
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
struct __anonstruct____missing_field_name_157 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_156 {
   struct __anonstruct____missing_field_name_157 __annonCompField51 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_156 __annonCompField52 ;
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
struct cred;
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
union __anonunion____missing_field_name_162 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_162 __annonCompField53 ;
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
struct exception_table_entry;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
typedef unsigned short __kernel_sa_family_t;
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
enum ldv_21031 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_21031 socket_state;
struct poll_table_struct;
struct pipe_inode_info;
struct net;
struct fasync_struct;
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
struct kiocb;
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
struct sk_buff;
typedef s32 dma_cookie_t;
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
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct____missing_field_name_169 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_168 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_169 __annonCompField56 ;
};
union __anonunion____missing_field_name_170 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion____missing_field_name_171 {
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
   union __anonunion____missing_field_name_168 __annonCompField57 ;
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
   union __anonunion____missing_field_name_170 __annonCompField58 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_171 __annonCompField59 ;
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
struct ath10k;
enum ath10k_htc_svc_id {
    ATH10K_HTC_SVC_ID_RESERVED = 0,
    ATH10K_HTC_SVC_ID_UNUSED = 0,
    ATH10K_HTC_SVC_ID_RSVD_CTRL = 1,
    ATH10K_HTC_SVC_ID_WMI_CONTROL = 256,
    ATH10K_HTC_SVC_ID_WMI_DATA_BE = 257,
    ATH10K_HTC_SVC_ID_WMI_DATA_BK = 258,
    ATH10K_HTC_SVC_ID_WMI_DATA_VI = 259,
    ATH10K_HTC_SVC_ID_WMI_DATA_VO = 260,
    ATH10K_HTC_SVC_ID_NMI_CONTROL = 512,
    ATH10K_HTC_SVC_ID_NMI_DATA = 513,
    ATH10K_HTC_SVC_ID_HTT_DATA_MSG = 768,
    ATH10K_HTC_SVC_ID_TEST_RAW_STREAMS = 65024
} ;
enum ath10k_htc_ep_id {
    ATH10K_HTC_EP_UNUSED = -1,
    ATH10K_HTC_EP_0 = 0,
    ATH10K_HTC_EP_1 = 1,
    ATH10K_HTC_EP_2 = 2,
    ATH10K_HTC_EP_3 = 3,
    ATH10K_HTC_EP_4 = 4,
    ATH10K_HTC_EP_5 = 5,
    ATH10K_HTC_EP_6 = 6,
    ATH10K_HTC_EP_7 = 7,
    ATH10K_HTC_EP_8 = 8,
    ATH10K_HTC_EP_COUNT = 9
} ;
struct ath10k_htc_ops {
   void (*target_send_suspend_complete)(struct ath10k * ) ;
};
struct ath10k_htc_ep_ops {
   void (*ep_tx_complete)(struct ath10k * , struct sk_buff * ) ;
   void (*ep_rx_complete)(struct ath10k * , struct sk_buff * ) ;
   void (*ep_tx_credits)(struct ath10k * ) ;
};
struct ath10k_htc;
struct ath10k_htc_ep {
   struct ath10k_htc *htc ;
   enum ath10k_htc_ep_id eid ;
   enum ath10k_htc_svc_id service_id ;
   struct ath10k_htc_ep_ops ep_ops ;
   int max_tx_queue_depth ;
   int max_ep_message_len ;
   u8 ul_pipe_id ;
   u8 dl_pipe_id ;
   int ul_is_polled ;
   int dl_is_polled ;
   u8 seq_no ;
   int tx_credits ;
   int tx_credit_size ;
   int tx_credits_per_max_message ;
   bool tx_credit_flow_enabled ;
};
struct ath10k_htc_svc_tx_credits {
   u16 service_id ;
   u8 credit_allocation ;
};
struct ath10k_htc {
   struct ath10k *ar ;
   struct ath10k_htc_ep endpoint[9U] ;
   spinlock_t tx_lock ;
   struct ath10k_htc_ops htc_ops ;
   u8 control_resp_buffer[256U] ;
   int control_resp_len ;
   struct completion ctl_resp ;
   int total_transmit_credits ;
   struct ath10k_htc_svc_tx_credits service_tx_alloc[9U] ;
   int target_credit_size ;
   bool stopped ;
};
struct __anonstruct_alloc_idx_196 {
   __le32 *vaddr ;
   dma_addr_t paddr ;
};
struct __anonstruct_sw_rd_idx_197 {
   unsigned int msdu_payld ;
};
struct __anonstruct_rx_ring_195 {
   struct sk_buff **netbufs_ring ;
   __le32 *paddrs_ring ;
   dma_addr_t base_paddr ;
   int size ;
   unsigned int size_mask ;
   int fill_level ;
   int fill_cnt ;
   struct __anonstruct_alloc_idx_196 alloc_idx ;
   struct __anonstruct_sw_rd_idx_197 sw_rd_idx ;
   struct timer_list refill_retry_timer ;
   spinlock_t lock ;
};
struct ath10k_htt {
   struct ath10k *ar ;
   enum ath10k_htc_ep_id eid ;
   int max_throughput_mbps ;
   u8 target_version_major ;
   u8 target_version_minor ;
   struct completion target_version_received ;
   struct __anonstruct_rx_ring_195 rx_ring ;
   unsigned int prefetch_len ;
   spinlock_t tx_lock ;
   int max_num_pending_tx ;
   int num_pending_tx ;
   struct sk_buff **pending_tx ;
   unsigned long *used_msdu_ids ;
   wait_queue_head_t empty_tx_wq ;
   bool rx_confused ;
   struct tasklet_struct rx_replenish_task ;
};
struct ieee80211_p2p_noa_desc {
   u8 count ;
   __le32 duration ;
   __le32 interval ;
   __le32 start_time ;
};
struct ieee80211_p2p_noa_attr {
   u8 index ;
   u8 oppps_ctwindow ;
   struct ieee80211_p2p_noa_desc desc[4U] ;
};
struct ieee80211_mcs_info {
   u8 rx_mask[10U] ;
   __le16 rx_highest ;
   u8 tx_params ;
   u8 reserved[3U] ;
};
struct ieee80211_ht_cap {
   __le16 cap_info ;
   u8 ampdu_params_info ;
   struct ieee80211_mcs_info mcs ;
   __le16 extended_ht_cap_info ;
   __le32 tx_BF_cap_info ;
   u8 antenna_selection_info ;
};
struct ieee80211_vht_mcs_info {
   __le16 rx_mcs_map ;
   __le16 rx_highest ;
   __le16 tx_mcs_map ;
   __le16 tx_highest ;
};
struct ieee80211_vht_cap {
   __le32 vht_cap_info ;
   struct ieee80211_vht_mcs_info supp_mcs ;
};
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
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
union __anonunion_data_236 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_236 data ;
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
struct __anonstruct_sync_serial_settings_237 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_237 sync_serial_settings;
struct __anonstruct_te1_settings_238 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_238 te1_settings;
struct __anonstruct_raw_hdlc_proto_239 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_239 raw_hdlc_proto;
struct __anonstruct_fr_proto_240 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_240 fr_proto;
struct __anonstruct_fr_proto_pvc_241 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_241 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_242 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_242 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_243 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_243 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_244 {
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
   union __anonunion_ifs_ifsu_244 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_245 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_246 {
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
   union __anonunion_ifr_ifrn_245 ifr_ifrn ;
   union __anonunion_ifr_ifru_246 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_249 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_248 {
   struct __anonstruct____missing_field_name_249 __annonCompField83 ;
};
struct lockref {
   union __anonunion____missing_field_name_248 __annonCompField84 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_251 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_250 {
   struct __anonstruct____missing_field_name_251 __annonCompField85 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_250 __annonCompField86 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_252 {
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
   union __anonunion_d_u_252 d_u ;
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
struct __anonstruct_kprojid_t_254 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_254 kprojid_t;
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
union __anonunion____missing_field_name_255 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_255 __annonCompField87 ;
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
union __anonunion_arg_257 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_256 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_257 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_256 read_descriptor_t;
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
union __anonunion____missing_field_name_258 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_259 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_260 {
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
   union __anonunion____missing_field_name_258 __annonCompField88 ;
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
   union __anonunion____missing_field_name_259 __annonCompField89 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_260 __annonCompField90 ;
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
union __anonunion_f_u_261 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_261 f_u ;
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
struct __anonstruct_afs_263 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_262 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_263 afs ;
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
   union __anonunion_fl_u_262 fl_u ;
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
struct __anonstruct_sigset_t_264 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_264 sigset_t;
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
struct __anonstruct__kill_266 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_267 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_268 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_269 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_270 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_271 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_272 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_265 {
   int _pad[28U] ;
   struct __anonstruct__kill_266 _kill ;
   struct __anonstruct__timer_267 _timer ;
   struct __anonstruct__rt_268 _rt ;
   struct __anonstruct__sigchld_269 _sigchld ;
   struct __anonstruct__sigfault_270 _sigfault ;
   struct __anonstruct__sigpoll_271 _sigpoll ;
   struct __anonstruct__sigsys_272 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_265 _sifields ;
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
union __anonunion____missing_field_name_275 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_276 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_278 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_277 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_278 __annonCompField93 ;
};
union __anonunion_type_data_279 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_281 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_280 {
   union __anonunion_payload_281 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_275 __annonCompField91 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_276 __annonCompField92 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_277 __annonCompField94 ;
   union __anonunion_type_data_279 type_data ;
   union __anonunion____missing_field_name_280 __annonCompField95 ;
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
enum ldv_30093 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_30094 {
    RTNL_LINK_INITIALIZED = 0,
    RTNL_LINK_INITIALIZING = 1
} ;
struct __anonstruct_adj_list_308 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_309 {
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
union __anonunion____missing_field_name_310 {
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
   struct __anonstruct_adj_list_308 adj_list ;
   struct __anonstruct_all_adj_list_309 all_adj_list ;
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
   enum ldv_30093 reg_state : 8 ;
   bool dismantle ;
   enum ldv_30094 rtnl_link_state : 16 ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion____missing_field_name_310 __annonCompField99 ;
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
enum nl80211_iftype {
    NL80211_IFTYPE_UNSPECIFIED = 0,
    NL80211_IFTYPE_ADHOC = 1,
    NL80211_IFTYPE_STATION = 2,
    NL80211_IFTYPE_AP = 3,
    NL80211_IFTYPE_AP_VLAN = 4,
    NL80211_IFTYPE_WDS = 5,
    NL80211_IFTYPE_MONITOR = 6,
    NL80211_IFTYPE_MESH_POINT = 7,
    NL80211_IFTYPE_P2P_CLIENT = 8,
    NL80211_IFTYPE_P2P_GO = 9,
    NL80211_IFTYPE_P2P_DEVICE = 10,
    NUM_NL80211_IFTYPES = 11,
    NL80211_IFTYPE_MAX = 10
} ;
enum nl80211_reg_initiator {
    NL80211_REGDOM_SET_BY_CORE = 0,
    NL80211_REGDOM_SET_BY_USER = 1,
    NL80211_REGDOM_SET_BY_DRIVER = 2,
    NL80211_REGDOM_SET_BY_COUNTRY_IE = 3
} ;
enum nl80211_dfs_regions {
    NL80211_DFS_UNSET = 0,
    NL80211_DFS_FCC = 1,
    NL80211_DFS_ETSI = 2,
    NL80211_DFS_JP = 3
} ;
enum nl80211_user_reg_hint_type {
    NL80211_USER_REG_HINT_USER = 0,
    NL80211_USER_REG_HINT_CELL_BASE = 1
} ;
enum nl80211_chan_width {
    NL80211_CHAN_WIDTH_20_NOHT = 0,
    NL80211_CHAN_WIDTH_20 = 1,
    NL80211_CHAN_WIDTH_40 = 2,
    NL80211_CHAN_WIDTH_80 = 3,
    NL80211_CHAN_WIDTH_80P80 = 4,
    NL80211_CHAN_WIDTH_160 = 5,
    NL80211_CHAN_WIDTH_5 = 6,
    NL80211_CHAN_WIDTH_10 = 7
} ;
enum nl80211_auth_type {
    NL80211_AUTHTYPE_OPEN_SYSTEM = 0,
    NL80211_AUTHTYPE_SHARED_KEY = 1,
    NL80211_AUTHTYPE_FT = 2,
    NL80211_AUTHTYPE_NETWORK_EAP = 3,
    NL80211_AUTHTYPE_SAE = 4,
    __NL80211_AUTHTYPE_NUM = 5,
    NL80211_AUTHTYPE_MAX = 4,
    NL80211_AUTHTYPE_AUTOMATIC = 5
} ;
enum nl80211_mfp {
    NL80211_MFP_NO = 0,
    NL80211_MFP_REQUIRED = 1
} ;
struct nl80211_wowlan_tcp_data_seq {
   __u32 start ;
   __u32 offset ;
   __u32 len ;
};
struct nl80211_wowlan_tcp_data_token {
   __u32 offset ;
   __u32 len ;
   __u8 token_stream[] ;
};
struct nl80211_wowlan_tcp_data_token_feature {
   __u32 min_len ;
   __u32 max_len ;
   __u32 bufsize ;
};
enum nl80211_dfs_state {
    NL80211_DFS_USABLE = 0,
    NL80211_DFS_UNAVAILABLE = 1,
    NL80211_DFS_AVAILABLE = 2
} ;
struct nl80211_vendor_cmd_info {
   __u32 vendor_id ;
   __u32 subcmd ;
};
enum environment_cap {
    ENVIRON_ANY = 0,
    ENVIRON_INDOOR = 1,
    ENVIRON_OUTDOOR = 2
} ;
struct regulatory_request {
   struct callback_head callback_head ;
   int wiphy_idx ;
   enum nl80211_reg_initiator initiator ;
   enum nl80211_user_reg_hint_type user_reg_hint_type ;
   char alpha2[2U] ;
   enum nl80211_dfs_regions dfs_region ;
   bool intersect ;
   bool processed ;
   enum environment_cap country_ie_env ;
   struct list_head list ;
};
struct ieee80211_freq_range {
   u32 start_freq_khz ;
   u32 end_freq_khz ;
   u32 max_bandwidth_khz ;
};
struct ieee80211_power_rule {
   u32 max_antenna_gain ;
   u32 max_eirp ;
};
struct ieee80211_reg_rule {
   struct ieee80211_freq_range freq_range ;
   struct ieee80211_power_rule power_rule ;
   u32 flags ;
};
struct ieee80211_regdomain {
   struct callback_head callback_head ;
   u32 n_reg_rules ;
   char alpha2[2U] ;
   enum nl80211_dfs_regions dfs_region ;
   struct ieee80211_reg_rule reg_rules[] ;
};
struct wiphy;
enum ieee80211_band {
    IEEE80211_BAND_2GHZ = 0,
    IEEE80211_BAND_5GHZ = 1,
    IEEE80211_BAND_60GHZ = 2,
    IEEE80211_NUM_BANDS = 3
} ;
struct ieee80211_channel {
   enum ieee80211_band band ;
   u16 center_freq ;
   u16 hw_value ;
   u32 flags ;
   int max_antenna_gain ;
   int max_power ;
   int max_reg_power ;
   bool beacon_found ;
   u32 orig_flags ;
   int orig_mag ;
   int orig_mpwr ;
   enum nl80211_dfs_state dfs_state ;
   unsigned long dfs_state_entered ;
};
struct ieee80211_rate {
   u32 flags ;
   u16 bitrate ;
   u16 hw_value ;
   u16 hw_value_short ;
};
struct ieee80211_sta_ht_cap {
   u16 cap ;
   bool ht_supported ;
   u8 ampdu_factor ;
   u8 ampdu_density ;
   struct ieee80211_mcs_info mcs ;
};
struct ieee80211_sta_vht_cap {
   bool vht_supported ;
   u32 cap ;
   struct ieee80211_vht_mcs_info vht_mcs ;
};
struct ieee80211_supported_band {
   struct ieee80211_channel *channels ;
   struct ieee80211_rate *bitrates ;
   enum ieee80211_band band ;
   int n_channels ;
   int n_bitrates ;
   struct ieee80211_sta_ht_cap ht_cap ;
   struct ieee80211_sta_vht_cap vht_cap ;
};
struct cfg80211_chan_def {
   struct ieee80211_channel *chan ;
   enum nl80211_chan_width width ;
   u32 center_freq1 ;
   u32 center_freq2 ;
};
struct survey_info {
   struct ieee80211_channel *channel ;
   u64 channel_time ;
   u64 channel_time_busy ;
   u64 channel_time_ext_busy ;
   u64 channel_time_rx ;
   u64 channel_time_tx ;
   u32 filled ;
   s8 noise ;
};
struct cfg80211_crypto_settings {
   u32 wpa_versions ;
   u32 cipher_group ;
   int n_ciphers_pairwise ;
   u32 ciphers_pairwise[5U] ;
   int n_akm_suites ;
   u32 akm_suites[2U] ;
   bool control_port ;
   __be16 control_port_ethertype ;
   bool control_port_no_encrypt ;
};
struct mac_address {
   u8 addr[6U] ;
};
enum cfg80211_signal_type {
    CFG80211_SIGNAL_TYPE_NONE = 0,
    CFG80211_SIGNAL_TYPE_MBM = 1,
    CFG80211_SIGNAL_TYPE_UNSPEC = 2
} ;
struct cfg80211_ibss_params {
   u8 *ssid ;
   u8 *bssid ;
   struct cfg80211_chan_def chandef ;
   u8 *ie ;
   u8 ssid_len ;
   u8 ie_len ;
   u16 beacon_interval ;
   u32 basic_rates ;
   bool channel_fixed ;
   bool privacy ;
   bool control_port ;
   bool userspace_handles_dfs ;
   int mcast_rate[3U] ;
   struct ieee80211_ht_cap ht_capa ;
   struct ieee80211_ht_cap ht_capa_mask ;
};
struct cfg80211_connect_params {
   struct ieee80211_channel *channel ;
   u8 *bssid ;
   u8 *ssid ;
   size_t ssid_len ;
   enum nl80211_auth_type auth_type ;
   u8 *ie ;
   size_t ie_len ;
   bool privacy ;
   enum nl80211_mfp mfp ;
   struct cfg80211_crypto_settings crypto ;
   u8 const *key ;
   u8 key_len ;
   u8 key_idx ;
   u32 flags ;
   int bg_scan_period ;
   struct ieee80211_ht_cap ht_capa ;
   struct ieee80211_ht_cap ht_capa_mask ;
   struct ieee80211_vht_cap vht_capa ;
   struct ieee80211_vht_cap vht_capa_mask ;
};
struct cfg80211_pkt_pattern {
   u8 *mask ;
   u8 *pattern ;
   int pattern_len ;
   int pkt_offset ;
};
struct cfg80211_wowlan_tcp {
   struct socket *sock ;
   __be32 src ;
   __be32 dst ;
   u16 src_port ;
   u16 dst_port ;
   u8 dst_mac[6U] ;
   int payload_len ;
   u8 const *payload ;
   struct nl80211_wowlan_tcp_data_seq payload_seq ;
   u32 data_interval ;
   u32 wake_len ;
   u8 const *wake_data ;
   u8 const *wake_mask ;
   u32 tokens_size ;
   struct nl80211_wowlan_tcp_data_token payload_tok ;
};
struct cfg80211_wowlan {
   bool any ;
   bool disconnect ;
   bool magic_pkt ;
   bool gtk_rekey_failure ;
   bool eap_identity_req ;
   bool four_way_handshake ;
   bool rfkill_release ;
   struct cfg80211_pkt_pattern *patterns ;
   struct cfg80211_wowlan_tcp *tcp ;
   int n_patterns ;
};
struct ieee80211_iface_limit {
   u16 max ;
   u16 types ;
};
struct ieee80211_iface_combination {
   struct ieee80211_iface_limit const *limits ;
   u32 num_different_channels ;
   u16 max_interfaces ;
   u8 n_limits ;
   bool beacon_int_infra_match ;
   u8 radar_detect_widths ;
};
struct ieee80211_txrx_stypes {
   u16 tx ;
   u16 rx ;
};
struct wiphy_wowlan_tcp_support {
   struct nl80211_wowlan_tcp_data_token_feature const *tok ;
   u32 data_payload_max ;
   u32 data_interval_max ;
   u32 wake_payload_max ;
   bool seq ;
};
struct wiphy_wowlan_support {
   u32 flags ;
   int n_patterns ;
   int pattern_max_len ;
   int pattern_min_len ;
   int max_pkt_offset ;
   struct wiphy_wowlan_tcp_support const *tcp ;
};
struct wiphy_coalesce_support {
   int n_rules ;
   int max_delay ;
   int n_patterns ;
   int pattern_max_len ;
   int pattern_min_len ;
   int max_pkt_offset ;
};
struct wiphy_vendor_command {
   struct nl80211_vendor_cmd_info info ;
   u32 flags ;
   int (*doit)(struct wiphy * , struct wireless_dev * , void const * , int ) ;
};
struct wiphy {
   u8 perm_addr[6U] ;
   u8 addr_mask[6U] ;
   struct mac_address *addresses ;
   struct ieee80211_txrx_stypes const *mgmt_stypes ;
   struct ieee80211_iface_combination const *iface_combinations ;
   int n_iface_combinations ;
   u16 software_iftypes ;
   u16 n_addresses ;
   u16 interface_modes ;
   u16 max_acl_mac_addrs ;
   u32 flags ;
   u32 regulatory_flags ;
   u32 features ;
   u32 ap_sme_capa ;
   enum cfg80211_signal_type signal_type ;
   int bss_priv_size ;
   u8 max_scan_ssids ;
   u8 max_sched_scan_ssids ;
   u8 max_match_sets ;
   u16 max_scan_ie_len ;
   u16 max_sched_scan_ie_len ;
   int n_cipher_suites ;
   u32 const *cipher_suites ;
   u8 retry_short ;
   u8 retry_long ;
   u32 frag_threshold ;
   u32 rts_threshold ;
   u8 coverage_class ;
   char fw_version[32U] ;
   u32 hw_version ;
   struct wiphy_wowlan_support const *wowlan ;
   struct cfg80211_wowlan *wowlan_config ;
   u16 max_remain_on_channel_duration ;
   u8 max_num_pmkids ;
   u32 available_antennas_tx ;
   u32 available_antennas_rx ;
   u32 probe_resp_offload ;
   u8 const *extended_capabilities ;
   u8 const *extended_capabilities_mask ;
   u8 extended_capabilities_len ;
   void const *privid ;
   struct ieee80211_supported_band *bands[3U] ;
   void (*reg_notifier)(struct wiphy * , struct regulatory_request * ) ;
   struct ieee80211_regdomain const *regd ;
   struct device dev ;
   bool registered ;
   struct dentry *debugfsdir ;
   struct ieee80211_ht_cap const *ht_capa_mod_mask ;
   struct ieee80211_vht_cap const *vht_capa_mod_mask ;
   struct net *_net ;
   struct iw_handler_def const *wext ;
   struct wiphy_coalesce_support const *coalesce ;
   struct wiphy_vendor_command const *vendor_commands ;
   struct nl80211_vendor_cmd_info const *vendor_events ;
   int n_vendor_commands ;
   int n_vendor_events ;
   char priv[0U] ;
};
struct cfg80211_conn;
struct cfg80211_internal_bss;
struct cfg80211_cached_keys;
struct __anonstruct_wext_312 {
   struct cfg80211_ibss_params ibss ;
   struct cfg80211_connect_params connect ;
   struct cfg80211_cached_keys *keys ;
   u8 *ie ;
   size_t ie_len ;
   u8 bssid[6U] ;
   u8 prev_bssid[6U] ;
   u8 ssid[32U] ;
   s8 default_key ;
   s8 default_mgmt_key ;
   bool prev_bssid_valid ;
};
struct wireless_dev {
   struct wiphy *wiphy ;
   enum nl80211_iftype iftype ;
   struct list_head list ;
   struct net_device *netdev ;
   u32 identifier ;
   struct list_head mgmt_registrations ;
   spinlock_t mgmt_registrations_lock ;
   struct mutex mtx ;
   bool use_4addr ;
   bool p2p_started ;
   u8 address[6U] ;
   u8 ssid[32U] ;
   u8 ssid_len ;
   u8 mesh_id_len ;
   u8 mesh_id_up_len ;
   struct cfg80211_conn *conn ;
   struct cfg80211_cached_keys *connect_keys ;
   struct list_head event_list ;
   spinlock_t event_lock ;
   struct cfg80211_internal_bss *current_bss ;
   struct cfg80211_chan_def preset_chandef ;
   struct ieee80211_channel *channel ;
   bool ibss_fixed ;
   bool ibss_dfs_possible ;
   bool ps ;
   int ps_timeout ;
   int beacon_interval ;
   u32 ap_unexpected_nlportid ;
   bool cac_started ;
   unsigned long cac_start_time ;
   struct __anonstruct_wext_312 wext ;
};
struct ieee80211_chanctx_conf {
   struct cfg80211_chan_def def ;
   struct cfg80211_chan_def min_def ;
   u8 rx_chains_static ;
   u8 rx_chains_dynamic ;
   bool radar_enabled ;
   u8 drv_priv[0U] ;
};
struct ieee80211_bss_conf {
   u8 const *bssid ;
   bool assoc ;
   bool ibss_joined ;
   bool ibss_creator ;
   u16 aid ;
   bool use_cts_prot ;
   bool use_short_preamble ;
   bool use_short_slot ;
   bool enable_beacon ;
   u8 dtim_period ;
   u16 beacon_int ;
   u16 assoc_capability ;
   u64 sync_tsf ;
   u32 sync_device_ts ;
   u8 sync_dtim_count ;
   u32 basic_rates ;
   struct ieee80211_rate *beacon_rate ;
   int mcast_rate[3U] ;
   u16 ht_operation_mode ;
   s32 cqm_rssi_thold ;
   u32 cqm_rssi_hyst ;
   struct cfg80211_chan_def chandef ;
   __be32 arp_addr_list[4U] ;
   int arp_addr_cnt ;
   bool qos ;
   bool idle ;
   bool ps ;
   u8 ssid[32U] ;
   size_t ssid_len ;
   bool hidden_ssid ;
   int txpower ;
   struct ieee80211_p2p_noa_attr p2p_noa_attr ;
};
struct ieee80211_tx_rate {
   s8 idx ;
   u16 count : 5 ;
   u16 flags : 11 ;
};
struct __anonstruct____missing_field_name_316 {
   struct ieee80211_tx_rate rates[4U] ;
   s8 rts_cts_rate_idx ;
   u8 use_rts : 1 ;
   u8 use_cts_prot : 1 ;
   u8 short_preamble : 1 ;
   u8 skip_table : 1 ;
};
union __anonunion____missing_field_name_315 {
   struct __anonstruct____missing_field_name_316 __annonCompField100 ;
   unsigned long jiffies ;
};
struct ieee80211_vif;
struct ieee80211_key_conf;
struct __anonstruct_control_314 {
   union __anonunion____missing_field_name_315 __annonCompField101 ;
   struct ieee80211_vif *vif ;
   struct ieee80211_key_conf *hw_key ;
   u32 flags ;
};
struct __anonstruct_status_317 {
   struct ieee80211_tx_rate rates[4U] ;
   int ack_signal ;
   u8 ampdu_ack_len ;
   u8 ampdu_len ;
   u8 antenna ;
};
struct __anonstruct____missing_field_name_318 {
   struct ieee80211_tx_rate driver_rates[4U] ;
   u8 pad[4U] ;
   void *rate_driver_data[3U] ;
};
union __anonunion____missing_field_name_313 {
   struct __anonstruct_control_314 control ;
   struct __anonstruct_status_317 status ;
   struct __anonstruct____missing_field_name_318 __annonCompField102 ;
   void *driver_data[5U] ;
};
struct ieee80211_tx_info {
   u32 flags ;
   u8 band ;
   u8 hw_queue ;
   u16 ack_frame_id ;
   union __anonunion____missing_field_name_313 __annonCompField103 ;
};
enum ieee80211_smps_mode {
    IEEE80211_SMPS_AUTOMATIC = 0,
    IEEE80211_SMPS_OFF = 1,
    IEEE80211_SMPS_STATIC = 2,
    IEEE80211_SMPS_DYNAMIC = 3,
    IEEE80211_SMPS_NUM_MODES = 4
} ;
struct ieee80211_conf {
   u32 flags ;
   int power_level ;
   int dynamic_ps_timeout ;
   int max_sleep_period ;
   u16 listen_interval ;
   u8 ps_dtim_period ;
   u8 long_frame_max_tx_count ;
   u8 short_frame_max_tx_count ;
   struct cfg80211_chan_def chandef ;
   bool radar_enabled ;
   enum ieee80211_smps_mode smps_mode ;
};
struct ieee80211_vif {
   enum nl80211_iftype type ;
   struct ieee80211_bss_conf bss_conf ;
   u8 addr[6U] ;
   bool p2p ;
   bool csa_active ;
   u8 cab_queue ;
   u8 hw_queue[4U] ;
   struct ieee80211_chanctx_conf *chanctx_conf ;
   u32 driver_flags ;
   struct dentry *debugfs_dir ;
   u8 drv_priv[0U] ;
};
struct ieee80211_key_conf {
   u32 cipher ;
   u8 icv_len ;
   u8 iv_len ;
   u8 hw_key_idx ;
   u8 flags ;
   s8 keyidx ;
   u8 keylen ;
   u8 key[0U] ;
};
struct ieee80211_cipher_scheme {
   u32 cipher ;
   u16 iftype ;
   u8 hdr_len ;
   u8 pn_len ;
   u8 pn_off ;
   u8 key_idx_off ;
   u8 key_idx_mask ;
   u8 key_idx_shift ;
   u8 mic_len ;
};
struct ieee80211_hw {
   struct ieee80211_conf conf ;
   struct wiphy *wiphy ;
   char const *rate_control_algorithm ;
   void *priv ;
   u32 flags ;
   unsigned int extra_tx_headroom ;
   unsigned int extra_beacon_tailroom ;
   int vif_data_size ;
   int sta_data_size ;
   int chanctx_data_size ;
   int napi_weight ;
   u16 queues ;
   u16 max_listen_interval ;
   s8 max_signal ;
   u8 max_rates ;
   u8 max_report_rates ;
   u8 max_rate_tries ;
   u8 max_rx_aggregation_subframes ;
   u8 max_tx_aggregation_subframes ;
   u8 offchannel_tx_hw_queue ;
   u8 radiotap_mcs_details ;
   u16 radiotap_vht_details ;
   netdev_features_t netdev_features ;
   u8 uapsd_queues ;
   u8 uapsd_max_sp_len ;
   u8 n_cipher_schemes ;
   struct ieee80211_cipher_scheme const *cipher_schemes ;
};
struct wmi_cmd_map {
   u32 init_cmdid ;
   u32 start_scan_cmdid ;
   u32 stop_scan_cmdid ;
   u32 scan_chan_list_cmdid ;
   u32 scan_sch_prio_tbl_cmdid ;
   u32 pdev_set_regdomain_cmdid ;
   u32 pdev_set_channel_cmdid ;
   u32 pdev_set_param_cmdid ;
   u32 pdev_pktlog_enable_cmdid ;
   u32 pdev_pktlog_disable_cmdid ;
   u32 pdev_set_wmm_params_cmdid ;
   u32 pdev_set_ht_cap_ie_cmdid ;
   u32 pdev_set_vht_cap_ie_cmdid ;
   u32 pdev_set_dscp_tid_map_cmdid ;
   u32 pdev_set_quiet_mode_cmdid ;
   u32 pdev_green_ap_ps_enable_cmdid ;
   u32 pdev_get_tpc_config_cmdid ;
   u32 pdev_set_base_macaddr_cmdid ;
   u32 vdev_create_cmdid ;
   u32 vdev_delete_cmdid ;
   u32 vdev_start_request_cmdid ;
   u32 vdev_restart_request_cmdid ;
   u32 vdev_up_cmdid ;
   u32 vdev_stop_cmdid ;
   u32 vdev_down_cmdid ;
   u32 vdev_set_param_cmdid ;
   u32 vdev_install_key_cmdid ;
   u32 peer_create_cmdid ;
   u32 peer_delete_cmdid ;
   u32 peer_flush_tids_cmdid ;
   u32 peer_set_param_cmdid ;
   u32 peer_assoc_cmdid ;
   u32 peer_add_wds_entry_cmdid ;
   u32 peer_remove_wds_entry_cmdid ;
   u32 peer_mcast_group_cmdid ;
   u32 bcn_tx_cmdid ;
   u32 pdev_send_bcn_cmdid ;
   u32 bcn_tmpl_cmdid ;
   u32 bcn_filter_rx_cmdid ;
   u32 prb_req_filter_rx_cmdid ;
   u32 mgmt_tx_cmdid ;
   u32 prb_tmpl_cmdid ;
   u32 addba_clear_resp_cmdid ;
   u32 addba_send_cmdid ;
   u32 addba_status_cmdid ;
   u32 delba_send_cmdid ;
   u32 addba_set_resp_cmdid ;
   u32 send_singleamsdu_cmdid ;
   u32 sta_powersave_mode_cmdid ;
   u32 sta_powersave_param_cmdid ;
   u32 sta_mimo_ps_mode_cmdid ;
   u32 pdev_dfs_enable_cmdid ;
   u32 pdev_dfs_disable_cmdid ;
   u32 roam_scan_mode ;
   u32 roam_scan_rssi_threshold ;
   u32 roam_scan_period ;
   u32 roam_scan_rssi_change_threshold ;
   u32 roam_ap_profile ;
   u32 ofl_scan_add_ap_profile ;
   u32 ofl_scan_remove_ap_profile ;
   u32 ofl_scan_period ;
   u32 p2p_dev_set_device_info ;
   u32 p2p_dev_set_discoverability ;
   u32 p2p_go_set_beacon_ie ;
   u32 p2p_go_set_probe_resp_ie ;
   u32 p2p_set_vendor_ie_data_cmdid ;
   u32 ap_ps_peer_param_cmdid ;
   u32 ap_ps_peer_uapsd_coex_cmdid ;
   u32 peer_rate_retry_sched_cmdid ;
   u32 wlan_profile_trigger_cmdid ;
   u32 wlan_profile_set_hist_intvl_cmdid ;
   u32 wlan_profile_get_profile_data_cmdid ;
   u32 wlan_profile_enable_profile_id_cmdid ;
   u32 wlan_profile_list_profile_id_cmdid ;
   u32 pdev_suspend_cmdid ;
   u32 pdev_resume_cmdid ;
   u32 add_bcn_filter_cmdid ;
   u32 rmv_bcn_filter_cmdid ;
   u32 wow_add_wake_pattern_cmdid ;
   u32 wow_del_wake_pattern_cmdid ;
   u32 wow_enable_disable_wake_event_cmdid ;
   u32 wow_enable_cmdid ;
   u32 wow_hostwakeup_from_sleep_cmdid ;
   u32 rtt_measreq_cmdid ;
   u32 rtt_tsf_cmdid ;
   u32 vdev_spectral_scan_configure_cmdid ;
   u32 vdev_spectral_scan_enable_cmdid ;
   u32 request_stats_cmdid ;
   u32 set_arp_ns_offload_cmdid ;
   u32 network_list_offload_config_cmdid ;
   u32 gtk_offload_cmdid ;
   u32 csa_offload_enable_cmdid ;
   u32 csa_offload_chanswitch_cmdid ;
   u32 chatter_set_mode_cmdid ;
   u32 peer_tid_addba_cmdid ;
   u32 peer_tid_delba_cmdid ;
   u32 sta_dtim_ps_method_cmdid ;
   u32 sta_uapsd_auto_trig_cmdid ;
   u32 sta_keepalive_cmd ;
   u32 echo_cmdid ;
   u32 pdev_utf_cmdid ;
   u32 dbglog_cfg_cmdid ;
   u32 pdev_qvit_cmdid ;
   u32 pdev_ftm_intg_cmdid ;
   u32 vdev_set_keepalive_cmdid ;
   u32 vdev_get_keepalive_cmdid ;
   u32 force_fw_hang_cmdid ;
   u32 gpio_config_cmdid ;
   u32 gpio_output_cmdid ;
};
struct wmi_pdev_param_map {
   u32 tx_chain_mask ;
   u32 rx_chain_mask ;
   u32 txpower_limit2g ;
   u32 txpower_limit5g ;
   u32 txpower_scale ;
   u32 beacon_gen_mode ;
   u32 beacon_tx_mode ;
   u32 resmgr_offchan_mode ;
   u32 protection_mode ;
   u32 dynamic_bw ;
   u32 non_agg_sw_retry_th ;
   u32 agg_sw_retry_th ;
   u32 sta_kickout_th ;
   u32 ac_aggrsize_scaling ;
   u32 ltr_enable ;
   u32 ltr_ac_latency_be ;
   u32 ltr_ac_latency_bk ;
   u32 ltr_ac_latency_vi ;
   u32 ltr_ac_latency_vo ;
   u32 ltr_ac_latency_timeout ;
   u32 ltr_sleep_override ;
   u32 ltr_rx_override ;
   u32 ltr_tx_activity_timeout ;
   u32 l1ss_enable ;
   u32 dsleep_enable ;
   u32 pcielp_txbuf_flush ;
   u32 pcielp_txbuf_watermark ;
   u32 pcielp_txbuf_tmo_en ;
   u32 pcielp_txbuf_tmo_value ;
   u32 pdev_stats_update_period ;
   u32 vdev_stats_update_period ;
   u32 peer_stats_update_period ;
   u32 bcnflt_stats_update_period ;
   u32 pmf_qos ;
   u32 arp_ac_override ;
   u32 arpdhcp_ac_override ;
   u32 dcs ;
   u32 ani_enable ;
   u32 ani_poll_period ;
   u32 ani_listen_period ;
   u32 ani_ofdm_level ;
   u32 ani_cck_level ;
   u32 dyntxchain ;
   u32 proxy_sta ;
   u32 idle_ps_config ;
   u32 power_gating_sleep ;
   u32 fast_channel_reset ;
   u32 burst_dur ;
   u32 burst_enable ;
};
struct wmi_wmm_params_arg {
   u32 cwmin ;
   u32 cwmax ;
   u32 aifs ;
   u32 txop ;
   u32 acm ;
   u32 no_ack ;
};
struct wmi_pdev_set_wmm_params_arg {
   struct wmi_wmm_params_arg ac_be ;
   struct wmi_wmm_params_arg ac_bk ;
   struct wmi_wmm_params_arg ac_vi ;
   struct wmi_wmm_params_arg ac_vo ;
};
struct wmi_vdev_param_map {
   u32 rts_threshold ;
   u32 fragmentation_threshold ;
   u32 beacon_interval ;
   u32 listen_interval ;
   u32 multicast_rate ;
   u32 mgmt_tx_rate ;
   u32 slot_time ;
   u32 preamble ;
   u32 swba_time ;
   u32 wmi_vdev_stats_update_period ;
   u32 wmi_vdev_pwrsave_ageout_time ;
   u32 wmi_vdev_host_swba_interval ;
   u32 dtim_period ;
   u32 wmi_vdev_oc_scheduler_air_time_limit ;
   u32 wds ;
   u32 atim_window ;
   u32 bmiss_count_max ;
   u32 bmiss_first_bcnt ;
   u32 bmiss_final_bcnt ;
   u32 feature_wmm ;
   u32 chwidth ;
   u32 chextoffset ;
   u32 disable_htprotection ;
   u32 sta_quickkickout ;
   u32 mgmt_rate ;
   u32 protection_mode ;
   u32 fixed_rate ;
   u32 sgi ;
   u32 ldpc ;
   u32 tx_stbc ;
   u32 rx_stbc ;
   u32 intra_bss_fwd ;
   u32 def_keyid ;
   u32 nss ;
   u32 bcast_data_rate ;
   u32 mcast_data_rate ;
   u32 mcast_indicate ;
   u32 dhcp_indicate ;
   u32 unknown_dest_indicate ;
   u32 ap_keepalive_min_idle_inactive_time_secs ;
   u32 ap_keepalive_max_idle_inactive_time_secs ;
   u32 ap_keepalive_max_unresponsive_time_secs ;
   u32 ap_enable_nawds ;
   u32 mcast2ucast_set ;
   u32 enable_rtscts ;
   u32 txbf ;
   u32 packet_powersave ;
   u32 drop_unencry ;
   u32 tx_encap_type ;
   u32 ap_detect_out_of_sync_sleeping_sta_time_secs ;
};
struct ath_ani {
   bool caldone ;
   unsigned int longcal_timer ;
   unsigned int shortcal_timer ;
   unsigned int resetcal_timer ;
   unsigned int checkani_timer ;
   struct timer_list timer ;
};
struct ath_cycle_counters {
   u32 cycles ;
   u32 rx_busy ;
   u32 rx_frame ;
   u32 tx_frame ;
};
enum ath_device_state {
    ATH_HW_UNAVAILABLE = 0,
    ATH_HW_INITIALIZED = 1
} ;
struct reg_dmn_pair_mapping {
   u16 regDmnEnum ;
   u16 reg_5ghz_ctl ;
   u16 reg_2ghz_ctl ;
};
struct ath_regulatory {
   char alpha2[2U] ;
   u16 country_code ;
   u16 max_power_level ;
   u16 current_rd ;
   int16_t power_limit ;
   struct reg_dmn_pair_mapping *regpair ;
};
enum ath_crypt_caps {
    ATH_CRYPT_CAP_CIPHER_AESCCM = 1,
    ATH_CRYPT_CAP_MIC_COMBINED = 2
} ;
struct ath_ops {
   unsigned int (*read)(void * , u32 ) ;
   void (*multi_read)(void * , u32 * , u32 * , u16 ) ;
   void (*write)(void * , u32 , u32 ) ;
   void (*enable_write_buffer)(void * ) ;
   void (*write_flush)(void * ) ;
   u32 (*rmw)(void * , u32 , u32 , u32 ) ;
};
struct ath_common;
struct ath_bus_ops;
struct ath_common {
   void *ah ;
   void *priv ;
   struct ieee80211_hw *hw ;
   int debug_mask ;
   enum ath_device_state state ;
   struct ath_ani ani ;
   u16 cachelsz ;
   u16 curaid ;
   u8 macaddr[6U] ;
   u8 curbssid[6U] ;
   u8 bssidmask[6U] ;
   u32 rx_bufsize ;
   u32 keymax ;
   unsigned long keymap[2U] ;
   unsigned long tkip_keymap[2U] ;
   unsigned long ccmp_keymap[2U] ;
   enum ath_crypt_caps crypt_caps ;
   unsigned int clockrate ;
   spinlock_t cc_lock ;
   struct ath_cycle_counters cc_ani ;
   struct ath_cycle_counters cc_survey ;
   struct ath_regulatory regulatory ;
   struct ath_regulatory reg_world_copy ;
   struct ath_ops const *ops ;
   struct ath_bus_ops const *bus_ops ;
   bool btcoex_enabled ;
   bool disable_ani ;
   bool bt_ant_diversity ;
};
struct ath_dfs_pool_stats {
   u32 pool_reference ;
   u32 pulse_allocated ;
   u32 pulse_alloc_error ;
   u32 pulse_used ;
   u32 pseq_allocated ;
   u32 pseq_alloc_error ;
   u32 pseq_used ;
};
struct pulse_event {
   u64 ts ;
   u16 freq ;
   u8 width ;
   u8 rssi ;
};
struct radar_detector_specs {
   u8 type_id ;
   u8 width_min ;
   u8 width_max ;
   u16 pri_min ;
   u16 pri_max ;
   u8 num_pri ;
   u8 ppb ;
   u8 ppb_thresh ;
   u8 max_pri_tolerance ;
};
struct dfs_pattern_detector {
   void (*exit)(struct dfs_pattern_detector * ) ;
   bool (*set_dfs_domain)(struct dfs_pattern_detector * , enum nl80211_dfs_regions ) ;
   bool (*add_pulse)(struct dfs_pattern_detector * , struct pulse_event * ) ;
   struct ath_dfs_pool_stats (*get_stats)(struct dfs_pattern_detector * ) ;
   enum nl80211_dfs_regions region ;
   u8 num_radar_types ;
   u64 last_pulse_ts ;
   struct ath_common *common ;
   struct radar_detector_specs const *radar_spec ;
   struct list_head channel_detectors ;
};
struct __anonstruct_htt_334 {
   u8 tid ;
   bool is_offchan ;
   u8 frag_len ;
   u8 pad_len ;
};
struct ath10k_skb_cb {
   dma_addr_t paddr ;
   bool is_mapped ;
   bool is_aborted ;
   u8 vdev_id ;
   struct __anonstruct_htt_334 htt ;
};
struct ath10k_bmi {
   bool done_sent ;
};
struct ath10k_mem_chunk {
   void *vaddr ;
   dma_addr_t paddr ;
   u32 len ;
   u32 req_id ;
};
struct ath10k_wmi {
   enum ath10k_htc_ep_id eid ;
   struct completion service_ready ;
   struct completion unified_ready ;
   wait_queue_head_t tx_credits_wq ;
   struct wmi_cmd_map *cmd ;
   struct wmi_vdev_param_map *vdev_param ;
   struct wmi_pdev_param_map *pdev_param ;
   u32 num_mem_chunks ;
   struct ath10k_mem_chunk mem_chunks[16U] ;
};
struct ath10k_peer_stat {
   u8 peer_macaddr[6U] ;
   u32 peer_rssi ;
   u32 peer_tx_rate ;
};
struct ath10k_target_stats {
   s32 ch_noise_floor ;
   u32 tx_frame_count ;
   u32 rx_frame_count ;
   u32 rx_clear_count ;
   u32 cycle_count ;
   u32 phy_err_count ;
   u32 chan_tx_power ;
   s32 comp_queued ;
   s32 comp_delivered ;
   s32 msdu_enqued ;
   s32 mpdu_enqued ;
   s32 wmm_drop ;
   s32 local_enqued ;
   s32 local_freed ;
   s32 hw_queued ;
   s32 hw_reaped ;
   s32 underrun ;
   s32 tx_abort ;
   s32 mpdus_requed ;
   u32 tx_ko ;
   u32 data_rc ;
   u32 self_triggers ;
   u32 sw_retry_failure ;
   u32 illgl_rate_phy_err ;
   u32 pdev_cont_xretry ;
   u32 pdev_tx_timeout ;
   u32 pdev_resets ;
   u32 phy_underrun ;
   u32 txop_ovf ;
   s32 mid_ppdu_route_change ;
   s32 status_rcvd ;
   s32 r0_frags ;
   s32 r1_frags ;
   s32 r2_frags ;
   s32 r3_frags ;
   s32 htt_msdus ;
   s32 htt_mpdus ;
   s32 loc_msdus ;
   s32 loc_mpdus ;
   s32 oversize_amsdu ;
   s32 phy_errs ;
   s32 phy_err_drop ;
   s32 mpdu_errs ;
   u8 peers ;
   struct ath10k_peer_stat peer_stat[16U] ;
};
struct ath10k_dfs_stats {
   u32 phy_errors ;
   u32 pulses_total ;
   u32 pulses_detected ;
   u32 pulses_discarded ;
   u32 radar_detected ;
};
struct ath10k_debug {
   struct dentry *debugfs_phy ;
   struct ath10k_target_stats target_stats ;
   u32 wmi_service_bitmap[16U] ;
   struct completion event_stats_compl ;
   unsigned long htt_stats_mask ;
   struct delayed_work htt_stats_dwork ;
   struct ath10k_dfs_stats dfs_stats ;
   struct ath_dfs_pool_stats dfs_pool_stats ;
   u32 fw_dbglog_mask ;
};
enum ath10k_state {
    ATH10K_STATE_OFF = 0,
    ATH10K_STATE_ON = 1,
    ATH10K_STATE_RESTARTING = 2,
    ATH10K_STATE_RESTARTED = 3,
    ATH10K_STATE_WEDGED = 4
} ;
struct ath10k_hw_params_fw {
   char const *dir ;
   char const *fw ;
   char const *otp ;
   char const *board ;
};
struct ath10k_hw_params {
   u32 id ;
   char const *name ;
   u32 patch_load_addr ;
   struct ath10k_hw_params_fw fw ;
};
struct targetdef;
struct hostdef;
struct ath10k_hif_ops;
struct __anonstruct_hif_339 {
   void *priv ;
   struct ath10k_hif_ops const *ops ;
};
struct firmware;
struct __anonstruct_scan_340 {
   struct completion started ;
   struct completion completed ;
   struct completion on_channel ;
   struct timer_list timeout ;
   bool is_roc ;
   bool in_progress ;
   bool aborting ;
   int vdev_id ;
   int roc_freq ;
};
struct __anonstruct_mac_341 {
   struct ieee80211_supported_band sbands[3U] ;
};
struct ath10k {
   struct ath_common ath_common ;
   struct ieee80211_hw *hw ;
   struct device *dev ;
   u8 mac_addr[6U] ;
   u32 chip_id ;
   u32 target_version ;
   u8 fw_version_major ;
   u32 fw_version_minor ;
   u16 fw_version_release ;
   u16 fw_version_build ;
   u32 phy_capability ;
   u32 hw_min_tx_power ;
   u32 hw_max_tx_power ;
   u32 ht_cap_info ;
   u32 vht_cap_info ;
   u32 num_rf_chains ;
   unsigned long fw_features[1U] ;
   struct targetdef *targetdef ;
   struct hostdef *hostdef ;
   bool p2p ;
   struct __anonstruct_hif_339 hif ;
   wait_queue_head_t event_queue ;
   bool is_target_paused ;
   struct ath10k_bmi bmi ;
   struct ath10k_wmi wmi ;
   struct ath10k_htc htc ;
   struct ath10k_htt htt ;
   struct ath10k_hw_params hw_params ;
   struct firmware const *board ;
   void const *board_data ;
   size_t board_len ;
   struct firmware const *otp ;
   void const *otp_data ;
   size_t otp_len ;
   struct firmware const *firmware ;
   void const *firmware_data ;
   size_t firmware_len ;
   int fw_api ;
   struct __anonstruct_scan_340 scan ;
   struct __anonstruct_mac_341 mac ;
   struct ieee80211_channel *rx_channel ;
   struct ieee80211_channel *scan_channel ;
   int free_vdev_map ;
   int monitor_vdev_id ;
   bool monitor_enabled ;
   bool monitor_present ;
   unsigned int filter_flags ;
   unsigned long dev_flags ;
   u32 dfs_block_radar_events ;
   struct wmi_pdev_set_wmm_params_arg wmm_params ;
   struct completion install_key_done ;
   struct completion vdev_setup_done ;
   struct workqueue_struct *workqueue ;
   struct mutex conf_mutex ;
   spinlock_t data_lock ;
   struct list_head arvifs ;
   struct list_head peers ;
   wait_queue_head_t peer_mapping_wq ;
   int num_peers ;
   struct work_struct offchan_tx_work ;
   struct sk_buff_head offchan_tx_queue ;
   struct completion offchan_tx_completed ;
   struct sk_buff *offchan_tx_skb ;
   struct work_struct wmi_mgmt_tx_work ;
   struct sk_buff_head wmi_mgmt_tx_queue ;
   enum ath10k_state state ;
   struct work_struct restart_work ;
   u32 survey_last_rx_clear_count ;
   u32 survey_last_cycle_count ;
   struct survey_info survey[38U] ;
   struct dfs_pattern_detector *dfs_detector ;
   struct ath10k_debug debug ;
};
enum ath10k_debug_mask {
    ATH10K_DBG_PCI = 1,
    ATH10K_DBG_WMI = 2,
    ATH10K_DBG_HTC = 4,
    ATH10K_DBG_HTT = 8,
    ATH10K_DBG_MAC = 16,
    ATH10K_DBG_BOOT = 32,
    ATH10K_DBG_PCI_DUMP = 64,
    ATH10K_DBG_HTT_DUMP = 128,
    ATH10K_DBG_MGMT = 256,
    ATH10K_DBG_DATA = 512,
    ATH10K_DBG_BMI = 1024,
    ATH10K_DBG_REGULATORY = 2048,
    ATH10K_DBG_ANY = 4294967295U
} ;
struct ath10k_hif_cb {
   int (*tx_completion)(struct ath10k * , struct sk_buff * , unsigned int ) ;
   int (*rx_completion)(struct ath10k * , struct sk_buff * , u8 ) ;
};
struct ath10k_hif_ops {
   int (*send_head)(struct ath10k * , u8 , unsigned int , unsigned int , struct sk_buff * ) ;
   int (*exchange_bmi_msg)(struct ath10k * , void * , u32 , void * , u32 * ) ;
   int (*start)(struct ath10k * ) ;
   void (*stop)(struct ath10k * ) ;
   int (*map_service_to_pipe)(struct ath10k * , u16 , u8 * , u8 * , int * , int * ) ;
   void (*get_default_pipe)(struct ath10k * , u8 * , u8 * ) ;
   void (*send_complete_check)(struct ath10k * , u8 , int ) ;
   void (*set_callbacks)(struct ath10k * , struct ath10k_hif_cb * ) ;
   u16 (*get_free_queue_number)(struct ath10k * , u8 ) ;
   int (*power_up)(struct ath10k * ) ;
   void (*power_down)(struct ath10k * ) ;
   int (*suspend)(struct ath10k * ) ;
   int (*resume)(struct ath10k * ) ;
};
struct ath10k_ce_pipe;
struct ce_desc {
   __le32 addr ;
   __le16 nbytes ;
   __le16 flags ;
};
struct ath10k_ce_ring {
   unsigned int nentries ;
   unsigned int nentries_mask ;
   unsigned int sw_index ;
   unsigned int write_index ;
   unsigned int hw_index ;
   void *base_addr_owner_space_unaligned ;
   u32 base_addr_ce_space_unaligned ;
   void *base_addr_owner_space ;
   u32 base_addr_ce_space ;
   void *shadow_base_unaligned ;
   struct ce_desc *shadow_base ;
   void **per_transfer_context ;
};
struct ath10k_ce_pipe {
   struct ath10k *ar ;
   unsigned int id ;
   unsigned int attr_flags ;
   u32 ctrl_addr ;
   void (*send_cb)(struct ath10k_ce_pipe * ) ;
   void (*recv_cb)(struct ath10k_ce_pipe * ) ;
   unsigned int src_sz_max ;
   struct ath10k_ce_ring *src_ring ;
   struct ath10k_ce_ring *dest_ring ;
};
struct ce_attr;
struct ce_attr {
   unsigned int flags ;
   unsigned int src_nentries ;
   unsigned int src_sz_max ;
   unsigned int dest_nentries ;
};
struct bmi_xfer {
   struct completion done ;
   bool wait_for_resp ;
   u32 resp_len ;
};
enum ath10k_pci_compl_state {
    ATH10K_PCI_COMPL_FREE = 0,
    ATH10K_PCI_COMPL_SEND = 1,
    ATH10K_PCI_COMPL_RECV = 2
} ;
struct ath10k_pci_pipe;
struct ath10k_pci_compl {
   struct list_head list ;
   enum ath10k_pci_compl_state state ;
   struct ath10k_ce_pipe *ce_state ;
   struct ath10k_pci_pipe *pipe_info ;
   struct sk_buff *skb ;
   unsigned int nbytes ;
   unsigned int transfer_id ;
   unsigned int flags ;
};
struct ce_pipe_config {
   u32 pipenum ;
   u32 pipedir ;
   u32 nentries ;
   u32 nbytes_max ;
   u32 flags ;
   u32 reserved ;
};
struct service_to_pipe {
   u32 service_id ;
   u32 pipedir ;
   u32 pipenum ;
};
struct ath10k_pci;
struct ath10k_pci_pipe {
   struct ath10k_ce_pipe *ce_hdl ;
   u8 pipe_num ;
   struct ath10k *hif_ce_state ;
   size_t buf_sz ;
   spinlock_t pipe_lock ;
   struct list_head compl_free ;
   struct ath10k_pci *ar_pci ;
   struct tasklet_struct intr ;
};
struct ath10k_pci {
   struct pci_dev *pdev ;
   struct device *dev ;
   struct ath10k *ar ;
   void *mem ;
   unsigned long features[1U] ;
   int num_msi_intrs ;
   struct tasklet_struct intr_tq ;
   struct tasklet_struct msi_fw_err ;
   struct tasklet_struct early_irq_tasklet ;
   int started ;
   atomic_t keep_awake_count ;
   bool verified_awake ;
   struct list_head compl_process ;
   spinlock_t compl_lock ;
   bool compl_processing ;
   struct ath10k_pci_pipe pipe_info[8U] ;
   struct ath10k_hif_cb msg_callbacks_current ;
   u32 fw_indicator_address ;
   struct ath10k_ce_pipe *ce_diag ;
   spinlock_t ce_lock ;
   struct ath10k_ce_pipe ce_states[8U] ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
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
struct clk;
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
extern void ldv_initialize(void) ;
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
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void *kmemdup(void const * , size_t , gfp_t ) ;
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
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
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
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern void __might_sleep(char const * , int , int ) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/e5e3e20/linux-drivers-clk1/lkbce/arch/x86/include/asm/paravirt.h"),
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
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
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
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_bh(& lock->__annonCompField19.rlock);
  }
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
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
extern bool completion_done(struct completion * ) ;
extern void complete(struct completion * ) ;
extern unsigned long volatile jiffies ;
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
extern unsigned int ioread32(void * ) ;
extern void iowrite32(u32 , void * ) ;
extern void pci_iounmap(struct pci_dev * , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
static void *ldv_dev_get_drvdata_6(struct device const *dev ) ;
static int ldv_dev_set_drvdata_7(struct device *dev , void *data ) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
extern int pci_bus_write_config_dword(struct pci_bus * , unsigned int , int , u32 ) ;
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
extern void pci_clear_master(struct pci_dev * ) ;
extern int pci_assign_resource(struct pci_dev * , int ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_request_region(struct pci_dev * , int , char const * ) ;
extern void pci_release_region(struct pci_dev * , int ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_17(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_18(struct pci_driver *ldv_func_arg1 ) ;
extern int pci_enable_msi_block(struct pci_dev * , int ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
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
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
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
    warn_slowpath_null("/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/e5e3e20/linux-drivers-clk1/lkbce/arch/x86/include/asm/dma-mapping.h",
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
  tmp = ldv_dev_get_drvdata_6((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_7(& pdev->dev, data);
  }
  return;
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
__inline static int ldv_request_irq_8(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                void * ) ,
                                      unsigned long flags , char const *name , void *dev ) ;
__inline static int ldv_request_irq_10(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_11(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_14(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_15(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_9(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_12(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_13(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_16(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
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
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
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
extern void skb_trim(struct sk_buff * , unsigned int ) ;
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
extern void __udelay(unsigned long ) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern void schedule(void) ;
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  {
  __dev_kfree_skb_any(skb, 1);
  }
  return;
}
}
__inline static struct ieee80211_tx_info *IEEE80211_SKB_CB(struct sk_buff *skb )
{
  {
  return ((struct ieee80211_tx_info *)(& skb->cb));
}
}
extern void __compiletime_assert_69(void) ;
__inline static struct ath10k_skb_cb *ATH10K_SKB_CB(struct sk_buff *skb )
{
  bool __cond ;
  struct ieee80211_tx_info *tmp ;
  {
  __cond = 0;
  if ((int )__cond) {
    {
    __compiletime_assert_69();
    }
  } else {
  }
  {
  tmp = IEEE80211_SKB_CB(skb);
  }
  return ((struct ath10k_skb_cb *)(& tmp->__annonCompField103.driver_data));
}
}
__inline static u32 host_interest_item_address(u32 item_offset )
{
  {
  return (item_offset + 4196352U);
}
}
extern struct ath10k *ath10k_core_create(void * , struct device * , struct ath10k_hif_ops const * ) ;
extern void ath10k_core_destroy(struct ath10k * ) ;
extern int ath10k_core_register(struct ath10k * , u32 ) ;
extern void ath10k_core_unregister(struct ath10k * ) ;
extern int ath10k_info(char const * , ...) ;
extern int ath10k_err(char const * , ...) ;
extern int ath10k_warn(char const * , ...) ;
extern void ath10k_dbg(enum ath10k_debug_mask , char const * , ...) ;
extern void ath10k_dbg_dump(enum ath10k_debug_mask , char const * , char const * ,
                            void const * , size_t ) ;
int ath10k_ce_send(struct ath10k_ce_pipe *ce_state , void *per_transfer_context ,
                   u32 buffer , unsigned int nbytes , unsigned int transfer_id , unsigned int flags ) ;
void ath10k_ce_send_cb_register(struct ath10k_ce_pipe *ce_state , void (*send_cb)(struct ath10k_ce_pipe * ) ,
                                int disable_interrupts ) ;
int ath10k_ce_num_free_src_entries(struct ath10k_ce_pipe *pipe ) ;
int ath10k_ce_recv_buf_enqueue(struct ath10k_ce_pipe *ce_state , void *per_recv_context ,
                               u32 buffer ) ;
void ath10k_ce_recv_cb_register(struct ath10k_ce_pipe *ce_state , void (*recv_cb)(struct ath10k_ce_pipe * ) ) ;
int ath10k_ce_completed_recv_next(struct ath10k_ce_pipe *ce_state , void **per_transfer_contextp ,
                                  u32 *bufferp , unsigned int *nbytesp , unsigned int *transfer_idp ,
                                  unsigned int *flagsp ) ;
int ath10k_ce_completed_send_next(struct ath10k_ce_pipe *ce_state , void **per_transfer_contextp ,
                                  u32 *bufferp , unsigned int *nbytesp , unsigned int *transfer_idp ) ;
struct ath10k_ce_pipe *ath10k_ce_init(struct ath10k *ar , unsigned int ce_id , struct ce_attr const *attr ) ;
int ath10k_ce_revoke_recv_next(struct ath10k_ce_pipe *ce_state , void **per_transfer_contextp ,
                               u32 *bufferp ) ;
int ath10k_ce_cancel_send_next(struct ath10k_ce_pipe *ce_state , void **per_transfer_contextp ,
                               u32 *bufferp , unsigned int *nbytesp , unsigned int *transfer_idp ) ;
void ath10k_ce_deinit(struct ath10k_ce_pipe *ce_state ) ;
void ath10k_ce_per_engine_service_any(struct ath10k *ar ) ;
void ath10k_ce_per_engine_service(struct ath10k *ar , unsigned int ce_id ) ;
int ath10k_ce_disable_interrupts(struct ath10k *ar ) ;
__inline static struct ath10k_pci *ath10k_pci_priv(struct ath10k *ar )
{
  {
  return ((struct ath10k_pci *)ar->hif.priv);
}
}
__inline static u32 ath10k_pci_reg_read32(struct ath10k *ar , u32 addr )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  unsigned int tmp___0 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  tmp___0 = ioread32(ar_pci->mem + ((unsigned long )addr + 524288UL));
  }
  return (tmp___0);
}
}
__inline static void ath10k_pci_reg_write32(struct ath10k *ar , u32 addr , u32 val )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  iowrite32(val, ar_pci->mem + ((unsigned long )addr + 524288UL));
  }
  return;
}
}
__inline static void ath10k_pci_write32(struct ath10k *ar , u32 offset , u32 value )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  iowrite32(value, ar_pci->mem + (unsigned long )offset);
  }
  return;
}
}
__inline static u32 ath10k_pci_read32(struct ath10k *ar , u32 offset )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  unsigned int tmp___0 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  tmp___0 = ioread32(ar_pci->mem + (unsigned long )offset);
  }
  return (tmp___0);
}
}
__inline static u32 ath10k_pci_soc_read32(struct ath10k *ar , u32 addr )
{
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, addr + 16384U);
  }
  return (tmp);
}
}
int ath10k_do_pci_wake(struct ath10k *ar ) ;
void ath10k_do_pci_sleep(struct ath10k *ar ) ;
__inline static int ath10k_pci_wake(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  tmp___1 = constant_test_bit(1L, (unsigned long const volatile *)(& ar_pci->features));
  }
  if (tmp___1 != 0) {
    {
    tmp___0 = ath10k_do_pci_wake(ar);
    }
    return (tmp___0);
  } else {
  }
  return (0);
}
}
__inline static void ath10k_pci_sleep(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  tmp___0 = constant_test_bit(1L, (unsigned long const volatile *)(& ar_pci->features));
  }
  if (tmp___0 != 0) {
    {
    ath10k_do_pci_sleep(ar);
    }
  } else {
  }
  return;
}
}
static unsigned int ath10k_target_ps ;
static unsigned int ath10k_pci_irq_mode = 0U;
static struct pci_device_id const ath10k_pci_id_table[2U] = { {5772U, 60U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
static int ath10k_pci_diag_read_access(struct ath10k *ar , u32 address , u32 *data ) ;
static void ath10k_pci_process_ce(struct ath10k *ar ) ;
static int ath10k_pci_post_rx(struct ath10k *ar ) ;
static int ath10k_pci_post_rx_pipe(struct ath10k_pci_pipe *pipe_info , int num ) ;
static void ath10k_pci_rx_pipe_cleanup(struct ath10k_pci_pipe *pipe_info ) ;
static void ath10k_pci_stop_ce(struct ath10k *ar ) ;
static int ath10k_pci_device_reset(struct ath10k *ar ) ;
static int ath10k_pci_wait_for_target_init(struct ath10k *ar ) ;
static int ath10k_pci_init_irq(struct ath10k *ar ) ;
static int ath10k_pci_deinit_irq(struct ath10k *ar ) ;
static int ath10k_pci_request_irq(struct ath10k *ar ) ;
static void ath10k_pci_free_irq(struct ath10k *ar ) ;
static int ath10k_pci_bmi_wait(struct ath10k_ce_pipe *tx_pipe , struct ath10k_ce_pipe *rx_pipe ,
                               struct bmi_xfer *xfer ) ;
static void ath10k_pci_cleanup_ce(struct ath10k *ar ) ;
static struct ce_attr const host_ce_config_wlan[8U] =
  { {0U, 16U, 256U, 0U},
        {0U, 0U, 512U, 512U},
        {0U, 0U, 2048U, 32U},
        {0U, 32U, 2048U, 0U},
        {8U, 2048U, 256U, 0U},
        {0U, 0U, 0U, 0U},
        {0U, 0U, 0U, 0U},
        {0U, 2U, 2048U, 2U}};
static struct ce_pipe_config const target_ce_config_wlan[7U] = { {0U, 2U, 32U, 256U, 0U, 0U},
        {1U, 1U, 32U, 512U, 0U, 0U},
        {2U, 1U, 32U, 2048U, 0U, 0U},
        {3U, 2U, 32U, 2048U, 0U, 0U},
        {4U, 2U, 256U, 256U, 0U, 0U},
        {5U, 2U, 32U, 2048U, 0U, 0U},
        {6U, 3U, 32U, 4096U, 0U, 0U}};
static bool ath10k_pci_irq_pending(struct ath10k *ar )
{
  u32 cause ;
  {
  {
  cause = ath10k_pci_read32(ar, 36876U);
  }
  if ((cause & 523264U) != 0U) {
    return (1);
  } else {
  }
  return (0);
}
}
static void ath10k_pci_disable_and_clear_legacy_irq(struct ath10k *ar )
{
  {
  {
  ath10k_pci_write32(ar, 36872U, 0U);
  ath10k_pci_write32(ar, 36884U, 523264U);
  ath10k_pci_read32(ar, 36872U);
  }
  return;
}
}
static void ath10k_pci_enable_legacy_irq(struct ath10k *ar )
{
  {
  {
  ath10k_pci_write32(ar, 36872U, 523264U);
  ath10k_pci_read32(ar, 36872U);
  }
  return;
}
}
static irqreturn_t ath10k_pci_early_irq_handler(int irq , void *arg )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  ar = (struct ath10k *)arg;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  }
  if (ar_pci->num_msi_intrs == 0) {
    {
    tmp___0 = ath10k_pci_irq_pending(ar);
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
    ath10k_pci_disable_and_clear_legacy_irq(ar);
    }
  } else {
  }
  {
  tasklet_schedule(& ar_pci->early_irq_tasklet);
  }
  return (1);
}
}
static int ath10k_pci_request_early_irq(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int ret ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ret = ldv_request_irq_8((ar_pci->pdev)->irq, & ath10k_pci_early_irq_handler, 128UL,
                          "ath10k_pci (early)", (void *)ar);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to request early irq: %d\n", ret);
    }
    return (ret);
  } else {
  }
  return (0);
}
}
static void ath10k_pci_free_early_irq(struct ath10k *ar )
{
  struct ath10k_pci *tmp ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ldv_free_irq_9((tmp->pdev)->irq, (void *)ar);
  }
  return;
}
}
static int ath10k_pci_diag_read_mem(struct ath10k *ar , u32 address , void *data ,
                                    int nbytes )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int ret ;
  u32 buf ;
  unsigned int completed_nbytes ;
  unsigned int orig_nbytes ;
  unsigned int remaining_bytes ;
  unsigned int id ;
  unsigned int flags ;
  struct ath10k_ce_pipe *ce_diag ;
  u32 ce_data ;
  dma_addr_t ce_data_base ;
  void *data_buf ;
  int i ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  unsigned int tmp___0 ;
  unsigned long __ms ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  unsigned long __ms___0 ;
  unsigned long tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ret = 0;
  ce_data_base = 0ULL;
  data_buf = (void *)0;
  }
  if (address <= 4194303U) {
    if ((address & 3U) != 0U || ((unsigned long )data & 3UL) != 0UL) {
      return (-5);
    } else {
    }
    goto ldv_52267;
    ldv_52266:
    nbytes = (int )((unsigned int )nbytes - 4U);
    address = address + 4U;
    data = data + 4UL;
    ldv_52267: ;
    if (nbytes > 3) {
      {
      ret = ath10k_pci_diag_read_access(ar, address, (u32 *)data);
      }
      if (ret == 0) {
        goto ldv_52266;
      } else {
        goto ldv_52268;
      }
    } else {
    }
    ldv_52268: ;
    return (ret);
  } else {
  }
  {
  ce_diag = ar_pci->ce_diag;
  orig_nbytes = (unsigned int )nbytes;
  data_buf = pci_alloc_consistent(ar_pci->pdev, (size_t )orig_nbytes, & ce_data_base);
  }
  if ((unsigned long )data_buf == (unsigned long )((void *)0)) {
    ret = -12;
    goto done;
  } else {
  }
  {
  memset(data_buf, 0, (size_t )orig_nbytes);
  remaining_bytes = orig_nbytes;
  ce_data = (u32 )ce_data_base;
  }
  goto ldv_52288;
  ldv_52287:
  {
  __min1 = remaining_bytes;
  __min2 = 2048U;
  nbytes = (int )(__min1 < __min2 ? __min1 : __min2);
  ret = ath10k_ce_recv_buf_enqueue(ce_diag, (void *)0, ce_data);
  }
  if (ret != 0) {
    goto done;
  } else {
  }
  {
  ath10k_pci_wake(ar);
  tmp___0 = ioread32(ar_pci->mem + 36864UL);
  address = ((tmp___0 << 21) | (address & 1048575U)) | 1048576U;
  ath10k_pci_sleep(ar);
  ret = ath10k_ce_send(ce_diag, (void *)0, address, (unsigned int )nbytes, 0U, 0U);
  }
  if (ret != 0) {
    goto done;
  } else {
  }
  i = 0;
  goto ldv_52278;
  ldv_52277: ;
  if (1) {
    {
    __const_udelay(4295000UL);
    }
  } else {
    __ms = 1UL;
    goto ldv_52275;
    ldv_52274:
    {
    __const_udelay(4295000UL);
    }
    ldv_52275:
    tmp___1 = __ms;
    __ms = __ms - 1UL;
    if (tmp___1 != 0UL) {
      goto ldv_52274;
    } else {
    }
  }
  tmp___2 = i;
  i = i + 1;
  if (tmp___2 > 10) {
    ret = -16;
    goto done;
  } else {
  }
  ldv_52278:
  {
  tmp___3 = ath10k_ce_completed_send_next(ce_diag, (void **)0, & buf, & completed_nbytes,
                                          & id);
  }
  if (tmp___3 != 0) {
    goto ldv_52277;
  } else {
  }
  if ((unsigned int )nbytes != completed_nbytes) {
    ret = -5;
    goto done;
  } else {
  }
  if (buf != address) {
    ret = -5;
    goto done;
  } else {
  }
  i = 0;
  goto ldv_52285;
  ldv_52284: ;
  if (1) {
    {
    __const_udelay(4295000UL);
    }
  } else {
    __ms___0 = 1UL;
    goto ldv_52282;
    ldv_52281:
    {
    __const_udelay(4295000UL);
    }
    ldv_52282:
    tmp___4 = __ms___0;
    __ms___0 = __ms___0 - 1UL;
    if (tmp___4 != 0UL) {
      goto ldv_52281;
    } else {
    }
  }
  tmp___5 = i;
  i = i + 1;
  if (tmp___5 > 10) {
    ret = -16;
    goto done;
  } else {
  }
  ldv_52285:
  {
  tmp___6 = ath10k_ce_completed_recv_next(ce_diag, (void **)0, & buf, & completed_nbytes,
                                          & id, & flags);
  }
  if (tmp___6 != 0) {
    goto ldv_52284;
  } else {
  }
  if ((unsigned int )nbytes != completed_nbytes) {
    ret = -5;
    goto done;
  } else {
  }
  if (buf != ce_data) {
    ret = -5;
    goto done;
  } else {
  }
  remaining_bytes = remaining_bytes - (unsigned int )nbytes;
  address = address + (u32 )nbytes;
  ce_data = ce_data + (u32 )nbytes;
  ldv_52288: ;
  if (remaining_bytes != 0U) {
    goto ldv_52287;
  } else {
  }
  done: ;
  if (ret == 0) {
    {
    __ret_warn_once = (orig_nbytes & 3U) != 0U;
    tmp___9 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
    }
    if (tmp___9 != 0L) {
      {
      __ret_warn_on = ! __warned;
      tmp___7 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      }
      if (tmp___7 != 0L) {
        {
        warn_slowpath_null("drivers/net/wireless/ath/ath10k/pci.c", 441);
        }
      } else {
      }
      {
      tmp___8 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      }
      if (tmp___8 != 0L) {
        __warned = 1;
      } else {
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_once != 0, 0L);
    i = 0;
    }
    goto ldv_52296;
    ldv_52295:
    *((u32 *)data + (unsigned long )i) = *((__le32 *)data_buf + (unsigned long )i);
    i = i + 1;
    ldv_52296: ;
    if ((unsigned long )i < (unsigned long )(orig_nbytes / 4U)) {
      goto ldv_52295;
    } else {
    }
  } else {
    {
    ath10k_dbg(1, "%s failure (0x%x)\n", "ath10k_pci_diag_read_mem", address);
    }
  }
  if ((unsigned long )data_buf != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(ar_pci->pdev, (size_t )orig_nbytes, data_buf, ce_data_base);
    }
  } else {
  }
  return (ret);
}
}
static int ath10k_pci_diag_read_access(struct ath10k *ar , u32 address , u32 *data )
{
  int tmp ;
  {
  if (address > 4194303U) {
    {
    tmp = ath10k_pci_diag_read_mem(ar, address, (void *)data, 4);
    }
    return (tmp);
  } else {
  }
  {
  ath10k_pci_wake(ar);
  *data = ath10k_pci_read32(ar, address);
  ath10k_pci_sleep(ar);
  }
  return (0);
}
}
static int ath10k_pci_diag_write_mem(struct ath10k *ar , u32 address , void const *data ,
                                     int nbytes )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int ret ;
  u32 buf ;
  unsigned int completed_nbytes ;
  unsigned int orig_nbytes ;
  unsigned int remaining_bytes ;
  unsigned int id ;
  unsigned int flags ;
  struct ath10k_ce_pipe *ce_diag ;
  void *data_buf ;
  u32 ce_data ;
  dma_addr_t ce_data_base ;
  int i ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  unsigned int tmp___3 ;
  int __min1 ;
  int __min2 ;
  unsigned long __ms ;
  unsigned long tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  unsigned long __ms___0 ;
  unsigned long tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ret = 0;
  data_buf = (void *)0;
  ce_data_base = 0ULL;
  ce_diag = ar_pci->ce_diag;
  orig_nbytes = (unsigned int )nbytes;
  data_buf = pci_alloc_consistent(ar_pci->pdev, (size_t )orig_nbytes, & ce_data_base);
  }
  if ((unsigned long )data_buf == (unsigned long )((void *)0)) {
    ret = -12;
    goto done;
  } else {
  }
  {
  __ret_warn_once = (orig_nbytes & 3U) != 0U;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___0 != 0L) {
      {
      warn_slowpath_null("drivers/net/wireless/ath/ath10k/pci.c", 504);
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
  i = 0;
  }
  goto ldv_52330;
  ldv_52329:
  *((__le32 *)data_buf + (unsigned long )i) = *((u32 *)data + (unsigned long )i);
  i = i + 1;
  ldv_52330: ;
  if ((unsigned long )i < (unsigned long )(orig_nbytes / 4U)) {
    goto ldv_52329;
  } else {
  }
  {
  ath10k_pci_wake(ar);
  tmp___3 = ioread32(ar_pci->mem + 36864UL);
  address = ((tmp___3 << 21) | (address & 1048575U)) | 1048576U;
  ath10k_pci_sleep(ar);
  remaining_bytes = orig_nbytes;
  ce_data = (u32 )ce_data_base;
  }
  goto ldv_52350;
  ldv_52349:
  {
  __min1 = (int )remaining_bytes;
  __min2 = 2048;
  nbytes = __min1 < __min2 ? __min1 : __min2;
  ret = ath10k_ce_recv_buf_enqueue(ce_diag, (void *)0, address);
  }
  if (ret != 0) {
    goto done;
  } else {
  }
  {
  ret = ath10k_ce_send(ce_diag, (void *)0, ce_data, (unsigned int )nbytes, 0U, 0U);
  }
  if (ret != 0) {
    goto done;
  } else {
  }
  i = 0;
  goto ldv_52340;
  ldv_52339: ;
  if (1) {
    {
    __const_udelay(4295000UL);
    }
  } else {
    __ms = 1UL;
    goto ldv_52337;
    ldv_52336:
    {
    __const_udelay(4295000UL);
    }
    ldv_52337:
    tmp___4 = __ms;
    __ms = __ms - 1UL;
    if (tmp___4 != 0UL) {
      goto ldv_52336;
    } else {
    }
  }
  tmp___5 = i;
  i = i + 1;
  if (tmp___5 > 10) {
    ret = -16;
    goto done;
  } else {
  }
  ldv_52340:
  {
  tmp___6 = ath10k_ce_completed_send_next(ce_diag, (void **)0, & buf, & completed_nbytes,
                                          & id);
  }
  if (tmp___6 != 0) {
    goto ldv_52339;
  } else {
  }
  if ((unsigned int )nbytes != completed_nbytes) {
    ret = -5;
    goto done;
  } else {
  }
  if (buf != ce_data) {
    ret = -5;
    goto done;
  } else {
  }
  i = 0;
  goto ldv_52347;
  ldv_52346: ;
  if (1) {
    {
    __const_udelay(4295000UL);
    }
  } else {
    __ms___0 = 1UL;
    goto ldv_52344;
    ldv_52343:
    {
    __const_udelay(4295000UL);
    }
    ldv_52344:
    tmp___7 = __ms___0;
    __ms___0 = __ms___0 - 1UL;
    if (tmp___7 != 0UL) {
      goto ldv_52343;
    } else {
    }
  }
  tmp___8 = i;
  i = i + 1;
  if (tmp___8 > 10) {
    ret = -16;
    goto done;
  } else {
  }
  ldv_52347:
  {
  tmp___9 = ath10k_ce_completed_recv_next(ce_diag, (void **)0, & buf, & completed_nbytes,
                                          & id, & flags);
  }
  if (tmp___9 != 0) {
    goto ldv_52346;
  } else {
  }
  if ((unsigned int )nbytes != completed_nbytes) {
    ret = -5;
    goto done;
  } else {
  }
  if (buf != address) {
    ret = -5;
    goto done;
  } else {
  }
  remaining_bytes = remaining_bytes - (unsigned int )nbytes;
  address = address + (u32 )nbytes;
  ce_data = ce_data + (u32 )nbytes;
  ldv_52350: ;
  if (remaining_bytes != 0U) {
    goto ldv_52349;
  } else {
  }
  done: ;
  if ((unsigned long )data_buf != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(ar_pci->pdev, (size_t )orig_nbytes, data_buf, ce_data_base);
    }
  } else {
  }
  if (ret != 0) {
    {
    ath10k_dbg(1, "%s failure (0x%x)\n", "ath10k_pci_diag_write_mem", address);
    }
  } else {
  }
  return (ret);
}
}
static int ath10k_pci_diag_write_access(struct ath10k *ar , u32 address , u32 data )
{
  int tmp ;
  {
  if (address > 4194303U) {
    {
    tmp = ath10k_pci_diag_write_mem(ar, address, (void const *)(& data), 4);
    }
    return (tmp);
  } else {
  }
  {
  ath10k_pci_wake(ar);
  ath10k_pci_write32(ar, address, data);
  ath10k_pci_sleep(ar);
  }
  return (0);
}
}
static bool ath10k_pci_target_is_awake(struct ath10k *ar )
{
  void *mem ;
  struct ath10k_pci *tmp ;
  u32 val ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  mem = tmp->mem;
  val = ioread32(mem + 524288UL);
  }
  return ((val & 7U) == 3U);
}
}
int ath10k_do_pci_wake(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  void *pci_addr ;
  int tot_delay ;
  int curr_delay ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  pci_addr = ar_pci->mem;
  tot_delay = 0;
  curr_delay = 5;
  tmp___0 = atomic_read((atomic_t const *)(& ar_pci->keep_awake_count));
  }
  if (tmp___0 == 0) {
    {
    iowrite32(1U, pci_addr + 524292U);
    }
  } else {
  }
  {
  atomic_inc(& ar_pci->keep_awake_count);
  }
  if ((int )ar_pci->verified_awake) {
    return (0);
  } else {
  }
  ldv_52370:
  {
  tmp___1 = ath10k_pci_target_is_awake(ar);
  }
  if ((int )tmp___1) {
    ar_pci->verified_awake = 1;
    return (0);
  } else {
  }
  if (tot_delay > 5000) {
    {
    tmp___2 = atomic_read((atomic_t const *)(& ar_pci->keep_awake_count));
    ath10k_warn("target took longer %d us to wake up (awake count %d)\n", 5000, tmp___2);
    }
    return (-110);
  } else {
  }
  {
  __udelay((unsigned long )curr_delay);
  tot_delay = tot_delay + curr_delay;
  }
  if (curr_delay <= 49) {
    curr_delay = curr_delay + 5;
  } else {
  }
  goto ldv_52370;
}
}
void ath10k_do_pci_sleep(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  void *pci_addr ;
  int tmp___0 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  pci_addr = ar_pci->mem;
  tmp___0 = atomic_dec_and_test(& ar_pci->keep_awake_count);
  }
  if (tmp___0 != 0) {
    {
    ar_pci->verified_awake = 0;
    iowrite32(0U, pci_addr + 524292U);
    }
  } else {
  }
  return;
}
}
__inline static struct ath10k_pci_compl *get_free_compl(struct ath10k_pci_pipe *pipe_info )
{
  struct ath10k_pci_compl *compl ;
  int tmp ;
  struct list_head const *__mptr ;
  {
  {
  compl = (struct ath10k_pci_compl *)0;
  spin_lock_bh(& pipe_info->pipe_lock);
  tmp = list_empty((struct list_head const *)(& pipe_info->compl_free));
  }
  if (tmp != 0) {
    {
    ath10k_warn("Completion buffers are full\n");
    }
    goto exit;
  } else {
  }
  {
  __mptr = (struct list_head const *)pipe_info->compl_free.next;
  compl = (struct ath10k_pci_compl *)__mptr;
  list_del(& compl->list);
  }
  exit:
  {
  spin_unlock_bh(& pipe_info->pipe_lock);
  }
  return (compl);
}
}
static void ath10k_pci_ce_send_done(struct ath10k_ce_pipe *ce_state )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct ath10k_pci_pipe *pipe_info ;
  struct ath10k_pci_compl *compl ;
  void *transfer_context ;
  u32 ce_data ;
  unsigned int nbytes ;
  unsigned int transfer_id ;
  int tmp___0 ;
  {
  {
  ar = ce_state->ar;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  pipe_info = (struct ath10k_pci_pipe *)(& ar_pci->pipe_info) + (unsigned long )ce_state->id;
  }
  goto ldv_52396;
  ldv_52395:
  {
  compl = get_free_compl(pipe_info);
  }
  if ((unsigned long )compl == (unsigned long )((struct ath10k_pci_compl *)0)) {
    goto ldv_52394;
  } else {
  }
  {
  compl->state = 1;
  compl->ce_state = ce_state;
  compl->pipe_info = pipe_info;
  compl->skb = (struct sk_buff *)transfer_context;
  compl->nbytes = nbytes;
  compl->transfer_id = transfer_id;
  compl->flags = 0U;
  spin_lock_bh(& ar_pci->compl_lock);
  list_add_tail(& compl->list, & ar_pci->compl_process);
  spin_unlock_bh(& ar_pci->compl_lock);
  }
  ldv_52396:
  {
  tmp___0 = ath10k_ce_completed_send_next(ce_state, & transfer_context, & ce_data,
                                          & nbytes, & transfer_id);
  }
  if (tmp___0 == 0) {
    goto ldv_52395;
  } else {
  }
  ldv_52394:
  {
  ath10k_pci_process_ce(ar);
  }
  return;
}
}
static void ath10k_pci_ce_recv_data(struct ath10k_ce_pipe *ce_state )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct ath10k_pci_pipe *pipe_info ;
  struct ath10k_pci_compl *compl ;
  struct sk_buff *skb ;
  void *transfer_context ;
  u32 ce_data ;
  unsigned int nbytes ;
  unsigned int transfer_id ;
  unsigned int flags ;
  int tmp___0 ;
  struct ath10k_skb_cb *tmp___1 ;
  int tmp___2 ;
  {
  {
  ar = ce_state->ar;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  pipe_info = (struct ath10k_pci_pipe *)(& ar_pci->pipe_info) + (unsigned long )ce_state->id;
  }
  goto ldv_52412;
  ldv_52411:
  {
  compl = get_free_compl(pipe_info);
  }
  if ((unsigned long )compl == (unsigned long )((struct ath10k_pci_compl *)0)) {
    goto ldv_52410;
  } else {
  }
  {
  compl->state = 2;
  compl->ce_state = ce_state;
  compl->pipe_info = pipe_info;
  compl->skb = (struct sk_buff *)transfer_context;
  compl->nbytes = nbytes;
  compl->transfer_id = transfer_id;
  compl->flags = flags;
  skb = (struct sk_buff *)transfer_context;
  tmp___0 = skb_tailroom((struct sk_buff const *)skb);
  tmp___1 = ATH10K_SKB_CB(skb);
  dma_unmap_single_attrs(ar->dev, tmp___1->paddr, (size_t )(skb->len + (unsigned int )tmp___0),
                         2, (struct dma_attrs *)0);
  spin_lock_bh(& ar_pci->compl_lock);
  list_add_tail(& compl->list, & ar_pci->compl_process);
  spin_unlock_bh(& ar_pci->compl_lock);
  }
  ldv_52412:
  {
  tmp___2 = ath10k_ce_completed_recv_next(ce_state, & transfer_context, & ce_data,
                                          & nbytes, & transfer_id, & flags);
  }
  if (tmp___2 == 0) {
    goto ldv_52411;
  } else {
  }
  ldv_52410:
  {
  ath10k_pci_process_ce(ar);
  }
  return;
}
}
static int ath10k_pci_hif_send_head(struct ath10k *ar , u8 pipe_id , unsigned int transfer_id ,
                                    unsigned int bytes , struct sk_buff *nbuf )
{
  struct ath10k_skb_cb *skb_cb ;
  struct ath10k_skb_cb *tmp ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp___0 ;
  struct ath10k_pci_pipe *pipe_info ;
  struct ath10k_ce_pipe *ce_hdl ;
  unsigned int len ;
  u32 flags ;
  int ret ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  {
  {
  tmp = ATH10K_SKB_CB(nbuf);
  skb_cb = tmp;
  tmp___0 = ath10k_pci_priv(ar);
  ar_pci = tmp___0;
  pipe_info = (struct ath10k_pci_pipe *)(& ar_pci->pipe_info) + (unsigned long )pipe_id;
  ce_hdl = pipe_info->ce_hdl;
  flags = 0U;
  _min1 = bytes;
  _min2 = nbuf->len;
  len = _min1 < _min2 ? _min1 : _min2;
  bytes = bytes - len;
  }
  if ((len & 3U) != 0U) {
    {
    ath10k_warn("skb not aligned to 4-byte boundary (%d)\n", len);
    }
  } else {
  }
  {
  ath10k_dbg(1, "pci send data vaddr %p paddr 0x%llx len %d as %d bytes\n", nbuf->data,
             skb_cb->paddr, nbuf->len, len);
  ath10k_dbg_dump(64, (char const *)0, "ath10k tx: data: ", (void const *)nbuf->data,
                  (size_t )nbuf->len);
  ret = ath10k_ce_send(ce_hdl, (void *)nbuf, (u32 )skb_cb->paddr, len, transfer_id,
                       flags);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to send sk_buff to CE: %p\n", nbuf);
    }
  } else {
  }
  return (ret);
}
}
static u16 ath10k_pci_hif_get_free_queue_number(struct ath10k *ar , u8 pipe )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  tmp___0 = ath10k_ce_num_free_src_entries(ar_pci->pipe_info[(int )pipe].ce_hdl);
  }
  return ((u16 )tmp___0);
}
}
extern void __compiletime_assert_858(void) ;
static void ath10k_pci_hif_dump_area(struct ath10k *ar )
{
  u32 reg_dump_area ;
  u32 reg_dump_values[60U] ;
  u32 host_addr ;
  int ret ;
  u32 i ;
  bool __cond ;
  {
  {
  reg_dump_area = 0U;
  reg_dump_values[0] = 0U;
  reg_dump_values[1] = 0U;
  reg_dump_values[2] = 0U;
  reg_dump_values[3] = 0U;
  reg_dump_values[4] = 0U;
  reg_dump_values[5] = 0U;
  reg_dump_values[6] = 0U;
  reg_dump_values[7] = 0U;
  reg_dump_values[8] = 0U;
  reg_dump_values[9] = 0U;
  reg_dump_values[10] = 0U;
  reg_dump_values[11] = 0U;
  reg_dump_values[12] = 0U;
  reg_dump_values[13] = 0U;
  reg_dump_values[14] = 0U;
  reg_dump_values[15] = 0U;
  reg_dump_values[16] = 0U;
  reg_dump_values[17] = 0U;
  reg_dump_values[18] = 0U;
  reg_dump_values[19] = 0U;
  reg_dump_values[20] = 0U;
  reg_dump_values[21] = 0U;
  reg_dump_values[22] = 0U;
  reg_dump_values[23] = 0U;
  reg_dump_values[24] = 0U;
  reg_dump_values[25] = 0U;
  reg_dump_values[26] = 0U;
  reg_dump_values[27] = 0U;
  reg_dump_values[28] = 0U;
  reg_dump_values[29] = 0U;
  reg_dump_values[30] = 0U;
  reg_dump_values[31] = 0U;
  reg_dump_values[32] = 0U;
  reg_dump_values[33] = 0U;
  reg_dump_values[34] = 0U;
  reg_dump_values[35] = 0U;
  reg_dump_values[36] = 0U;
  reg_dump_values[37] = 0U;
  reg_dump_values[38] = 0U;
  reg_dump_values[39] = 0U;
  reg_dump_values[40] = 0U;
  reg_dump_values[41] = 0U;
  reg_dump_values[42] = 0U;
  reg_dump_values[43] = 0U;
  reg_dump_values[44] = 0U;
  reg_dump_values[45] = 0U;
  reg_dump_values[46] = 0U;
  reg_dump_values[47] = 0U;
  reg_dump_values[48] = 0U;
  reg_dump_values[49] = 0U;
  reg_dump_values[50] = 0U;
  reg_dump_values[51] = 0U;
  reg_dump_values[52] = 0U;
  reg_dump_values[53] = 0U;
  reg_dump_values[54] = 0U;
  reg_dump_values[55] = 0U;
  reg_dump_values[56] = 0U;
  reg_dump_values[57] = 0U;
  reg_dump_values[58] = 0U;
  reg_dump_values[59] = 0U;
  ath10k_err("firmware crashed!\n");
  ath10k_err("hardware name %s version 0x%x\n", ar->hw_params.name, ar->target_version);
  ath10k_err("firmware version: %u.%u.%u.%u\n", (int )ar->fw_version_major, ar->fw_version_minor,
             (int )ar->fw_version_release, (int )ar->fw_version_build);
  host_addr = host_interest_item_address(4U);
  ret = ath10k_pci_diag_read_mem(ar, host_addr, (void *)(& reg_dump_area), 4);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to read FW dump area address: %d\n", ret);
    }
    return;
  } else {
  }
  {
  ath10k_err("target register Dump Location: 0x%08X\n", reg_dump_area);
  ret = ath10k_pci_diag_read_mem(ar, reg_dump_area, (void *)(& reg_dump_values), 240);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to read FW dump area: %d\n", ret);
    }
    return;
  } else {
  }
  __cond = 0;
  if ((int )__cond) {
    {
    __compiletime_assert_858();
    }
  } else {
  }
  {
  ath10k_err("target Register Dump\n");
  i = 0U;
  }
  goto ldv_52448;
  ldv_52447:
  {
  ath10k_err("[%02d]: 0x%08X 0x%08X 0x%08X 0x%08X\n", i, reg_dump_values[i], reg_dump_values[i + 1U],
             reg_dump_values[i + 2U], reg_dump_values[i + 3U]);
  i = i + 4U;
  }
  ldv_52448: ;
  if (i <= 59U) {
    goto ldv_52447;
  } else {
  }
  {
  queue_work(ar->workqueue, & ar->restart_work);
  }
  return;
}
}
static void ath10k_pci_hif_send_complete_check(struct ath10k *ar , u8 pipe , int force )
{
  int resources ;
  u16 tmp ;
  {
  if (force == 0) {
    {
    tmp = ath10k_pci_hif_get_free_queue_number(ar, (int )pipe);
    resources = (int )tmp;
    }
    if ((unsigned int )resources > (unsigned int )(host_ce_config_wlan[(int )pipe].src_nentries >> 1)) {
      return;
    } else {
    }
  } else {
  }
  {
  ath10k_ce_per_engine_service(ar, (unsigned int )pipe);
  }
  return;
}
}
static void ath10k_pci_hif_set_callbacks(struct ath10k *ar , struct ath10k_hif_cb *callbacks )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ath10k_dbg(1, "%s\n", "ath10k_pci_hif_set_callbacks");
  memcpy((void *)(& ar_pci->msg_callbacks_current), (void const *)callbacks, 16UL);
  }
  return;
}
}
static int ath10k_pci_alloc_compl(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct ce_attr const *attr ;
  struct ath10k_pci_pipe *pipe_info ;
  struct ath10k_pci_compl *compl ;
  int i ;
  int pipe_num ;
  int completions ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  void *tmp___0 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  spinlock_check(& ar_pci->compl_lock);
  __raw_spin_lock_init(& ar_pci->compl_lock.__annonCompField19.rlock, "&(&ar_pci->compl_lock)->rlock",
                       & __key);
  INIT_LIST_HEAD(& ar_pci->compl_process);
  pipe_num = 0;
  }
  goto ldv_52479;
  ldv_52478:
  {
  pipe_info = (struct ath10k_pci_pipe *)(& ar_pci->pipe_info) + (unsigned long )pipe_num;
  spinlock_check(& pipe_info->pipe_lock);
  __raw_spin_lock_init(& pipe_info->pipe_lock.__annonCompField19.rlock, "&(&pipe_info->pipe_lock)->rlock",
                       & __key___0);
  INIT_LIST_HEAD(& pipe_info->compl_free);
  }
  if ((unsigned long )pipe_info->ce_hdl == (unsigned long )ar_pci->ce_diag) {
    goto ldv_52474;
  } else {
  }
  attr = (struct ce_attr const *)(& host_ce_config_wlan) + (unsigned long )pipe_num;
  completions = 0;
  if ((unsigned int )attr->src_nentries != 0U) {
    completions = (int )((unsigned int )completions + (unsigned int )attr->src_nentries);
  } else {
  }
  if ((unsigned int )attr->dest_nentries != 0U) {
    completions = (int )((unsigned int )completions + (unsigned int )attr->dest_nentries);
  } else {
  }
  i = 0;
  goto ldv_52476;
  ldv_52475:
  {
  tmp___0 = kmalloc(64UL, 208U);
  compl = (struct ath10k_pci_compl *)tmp___0;
  }
  if ((unsigned long )compl == (unsigned long )((struct ath10k_pci_compl *)0)) {
    {
    ath10k_warn("No memory for completion state\n");
    ath10k_pci_cleanup_ce(ar);
    }
    return (-12);
  } else {
  }
  {
  compl->state = 0;
  list_add_tail(& compl->list, & pipe_info->compl_free);
  i = i + 1;
  }
  ldv_52476: ;
  if (i < completions) {
    goto ldv_52475;
  } else {
  }
  ldv_52474:
  pipe_num = pipe_num + 1;
  ldv_52479: ;
  if (pipe_num <= 7) {
    goto ldv_52478;
  } else {
  }
  return (0);
}
}
static int ath10k_pci_setup_ce_irq(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct ce_attr const *attr ;
  struct ath10k_pci_pipe *pipe_info ;
  int pipe_num ;
  int disable_interrupts ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  pipe_num = 0;
  }
  goto ldv_52491;
  ldv_52490:
  pipe_info = (struct ath10k_pci_pipe *)(& ar_pci->pipe_info) + (unsigned long )pipe_num;
  if ((unsigned long )pipe_info->ce_hdl == (unsigned long )ar_pci->ce_diag) {
    goto ldv_52489;
  } else {
  }
  attr = (struct ce_attr const *)(& host_ce_config_wlan) + (unsigned long )pipe_num;
  if ((unsigned int )attr->src_nentries != 0U) {
    {
    disable_interrupts = (int )attr->flags & 8;
    ath10k_ce_send_cb_register(pipe_info->ce_hdl, & ath10k_pci_ce_send_done, disable_interrupts);
    }
  } else {
  }
  if ((unsigned int )attr->dest_nentries != 0U) {
    {
    ath10k_ce_recv_cb_register(pipe_info->ce_hdl, & ath10k_pci_ce_recv_data);
    }
  } else {
  }
  ldv_52489:
  pipe_num = pipe_num + 1;
  ldv_52491: ;
  if (pipe_num <= 7) {
    goto ldv_52490;
  } else {
  }
  return (0);
}
}
static void ath10k_pci_kill_tasklet(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int i ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  tasklet_kill(& ar_pci->intr_tq);
  tasklet_kill(& ar_pci->msi_fw_err);
  tasklet_kill(& ar_pci->early_irq_tasklet);
  i = 0;
  }
  goto ldv_52499;
  ldv_52498:
  {
  tasklet_kill(& ar_pci->pipe_info[i].intr);
  i = i + 1;
  }
  ldv_52499: ;
  if (i <= 7) {
    goto ldv_52498;
  } else {
  }
  return;
}
}
static void ath10k_pci_stop_ce(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct ath10k_pci_compl *compl ;
  struct sk_buff *skb ;
  struct list_head const *__mptr ;
  struct ath10k_skb_cb *tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  spin_lock_bh(& ar_pci->compl_lock);
  __mptr = (struct list_head const *)ar_pci->compl_process.next;
  compl = (struct ath10k_pci_compl *)__mptr;
  }
  goto ldv_52512;
  ldv_52511:
  {
  skb = compl->skb;
  tmp___0 = ATH10K_SKB_CB(skb);
  tmp___0->is_aborted = 1;
  __mptr___0 = (struct list_head const *)compl->list.next;
  compl = (struct ath10k_pci_compl *)__mptr___0;
  }
  ldv_52512: ;
  if ((unsigned long )(& compl->list) != (unsigned long )(& ar_pci->compl_process)) {
    goto ldv_52511;
  } else {
  }
  {
  spin_unlock_bh(& ar_pci->compl_lock);
  }
  return;
}
}
static void ath10k_pci_cleanup_ce(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct ath10k_pci_compl *compl ;
  struct ath10k_pci_compl *tmp___0 ;
  struct ath10k_pci_pipe *pipe_info ;
  struct sk_buff *netbuf ;
  int pipe_num ;
  int tmp___1 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  spin_lock_bh(& ar_pci->compl_lock);
  tmp___1 = list_empty((struct list_head const *)(& ar_pci->compl_process));
  }
  if (tmp___1 == 0) {
    {
    ath10k_warn("pending completions still present! possible memory leaks.\n");
    }
  } else {
  }
  __mptr = (struct list_head const *)ar_pci->compl_process.next;
  compl = (struct ath10k_pci_compl *)__mptr;
  __mptr___0 = (struct list_head const *)compl->list.next;
  tmp___0 = (struct ath10k_pci_compl *)__mptr___0;
  goto ldv_52530;
  ldv_52529:
  {
  list_del(& compl->list);
  netbuf = compl->skb;
  dev_kfree_skb_any(netbuf);
  kfree((void const *)compl);
  compl = tmp___0;
  __mptr___1 = (struct list_head const *)tmp___0->list.next;
  tmp___0 = (struct ath10k_pci_compl *)__mptr___1;
  }
  ldv_52530: ;
  if ((unsigned long )(& compl->list) != (unsigned long )(& ar_pci->compl_process)) {
    goto ldv_52529;
  } else {
  }
  {
  spin_unlock_bh(& ar_pci->compl_lock);
  pipe_num = 0;
  }
  goto ldv_52542;
  ldv_52541:
  {
  pipe_info = (struct ath10k_pci_pipe *)(& ar_pci->pipe_info) + (unsigned long )pipe_num;
  spin_lock_bh(& pipe_info->pipe_lock);
  __mptr___2 = (struct list_head const *)pipe_info->compl_free.next;
  compl = (struct ath10k_pci_compl *)__mptr___2;
  __mptr___3 = (struct list_head const *)compl->list.next;
  tmp___0 = (struct ath10k_pci_compl *)__mptr___3;
  }
  goto ldv_52539;
  ldv_52538:
  {
  list_del(& compl->list);
  kfree((void const *)compl);
  compl = tmp___0;
  __mptr___4 = (struct list_head const *)tmp___0->list.next;
  tmp___0 = (struct ath10k_pci_compl *)__mptr___4;
  }
  ldv_52539: ;
  if ((unsigned long )(& compl->list) != (unsigned long )(& pipe_info->compl_free)) {
    goto ldv_52538;
  } else {
  }
  {
  spin_unlock_bh(& pipe_info->pipe_lock);
  pipe_num = pipe_num + 1;
  }
  ldv_52542: ;
  if (pipe_num <= 7) {
    goto ldv_52541;
  } else {
  }
  return;
}
}
static void ath10k_pci_process_ce(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_hif_cb *cb ;
  struct ath10k_pci_compl *compl ;
  struct sk_buff *skb ;
  unsigned int nbytes ;
  int ret ;
  int send_done ;
  int tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  ar_pci = (struct ath10k_pci *)ar->hif.priv;
  cb = & ar_pci->msg_callbacks_current;
  send_done = 0;
  spin_lock_bh(& ar_pci->compl_lock);
  }
  if ((int )ar_pci->compl_processing) {
    {
    spin_unlock_bh(& ar_pci->compl_lock);
    }
    return;
  } else {
  }
  {
  ar_pci->compl_processing = 1;
  spin_unlock_bh(& ar_pci->compl_lock);
  }
  ldv_52562:
  {
  spin_lock_bh(& ar_pci->compl_lock);
  tmp = list_empty((struct list_head const *)(& ar_pci->compl_process));
  }
  if (tmp != 0) {
    {
    spin_unlock_bh(& ar_pci->compl_lock);
    }
    goto ldv_52554;
  } else {
  }
  {
  __mptr = (struct list_head const *)ar_pci->compl_process.next;
  compl = (struct ath10k_pci_compl *)__mptr;
  list_del(& compl->list);
  spin_unlock_bh(& ar_pci->compl_lock);
  }
  {
  if ((unsigned int )compl->state == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )compl->state == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )compl->state == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_1:
  {
  (*(cb->tx_completion))(ar, compl->skb, compl->transfer_id);
  send_done = 1;
  }
  goto ldv_52558;
  case_2:
  {
  ret = ath10k_pci_post_rx_pipe(compl->pipe_info, 1);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to post RX buffer for pipe %d: %d\n", (int )(compl->pipe_info)->pipe_num,
                ret);
    }
    goto ldv_52558;
  } else {
  }
  {
  skb = compl->skb;
  nbytes = compl->nbytes;
  ath10k_dbg(1, "ath10k_pci_ce_recv_data netbuf=%p  nbytes=%d\n", skb, nbytes);
  ath10k_dbg_dump(64, (char const *)0, "ath10k rx: ", (void const *)skb->data,
                  (size_t )nbytes);
  tmp___1 = skb_tailroom((struct sk_buff const *)skb);
  }
  if (skb->len + (unsigned int )tmp___1 >= nbytes) {
    {
    skb_trim(skb, 0U);
    skb_put(skb, nbytes);
    (*(cb->rx_completion))(ar, skb, (int )(compl->pipe_info)->pipe_num);
    }
  } else {
    {
    tmp___0 = skb_tailroom((struct sk_buff const *)skb);
    ath10k_warn("rxed more than expected (nbytes %d, max %d)", nbytes, skb->len + (unsigned int )tmp___0);
    }
  }
  goto ldv_52558;
  case_0:
  {
  ath10k_warn("free completion cannot be processed\n");
  }
  goto ldv_52558;
  switch_default:
  {
  ath10k_warn("invalid completion state (%d)\n", (unsigned int )compl->state);
  }
  goto ldv_52558;
  switch_break: ;
  }
  ldv_52558:
  {
  compl->state = 0;
  spin_lock_bh(& (compl->pipe_info)->pipe_lock);
  list_add_tail(& compl->list, & (compl->pipe_info)->compl_free);
  spin_unlock_bh(& (compl->pipe_info)->pipe_lock);
  }
  goto ldv_52562;
  ldv_52554:
  {
  spin_lock_bh(& ar_pci->compl_lock);
  ar_pci->compl_processing = 0;
  spin_unlock_bh(& ar_pci->compl_lock);
  }
  return;
}
}
static int ath10k_pci_hif_map_service_to_pipe(struct ath10k *ar , u16 service_id ,
                                              u8 *ul_pipe , u8 *dl_pipe , int *ul_is_polled ,
                                              int *dl_is_polled )
{
  int ret ;
  {
  ret = 0;
  *dl_is_polled = 0;
  {
  if ((int )service_id == 768) {
    goto case_768;
  } else {
  }
  if ((int )service_id == 1) {
    goto case_1;
  } else {
  }
  if ((int )service_id == 65024) {
    goto case_65024;
  } else {
  }
  if ((int )service_id == 258) {
    goto case_258;
  } else {
  }
  if ((int )service_id == 257) {
    goto case_257;
  } else {
  }
  if ((int )service_id == 259) {
    goto case_259;
  } else {
  }
  if ((int )service_id == 260) {
    goto case_260;
  } else {
  }
  if ((int )service_id == 256) {
    goto case_256;
  } else {
  }
  goto switch_default;
  case_768:
  *ul_pipe = 4U;
  *dl_pipe = 1U;
  goto ldv_52573;
  case_1: ;
  case_65024:
  *ul_pipe = 0U;
  *dl_pipe = 1U;
  goto ldv_52573;
  case_258: ;
  case_257: ;
  case_259: ;
  case_260: ;
  case_256:
  *ul_pipe = 3U;
  *dl_pipe = 2U;
  goto ldv_52573;
  switch_default:
  ret = -1;
  goto ldv_52573;
  switch_break: ;
  }
  ldv_52573:
  *ul_is_polled = ((unsigned int )host_ce_config_wlan[(int )*ul_pipe].flags & 8U) != 0U;
  return (ret);
}
}
static void ath10k_pci_hif_get_default_pipe(struct ath10k *ar , u8 *ul_pipe , u8 *dl_pipe )
{
  int ul_is_polled ;
  int dl_is_polled ;
  {
  {
  ath10k_pci_hif_map_service_to_pipe(ar, 1, ul_pipe, dl_pipe, & ul_is_polled, & dl_is_polled);
  }
  return;
}
}
static int ath10k_pci_post_rx_pipe(struct ath10k_pci_pipe *pipe_info , int num )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct ath10k_ce_pipe *ce_state ;
  struct sk_buff *skb ;
  dma_addr_t ce_data ;
  int i ;
  int ret ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  struct ath10k_skb_cb *tmp___6 ;
  {
  {
  ar = pipe_info->hif_ce_state;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ce_state = pipe_info->ce_hdl;
  ret = 0;
  }
  if (pipe_info->buf_sz == 0UL) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_52607;
  ldv_52606:
  {
  skb = dev_alloc_skb((unsigned int )pipe_info->buf_sz);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    ath10k_warn("failed to allocate skbuff for pipe %d\n", num);
    ret = -12;
    }
    goto err;
  } else {
  }
  {
  __ret_warn_once = ((unsigned long )skb->data & 3UL) != 0UL;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___0 != 0L) {
      {
      warn_slowpath_fmt("drivers/net/wireless/ath/ath10k/pci.c", 1235, "unaligned skb");
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
  tmp___3 = skb_tailroom((struct sk_buff const *)skb);
  ce_data = dma_map_single_attrs(ar->dev, (void *)skb->data, (size_t )(skb->len + (unsigned int )tmp___3),
                                 2, (struct dma_attrs *)0);
  tmp___4 = dma_mapping_error(ar->dev, ce_data);
  tmp___5 = ldv__builtin_expect(tmp___4 != 0, 0L);
  }
  if (tmp___5 != 0L) {
    {
    ath10k_warn("failed to DMA map sk_buff\n");
    dev_kfree_skb_any(skb);
    ret = -5;
    }
    goto err;
  } else {
  }
  {
  tmp___6 = ATH10K_SKB_CB(skb);
  tmp___6->paddr = ce_data;
  pci_dma_sync_single_for_device(ar_pci->pdev, ce_data, pipe_info->buf_sz, 2);
  ret = ath10k_ce_recv_buf_enqueue(ce_state, (void *)skb, (u32 )ce_data);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to enqueue to pipe %d: %d\n", num, ret);
    }
    goto err;
  } else {
  }
  i = i + 1;
  ldv_52607: ;
  if (i < num) {
    goto ldv_52606;
  } else {
  }
  return (ret);
  err:
  {
  ath10k_pci_rx_pipe_cleanup(pipe_info);
  }
  return (ret);
}
}
static int ath10k_pci_post_rx(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct ath10k_pci_pipe *pipe_info ;
  struct ce_attr const *attr ;
  int pipe_num ;
  int ret ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ret = 0;
  pipe_num = 0;
  }
  goto ldv_52622;
  ldv_52621:
  pipe_info = (struct ath10k_pci_pipe *)(& ar_pci->pipe_info) + (unsigned long )pipe_num;
  attr = (struct ce_attr const *)(& host_ce_config_wlan) + (unsigned long )pipe_num;
  if ((unsigned int )attr->dest_nentries == 0U) {
    goto ldv_52617;
  } else {
  }
  {
  ret = ath10k_pci_post_rx_pipe(pipe_info, (int )((unsigned int )attr->dest_nentries - 1U));
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to post RX buffer for pipe %d: %d\n", pipe_num, ret);
    }
    goto ldv_52619;
    ldv_52618:
    {
    pipe_info = (struct ath10k_pci_pipe *)(& ar_pci->pipe_info) + (unsigned long )pipe_num;
    ath10k_pci_rx_pipe_cleanup(pipe_info);
    pipe_num = pipe_num - 1;
    }
    ldv_52619: ;
    if (pipe_num >= 0) {
      goto ldv_52618;
    } else {
    }
    return (ret);
  } else {
  }
  ldv_52617:
  pipe_num = pipe_num + 1;
  ldv_52622: ;
  if (pipe_num <= 7) {
    goto ldv_52621;
  } else {
  }
  return (0);
}
}
static int ath10k_pci_hif_start(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int ret ;
  int ret_early ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ath10k_pci_free_early_irq(ar);
  ath10k_pci_kill_tasklet(ar);
  ret = ath10k_pci_alloc_compl(ar);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to allocate CE completions: %d\n", ret);
    }
    goto err_early_irq;
  } else {
  }
  {
  ret = ath10k_pci_request_irq(ar);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to post RX buffers for all pipes: %d\n", ret);
    }
    goto err_free_compl;
  } else {
  }
  {
  ret = ath10k_pci_setup_ce_irq(ar);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to setup CE interrupts: %d\n", ret);
    }
    goto err_stop;
  } else {
  }
  {
  ret = ath10k_pci_post_rx(ar);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to post RX buffers for all pipes: %d\n", ret);
    }
    goto err_stop;
  } else {
  }
  ar_pci->started = 1;
  return (0);
  err_stop:
  {
  ath10k_ce_disable_interrupts(ar);
  ath10k_pci_free_irq(ar);
  ath10k_pci_kill_tasklet(ar);
  ath10k_pci_stop_ce(ar);
  ath10k_pci_process_ce(ar);
  }
  err_free_compl:
  {
  ath10k_pci_cleanup_ce(ar);
  }
  err_early_irq:
  {
  ret_early = ath10k_pci_request_early_irq(ar);
  }
  if (ret_early != 0) {
    {
    ath10k_warn("failed to re-enable early irq: %d\n", ret_early);
    }
  } else {
  }
  return (ret);
}
}
static void ath10k_pci_rx_pipe_cleanup(struct ath10k_pci_pipe *pipe_info )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_ce_pipe *ce_hdl ;
  u32 buf_sz ;
  struct sk_buff *netbuf ;
  u32 ce_data ;
  int tmp ;
  struct ath10k_skb_cb *tmp___0 ;
  int tmp___1 ;
  {
  buf_sz = (u32 )pipe_info->buf_sz;
  if (buf_sz == 0U) {
    return;
  } else {
  }
  {
  ar = pipe_info->hif_ce_state;
  ar_pci = ath10k_pci_priv(ar);
  }
  if (ar_pci->started == 0) {
    return;
  } else {
  }
  ce_hdl = pipe_info->ce_hdl;
  goto ldv_52643;
  ldv_52642:
  {
  tmp = skb_tailroom((struct sk_buff const *)netbuf);
  tmp___0 = ATH10K_SKB_CB(netbuf);
  dma_unmap_single_attrs(ar->dev, tmp___0->paddr, (size_t )(netbuf->len + (unsigned int )tmp),
                         2, (struct dma_attrs *)0);
  dev_kfree_skb_any(netbuf);
  }
  ldv_52643:
  {
  tmp___1 = ath10k_ce_revoke_recv_next(ce_hdl, (void **)(& netbuf), & ce_data);
  }
  if (tmp___1 == 0) {
    goto ldv_52642;
  } else {
  }
  return;
}
}
static void ath10k_pci_tx_pipe_cleanup(struct ath10k_pci_pipe *pipe_info )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_ce_pipe *ce_hdl ;
  struct sk_buff *netbuf ;
  u32 ce_data ;
  unsigned int nbytes ;
  unsigned int id ;
  u32 buf_sz ;
  struct ath10k_skb_cb *tmp ;
  int tmp___0 ;
  {
  buf_sz = (u32 )pipe_info->buf_sz;
  if (buf_sz == 0U) {
    return;
  } else {
  }
  {
  ar = pipe_info->hif_ce_state;
  ar_pci = ath10k_pci_priv(ar);
  }
  if (ar_pci->started == 0) {
    return;
  } else {
  }
  ce_hdl = pipe_info->ce_hdl;
  goto ldv_52656;
  ldv_52657: ;
  if ((unsigned long )netbuf == (unsigned long )((struct sk_buff *)0)) {
    {
    ath10k_warn("invalid sk_buff on CE %d - NULL pointer. firmware crashed?\n", ce_hdl->id);
    }
    goto ldv_52656;
  } else {
  }
  {
  tmp = ATH10K_SKB_CB(netbuf);
  tmp->is_aborted = 1;
  (*(ar_pci->msg_callbacks_current.tx_completion))(ar, netbuf, id);
  }
  ldv_52656:
  {
  tmp___0 = ath10k_ce_cancel_send_next(ce_hdl, (void **)(& netbuf), & ce_data, & nbytes,
                                       & id);
  }
  if (tmp___0 == 0) {
    goto ldv_52657;
  } else {
  }
  return;
}
}
static void ath10k_pci_buffer_cleanup(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int pipe_num ;
  struct ath10k_pci_pipe *pipe_info ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  pipe_num = 0;
  }
  goto ldv_52666;
  ldv_52665:
  {
  pipe_info = (struct ath10k_pci_pipe *)(& ar_pci->pipe_info) + (unsigned long )pipe_num;
  ath10k_pci_rx_pipe_cleanup(pipe_info);
  ath10k_pci_tx_pipe_cleanup(pipe_info);
  pipe_num = pipe_num + 1;
  }
  ldv_52666: ;
  if (pipe_num <= 7) {
    goto ldv_52665;
  } else {
  }
  return;
}
}
static void ath10k_pci_ce_deinit(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct ath10k_pci_pipe *pipe_info ;
  int pipe_num ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  pipe_num = 0;
  }
  goto ldv_52675;
  ldv_52674:
  pipe_info = (struct ath10k_pci_pipe *)(& ar_pci->pipe_info) + (unsigned long )pipe_num;
  if ((unsigned long )pipe_info->ce_hdl != (unsigned long )((struct ath10k_ce_pipe *)0)) {
    {
    ath10k_ce_deinit(pipe_info->ce_hdl);
    pipe_info->ce_hdl = (struct ath10k_ce_pipe *)0;
    pipe_info->buf_sz = 0UL;
    }
  } else {
  }
  pipe_num = pipe_num + 1;
  ldv_52675: ;
  if (pipe_num <= 7) {
    goto ldv_52674;
  } else {
  }
  return;
}
}
static void ath10k_pci_hif_stop(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int ret ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ath10k_dbg(1, "%s\n", "ath10k_pci_hif_stop");
  ret = ath10k_ce_disable_interrupts(ar);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to disable CE interrupts: %d\n", ret);
    }
  } else {
  }
  {
  ath10k_pci_free_irq(ar);
  ath10k_pci_kill_tasklet(ar);
  ath10k_pci_stop_ce(ar);
  ret = ath10k_pci_request_early_irq(ar);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to re-enable early irq: %d\n", ret);
    }
  } else {
  }
  {
  ath10k_pci_process_ce(ar);
  ath10k_pci_cleanup_ce(ar);
  ath10k_pci_buffer_cleanup(ar);
  ath10k_pci_device_reset(ar);
  ar_pci->started = 0;
  }
  return;
}
}
static int ath10k_pci_hif_exchange_bmi_msg(struct ath10k *ar , void *req , u32 req_len ,
                                           void *resp , u32 *resp_len )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct ath10k_pci_pipe *pci_tx ;
  struct ath10k_pci_pipe *pci_rx ;
  struct ath10k_ce_pipe *ce_tx ;
  struct ath10k_ce_pipe *ce_rx ;
  dma_addr_t req_paddr ;
  dma_addr_t resp_paddr ;
  struct bmi_xfer xfer ;
  void *treq ;
  void *tresp ;
  int ret ;
  u32 unused_buffer ;
  unsigned int unused_nbytes ;
  unsigned int unused_id ;
  u32 unused_buffer___0 ;
  u32 _min1 ;
  u32 _min2 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  pci_tx = (struct ath10k_pci_pipe *)(& ar_pci->pipe_info);
  pci_rx = (struct ath10k_pci_pipe *)(& ar_pci->pipe_info) + 1UL;
  ce_tx = pci_tx->ce_hdl;
  ce_rx = pci_rx->ce_hdl;
  req_paddr = 0ULL;
  resp_paddr = 0ULL;
  xfer.done.done = 0U;
  xfer.done.wait.lock.__annonCompField19.rlock.raw_lock.__annonCompField7.head_tail = 0U;
  xfer.done.wait.lock.__annonCompField19.rlock.magic = 0U;
  xfer.done.wait.lock.__annonCompField19.rlock.owner_cpu = 0U;
  xfer.done.wait.lock.__annonCompField19.rlock.owner = 0;
  xfer.done.wait.lock.__annonCompField19.rlock.dep_map.key = 0;
  xfer.done.wait.lock.__annonCompField19.rlock.dep_map.class_cache[0] = 0;
  xfer.done.wait.lock.__annonCompField19.rlock.dep_map.class_cache[1] = 0;
  xfer.done.wait.lock.__annonCompField19.rlock.dep_map.name = 0;
  xfer.done.wait.lock.__annonCompField19.rlock.dep_map.cpu = 0;
  xfer.done.wait.lock.__annonCompField19.rlock.dep_map.ip = 0UL;
  xfer.done.wait.task_list.next = 0;
  xfer.done.wait.task_list.prev = 0;
  xfer.wait_for_resp = (_Bool)0;
  xfer.resp_len = 0U;
  tresp = (void *)0;
  ret = 0;
  __might_sleep("drivers/net/wireless/ath/ath10k/pci.c", 1525, 0);
  }
  if ((unsigned long )resp != (unsigned long )((void *)0) && (unsigned long )resp_len == (unsigned long )((u32 *)0U)) {
    return (-22);
  } else {
  }
  if (((unsigned long )resp != (unsigned long )((void *)0) && (unsigned long )resp_len != (unsigned long )((u32 *)0U)) && *resp_len == 0U) {
    return (-22);
  } else {
  }
  {
  treq = kmemdup((void const *)req, (size_t )req_len, 208U);
  }
  if ((unsigned long )treq == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  {
  req_paddr = dma_map_single_attrs(ar->dev, treq, (size_t )req_len, 1, (struct dma_attrs *)0);
  ret = dma_mapping_error(ar->dev, req_paddr);
  }
  if (ret != 0) {
    goto err_dma;
  } else {
  }
  if ((unsigned long )resp != (unsigned long )((void *)0) && (unsigned long )resp_len != (unsigned long )((u32 *)0U)) {
    {
    tresp = kzalloc((size_t )*resp_len, 208U);
    }
    if ((unsigned long )tresp == (unsigned long )((void *)0)) {
      ret = -12;
      goto err_req;
    } else {
    }
    {
    resp_paddr = dma_map_single_attrs(ar->dev, tresp, (size_t )*resp_len, 2, (struct dma_attrs *)0);
    ret = dma_mapping_error(ar->dev, resp_paddr);
    }
    if (ret != 0) {
      goto err_req;
    } else {
    }
    {
    xfer.wait_for_resp = 1;
    xfer.resp_len = 0U;
    ath10k_ce_recv_buf_enqueue(ce_rx, (void *)(& xfer), (u32 )resp_paddr);
    }
  } else {
  }
  {
  init_completion(& xfer.done);
  ret = ath10k_ce_send(ce_tx, (void *)(& xfer), (u32 )req_paddr, req_len, 4294967295U,
                       0U);
  }
  if (ret != 0) {
    goto err_resp;
  } else {
  }
  {
  ret = ath10k_pci_bmi_wait(ce_tx, ce_rx, & xfer);
  }
  if (ret != 0) {
    {
    ath10k_ce_cancel_send_next(ce_tx, (void **)0, & unused_buffer, & unused_nbytes,
                               & unused_id);
    }
  } else {
    ret = 0;
  }
  err_resp: ;
  if ((unsigned long )resp != (unsigned long )((void *)0)) {
    {
    ath10k_ce_revoke_recv_next(ce_rx, (void **)0, & unused_buffer___0);
    dma_unmap_single_attrs(ar->dev, resp_paddr, (size_t )*resp_len, 2, (struct dma_attrs *)0);
    }
  } else {
  }
  err_req:
  {
  dma_unmap_single_attrs(ar->dev, req_paddr, (size_t )req_len, 1, (struct dma_attrs *)0);
  }
  if (ret == 0 && (unsigned long )resp_len != (unsigned long )((u32 *)0U)) {
    {
    _min1 = *resp_len;
    _min2 = xfer.resp_len;
    *resp_len = _min1 < _min2 ? _min1 : _min2;
    memcpy(resp, (void const *)tresp, (size_t )xfer.resp_len);
    }
  } else {
  }
  err_dma:
  {
  kfree((void const *)treq);
  kfree((void const *)tresp);
  }
  return (ret);
}
}
static void ath10k_pci_bmi_send_done(struct ath10k_ce_pipe *ce_state )
{
  struct bmi_xfer *xfer ;
  u32 ce_data ;
  unsigned int nbytes ;
  unsigned int transfer_id ;
  int tmp ;
  {
  {
  tmp = ath10k_ce_completed_send_next(ce_state, (void **)(& xfer), & ce_data, & nbytes,
                                      & transfer_id);
  }
  if (tmp != 0) {
    return;
  } else {
  }
  if ((int )xfer->wait_for_resp) {
    return;
  } else {
  }
  {
  complete(& xfer->done);
  }
  return;
}
}
static void ath10k_pci_bmi_recv_data(struct ath10k_ce_pipe *ce_state )
{
  struct bmi_xfer *xfer ;
  u32 ce_data ;
  unsigned int nbytes ;
  unsigned int transfer_id ;
  unsigned int flags ;
  int tmp ;
  {
  {
  tmp = ath10k_ce_completed_recv_next(ce_state, (void **)(& xfer), & ce_data, & nbytes,
                                      & transfer_id, & flags);
  }
  if (tmp != 0) {
    return;
  } else {
  }
  if (! xfer->wait_for_resp) {
    {
    ath10k_warn("unexpected: BMI data received; ignoring\n");
    }
    return;
  } else {
  }
  {
  xfer->resp_len = nbytes;
  complete(& xfer->done);
  }
  return;
}
}
static int ath10k_pci_bmi_wait(struct ath10k_ce_pipe *tx_pipe , struct ath10k_ce_pipe *rx_pipe ,
                               struct bmi_xfer *xfer )
{
  unsigned long timeout ;
  bool tmp ;
  {
  timeout = (unsigned long )jiffies + 250UL;
  goto ldv_52739;
  ldv_52738:
  {
  ath10k_pci_bmi_send_done(tx_pipe);
  ath10k_pci_bmi_recv_data(rx_pipe);
  tmp = completion_done(& xfer->done);
  }
  if ((int )tmp) {
    return (0);
  } else {
  }
  {
  schedule();
  }
  ldv_52739: ;
  if ((long )(timeout - (unsigned long )jiffies) >= 0L) {
    goto ldv_52738;
  } else {
  }
  return (-110);
}
}
static struct service_to_pipe const target_service_to_ce_map_wlan[17U] =
  { {260U, 2U, 3U},
        {260U, 1U, 2U},
        {258U, 2U, 3U},
        {258U, 1U, 2U},
        {257U, 2U, 3U},
        {257U, 1U, 2U},
        {259U, 2U, 3U},
        {259U, 1U, 2U},
        {256U, 2U, 3U},
        {256U, 1U, 2U},
        {1U, 2U, 0U},
        {1U, 1U, 1U},
        {65024U, 2U, 0U},
        {65024U, 1U, 1U},
        {768U, 2U, 4U},
        {768U, 1U, 1U},
        {0U, 0U, 0U}};
static int ath10k_pci_wake_target_cpu(struct ath10k *ar )
{
  int ret ;
  u32 core_ctrl ;
  {
  {
  ret = ath10k_pci_diag_read_access(ar, 36864U, & core_ctrl);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to read core_ctrl: %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  core_ctrl = core_ctrl | 8192U;
  ret = ath10k_pci_diag_write_access(ar, 36864U, core_ctrl);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to set target CPU interrupt mask: %d\n", ret);
    }
    return (ret);
  } else {
  }
  return (0);
}
}
static int ath10k_pci_init_config(struct ath10k *ar )
{
  u32 interconnect_targ_addr ;
  u32 pcie_state_targ_addr ;
  u32 pipe_cfg_targ_addr ;
  u32 svc_to_pipe_map ;
  u32 pcie_config_flags ;
  u32 ealloc_value ;
  u32 ealloc_targ_addr ;
  u32 flag2_value ;
  u32 flag2_targ_addr ;
  int ret ;
  {
  {
  pcie_state_targ_addr = 0U;
  pipe_cfg_targ_addr = 0U;
  svc_to_pipe_map = 0U;
  pcie_config_flags = 0U;
  ret = 0;
  interconnect_targ_addr = host_interest_item_address(248U);
  ret = ath10k_pci_diag_read_access(ar, interconnect_targ_addr, & pcie_state_targ_addr);
  }
  if (ret != 0) {
    {
    ath10k_err("Failed to get pcie state addr: %d\n", ret);
    }
    return (ret);
  } else {
  }
  if (pcie_state_targ_addr == 0U) {
    {
    ret = -5;
    ath10k_err("Invalid pcie state addr\n");
    }
    return (ret);
  } else {
  }
  {
  ret = ath10k_pci_diag_read_access(ar, pcie_state_targ_addr, & pipe_cfg_targ_addr);
  }
  if (ret != 0) {
    {
    ath10k_err("Failed to get pipe cfg addr: %d\n", ret);
    }
    return (ret);
  } else {
  }
  if (pipe_cfg_targ_addr == 0U) {
    {
    ret = -5;
    ath10k_err("Invalid pipe cfg addr\n");
    }
    return (ret);
  } else {
  }
  {
  ret = ath10k_pci_diag_write_mem(ar, pipe_cfg_targ_addr, (void const *)(& target_ce_config_wlan),
                                  168);
  }
  if (ret != 0) {
    {
    ath10k_err("Failed to write pipe cfg: %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  ret = ath10k_pci_diag_read_access(ar, pcie_state_targ_addr + 4U, & svc_to_pipe_map);
  }
  if (ret != 0) {
    {
    ath10k_err("Failed to get svc/pipe map: %d\n", ret);
    }
    return (ret);
  } else {
  }
  if (svc_to_pipe_map == 0U) {
    {
    ret = -5;
    ath10k_err("Invalid svc_to_pipe map\n");
    }
    return (ret);
  } else {
  }
  {
  ret = ath10k_pci_diag_write_mem(ar, svc_to_pipe_map, (void const *)(& target_service_to_ce_map_wlan),
                                  204);
  }
  if (ret != 0) {
    {
    ath10k_err("Failed to write svc/pipe map: %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  ret = ath10k_pci_diag_read_access(ar, pcie_state_targ_addr + 32U, & pcie_config_flags);
  }
  if (ret != 0) {
    {
    ath10k_err("Failed to get pcie config_flags: %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  pcie_config_flags = pcie_config_flags & 4294967294U;
  ret = ath10k_pci_diag_write_mem(ar, pcie_state_targ_addr + 32U, (void const *)(& pcie_config_flags),
                                  4);
  }
  if (ret != 0) {
    {
    ath10k_err("Failed to write pcie config_flags: %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  ealloc_targ_addr = host_interest_item_address(256U);
  ret = ath10k_pci_diag_read_access(ar, ealloc_targ_addr, & ealloc_value);
  }
  if (ret != 0) {
    {
    ath10k_err("Faile to get early alloc val: %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  ealloc_value = ealloc_value | 1837760512U;
  ealloc_value = ealloc_value | 1U;
  ret = ath10k_pci_diag_write_access(ar, ealloc_targ_addr, ealloc_value);
  }
  if (ret != 0) {
    {
    ath10k_err("Failed to set early alloc val: %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  flag2_targ_addr = host_interest_item_address(204U);
  ret = ath10k_pci_diag_read_access(ar, flag2_targ_addr, & flag2_value);
  }
  if (ret != 0) {
    {
    ath10k_err("Failed to get option val: %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  flag2_value = flag2_value | 16U;
  ret = ath10k_pci_diag_write_access(ar, flag2_targ_addr, flag2_value);
  }
  if (ret != 0) {
    {
    ath10k_err("Failed to set option val: %d\n", ret);
    }
    return (ret);
  } else {
  }
  return (0);
}
}
static int ath10k_pci_ce_init(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct ath10k_pci_pipe *pipe_info ;
  struct ce_attr const *attr ;
  int pipe_num ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  pipe_num = 0;
  }
  goto ldv_52769;
  ldv_52768:
  {
  pipe_info = (struct ath10k_pci_pipe *)(& ar_pci->pipe_info) + (unsigned long )pipe_num;
  pipe_info->pipe_num = (u8 )pipe_num;
  pipe_info->hif_ce_state = ar;
  attr = (struct ce_attr const *)(& host_ce_config_wlan) + (unsigned long )pipe_num;
  pipe_info->ce_hdl = ath10k_ce_init(ar, (unsigned int )pipe_num, attr);
  }
  if ((unsigned long )pipe_info->ce_hdl == (unsigned long )((struct ath10k_ce_pipe *)0)) {
    {
    ath10k_err("failed to initialize CE for pipe: %d\n", pipe_num);
    ath10k_pci_ce_deinit(ar);
    }
    return (-1);
  } else {
  }
  if (pipe_num == 7) {
    ar_pci->ce_diag = pipe_info->ce_hdl;
    goto ldv_52767;
  } else {
  }
  pipe_info->buf_sz = (unsigned long )attr->src_sz_max;
  ldv_52767:
  pipe_num = pipe_num + 1;
  ldv_52769: ;
  if (pipe_num <= 7) {
    goto ldv_52768;
  } else {
  }
  return (0);
}
}
static void ath10k_pci_fw_interrupt_handler(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  u32 fw_indicator_address ;
  u32 fw_indicator ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ath10k_pci_wake(ar);
  fw_indicator_address = ar_pci->fw_indicator_address;
  fw_indicator = ath10k_pci_read32(ar, fw_indicator_address);
  }
  if ((int )fw_indicator & 1) {
    {
    ath10k_pci_write32(ar, fw_indicator_address, fw_indicator & 4294967294U);
    }
    if (ar_pci->started != 0) {
      {
      ath10k_pci_hif_dump_area(ar);
      }
    } else {
      {
      ath10k_warn("early firmware event indicated\n");
      }
    }
  } else {
  }
  {
  ath10k_pci_sleep(ar);
  }
  return;
}
}
static int ath10k_pci_hif_power_up(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  char const *irq_mode ;
  int ret ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ret = ath10k_pci_device_reset(ar);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to reset target: %d\n", ret);
    }
    goto err;
  } else {
  }
  {
  tmp___0 = constant_test_bit(1L, (unsigned long const volatile *)(& ar_pci->features));
  }
  if (tmp___0 == 0) {
    {
    ath10k_do_pci_wake(ar);
    }
  } else {
  }
  {
  ret = ath10k_pci_ce_init(ar);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to initialize CE: %d\n", ret);
    }
    goto err_ps;
  } else {
  }
  {
  ret = ath10k_ce_disable_interrupts(ar);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to disable CE interrupts: %d\n", ret);
    }
    goto err_ce;
  } else {
  }
  {
  ret = ath10k_pci_init_irq(ar);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to init irqs: %d\n", ret);
    }
    goto err_ce;
  } else {
  }
  {
  ret = ath10k_pci_request_early_irq(ar);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to request early irq: %d\n", ret);
    }
    goto err_deinit_irq;
  } else {
  }
  {
  ret = ath10k_pci_wait_for_target_init(ar);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to wait for target to init: %d\n", ret);
    }
    goto err_free_early_irq;
  } else {
  }
  {
  ret = ath10k_pci_init_config(ar);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to setup init config: %d\n", ret);
    }
    goto err_free_early_irq;
  } else {
  }
  {
  ret = ath10k_pci_wake_target_cpu(ar);
  }
  if (ret != 0) {
    {
    ath10k_err("could not wake up target CPU: %d\n", ret);
    }
    goto err_free_early_irq;
  } else {
  }
  if (ar_pci->num_msi_intrs > 1) {
    irq_mode = "MSI-X";
  } else
  if (ar_pci->num_msi_intrs == 1) {
    irq_mode = "MSI";
  } else {
    irq_mode = "legacy";
  }
  {
  tmp___1 = constant_test_bit(1L, (unsigned long const volatile *)(& ar->dev_flags));
  }
  if (tmp___1 == 0) {
    {
    ath10k_info("pci irq %s\n", irq_mode);
    }
  } else {
  }
  return (0);
  err_free_early_irq:
  {
  ath10k_pci_free_early_irq(ar);
  }
  err_deinit_irq:
  {
  ath10k_pci_deinit_irq(ar);
  }
  err_ce:
  {
  ath10k_pci_ce_deinit(ar);
  ath10k_pci_device_reset(ar);
  }
  err_ps:
  {
  tmp___2 = constant_test_bit(1L, (unsigned long const volatile *)(& ar_pci->features));
  }
  if (tmp___2 == 0) {
    {
    ath10k_do_pci_sleep(ar);
    }
  } else {
  }
  err: ;
  return (ret);
}
}
static void ath10k_pci_hif_power_down(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ath10k_pci_free_early_irq(ar);
  ath10k_pci_kill_tasklet(ar);
  ath10k_pci_deinit_irq(ar);
  ath10k_pci_device_reset(ar);
  ath10k_pci_ce_deinit(ar);
  tmp___0 = constant_test_bit(1L, (unsigned long const volatile *)(& ar_pci->features));
  }
  if (tmp___0 == 0) {
    {
    ath10k_do_pci_sleep(ar);
    }
  } else {
  }
  return;
}
}
static int ath10k_pci_hif_suspend(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct pci_dev *pdev ;
  u32 val ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  pdev = ar_pci->pdev;
  pci_read_config_dword((struct pci_dev const *)pdev, 68, & val);
  }
  if ((val & 255U) != 3U) {
    {
    pci_save_state(pdev);
    pci_disable_device(pdev);
    pci_write_config_dword((struct pci_dev const *)pdev, 68, (val & 4294967040U) | 3U);
    }
  } else {
  }
  return (0);
}
}
static int ath10k_pci_hif_resume(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct pci_dev *pdev ;
  u32 val ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  pdev = ar_pci->pdev;
  pci_read_config_dword((struct pci_dev const *)pdev, 68, & val);
  }
  if ((val & 255U) != 0U) {
    {
    pci_restore_state(pdev);
    pci_write_config_dword((struct pci_dev const *)pdev, 68, val & 4294967040U);
    pci_read_config_dword((struct pci_dev const *)pdev, 64, & val);
    }
    if ((val & 65280U) != 0U) {
      {
      pci_write_config_dword((struct pci_dev const *)pdev, 64, val & 4294902015U);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static struct ath10k_hif_ops const ath10k_pci_hif_ops =
     {& ath10k_pci_hif_send_head, & ath10k_pci_hif_exchange_bmi_msg, & ath10k_pci_hif_start,
    & ath10k_pci_hif_stop, & ath10k_pci_hif_map_service_to_pipe, & ath10k_pci_hif_get_default_pipe,
    & ath10k_pci_hif_send_complete_check, & ath10k_pci_hif_set_callbacks, & ath10k_pci_hif_get_free_queue_number,
    & ath10k_pci_hif_power_up, & ath10k_pci_hif_power_down, & ath10k_pci_hif_suspend,
    & ath10k_pci_hif_resume};
static void ath10k_pci_ce_tasklet(unsigned long ptr )
{
  struct ath10k_pci_pipe *pipe ;
  struct ath10k_pci *ar_pci ;
  {
  {
  pipe = (struct ath10k_pci_pipe *)ptr;
  ar_pci = pipe->ar_pci;
  ath10k_ce_per_engine_service(ar_pci->ar, (unsigned int )pipe->pipe_num);
  }
  return;
}
}
static void ath10k_msi_err_tasklet(unsigned long data )
{
  struct ath10k *ar ;
  {
  {
  ar = (struct ath10k *)data;
  ath10k_pci_fw_interrupt_handler(ar);
  }
  return;
}
}
static irqreturn_t ath10k_pci_per_engine_handler(int irq , void *arg )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int ce_id ;
  {
  {
  ar = (struct ath10k *)arg;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ce_id = (int )(((unsigned int )irq - (ar_pci->pdev)->irq) - 1U);
  }
  if ((unsigned int )ce_id > 7U) {
    {
    ath10k_warn("unexpected/invalid irq %d ce_id %d\n", irq, ce_id);
    }
    return (1);
  } else {
  }
  {
  tasklet_schedule(& ar_pci->pipe_info[ce_id].intr);
  }
  return (1);
}
}
static irqreturn_t ath10k_pci_msi_fw_handler(int irq , void *arg )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  {
  {
  ar = (struct ath10k *)arg;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  tasklet_schedule(& ar_pci->msi_fw_err);
  }
  return (1);
}
}
static irqreturn_t ath10k_pci_interrupt_handler(int irq , void *arg )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  ar = (struct ath10k *)arg;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  }
  if (ar_pci->num_msi_intrs == 0) {
    {
    tmp___0 = ath10k_pci_irq_pending(ar);
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
    ath10k_pci_disable_and_clear_legacy_irq(ar);
    }
  } else {
  }
  {
  tasklet_schedule(& ar_pci->intr_tq);
  }
  return (1);
}
}
static void ath10k_pci_early_irq_tasklet(unsigned long data )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  u32 fw_ind ;
  int ret ;
  {
  {
  ar = (struct ath10k *)data;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ret = ath10k_pci_wake(ar);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to wake target in early irq tasklet: %d\n", ret);
    }
    return;
  } else {
  }
  {
  fw_ind = ath10k_pci_read32(ar, ar_pci->fw_indicator_address);
  }
  if ((int )fw_ind & 1) {
    {
    ath10k_pci_write32(ar, ar_pci->fw_indicator_address, fw_ind & 4294967294U);
    ath10k_warn("device crashed - no diagnostics available\n");
    }
  } else {
  }
  {
  ath10k_pci_sleep(ar);
  ath10k_pci_enable_legacy_irq(ar);
  }
  return;
}
}
static void ath10k_pci_tasklet(unsigned long data )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  {
  {
  ar = (struct ath10k *)data;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ath10k_pci_fw_interrupt_handler(ar);
  ath10k_ce_per_engine_service_any(ar);
  }
  if (ar_pci->num_msi_intrs == 0) {
    {
    ath10k_pci_enable_legacy_irq(ar);
    }
  } else {
  }
  return;
}
}
static int ath10k_pci_request_irq_msix(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int ret ;
  int i ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ret = ldv_request_irq_10((ar_pci->pdev)->irq, & ath10k_pci_msi_fw_handler, 128UL,
                           "ath10k_pci", (void *)ar);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to request MSI-X fw irq %d: %d\n", (ar_pci->pdev)->irq, ret);
    }
    return (ret);
  } else {
  }
  i = 1;
  goto ldv_52857;
  ldv_52856:
  {
  ret = ldv_request_irq_11((ar_pci->pdev)->irq + (unsigned int )i, & ath10k_pci_per_engine_handler,
                           128UL, "ath10k_pci", (void *)ar);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to request MSI-X ce irq %d: %d\n", (ar_pci->pdev)->irq + (unsigned int )i,
                ret);
    i = i - 1;
    }
    goto ldv_52854;
    ldv_52853:
    {
    ldv_free_irq_12((ar_pci->pdev)->irq + (unsigned int )i, (void *)ar);
    i = i - 1;
    }
    ldv_52854: ;
    if (i > 0) {
      goto ldv_52853;
    } else {
    }
    {
    ldv_free_irq_13((ar_pci->pdev)->irq, (void *)ar);
    }
    return (ret);
  } else {
  }
  i = i + 1;
  ldv_52857: ;
  if (i <= 7) {
    goto ldv_52856;
  } else {
  }
  return (0);
}
}
static int ath10k_pci_request_irq_msi(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int ret ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ret = ldv_request_irq_14((ar_pci->pdev)->irq, & ath10k_pci_interrupt_handler, 128UL,
                           "ath10k_pci", (void *)ar);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to request MSI irq %d: %d\n", (ar_pci->pdev)->irq, ret);
    }
    return (ret);
  } else {
  }
  return (0);
}
}
static int ath10k_pci_request_irq_legacy(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int ret ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ret = ldv_request_irq_15((ar_pci->pdev)->irq, & ath10k_pci_interrupt_handler, 128UL,
                           "ath10k_pci", (void *)ar);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to request legacy irq %d: %d\n", (ar_pci->pdev)->irq, ret);
    }
    return (ret);
  } else {
  }
  return (0);
}
}
static int ath10k_pci_request_irq(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  }
  {
  if (ar_pci->num_msi_intrs == 0) {
    goto case_0;
  } else {
  }
  if (ar_pci->num_msi_intrs == 1) {
    goto case_1;
  } else {
  }
  if (ar_pci->num_msi_intrs == 8) {
    goto case_8;
  } else {
  }
  goto switch_break;
  case_0:
  {
  tmp___0 = ath10k_pci_request_irq_legacy(ar);
  }
  return (tmp___0);
  case_1:
  {
  tmp___1 = ath10k_pci_request_irq_msi(ar);
  }
  return (tmp___1);
  case_8:
  {
  tmp___2 = ath10k_pci_request_irq_msix(ar);
  }
  return (tmp___2);
  switch_break: ;
  }
  {
  ath10k_warn("unknown irq configuration upon request\n");
  }
  return (-22);
}
}
static void ath10k_pci_free_irq(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int i ;
  int _max1 ;
  int _max2 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  i = 0;
  }
  goto ldv_52885;
  ldv_52884:
  {
  ldv_free_irq_16((ar_pci->pdev)->irq + (unsigned int )i, (void *)ar);
  i = i + 1;
  }
  ldv_52885:
  _max1 = 1;
  _max2 = ar_pci->num_msi_intrs;
  if (i < (_max1 > _max2 ? _max1 : _max2)) {
    goto ldv_52884;
  } else {
  }
  return;
}
}
static void ath10k_pci_init_irq_tasklets(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int i ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  tasklet_init(& ar_pci->intr_tq, & ath10k_pci_tasklet, (unsigned long )ar);
  tasklet_init(& ar_pci->msi_fw_err, & ath10k_msi_err_tasklet, (unsigned long )ar);
  tasklet_init(& ar_pci->early_irq_tasklet, & ath10k_pci_early_irq_tasklet, (unsigned long )ar);
  i = 0;
  }
  goto ldv_52893;
  ldv_52892:
  {
  ar_pci->pipe_info[i].ar_pci = ar_pci;
  tasklet_init(& ar_pci->pipe_info[i].intr, & ath10k_pci_ce_tasklet, (unsigned long )((struct ath10k_pci_pipe *)(& ar_pci->pipe_info) + (unsigned long )i));
  i = i + 1;
  }
  ldv_52893: ;
  if (i <= 7) {
    goto ldv_52892;
  } else {
  }
  return;
}
}
static int ath10k_pci_init_irq(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  bool msix_supported ;
  int tmp___0 ;
  int ret ;
  int tmp___1 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& ar_pci->features));
  msix_supported = tmp___0 != 0;
  ath10k_pci_init_irq_tasklets(ar);
  }
  if (ath10k_pci_irq_mode != 0U) {
    {
    tmp___1 = constant_test_bit(1L, (unsigned long const volatile *)(& ar->dev_flags));
    }
    if (tmp___1 == 0) {
      {
      ath10k_info("limiting irq mode to: %d\n", ath10k_pci_irq_mode);
      }
    } else {
    }
  } else {
  }
  if (ath10k_pci_irq_mode == 0U && (int )msix_supported) {
    {
    ar_pci->num_msi_intrs = 8;
    ret = pci_enable_msi_block(ar_pci->pdev, ar_pci->num_msi_intrs);
    }
    if (ret == 0) {
      return (0);
    } else {
    }
    if (ret > 0) {
      {
      pci_disable_msi(ar_pci->pdev);
      }
    } else {
    }
  } else {
  }
  if (ath10k_pci_irq_mode != 1U) {
    {
    ar_pci->num_msi_intrs = 1;
    ret = pci_enable_msi_block(ar_pci->pdev, 1);
    }
    if (ret == 0) {
      return (0);
    } else {
    }
  } else {
  }
  {
  ar_pci->num_msi_intrs = 0;
  ret = ath10k_pci_wake(ar);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to wake target: %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  ath10k_pci_write32(ar, 36872U, 523264U);
  ath10k_pci_sleep(ar);
  }
  return (0);
}
}
static int ath10k_pci_deinit_irq_legacy(struct ath10k *ar )
{
  int ret ;
  {
  {
  ret = ath10k_pci_wake(ar);
  }
  if (ret != 0) {
    {
    ath10k_warn("failed to wake target: %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  ath10k_pci_write32(ar, 36872U, 0U);
  ath10k_pci_sleep(ar);
  }
  return (0);
}
}
static int ath10k_pci_deinit_irq(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  }
  {
  if (ar_pci->num_msi_intrs == 0) {
    goto case_0;
  } else {
  }
  if (ar_pci->num_msi_intrs == 1) {
    goto case_1;
  } else {
  }
  if (ar_pci->num_msi_intrs == 8) {
    goto case_8;
  } else {
  }
  goto switch_break;
  case_0:
  {
  tmp___0 = ath10k_pci_deinit_irq_legacy(ar);
  }
  return (tmp___0);
  case_1: ;
  case_8:
  {
  pci_disable_msi(ar_pci->pdev);
  }
  return (0);
  switch_break: ;
  }
  {
  ath10k_warn("unknown irq configuration upon deinit\n");
  }
  return (-22);
}
}
static int ath10k_pci_wait_for_target_init(struct ath10k *ar )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int wait_limit ;
  int ret ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  wait_limit = 300;
  ret = ath10k_pci_wake(ar);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to wake up target: %d\n", ret);
    }
    return (ret);
  } else {
  }
  goto ldv_52923;
  ldv_52922: ;
  if (ar_pci->num_msi_intrs == 0) {
    {
    iowrite32(523264U, ar_pci->mem + 36872UL);
    }
  } else {
  }
  __ms = 10UL;
  goto ldv_52920;
  ldv_52919:
  {
  __const_udelay(4295000UL);
  }
  ldv_52920:
  tmp___0 = __ms;
  __ms = __ms - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_52919;
  } else {
  }
  ldv_52923:
  tmp___1 = wait_limit;
  wait_limit = wait_limit - 1;
  if (tmp___1 != 0) {
    {
    tmp___2 = ioread32(ar_pci->mem + 36912UL);
    }
    if ((tmp___2 & 2U) == 0U) {
      goto ldv_52922;
    } else {
      goto ldv_52924;
    }
  } else {
  }
  ldv_52924: ;
  if (wait_limit < 0) {
    {
    ath10k_err("target stalled\n");
    ret = -5;
    }
    goto out;
  } else {
  }
  out:
  {
  ath10k_pci_sleep(ar);
  }
  return (ret);
}
}
static int ath10k_pci_device_reset(struct ath10k *ar )
{
  int i ;
  int ret ;
  u32 val ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  {
  ret = ath10k_do_pci_wake(ar);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to wake up target: %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  val = ath10k_pci_reg_read32(ar, 8U);
  val = val | 1U;
  ath10k_pci_reg_write32(ar, 8U, val);
  i = 0;
  }
  goto ldv_52934;
  ldv_52933:
  {
  tmp = ath10k_pci_reg_read32(ar, 0U);
  }
  if ((tmp & 1024U) != 0U) {
    goto ldv_52932;
  } else {
  }
  {
  msleep(1U);
  i = i + 1;
  }
  ldv_52934: ;
  if (i <= 9) {
    goto ldv_52933;
  } else {
  }
  ldv_52932:
  {
  val = val & 4294967294U;
  ath10k_pci_reg_write32(ar, 8U, val);
  i = 0;
  }
  goto ldv_52937;
  ldv_52936:
  {
  tmp___0 = ath10k_pci_reg_read32(ar, 0U);
  }
  if ((tmp___0 & 1024U) == 0U) {
    goto ldv_52935;
  } else {
  }
  {
  msleep(1U);
  i = i + 1;
  }
  ldv_52937: ;
  if (i <= 9) {
    goto ldv_52936;
  } else {
  }
  ldv_52935:
  {
  ath10k_do_pci_sleep(ar);
  }
  return (0);
}
}
static void ath10k_pci_dump_features(struct ath10k_pci *ar_pci )
{
  int i ;
  int tmp___0 ;
  {
  i = 0;
  goto ldv_52947;
  ldv_52946:
  {
  tmp___0 = variable_test_bit((long )i, (unsigned long const volatile *)(& ar_pci->features));
  }
  if (tmp___0 == 0) {
    goto ldv_52942;
  } else {
  }
  {
  if (i == 0) {
    goto case_0;
  } else {
  }
  if (i == 1) {
    goto case_1;
  } else {
  }
  goto switch_break;
  case_0:
  {
  ath10k_dbg(32, "device supports MSI-X\n");
  }
  goto ldv_52944;
  case_1:
  {
  ath10k_dbg(32, "QCA98XX SoC power save enabled\n");
  }
  goto ldv_52944;
  switch_break: ;
  }
  ldv_52944: ;
  ldv_52942:
  i = i + 1;
  ldv_52947: ;
  if (i <= 1) {
    goto ldv_52946;
  } else {
  }
  return;
}
}
static int ath10k_pci_probe(struct pci_dev *pdev , struct pci_device_id const *pci_dev )
{
  void *mem ;
  int ret ;
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  u32 lcr_val ;
  u32 chip_id ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  {
  ret = 0;
  ath10k_dbg(1, "%s\n", "ath10k_pci_probe");
  tmp = kzalloc(2240UL, 208U);
  ar_pci = (struct ath10k_pci *)tmp;
  }
  if ((unsigned long )ar_pci == (unsigned long )((struct ath10k_pci *)0)) {
    return (-12);
  } else {
  }
  ar_pci->pdev = pdev;
  ar_pci->dev = & pdev->dev;
  {
  if (pci_dev->device == 60U) {
    goto case_60;
  } else {
  }
  goto switch_default;
  case_60:
  {
  set_bit(0L, (unsigned long volatile *)(& ar_pci->features));
  }
  goto ldv_52961;
  switch_default:
  {
  ret = -19;
  ath10k_err("Unknown device ID: %d\n", pci_dev->device);
  }
  goto err_ar_pci;
  switch_break: ;
  }
  ldv_52961: ;
  if (ath10k_target_ps != 0U) {
    {
    set_bit(1L, (unsigned long volatile *)(& ar_pci->features));
    }
  } else {
  }
  {
  ath10k_pci_dump_features(ar_pci);
  ar = ath10k_core_create((void *)ar_pci, ar_pci->dev, & ath10k_pci_hif_ops);
  }
  if ((unsigned long )ar == (unsigned long )((struct ath10k *)0)) {
    {
    ath10k_err("failed to create driver core\n");
    ret = -22;
    }
    goto err_ar_pci;
  } else {
  }
  {
  ar_pci->ar = ar;
  ar_pci->fw_indicator_address = 36912U;
  atomic_set(& ar_pci->keep_awake_count, 0);
  pci_set_drvdata(pdev, (void *)ar);
  ret = pci_assign_resource(pdev, 0);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to assign PCI space: %d\n", ret);
    }
    goto err_ar;
  } else {
  }
  {
  ret = pci_enable_device(pdev);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to enable PCI device: %d\n", ret);
    }
    goto err_ar;
  } else {
  }
  {
  ret = pci_request_region(pdev, 0, "ath");
  }
  if (ret != 0) {
    {
    ath10k_err("failed to request MMIO region: %d\n", ret);
    }
    goto err_device;
  } else {
  }
  {
  ret = pci_set_dma_mask(pdev, 4294967295ULL);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to set DMA mask to 32-bit: %d\n", ret);
    }
    goto err_region;
  } else {
  }
  {
  ret = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to set consistent DMA mask to 32-bit\n");
    }
    goto err_region;
  } else {
  }
  {
  pci_set_master(pdev);
  pci_read_config_dword((struct pci_dev const *)pdev, 128, & lcr_val);
  pci_write_config_dword((struct pci_dev const *)pdev, 128, lcr_val & 4294967040U);
  mem = pci_iomap(pdev, 0, 0UL);
  }
  if ((unsigned long )mem == (unsigned long )((void *)0)) {
    {
    ath10k_err("failed to perform IOMAP for BAR%d\n", 0);
    ret = -5;
    }
    goto err_master;
  } else {
  }
  {
  ar_pci->mem = mem;
  spinlock_check(& ar_pci->ce_lock);
  __raw_spin_lock_init(& ar_pci->ce_lock.__annonCompField19.rlock, "&(&ar_pci->ce_lock)->rlock",
                       & __key);
  ret = ath10k_do_pci_wake(ar);
  }
  if (ret != 0) {
    {
    ath10k_err("Failed to get chip id: %d\n", ret);
    }
    goto err_iomap;
  } else {
  }
  {
  chip_id = ath10k_pci_soc_read32(ar, 236U);
  ath10k_do_pci_sleep(ar);
  ath10k_dbg(32, "boot pci_mem 0x%p\n", ar_pci->mem);
  ret = ath10k_core_register(ar, chip_id);
  }
  if (ret != 0) {
    {
    ath10k_err("failed to register driver core: %d\n", ret);
    }
    goto err_iomap;
  } else {
  }
  return (0);
  err_iomap:
  {
  pci_iounmap(pdev, mem);
  }
  err_master:
  {
  pci_clear_master(pdev);
  }
  err_region:
  {
  pci_release_region(pdev, 0);
  }
  err_device:
  {
  pci_disable_device(pdev);
  }
  err_ar:
  {
  ath10k_core_destroy(ar);
  }
  err_ar_pci:
  {
  kfree((void const *)ar_pci);
  }
  return (ret);
}
}
static void ath10k_pci_remove(struct pci_dev *pdev )
{
  struct ath10k *ar ;
  void *tmp ;
  struct ath10k_pci *ar_pci ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  ar = (struct ath10k *)tmp;
  ath10k_dbg(1, "%s\n", "ath10k_pci_remove");
  }
  if ((unsigned long )ar == (unsigned long )((struct ath10k *)0)) {
    return;
  } else {
  }
  {
  ar_pci = ath10k_pci_priv(ar);
  }
  if ((unsigned long )ar_pci == (unsigned long )((struct ath10k_pci *)0)) {
    return;
  } else {
  }
  {
  tasklet_kill(& ar_pci->msi_fw_err);
  ath10k_core_unregister(ar);
  pci_iounmap(pdev, ar_pci->mem);
  pci_release_region(pdev, 0);
  pci_clear_master(pdev);
  pci_disable_device(pdev);
  ath10k_core_destroy(ar);
  kfree((void const *)ar_pci);
  }
  return;
}
}
struct pci_device_id const __mod_pci_device_table ;
static struct pci_driver ath10k_pci_driver =
     {{0, 0}, "ath10k_pci", (struct pci_device_id const *)(& ath10k_pci_id_table),
    & ath10k_pci_probe, & ath10k_pci_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0,
                                                                   0, 0, 0, 0, 0,
                                                                   0, 0, 0, 0, 0},
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}};
static int ath10k_pci_init(void)
{
  int ret ;
  {
  {
  ret = ldv___pci_register_driver_17(& ath10k_pci_driver, & __this_module, "ath10k_pci");
  }
  if (ret != 0) {
    {
    ath10k_err("failed to register PCI driver: %d\n", ret);
    }
  } else {
  }
  return (ret);
}
}
static void ath10k_pci_exit(void)
{
  {
  {
  ldv_pci_unregister_driver_18(& ath10k_pci_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_ath10k_pci_exit_13_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_ath10k_pci_init_13_9(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
void ldv_allocate_external_0(void) ;
void ldv_base_instance_callback_5_24(void (*arg0)(struct ath10k * , unsigned char * ,
                                                  unsigned char * ) , struct ath10k *arg1 ,
                                     unsigned char *arg2 , unsigned char *arg3 ) ;
void ldv_base_instance_callback_5_27(unsigned short (*arg0)(struct ath10k * , unsigned char ) ,
                                     struct ath10k *arg1 , unsigned char arg2 ) ;
void ldv_base_instance_callback_5_30(int (*arg0)(struct ath10k * , unsigned short ,
                                                 unsigned char * , unsigned char * ,
                                                 int * , int * ) , struct ath10k *arg1 ,
                                     unsigned short arg2 , unsigned char *arg3 , unsigned char *arg4 ,
                                     int *arg5 , int *arg6 ) ;
void ldv_base_instance_callback_5_33(void (*arg0)(struct ath10k * ) , struct ath10k *arg1 ) ;
void ldv_base_instance_callback_5_34(int (*arg0)(struct ath10k * ) , struct ath10k *arg1 ) ;
void ldv_base_instance_callback_5_35(void (*arg0)(struct ath10k * , unsigned char ,
                                                  int ) , struct ath10k *arg1 , unsigned char arg2 ,
                                     int arg3 ) ;
void ldv_base_instance_callback_5_38(int (*arg0)(struct ath10k * , unsigned char ,
                                                 unsigned int , unsigned int , struct sk_buff * ) ,
                                     struct ath10k *arg1 , unsigned char arg2 , unsigned int arg3 ,
                                     unsigned int arg4 , struct sk_buff *arg5 ) ;
void ldv_base_instance_callback_5_41(void (*arg0)(struct ath10k * , struct ath10k_hif_cb * ) ,
                                     struct ath10k *arg1 , struct ath10k_hif_cb *arg2 ) ;
void ldv_base_instance_callback_5_9(int (*arg0)(struct ath10k * , void * , unsigned int ,
                                                void * , unsigned int * ) , struct ath10k *arg1 ,
                                    void *arg2 , unsigned int arg3 , void *arg4 ,
                                    unsigned int *arg5 ) ;
int ldv_base_instance_probe_5_16(int (*arg0)(struct ath10k * ) , struct ath10k *arg1 ) ;
void ldv_base_instance_release_5_2(void (*arg0)(struct ath10k * ) , struct ath10k *arg1 ) ;
void ldv_base_instance_resume_5_5(int (*arg0)(struct ath10k * ) , struct ath10k *arg1 ) ;
int ldv_base_instance_suspend_5_7(int (*arg0)(struct ath10k * ) , struct ath10k *arg1 ) ;
void ldv_dispatch_deregister_11_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_base_instance_7_13_4(void) ;
void ldv_dispatch_irq_deregister_6_1(int arg0 ) ;
void ldv_dispatch_irq_register_10_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_irq_register_7_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_irq_register_8_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_irq_register_9_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_12_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_base_instance_7_13_5(void) ;
void ldv_entry_EMGentry_13(void *arg0 ) ;
int main(void) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_initialize_external_data(void) ;
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
enum irqreturn ldv_interrupt_instance_handler_2_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
enum irqreturn ldv_interrupt_instance_handler_3_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_instance_thread_2_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_instance_thread_3_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_0(void *arg0 ) ;
void ldv_interrupt_interrupt_instance_1(void *arg0 ) ;
void ldv_interrupt_interrupt_instance_2(void *arg0 ) ;
void ldv_interrupt_interrupt_instance_3(void *arg0 ) ;
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
void ldv_struct_ath10k_hif_ops_base_instance_5(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
int ldv_switch_2(void) ;
void ldv_switch_automaton_state_0_1(void) ;
void ldv_switch_automaton_state_0_6(void) ;
void ldv_switch_automaton_state_1_1(void) ;
void ldv_switch_automaton_state_1_6(void) ;
void ldv_switch_automaton_state_2_1(void) ;
void ldv_switch_automaton_state_2_6(void) ;
void ldv_switch_automaton_state_3_1(void) ;
void ldv_switch_automaton_state_3_6(void) ;
void ldv_switch_automaton_state_4_11(void) ;
void ldv_switch_automaton_state_4_20(void) ;
void ldv_switch_automaton_state_5_10(void) ;
void ldv_switch_automaton_state_5_19(void) ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) ;
void *ldv_0_data_data ;
int ldv_0_line_line ;
enum irqreturn ldv_0_ret_val_default ;
enum irqreturn (*ldv_0_thread_thread)(int , void * ) ;
void (*ldv_13_exit_ath10k_pci_exit_default)(void) ;
int (*ldv_13_init_ath10k_pci_init_default)(void) ;
int ldv_13_ret_default ;
enum irqreturn (*ldv_1_callback_handler)(int , void * ) ;
void *ldv_1_data_data ;
int ldv_1_line_line ;
enum irqreturn ldv_1_ret_val_default ;
enum irqreturn (*ldv_1_thread_thread)(int , void * ) ;
enum irqreturn (*ldv_2_callback_handler)(int , void * ) ;
void *ldv_2_data_data ;
int ldv_2_line_line ;
enum irqreturn ldv_2_ret_val_default ;
enum irqreturn (*ldv_2_thread_thread)(int , void * ) ;
enum irqreturn (*ldv_3_callback_handler)(int , void * ) ;
void *ldv_3_data_data ;
int ldv_3_line_line ;
enum irqreturn ldv_3_ret_val_default ;
enum irqreturn (*ldv_3_thread_thread)(int , void * ) ;
struct pci_driver *ldv_4_container_pci_driver ;
struct pci_dev *ldv_4_resource_dev ;
struct pm_message ldv_4_resource_pm_message ;
struct pci_device_id *ldv_4_resource_struct_pci_device_id_ptr ;
int ldv_4_ret_default ;
int (*ldv_5_callback_exchange_bmi_msg)(struct ath10k * , void * , unsigned int ,
                                       void * , unsigned int * ) ;
void (*ldv_5_callback_get_default_pipe)(struct ath10k * , unsigned char * , unsigned char * ) ;
unsigned short (*ldv_5_callback_get_free_queue_number)(struct ath10k * , unsigned char ) ;
int (*ldv_5_callback_map_service_to_pipe)(struct ath10k * , unsigned short , unsigned char * ,
                                          unsigned char * , int * , int * ) ;
void (*ldv_5_callback_power_down)(struct ath10k * ) ;
int (*ldv_5_callback_power_up)(struct ath10k * ) ;
void (*ldv_5_callback_send_complete_check)(struct ath10k * , unsigned char , int ) ;
int (*ldv_5_callback_send_head)(struct ath10k * , unsigned char , unsigned int ,
                                unsigned int , struct sk_buff * ) ;
void (*ldv_5_callback_set_callbacks)(struct ath10k * , struct ath10k_hif_cb * ) ;
struct ath10k_hif_ops *ldv_5_container_struct_ath10k_hif_ops ;
unsigned char *ldv_5_ldv_param_24_1_default ;
unsigned char *ldv_5_ldv_param_24_2_default ;
unsigned char ldv_5_ldv_param_27_1_default ;
unsigned short ldv_5_ldv_param_30_1_default ;
unsigned char *ldv_5_ldv_param_30_2_default ;
unsigned char *ldv_5_ldv_param_30_3_default ;
int *ldv_5_ldv_param_30_4_default ;
int *ldv_5_ldv_param_30_5_default ;
unsigned char ldv_5_ldv_param_35_1_default ;
int ldv_5_ldv_param_35_2_default ;
unsigned char ldv_5_ldv_param_38_1_default ;
unsigned int ldv_5_ldv_param_38_2_default ;
unsigned int ldv_5_ldv_param_38_3_default ;
unsigned int ldv_5_ldv_param_9_2_default ;
unsigned int *ldv_5_ldv_param_9_4_default ;
struct ath10k_hif_cb *ldv_5_resource_struct_ath10k_hif_cb_ptr ;
struct ath10k *ldv_5_resource_struct_ath10k_ptr ;
struct sk_buff *ldv_5_resource_struct_sk_buff_ptr ;
int ldv_5_ret_default ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_13 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
int ldv_statevar_4 ;
int ldv_statevar_5 ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) = & ath10k_pci_early_irq_handler;
void (*ldv_13_exit_ath10k_pci_exit_default)(void) = & ath10k_pci_exit;
int (*ldv_13_init_ath10k_pci_init_default)(void) = & ath10k_pci_init;
enum irqreturn (*ldv_1_callback_handler)(int , void * ) = & ath10k_pci_interrupt_handler;
enum irqreturn (*ldv_2_callback_handler)(int , void * ) = & ath10k_pci_msi_fw_handler;
enum irqreturn (*ldv_3_callback_handler)(int , void * ) = & ath10k_pci_per_engine_handler;
int (*ldv_5_callback_exchange_bmi_msg)(struct ath10k * , void * , unsigned int ,
                                       void * , unsigned int * ) = & ath10k_pci_hif_exchange_bmi_msg;
void (*ldv_5_callback_get_default_pipe)(struct ath10k * , unsigned char * , unsigned char * ) = & ath10k_pci_hif_get_default_pipe;
unsigned short (*ldv_5_callback_get_free_queue_number)(struct ath10k * , unsigned char ) = & ath10k_pci_hif_get_free_queue_number;
int (*ldv_5_callback_map_service_to_pipe)(struct ath10k * , unsigned short , unsigned char * ,
                                          unsigned char * , int * , int * ) = & ath10k_pci_hif_map_service_to_pipe;
void (*ldv_5_callback_power_down)(struct ath10k * ) = & ath10k_pci_hif_power_down;
int (*ldv_5_callback_power_up)(struct ath10k * ) = & ath10k_pci_hif_power_up;
void (*ldv_5_callback_send_complete_check)(struct ath10k * , unsigned char , int ) = & ath10k_pci_hif_send_complete_check;
int (*ldv_5_callback_send_head)(struct ath10k * , unsigned char , unsigned int ,
                                unsigned int , struct sk_buff * ) = & ath10k_pci_hif_send_head;
void (*ldv_5_callback_set_callbacks)(struct ath10k * , struct ath10k_hif_cb * ) = & ath10k_pci_hif_set_callbacks;
void ldv_EMGentry_exit_ath10k_pci_exit_13_2(void (*arg0)(void) )
{
  {
  {
  ath10k_pci_exit();
  }
  return;
}
}
int ldv_EMGentry_init_ath10k_pci_init_13_9(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = ath10k_pci_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_12_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_12_pci_driver_pci_driver = arg1;
    ldv_assume(ldv_statevar_4 == 20);
    ldv_dispatch_register_12_2(ldv_12_pci_driver_pci_driver);
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
  {
  {
  ldv_0_data_data = external_allocated_data();
  tmp = external_allocated_data();
  ldv_0_thread_thread = (enum irqreturn (*)(int , void * ))tmp;
  ldv_1_data_data = external_allocated_data();
  tmp___0 = external_allocated_data();
  ldv_1_thread_thread = (enum irqreturn (*)(int , void * ))tmp___0;
  ldv_2_data_data = external_allocated_data();
  tmp___1 = external_allocated_data();
  ldv_2_thread_thread = (enum irqreturn (*)(int , void * ))tmp___1;
  ldv_3_data_data = external_allocated_data();
  tmp___2 = external_allocated_data();
  ldv_3_thread_thread = (enum irqreturn (*)(int , void * ))tmp___2;
  tmp___3 = external_allocated_data();
  ldv_4_resource_dev = (struct pci_dev *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_5_ldv_param_24_1_default = (unsigned char *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_5_ldv_param_24_2_default = (unsigned char *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_5_ldv_param_30_2_default = (unsigned char *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_5_ldv_param_30_3_default = (unsigned char *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_5_ldv_param_30_4_default = (int *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_5_ldv_param_30_5_default = (int *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_5_ldv_param_9_4_default = (unsigned int *)tmp___10;
  tmp___11 = external_allocated_data();
  ldv_5_resource_struct_ath10k_hif_cb_ptr = (struct ath10k_hif_cb *)tmp___11;
  tmp___12 = external_allocated_data();
  ldv_5_resource_struct_ath10k_ptr = (struct ath10k *)tmp___12;
  tmp___13 = external_allocated_data();
  ldv_5_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___13;
  }
  return;
}
}
void ldv_base_instance_callback_5_24(void (*arg0)(struct ath10k * , unsigned char * ,
                                                  unsigned char * ) , struct ath10k *arg1 ,
                                     unsigned char *arg2 , unsigned char *arg3 )
{
  {
  {
  ath10k_pci_hif_get_default_pipe(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_base_instance_callback_5_27(unsigned short (*arg0)(struct ath10k * , unsigned char ) ,
                                     struct ath10k *arg1 , unsigned char arg2 )
{
  {
  {
  ath10k_pci_hif_get_free_queue_number(arg1, (int )arg2);
  }
  return;
}
}
void ldv_base_instance_callback_5_30(int (*arg0)(struct ath10k * , unsigned short ,
                                                 unsigned char * , unsigned char * ,
                                                 int * , int * ) , struct ath10k *arg1 ,
                                     unsigned short arg2 , unsigned char *arg3 , unsigned char *arg4 ,
                                     int *arg5 , int *arg6 )
{
  {
  {
  ath10k_pci_hif_map_service_to_pipe(arg1, (int )arg2, arg3, arg4, arg5, arg6);
  }
  return;
}
}
void ldv_base_instance_callback_5_33(void (*arg0)(struct ath10k * ) , struct ath10k *arg1 )
{
  {
  {
  ath10k_pci_hif_power_down(arg1);
  }
  return;
}
}
void ldv_base_instance_callback_5_34(int (*arg0)(struct ath10k * ) , struct ath10k *arg1 )
{
  {
  {
  ath10k_pci_hif_power_up(arg1);
  }
  return;
}
}
void ldv_base_instance_callback_5_35(void (*arg0)(struct ath10k * , unsigned char ,
                                                  int ) , struct ath10k *arg1 , unsigned char arg2 ,
                                     int arg3 )
{
  {
  {
  ath10k_pci_hif_send_complete_check(arg1, (int )arg2, arg3);
  }
  return;
}
}
void ldv_base_instance_callback_5_38(int (*arg0)(struct ath10k * , unsigned char ,
                                                 unsigned int , unsigned int , struct sk_buff * ) ,
                                     struct ath10k *arg1 , unsigned char arg2 , unsigned int arg3 ,
                                     unsigned int arg4 , struct sk_buff *arg5 )
{
  {
  {
  ath10k_pci_hif_send_head(arg1, (int )arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_base_instance_callback_5_41(void (*arg0)(struct ath10k * , struct ath10k_hif_cb * ) ,
                                     struct ath10k *arg1 , struct ath10k_hif_cb *arg2 )
{
  {
  {
  ath10k_pci_hif_set_callbacks(arg1, arg2);
  }
  return;
}
}
void ldv_base_instance_callback_5_9(int (*arg0)(struct ath10k * , void * , unsigned int ,
                                                void * , unsigned int * ) , struct ath10k *arg1 ,
                                    void *arg2 , unsigned int arg3 , void *arg4 ,
                                    unsigned int *arg5 )
{
  {
  {
  ath10k_pci_hif_exchange_bmi_msg(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
int ldv_base_instance_probe_5_16(int (*arg0)(struct ath10k * ) , struct ath10k *arg1 )
{
  int tmp ;
  {
  {
  tmp = ath10k_pci_hif_start(arg1);
  }
  return (tmp);
}
}
void ldv_base_instance_release_5_2(void (*arg0)(struct ath10k * ) , struct ath10k *arg1 )
{
  {
  {
  ath10k_pci_hif_stop(arg1);
  }
  return;
}
}
void ldv_base_instance_resume_5_5(int (*arg0)(struct ath10k * ) , struct ath10k *arg1 )
{
  {
  {
  ath10k_pci_hif_resume(arg1);
  }
  return;
}
}
int ldv_base_instance_suspend_5_7(int (*arg0)(struct ath10k * ) , struct ath10k *arg1 )
{
  int tmp ;
  {
  {
  tmp = ath10k_pci_hif_suspend(arg1);
  }
  return (tmp);
}
}
void ldv_dispatch_deregister_11_1(struct pci_driver *arg0 )
{
  {
  {
  ldv_4_container_pci_driver = arg0;
  ldv_switch_automaton_state_4_11();
  }
  return;
}
}
void ldv_dispatch_deregister_base_instance_7_13_4(void)
{
  {
  {
  ldv_switch_automaton_state_5_10();
  }
  return;
}
}
void ldv_dispatch_irq_deregister_6_1(int arg0 )
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
  case_0:
  {
  ldv_0_line_line = arg0;
  ldv_switch_automaton_state_0_1();
  }
  goto ldv_53591;
  case_1:
  {
  ldv_1_line_line = arg0;
  ldv_switch_automaton_state_1_1();
  }
  goto ldv_53591;
  case_2:
  {
  ldv_2_line_line = arg0;
  ldv_switch_automaton_state_2_1();
  }
  goto ldv_53591;
  case_3:
  {
  ldv_3_line_line = arg0;
  ldv_switch_automaton_state_3_1();
  }
  goto ldv_53591;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_53591: ;
  return;
}
}
void ldv_dispatch_irq_register_10_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
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
  case_0:
  {
  ldv_0_line_line = arg0;
  ldv_0_callback_handler = arg1;
  ldv_0_thread_thread = arg2;
  ldv_0_data_data = arg3;
  ldv_switch_automaton_state_0_6();
  }
  goto ldv_53608;
  case_1:
  {
  ldv_1_line_line = arg0;
  ldv_1_callback_handler = arg1;
  ldv_1_thread_thread = arg2;
  ldv_1_data_data = arg3;
  ldv_switch_automaton_state_1_6();
  }
  goto ldv_53608;
  case_2:
  {
  ldv_2_line_line = arg0;
  ldv_2_callback_handler = arg1;
  ldv_2_thread_thread = arg2;
  ldv_2_data_data = arg3;
  ldv_switch_automaton_state_2_6();
  }
  goto ldv_53608;
  case_3:
  {
  ldv_3_line_line = arg0;
  ldv_3_callback_handler = arg1;
  ldv_3_thread_thread = arg2;
  ldv_3_data_data = arg3;
  ldv_switch_automaton_state_3_6();
  }
  goto ldv_53608;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_53608: ;
  return;
}
}
void ldv_dispatch_irq_register_7_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 )
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
  case_0:
  {
  ldv_0_line_line = arg0;
  ldv_0_callback_handler = arg1;
  ldv_0_thread_thread = arg2;
  ldv_0_data_data = arg3;
  ldv_switch_automaton_state_0_6();
  }
  goto ldv_53625;
  case_1:
  {
  ldv_1_line_line = arg0;
  ldv_1_callback_handler = arg1;
  ldv_1_thread_thread = arg2;
  ldv_1_data_data = arg3;
  ldv_switch_automaton_state_1_6();
  }
  goto ldv_53625;
  case_2:
  {
  ldv_2_line_line = arg0;
  ldv_2_callback_handler = arg1;
  ldv_2_thread_thread = arg2;
  ldv_2_data_data = arg3;
  ldv_switch_automaton_state_2_6();
  }
  goto ldv_53625;
  case_3:
  {
  ldv_3_line_line = arg0;
  ldv_3_callback_handler = arg1;
  ldv_3_thread_thread = arg2;
  ldv_3_data_data = arg3;
  ldv_switch_automaton_state_3_6();
  }
  goto ldv_53625;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_53625: ;
  return;
}
}
void ldv_dispatch_irq_register_8_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 )
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
  case_0:
  {
  ldv_0_line_line = arg0;
  ldv_0_callback_handler = arg1;
  ldv_0_thread_thread = arg2;
  ldv_0_data_data = arg3;
  ldv_switch_automaton_state_0_6();
  }
  goto ldv_53642;
  case_1:
  {
  ldv_1_line_line = arg0;
  ldv_1_callback_handler = arg1;
  ldv_1_thread_thread = arg2;
  ldv_1_data_data = arg3;
  ldv_switch_automaton_state_1_6();
  }
  goto ldv_53642;
  case_2:
  {
  ldv_2_line_line = arg0;
  ldv_2_callback_handler = arg1;
  ldv_2_thread_thread = arg2;
  ldv_2_data_data = arg3;
  ldv_switch_automaton_state_2_6();
  }
  goto ldv_53642;
  case_3:
  {
  ldv_3_line_line = arg0;
  ldv_3_callback_handler = arg1;
  ldv_3_thread_thread = arg2;
  ldv_3_data_data = arg3;
  ldv_switch_automaton_state_3_6();
  }
  goto ldv_53642;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_53642: ;
  return;
}
}
void ldv_dispatch_irq_register_9_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 )
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
  case_0:
  {
  ldv_0_line_line = arg0;
  ldv_0_callback_handler = arg1;
  ldv_0_thread_thread = arg2;
  ldv_0_data_data = arg3;
  ldv_switch_automaton_state_0_6();
  }
  goto ldv_53659;
  case_1:
  {
  ldv_1_line_line = arg0;
  ldv_1_callback_handler = arg1;
  ldv_1_thread_thread = arg2;
  ldv_1_data_data = arg3;
  ldv_switch_automaton_state_1_6();
  }
  goto ldv_53659;
  case_2:
  {
  ldv_2_line_line = arg0;
  ldv_2_callback_handler = arg1;
  ldv_2_thread_thread = arg2;
  ldv_2_data_data = arg3;
  ldv_switch_automaton_state_2_6();
  }
  goto ldv_53659;
  case_3:
  {
  ldv_3_line_line = arg0;
  ldv_3_callback_handler = arg1;
  ldv_3_thread_thread = arg2;
  ldv_3_data_data = arg3;
  ldv_switch_automaton_state_3_6();
  }
  goto ldv_53659;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_53659: ;
  return;
}
}
void ldv_dispatch_register_12_2(struct pci_driver *arg0 )
{
  {
  {
  ldv_4_container_pci_driver = arg0;
  ldv_switch_automaton_state_4_20();
  }
  return;
}
}
void ldv_dispatch_register_base_instance_7_13_5(void)
{
  {
  {
  ldv_switch_automaton_state_5_19();
  }
  return;
}
}
void ldv_entry_EMGentry_13(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_13 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_13 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_13 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_13 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_13 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_13 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_13 == 9) {
    goto case_9;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_4 == 12);
  ldv_EMGentry_exit_ath10k_pci_exit_13_2(ldv_13_exit_ath10k_pci_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_13 = 9;
  }
  goto ldv_53675;
  case_3:
  {
  ldv_assume(ldv_statevar_4 == 12);
  ldv_EMGentry_exit_ath10k_pci_exit_13_2(ldv_13_exit_ath10k_pci_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_13 = 9;
  }
  goto ldv_53675;
  case_4:
  {
  ldv_assume(ldv_statevar_5 == 11);
  ldv_dispatch_deregister_base_instance_7_13_4();
  ldv_statevar_13 = 2;
  }
  goto ldv_53675;
  case_5:
  {
  ldv_assume(ldv_statevar_5 == 19);
  ldv_dispatch_register_base_instance_7_13_5();
  ldv_statevar_13 = 4;
  }
  goto ldv_53675;
  case_6:
  {
  ldv_assume(ldv_13_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_13 = 3;
  } else {
    ldv_statevar_13 = 5;
  }
  goto ldv_53675;
  case_8:
  {
  ldv_assume(ldv_13_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_13 = 9;
  }
  goto ldv_53675;
  case_9:
  {
  ldv_assume(ldv_statevar_4 == 20);
  ldv_13_ret_default = ldv_EMGentry_init_ath10k_pci_init_13_9(ldv_13_init_ath10k_pci_init_default);
  ldv_13_ret_default = ldv_post_init(ldv_13_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_13 = 6;
  } else {
    ldv_statevar_13 = 8;
  }
  goto ldv_53675;
  switch_default: ;
  switch_break: ;
  }
  ldv_53675: ;
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
  ldv_statevar_13 = 9;
  ldv_statevar_0 = 6;
  ldv_statevar_1 = 6;
  ldv_statevar_2 = 6;
  ldv_statevar_3 = 6;
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 20;
  ldv_5_ret_default = 1;
  ldv_statevar_5 = 19;
  }
  ldv_53694:
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
  ldv_entry_EMGentry_13((void *)0);
  }
  goto ldv_53686;
  case_1:
  {
  ldv_interrupt_interrupt_instance_0((void *)0);
  }
  goto ldv_53686;
  case_2:
  {
  ldv_interrupt_interrupt_instance_1((void *)0);
  }
  goto ldv_53686;
  case_3:
  {
  ldv_interrupt_interrupt_instance_2((void *)0);
  }
  goto ldv_53686;
  case_4:
  {
  ldv_interrupt_interrupt_instance_3((void *)0);
  }
  goto ldv_53686;
  case_5:
  {
  ldv_pci_pci_instance_4((void *)0);
  }
  goto ldv_53686;
  case_6:
  {
  ldv_struct_ath10k_hif_ops_base_instance_5((void *)0);
  }
  goto ldv_53686;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_53686: ;
  goto ldv_53694;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_6_line_line ;
  {
  {
  ldv_6_line_line = arg1;
  ldv_assume(((ldv_statevar_0 == 2 || ldv_statevar_1 == 2) || ldv_statevar_2 == 2) || ldv_statevar_3 == 2);
  ldv_dispatch_irq_deregister_6_1(ldv_6_line_line);
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
  tmp = ath10k_pci_early_irq_handler(arg1, arg2);
  }
  return (tmp);
}
}
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = ath10k_pci_interrupt_handler(arg1, arg2);
  }
  return (tmp);
}
}
enum irqreturn ldv_interrupt_instance_handler_2_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = ath10k_pci_msi_fw_handler(arg1, arg2);
  }
  return (tmp);
}
}
enum irqreturn ldv_interrupt_instance_handler_3_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = ath10k_pci_per_engine_handler(arg1, arg2);
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
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_instance_thread_2_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
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
  goto ldv_53763;
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
  goto ldv_53763;
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
  goto ldv_53763;
  case_6: ;
  goto ldv_53763;
  switch_default: ;
  switch_break: ;
  }
  ldv_53763: ;
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
  goto ldv_53772;
  case_4:
  {
  ldv_assume((unsigned int )ldv_1_ret_val_default == 2U);
  }
  if ((unsigned long )ldv_1_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                  void * ))0)) {
    {
    ldv_interrupt_instance_thread_1_3(ldv_1_thread_thread, ldv_1_line_line, ldv_1_data_data);
    }
  } else {
  }
  ldv_statevar_1 = 6;
  goto ldv_53772;
  case_5:
  {
  ldv_switch_to_interrupt_context();
  ldv_1_ret_val_default = ldv_interrupt_instance_handler_1_5(ldv_1_callback_handler,
                                                             ldv_1_line_line, ldv_1_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_1 = 2;
  } else {
    ldv_statevar_1 = 4;
  }
  goto ldv_53772;
  case_6: ;
  goto ldv_53772;
  switch_default: ;
  switch_break: ;
  }
  ldv_53772: ;
  return;
}
}
void ldv_interrupt_interrupt_instance_2(void *arg0 )
{
  int tmp ;
  {
  {
  if (ldv_statevar_2 == 2) {
    goto case_2;
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
  goto switch_default;
  case_2:
  {
  ldv_assume((unsigned int )ldv_2_ret_val_default != 2U);
  ldv_statevar_2 = 6;
  }
  goto ldv_53781;
  case_4:
  {
  ldv_assume((unsigned int )ldv_2_ret_val_default == 2U);
  }
  if ((unsigned long )ldv_2_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                  void * ))0)) {
    {
    ldv_interrupt_instance_thread_2_3(ldv_2_thread_thread, ldv_2_line_line, ldv_2_data_data);
    }
  } else {
  }
  ldv_statevar_2 = 6;
  goto ldv_53781;
  case_5:
  {
  ldv_switch_to_interrupt_context();
  ldv_2_ret_val_default = ldv_interrupt_instance_handler_2_5(ldv_2_callback_handler,
                                                             ldv_2_line_line, ldv_2_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_2 = 2;
  } else {
    ldv_statevar_2 = 4;
  }
  goto ldv_53781;
  case_6: ;
  goto ldv_53781;
  switch_default: ;
  switch_break: ;
  }
  ldv_53781: ;
  return;
}
}
void ldv_interrupt_interrupt_instance_3(void *arg0 )
{
  int tmp ;
  {
  {
  if (ldv_statevar_3 == 2) {
    goto case_2;
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
  goto switch_default;
  case_2:
  {
  ldv_assume((unsigned int )ldv_3_ret_val_default != 2U);
  ldv_statevar_3 = 6;
  }
  goto ldv_53790;
  case_4:
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
  ldv_statevar_3 = 6;
  goto ldv_53790;
  case_5:
  {
  ldv_switch_to_interrupt_context();
  ldv_3_ret_val_default = ldv_interrupt_instance_handler_3_5(ldv_3_callback_handler,
                                                             ldv_3_line_line, ldv_3_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_3 = 2;
  } else {
    ldv_statevar_3 = 4;
  }
  goto ldv_53790;
  case_6: ;
  goto ldv_53790;
  switch_default: ;
  switch_break: ;
  }
  ldv_53790: ;
  return;
}
}
int ldv_pci_instance_probe_4_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = ath10k_pci_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_4_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  ath10k_pci_remove(arg1);
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
  (*arg0)(arg1);
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
  tmp = (*arg0)(arg1, arg2);
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
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
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
  if (ldv_statevar_4 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_4 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_4 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_4 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_4 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_4 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_4 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_4 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_4 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_4 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_4 == 20) {
    goto case_20;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_4 = 12;
  } else {
    ldv_statevar_4 = 17;
  }
  goto ldv_53840;
  case_2:
  {
  ldv_pci_instance_release_4_2(ldv_4_container_pci_driver->remove, ldv_4_resource_dev);
  ldv_statevar_4 = 1;
  }
  goto ldv_53840;
  case_3: ;
  if ((unsigned long )ldv_4_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_4_3(ldv_4_container_pci_driver->shutdown, ldv_4_resource_dev);
    }
  } else {
  }
  ldv_statevar_4 = 2;
  goto ldv_53840;
  case_4:
  {
  ldv_statevar_4 = ldv_switch_0();
  }
  goto ldv_53840;
  case_5: ;
  if ((unsigned long )ldv_4_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_4_5(ldv_4_container_pci_driver->resume, ldv_4_resource_dev);
    }
  } else {
  }
  ldv_statevar_4 = 4;
  goto ldv_53840;
  case_6: ;
  if ((unsigned long )ldv_4_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_4_6(ldv_4_container_pci_driver->resume_early, ldv_4_resource_dev);
    }
  } else {
  }
  ldv_statevar_4 = 5;
  goto ldv_53840;
  case_7: ;
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
  ldv_statevar_4 = 6;
  }
  goto ldv_53840;
  case_8: ;
  if ((unsigned long )ldv_4_container_pci_driver->suspend != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                       pm_message_t ))0)) {
    {
    ldv_4_ret_default = ldv_pci_instance_suspend_4_8(ldv_4_container_pci_driver->suspend,
                                                     ldv_4_resource_dev, ldv_4_resource_pm_message);
    }
  } else {
  }
  {
  ldv_4_ret_default = ldv_filter_err_code(ldv_4_ret_default);
  ldv_statevar_4 = 7;
  }
  goto ldv_53840;
  case_9:
  {
  ldv_statevar_4 = ldv_switch_0();
  }
  goto ldv_53840;
  case_10:
  ldv_statevar_4 = 9;
  goto ldv_53840;
  case_12:
  {
  ldv_free((void *)ldv_4_resource_dev);
  ldv_free((void *)ldv_4_resource_struct_pci_device_id_ptr);
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 20;
  }
  goto ldv_53840;
  case_14:
  {
  ldv_assume(ldv_4_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_4 = 12;
  } else {
    ldv_statevar_4 = 17;
  }
  goto ldv_53840;
  case_16:
  {
  ldv_assume(ldv_4_ret_default == 0);
  ldv_statevar_4 = ldv_switch_0();
  }
  goto ldv_53840;
  case_17:
  {
  ldv_pre_probe();
  ldv_4_ret_default = ldv_pci_instance_probe_4_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_4_container_pci_driver->probe,
                                                  ldv_4_resource_dev, ldv_4_resource_struct_pci_device_id_ptr);
  ldv_4_ret_default = ldv_post_probe(ldv_4_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_4 = 14;
  } else {
    ldv_statevar_4 = 16;
  }
  goto ldv_53840;
  case_19:
  {
  tmp___2 = ldv_xmalloc(2936UL);
  ldv_4_resource_dev = (struct pci_dev *)tmp___2;
  tmp___3 = ldv_xmalloc(32UL);
  ldv_4_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___3;
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
    ldv_statevar_4 = 12;
  } else {
    ldv_statevar_4 = 17;
  }
  goto ldv_53840;
  case_20: ;
  goto ldv_53840;
  switch_default: ;
  switch_break: ;
  }
  ldv_53840: ;
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_11_pci_driver_pci_driver ;
  {
  {
  ldv_11_pci_driver_pci_driver = arg1;
  ldv_assume(ldv_statevar_4 == 12);
  ldv_dispatch_deregister_11_1(ldv_11_pci_driver_pci_driver);
  }
  return;
  return;
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
    ldv_assume(((ldv_statevar_0 == 6 || ldv_statevar_1 == 6) || ldv_statevar_2 == 6) || ldv_statevar_3 == 6);
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
void ldv_struct_ath10k_hif_ops_base_instance_5(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
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
  if (ldv_statevar_5 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_5 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_5 == 9) {
    goto case_9;
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
  if (ldv_statevar_5 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_5 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_5 == 18) {
    goto case_18;
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
  if (ldv_statevar_5 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_5 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_5 == 31) {
    goto case_31;
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
  if (ldv_statevar_5 == 36) {
    goto case_36;
  } else {
  }
  if (ldv_statevar_5 == 39) {
    goto case_39;
  } else {
  }
  if (ldv_statevar_5 == 41) {
    goto case_41;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_5 = 11;
  } else {
    ldv_statevar_5 = 16;
  }
  goto ldv_53884;
  case_2:
  {
  ldv_assume(((((((ldv_statevar_0 == 2 || ldv_statevar_0 == 6) || ldv_statevar_1 == 2) || ldv_statevar_1 == 6) || ldv_statevar_2 == 2) || ldv_statevar_2 == 6) || ldv_statevar_3 == 6) || ldv_statevar_3 == 2);
  ldv_base_instance_release_5_2(ldv_5_container_struct_ath10k_hif_ops->stop, ldv_5_resource_struct_ath10k_ptr);
  ldv_statevar_5 = 1;
  }
  goto ldv_53884;
  case_3:
  {
  ldv_statevar_5 = ldv_switch_1();
  }
  goto ldv_53884;
  case_4:
  {
  ldv_assume(ldv_5_ret_default != 0);
  ldv_statevar_5 = ldv_switch_1();
  }
  goto ldv_53884;
  case_6:
  {
  ldv_assume(ldv_5_ret_default == 0);
  ldv_base_instance_resume_5_5(ldv_5_container_struct_ath10k_hif_ops->resume, ldv_5_resource_struct_ath10k_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_53884;
  case_7:
  {
  ldv_5_ret_default = ldv_base_instance_suspend_5_7(ldv_5_container_struct_ath10k_hif_ops->suspend,
                                                    ldv_5_resource_struct_ath10k_ptr);
  ldv_5_ret_default = ldv_filter_err_code(ldv_5_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_5 = 4;
  } else {
    ldv_statevar_5 = 6;
  }
  goto ldv_53884;
  case_8:
  {
  ldv_statevar_5 = ldv_switch_1();
  }
  goto ldv_53884;
  case_9:
  {
  ldv_base_instance_callback_5_9(ldv_5_callback_exchange_bmi_msg, ldv_5_resource_struct_ath10k_ptr,
                                 (void *)ldv_5_resource_struct_ath10k_hif_cb_ptr,
                                 ldv_5_ldv_param_9_2_default, (void *)ldv_5_resource_struct_sk_buff_ptr,
                                 ldv_5_ldv_param_9_4_default);
  ldv_free((void *)ldv_5_ldv_param_9_4_default);
  ldv_statevar_5 = 8;
  }
  goto ldv_53884;
  case_11:
  {
  ldv_free((void *)ldv_5_resource_struct_ath10k_hif_cb_ptr);
  ldv_free((void *)ldv_5_resource_struct_ath10k_ptr);
  ldv_free((void *)ldv_5_resource_struct_sk_buff_ptr);
  ldv_5_ret_default = 1;
  ldv_statevar_5 = 19;
  }
  goto ldv_53884;
  case_13:
  {
  ldv_assume(ldv_5_ret_default != 0);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_5 = 11;
  } else {
    ldv_statevar_5 = 16;
  }
  goto ldv_53884;
  case_15:
  {
  ldv_assume(ldv_5_ret_default == 0);
  ldv_statevar_5 = ldv_switch_1();
  }
  goto ldv_53884;
  case_16:
  {
  ldv_assume(((((((ldv_statevar_0 == 2 || ldv_statevar_0 == 6) || ldv_statevar_1 == 2) || ldv_statevar_1 == 6) || ldv_statevar_2 == 2) || ldv_statevar_2 == 6) || ldv_statevar_3 == 6) || ldv_statevar_3 == 2);
  ldv_5_ret_default = ldv_base_instance_probe_5_16(ldv_5_container_struct_ath10k_hif_ops->start,
                                                   ldv_5_resource_struct_ath10k_ptr);
  ldv_5_ret_default = ldv_filter_err_code(ldv_5_ret_default);
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    ldv_statevar_5 = 13;
  } else {
    ldv_statevar_5 = 15;
  }
  goto ldv_53884;
  case_18:
  {
  tmp___3 = ldv_xmalloc(16UL);
  ldv_5_resource_struct_ath10k_hif_cb_ptr = (struct ath10k_hif_cb *)tmp___3;
  tmp___4 = ldv_xmalloc(8280UL);
  ldv_5_resource_struct_ath10k_ptr = (struct ath10k *)tmp___4;
  tmp___5 = ldv_xmalloc(232UL);
  ldv_5_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___5;
  tmp___6 = ldv_undef_int();
  }
  if (tmp___6 != 0) {
    ldv_statevar_5 = 11;
  } else {
    ldv_statevar_5 = 16;
  }
  goto ldv_53884;
  case_19: ;
  goto ldv_53884;
  case_22:
  {
  tmp___7 = ldv_xmalloc(4UL);
  ldv_5_ldv_param_9_4_default = (unsigned int *)tmp___7;
  ldv_statevar_5 = ldv_switch_2();
  }
  goto ldv_53884;
  case_25:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_24_1_default = (unsigned char *)tmp___8;
  tmp___9 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_24_2_default = (unsigned char *)tmp___9;
  ldv_base_instance_callback_5_24(ldv_5_callback_get_default_pipe, ldv_5_resource_struct_ath10k_ptr,
                                  ldv_5_ldv_param_24_1_default, ldv_5_ldv_param_24_2_default);
  ldv_free((void *)ldv_5_ldv_param_24_1_default);
  ldv_free((void *)ldv_5_ldv_param_24_2_default);
  ldv_free((void *)ldv_5_ldv_param_9_4_default);
  ldv_statevar_5 = 8;
  }
  goto ldv_53884;
  case_28:
  {
  ldv_base_instance_callback_5_27(ldv_5_callback_get_free_queue_number, ldv_5_resource_struct_ath10k_ptr,
                                  (int )ldv_5_ldv_param_27_1_default);
  ldv_free((void *)ldv_5_ldv_param_9_4_default);
  ldv_statevar_5 = 8;
  }
  goto ldv_53884;
  case_31:
  {
  tmp___10 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_30_2_default = (unsigned char *)tmp___10;
  tmp___11 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_30_3_default = (unsigned char *)tmp___11;
  tmp___12 = ldv_xmalloc(4UL);
  ldv_5_ldv_param_30_4_default = (int *)tmp___12;
  tmp___13 = ldv_xmalloc(4UL);
  ldv_5_ldv_param_30_5_default = (int *)tmp___13;
  ldv_base_instance_callback_5_30(ldv_5_callback_map_service_to_pipe, ldv_5_resource_struct_ath10k_ptr,
                                  (int )ldv_5_ldv_param_30_1_default, ldv_5_ldv_param_30_2_default,
                                  ldv_5_ldv_param_30_3_default, ldv_5_ldv_param_30_4_default,
                                  ldv_5_ldv_param_30_5_default);
  ldv_free((void *)ldv_5_ldv_param_30_2_default);
  ldv_free((void *)ldv_5_ldv_param_30_3_default);
  ldv_free((void *)ldv_5_ldv_param_30_4_default);
  ldv_free((void *)ldv_5_ldv_param_30_5_default);
  ldv_free((void *)ldv_5_ldv_param_9_4_default);
  ldv_statevar_5 = 8;
  }
  goto ldv_53884;
  case_33:
  {
  ldv_assume(((ldv_statevar_0 == 2 || ldv_statevar_1 == 2) || ldv_statevar_2 == 2) || ldv_statevar_3 == 2);
  ldv_base_instance_callback_5_33(ldv_5_callback_power_down, ldv_5_resource_struct_ath10k_ptr);
  ldv_free((void *)ldv_5_ldv_param_9_4_default);
  ldv_statevar_5 = 8;
  }
  goto ldv_53884;
  case_34:
  {
  ldv_assume(((((((ldv_statevar_0 == 2 || ldv_statevar_0 == 6) || ldv_statevar_1 == 2) || ldv_statevar_1 == 6) || ldv_statevar_2 == 2) || ldv_statevar_2 == 6) || ldv_statevar_3 == 6) || ldv_statevar_3 == 2);
  ldv_base_instance_callback_5_34(ldv_5_callback_power_up, ldv_5_resource_struct_ath10k_ptr);
  ldv_free((void *)ldv_5_ldv_param_9_4_default);
  ldv_statevar_5 = 8;
  }
  goto ldv_53884;
  case_36:
  {
  ldv_base_instance_callback_5_35(ldv_5_callback_send_complete_check, ldv_5_resource_struct_ath10k_ptr,
                                  (int )ldv_5_ldv_param_35_1_default, ldv_5_ldv_param_35_2_default);
  ldv_free((void *)ldv_5_ldv_param_9_4_default);
  ldv_statevar_5 = 8;
  }
  goto ldv_53884;
  case_39:
  {
  ldv_base_instance_callback_5_38(ldv_5_callback_send_head, ldv_5_resource_struct_ath10k_ptr,
                                  (int )ldv_5_ldv_param_38_1_default, ldv_5_ldv_param_38_2_default,
                                  ldv_5_ldv_param_38_3_default, ldv_5_resource_struct_sk_buff_ptr);
  ldv_free((void *)ldv_5_ldv_param_9_4_default);
  ldv_statevar_5 = 8;
  }
  goto ldv_53884;
  case_41:
  {
  ldv_base_instance_callback_5_41(ldv_5_callback_set_callbacks, ldv_5_resource_struct_ath10k_ptr,
                                  ldv_5_resource_struct_ath10k_hif_cb_ptr);
  ldv_free((void *)ldv_5_ldv_param_9_4_default);
  ldv_statevar_5 = 8;
  }
  goto ldv_53884;
  switch_default: ;
  switch_break: ;
  }
  ldv_53884: ;
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
  return (2);
  case_1: ;
  return (7);
  case_2: ;
  return (22);
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
  goto switch_default;
  case_0: ;
  return (9);
  case_1: ;
  return (25);
  case_2: ;
  return (28);
  case_3: ;
  return (31);
  case_4: ;
  return (33);
  case_5: ;
  return (34);
  case_6: ;
  return (36);
  case_7: ;
  return (39);
  case_8: ;
  return (41);
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
void ldv_switch_automaton_state_2_1(void)
{
  {
  ldv_statevar_2 = 6;
  return;
}
}
void ldv_switch_automaton_state_2_6(void)
{
  {
  ldv_statevar_2 = 5;
  return;
}
}
void ldv_switch_automaton_state_3_1(void)
{
  {
  ldv_statevar_3 = 6;
  return;
}
}
void ldv_switch_automaton_state_3_6(void)
{
  {
  ldv_statevar_3 = 5;
  return;
}
}
void ldv_switch_automaton_state_4_11(void)
{
  {
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 20;
  return;
}
}
void ldv_switch_automaton_state_4_20(void)
{
  {
  ldv_statevar_4 = 19;
  return;
}
}
void ldv_switch_automaton_state_5_10(void)
{
  {
  ldv_5_ret_default = 1;
  ldv_statevar_5 = 19;
  return;
}
}
void ldv_switch_automaton_state_5_19(void)
{
  {
  ldv_statevar_5 = 18;
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
static void *ldv_dev_get_drvdata_6(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_7(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
__inline static int ldv_request_irq_8(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                void * ) ,
                                      unsigned long flags , char const *name , void *dev )
{
  ldv_func_ret_type ldv_func_res ;
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
static void ldv_free_irq_9(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
__inline static int ldv_request_irq_10(unsigned int irq , irqreturn_t (*handler)(int ,
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
__inline static int ldv_request_irq_11(unsigned int irq , irqreturn_t (*handler)(int ,
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
static void ldv_free_irq_12(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_13(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
__inline static int ldv_request_irq_14(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
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
__inline static int ldv_request_irq_15(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
static void ldv_free_irq_16(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static int ldv___pci_register_driver_17(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
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
static void ldv_pci_unregister_driver_18(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
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
__inline static unsigned long __roundup_pow_of_two(unsigned long n )
{
  unsigned int tmp ;
  {
  {
  tmp = fls_long(n - 1UL);
  }
  return (1UL << (int )tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static u32 ath10k_ce_base_address(unsigned int ce_id )
{
  {
  return ((ce_id + 349U) * 1024U);
}
}
__inline static void ath10k_ce_dest_ring_write_index_set(struct ath10k *ar , u32 ce_ctrl_addr ,
                                                         unsigned int n )
{
  {
  {
  ath10k_pci_write32(ar, ce_ctrl_addr + 64U, n);
  }
  return;
}
}
__inline static u32 ath10k_ce_dest_ring_write_index_get(struct ath10k *ar , u32 ce_ctrl_addr )
{
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, ce_ctrl_addr + 64U);
  }
  return (tmp);
}
}
__inline static void ath10k_ce_src_ring_write_index_set(struct ath10k *ar , u32 ce_ctrl_addr ,
                                                        unsigned int n )
{
  {
  {
  ath10k_pci_write32(ar, ce_ctrl_addr + 60U, n);
  }
  return;
}
}
__inline static u32 ath10k_ce_src_ring_write_index_get(struct ath10k *ar , u32 ce_ctrl_addr )
{
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, ce_ctrl_addr + 60U);
  }
  return (tmp);
}
}
__inline static u32 ath10k_ce_src_ring_read_index_get(struct ath10k *ar , u32 ce_ctrl_addr )
{
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, ce_ctrl_addr + 68U);
  }
  return (tmp);
}
}
__inline static void ath10k_ce_src_ring_base_addr_set(struct ath10k *ar , u32 ce_ctrl_addr ,
                                                      unsigned int addr )
{
  {
  {
  ath10k_pci_write32(ar, ce_ctrl_addr, addr);
  }
  return;
}
}
__inline static void ath10k_ce_src_ring_size_set(struct ath10k *ar , u32 ce_ctrl_addr ,
                                                 unsigned int n )
{
  {
  {
  ath10k_pci_write32(ar, ce_ctrl_addr + 4U, n);
  }
  return;
}
}
__inline static void ath10k_ce_src_ring_dmax_set(struct ath10k *ar , u32 ce_ctrl_addr ,
                                                 unsigned int n )
{
  u32 ctrl1_addr ;
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, ce_ctrl_addr + 16U);
  ctrl1_addr = tmp;
  ath10k_pci_write32(ar, ce_ctrl_addr + 16U, (ctrl1_addr & 4294901760U) | (n & 65535U));
  }
  return;
}
}
__inline static void ath10k_ce_src_ring_byte_swap_set(struct ath10k *ar , u32 ce_ctrl_addr ,
                                                      unsigned int n )
{
  u32 ctrl1_addr ;
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, ce_ctrl_addr + 16U);
  ctrl1_addr = tmp;
  ath10k_pci_write32(ar, ce_ctrl_addr + 16U, (ctrl1_addr & 4294901759U) | ((n << 16) & 65536U));
  }
  return;
}
}
__inline static void ath10k_ce_dest_ring_byte_swap_set(struct ath10k *ar , u32 ce_ctrl_addr ,
                                                       unsigned int n )
{
  u32 ctrl1_addr ;
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, ce_ctrl_addr + 16U);
  ctrl1_addr = tmp;
  ath10k_pci_write32(ar, ce_ctrl_addr + 16U, (ctrl1_addr & 4294836223U) | ((n << 17) & 131072U));
  }
  return;
}
}
__inline static u32 ath10k_ce_dest_ring_read_index_get(struct ath10k *ar , u32 ce_ctrl_addr )
{
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, ce_ctrl_addr + 72U);
  }
  return (tmp);
}
}
__inline static void ath10k_ce_dest_ring_base_addr_set(struct ath10k *ar , u32 ce_ctrl_addr ,
                                                       u32 addr )
{
  {
  {
  ath10k_pci_write32(ar, ce_ctrl_addr + 8U, addr);
  }
  return;
}
}
__inline static void ath10k_ce_dest_ring_size_set(struct ath10k *ar , u32 ce_ctrl_addr ,
                                                  unsigned int n )
{
  {
  {
  ath10k_pci_write32(ar, ce_ctrl_addr + 12U, n);
  }
  return;
}
}
__inline static void ath10k_ce_src_ring_highmark_set(struct ath10k *ar , u32 ce_ctrl_addr ,
                                                     unsigned int n )
{
  u32 addr ;
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, ce_ctrl_addr + 76U);
  addr = tmp;
  ath10k_pci_write32(ar, ce_ctrl_addr + 76U, (addr & 4294901760U) | (n & 65535U));
  }
  return;
}
}
__inline static void ath10k_ce_src_ring_lowmark_set(struct ath10k *ar , u32 ce_ctrl_addr ,
                                                    unsigned int n )
{
  u32 addr ;
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, ce_ctrl_addr + 76U);
  addr = tmp;
  ath10k_pci_write32(ar, ce_ctrl_addr + 76U, (addr & 65535U) | (n << 16));
  }
  return;
}
}
__inline static void ath10k_ce_dest_ring_highmark_set(struct ath10k *ar , u32 ce_ctrl_addr ,
                                                      unsigned int n )
{
  u32 addr ;
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, ce_ctrl_addr + 80U);
  addr = tmp;
  ath10k_pci_write32(ar, ce_ctrl_addr + 80U, (addr & 4294901760U) | (n & 65535U));
  }
  return;
}
}
__inline static void ath10k_ce_dest_ring_lowmark_set(struct ath10k *ar , u32 ce_ctrl_addr ,
                                                     unsigned int n )
{
  u32 addr ;
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, ce_ctrl_addr + 80U);
  addr = tmp;
  ath10k_pci_write32(ar, ce_ctrl_addr + 80U, (addr & 65535U) | (n << 16));
  }
  return;
}
}
__inline static void ath10k_ce_copy_complete_inter_enable(struct ath10k *ar , u32 ce_ctrl_addr )
{
  u32 host_ie_addr ;
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, ce_ctrl_addr + 44U);
  host_ie_addr = tmp;
  ath10k_pci_write32(ar, ce_ctrl_addr + 44U, host_ie_addr | 1U);
  }
  return;
}
}
__inline static void ath10k_ce_copy_complete_intr_disable(struct ath10k *ar , u32 ce_ctrl_addr )
{
  u32 host_ie_addr ;
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, ce_ctrl_addr + 44U);
  host_ie_addr = tmp;
  ath10k_pci_write32(ar, ce_ctrl_addr + 44U, host_ie_addr & 4294967294U);
  }
  return;
}
}
__inline static void ath10k_ce_watermark_intr_disable(struct ath10k *ar , u32 ce_ctrl_addr )
{
  u32 host_ie_addr ;
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, ce_ctrl_addr + 44U);
  host_ie_addr = tmp;
  ath10k_pci_write32(ar, ce_ctrl_addr + 44U, host_ie_addr & 4294967265U);
  }
  return;
}
}
__inline static void ath10k_ce_error_intr_disable(struct ath10k *ar , u32 ce_ctrl_addr )
{
  u32 misc_ie_addr ;
  u32 tmp ;
  {
  {
  tmp = ath10k_pci_read32(ar, ce_ctrl_addr + 52U);
  misc_ie_addr = tmp;
  ath10k_pci_write32(ar, ce_ctrl_addr + 52U, misc_ie_addr & 4294965279U);
  }
  return;
}
}
__inline static void ath10k_ce_engine_int_status_clear(struct ath10k *ar , u32 ce_ctrl_addr ,
                                                       unsigned int mask )
{
  {
  {
  ath10k_pci_write32(ar, ce_ctrl_addr + 48U, mask);
  }
  return;
}
}
static int ath10k_ce_send_nolock(struct ath10k_ce_pipe *ce_state , void *per_transfer_context ,
                                 u32 buffer , unsigned int nbytes , unsigned int transfer_id ,
                                 unsigned int flags )
{
  struct ath10k *ar ;
  struct ath10k_ce_ring *src_ring ;
  struct ce_desc *desc ;
  struct ce_desc *sdesc ;
  unsigned int nentries_mask ;
  unsigned int sw_index ;
  unsigned int write_index ;
  u32 ctrl_addr ;
  u32 desc_flags ;
  int ret ;
  long tmp ;
  {
  ar = ce_state->ar;
  src_ring = ce_state->src_ring;
  nentries_mask = src_ring->nentries_mask;
  sw_index = src_ring->sw_index;
  write_index = src_ring->write_index;
  ctrl_addr = ce_state->ctrl_addr;
  desc_flags = 0U;
  ret = 0;
  if (nbytes > ce_state->src_sz_max) {
    {
    ath10k_warn("%s: send more we can (nbytes: %d, max: %d)\n", "ath10k_ce_send_nolock",
                nbytes, ce_state->src_sz_max);
    }
  } else {
  }
  {
  ret = ath10k_pci_wake(ar);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  tmp = ldv__builtin_expect(((unsigned int )((int )(sw_index - 1U) - (int )write_index) & nentries_mask) == 0U,
                         0L);
  }
  if (tmp != 0L) {
    ret = -63;
    goto exit;
  } else {
  }
  desc = (struct ce_desc *)src_ring->base_addr_owner_space + (unsigned long )write_index;
  sdesc = src_ring->shadow_base + (unsigned long )write_index;
  desc_flags = desc_flags | ((transfer_id << 3) & 65535U);
  if ((flags & 65536U) != 0U) {
    desc_flags = desc_flags | 1U;
  } else {
  }
  if ((int )flags & 1) {
    desc_flags = desc_flags | 2U;
  } else {
  }
  sdesc->addr = buffer;
  sdesc->nbytes = (unsigned short )nbytes;
  sdesc->flags = (unsigned short )desc_flags;
  *desc = *sdesc;
  *(src_ring->per_transfer_context + (unsigned long )write_index) = per_transfer_context;
  write_index = (write_index + 1U) & nentries_mask;
  if ((flags & 65536U) == 0U) {
    {
    ath10k_ce_src_ring_write_index_set(ar, ctrl_addr, write_index);
    }
  } else {
  }
  src_ring->write_index = write_index;
  exit:
  {
  ath10k_pci_sleep(ar);
  }
  return (ret);
}
}
int ath10k_ce_send(struct ath10k_ce_pipe *ce_state , void *per_transfer_context ,
                   u32 buffer , unsigned int nbytes , unsigned int transfer_id , unsigned int flags )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int ret ;
  {
  {
  ar = ce_state->ar;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  spin_lock_bh(& ar_pci->ce_lock);
  ret = ath10k_ce_send_nolock(ce_state, per_transfer_context, buffer, nbytes, transfer_id,
                              flags);
  spin_unlock_bh(& ar_pci->ce_lock);
  }
  return (ret);
}
}
int ath10k_ce_num_free_src_entries(struct ath10k_ce_pipe *pipe )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int delta ;
  {
  {
  ar = pipe->ar;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  spin_lock_bh(& ar_pci->ce_lock);
  delta = (int )((unsigned int )((int )((pipe->src_ring)->sw_index - 1U) - (int )(pipe->src_ring)->write_index) & (pipe->src_ring)->nentries_mask);
  spin_unlock_bh(& ar_pci->ce_lock);
  }
  return (delta);
}
}
int ath10k_ce_recv_buf_enqueue(struct ath10k_ce_pipe *ce_state , void *per_recv_context ,
                               u32 buffer )
{
  struct ath10k_ce_ring *dest_ring ;
  u32 ctrl_addr ;
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  unsigned int nentries_mask ;
  unsigned int write_index ;
  unsigned int sw_index ;
  int ret ;
  struct ce_desc *base ;
  struct ce_desc *desc ;
  {
  {
  dest_ring = ce_state->dest_ring;
  ctrl_addr = ce_state->ctrl_addr;
  ar = ce_state->ar;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  nentries_mask = dest_ring->nentries_mask;
  spin_lock_bh(& ar_pci->ce_lock);
  write_index = dest_ring->write_index;
  sw_index = dest_ring->sw_index;
  ret = ath10k_pci_wake(ar);
  }
  if (ret != 0) {
    goto out;
  } else {
  }
  if (((unsigned int )((int )(sw_index - 1U) - (int )write_index) & nentries_mask) != 0U) {
    {
    base = (struct ce_desc *)dest_ring->base_addr_owner_space;
    desc = base + (unsigned long )write_index;
    desc->addr = buffer;
    desc->nbytes = 0U;
    *(dest_ring->per_transfer_context + (unsigned long )write_index) = per_recv_context;
    write_index = (write_index + 1U) & nentries_mask;
    ath10k_ce_dest_ring_write_index_set(ar, ctrl_addr, write_index);
    dest_ring->write_index = write_index;
    ret = 0;
    }
  } else {
    ret = -5;
  }
  {
  ath10k_pci_sleep(ar);
  }
  out:
  {
  spin_unlock_bh(& ar_pci->ce_lock);
  }
  return (ret);
}
}
static int ath10k_ce_completed_recv_next_nolock(struct ath10k_ce_pipe *ce_state ,
                                                void **per_transfer_contextp , u32 *bufferp ,
                                                unsigned int *nbytesp , unsigned int *transfer_idp ,
                                                unsigned int *flagsp )
{
  struct ath10k_ce_ring *dest_ring ;
  unsigned int nentries_mask ;
  unsigned int sw_index ;
  struct ce_desc *base ;
  struct ce_desc *desc ;
  struct ce_desc sdesc ;
  u16 nbytes ;
  {
  dest_ring = ce_state->dest_ring;
  nentries_mask = dest_ring->nentries_mask;
  sw_index = dest_ring->sw_index;
  base = (struct ce_desc *)dest_ring->base_addr_owner_space;
  desc = base + (unsigned long )sw_index;
  sdesc = *desc;
  nbytes = sdesc.nbytes;
  if ((unsigned int )nbytes == 0U) {
    return (-5);
  } else {
  }
  desc->nbytes = 0U;
  *bufferp = sdesc.addr;
  *nbytesp = (unsigned int )nbytes;
  *transfer_idp = (unsigned int )((int )sdesc.flags >> 3);
  if (((int )sdesc.flags & 2) != 0) {
    *flagsp = 1U;
  } else {
    *flagsp = 0U;
  }
  if ((unsigned long )per_transfer_contextp != (unsigned long )((void **)0)) {
    *per_transfer_contextp = *(dest_ring->per_transfer_context + (unsigned long )sw_index);
  } else {
  }
  *(dest_ring->per_transfer_context + (unsigned long )sw_index) = (void *)0;
  sw_index = (sw_index + 1U) & nentries_mask;
  dest_ring->sw_index = sw_index;
  return (0);
}
}
int ath10k_ce_completed_recv_next(struct ath10k_ce_pipe *ce_state , void **per_transfer_contextp ,
                                  u32 *bufferp , unsigned int *nbytesp , unsigned int *transfer_idp ,
                                  unsigned int *flagsp )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int ret ;
  {
  {
  ar = ce_state->ar;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  spin_lock_bh(& ar_pci->ce_lock);
  ret = ath10k_ce_completed_recv_next_nolock(ce_state, per_transfer_contextp, bufferp,
                                             nbytesp, transfer_idp, flagsp);
  spin_unlock_bh(& ar_pci->ce_lock);
  }
  return (ret);
}
}
int ath10k_ce_revoke_recv_next(struct ath10k_ce_pipe *ce_state , void **per_transfer_contextp ,
                               u32 *bufferp )
{
  struct ath10k_ce_ring *dest_ring ;
  unsigned int nentries_mask ;
  unsigned int sw_index ;
  unsigned int write_index ;
  int ret ;
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ce_desc *base ;
  struct ce_desc *desc ;
  {
  dest_ring = ce_state->dest_ring;
  if ((unsigned long )dest_ring == (unsigned long )((struct ath10k_ce_ring *)0)) {
    return (-5);
  } else {
  }
  {
  ar = ce_state->ar;
  ar_pci = ath10k_pci_priv(ar);
  spin_lock_bh(& ar_pci->ce_lock);
  nentries_mask = dest_ring->nentries_mask;
  sw_index = dest_ring->sw_index;
  write_index = dest_ring->write_index;
  }
  if (write_index != sw_index) {
    base = (struct ce_desc *)dest_ring->base_addr_owner_space;
    desc = base + (unsigned long )sw_index;
    *bufferp = desc->addr;
    if ((unsigned long )per_transfer_contextp != (unsigned long )((void **)0)) {
      *per_transfer_contextp = *(dest_ring->per_transfer_context + (unsigned long )sw_index);
    } else {
    }
    *(dest_ring->per_transfer_context + (unsigned long )sw_index) = (void *)0;
    sw_index = (sw_index + 1U) & nentries_mask;
    dest_ring->sw_index = sw_index;
    ret = 0;
  } else {
    ret = -5;
  }
  {
  spin_unlock_bh(& ar_pci->ce_lock);
  }
  return (ret);
}
}
static int ath10k_ce_completed_send_next_nolock(struct ath10k_ce_pipe *ce_state ,
                                                void **per_transfer_contextp , u32 *bufferp ,
                                                unsigned int *nbytesp , unsigned int *transfer_idp )
{
  struct ath10k_ce_ring *src_ring ;
  u32 ctrl_addr ;
  struct ath10k *ar ;
  unsigned int nentries_mask ;
  unsigned int sw_index ;
  struct ce_desc *sdesc ;
  struct ce_desc *sbase ;
  unsigned int read_index ;
  int ret ;
  {
  src_ring = ce_state->src_ring;
  ctrl_addr = ce_state->ctrl_addr;
  ar = ce_state->ar;
  nentries_mask = src_ring->nentries_mask;
  sw_index = src_ring->sw_index;
  if (src_ring->hw_index == sw_index) {
    {
    ret = ath10k_pci_wake(ar);
    }
    if (ret != 0) {
      return (ret);
    } else {
    }
    {
    src_ring->hw_index = ath10k_ce_src_ring_read_index_get(ar, ctrl_addr);
    src_ring->hw_index = src_ring->hw_index & nentries_mask;
    ath10k_pci_sleep(ar);
    }
  } else {
  }
  read_index = src_ring->hw_index;
  if (read_index == sw_index || read_index == 4294967295U) {
    return (-5);
  } else {
  }
  sbase = src_ring->shadow_base;
  sdesc = sbase + (unsigned long )sw_index;
  *bufferp = sdesc->addr;
  *nbytesp = (unsigned int )sdesc->nbytes;
  *transfer_idp = (unsigned int )((int )sdesc->flags >> 3);
  if ((unsigned long )per_transfer_contextp != (unsigned long )((void **)0)) {
    *per_transfer_contextp = *(src_ring->per_transfer_context + (unsigned long )sw_index);
  } else {
  }
  *(src_ring->per_transfer_context + (unsigned long )sw_index) = (void *)0;
  sw_index = (sw_index + 1U) & nentries_mask;
  src_ring->sw_index = sw_index;
  return (0);
}
}
int ath10k_ce_cancel_send_next(struct ath10k_ce_pipe *ce_state , void **per_transfer_contextp ,
                               u32 *bufferp , unsigned int *nbytesp , unsigned int *transfer_idp )
{
  struct ath10k_ce_ring *src_ring ;
  unsigned int nentries_mask ;
  unsigned int sw_index ;
  unsigned int write_index ;
  int ret ;
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ce_desc *base ;
  struct ce_desc *desc ;
  {
  src_ring = ce_state->src_ring;
  if ((unsigned long )src_ring == (unsigned long )((struct ath10k_ce_ring *)0)) {
    return (-5);
  } else {
  }
  {
  ar = ce_state->ar;
  ar_pci = ath10k_pci_priv(ar);
  spin_lock_bh(& ar_pci->ce_lock);
  nentries_mask = src_ring->nentries_mask;
  sw_index = src_ring->sw_index;
  write_index = src_ring->write_index;
  }
  if (write_index != sw_index) {
    base = (struct ce_desc *)src_ring->base_addr_owner_space;
    desc = base + (unsigned long )sw_index;
    *bufferp = desc->addr;
    *nbytesp = (unsigned int )desc->nbytes;
    *transfer_idp = (unsigned int )((int )desc->flags >> 3);
    if ((unsigned long )per_transfer_contextp != (unsigned long )((void **)0)) {
      *per_transfer_contextp = *(src_ring->per_transfer_context + (unsigned long )sw_index);
    } else {
    }
    *(src_ring->per_transfer_context + (unsigned long )sw_index) = (void *)0;
    sw_index = (sw_index + 1U) & nentries_mask;
    src_ring->sw_index = sw_index;
    ret = 0;
  } else {
    ret = -5;
  }
  {
  spin_unlock_bh(& ar_pci->ce_lock);
  }
  return (ret);
}
}
int ath10k_ce_completed_send_next(struct ath10k_ce_pipe *ce_state , void **per_transfer_contextp ,
                                  u32 *bufferp , unsigned int *nbytesp , unsigned int *transfer_idp )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  int ret ;
  {
  {
  ar = ce_state->ar;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  spin_lock_bh(& ar_pci->ce_lock);
  ret = ath10k_ce_completed_send_next_nolock(ce_state, per_transfer_contextp, bufferp,
                                             nbytesp, transfer_idp);
  spin_unlock_bh(& ar_pci->ce_lock);
  }
  return (ret);
}
}
void ath10k_ce_per_engine_service(struct ath10k *ar , unsigned int ce_id )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct ath10k_ce_pipe *ce_state ;
  u32 ctrl_addr ;
  int ret ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ce_state = (struct ath10k_ce_pipe *)(& ar_pci->ce_states) + (unsigned long )ce_id;
  ctrl_addr = ce_state->ctrl_addr;
  ret = ath10k_pci_wake(ar);
  }
  if (ret != 0) {
    return;
  } else {
  }
  {
  spin_lock_bh(& ar_pci->ce_lock);
  ath10k_ce_engine_int_status_clear(ar, ctrl_addr, 1U);
  spin_unlock_bh(& ar_pci->ce_lock);
  }
  if ((unsigned long )ce_state->recv_cb != (unsigned long )((void (*)(struct ath10k_ce_pipe * ))0)) {
    {
    (*(ce_state->recv_cb))(ce_state);
    }
  } else {
  }
  if ((unsigned long )ce_state->send_cb != (unsigned long )((void (*)(struct ath10k_ce_pipe * ))0)) {
    {
    (*(ce_state->send_cb))(ce_state);
    }
  } else {
  }
  {
  spin_lock_bh(& ar_pci->ce_lock);
  ath10k_ce_engine_int_status_clear(ar, ctrl_addr, 30U);
  spin_unlock_bh(& ar_pci->ce_lock);
  ath10k_pci_sleep(ar);
  }
  return;
}
}
void ath10k_ce_per_engine_service_any(struct ath10k *ar )
{
  int ce_id ;
  int ret ;
  u32 intr_summary ;
  u32 tmp ;
  {
  {
  ret = ath10k_pci_wake(ar);
  }
  if (ret != 0) {
    return;
  } else {
  }
  {
  tmp = ath10k_pci_read32(ar, 356352U);
  intr_summary = (tmp & 65280U) >> 8;
  ce_id = 0;
  }
  goto ldv_51396;
  ldv_51395: ;
  if ((intr_summary & (u32 )(1 << ce_id)) != 0U) {
    intr_summary = intr_summary & (u32 )(~ (1 << ce_id));
  } else {
    goto ldv_51394;
  }
  {
  ath10k_ce_per_engine_service(ar, (unsigned int )ce_id);
  }
  ldv_51394:
  ce_id = ce_id + 1;
  ldv_51396: ;
  if (intr_summary != 0U && ce_id <= 7) {
    goto ldv_51395;
  } else {
  }
  {
  ath10k_pci_sleep(ar);
  }
  return;
}
}
static void ath10k_ce_per_engine_handler_adjust(struct ath10k_ce_pipe *ce_state ,
                                                int disable_copy_compl_intr )
{
  u32 ctrl_addr ;
  struct ath10k *ar ;
  int ret ;
  {
  {
  ctrl_addr = ce_state->ctrl_addr;
  ar = ce_state->ar;
  ret = ath10k_pci_wake(ar);
  }
  if (ret != 0) {
    return;
  } else {
  }
  if (disable_copy_compl_intr == 0 && ((unsigned long )ce_state->send_cb != (unsigned long )((void (*)(struct ath10k_ce_pipe * ))0) || (unsigned long )ce_state->recv_cb != (unsigned long )((void (*)(struct ath10k_ce_pipe * ))0))) {
    {
    ath10k_ce_copy_complete_inter_enable(ar, ctrl_addr);
    }
  } else {
    {
    ath10k_ce_copy_complete_intr_disable(ar, ctrl_addr);
    }
  }
  {
  ath10k_ce_watermark_intr_disable(ar, ctrl_addr);
  ath10k_pci_sleep(ar);
  }
  return;
}
}
int ath10k_ce_disable_interrupts(struct ath10k *ar )
{
  int ce_id ;
  int ret ;
  u32 ctrl_addr ;
  u32 tmp ;
  {
  {
  ret = ath10k_pci_wake(ar);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  ce_id = 0;
  goto ldv_51412;
  ldv_51411:
  {
  tmp = ath10k_ce_base_address((unsigned int )ce_id);
  ctrl_addr = tmp;
  ath10k_ce_copy_complete_intr_disable(ar, ctrl_addr);
  ath10k_ce_error_intr_disable(ar, ctrl_addr);
  ath10k_ce_watermark_intr_disable(ar, ctrl_addr);
  ce_id = ce_id + 1;
  }
  ldv_51412: ;
  if (ce_id <= 7) {
    goto ldv_51411;
  } else {
  }
  {
  ath10k_pci_sleep(ar);
  }
  return (0);
}
}
void ath10k_ce_send_cb_register(struct ath10k_ce_pipe *ce_state , void (*send_cb)(struct ath10k_ce_pipe * ) ,
                                int disable_interrupts )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  {
  {
  ar = ce_state->ar;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  spin_lock_bh(& ar_pci->ce_lock);
  ce_state->send_cb = send_cb;
  ath10k_ce_per_engine_handler_adjust(ce_state, disable_interrupts);
  spin_unlock_bh(& ar_pci->ce_lock);
  }
  return;
}
}
void ath10k_ce_recv_cb_register(struct ath10k_ce_pipe *ce_state , void (*recv_cb)(struct ath10k_ce_pipe * ) )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  {
  {
  ar = ce_state->ar;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  spin_lock_bh(& ar_pci->ce_lock);
  ce_state->recv_cb = recv_cb;
  ath10k_ce_per_engine_handler_adjust(ce_state, 0);
  spin_unlock_bh(& ar_pci->ce_lock);
  }
  return;
}
}
static int ath10k_ce_init_src_ring(struct ath10k *ar , unsigned int ce_id , struct ath10k_ce_pipe *ce_state ,
                                   struct ce_attr const *attr )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct ath10k_ce_ring *src_ring ;
  unsigned int nentries ;
  unsigned int ce_nbytes ;
  u32 ctrl_addr ;
  u32 tmp___0 ;
  dma_addr_t base_addr ;
  char *ptr ;
  unsigned long tmp___69 ;
  int __ret_warn_on ;
  long tmp___70 ;
  void *tmp___71 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  nentries = attr->src_nentries;
  tmp___0 = ath10k_ce_base_address(ce_id);
  ctrl_addr = tmp___0;
  tmp___69 = __roundup_pow_of_two((unsigned long )nentries);
  nentries = (unsigned int )tmp___69;
  }
  if ((unsigned long )ce_state->src_ring != (unsigned long )((struct ath10k_ce_ring *)0)) {
    {
    __ret_warn_on = (ce_state->src_ring)->nentries != nentries;
    tmp___70 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___70 != 0L) {
      {
      warn_slowpath_null("drivers/net/wireless/ath/ath10k/ce.c", 857);
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    return (0);
  } else {
  }
  {
  ce_nbytes = (unsigned int )((unsigned long )nentries + 10UL) * 8U;
  tmp___71 = kzalloc((size_t )ce_nbytes, 208U);
  ptr = (char *)tmp___71;
  }
  if ((unsigned long )ptr == (unsigned long )((char *)0)) {
    return (-12);
  } else {
  }
  {
  ce_state->src_ring = (struct ath10k_ce_ring *)ptr;
  src_ring = ce_state->src_ring;
  ptr = ptr + 80UL;
  src_ring->nentries = nentries;
  src_ring->nentries_mask = nentries - 1U;
  src_ring->sw_index = ath10k_ce_src_ring_read_index_get(ar, ctrl_addr);
  src_ring->sw_index = src_ring->sw_index & src_ring->nentries_mask;
  src_ring->hw_index = src_ring->sw_index;
  src_ring->write_index = ath10k_ce_src_ring_write_index_get(ar, ctrl_addr);
  src_ring->write_index = src_ring->write_index & src_ring->nentries_mask;
  src_ring->per_transfer_context = (void **)ptr;
  src_ring->base_addr_owner_space_unaligned = pci_alloc_consistent(ar_pci->pdev, ((unsigned long )nentries + 1UL) * 8UL,
                                                                   & base_addr);
  }
  if ((unsigned long )src_ring->base_addr_owner_space_unaligned == (unsigned long )((void *)0)) {
    {
    kfree((void const *)ce_state->src_ring);
    ce_state->src_ring = (struct ath10k_ce_ring *)0;
    }
    return (-12);
  } else {
  }
  {
  src_ring->base_addr_ce_space_unaligned = (u32 )base_addr;
  src_ring->base_addr_owner_space = (void *)(((unsigned long )src_ring->base_addr_owner_space_unaligned + 7UL) & 0xfffffffffffffff8UL);
  src_ring->base_addr_ce_space = (src_ring->base_addr_ce_space_unaligned + 7U) & 4294967288U;
  src_ring->shadow_base_unaligned = kmalloc(((unsigned long )nentries + 1UL) * 8UL,
                                            208U);
  }
  if ((unsigned long )src_ring->shadow_base_unaligned == (unsigned long )((void *)0)) {
    {
    pci_free_consistent(ar_pci->pdev, ((unsigned long )nentries + 1UL) * 8UL, src_ring->base_addr_owner_space,
                        (dma_addr_t )src_ring->base_addr_ce_space);
    kfree((void const *)ce_state->src_ring);
    ce_state->src_ring = (struct ath10k_ce_ring *)0;
    }
    return (-12);
  } else {
  }
  {
  src_ring->shadow_base = (struct ce_desc *)(((unsigned long )src_ring->shadow_base_unaligned + 7UL) & 0xfffffffffffffff8UL);
  ath10k_ce_src_ring_base_addr_set(ar, ctrl_addr, src_ring->base_addr_ce_space);
  ath10k_ce_src_ring_size_set(ar, ctrl_addr, nentries);
  ath10k_ce_src_ring_dmax_set(ar, ctrl_addr, attr->src_sz_max);
  ath10k_ce_src_ring_byte_swap_set(ar, ctrl_addr, 0U);
  ath10k_ce_src_ring_lowmark_set(ar, ctrl_addr, 0U);
  ath10k_ce_src_ring_highmark_set(ar, ctrl_addr, nentries);
  ath10k_dbg(32, "boot ce src ring id %d entries %d base_addr %p\n", ce_id, nentries,
             src_ring->base_addr_owner_space);
  }
  return (0);
}
}
static int ath10k_ce_init_dest_ring(struct ath10k *ar , unsigned int ce_id , struct ath10k_ce_pipe *ce_state ,
                                    struct ce_attr const *attr )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct ath10k_ce_ring *dest_ring ;
  unsigned int nentries ;
  unsigned int ce_nbytes ;
  u32 ctrl_addr ;
  u32 tmp___0 ;
  dma_addr_t base_addr ;
  char *ptr ;
  unsigned long tmp___69 ;
  int __ret_warn_on ;
  long tmp___70 ;
  void *tmp___71 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  nentries = attr->dest_nentries;
  tmp___0 = ath10k_ce_base_address(ce_id);
  ctrl_addr = tmp___0;
  tmp___69 = __roundup_pow_of_two((unsigned long )nentries);
  nentries = (unsigned int )tmp___69;
  }
  if ((unsigned long )ce_state->dest_ring != (unsigned long )((struct ath10k_ce_ring *)0)) {
    {
    __ret_warn_on = (ce_state->dest_ring)->nentries != nentries;
    tmp___70 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___70 != 0L) {
      {
      warn_slowpath_null("drivers/net/wireless/ath/ath10k/ce.c", 960);
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    return (0);
  } else {
  }
  {
  ce_nbytes = (unsigned int )((unsigned long )nentries + 10UL) * 8U;
  tmp___71 = kzalloc((size_t )ce_nbytes, 208U);
  ptr = (char *)tmp___71;
  }
  if ((unsigned long )ptr == (unsigned long )((char *)0)) {
    return (-12);
  } else {
  }
  {
  ce_state->dest_ring = (struct ath10k_ce_ring *)ptr;
  dest_ring = ce_state->dest_ring;
  ptr = ptr + 80UL;
  dest_ring->nentries = nentries;
  dest_ring->nentries_mask = nentries - 1U;
  dest_ring->sw_index = ath10k_ce_dest_ring_read_index_get(ar, ctrl_addr);
  dest_ring->sw_index = dest_ring->sw_index & dest_ring->nentries_mask;
  dest_ring->write_index = ath10k_ce_dest_ring_write_index_get(ar, ctrl_addr);
  dest_ring->write_index = dest_ring->write_index & dest_ring->nentries_mask;
  dest_ring->per_transfer_context = (void **)ptr;
  dest_ring->base_addr_owner_space_unaligned = pci_alloc_consistent(ar_pci->pdev,
                                                                    ((unsigned long )nentries + 1UL) * 8UL,
                                                                    & base_addr);
  }
  if ((unsigned long )dest_ring->base_addr_owner_space_unaligned == (unsigned long )((void *)0)) {
    {
    kfree((void const *)ce_state->dest_ring);
    ce_state->dest_ring = (struct ath10k_ce_ring *)0;
    }
    return (-12);
  } else {
  }
  {
  dest_ring->base_addr_ce_space_unaligned = (u32 )base_addr;
  memset(dest_ring->base_addr_owner_space_unaligned, 0, ((unsigned long )nentries + 1UL) * 8UL);
  dest_ring->base_addr_owner_space = (void *)(((unsigned long )dest_ring->base_addr_owner_space_unaligned + 7UL) & 0xfffffffffffffff8UL);
  dest_ring->base_addr_ce_space = (dest_ring->base_addr_ce_space_unaligned + 7U) & 4294967288U;
  ath10k_ce_dest_ring_base_addr_set(ar, ctrl_addr, dest_ring->base_addr_ce_space);
  ath10k_ce_dest_ring_size_set(ar, ctrl_addr, nentries);
  ath10k_ce_dest_ring_byte_swap_set(ar, ctrl_addr, 0U);
  ath10k_ce_dest_ring_lowmark_set(ar, ctrl_addr, 0U);
  ath10k_ce_dest_ring_highmark_set(ar, ctrl_addr, nentries);
  ath10k_dbg(32, "boot ce dest ring id %d entries %d base_addr %p\n", ce_id, nentries,
             dest_ring->base_addr_owner_space);
  }
  return (0);
}
}
static struct ath10k_ce_pipe *ath10k_ce_init_state(struct ath10k *ar , unsigned int ce_id ,
                                                   struct ce_attr const *attr )
{
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  struct ath10k_ce_pipe *ce_state ;
  u32 ctrl_addr ;
  u32 tmp___0 ;
  {
  {
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  ce_state = (struct ath10k_ce_pipe *)(& ar_pci->ce_states) + (unsigned long )ce_id;
  tmp___0 = ath10k_ce_base_address(ce_id);
  ctrl_addr = tmp___0;
  spin_lock_bh(& ar_pci->ce_lock);
  ce_state->ar = ar;
  ce_state->id = ce_id;
  ce_state->ctrl_addr = ctrl_addr;
  ce_state->attr_flags = attr->flags;
  ce_state->src_sz_max = attr->src_sz_max;
  spin_unlock_bh(& ar_pci->ce_lock);
  }
  return (ce_state);
}
}
extern void __compiletime_assert_1071(void) ;
extern void __compiletime_assert_1073(void) ;
struct ath10k_ce_pipe *ath10k_ce_init(struct ath10k *ar , unsigned int ce_id , struct ce_attr const *attr )
{
  struct ath10k_ce_pipe *ce_state ;
  int ret ;
  bool __cond ;
  bool __cond___0 ;
  {
  __cond = 0;
  if ((int )__cond) {
    {
    __compiletime_assert_1071();
    }
  } else {
  }
  __cond___0 = 0;
  if ((int )__cond___0) {
    {
    __compiletime_assert_1073();
    }
  } else {
  }
  {
  ret = ath10k_pci_wake(ar);
  }
  if (ret != 0) {
    return ((struct ath10k_ce_pipe *)0);
  } else {
  }
  {
  ce_state = ath10k_ce_init_state(ar, ce_id, attr);
  }
  if ((unsigned long )ce_state == (unsigned long )((struct ath10k_ce_pipe *)0)) {
    {
    ath10k_err("Failed to initialize CE state for ID: %d\n", ce_id);
    }
    goto out;
  } else {
  }
  if ((unsigned int )attr->src_nentries != 0U) {
    {
    ret = ath10k_ce_init_src_ring(ar, ce_id, ce_state, attr);
    }
    if (ret != 0) {
      {
      ath10k_err("Failed to initialize CE src ring for ID: %d (%d)\n", ce_id, ret);
      ath10k_ce_deinit(ce_state);
      ce_state = (struct ath10k_ce_pipe *)0;
      }
      goto out;
    } else {
    }
  } else {
  }
  if ((unsigned int )attr->dest_nentries != 0U) {
    {
    ret = ath10k_ce_init_dest_ring(ar, ce_id, ce_state, attr);
    }
    if (ret != 0) {
      {
      ath10k_err("Failed to initialize CE dest ring for ID: %d (%d)\n", ce_id, ret);
      ath10k_ce_deinit(ce_state);
      ce_state = (struct ath10k_ce_pipe *)0;
      }
      goto out;
    } else {
    }
  } else {
  }
  out:
  {
  ath10k_pci_sleep(ar);
  }
  return (ce_state);
}
}
void ath10k_ce_deinit(struct ath10k_ce_pipe *ce_state )
{
  struct ath10k *ar ;
  struct ath10k_pci *ar_pci ;
  struct ath10k_pci *tmp ;
  {
  {
  ar = ce_state->ar;
  tmp = ath10k_pci_priv(ar);
  ar_pci = tmp;
  }
  if ((unsigned long )ce_state->src_ring != (unsigned long )((struct ath10k_ce_ring *)0)) {
    {
    kfree((void const *)(ce_state->src_ring)->shadow_base_unaligned);
    pci_free_consistent(ar_pci->pdev, ((unsigned long )(ce_state->src_ring)->nentries + 1UL) * 8UL,
                        (ce_state->src_ring)->base_addr_owner_space, (dma_addr_t )(ce_state->src_ring)->base_addr_ce_space);
    kfree((void const *)ce_state->src_ring);
    }
  } else {
  }
  if ((unsigned long )ce_state->dest_ring != (unsigned long )((struct ath10k_ce_ring *)0)) {
    {
    pci_free_consistent(ar_pci->pdev, ((unsigned long )(ce_state->dest_ring)->nentries + 1UL) * 8UL,
                        (ce_state->dest_ring)->base_addr_owner_space, (dma_addr_t )(ce_state->dest_ring)->base_addr_ce_space);
    kfree((void const *)ce_state->dest_ring);
    }
  } else {
  }
  ce_state->src_ring = (struct ath10k_ce_ring *)0;
  ce_state->dest_ring = (struct ath10k_ce_ring *)0;
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
void ldv_assert_linux_drivers_clk1__more_at_exit(int expr ) ;
int ldv_counter = 0;
void ldv_clk_disable(struct clk *clk )
{
  {
  ldv_counter = 0;
  return;
}
}
int ldv_clk_enable(void)
{
  int retval ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  retval = tmp;
  }
  if (retval == 0) {
    ldv_counter = 1;
  } else {
  }
  return (retval);
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_drivers_clk1__more_at_exit(ldv_counter == 0);
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_drivers_clk1__more_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void __compiletime_assert_1071() {
  return;
}
void __compiletime_assert_1073() {
  return;
}
void __compiletime_assert_69() {
  return;
}
void __compiletime_assert_858() {
  return;
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void *external_alloc(void);
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return (struct sk_buff *)external_alloc();
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
void __tasklet_schedule(struct tasklet_struct *arg0) {
  return;
}
void __udelay(unsigned long arg0) {
  return;
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
void *external_alloc(void);
struct ath10k *ath10k_core_create(void *arg0, struct device *arg1, const struct ath10k_hif_ops *arg2) {
  return (struct ath10k *)external_alloc();
}
void ath10k_core_destroy(struct ath10k *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ath10k_core_register(struct ath10k *arg0, u32 arg1) {
  return __VERIFIER_nondet_int();
}
void ath10k_core_unregister(struct ath10k *arg0) {
  return;
}
void ath10k_dbg(enum ath10k_debug_mask arg0, const char *arg1, ...) {
  return;
}
void ath10k_dbg_dump(enum ath10k_debug_mask arg0, const char *arg1, const char *arg2, const void *arg3, size_t arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int ath10k_err(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ath10k_info(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ath10k_warn(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void complete(struct completion *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool completion_done(struct completion *arg0) {
  return __VERIFIER_nondet_bool();
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
void debug_dma_sync_single_for_device(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
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
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void iowrite32(u32 arg0, void *arg1) {
  return;
}
void *external_alloc(void);
void *kmemdup(const void *arg0, size_t arg1, gfp_t arg2) {
  return (void *)external_alloc();
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
void ldv_switch_to_interrupt_context() {
  return;
}
void ldv_switch_to_process_context() {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_assign_resource(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_clear_master(struct pci_dev *arg0) {
  return;
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
int pci_enable_msi_block(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *pci_iomap(struct pci_dev *arg0, int arg1, unsigned long arg2) {
  return (void *)external_alloc();
}
void pci_iounmap(struct pci_dev *arg0, void *arg1) {
  return;
}
void pci_release_region(struct pci_dev *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_region(struct pci_dev *arg0, int arg1, const char *arg2) {
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
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void skb_trim(struct sk_buff *arg0, unsigned int arg1) {
  return;
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
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
