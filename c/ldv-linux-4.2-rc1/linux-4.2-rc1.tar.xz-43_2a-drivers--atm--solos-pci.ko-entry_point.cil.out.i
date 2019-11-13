extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef short __s16;
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
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u32 __wsum;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
typedef __u16 uint16_t;
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
union __anonunion____missing_field_name_8 {
   struct __anonstruct____missing_field_name_9 __annonCompField4 ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_8 __annonCompField6 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
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
struct qspinlock {
   atomic_t val ;
};
typedef struct qspinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
struct net_device;
struct file_operations;
struct completion;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_16 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_17 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_18 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_15 {
   struct __anonstruct_futex_16 futex ;
   struct __anonstruct_nanosleep_17 nanosleep ;
   struct __anonstruct_poll_18 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_15 __annonCompField7 ;
};
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
union __anonunion____missing_field_name_19 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_19 __annonCompField8 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct fregs_state {
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
struct __anonstruct____missing_field_name_29 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_30 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_28 {
   struct __anonstruct____missing_field_name_29 __annonCompField12 ;
   struct __anonstruct____missing_field_name_30 __annonCompField13 ;
};
union __anonunion____missing_field_name_31 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct fxregs_state {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_28 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_31 __annonCompField15 ;
};
struct swregs_state {
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
struct xstate_header {
   u64 xfeatures ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xregs_state {
   struct fxregs_state i387 ;
   struct xstate_header header ;
   u8 __reserved[464U] ;
};
union fpregs_state {
   struct fregs_state fsave ;
   struct fxregs_state fxsave ;
   struct swregs_state soft ;
   struct xregs_state xsave ;
};
struct fpu {
   union fpregs_state state ;
   unsigned int last_cpu ;
   unsigned char fpstate_active ;
   unsigned char fpregs_active ;
   unsigned char counter ;
};
struct seq_operations;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct fpu fpu ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
typedef atomic64_t atomic_long_t;
struct lockdep_map;
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
   unsigned int pin_count ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_35 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_34 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_35 __annonCompField17 ;
};
struct spinlock {
   union __anonunion____missing_field_name_34 __annonCompField18 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_36 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_36 rwlock_t;
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
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_46 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_46 kuid_t;
struct __anonstruct_kgid_t_47 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_47 kgid_t;
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
struct vm_area_struct;
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
struct __anonstruct_nodemask_t_48 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_48 nodemask_t;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct notifier_block;
struct timer_list {
   struct hlist_node entry ;
   unsigned long expires ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   u32 flags ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct ctl_table;
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
struct __anonstruct____missing_field_name_50 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_49 {
   struct __anonstruct____missing_field_name_50 __annonCompField19 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_49 __annonCompField20 ;
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
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct pci_dev;
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
struct wake_irq;
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
   struct wake_irq *wakeirq ;
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
   int (*activate)(struct device * ) ;
   void (*sync)(struct device * ) ;
   void (*dismiss)(struct device * ) ;
};
struct pci_bus;
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
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct cred;
struct inode;
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
struct __anonstruct____missing_field_name_148 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_149 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_147 {
   struct __anonstruct____missing_field_name_148 __annonCompField33 ;
   struct __anonstruct____missing_field_name_149 __annonCompField34 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_147 __annonCompField35 ;
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
union __anonunion____missing_field_name_150 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_152 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_156 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_155 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_156 __annonCompField38 ;
   int units ;
};
struct __anonstruct____missing_field_name_154 {
   union __anonunion____missing_field_name_155 __annonCompField39 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_153 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_154 __annonCompField40 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_151 {
   union __anonunion____missing_field_name_152 __annonCompField37 ;
   union __anonunion____missing_field_name_153 __annonCompField41 ;
};
struct __anonstruct____missing_field_name_158 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_159 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_157 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_158 __annonCompField43 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_159 __annonCompField44 ;
   pgtable_t pmd_huge_pte ;
};
struct kmem_cache;
union __anonunion____missing_field_name_160 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_150 __annonCompField36 ;
   struct __anonstruct____missing_field_name_151 __annonCompField42 ;
   union __anonunion____missing_field_name_157 __annonCompField45 ;
   union __anonunion____missing_field_name_160 __annonCompField46 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_161 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
struct anon_vma;
struct vm_operations_struct;
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
   struct __anonstruct_shared_161 shared ;
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
union __anonunion____missing_field_name_166 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_166 __annonCompField47 ;
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
struct dentry;
struct iattr;
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
union __anonunion____missing_field_name_171 {
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
   union __anonunion____missing_field_name_171 __annonCompField48 ;
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
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_172 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct module *mod ;
   struct kernel_param_ops const *ops ;
   u16 const perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_172 __annonCompField49 ;
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
struct latch_tree_node {
   struct rb_node node[2U] ;
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
struct mod_tree_node {
   struct module *mod ;
   struct latch_tree_node node ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct trace_event_call;
struct trace_enum_map;
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
   struct mutex param_lock ;
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
   bool async_probe_requested ;
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
   struct mod_tree_node mtn_core ;
   struct mod_tree_node mtn_init ;
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
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct trace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct trace_enum_map **trace_enums ;
   unsigned int num_trace_enums ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   bool klp_alive ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
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
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_180 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_180 sigset_t;
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
struct __anonstruct__kill_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_183 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_184 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_185 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_187 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_186 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_187 _addr_bnd ;
};
struct __anonstruct__sigpoll_188 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_189 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_181 {
   int _pad[28U] ;
   struct __anonstruct__kill_182 _kill ;
   struct __anonstruct__timer_183 _timer ;
   struct __anonstruct__rt_184 _rt ;
   struct __anonstruct__sigchld_185 _sigchld ;
   struct __anonstruct__sigfault_186 _sigfault ;
   struct __anonstruct__sigpoll_188 _sigpoll ;
   struct __anonstruct__sigsys_189 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_181 _sifields ;
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
   ktime_t (*get_time)(void) ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   seqcount_t seq ;
   struct hrtimer *running ;
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set_seq ;
   bool migration_enabled ;
   bool nohz_active ;
   unsigned char in_hrtirq : 1 ;
   unsigned char hres_active : 1 ;
   unsigned char hang_detected : 1 ;
   ktime_t expires_next ;
   struct hrtimer *next_timer ;
   unsigned int nr_events ;
   unsigned int nr_retries ;
   unsigned int nr_hangs ;
   unsigned int max_hang_time ;
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
union __anonunion____missing_field_name_196 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_197 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_199 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_198 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_199 __annonCompField52 ;
};
union __anonunion_type_data_200 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_202 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_201 {
   union __anonunion_payload_202 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_196 __annonCompField50 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_197 __annonCompField51 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_198 __annonCompField53 ;
   union __anonunion_type_data_200 type_data ;
   union __anonunion____missing_field_name_201 __annonCompField54 ;
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
struct cgroup;
struct cgroup_root;
struct cgroup_subsys;
struct cgroup_taskset;
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
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *procs_kn ;
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
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct nameidata;
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
struct task_cputime_atomic {
   atomic64_t utime ;
   atomic64_t stime ;
   atomic64_t sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime_atomic cputime_atomic ;
   int running ;
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
struct wake_q_node {
   struct wake_q_node *next ;
};
struct io_context;
struct pipe_inode_info;
struct uts_namespace;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
   unsigned long utilization_avg_contrib ;
   u32 runnable_avg_sum ;
   u32 avg_period ;
   u32 running_avg_sum ;
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
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned long jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char sched_migrated : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
   unsigned char brk_randomized : 1 ;
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
   struct nameidata *nameidata ;
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
   struct wake_q_node wake_q ;
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
   unsigned long numa_faults_locality[3U] ;
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
   int pagefault_disabled ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct device_attribute;
struct atm_vcc;
struct proc_dir_entry;
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
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
struct device_node;
struct fwnode_handle;
struct iommu_ops;
struct iommu_group;
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
enum probe_type {
    PROBE_DEFAULT_STRATEGY = 0,
    PROBE_PREFER_ASYNCHRONOUS = 1,
    PROBE_FORCE_SYNCHRONOUS = 2
} ;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   enum probe_type probe_type ;
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
   struct fwnode_handle *fwnode ;
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
   struct wake_irq *wakeirq ;
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
union __anonunion____missing_field_name_228 {
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
   unsigned char has_secondary_link : 1 ;
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
   union __anonunion____missing_field_name_228 __annonCompField65 ;
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
struct bdi_writeback;
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
   int (*pfn_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   struct page *(*find_special_page)(struct vm_area_struct * , unsigned long ) ;
};
struct kvec;
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
struct __anonstruct_itu_231 {
   unsigned char mode ;
   unsigned char window ;
};
union __anonunion_l2_230 {
   struct __anonstruct_itu_231 itu ;
   unsigned char user ;
};
struct __anonstruct_itu_233 {
   unsigned char mode ;
   unsigned char def_size ;
   unsigned char window ;
};
struct __anonstruct_h310_234 {
   unsigned char term_type ;
   unsigned char fw_mpx_cap ;
   unsigned char bw_mpx_cap ;
};
struct __anonstruct_tr9577_235 {
   unsigned char ipi ;
   unsigned char snap[5U] ;
};
union __anonunion_l3_232 {
   struct __anonstruct_itu_233 itu ;
   unsigned char user ;
   struct __anonstruct_h310_234 h310 ;
   struct __anonstruct_tr9577_235 tr9577 ;
};
struct atm_blli {
   unsigned char l2_proto ;
   union __anonunion_l2_230 l2 ;
   unsigned char l3_proto ;
   union __anonunion_l3_232 l3 ;
};
struct atm_bhli {
   unsigned char hl_type ;
   unsigned char hl_length ;
   unsigned char hl_info[8U] ;
};
struct atm_sap {
   struct atm_bhli bhli ;
   struct atm_blli blli[3U] ;
};
struct atm_trafprm {
   unsigned char traffic_class ;
   int max_pcr ;
   int pcr ;
   int min_pcr ;
   int max_cdv ;
   int max_sdu ;
   unsigned int icr ;
   unsigned int tbe ;
   unsigned int frtt : 24 ;
   unsigned char rif : 4 ;
   unsigned char rdf : 4 ;
   unsigned char nrm_pres : 1 ;
   unsigned char trm_pres : 1 ;
   unsigned char adtf_pres : 1 ;
   unsigned char cdf_pres : 1 ;
   unsigned char nrm : 3 ;
   unsigned char trm : 3 ;
   unsigned short adtf : 10 ;
   unsigned char cdf : 3 ;
   unsigned short spare : 9 ;
};
struct atm_qos {
   struct atm_trafprm txtp ;
   struct atm_trafprm rxtp ;
   unsigned char aal ;
};
struct __anonstruct_sas_addr_237 {
   unsigned char prv[20U] ;
   char pub[13U] ;
   char lij_type ;
   __u32 lij_id ;
};
struct sockaddr_atmsvc {
   unsigned short sas_family ;
   struct __anonstruct_sas_addr_237 sas_addr ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_238 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_238 __annonCompField66 ;
   unsigned long nr_segs ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct kiocb;
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iov_iter msg_iter ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
   struct kiocb *msg_iocb ;
};
struct __anonstruct_sync_serial_settings_239 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_239 sync_serial_settings;
struct __anonstruct_te1_settings_240 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_240 te1_settings;
struct __anonstruct_raw_hdlc_proto_241 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_241 raw_hdlc_proto;
struct __anonstruct_fr_proto_242 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_242 fr_proto;
struct __anonstruct_fr_proto_pvc_243 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_243 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_244 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_244 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_245 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_245 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_246 {
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
   union __anonunion_ifs_ifsu_246 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_247 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_248 {
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
   union __anonunion_ifr_ifrn_247 ifr_ifrn ;
   union __anonunion_ifr_ifru_248 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_253 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_252 {
   struct __anonstruct____missing_field_name_253 __annonCompField67 ;
};
struct lockref {
   union __anonunion____missing_field_name_252 __annonCompField68 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_255 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_254 {
   struct __anonstruct____missing_field_name_255 __annonCompField69 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_254 __annonCompField70 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_256 {
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
   union __anonunion_d_u_256 d_u ;
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
   struct inode *(*d_select_inode)(struct dentry * , unsigned int ) ;
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
struct __anonstruct____missing_field_name_260 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_259 {
   struct __anonstruct____missing_field_name_260 __annonCompField71 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_259 __annonCompField72 ;
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
struct block_device;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
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
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_264 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_264 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_265 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_265 __annonCompField74 ;
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
   int (*get_projid)(struct inode * , kprojid_t * ) ;
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
struct qc_type_state {
   unsigned int flags ;
   unsigned int spc_timelimit ;
   unsigned int ino_timelimit ;
   unsigned int rt_spc_timelimit ;
   unsigned int spc_warnlimit ;
   unsigned int ino_warnlimit ;
   unsigned int rt_spc_warnlimit ;
   unsigned long long ino ;
   blkcnt_t blocks ;
   blkcnt_t nextents ;
};
struct qc_state {
   unsigned int s_incoredqs ;
   struct qc_type_state s_state[3U] ;
};
struct qc_info {
   int i_fieldmask ;
   unsigned int i_flags ;
   unsigned int i_spc_timelimit ;
   unsigned int i_ino_timelimit ;
   unsigned int i_rt_spc_timelimit ;
   unsigned int i_spc_warnlimit ;
   unsigned int i_ino_warnlimit ;
   unsigned int i_rt_spc_warnlimit ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*set_info)(struct super_block * , int , struct qc_info * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_state)(struct super_block * , struct qc_state * ) ;
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
   struct inode *files[3U] ;
   struct mem_dqinfo info[3U] ;
   struct quota_format_ops const *ops[3U] ;
};
struct kiocb {
   struct file *ki_filp ;
   loff_t ki_pos ;
   void (*ki_complete)(struct kiocb * , long , long ) ;
   void *private ;
   int ki_flags ;
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
   ssize_t (*direct_IO)(struct kiocb * , struct iov_iter * , loff_t ) ;
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
union __anonunion____missing_field_name_268 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_269 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_270 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
   char *i_link ;
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
   union __anonunion____missing_field_name_268 __annonCompField75 ;
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
   unsigned long dirtied_time_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct bdi_writeback *i_wb ;
   int i_wb_frn_winner ;
   u16 i_wb_frn_avg_time ;
   u16 i_wb_frn_history ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_269 __annonCompField76 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_270 __annonCompField77 ;
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
union __anonunion_f_u_271 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_271 f_u ;
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
   fl_owner_t (*lm_get_owner)(fl_owner_t ) ;
   void (*lm_put_owner)(fl_owner_t ) ;
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
struct __anonstruct_afs_273 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_272 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_273 afs ;
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
   union __anonunion_fl_u_272 fl_u ;
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
   unsigned long s_iflags ;
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
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*mremap)(struct file * , struct vm_area_struct * ) ;
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
   char const *(*follow_link)(struct dentry * , void ** ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct inode * , void * ) ;
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
enum ldv_26065 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_26065 socket_state;
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
   int (*sendmsg)(struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   int (*set_peek_off)(struct sock * , int ) ;
};
struct in6_addr;
struct sk_buff;
typedef u64 netdev_features_t;
union __anonunion_in6_u_288 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_288 in6_u ;
};
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct pipe_buf_operations;
struct pipe_buffer {
   struct page *page ;
   unsigned int offset ;
   unsigned int len ;
   struct pipe_buf_operations const *ops ;
   unsigned int flags ;
   unsigned long private ;
};
struct pipe_inode_info {
   struct mutex mutex ;
   wait_queue_head_t wait ;
   unsigned int nrbufs ;
   unsigned int curbuf ;
   unsigned int buffers ;
   unsigned int readers ;
   unsigned int writers ;
   unsigned int files ;
   unsigned int waiting_writers ;
   unsigned int r_counter ;
   unsigned int w_counter ;
   struct page *tmp_page ;
   struct fasync_struct *fasync_readers ;
   struct fasync_struct *fasync_writers ;
   struct pipe_buffer *bufs ;
};
struct pipe_buf_operations {
   int can_merge ;
   int (*confirm)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*release)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   int (*steal)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*get)(struct pipe_inode_info * , struct pipe_buffer * ) ;
};
struct napi_struct;
struct nf_conntrack {
   atomic_t use ;
};
union __anonunion____missing_field_name_293 {
   struct net_device *physoutdev ;
   char neigh_header[8U] ;
};
union __anonunion____missing_field_name_294 {
   __be32 ipv4_daddr ;
   struct in6_addr ipv6_daddr ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned char orig_proto ;
   bool pkt_otherhost ;
   __u16 frag_max_size ;
   unsigned int mask ;
   struct net_device *physindev ;
   union __anonunion____missing_field_name_293 __annonCompField81 ;
   union __anonunion____missing_field_name_294 __annonCompField82 ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_295 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_295 page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
};
struct skb_shared_info {
   unsigned char nr_frags ;
   __u8 tx_flags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   u32 tskey ;
   __be32 ip6_frag_id ;
   atomic_t dataref ;
   void *destructor_arg ;
   skb_frag_t frags[17U] ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_297 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_296 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_297 __annonCompField83 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_296 __annonCompField84 ;
};
union __anonunion____missing_field_name_300 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_299 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_300 __annonCompField85 ;
};
union __anonunion____missing_field_name_298 {
   struct __anonstruct____missing_field_name_299 __annonCompField86 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_302 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_301 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_302 __annonCompField88 ;
};
union __anonunion____missing_field_name_303 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_304 {
   __u32 mark ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_305 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_298 __annonCompField87 ;
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
   union __anonunion____missing_field_name_301 __annonCompField89 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_303 __annonCompField90 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_304 __annonCompField91 ;
   union __anonunion____missing_field_name_305 __annonCompField92 ;
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
struct rtable;
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
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
   unsigned long mibs[115U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
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
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
   bool warned ;
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
   bool fib_offload_disabled ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct sock *mc_autojoin_sk ;
   struct inet_peer_base *peers ;
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
   int sysctl_tcp_ecn_fallback ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_ip_nonlocal_bind ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   int sysctl_tcp_mtu_probing ;
   int sysctl_tcp_base_mss ;
   int sysctl_tcp_probe_threshold ;
   u32 sysctl_tcp_probe_interval ;
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
   int idgen_retries ;
   int idgen_delay ;
   int flowlabel_state_ranges ;
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
   struct sock *mc_autojoin_sk ;
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
   bool clusterip_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
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
   struct nft_af_info *netdev ;
   unsigned int base_seq ;
   u8 gencursor ;
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
struct mpls_route;
struct netns_mpls {
   size_t platform_labels ;
   struct mpls_route **platform_label ;
   struct ctl_table_header *ctl ;
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
   atomic64_t cookie_gen ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   spinlock_t nsid_lock ;
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
   struct netns_mpls mpls ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct __anonstruct_possible_net_t_315 {
   struct net *net ;
};
typedef struct __anonstruct_possible_net_t_315 possible_net_t;
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2,
    FWNODE_PDATA = 3
} ;
struct fwnode_handle {
   enum fwnode_type type ;
   struct fwnode_handle *secondary ;
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
enum ldv_28660 {
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
typedef enum ldv_28660 phy_interface_t;
enum ldv_28714 {
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
   enum ldv_28714 state ;
   struct device dev ;
   struct phy_device *phy_map[32U] ;
   u32 phy_mask ;
   u32 phy_ignore_ta_mask ;
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
   struct net_device *of_netdev ;
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
   enum dsa_tag_protocol tag_protocol ;
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
   int (*port_join_bridge)(struct dsa_switch * , int , u32 ) ;
   int (*port_leave_bridge)(struct dsa_switch * , int , u32 ) ;
   int (*port_stp_update)(struct dsa_switch * , int , u8 ) ;
   int (*fdb_add)(struct dsa_switch * , int , unsigned char const * , u16 ) ;
   int (*fdb_del)(struct dsa_switch * , int , unsigned char const * , u16 ) ;
   int (*fdb_getnext)(struct dsa_switch * , int , unsigned char * , bool * ) ;
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
struct ieee_qcn {
   __u8 rpg_enable[8U] ;
   __u32 rppp_max_rps[8U] ;
   __u32 rpg_time_reset[8U] ;
   __u32 rpg_byte_reset[8U] ;
   __u32 rpg_threshold[8U] ;
   __u32 rpg_max_rate[8U] ;
   __u32 rpg_ai_rate[8U] ;
   __u32 rpg_hai_rate[8U] ;
   __u32 rpg_gd[8U] ;
   __u32 rpg_min_dec_fac[8U] ;
   __u32 rpg_min_rate[8U] ;
   __u32 cndd_state_machine[8U] ;
};
struct ieee_qcn_stats {
   __u64 rppp_rp_centiseconds[8U] ;
   __u32 rppp_created_rps[8U] ;
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
   int (*ieee_getqcn)(struct net_device * , struct ieee_qcn * ) ;
   int (*ieee_setqcn)(struct net_device * , struct ieee_qcn * ) ;
   int (*ieee_getqcnstats)(struct net_device * , struct ieee_qcn_stats * ) ;
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
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct xfrm_policy;
struct xfrm_state;
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
struct ifla_vf_stats {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 broadcast ;
   __u64 multicast ;
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
   __u32 rss_query_en ;
};
struct netpoll_info;
struct wireless_dev;
struct wpan_dev;
struct mpls_dev;
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
   unsigned long tx_maxrate ;
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
   int (*ndo_get_vf_stats)(struct net_device * , int , struct ifla_vf_stats * ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_set_vf_rss_query_en)(struct net_device * , int , bool ) ;
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
                             u32 , int ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_item_id * ) ;
   int (*ndo_get_phys_port_name)(struct net_device * , char * , size_t ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
   netdev_features_t (*ndo_features_check)(struct sk_buff * , struct net_device * ,
                                           netdev_features_t ) ;
   int (*ndo_set_tx_maxrate)(struct net_device * , int , u32 ) ;
   int (*ndo_get_iflink)(struct net_device const * ) ;
};
struct __anonstruct_adj_list_325 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_326 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct switchdev_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct tcf_proto;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_327 {
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
   atomic_t carrier_changes ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct list_head ptype_all ;
   struct list_head ptype_specific ;
   struct __anonstruct_adj_list_325 adj_list ;
   struct __anonstruct_all_adj_list_326 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int group ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   atomic_long_t tx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct switchdev_ops const *switchdev_ops ;
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
   unsigned char name_assign_type ;
   bool uc_promisc ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
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
   struct mpls_dev *mpls_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   unsigned long gro_flush_timeout ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct tcf_proto *ingress_cl_list ;
   struct netdev_queue *ingress_queue ;
   struct list_head nf_hooks_ingress ;
   unsigned char broadcast[32U] ;
   struct cpu_rmap *rx_cpu_rmap ;
   struct hlist_node index_hlist ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   int watchdog_timeo ;
   struct xps_dev_maps *xps_maps ;
   unsigned long trans_start ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   possible_net_t nd_net ;
   union __anonunion____missing_field_name_327 __annonCompField95 ;
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
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
struct page_counter {
   atomic_long_t count ;
   unsigned long limit ;
   struct page_counter *parent ;
   unsigned long watermark ;
   unsigned long failcnt ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
struct bpf_insn {
   __u8 code ;
   unsigned char dst_reg : 4 ;
   unsigned char src_reg : 4 ;
   __s16 off ;
   __s32 imm ;
};
enum bpf_prog_type {
    BPF_PROG_TYPE_UNSPEC = 0,
    BPF_PROG_TYPE_SOCKET_FILTER = 1,
    BPF_PROG_TYPE_KPROBE = 2,
    BPF_PROG_TYPE_SCHED_CLS = 3,
    BPF_PROG_TYPE_SCHED_ACT = 4
} ;
struct bpf_prog_aux;
struct sock_fprog_kern {
   u16 len ;
   struct sock_filter *filter ;
};
union __anonunion____missing_field_name_338 {
   struct sock_filter insns[0U] ;
   struct bpf_insn insnsi[0U] ;
};
struct bpf_prog {
   u16 pages ;
   bool jited ;
   bool gpl_compatible ;
   u32 len ;
   enum bpf_prog_type type ;
   struct bpf_prog_aux *aux ;
   struct sock_fprog_kern *orig_prog ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct bpf_insn const * ) ;
   union __anonunion____missing_field_name_338 __annonCompField100 ;
};
struct sk_filter {
   atomic_t refcnt ;
   struct callback_head rcu ;
   struct bpf_prog *prog ;
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
   struct net *(*get_link_net)(struct net_device const * ) ;
};
struct neigh_table;
struct neigh_parms {
   possible_net_t net ;
   struct net_device *dev ;
   struct list_head list ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int reachable_time ;
   int data[13U] ;
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
   possible_net_t net ;
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
   int family ;
   int entry_size ;
   int key_len ;
   __be16 protocol ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   bool (*key_eq)(struct neighbour const * , void const * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   struct list_head parms_list ;
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
union __anonunion____missing_field_name_349 {
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
   int (*output)(struct sock * , struct sk_buff * ) ;
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
   union __anonunion____missing_field_name_349 __annonCompField101 ;
};
struct __anonstruct_socket_lock_t_350 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_350 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_352 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_351 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_352 __annonCompField102 ;
};
union __anonunion____missing_field_name_353 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_355 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_354 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_355 __annonCompField105 ;
};
union __anonunion____missing_field_name_356 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_357 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_351 __annonCompField103 ;
   union __anonunion____missing_field_name_353 __annonCompField104 ;
   union __anonunion____missing_field_name_354 __annonCompField106 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 1 ;
   unsigned char skc_ipv6only : 1 ;
   unsigned char skc_net_refcnt : 1 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_356 __annonCompField107 ;
   struct proto *skc_prot ;
   possible_net_t skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   atomic64_t skc_cookie ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_357 __annonCompField108 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_358 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_358 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   u16 sk_incoming_cpu ;
   __u32 sk_txhash ;
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
   unsigned char sk_shutdown : 2 ;
   unsigned char sk_no_check_tx : 1 ;
   unsigned char sk_no_check_rx : 1 ;
   unsigned char sk_userlocks : 4 ;
   unsigned char sk_protocol ;
   unsigned short sk_type ;
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
   u32 sk_ack_backlog ;
   u32 sk_max_ack_backlog ;
   __u32 sk_priority ;
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   u16 sk_tsflags ;
   u32 sk_tskey ;
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
   void (*sk_data_ready)(struct sock * ) ;
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
union __anonunion_h_361 {
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
   int (*sendmsg)(struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct sock * , struct msghdr * , size_t , int , int , int * ) ;
   int (*sendpage)(struct sock * , struct page * , int , size_t , int ) ;
   int (*bind)(struct sock * , struct sockaddr * , int ) ;
   int (*backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*release_cb)(struct sock * ) ;
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
   union __anonunion_h_361 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   struct page_counter memory_allocated ;
   struct percpu_counter sockets_allocated ;
   int memory_pressure ;
   long sysctl_mem[3U] ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
struct atm_cirange {
   signed char vpi_bits ;
   signed char vci_bits ;
};
struct k_atm_aal_stats {
   atomic_t tx ;
   atomic_t tx_err ;
   atomic_t rx ;
   atomic_t rx_err ;
   atomic_t rx_drop ;
};
struct k_atm_dev_stats {
   struct k_atm_aal_stats aal0 ;
   struct k_atm_aal_stats aal34 ;
   struct k_atm_aal_stats aal5 ;
};
struct atm_dev;
struct atm_vcc {
   struct sock sk ;
   unsigned long flags ;
   short vpi ;
   int vci ;
   unsigned long aal_options ;
   unsigned long atm_options ;
   struct atm_dev *dev ;
   struct atm_qos qos ;
   struct atm_sap sap ;
   void (*release_cb)(struct atm_vcc * ) ;
   void (*push)(struct atm_vcc * , struct sk_buff * ) ;
   void (*pop)(struct atm_vcc * , struct sk_buff * ) ;
   int (*push_oam)(struct atm_vcc * , void * ) ;
   int (*send)(struct atm_vcc * , struct sk_buff * ) ;
   void *dev_data ;
   void *proto_data ;
   struct k_atm_aal_stats *stats ;
   struct module *owner ;
   short itf ;
   struct sockaddr_atmsvc local ;
   struct sockaddr_atmsvc remote ;
   struct atm_vcc *session ;
   void *user_back ;
};
struct atmdev_ops;
struct atmphy_ops;
struct atm_dev {
   struct atmdev_ops const *ops ;
   struct atmphy_ops const *phy ;
   char const *type ;
   int number ;
   void *dev_data ;
   void *phy_data ;
   unsigned long flags ;
   struct list_head local ;
   struct list_head lecs ;
   unsigned char esi[6U] ;
   struct atm_cirange ci_range ;
   struct k_atm_dev_stats stats ;
   char signal ;
   int link_rate ;
   atomic_t refcnt ;
   spinlock_t lock ;
   struct proc_dir_entry *proc_entry ;
   char *proc_name ;
   struct device class_dev ;
   struct list_head dev_list ;
};
struct atmdev_ops {
   void (*dev_close)(struct atm_dev * ) ;
   int (*open)(struct atm_vcc * ) ;
   void (*close)(struct atm_vcc * ) ;
   int (*ioctl)(struct atm_dev * , unsigned int , void * ) ;
   int (*compat_ioctl)(struct atm_dev * , unsigned int , void * ) ;
   int (*getsockopt)(struct atm_vcc * , int , int , void * , int ) ;
   int (*setsockopt)(struct atm_vcc * , int , int , void * , unsigned int ) ;
   int (*send)(struct atm_vcc * , struct sk_buff * ) ;
   int (*send_oam)(struct atm_vcc * , void * , int ) ;
   void (*phy_put)(struct atm_dev * , unsigned char , unsigned long ) ;
   unsigned char (*phy_get)(struct atm_dev * , unsigned long ) ;
   int (*change_qos)(struct atm_vcc * , struct atm_qos * , int ) ;
   int (*proc_read)(struct atm_dev * , loff_t * , char * ) ;
   struct module *owner ;
};
struct atmphy_ops {
   int (*start)(struct atm_dev * ) ;
   int (*ioctl)(struct atm_dev * , unsigned int , void * ) ;
   void (*interrupt)(struct atm_dev * ) ;
   int (*stop)(struct atm_dev * ) ;
};
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct pkt_hdr {
   __le16 size ;
   __le16 vpi ;
   __le16 vci ;
   __le16 type ;
};
struct solos_skb_cb {
   struct atm_vcc *vcc ;
   uint32_t dma_addr ;
};
struct solos_card {
   void *config_regs ;
   void *buffers ;
   int nr_ports ;
   int tx_mask ;
   struct pci_dev *dev ;
   struct atm_dev *atmdev[4U] ;
   struct tasklet_struct tlet ;
   spinlock_t tx_lock ;
   spinlock_t tx_queue_lock ;
   spinlock_t cli_queue_lock ;
   spinlock_t param_queue_lock ;
   struct list_head param_queue ;
   struct sk_buff_head tx_queue[4U] ;
   struct sk_buff_head cli_queue[4U] ;
   struct sk_buff *tx_skb[4U] ;
   struct sk_buff *rx_skb[4U] ;
   unsigned char *dma_bounce ;
   wait_queue_head_t param_wq ;
   wait_queue_head_t fw_wq ;
   int using_dma ;
   int dma_alignment ;
   int fpga_version ;
   int buffer_size ;
   int atmel_flash ;
};
struct solos_param {
   struct list_head list ;
   pid_t pid ;
   int port ;
   struct sk_buff *response ;
};
struct geos_gpio_attr {
   struct device_attribute attr ;
   int offset ;
};
typedef int ldv_func_ret_type___2;
typedef struct atm_dev *ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
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
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static __u32 __fswahb32(__u32 val )
{
  {
  return (((val & 16711935U) << 8) | ((val & 4278255360U) >> 8));
}
}
__inline static __u32 __swahb32p(__u32 const *p )
{
  __u32 tmp ;
  {
  tmp = __fswahb32(*p);
  return (tmp);
}
}
extern int printk(char const * , ...) ;
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern long simple_strtol(char const * , char ** , unsigned int ) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
extern void __VERIFIER_assume(int ) ;
void *ldv_malloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = malloc(size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = calloc(1UL, size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_init_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  {
  tmp = calloc(1UL, size);
  p = tmp;
  __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
  return (p);
}
}
void *ldv_memset(void *s , int c , size_t n )
{
  void *tmp ;
  {
  tmp = memset(s, c, n);
  return (tmp);
}
}
int ldv_undef_int(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  return (tmp);
}
}
void *ldv_undef_ptr(void)
{
  void *tmp ;
  {
  tmp = __VERIFIER_nondet_pointer();
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  tmp = __VERIFIER_nondet_ulong();
  return (tmp);
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
__inline static long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
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
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
extern void list_del(struct list_head * ) ;
extern void __bad_percpu_size(void) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3233;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3233;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3233;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3233;
  default:
  __bad_percpu_size();
  }
  ldv_3233: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcat(char * , char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
extern void _raw_read_lock(rwlock_t * ) ;
extern void _raw_read_unlock(rwlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void ldv_spin_lock_5(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_8(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_9(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_11(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_12(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern unsigned int ioread32(void * ) ;
extern void iowrite32(u32 , void * ) ;
extern void pci_iounmap(struct pci_dev * , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
__inline static void memcpy_fromio(void *dst , void const volatile *src , size_t count )
{
  {
  memcpy(dst, (void const *)src, count);
  return;
}
}
__inline static void memcpy_toio(void volatile *dst , void const *src , size_t count )
{
  {
  memcpy((void *)dst, src, count);
  return;
}
}
extern int sysfs_create_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_remove_group(struct kobject * , struct attribute_group const * ) ;
extern long schedule_timeout(long ) ;
extern void schedule(void) ;
extern void kfree(void const * ) ;
void *ldv_kmem_cache_alloc_20(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
int ldv_state_variable_47 ;
struct device *dev_attr_AnnexAMaxMargin_group1 ;
int ldv_state_variable_20 ;
int pci_counter ;
int ldv_state_variable_30 ;
int ldv_state_variable_0 ;
struct device *gpio_attr_GPIO2_group1 ;
int ldv_state_variable_81 ;
int ldv_state_variable_45 ;
struct device_attribute *dev_attr_HostControl_group0 ;
int ldv_state_variable_12 ;
struct device_attribute *dev_attr_Failsafe_group0 ;
struct device_attribute *dev_attr_AutoStart_group0 ;
struct atm_vcc *fpga_ops_group0 ;
int ldv_state_variable_87 ;
int ldv_state_variable_22 ;
struct device_attribute *gpio_attr_GPIO5_group0 ;
int ldv_state_variable_54 ;
int ldv_state_variable_14 ;
int ldv_state_variable_73 ;
int ldv_state_variable_37 ;
int ldv_state_variable_29 ;
int ldv_state_variable_17 ;
int ldv_state_variable_51 ;
struct device *dev_attr_BisAMaxMargin_group1 ;
struct device *dev_attr_BisAForceSNRMarginDn_group1 ;
int ldv_state_variable_66 ;
int ldv_state_variable_19 ;
int ldv_state_variable_61 ;
int ldv_state_variable_27 ;
int ldv_state_variable_9 ;
int ref_cnt ;
int ldv_state_variable_42 ;
struct device_attribute *dev_attr_BisMMaxMargin_group0 ;
int ldv_state_variable_83 ;
int ldv_irq_line_1_1 ;
int ldv_state_variable_7 ;
struct device_attribute *dev_attr_BisAMaxMargin_group0 ;
int ldv_state_variable_23 ;
int ldv_state_variable_55 ;
struct device *dev_attr_AutoStart_group1 ;
int ldv_irq_1_3 = 0;
struct device *dev_attr_Action_group1 ;
int ldv_state_variable_72 ;
struct device_attribute *gpio_attr_GPIO3_group0 ;
int ldv_state_variable_59 ;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_6 ;
struct device_attribute *dev_attr_BisMForceSNRMarginDn_group0 ;
int ldv_state_variable_80 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_50 ;
int ldv_state_variable_64 ;
int ldv_state_variable_26 ;
int ldv_state_variable_84 ;
struct device_attribute *dev_attr_Defaults_group0 ;
int ldv_state_variable_28 ;
int ldv_state_variable_86 ;
int ldv_state_variable_44 ;
int LDV_IN_INTERRUPT = 1;
int ldv_state_variable_38 ;
int ldv_irq_1_1 = 0;
struct device *dev_attr_Profile_group1 ;
struct device_attribute *dev_attr_BisAForceSNRMarginDn_group0 ;
int ldv_state_variable_58 ;
int ldv_state_variable_39 ;
struct device *dev_attr_LineMode_group1 ;
int ldv_state_variable_56 ;
struct device *dev_attr_ShowtimeLed_group1 ;
int ldv_state_variable_3 ;
struct device_attribute *gpio_attr_GPIO1_group0 ;
int ldv_irq_line_1_0 ;
int ldv_state_variable_78 ;
int ldv_state_variable_76 ;
struct device_attribute *dev_attr_Retrain_group0 ;
int ldv_state_variable_31 ;
int ldv_state_variable_52 ;
int ldv_state_variable_89 ;
int ldv_state_variable_4 ;
int ldv_state_variable_68 ;
struct device_attribute *dev_attr_DetectNoise_group0 ;
int ldv_state_variable_36 ;
int ldv_state_variable_60 ;
int ldv_state_variable_8 ;
struct device *dev_attr_AnnexMMaxMargin_group1 ;
int ldv_state_variable_46 ;
int ldv_state_variable_15 ;
int ldv_state_variable_48 ;
struct device_attribute *dev_attr_ActivateLine_group0 ;
int ldv_state_variable_75 ;
int ldv_state_variable_74 ;
int ldv_state_variable_5 ;
int ldv_state_variable_21 ;
int ldv_state_variable_33 ;
int ldv_state_variable_13 ;
struct device *dev_attr_HostControl_group1 ;
int ldv_state_variable_69 ;
int ldv_state_variable_82 ;
int ldv_state_variable_88 ;
int ldv_state_variable_65 ;
struct device_attribute *gpio_attr_GPIO4_group0 ;
struct device_attribute *dev_attr_LineMode_group0 ;
int ldv_state_variable_49 ;
int ldv_state_variable_24 ;
struct device *dev_attr_Retrain_group1 ;
struct device *dev_attr_DetectNoise_group1 ;
int ldv_state_variable_70 ;
int ldv_state_variable_1 ;
int ldv_state_variable_41 ;
int ldv_state_variable_62 ;
struct device_attribute *dev_attr_console_group0 ;
int ldv_irq_line_1_2 ;
struct device *dev_attr_ActivateLine_group1 ;
int ldv_state_variable_40 ;
struct device *dev_attr_console_group1 ;
int ldv_state_variable_85 ;
struct device *gpio_attr_GPIO4_group1 ;
struct device_attribute *dev_attr_AnnexMMaxMargin_group0 ;
void *ldv_irq_data_1_1 ;
int ldv_state_variable_71 ;
int ldv_state_variable_10 ;
int ldv_irq_1_0 = 0;
int ldv_state_variable_77 ;
struct device_attribute *gpio_attr_GPIO2_group0 ;
struct device_attribute *dev_attr_AnnexAForceSNRMarginDn_group0 ;
int ldv_state_variable_16 ;
int ldv_state_variable_63 ;
struct device *dev_attr_BisMMaxMargin_group1 ;
int ldv_state_variable_2 ;
int ldv_state_variable_43 ;
int ldv_state_variable_25 ;
struct pci_dev *fpga_driver_group1 ;
void *ldv_irq_data_1_2 ;
int ldv_state_variable_57 ;
struct device_attribute *dev_attr_ShowtimeLed_group0 ;
int ldv_state_variable_11 ;
int ldv_irq_1_2 = 0;
struct device_attribute *dev_attr_AnnexAMaxMargin_group0 ;
int ldv_state_variable_53 ;
int ldv_state_variable_67 ;
int ldv_state_variable_79 ;
int ldv_state_variable_18 ;
struct device *dev_attr_Failsafe_group1 ;
int ldv_irq_line_1_3 ;
struct device *dev_attr_Defaults_group1 ;
int ldv_state_variable_32 ;
int ldv_state_variable_34 ;
struct device *dev_attr_AnnexAForceSNRMarginDn_group1 ;
struct device *gpio_attr_GPIO3_group1 ;
struct device *gpio_attr_GPIO5_group1 ;
struct device *dev_attr_BisMForceSNRMarginDn_group1 ;
struct device_attribute *dev_attr_Profile_group0 ;
struct device *gpio_attr_GPIO1_group1 ;
int ldv_state_variable_90 ;
struct device_attribute *dev_attr_Action_group0 ;
int ldv_state_variable_35 ;
void ldv_initialize_device_attribute_32(void) ;
void ldv_initialize_device_attribute_22(void) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void ldv_initialize_device_attribute_23(void) ;
void ldv_initialize_device_attribute_30(void) ;
void ldv_pci_driver_2(void) ;
void ldv_initialize_device_attribute_26(void) ;
void ldv_initialize_geos_gpio_attr_9(void) ;
void ldv_initialize_device_attribute_28(void) ;
void ldv_initialize_device_attribute_21(void) ;
void ldv_initialize_device_attribute_24(void) ;
void ldv_initialize_geos_gpio_attr_10(void) ;
void ldv_initialize_atmdev_ops_3(void) ;
void ldv_initialize_device_attribute_35(void) ;
void ldv_initialize_device_attribute_90(void) ;
void disable_suitable_irq_1(int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
void ldv_initialize_device_attribute_18(void) ;
void ldv_initialize_device_attribute_20(void) ;
void ldv_initialize_device_attribute_33(void) ;
void ldv_initialize_device_attribute_31(void) ;
void choose_interrupt_1(void) ;
void ldv_initialize_device_attribute_29(void) ;
void ldv_initialize_device_attribute_36(void) ;
void ldv_initialize_geos_gpio_attr_8(void) ;
void ldv_initialize_device_attribute_25(void) ;
void ldv_initialize_device_attribute_19(void) ;
void ldv_initialize_geos_gpio_attr_11(void) ;
void ldv_initialize_geos_gpio_attr_7(void) ;
void ldv_initialize_device_attribute_27(void) ;
int ldv_irq_1(int state , int line , void *data ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  return (tmp);
}
}
__inline static int ldv_request_irq_38(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_39(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_42(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
__inline static void tasklet_unlock_wait(struct tasklet_struct *t )
{
  int tmp ;
  {
  goto ldv_21853;
  ldv_21852:
  __asm__ volatile ("": : : "memory");
  ldv_21853:
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& t->state));
  if (tmp != 0) {
    goto ldv_21852;
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
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& t->state));
  if (tmp == 0) {
    __tasklet_schedule(t);
  } else {
  }
  return;
}
}
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
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
extern void dev_err(struct device const * , char const * , ...) ;
extern void dev_warn(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
int ldv___pci_register_driver_43(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_44(struct pci_driver *ldv_func_arg1 ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
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
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
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
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    ldv_28254: ;
    goto ldv_28254;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
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
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    ldv_28263: ;
    goto ldv_28263;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  return;
}
}
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
__inline static int dma_set_coherent_mask(struct device *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_supported(dev, mask);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  dev->coherent_dma_mask = mask;
  return (0);
}
}
__inline static int dma_set_mask_and_coherent(struct device *dev , u64 mask )
{
  int rc ;
  int tmp ;
  {
  tmp = dma_set_mask(dev, mask);
  rc = tmp;
  if (rc == 0) {
    dma_set_coherent_mask(dev, mask);
  } else {
  }
  return (rc);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
extern int net_ratelimit(void) ;
extern void kfree_skb(struct sk_buff * ) ;
extern void consume_skb(struct sk_buff * ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_28(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_36(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_30(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_26(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_34(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_35(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_37(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static struct sk_buff *skb_get(struct sk_buff *skb )
{
  {
  atomic_inc(& skb->users);
  return (skb);
}
}
__inline static int skb_header_cloned(struct sk_buff const *skb )
{
  int dataref ;
  unsigned char *tmp ;
  {
  if ((unsigned int )*((unsigned char *)skb + 142UL) == 0U) {
    return (0);
  } else {
  }
  tmp = skb_end_pointer(skb);
  dataref = atomic_read((atomic_t const *)(& ((struct skb_shared_info *)tmp)->dataref));
  dataref = (dataref & 65535) - (dataref >> 16);
  return (dataref != 1);
}
}
__inline static int skb_shared(struct sk_buff const *skb )
{
  int tmp ;
  {
  tmp = atomic_read(& skb->users);
  return (tmp != 1);
}
}
__inline static __u32 skb_queue_len(struct sk_buff_head const *list_ )
{
  {
  return ((__u32 )list_->qlen);
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
  spinlock_check(& list->lock);
  __raw_spin_lock_init(& list->lock.__annonCompField18.rlock, "&(&list->lock)->rlock",
                       & __key);
  __skb_queue_head_init(list);
  return;
}
}
extern void skb_queue_tail(struct sk_buff_head * , struct sk_buff * ) ;
extern void skb_unlink(struct sk_buff * , struct sk_buff_head * ) ;
extern struct sk_buff *skb_dequeue(struct sk_buff_head * ) ;
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_push(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
}
}
struct sk_buff *ldv___netdev_alloc_skb_31(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_32(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_33(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
__inline static int skb_clone_writable(struct sk_buff const *skb , unsigned int len )
{
  int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  tmp = skb_header_cloned(skb);
  if (tmp == 0) {
    tmp___0 = skb_headroom(skb);
    if (tmp___0 + len <= (unsigned int )skb->hdr_len) {
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
extern void __dev_kfree_skb_irq(struct sk_buff * , enum skb_free_reason ) ;
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_irq(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_irq(skb, 1);
  return;
}
}
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_any(skb, 1);
  return;
}
}
__inline static struct atm_vcc *atm_sk(struct sock *sk )
{
  {
  return ((struct atm_vcc *)sk);
}
}
extern struct hlist_head vcc_hash[32U] ;
extern rwlock_t vcc_sklist_lock ;
extern struct atm_dev *atm_dev_register(char const * , struct device * , struct atmdev_ops const * ,
                                        int , unsigned long * ) ;
struct atm_dev *ldv_atm_dev_register_40(char const *ldv_func_arg1 , struct device *ldv_func_arg2 ,
                                        struct atmdev_ops const *ldv_func_arg3 ,
                                        int ldv_func_arg4 , unsigned long *ldv_func_arg5 ) ;
extern void atm_dev_deregister(struct atm_dev * ) ;
void ldv_atm_dev_deregister_41(struct atm_dev *ldv_func_arg1 ) ;
extern void atm_dev_signal_change(struct atm_dev * , char ) ;
extern int atm_charge(struct atm_vcc * , int ) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
extern unsigned char const _ctype[] ;
static int reset = 0;
static int atmdebug = 0;
static int firmware_upgrade = 0;
static int fpga_upgrade = 0;
static int db_firmware_upgrade = 0;
static int db_fpga_upgrade = 0;
static void fpga_queue(struct solos_card *card , int port , struct sk_buff *skb ,
                       struct atm_vcc *vcc ) ;
static uint32_t fpga_tx(struct solos_card *card ) ;
static irqreturn_t solos_irq(int irq , void *dev_id ) ;
static struct atm_vcc *find_vcc(struct atm_dev *dev , short vpi , int vci ) ;
static int atm_init(struct solos_card *card , struct device *parent ) ;
static void atm_remove(struct solos_card *card ) ;
static int send_command(struct solos_card *card , int dev , char const *buf , size_t size ) ;
static void solos_bh(unsigned long card_arg ) ;
static int print_buffer(struct sk_buff *buf ) ;
__inline static void solos_pop(struct atm_vcc *vcc , struct sk_buff *skb )
{
  {
  if ((unsigned long )vcc->pop != (unsigned long )((void (*)(struct atm_vcc * , struct sk_buff * ))0)) {
    (*(vcc->pop))(vcc, skb);
  } else {
    dev_kfree_skb_any(skb);
  }
  return;
}
}
static ssize_t solos_param_show(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{
  struct atm_dev *atmdev ;
  struct device const *__mptr ;
  struct solos_card *card ;
  struct solos_param prm ;
  struct sk_buff *skb ;
  struct pkt_hdr *header ;
  int buflen ;
  size_t tmp ;
  unsigned char *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___3 ;
  bool __cond ;
  bool __cond___0 ;
  {
  __mptr = (struct device const *)dev;
  atmdev = (struct atm_dev *)__mptr + 0xffffffffffffff00UL;
  card = (struct solos_card *)atmdev->dev_data;
  tmp = strlen(attr->attr.name);
  buflen = (int )((unsigned int )tmp + 10U);
  skb = alloc_skb((unsigned int )buflen + 8U, 208U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    dev_warn((struct device const *)(& (card->dev)->dev), "Failed to allocate sk_buff in solos_param_show()\n");
    return (-12L);
  } else {
  }
  tmp___0 = skb_put(skb, 8U);
  header = (struct pkt_hdr *)tmp___0;
  tmp___1 = get_current();
  buflen = snprintf((char *)header + 1U, (size_t )(buflen + -1), "L%05d\n%s\n", tmp___1->pid,
                    attr->attr.name);
  skb_put(skb, (unsigned int )buflen);
  header->size = (unsigned short )buflen;
  header->vpi = 0U;
  header->vci = 0U;
  header->type = 1U;
  tmp___2 = get_current();
  prm.pid = tmp___2->pid;
  prm.response = (struct sk_buff *)0;
  prm.port = (int )((long )atmdev->phy_data);
  spin_lock_irq(& card->param_queue_lock);
  list_add(& prm.list, & card->param_queue);
  spin_unlock_irq(& card->param_queue_lock);
  fpga_queue(card, prm.port, skb, (struct atm_vcc *)0);
  __ret = 1250L;
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2871/dscv_tempdir/dscv/ri/43_2a/drivers/atm/solos-pci.c",
                229, 0);
  __cond___0 = (unsigned long )prm.response != (unsigned long )((struct sk_buff *)0);
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    __ret___0 = 1250L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_49998:
    tmp___3 = prepare_to_wait_event(& card->param_wq, & __wait, 2);
    __int = tmp___3;
    __cond = (unsigned long )prm.response != (unsigned long )((struct sk_buff *)0);
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_49997;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_49998;
    ldv_49997:
    finish_wait(& card->param_wq, & __wait);
    __ret = __ret___0;
  } else {
  }
  spin_lock_irq(& card->param_queue_lock);
  list_del(& prm.list);
  spin_unlock_irq(& card->param_queue_lock);
  if ((unsigned long )prm.response == (unsigned long )((struct sk_buff *)0)) {
    return (-5L);
  } else {
  }
  buflen = (int )(prm.response)->len;
  memcpy((void *)buf, (void const *)(prm.response)->data, (size_t )buflen);
  kfree_skb(prm.response);
  return ((ssize_t )buflen);
}
}
static ssize_t solos_param_store(struct device *dev , struct device_attribute *attr ,
                                 char const *buf , size_t count )
{
  struct atm_dev *atmdev ;
  struct device const *__mptr ;
  struct solos_card *card ;
  struct solos_param prm ;
  struct sk_buff *skb ;
  struct pkt_hdr *header ;
  int buflen ;
  ssize_t ret ;
  size_t tmp ;
  unsigned char *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___3 ;
  bool __cond ;
  bool __cond___0 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  __mptr = (struct device const *)dev;
  atmdev = (struct atm_dev *)__mptr + 0xffffffffffffff00UL;
  card = (struct solos_card *)atmdev->dev_data;
  tmp = strlen(attr->attr.name);
  buflen = (int )(((unsigned int )tmp + (unsigned int )count) + 11U);
  skb = alloc_skb((unsigned int )buflen + 8U, 208U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    dev_warn((struct device const *)(& (card->dev)->dev), "Failed to allocate sk_buff in solos_param_store()\n");
    return (-12L);
  } else {
  }
  tmp___0 = skb_put(skb, 8U);
  header = (struct pkt_hdr *)tmp___0;
  tmp___1 = get_current();
  buflen = snprintf((char *)header + 1U, (size_t )(buflen + -1), "L%05d\n%s\n%s\n",
                    tmp___1->pid, attr->attr.name, buf);
  skb_put(skb, (unsigned int )buflen);
  header->size = (unsigned short )buflen;
  header->vpi = 0U;
  header->vci = 0U;
  header->type = 1U;
  tmp___2 = get_current();
  prm.pid = tmp___2->pid;
  prm.response = (struct sk_buff *)0;
  prm.port = (int )((long )atmdev->phy_data);
  spin_lock_irq(& card->param_queue_lock);
  list_add(& prm.list, & card->param_queue);
  spin_unlock_irq(& card->param_queue_lock);
  fpga_queue(card, prm.port, skb, (struct atm_vcc *)0);
  __ret = 1250L;
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2871/dscv_tempdir/dscv/ri/43_2a/drivers/atm/solos-pci.c",
                285, 0);
  __cond___0 = (unsigned long )prm.response != (unsigned long )((struct sk_buff *)0);
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    __ret___0 = 1250L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_50026:
    tmp___3 = prepare_to_wait_event(& card->param_wq, & __wait, 2);
    __int = tmp___3;
    __cond = (unsigned long )prm.response != (unsigned long )((struct sk_buff *)0);
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_50025;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_50026;
    ldv_50025:
    finish_wait(& card->param_wq, & __wait);
    __ret = __ret___0;
  } else {
  }
  spin_lock_irq(& card->param_queue_lock);
  list_del(& prm.list);
  spin_unlock_irq(& card->param_queue_lock);
  skb = prm.response;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-5L);
  } else {
  }
  buflen = (int )skb->len;
  if ((unsigned int )*(skb->data + ((unsigned long )buflen + 0xffffffffffffffffUL)) == 10U) {
    buflen = buflen - 1;
  } else {
  }
  if (buflen == 2) {
    tmp___5 = strncmp((char const *)skb->data, "OK", 2UL);
    if (tmp___5 == 0) {
      ret = (ssize_t )count;
    } else {
      goto _L;
    }
  } else
  _L:
  if (buflen == 5) {
    tmp___4 = strncmp((char const *)skb->data, "OLD_ERROR", 5UL);
    if (tmp___4 == 0) {
      ret = -5L;
    } else {
      *(skb->data + (unsigned long )buflen) = 0U;
      dev_warn((struct device const *)(& (card->dev)->dev), "Unexpected parameter response: \'%s\'\n",
               skb->data);
      ret = -5L;
    }
  } else {
    *(skb->data + (unsigned long )buflen) = 0U;
    dev_warn((struct device const *)(& (card->dev)->dev), "Unexpected parameter response: \'%s\'\n",
             skb->data);
    ret = -5L;
  }
  kfree_skb(skb);
  return (ret);
}
}
static char *next_string(struct sk_buff *skb )
{
  int i ;
  char *this ;
  {
  i = 0;
  this = (char *)skb->data;
  i = 0;
  goto ldv_50035;
  ldv_50034: ;
  if ((int )((signed char )*(this + (unsigned long )i)) == 10) {
    *(this + (unsigned long )i) = 0;
    skb_pull(skb, (unsigned int )(i + 1));
    return (this);
  } else {
  }
  if (((int )_ctype[(int )((unsigned char )*(this + (unsigned long )i))] & 151) == 0) {
    return ((char *)0);
  } else {
  }
  i = i + 1;
  ldv_50035: ;
  if ((unsigned int )i < skb->len) {
    goto ldv_50034;
  } else {
  }
  return ((char *)0);
}
}
static int process_status(struct solos_card *card , int port , struct sk_buff *skb )
{
  char *str ;
  char *end ;
  char *state_str ;
  char *snr ;
  char *attn ;
  int ver ;
  int rate_up ;
  int rate_down ;
  long tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  {
  if ((unsigned long )card->atmdev[port] == (unsigned long )((struct atm_dev *)0)) {
    return (-19);
  } else {
  }
  str = next_string(skb);
  if ((unsigned long )str == (unsigned long )((char *)0)) {
    return (-5);
  } else {
  }
  tmp = simple_strtol((char const *)str, (char **)0, 10U);
  ver = (int )tmp;
  if (ver <= 0) {
    dev_warn((struct device const *)(& (card->dev)->dev), "Unexpected status interrupt version %d\n",
             ver);
    return (-5);
  } else {
  }
  str = next_string(skb);
  if ((unsigned long )str == (unsigned long )((char *)0)) {
    return (-5);
  } else {
  }
  tmp___1 = strcmp((char const *)str, "OLD_ERROR");
  if (tmp___1 == 0) {
    descriptor.modname = "solos_pci";
    descriptor.function = "process_status";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2871/dscv_tempdir/dscv/ri/43_2a/drivers/atm/solos-pci.c";
    descriptor.format = "Status packet indicated Solos error on port %d (starting up?)\n";
    descriptor.lineno = 372U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (card->dev)->dev),
                        "Status packet indicated Solos error on port %d (starting up?)\n",
                        port);
    } else {
    }
    return (0);
  } else {
  }
  tmp___2 = simple_strtol((char const *)str, & end, 10U);
  rate_down = (int )tmp___2;
  if ((int )((signed char )*end) != 0) {
    return (-5);
  } else {
  }
  str = next_string(skb);
  if ((unsigned long )str == (unsigned long )((char *)0)) {
    return (-5);
  } else {
  }
  tmp___3 = simple_strtol((char const *)str, & end, 10U);
  rate_up = (int )tmp___3;
  if ((int )((signed char )*end) != 0) {
    return (-5);
  } else {
  }
  state_str = next_string(skb);
  if ((unsigned long )state_str == (unsigned long )((char *)0)) {
    return (-5);
  } else {
  }
  tmp___4 = strcmp((char const *)state_str, "Showtime");
  if (tmp___4 != 0) {
    atm_dev_signal_change(card->atmdev[port], 0);
    _dev_info((struct device const *)(& (card->dev)->dev), "Port %d: %s\n", port,
              state_str);
    return (0);
  } else {
  }
  snr = next_string(skb);
  if ((unsigned long )snr == (unsigned long )((char *)0)) {
    return (-5);
  } else {
  }
  attn = next_string(skb);
  if ((unsigned long )attn == (unsigned long )((char *)0)) {
    return (-5);
  } else {
  }
  _dev_info((struct device const *)(& (card->dev)->dev), "Port %d: %s @%d/%d kb/s%s%s%s%s\n",
            port, state_str, rate_down / 1000, rate_up / 1000, (int )((signed char )*snr) != 0 ? (char *)", SNR " : (char *)"",
            snr, (int )((signed char )*attn) != 0 ? (char *)", Attn " : (char *)"",
            attn);
  (card->atmdev[port])->link_rate = rate_down / 424;
  atm_dev_signal_change(card->atmdev[port], 2);
  return (0);
}
}
static int process_command(struct solos_card *card , int port , struct sk_buff *skb )
{
  struct solos_param *prm ;
  unsigned long flags ;
  int cmdpid ;
  int found ;
  long tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  found = 0;
  if (skb->len <= 6U) {
    return (0);
  } else {
  }
  if (((((((unsigned int )*(skb->data) != 76U || ((int )_ctype[(int )*(skb->data + 1UL)] & 4) == 0) || ((int )_ctype[(int )*(skb->data + 2UL)] & 4) == 0) || ((int )_ctype[(int )*(skb->data + 3UL)] & 4) == 0) || ((int )_ctype[(int )*(skb->data + 4UL)] & 4) == 0) || ((int )_ctype[(int )*(skb->data + 5UL)] & 4) == 0) || (unsigned int )*(skb->data + 6UL) != 10U) {
    return (0);
  } else {
  }
  tmp = simple_strtol((char const *)skb->data + 1U, (char **)0, 10U);
  cmdpid = (int )tmp;
  ldv_spin_lock();
  __mptr = (struct list_head const *)card->param_queue.next;
  prm = (struct solos_param *)__mptr;
  goto ldv_50067;
  ldv_50066: ;
  if (prm->port == port && prm->pid == cmdpid) {
    prm->response = skb;
    skb_pull(skb, 7U);
    __wake_up(& card->param_wq, 3U, 1, (void *)0);
    found = 1;
    goto ldv_50065;
  } else {
  }
  __mptr___0 = (struct list_head const *)prm->list.next;
  prm = (struct solos_param *)__mptr___0;
  ldv_50067: ;
  if ((unsigned long )(& prm->list) != (unsigned long )(& card->param_queue)) {
    goto ldv_50066;
  } else {
  }
  ldv_50065:
  spin_unlock_irqrestore(& card->param_queue_lock, flags);
  return (found);
}
}
static ssize_t console_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct atm_dev *atmdev ;
  struct device const *__mptr ;
  struct solos_card *card ;
  struct sk_buff *skb ;
  unsigned int len ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  atmdev = (struct atm_dev *)__mptr + 0xffffffffffffff00UL;
  card = (struct solos_card *)atmdev->dev_data;
  spin_lock(& card->cli_queue_lock);
  skb = skb_dequeue((struct sk_buff_head *)(& card->cli_queue) + (unsigned long )((int )((long )atmdev->phy_data)));
  spin_unlock(& card->cli_queue_lock);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    tmp = sprintf(buf, "No data.\n");
    return ((ssize_t )tmp);
  } else {
  }
  len = skb->len;
  memcpy((void *)buf, (void const *)skb->data, (size_t )len);
  kfree_skb(skb);
  return ((ssize_t )len);
}
}
static int send_command(struct solos_card *card , int dev , char const *buf , size_t size )
{
  struct sk_buff *skb ;
  struct pkt_hdr *header ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  {
  if (size > 2040UL) {
    descriptor.modname = "solos_pci";
    descriptor.function = "send_command";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2871/dscv_tempdir/dscv/ri/43_2a/drivers/atm/solos-pci.c";
    descriptor.format = "Command is too big.  Dropping request\n";
    descriptor.lineno = 474U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (card->dev)->dev),
                        "Command is too big.  Dropping request\n");
    } else {
    }
    return (0);
  } else {
  }
  skb = alloc_skb((unsigned int )size + 8U, 32U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    dev_warn((struct device const *)(& (card->dev)->dev), "Failed to allocate sk_buff in send_command()\n");
    return (0);
  } else {
  }
  tmp___0 = skb_put(skb, 8U);
  header = (struct pkt_hdr *)tmp___0;
  header->size = (unsigned short )size;
  header->vpi = 0U;
  header->vci = 0U;
  header->type = 1U;
  tmp___1 = skb_put(skb, (unsigned int )size);
  memcpy((void *)tmp___1, (void const *)buf, size);
  fpga_queue(card, dev, skb, (struct atm_vcc *)0);
  return (0);
}
}
static ssize_t console_store(struct device *dev , struct device_attribute *attr ,
                             char const *buf , size_t count )
{
  struct atm_dev *atmdev ;
  struct device const *__mptr ;
  struct solos_card *card ;
  int err ;
  {
  __mptr = (struct device const *)dev;
  atmdev = (struct atm_dev *)__mptr + 0xffffffffffffff00UL;
  card = (struct solos_card *)atmdev->dev_data;
  err = send_command(card, (int )((long )atmdev->phy_data), buf, count);
  return ((ssize_t )(err != 0 ? (size_t )err : count));
}
}
static ssize_t geos_gpio_store(struct device *dev , struct device_attribute *attr ,
                               char const *buf , size_t count )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct geos_gpio_attr *gattr ;
  struct device_attribute const *__mptr___0 ;
  struct solos_card *card ;
  void *tmp ;
  uint32_t data32 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  __mptr___0 = (struct device_attribute const *)attr;
  gattr = (struct geos_gpio_attr *)__mptr___0;
  tmp = pci_get_drvdata(pdev);
  card = (struct solos_card *)tmp;
  if (count != 1UL && (count != 2UL || (int )((signed char )*(buf + 1UL)) != 10)) {
    return (-22L);
  } else {
  }
  spin_lock_irq(& card->param_queue_lock);
  data32 = ioread32(card->config_regs + 84UL);
  if ((int )((signed char )*buf) == 49) {
    data32 = (uint32_t )(1 << gattr->offset) | data32;
    iowrite32(data32, card->config_regs + 84UL);
  } else
  if ((int )((signed char )*buf) == 48) {
    data32 = (uint32_t )(~ (1 << gattr->offset)) & data32;
    iowrite32(data32, card->config_regs + 84UL);
  } else {
    count = 0xffffffffffffffeaUL;
  }
  spin_unlock_irq(& card->param_queue_lock);
  return ((ssize_t )count);
}
}
static ssize_t geos_gpio_show(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct geos_gpio_attr *gattr ;
  struct device_attribute const *__mptr___0 ;
  struct solos_card *card ;
  void *tmp ;
  uint32_t data32 ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  __mptr___0 = (struct device_attribute const *)attr;
  gattr = (struct geos_gpio_attr *)__mptr___0;
  tmp = pci_get_drvdata(pdev);
  card = (struct solos_card *)tmp;
  data32 = ioread32(card->config_regs + 84UL);
  data32 = (data32 >> gattr->offset) & 1U;
  tmp___0 = sprintf(buf, "%d\n", data32);
  return ((ssize_t )tmp___0);
}
}
static ssize_t hardware_show(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct geos_gpio_attr *gattr ;
  struct device_attribute const *__mptr___0 ;
  struct solos_card *card ;
  void *tmp ;
  uint32_t data32 ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  __mptr___0 = (struct device_attribute const *)attr;
  gattr = (struct geos_gpio_attr *)__mptr___0;
  tmp = pci_get_drvdata(pdev);
  card = (struct solos_card *)tmp;
  data32 = ioread32(card->config_regs + 84UL);
  switch (gattr->offset) {
  case 0:
  data32 = data32 & 31U;
  goto ldv_50144;
  case 1:
  data32 = (data32 >> 5) & 15U;
  goto ldv_50144;
  }
  ldv_50144:
  tmp___0 = sprintf(buf, "%d\n", data32);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_console = {{"console", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & console_show,
    & console_store};
static struct device_attribute dev_attr_DriverVersion = {{"DriverVersion", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_APIVersion = {{"APIVersion", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_FirmwareVersion = {{"FirmwareVersion", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_Version = {{"Version", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & solos_param_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_Connected = {{"Connected", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_OperationalMode = {{"OperationalMode", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_State = {{"State", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & solos_param_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_Watchdog = {{"Watchdog", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_OperationProgress = {{"OperationProgress", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_LastFailed = {{"LastFailed", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_TxBitRate = {{"TxBitRate", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_RxBitRate = {{"RxBitRate", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_TxATTNDR = {{"TxATTNDR", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_RxATTNDR = {{"RxATTNDR", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_AnnexType = {{"AnnexType", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_GeneralFailure = {{"GeneralFailure", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_InterleaveDpDn = {{"InterleaveDpDn", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_InterleaveDpUp = {{"InterleaveDpUp", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_RSCorrectedErrorsDn = {{"RSCorrectedErrorsDn", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & solos_param_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_RSUnCorrectedErrorsDn = {{"RSUnCorrectedErrorsDn", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & solos_param_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_RSCorrectedErrorsUp = {{"RSCorrectedErrorsUp", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & solos_param_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_RSUnCorrectedErrorsUp = {{"RSUnCorrectedErrorsUp", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & solos_param_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_InterleaveRDn = {{"InterleaveRDn", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_InterleaveRUp = {{"InterleaveRUp", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_BisRDn = {{"BisRDn", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & solos_param_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_BisRUp = {{"BisRUp", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & solos_param_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_INPdown = {{"INPdown", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & solos_param_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_INPup = {{"INPup", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & solos_param_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_ShowtimeStart = {{"ShowtimeStart", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_ATURVendor = {{"ATURVendor", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_ATUCCountry = {{"ATUCCountry", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_ATURANSIRev = {{"ATURANSIRev", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_ATURANSISTD = {{"ATURANSISTD", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_ATUCANSIRev = {{"ATUCANSIRev", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_ATUCANSIId = {{"ATUCANSIId", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_ATUCANSISTD = {{"ATUCANSISTD", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_DataBoost = {{"DataBoost", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_LocalITUCountryCode = {{"LocalITUCountryCode", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & solos_param_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_LocalSEF = {{"LocalSEF", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_LocalEndLOS = {{"LocalEndLOS", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_LocalSNRMargin = {{"LocalSNRMargin", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_LocalLineAttn = {{"LocalLineAttn", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_RawAttn = {{"RawAttn", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & solos_param_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_LocalTxPower = {{"LocalTxPower", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_RemoteTxPower = {{"RemoteTxPower", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_RemoteSEF = {{"RemoteSEF", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_RemoteLOS = {{"RemoteLOS", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_RemoteLineAttn = {{"RemoteLineAttn", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_RemoteSNRMargin = {{"RemoteSNRMargin", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_LineUpCount = {{"LineUpCount", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_SRACnt = {{"SRACnt", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & solos_param_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_SRACntUp = {{"SRACntUp", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_ProfileStatus = {{"ProfileStatus", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_Action = {{"Action", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & solos_param_show,
    & solos_param_store};
static struct device_attribute dev_attr_ActivateLine = {{"ActivateLine", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, & solos_param_store};
static struct device_attribute dev_attr_LineStatus = {{"LineStatus", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_HostControl = {{"HostControl", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, & solos_param_store};
static struct device_attribute dev_attr_AutoStart = {{"AutoStart", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, & solos_param_store};
static struct device_attribute dev_attr_Failsafe = {{"Failsafe", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, & solos_param_store};
static struct device_attribute dev_attr_ShowtimeLed = {{"ShowtimeLed", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, & solos_param_store};
static struct device_attribute dev_attr_Retrain = {{"Retrain", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & solos_param_show,
    & solos_param_store};
static struct device_attribute dev_attr_Defaults = {{"Defaults", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, & solos_param_store};
static struct device_attribute dev_attr_LineMode = {{"LineMode", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, & solos_param_store};
static struct device_attribute dev_attr_Profile = {{"Profile", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & solos_param_show,
    & solos_param_store};
static struct device_attribute dev_attr_DetectNoise = {{"DetectNoise", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, & solos_param_store};
static struct device_attribute dev_attr_BisAForceSNRMarginDn = {{"BisAForceSNRMarginDn", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                  {(char)0}, {(char)0}, {(char)0},
                                                  {(char)0}, {(char)0}}}}, & solos_param_show,
    & solos_param_store};
static struct device_attribute dev_attr_BisMForceSNRMarginDn = {{"BisMForceSNRMarginDn", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                  {(char)0}, {(char)0}, {(char)0},
                                                  {(char)0}, {(char)0}}}}, & solos_param_show,
    & solos_param_store};
static struct device_attribute dev_attr_BisAMaxMargin = {{"BisAMaxMargin", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, & solos_param_store};
static struct device_attribute dev_attr_BisMMaxMargin = {{"BisMMaxMargin", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, & solos_param_store};
static struct device_attribute dev_attr_AnnexAForceSNRMarginDn = {{"AnnexAForceSNRMarginDn", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}}}}, & solos_param_show,
    & solos_param_store};
static struct device_attribute dev_attr_AnnexAMaxMargin = {{"AnnexAMaxMargin", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, & solos_param_store};
static struct device_attribute dev_attr_AnnexMMaxMargin = {{"AnnexMMaxMargin", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, & solos_param_store};
static struct device_attribute dev_attr_SupportedAnnexes = {{"SupportedAnnexes", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_Status = {{"Status", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & solos_param_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_TotalStart = {{"TotalStart", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_RecentShowtimeStart = {{"RecentShowtimeStart", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & solos_param_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_TotalRxBlocks = {{"TotalRxBlocks", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct device_attribute dev_attr_TotalTxBlocks = {{"TotalTxBlocks", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & solos_param_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static struct geos_gpio_attr gpio_attr_GPIO1 = {{{"GPIO1", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & geos_gpio_show,
     & geos_gpio_store}, 9};
static struct geos_gpio_attr gpio_attr_GPIO2 = {{{"GPIO2", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & geos_gpio_show,
     & geos_gpio_store}, 10};
static struct geos_gpio_attr gpio_attr_GPIO3 = {{{"GPIO3", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & geos_gpio_show,
     & geos_gpio_store}, 11};
static struct geos_gpio_attr gpio_attr_GPIO4 = {{{"GPIO4", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & geos_gpio_show,
     & geos_gpio_store}, 12};
static struct geos_gpio_attr gpio_attr_GPIO5 = {{{"GPIO5", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & geos_gpio_show,
     & geos_gpio_store}, 13};
static struct geos_gpio_attr gpio_attr_PushButton = {{{"PushButton", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & geos_gpio_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                    char const * , size_t ))0}, 14};
static struct geos_gpio_attr gpio_attr_HardwareVersion = {{{"HardwareVersion", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & hardware_show, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                   size_t ))0}, 0};
static struct geos_gpio_attr gpio_attr_HardwareVariant = {{{"HardwareVariant", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & hardware_show, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                   size_t ))0}, 1};
static struct attribute *solos_attrs[79U] =
  { & dev_attr_DriverVersion.attr, & dev_attr_APIVersion.attr, & dev_attr_FirmwareVersion.attr, & dev_attr_Version.attr,
        & dev_attr_Connected.attr, & dev_attr_OperationalMode.attr, & dev_attr_State.attr, & dev_attr_Watchdog.attr,
        & dev_attr_OperationProgress.attr, & dev_attr_LastFailed.attr, & dev_attr_TxBitRate.attr, & dev_attr_RxBitRate.attr,
        & dev_attr_TxATTNDR.attr, & dev_attr_RxATTNDR.attr, & dev_attr_AnnexType.attr, & dev_attr_GeneralFailure.attr,
        & dev_attr_InterleaveDpDn.attr, & dev_attr_InterleaveDpUp.attr, & dev_attr_RSCorrectedErrorsDn.attr, & dev_attr_RSUnCorrectedErrorsDn.attr,
        & dev_attr_RSCorrectedErrorsUp.attr, & dev_attr_RSUnCorrectedErrorsUp.attr, & dev_attr_InterleaveRDn.attr, & dev_attr_InterleaveRUp.attr,
        & dev_attr_BisRDn.attr, & dev_attr_BisRUp.attr, & dev_attr_INPdown.attr, & dev_attr_INPup.attr,
        & dev_attr_ShowtimeStart.attr, & dev_attr_ATURVendor.attr, & dev_attr_ATUCCountry.attr, & dev_attr_ATURANSIRev.attr,
        & dev_attr_ATURANSISTD.attr, & dev_attr_ATUCANSIRev.attr, & dev_attr_ATUCANSIId.attr, & dev_attr_ATUCANSISTD.attr,
        & dev_attr_DataBoost.attr, & dev_attr_LocalITUCountryCode.attr, & dev_attr_LocalSEF.attr, & dev_attr_LocalEndLOS.attr,
        & dev_attr_LocalSNRMargin.attr, & dev_attr_LocalLineAttn.attr, & dev_attr_RawAttn.attr, & dev_attr_LocalTxPower.attr,
        & dev_attr_RemoteTxPower.attr, & dev_attr_RemoteSEF.attr, & dev_attr_RemoteLOS.attr, & dev_attr_RemoteLineAttn.attr,
        & dev_attr_RemoteSNRMargin.attr, & dev_attr_LineUpCount.attr, & dev_attr_SRACnt.attr, & dev_attr_SRACntUp.attr,
        & dev_attr_ProfileStatus.attr, & dev_attr_Action.attr, & dev_attr_ActivateLine.attr, & dev_attr_LineStatus.attr,
        & dev_attr_HostControl.attr, & dev_attr_AutoStart.attr, & dev_attr_Failsafe.attr, & dev_attr_ShowtimeLed.attr,
        & dev_attr_Retrain.attr, & dev_attr_Defaults.attr, & dev_attr_LineMode.attr, & dev_attr_Profile.attr,
        & dev_attr_DetectNoise.attr, & dev_attr_BisAForceSNRMarginDn.attr, & dev_attr_BisMForceSNRMarginDn.attr, & dev_attr_BisAMaxMargin.attr,
        & dev_attr_BisMMaxMargin.attr, & dev_attr_AnnexAForceSNRMarginDn.attr, & dev_attr_AnnexAMaxMargin.attr, & dev_attr_AnnexMMaxMargin.attr,
        & dev_attr_SupportedAnnexes.attr, & dev_attr_Status.attr, & dev_attr_TotalStart.attr, & dev_attr_RecentShowtimeStart.attr,
        & dev_attr_TotalRxBlocks.attr, & dev_attr_TotalTxBlocks.attr, (struct attribute *)0};
static struct attribute_group solos_attr_group = {"parameters", 0, (struct attribute **)(& solos_attrs), 0};
static struct attribute *gpio_attrs[9U] =
  { & gpio_attr_GPIO1.attr.attr, & gpio_attr_GPIO2.attr.attr, & gpio_attr_GPIO3.attr.attr, & gpio_attr_GPIO4.attr.attr,
        & gpio_attr_GPIO5.attr.attr, & gpio_attr_PushButton.attr.attr, & gpio_attr_HardwareVersion.attr.attr, & gpio_attr_HardwareVariant.attr.attr,
        (struct attribute *)0};
static struct attribute_group gpio_attr_group = {"gpio", 0, (struct attribute **)(& gpio_attrs), 0};
static int flash_upgrade(struct solos_card *card , int chip )
{
  struct firmware const *fw ;
  char const *fw_name ;
  int blocksize ;
  int numblocks ;
  int offset ;
  int tmp ;
  unsigned int tmp___0 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___1 ;
  unsigned int tmp___2 ;
  int i ;
  uint32_t word ;
  unsigned int tmp___3 ;
  wait_queue_t __wait___0 ;
  long __ret___0 ;
  long __int___0 ;
  long tmp___4 ;
  unsigned int tmp___5 ;
  {
  blocksize = 0;
  numblocks = 0;
  switch (chip) {
  case 0:
  fw_name = "solos-FPGA.bin";
  if (card->atmel_flash != 0) {
    blocksize = 4224;
  } else {
    blocksize = 16384;
  }
  goto ldv_51291;
  case 1:
  fw_name = "solos-Firmware.bin";
  if (card->atmel_flash != 0) {
    blocksize = 4096;
  } else {
    blocksize = 16384;
  }
  goto ldv_51291;
  case 2: ;
  if (card->fpga_version > 2) {
    fw_name = "solos-db-FPGA.bin";
    if (card->atmel_flash != 0) {
      blocksize = 4224;
    } else {
      blocksize = 16384;
    }
  } else {
    _dev_info((struct device const *)(& (card->dev)->dev), "FPGA version doesn\'t support daughter board upgrades\n");
    return (-1);
  }
  goto ldv_51291;
  case 3: ;
  if (card->fpga_version > 2) {
    fw_name = "solos-Firmware.bin";
    if (card->atmel_flash != 0) {
      blocksize = 4096;
    } else {
      blocksize = 16384;
    }
  } else {
    _dev_info((struct device const *)(& (card->dev)->dev), "FPGA version doesn\'t support daughter board upgrades\n");
    return (-1);
  }
  goto ldv_51291;
  default: ;
  return (-19);
  }
  ldv_51291:
  tmp = request_firmware(& fw, fw_name, & (card->dev)->dev);
  if (tmp != 0) {
    return (-2);
  } else {
  }
  _dev_info((struct device const *)(& (card->dev)->dev), "Flash upgrade starting\n");
  iowrite32(1U, card->config_regs + 80UL);
  numblocks = (int )((unsigned long )fw->size / (unsigned long )blocksize);
  _dev_info((struct device const *)(& (card->dev)->dev), "Firmware size: %zd\n",
            fw->size);
  _dev_info((struct device const *)(& (card->dev)->dev), "Number of blocks: %d\n",
            numblocks);
  _dev_info((struct device const *)(& (card->dev)->dev), "Changing FPGA to Update mode\n");
  iowrite32(1U, card->config_regs + 92UL);
  ioread32(card->config_regs + 92UL);
  if (chip == 0 || chip == 2) {
    _dev_info((struct device const *)(& (card->dev)->dev), "Set FPGA Flash mode to FPGA Chip Erase\n");
  } else {
  }
  if (chip == 1 || chip == 3) {
    _dev_info((struct device const *)(& (card->dev)->dev), "Set FPGA Flash mode to Solos Chip Erase\n");
  } else {
  }
  iowrite32((u32 )(chip * 2), card->config_regs + 88UL);
  iowrite32(1U, card->config_regs + 108UL);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2871/dscv_tempdir/dscv/ri/43_2a/drivers/atm/solos-pci.c",
                708, 0);
  tmp___0 = ioread32(card->config_regs + 96UL);
  if (tmp___0 == 0U) {
    goto ldv_51296;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_51302:
  tmp___1 = prepare_to_wait_event(& card->fw_wq, & __wait, 2);
  __int = tmp___1;
  tmp___2 = ioread32(card->config_regs + 96UL);
  if (tmp___2 == 0U) {
    goto ldv_51301;
  } else {
  }
  schedule();
  goto ldv_51302;
  ldv_51301:
  finish_wait(& card->fw_wq, & __wait);
  ldv_51296:
  offset = 0;
  goto ldv_51318;
  ldv_51317:
  iowrite32(0U, card->config_regs + 108UL);
  iowrite32((u32 )(chip * 2 + 1), card->config_regs + 88UL);
  i = 0;
  goto ldv_51307;
  ldv_51306: ;
  if (card->atmel_flash != 0) {
    word = __swahb32p((__u32 const *)(fw->data + ((unsigned long )offset + (unsigned long )i)));
  } else {
    word = *((uint32_t *)(fw->data + ((unsigned long )offset + (unsigned long )i)));
  }
  if (card->fpga_version > 2) {
    iowrite32(word, card->buffers + ((unsigned long )(card->buffer_size * 8) + (unsigned long )i));
  } else {
    iowrite32(word, card->buffers + ((unsigned long )(card->buffer_size * 6) + (unsigned long )i));
  }
  i = i + 4;
  ldv_51307: ;
  if (i < blocksize) {
    goto ldv_51306;
  } else {
  }
  iowrite32((u32 )(offset / blocksize), card->config_regs + 100UL);
  iowrite32(1U, card->config_regs + 108UL);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2871/dscv_tempdir/dscv/ri/43_2a/drivers/atm/solos-pci.c",
                736, 0);
  tmp___3 = ioread32(card->config_regs + 96UL);
  if (tmp___3 == 0U) {
    goto ldv_51309;
  } else {
  }
  __ret___0 = 0L;
  INIT_LIST_HEAD(& __wait___0.task_list);
  __wait___0.flags = 0U;
  ldv_51315:
  tmp___4 = prepare_to_wait_event(& card->fw_wq, & __wait___0, 2);
  __int___0 = tmp___4;
  tmp___5 = ioread32(card->config_regs + 96UL);
  if (tmp___5 == 0U) {
    goto ldv_51314;
  } else {
  }
  schedule();
  goto ldv_51315;
  ldv_51314:
  finish_wait(& card->fw_wq, & __wait___0);
  ldv_51309:
  offset = offset + blocksize;
  ldv_51318: ;
  if ((unsigned long )offset < (unsigned long )fw->size) {
    goto ldv_51317;
  } else {
  }
  release_firmware(fw);
  iowrite32(0U, card->config_regs + 108UL);
  iowrite32(0U, card->config_regs + 92UL);
  iowrite32(0U, card->config_regs + 88UL);
  _dev_info((struct device const *)(& (card->dev)->dev), "Returning FPGA to Data mode\n");
  return (0);
}
}
static irqreturn_t solos_irq(int irq , void *dev_id )
{
  struct solos_card *card ;
  int handled ;
  {
  card = (struct solos_card *)dev_id;
  handled = 1;
  iowrite32(0U, card->config_regs + 112UL);
  if ((unsigned long )card->atmdev[0] != (unsigned long )((struct atm_dev *)0)) {
    tasklet_schedule(& card->tlet);
  } else {
    __wake_up(& card->fw_wq, 3U, 1, (void *)0);
  }
  return (handled != 0);
}
}
static void solos_bh(unsigned long card_arg )
{
  struct solos_card *card ;
  uint32_t card_flags ;
  uint32_t rx_done ;
  int port ;
  struct pkt_hdr _hdr ;
  struct pkt_hdr *header ;
  struct sk_buff *skb ;
  struct atm_vcc *vcc ;
  int size ;
  int tmp ;
  unsigned char *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  __u32 tmp___6 ;
  struct sk_buff *skb___0 ;
  struct sk_buff *tmp___7 ;
  dma_addr_t tmp___8 ;
  int tmp___9 ;
  {
  card = (struct solos_card *)card_arg;
  rx_done = 0U;
  card_flags = fpga_tx(card);
  port = 0;
  goto ldv_51346;
  ldv_51345: ;
  if (((uint32_t )(16 << port) & card_flags) != 0U) {
    if (card->using_dma != 0) {
      skb = card->rx_skb[port];
      card->rx_skb[port] = (struct sk_buff *)0;
      dma_unmap_single_attrs(& (card->dev)->dev, (dma_addr_t )((struct solos_skb_cb *)(& skb->cb))->dma_addr,
                             2048UL, 2, (struct dma_attrs *)0);
      header = (struct pkt_hdr *)skb->data;
      size = (int )header->size;
      skb_put(skb, (unsigned int )size + 8U);
      skb_pull(skb, 8U);
    } else {
      header = & _hdr;
      rx_done = (uint32_t )(16 << port) | rx_done;
      memcpy_fromio((void *)header, (void const volatile *)card->buffers + (unsigned long )((card->buffer_size * port) * 2),
                    8UL);
      size = (int )header->size;
      if ((unsigned long )size > (unsigned long )card->buffer_size - 8UL) {
        dev_warn((struct device const *)(& (card->dev)->dev), "Invalid buffer size\n");
        goto ldv_51338;
      } else {
      }
      skb = alloc_skb((unsigned int )(size + 1), 32U);
      if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
        tmp = net_ratelimit();
        if (tmp != 0) {
          dev_warn((struct device const *)(& (card->dev)->dev), "Failed to allocate sk_buff for RX\n");
        } else {
        }
        goto ldv_51338;
      } else {
      }
      tmp___0 = skb_put(skb, (unsigned int )size);
      memcpy_fromio((void *)tmp___0, (void const volatile *)(card->buffers + ((unsigned long )((card->buffer_size * port) * 2) + 8UL)),
                    (size_t )size);
    }
    if (atmdebug != 0) {
      _dev_info((struct device const *)(& (card->dev)->dev), "Received: port %d\n",
                port);
      _dev_info((struct device const *)(& (card->dev)->dev), "size: %d VPI: %d VCI: %d\n",
                size, (int )header->vpi, (int )header->vci);
      print_buffer(skb);
    } else {
    }
    switch ((int )header->type) {
    case 0:
    vcc = find_vcc(card->atmdev[port], (int )((short )header->vpi), (int )header->vci);
    if ((unsigned long )vcc == (unsigned long )((struct atm_vcc *)0)) {
      tmp___1 = net_ratelimit();
      if (tmp___1 != 0) {
        dev_warn((struct device const *)(& (card->dev)->dev), "Received packet for unknown VPI.VCI %d.%d on port %d\n",
                 (int )header->vpi, (int )header->vci, port);
      } else {
      }
      dev_kfree_skb_any(skb);
      goto ldv_51340;
    } else {
    }
    atm_charge(vcc, (int )skb->truesize);
    (*(vcc->push))(vcc, skb);
    atomic_inc(& (vcc->stats)->rx);
    goto ldv_51340;
    case 5:
    tmp___2 = process_status(card, port, skb);
    if (tmp___2 != 0) {
      tmp___3 = net_ratelimit();
      if (tmp___3 != 0) {
        dev_warn((struct device const *)(& (card->dev)->dev), "Bad status packet of %d bytes on port %d:\n",
                 skb->len, port);
        print_buffer(skb);
      } else {
      }
    } else {
    }
    dev_kfree_skb_any(skb);
    goto ldv_51340;
    case 1: ;
    default:
    tmp___4 = process_command(card, port, skb);
    if (tmp___4 != 0) {
      goto ldv_51340;
    } else {
    }
    spin_lock(& card->cli_queue_lock);
    tmp___6 = skb_queue_len((struct sk_buff_head const *)(& card->cli_queue) + (unsigned long )port);
    if (tmp___6 > 10U) {
      tmp___5 = net_ratelimit();
      if (tmp___5 != 0) {
        dev_warn((struct device const *)(& (card->dev)->dev), "Dropping console response on port %d\n",
                 port);
      } else {
      }
      dev_kfree_skb_any(skb);
    } else {
      skb_queue_tail((struct sk_buff_head *)(& card->cli_queue) + (unsigned long )port,
                     skb);
    }
    spin_unlock(& card->cli_queue_lock);
    goto ldv_51340;
    }
    ldv_51340: ;
  } else {
  }
  if ((card->using_dma != 0 && (unsigned long )card->atmdev[port] != (unsigned long )((struct atm_dev *)0)) && (unsigned long )card->rx_skb[port] == (unsigned long )((struct sk_buff *)0)) {
    tmp___7 = alloc_skb(2048U, 32U);
    skb___0 = tmp___7;
    if ((unsigned long )skb___0 != (unsigned long )((struct sk_buff *)0)) {
      tmp___8 = dma_map_single_attrs(& (card->dev)->dev, (void *)skb___0->data, 2048UL,
                                     2, (struct dma_attrs *)0);
      ((struct solos_skb_cb *)(& skb___0->cb))->dma_addr = (uint32_t )tmp___8;
      iowrite32(((struct solos_skb_cb *)(& skb___0->cb))->dma_addr, card->config_regs + (unsigned long )((port + 12) * 4));
      card->rx_skb[port] = skb___0;
    } else {
      tmp___9 = net_ratelimit();
      if (tmp___9 != 0) {
        dev_warn((struct device const *)(& (card->dev)->dev), "Failed to allocate RX skb");
      } else {
      }
      tasklet_schedule(& card->tlet);
    }
  } else {
  }
  ldv_51338:
  port = port + 1;
  ldv_51346: ;
  if (card->nr_ports > port) {
    goto ldv_51345;
  } else {
  }
  if (rx_done != 0U) {
    iowrite32(rx_done, card->config_regs + 124UL);
  } else {
  }
  return;
}
}
static struct atm_vcc *find_vcc(struct atm_dev *dev , short vpi , int vci )
{
  struct hlist_head *head ;
  struct atm_vcc *vcc ;
  struct sock *s ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct sock *tmp ;
  int tmp___0 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct sock *tmp___1 ;
  {
  vcc = (struct atm_vcc *)0;
  _raw_read_lock(& vcc_sklist_lock);
  head = (struct hlist_head *)(& vcc_hash) + ((unsigned long )vci & 31UL);
  ____ptr = head->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp = (struct sock *)__mptr + 0xffffffffffffffa0UL;
  } else {
    tmp = (struct sock *)0;
  }
  s = tmp;
  goto ldv_51366;
  ldv_51365:
  vcc = atm_sk(s);
  if ((((unsigned long )vcc->dev == (unsigned long )dev && vcc->vci == vci) && (int )vcc->vpi == (int )vpi) && (unsigned int )vcc->qos.rxtp.traffic_class != 0U) {
    tmp___0 = constant_test_bit(1L, (unsigned long const volatile *)(& vcc->flags));
    if (tmp___0 != 0) {
      goto out;
    } else {
    }
  } else {
  }
  ____ptr___0 = s->__sk_common.__annonCompField108.skc_node.next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___1 = (struct sock *)__mptr___0 + 0xffffffffffffffa0UL;
  } else {
    tmp___1 = (struct sock *)0;
  }
  s = tmp___1;
  ldv_51366: ;
  if ((unsigned long )s != (unsigned long )((struct sock *)0)) {
    goto ldv_51365;
  } else {
  }
  vcc = (struct atm_vcc *)0;
  out:
  _raw_read_unlock(& vcc_sklist_lock);
  return (vcc);
}
}
static int popen(struct atm_vcc *vcc )
{
  struct solos_card *card ;
  struct sk_buff *skb ;
  struct pkt_hdr *header ;
  int tmp ;
  unsigned char *tmp___0 ;
  {
  card = (struct solos_card *)(vcc->dev)->dev_data;
  if ((unsigned int )vcc->qos.aal != 5U) {
    dev_warn((struct device const *)(& (card->dev)->dev), "Unsupported ATM type %d\n",
             (int )vcc->qos.aal);
    return (-22);
  } else {
  }
  skb = alloc_skb(8U, 208U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    tmp = net_ratelimit();
    if (tmp != 0) {
      dev_warn((struct device const *)(& (card->dev)->dev), "Failed to allocate sk_buff in popen()\n");
    } else {
    }
    return (-12);
  } else {
  }
  tmp___0 = skb_put(skb, 8U);
  header = (struct pkt_hdr *)tmp___0;
  header->size = 0U;
  header->vpi = (unsigned short )vcc->vpi;
  header->vci = (unsigned short )vcc->vci;
  header->type = 3U;
  fpga_queue(card, (int )((long )(vcc->dev)->phy_data), skb, (struct atm_vcc *)0);
  set_bit(0L, (unsigned long volatile *)(& vcc->flags));
  set_bit(1L, (unsigned long volatile *)(& vcc->flags));
  return (0);
}
}
static void pclose(struct atm_vcc *vcc )
{
  struct solos_card *card ;
  unsigned char port ;
  struct sk_buff *skb ;
  struct sk_buff *tmpskb ;
  struct pkt_hdr *header ;
  unsigned char *tmp ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___0 ;
  bool __cond ;
  int tmp___1 ;
  bool __cond___0 ;
  int tmp___2 ;
  {
  card = (struct solos_card *)(vcc->dev)->dev_data;
  port = (unsigned char )((long )(vcc->dev)->phy_data);
  spin_lock(& card->tx_queue_lock);
  skb = ((struct sk_buff_head *)(& card->tx_queue) + (unsigned long )port)->next;
  tmpskb = skb->__annonCompField87.__annonCompField86.next;
  goto ldv_51383;
  ldv_51382: ;
  if ((unsigned long )((struct solos_skb_cb *)(& skb->cb))->vcc == (unsigned long )vcc) {
    skb_unlink(skb, (struct sk_buff_head *)(& card->tx_queue) + (unsigned long )port);
    solos_pop(vcc, skb);
  } else {
  }
  skb = tmpskb;
  tmpskb = skb->__annonCompField87.__annonCompField86.next;
  ldv_51383: ;
  if ((unsigned long )((struct sk_buff *)(& card->tx_queue) + (unsigned long )port) != (unsigned long )skb) {
    goto ldv_51382;
  } else {
  }
  spin_unlock(& card->tx_queue_lock);
  skb = alloc_skb(8U, 208U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    dev_warn((struct device const *)(& (card->dev)->dev), "Failed to allocate sk_buff in pclose()\n");
    return;
  } else {
  }
  tmp = skb_put(skb, 8U);
  header = (struct pkt_hdr *)tmp;
  header->size = 0U;
  header->vpi = (unsigned short )vcc->vpi;
  header->vci = (unsigned short )vcc->vci;
  header->type = 4U;
  skb_get(skb);
  fpga_queue(card, (int )port, skb, (struct atm_vcc *)0);
  __ret = 1250L;
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2871/dscv_tempdir/dscv/ri/43_2a/drivers/atm/solos-pci.c",
                981, 0);
  tmp___2 = skb_shared((struct sk_buff const *)skb);
  __cond___0 = tmp___2 == 0;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    __ret___0 = 1250L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_51395:
    tmp___0 = prepare_to_wait_event(& card->param_wq, & __wait, 2);
    __int = tmp___0;
    tmp___1 = skb_shared((struct sk_buff const *)skb);
    __cond = tmp___1 == 0;
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_51394;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_51395;
    ldv_51394:
    finish_wait(& card->param_wq, & __wait);
    __ret = __ret___0;
  } else {
  }
  if (__ret == 0L) {
    dev_warn((struct device const *)(& (card->dev)->dev), "Timeout waiting for VCC close on port %d\n",
             (int )port);
  } else {
  }
  consume_skb(skb);
  tasklet_unlock_wait(& card->tlet);
  clear_bit(0L, (unsigned long volatile *)(& vcc->flags));
  return;
}
}
static int print_buffer(struct sk_buff *buf )
{
  int len ;
  int i ;
  char msg[500U] ;
  char item[10U] ;
  {
  len = (int )buf->len;
  i = 0;
  goto ldv_51406;
  ldv_51405: ;
  if (((unsigned int )i & 7U) == 0U) {
    sprintf((char *)(& msg), "%02X: ", i);
  } else {
  }
  sprintf((char *)(& item), "%02X ", (int )*(buf->data + (unsigned long )i));
  strcat((char *)(& msg), (char const *)(& item));
  if (i % 8 == 7) {
    sprintf((char *)(& item), "\n");
    strcat((char *)(& msg), (char const *)(& item));
    printk("\017%s", (char *)(& msg));
  } else {
  }
  i = i + 1;
  ldv_51406: ;
  if (i < len) {
    goto ldv_51405;
  } else {
  }
  if (((unsigned int )i & 7U) != 0U) {
    sprintf((char *)(& item), "\n");
    strcat((char *)(& msg), (char const *)(& item));
    printk("\017%s", (char *)(& msg));
  } else {
  }
  printk("\017\n");
  return (0);
}
}
static void fpga_queue(struct solos_card *card , int port , struct sk_buff *skb ,
                       struct atm_vcc *vcc )
{
  int old_len ;
  unsigned long flags ;
  __u32 tmp ;
  {
  ((struct solos_skb_cb *)(& skb->cb))->vcc = vcc;
  ldv_spin_lock();
  tmp = skb_queue_len((struct sk_buff_head const *)(& card->tx_queue) + (unsigned long )port);
  old_len = (int )tmp;
  skb_queue_tail((struct sk_buff_head *)(& card->tx_queue) + (unsigned long )port,
                 skb);
  if (old_len == 0) {
    card->tx_mask = card->tx_mask | (1 << port);
  } else {
  }
  spin_unlock_irqrestore(& card->tx_queue_lock, flags);
  if (old_len == 0) {
    fpga_tx(card);
  } else {
  }
  return;
}
}
static uint32_t fpga_tx(struct solos_card *card )
{
  uint32_t tx_pending ;
  uint32_t card_flags ;
  uint32_t tx_started ;
  struct sk_buff *skb ;
  struct atm_vcc *vcc ;
  unsigned char port ;
  unsigned long flags ;
  struct sk_buff *oldskb ;
  unsigned char *data ;
  dma_addr_t tmp ;
  struct pkt_hdr *header ;
  int size ;
  {
  tx_started = 0U;
  ldv_spin_lock();
  card_flags = ioread32(card->config_regs + 124UL);
  tx_pending = (uint32_t )card->tx_mask & ~ card_flags;
  port = 0U;
  goto ldv_51432;
  ldv_51431: ;
  if ((int )tx_pending & 1) {
    oldskb = card->tx_skb[(int )port];
    if ((unsigned long )oldskb != (unsigned long )((struct sk_buff *)0)) {
      dma_unmap_single_attrs(& (card->dev)->dev, (dma_addr_t )((struct solos_skb_cb *)(& oldskb->cb))->dma_addr,
                             (size_t )oldskb->len, 1, (struct dma_attrs *)0);
      card->tx_skb[(int )port] = (struct sk_buff *)0;
    } else {
    }
    spin_lock(& card->tx_queue_lock);
    skb = skb_dequeue((struct sk_buff_head *)(& card->tx_queue) + (unsigned long )port);
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      card->tx_mask = card->tx_mask & ~ (1 << (int )port);
    } else {
    }
    spin_unlock(& card->tx_queue_lock);
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0) && card->using_dma == 0) {
      memcpy_toio((void volatile *)(card->buffers + ((unsigned long )(((int )port * card->buffer_size) * 2) + (unsigned long )card->buffer_size)),
                  (void const *)skb->data, (size_t )skb->len);
      tx_started = (uint32_t )(1 << (int )port) | tx_started;
      oldskb = skb;
    } else
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0) && card->using_dma != 0) {
      data = skb->data;
      if (((unsigned long )card->dma_alignment & (unsigned long )data) != 0UL) {
        data = card->dma_bounce + (unsigned long )((int )port * 2048);
        memcpy((void *)data, (void const *)skb->data, (size_t )skb->len);
      } else {
      }
      tmp = dma_map_single_attrs(& (card->dev)->dev, (void *)data, (size_t )skb->len,
                                 1, (struct dma_attrs *)0);
      ((struct solos_skb_cb *)(& skb->cb))->dma_addr = (uint32_t )tmp;
      card->tx_skb[(int )port] = skb;
      iowrite32(((struct solos_skb_cb *)(& skb->cb))->dma_addr, card->config_regs + (unsigned long )(((int )port + 16) * 4));
    } else {
    }
    if ((unsigned long )oldskb == (unsigned long )((struct sk_buff *)0)) {
      goto ldv_51428;
    } else {
    }
    if (atmdebug != 0) {
      header = (struct pkt_hdr *)oldskb->data;
      size = (int )header->size;
      skb_pull(oldskb, 8U);
      _dev_info((struct device const *)(& (card->dev)->dev), "Transmitted: port %d\n",
                (int )port);
      _dev_info((struct device const *)(& (card->dev)->dev), "size: %d VPI: %d VCI: %d\n",
                size, (int )header->vpi, (int )header->vci);
      print_buffer(oldskb);
    } else {
    }
    vcc = ((struct solos_skb_cb *)(& oldskb->cb))->vcc;
    if ((unsigned long )vcc != (unsigned long )((struct atm_vcc *)0)) {
      atomic_inc(& (vcc->stats)->tx);
      solos_pop(vcc, oldskb);
    } else {
      dev_kfree_skb_irq(oldskb);
      __wake_up(& card->param_wq, 3U, 1, (void *)0);
    }
  } else {
  }
  ldv_51428:
  tx_pending = tx_pending >> 1;
  port = (unsigned char )((int )port + 1);
  ldv_51432: ;
  if (tx_pending != 0U) {
    goto ldv_51431;
  } else {
  }
  if (tx_started != 0U) {
    iowrite32(tx_started, card->config_regs + 124UL);
  } else {
  }
  spin_unlock_irqrestore(& card->tx_lock, flags);
  return (card_flags);
}
}
static int psend(struct atm_vcc *vcc , struct sk_buff *skb )
{
  struct solos_card *card ;
  struct pkt_hdr *header ;
  int pktlen ;
  int expand_by ;
  int ret ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  unsigned char *tmp___2 ;
  {
  card = (struct solos_card *)(vcc->dev)->dev_data;
  pktlen = (int )skb->len;
  if ((unsigned int )pktlen > 2040U) {
    dev_warn((struct device const *)(& (card->dev)->dev), "Length of PDU is too large. Dropping PDU.\n");
    solos_pop(vcc, skb);
    return (0);
  } else {
  }
  tmp___1 = skb_clone_writable((struct sk_buff const *)skb, 8U);
  if (tmp___1 == 0) {
    expand_by = 0;
    tmp___0 = skb_headroom((struct sk_buff const *)skb);
    if (tmp___0 <= 7U) {
      tmp = skb_headroom((struct sk_buff const *)skb);
      expand_by = (int )(8U - tmp);
    } else {
    }
    ret = ldv_pskb_expand_head_37(skb, expand_by, 0, 32U);
    if (ret != 0) {
      dev_warn((struct device const *)(& (card->dev)->dev), "pskb_expand_head failed.\n");
      solos_pop(vcc, skb);
      return (ret);
    } else {
    }
  } else {
  }
  tmp___2 = skb_push(skb, 8U);
  header = (struct pkt_hdr *)tmp___2;
  header->size = (unsigned short )pktlen;
  header->vpi = (unsigned short )vcc->vpi;
  header->vci = (unsigned short )vcc->vci;
  header->type = 0U;
  fpga_queue(card, (int )((long )(vcc->dev)->phy_data), skb, vcc);
  return (0);
}
}
static struct atmdev_ops fpga_ops =
     {0, & popen, & pclose, (int (*)(struct atm_dev * , unsigned int , void * ))0,
    0, (int (*)(struct atm_vcc * , int , int , void * , int ))0, (int (*)(struct atm_vcc * ,
                                                                             int ,
                                                                             int ,
                                                                             void * ,
                                                                             unsigned int ))0,
    & psend, (int (*)(struct atm_vcc * , void * , int ))0, (void (*)(struct atm_dev * ,
                                                                      unsigned char ,
                                                                      unsigned long ))0,
    (unsigned char (*)(struct atm_dev * , unsigned long ))0, (int (*)(struct atm_vcc * ,
                                                                       struct atm_qos * ,
                                                                       int ))0, (int (*)(struct atm_dev * ,
                                                                                          loff_t * ,
                                                                                          char * ))0,
    & __this_module};
static int fpga_probe(struct pci_dev *dev , struct pci_device_id const *id )
{
  int err ;
  uint16_t fpga_ver ;
  uint8_t major_ver ;
  uint8_t minor_ver ;
  uint32_t data32 ;
  struct solos_card *card ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  void *tmp___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp = kmalloc(1448UL, 208U);
  card = (struct solos_card *)tmp;
  if ((unsigned long )card == (unsigned long )((struct solos_card *)0)) {
    return (-12);
  } else {
  }
  card->dev = dev;
  __init_waitqueue_head(& card->fw_wq, "&card->fw_wq", & __key);
  __init_waitqueue_head(& card->param_wq, "&card->param_wq", & __key___0);
  err = pci_enable_device(dev);
  if (err != 0) {
    dev_warn((struct device const *)(& dev->dev), "Failed to enable PCI device\n");
    goto out;
  } else {
  }
  err = dma_set_mask_and_coherent(& dev->dev, 4294967295ULL);
  if (err != 0) {
    dev_warn((struct device const *)(& dev->dev), "Failed to set 32-bit DMA mask\n");
    goto out;
  } else {
  }
  err = pci_request_regions(dev, "solos");
  if (err != 0) {
    dev_warn((struct device const *)(& dev->dev), "Failed to request regions\n");
    goto out;
  } else {
  }
  card->config_regs = pci_iomap(dev, 0, 128UL);
  if ((unsigned long )card->config_regs == (unsigned long )((void *)0)) {
    dev_warn((struct device const *)(& dev->dev), "Failed to ioremap config registers\n");
    err = -12;
    goto out_release_regions;
  } else {
  }
  card->buffers = pci_iomap(dev, 1, 32768UL);
  if ((unsigned long )card->buffers == (unsigned long )((void *)0)) {
    dev_warn((struct device const *)(& dev->dev), "Failed to ioremap data buffers\n");
    err = -12;
    goto out_unmap_config;
  } else {
  }
  if (reset != 0) {
    iowrite32(1U, card->config_regs + 92UL);
    data32 = ioread32(card->config_regs + 92UL);
    iowrite32(0U, card->config_regs + 92UL);
    data32 = ioread32(card->config_regs + 92UL);
  } else {
  }
  data32 = ioread32(card->config_regs + 116UL);
  fpga_ver = (uint16_t )data32;
  major_ver = (uint8_t )(data32 >> 24);
  minor_ver = (uint8_t )((data32 & 16711680U) >> 16);
  card->fpga_version = ((int )major_ver << 8) + (int )minor_ver;
  if (card->fpga_version > 2) {
    card->buffer_size = 2048;
  } else {
    card->buffer_size = 4096;
  }
  _dev_info((struct device const *)(& dev->dev), "Solos FPGA Version %d.%02d svn-%d\n",
            (int )major_ver, (int )minor_ver, (int )fpga_ver);
  if ((unsigned int )fpga_ver <= 36U && (((fpga_upgrade != 0 || firmware_upgrade != 0) || db_fpga_upgrade != 0) || db_firmware_upgrade != 0)) {
    dev_warn((struct device const *)(& dev->dev), "FPGA too old; cannot upgrade flash. Use JTAG.\n");
    firmware_upgrade = 0;
    fpga_upgrade = firmware_upgrade;
    db_firmware_upgrade = 0;
    db_fpga_upgrade = db_firmware_upgrade;
  } else {
  }
  if ((unsigned int )fpga_ver <= 38U) {
    card->atmel_flash = 1;
  } else {
    card->atmel_flash = 0;
  }
  data32 = ioread32(card->config_regs + 104UL);
  card->nr_ports = (int )data32 & 255;
  if (card->fpga_version > 3) {
    pci_set_master(dev);
    card->using_dma = 1;
    card->dma_alignment = 3;
    tmp___0 = kmalloc((size_t )(card->nr_ports * 2048), 208U);
    card->dma_bounce = (unsigned char *)tmp___0;
    if ((unsigned long )card->dma_bounce == (unsigned long )((unsigned char *)0U)) {
      dev_warn((struct device const *)(& (card->dev)->dev), "Failed to allocate DMA bounce buffers\n");
      err = -12;
      goto out_unmap_both;
    } else {
    }
  } else {
    card->using_dma = 0;
    iowrite32(240U, card->config_regs + 124UL);
  }
  pci_set_drvdata(dev, (void *)card);
  tasklet_init(& card->tlet, & solos_bh, (unsigned long )card);
  spinlock_check(& card->tx_lock);
  __raw_spin_lock_init(& card->tx_lock.__annonCompField18.rlock, "&(&card->tx_lock)->rlock",
                       & __key___1);
  spinlock_check(& card->tx_queue_lock);
  __raw_spin_lock_init(& card->tx_queue_lock.__annonCompField18.rlock, "&(&card->tx_queue_lock)->rlock",
                       & __key___2);
  spinlock_check(& card->cli_queue_lock);
  __raw_spin_lock_init(& card->cli_queue_lock.__annonCompField18.rlock, "&(&card->cli_queue_lock)->rlock",
                       & __key___3);
  spinlock_check(& card->param_queue_lock);
  __raw_spin_lock_init(& card->param_queue_lock.__annonCompField18.rlock, "&(&card->param_queue_lock)->rlock",
                       & __key___4);
  INIT_LIST_HEAD(& card->param_queue);
  err = ldv_request_irq_38(dev->irq, & solos_irq, 128UL, "solos-pci", (void *)card);
  if (err != 0) {
    descriptor.modname = "solos_pci";
    descriptor.function = "fpga_probe";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2871/dscv_tempdir/dscv/ri/43_2a/drivers/atm/solos-pci.c";
    descriptor.format = "Failed to request interrupt IRQ: %d\n";
    descriptor.lineno = 1306U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (card->dev)->dev),
                        "Failed to request interrupt IRQ: %d\n", dev->irq);
    } else {
    }
    goto out_unmap_both;
  } else {
  }
  iowrite32(1U, card->config_regs + 120UL);
  if (fpga_upgrade != 0) {
    flash_upgrade(card, 0);
  } else {
  }
  if (firmware_upgrade != 0) {
    flash_upgrade(card, 1);
  } else {
  }
  if (db_fpga_upgrade != 0) {
    flash_upgrade(card, 2);
  } else {
  }
  if (db_firmware_upgrade != 0) {
    flash_upgrade(card, 3);
  } else {
  }
  err = atm_init(card, & dev->dev);
  if (err != 0) {
    goto out_free_irq;
  } else {
  }
  if (card->fpga_version > 3) {
    tmp___2 = sysfs_create_group(& (card->dev)->dev.kobj, (struct attribute_group const *)(& gpio_attr_group));
    if (tmp___2 != 0) {
      dev_err((struct device const *)(& (card->dev)->dev), "Could not register parameter group for GPIOs\n");
    } else {
    }
  } else {
  }
  return (0);
  out_free_irq:
  iowrite32(0U, card->config_regs + 120UL);
  ldv_free_irq_39(dev->irq, (void *)card);
  tasklet_kill(& card->tlet);
  out_unmap_both:
  kfree((void const *)card->dma_bounce);
  pci_iounmap(dev, card->buffers);
  out_unmap_config:
  pci_iounmap(dev, card->config_regs);
  out_release_regions:
  pci_release_regions(dev);
  out:
  kfree((void const *)card);
  return (err);
}
}
static int atm_init(struct solos_card *card , struct device *parent )
{
  int i ;
  struct sk_buff *skb ;
  struct pkt_hdr *header ;
  int tmp ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  {
  i = 0;
  goto ldv_51476;
  ldv_51475:
  skb_queue_head_init((struct sk_buff_head *)(& card->tx_queue) + (unsigned long )i);
  skb_queue_head_init((struct sk_buff_head *)(& card->cli_queue) + (unsigned long )i);
  card->atmdev[i] = ldv_atm_dev_register_40("solos-pci", parent, (struct atmdev_ops const *)(& fpga_ops),
                                            -1, (unsigned long *)0UL);
  if ((unsigned long )card->atmdev[i] == (unsigned long )((struct atm_dev *)0)) {
    dev_err((struct device const *)(& (card->dev)->dev), "Could not register ATM device %d\n",
            i);
    atm_remove(card);
    return (-19);
  } else {
  }
  tmp = device_create_file(& (card->atmdev[i])->class_dev, (struct device_attribute const *)(& dev_attr_console));
  if (tmp != 0) {
    dev_err((struct device const *)(& (card->dev)->dev), "Could not register console for ATM device %d\n",
            i);
  } else {
  }
  tmp___0 = sysfs_create_group(& (card->atmdev[i])->class_dev.kobj, (struct attribute_group const *)(& solos_attr_group));
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (card->dev)->dev), "Could not register parameter group for ATM device %d\n",
            i);
  } else {
  }
  _dev_info((struct device const *)(& (card->dev)->dev), "Registered ATM device %d\n",
            (card->atmdev[i])->number);
  (card->atmdev[i])->ci_range.vpi_bits = 8;
  (card->atmdev[i])->ci_range.vci_bits = 16;
  (card->atmdev[i])->dev_data = (void *)card;
  (card->atmdev[i])->phy_data = (void *)((unsigned long )i);
  atm_dev_signal_change(card->atmdev[i], 2);
  skb = alloc_skb(8U, 208U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    dev_warn((struct device const *)(& (card->dev)->dev), "Failed to allocate sk_buff in atm_init()\n");
    goto ldv_51474;
  } else {
  }
  tmp___1 = skb_put(skb, 8U);
  header = (struct pkt_hdr *)tmp___1;
  header->size = 0U;
  header->vpi = 0U;
  header->vci = 0U;
  header->type = 5U;
  fpga_queue(card, i, skb, (struct atm_vcc *)0);
  ldv_51474:
  i = i + 1;
  ldv_51476: ;
  if (card->nr_ports > i) {
    goto ldv_51475;
  } else {
  }
  return (0);
}
}
static void atm_remove(struct solos_card *card )
{
  int i ;
  struct sk_buff *skb ;
  {
  i = 0;
  goto ldv_51487;
  ldv_51486: ;
  if ((unsigned long )card->atmdev[i] != (unsigned long )((struct atm_dev *)0)) {
    _dev_info((struct device const *)(& (card->dev)->dev), "Unregistering ATM device %d\n",
              (card->atmdev[i])->number);
    sysfs_remove_group(& (card->atmdev[i])->class_dev.kobj, (struct attribute_group const *)(& solos_attr_group));
    ldv_atm_dev_deregister_41(card->atmdev[i]);
    skb = card->rx_skb[i];
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      dma_unmap_single_attrs(& (card->dev)->dev, (dma_addr_t )((struct solos_skb_cb *)(& skb->cb))->dma_addr,
                             2048UL, 2, (struct dma_attrs *)0);
      consume_skb(skb);
    } else {
    }
    skb = card->tx_skb[i];
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      dma_unmap_single_attrs(& (card->dev)->dev, (dma_addr_t )((struct solos_skb_cb *)(& skb->cb))->dma_addr,
                             (size_t )skb->len, 1, (struct dma_attrs *)0);
      consume_skb(skb);
    } else {
    }
    goto ldv_51484;
    ldv_51483:
    consume_skb(skb);
    ldv_51484:
    skb = skb_dequeue((struct sk_buff_head *)(& card->tx_queue) + (unsigned long )i);
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      goto ldv_51483;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_51487: ;
  if (card->nr_ports > i) {
    goto ldv_51486;
  } else {
  }
  return;
}
}
static void fpga_remove(struct pci_dev *dev )
{
  struct solos_card *card ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(dev);
  card = (struct solos_card *)tmp;
  iowrite32(0U, card->config_regs + 120UL);
  iowrite32(1U, card->config_regs + 92UL);
  ioread32(card->config_regs + 92UL);
  if (card->fpga_version > 3) {
    sysfs_remove_group(& (card->dev)->dev.kobj, (struct attribute_group const *)(& gpio_attr_group));
  } else {
  }
  atm_remove(card);
  ldv_free_irq_42(dev->irq, (void *)card);
  tasklet_kill(& card->tlet);
  kfree((void const *)card->dma_bounce);
  iowrite32(0U, card->config_regs + 92UL);
  ioread32(card->config_regs + 92UL);
  pci_iounmap(dev, card->buffers);
  pci_iounmap(dev, card->config_regs);
  pci_release_regions(dev);
  pci_disable_device(dev);
  kfree((void const *)card);
  return;
}
}
static struct pci_device_id fpga_pci_tbl[2U] = { {4334U, 768U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__fpga_pci_tbl_device_table[2U] ;
static struct pci_driver fpga_driver =
     {{0, 0}, "solos", (struct pci_device_id const *)(& fpga_pci_tbl), & fpga_probe,
    & fpga_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0,
                                         0, 0, 0, 0}, {{{{{{0}}, 0U, 0U, 0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}}}},
                                                       {0, 0}}};
static int solos_pci_init(void)
{
  int tmp ;
  {
  printk("\016Solos PCI Driver Version %s\n", (char *)"1.04");
  tmp = ldv___pci_register_driver_43(& fpga_driver, & __this_module, "solos_pci");
  return (tmp);
}
}
static void solos_pci_exit(void)
{
  {
  ldv_pci_unregister_driver_44(& fpga_driver);
  printk("\016Solos PCI Driver %s Unloaded\n", (char *)"1.04");
  return;
}
}
extern int ldv_shutdown_2(void) ;
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
int ldv_retval_2 ;
void ldv_initialize_device_attribute_32(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_AutoStart_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_AutoStart_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_22(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_BisAMaxMargin_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_BisAMaxMargin_group1 = (struct device *)tmp___0;
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& solos_irq)) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_initialize_device_attribute_23(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_BisMForceSNRMarginDn_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_BisMForceSNRMarginDn_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_30(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_ShowtimeLed_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_ShowtimeLed_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_pci_driver_2(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  fpga_driver_group1 = (struct pci_dev *)tmp;
  return;
}
}
void ldv_initialize_device_attribute_26(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_Profile_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_Profile_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_geos_gpio_attr_9(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  gpio_attr_GPIO3_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  gpio_attr_GPIO3_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_28(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_Defaults_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_Defaults_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_21(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_BisMMaxMargin_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_BisMMaxMargin_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_24(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_BisAForceSNRMarginDn_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_BisAForceSNRMarginDn_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_geos_gpio_attr_10(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  gpio_attr_GPIO2_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  gpio_attr_GPIO2_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_atmdev_ops_3(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1640UL);
  fpga_ops_group0 = (struct atm_vcc *)tmp;
  return;
}
}
void ldv_initialize_device_attribute_35(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_ActivateLine_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_ActivateLine_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_90(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_console_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_console_group1 = (struct device *)tmp___0;
  return;
}
}
void disable_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 != 0 && line == ldv_irq_line_1_0) {
    ldv_irq_1_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_1 != 0 && line == ldv_irq_line_1_1) {
    ldv_irq_1_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_2 != 0 && line == ldv_irq_line_1_2) {
    ldv_irq_1_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_3 != 0 && line == ldv_irq_line_1_3) {
    ldv_irq_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
void activate_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 == 0) {
    ldv_irq_line_1_0 = line;
    ldv_irq_data_1_0 = data;
    ldv_irq_1_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_1 == 0) {
    ldv_irq_line_1_1 = line;
    ldv_irq_data_1_1 = data;
    ldv_irq_1_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_2 == 0) {
    ldv_irq_line_1_2 = line;
    ldv_irq_data_1_2 = data;
    ldv_irq_1_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_3 == 0) {
    ldv_irq_line_1_3 = line;
    ldv_irq_data_1_3 = data;
    ldv_irq_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_device_attribute_18(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_AnnexMMaxMargin_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_AnnexMMaxMargin_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_20(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_AnnexAForceSNRMarginDn_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_AnnexAForceSNRMarginDn_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_33(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_HostControl_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_HostControl_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_31(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_Failsafe_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_Failsafe_group1 = (struct device *)tmp___0;
  return;
}
}
void choose_interrupt_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_0, ldv_irq_line_1_0, ldv_irq_data_1_0);
  goto ldv_51592;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_51592;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_51592;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_51592;
  default:
  ldv_stop();
  }
  ldv_51592: ;
  return;
}
}
void ldv_initialize_device_attribute_29(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_Retrain_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_Retrain_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_36(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_Action_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_Action_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_geos_gpio_attr_8(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  gpio_attr_GPIO4_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  gpio_attr_GPIO4_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_25(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_DetectNoise_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_DetectNoise_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_19(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_AnnexAMaxMargin_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_AnnexAMaxMargin_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_geos_gpio_attr_11(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  gpio_attr_GPIO1_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  gpio_attr_GPIO1_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_geos_gpio_attr_7(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  gpio_attr_GPIO5_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  gpio_attr_GPIO5_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_27(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_LineMode_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_LineMode_group1 = (struct device *)tmp___0;
  return;
}
}
int ldv_irq_1(int state , int line , void *data )
{
  irqreturn_t irq_retval ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = __VERIFIER_nondet_int();
  irq_retval = (irqreturn_t )tmp;
  if (state != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = solos_irq(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_51628;
    default:
    ldv_stop();
    }
    ldv_51628: ;
  } else {
  }
  return (state);
}
}
int main(void)
{
  size_t ldvarg1 ;
  char *ldvarg0 ;
  void *tmp ;
  char *ldvarg2 ;
  void *tmp___0 ;
  size_t ldvarg4 ;
  char *ldvarg3 ;
  void *tmp___1 ;
  char *ldvarg5 ;
  void *tmp___2 ;
  char *ldvarg8 ;
  void *tmp___3 ;
  size_t ldvarg7 ;
  char *ldvarg6 ;
  void *tmp___4 ;
  struct device_attribute *ldvarg11 ;
  void *tmp___5 ;
  char *ldvarg10 ;
  void *tmp___6 ;
  struct device *ldvarg9 ;
  void *tmp___7 ;
  char *ldvarg14 ;
  void *tmp___8 ;
  size_t ldvarg13 ;
  char *ldvarg12 ;
  void *tmp___9 ;
  struct device_attribute *ldvarg17 ;
  void *tmp___10 ;
  char *ldvarg16 ;
  void *tmp___11 ;
  struct device *ldvarg15 ;
  void *tmp___12 ;
  char *ldvarg18 ;
  void *tmp___13 ;
  char *ldvarg20 ;
  void *tmp___14 ;
  size_t ldvarg19 ;
  struct device *ldvarg21 ;
  void *tmp___15 ;
  struct device_attribute *ldvarg23 ;
  void *tmp___16 ;
  char *ldvarg22 ;
  void *tmp___17 ;
  char *ldvarg24 ;
  void *tmp___18 ;
  char *ldvarg26 ;
  void *tmp___19 ;
  size_t ldvarg25 ;
  char *ldvarg27 ;
  void *tmp___20 ;
  char *ldvarg29 ;
  void *tmp___21 ;
  size_t ldvarg28 ;
  struct device_attribute *ldvarg32 ;
  void *tmp___22 ;
  char *ldvarg31 ;
  void *tmp___23 ;
  struct device *ldvarg30 ;
  void *tmp___24 ;
  struct device_attribute *ldvarg35 ;
  void *tmp___25 ;
  char *ldvarg34 ;
  void *tmp___26 ;
  struct device *ldvarg33 ;
  void *tmp___27 ;
  char *ldvarg37 ;
  void *tmp___28 ;
  struct device *ldvarg36 ;
  void *tmp___29 ;
  struct device_attribute *ldvarg38 ;
  void *tmp___30 ;
  struct device *ldvarg39 ;
  void *tmp___31 ;
  struct device_attribute *ldvarg41 ;
  void *tmp___32 ;
  char *ldvarg40 ;
  void *tmp___33 ;
  char *ldvarg43 ;
  void *tmp___34 ;
  struct device *ldvarg42 ;
  void *tmp___35 ;
  struct device_attribute *ldvarg44 ;
  void *tmp___36 ;
  struct device *ldvarg45 ;
  void *tmp___37 ;
  struct device_attribute *ldvarg47 ;
  void *tmp___38 ;
  char *ldvarg46 ;
  void *tmp___39 ;
  char *ldvarg48 ;
  void *tmp___40 ;
  size_t ldvarg49 ;
  char *ldvarg50 ;
  void *tmp___41 ;
  struct device *ldvarg51 ;
  void *tmp___42 ;
  struct device_attribute *ldvarg53 ;
  void *tmp___43 ;
  char *ldvarg52 ;
  void *tmp___44 ;
  struct device *ldvarg54 ;
  void *tmp___45 ;
  char *ldvarg55 ;
  void *tmp___46 ;
  struct device_attribute *ldvarg56 ;
  void *tmp___47 ;
  char *ldvarg57 ;
  void *tmp___48 ;
  size_t ldvarg58 ;
  char *ldvarg59 ;
  void *tmp___49 ;
  char *ldvarg61 ;
  void *tmp___50 ;
  struct device *ldvarg60 ;
  void *tmp___51 ;
  struct device_attribute *ldvarg62 ;
  void *tmp___52 ;
  char *ldvarg65 ;
  void *tmp___53 ;
  char *ldvarg63 ;
  void *tmp___54 ;
  size_t ldvarg64 ;
  size_t ldvarg67 ;
  char *ldvarg66 ;
  void *tmp___55 ;
  char *ldvarg68 ;
  void *tmp___56 ;
  size_t ldvarg70 ;
  char *ldvarg71 ;
  void *tmp___57 ;
  char *ldvarg69 ;
  void *tmp___58 ;
  size_t ldvarg73 ;
  char *ldvarg74 ;
  void *tmp___59 ;
  char *ldvarg72 ;
  void *tmp___60 ;
  struct device_attribute *ldvarg77 ;
  void *tmp___61 ;
  char *ldvarg76 ;
  void *tmp___62 ;
  struct device *ldvarg75 ;
  void *tmp___63 ;
  char *ldvarg79 ;
  void *tmp___64 ;
  struct device_attribute *ldvarg80 ;
  void *tmp___65 ;
  struct device *ldvarg78 ;
  void *tmp___66 ;
  struct device *ldvarg81 ;
  void *tmp___67 ;
  char *ldvarg82 ;
  void *tmp___68 ;
  struct device_attribute *ldvarg83 ;
  void *tmp___69 ;
  char *ldvarg85 ;
  void *tmp___70 ;
  struct device *ldvarg84 ;
  void *tmp___71 ;
  struct device_attribute *ldvarg86 ;
  void *tmp___72 ;
  char *ldvarg88 ;
  void *tmp___73 ;
  struct device_attribute *ldvarg89 ;
  void *tmp___74 ;
  struct device *ldvarg87 ;
  void *tmp___75 ;
  size_t ldvarg91 ;
  char *ldvarg92 ;
  void *tmp___76 ;
  char *ldvarg90 ;
  void *tmp___77 ;
  struct device *ldvarg93 ;
  void *tmp___78 ;
  struct device_attribute *ldvarg95 ;
  void *tmp___79 ;
  char *ldvarg94 ;
  void *tmp___80 ;
  struct device_attribute *ldvarg98 ;
  void *tmp___81 ;
  char *ldvarg97 ;
  void *tmp___82 ;
  struct device *ldvarg96 ;
  void *tmp___83 ;
  struct device_attribute *ldvarg101 ;
  void *tmp___84 ;
  char *ldvarg100 ;
  void *tmp___85 ;
  struct device *ldvarg99 ;
  void *tmp___86 ;
  struct device_attribute *ldvarg104 ;
  void *tmp___87 ;
  struct device *ldvarg102 ;
  void *tmp___88 ;
  char *ldvarg103 ;
  void *tmp___89 ;
  char *ldvarg106 ;
  void *tmp___90 ;
  struct device *ldvarg105 ;
  void *tmp___91 ;
  struct device_attribute *ldvarg107 ;
  void *tmp___92 ;
  struct device_attribute *ldvarg110 ;
  void *tmp___93 ;
  struct device *ldvarg108 ;
  void *tmp___94 ;
  char *ldvarg109 ;
  void *tmp___95 ;
  struct device *ldvarg111 ;
  void *tmp___96 ;
  char *ldvarg112 ;
  void *tmp___97 ;
  struct device_attribute *ldvarg113 ;
  void *tmp___98 ;
  struct device_attribute *ldvarg116 ;
  void *tmp___99 ;
  struct device *ldvarg114 ;
  void *tmp___100 ;
  char *ldvarg115 ;
  void *tmp___101 ;
  struct device_attribute *ldvarg119 ;
  void *tmp___102 ;
  struct device *ldvarg117 ;
  void *tmp___103 ;
  char *ldvarg118 ;
  void *tmp___104 ;
  char *ldvarg121 ;
  void *tmp___105 ;
  struct device_attribute *ldvarg122 ;
  void *tmp___106 ;
  struct device *ldvarg120 ;
  void *tmp___107 ;
  struct device *ldvarg123 ;
  void *tmp___108 ;
  char *ldvarg124 ;
  void *tmp___109 ;
  struct device_attribute *ldvarg125 ;
  void *tmp___110 ;
  char *ldvarg127 ;
  void *tmp___111 ;
  struct device_attribute *ldvarg128 ;
  void *tmp___112 ;
  struct device *ldvarg126 ;
  void *tmp___113 ;
  struct device_attribute *ldvarg131 ;
  void *tmp___114 ;
  struct device *ldvarg129 ;
  void *tmp___115 ;
  char *ldvarg130 ;
  void *tmp___116 ;
  struct device_attribute *ldvarg134 ;
  void *tmp___117 ;
  char *ldvarg133 ;
  void *tmp___118 ;
  struct device *ldvarg132 ;
  void *tmp___119 ;
  char *ldvarg136 ;
  void *tmp___120 ;
  struct device_attribute *ldvarg137 ;
  void *tmp___121 ;
  struct device *ldvarg135 ;
  void *tmp___122 ;
  struct device *ldvarg138 ;
  void *tmp___123 ;
  struct device_attribute *ldvarg140 ;
  void *tmp___124 ;
  char *ldvarg139 ;
  void *tmp___125 ;
  char *ldvarg143 ;
  void *tmp___126 ;
  size_t ldvarg142 ;
  char *ldvarg141 ;
  void *tmp___127 ;
  char *ldvarg145 ;
  void *tmp___128 ;
  struct device_attribute *ldvarg146 ;
  void *tmp___129 ;
  struct device *ldvarg144 ;
  void *tmp___130 ;
  struct device *ldvarg147 ;
  void *tmp___131 ;
  struct device_attribute *ldvarg149 ;
  void *tmp___132 ;
  char *ldvarg148 ;
  void *tmp___133 ;
  struct device *ldvarg150 ;
  void *tmp___134 ;
  char *ldvarg151 ;
  void *tmp___135 ;
  struct device_attribute *ldvarg152 ;
  void *tmp___136 ;
  char *ldvarg154 ;
  void *tmp___137 ;
  struct device *ldvarg153 ;
  void *tmp___138 ;
  struct device_attribute *ldvarg155 ;
  void *tmp___139 ;
  struct device *ldvarg156 ;
  void *tmp___140 ;
  char *ldvarg157 ;
  void *tmp___141 ;
  struct device_attribute *ldvarg158 ;
  void *tmp___142 ;
  struct pci_device_id *ldvarg159 ;
  void *tmp___143 ;
  struct device_attribute *ldvarg162 ;
  void *tmp___144 ;
  char *ldvarg161 ;
  void *tmp___145 ;
  struct device *ldvarg160 ;
  void *tmp___146 ;
  char *ldvarg164 ;
  void *tmp___147 ;
  struct device_attribute *ldvarg165 ;
  void *tmp___148 ;
  struct device *ldvarg163 ;
  void *tmp___149 ;
  size_t ldvarg167 ;
  char *ldvarg168 ;
  void *tmp___150 ;
  char *ldvarg166 ;
  void *tmp___151 ;
  char *ldvarg170 ;
  void *tmp___152 ;
  struct device_attribute *ldvarg171 ;
  void *tmp___153 ;
  struct device *ldvarg169 ;
  void *tmp___154 ;
  char *ldvarg174 ;
  void *tmp___155 ;
  size_t ldvarg173 ;
  char *ldvarg172 ;
  void *tmp___156 ;
  char *ldvarg177 ;
  void *tmp___157 ;
  char *ldvarg175 ;
  void *tmp___158 ;
  size_t ldvarg176 ;
  struct device_attribute *ldvarg180 ;
  void *tmp___159 ;
  struct device *ldvarg178 ;
  void *tmp___160 ;
  char *ldvarg179 ;
  void *tmp___161 ;
  struct device_attribute *ldvarg183 ;
  void *tmp___162 ;
  struct device *ldvarg181 ;
  void *tmp___163 ;
  char *ldvarg182 ;
  void *tmp___164 ;
  char *ldvarg185 ;
  void *tmp___165 ;
  struct device_attribute *ldvarg186 ;
  void *tmp___166 ;
  struct device *ldvarg184 ;
  void *tmp___167 ;
  struct device_attribute *ldvarg189 ;
  void *tmp___168 ;
  struct device *ldvarg187 ;
  void *tmp___169 ;
  char *ldvarg188 ;
  void *tmp___170 ;
  char *ldvarg191 ;
  void *tmp___171 ;
  struct device *ldvarg190 ;
  void *tmp___172 ;
  struct device_attribute *ldvarg192 ;
  void *tmp___173 ;
  struct device_attribute *ldvarg195 ;
  void *tmp___174 ;
  struct device *ldvarg193 ;
  void *tmp___175 ;
  char *ldvarg194 ;
  void *tmp___176 ;
  char *ldvarg197 ;
  void *tmp___177 ;
  struct device_attribute *ldvarg198 ;
  void *tmp___178 ;
  struct device *ldvarg196 ;
  void *tmp___179 ;
  size_t ldvarg200 ;
  char *ldvarg199 ;
  void *tmp___180 ;
  char *ldvarg201 ;
  void *tmp___181 ;
  struct device_attribute *ldvarg204 ;
  void *tmp___182 ;
  char *ldvarg203 ;
  void *tmp___183 ;
  struct device *ldvarg202 ;
  void *tmp___184 ;
  struct device_attribute *ldvarg207 ;
  void *tmp___185 ;
  struct device *ldvarg205 ;
  void *tmp___186 ;
  char *ldvarg206 ;
  void *tmp___187 ;
  size_t ldvarg209 ;
  char *ldvarg208 ;
  void *tmp___188 ;
  char *ldvarg210 ;
  void *tmp___189 ;
  struct device_attribute *ldvarg213 ;
  void *tmp___190 ;
  struct device *ldvarg211 ;
  void *tmp___191 ;
  char *ldvarg212 ;
  void *tmp___192 ;
  char *ldvarg215 ;
  void *tmp___193 ;
  struct device *ldvarg214 ;
  void *tmp___194 ;
  struct device_attribute *ldvarg216 ;
  void *tmp___195 ;
  size_t ldvarg218 ;
  char *ldvarg217 ;
  void *tmp___196 ;
  char *ldvarg219 ;
  void *tmp___197 ;
  struct device *ldvarg220 ;
  void *tmp___198 ;
  struct device_attribute *ldvarg222 ;
  void *tmp___199 ;
  char *ldvarg221 ;
  void *tmp___200 ;
  struct device_attribute *ldvarg225 ;
  void *tmp___201 ;
  char *ldvarg224 ;
  void *tmp___202 ;
  struct device *ldvarg223 ;
  void *tmp___203 ;
  struct device_attribute *ldvarg228 ;
  void *tmp___204 ;
  char *ldvarg227 ;
  void *tmp___205 ;
  struct device *ldvarg226 ;
  void *tmp___206 ;
  struct sk_buff *ldvarg229 ;
  void *tmp___207 ;
  char *ldvarg230 ;
  void *tmp___208 ;
  size_t ldvarg231 ;
  char *ldvarg232 ;
  void *tmp___209 ;
  size_t ldvarg234 ;
  char *ldvarg233 ;
  void *tmp___210 ;
  char *ldvarg235 ;
  void *tmp___211 ;
  struct device_attribute *ldvarg238 ;
  void *tmp___212 ;
  char *ldvarg237 ;
  void *tmp___213 ;
  struct device *ldvarg236 ;
  void *tmp___214 ;
  char *ldvarg240 ;
  void *tmp___215 ;
  struct device_attribute *ldvarg241 ;
  void *tmp___216 ;
  struct device *ldvarg239 ;
  void *tmp___217 ;
  char *ldvarg242 ;
  void *tmp___218 ;
  char *ldvarg244 ;
  void *tmp___219 ;
  size_t ldvarg243 ;
  char *ldvarg246 ;
  void *tmp___220 ;
  struct device_attribute *ldvarg247 ;
  void *tmp___221 ;
  struct device *ldvarg245 ;
  void *tmp___222 ;
  struct device_attribute *ldvarg250 ;
  void *tmp___223 ;
  char *ldvarg249 ;
  void *tmp___224 ;
  struct device *ldvarg248 ;
  void *tmp___225 ;
  char *ldvarg252 ;
  void *tmp___226 ;
  struct device_attribute *ldvarg253 ;
  void *tmp___227 ;
  struct device *ldvarg251 ;
  void *tmp___228 ;
  struct device_attribute *ldvarg256 ;
  void *tmp___229 ;
  struct device *ldvarg254 ;
  void *tmp___230 ;
  char *ldvarg255 ;
  void *tmp___231 ;
  struct device_attribute *ldvarg259 ;
  void *tmp___232 ;
  char *ldvarg258 ;
  void *tmp___233 ;
  struct device *ldvarg257 ;
  void *tmp___234 ;
  struct device_attribute *ldvarg262 ;
  void *tmp___235 ;
  char *ldvarg261 ;
  void *tmp___236 ;
  struct device *ldvarg260 ;
  void *tmp___237 ;
  int tmp___238 ;
  int tmp___239 ;
  int tmp___240 ;
  int tmp___241 ;
  int tmp___242 ;
  int tmp___243 ;
  int tmp___244 ;
  int tmp___245 ;
  int tmp___246 ;
  int tmp___247 ;
  int tmp___248 ;
  int tmp___249 ;
  int tmp___250 ;
  int tmp___251 ;
  int tmp___252 ;
  int tmp___253 ;
  int tmp___254 ;
  int tmp___255 ;
  int tmp___256 ;
  int tmp___257 ;
  int tmp___258 ;
  int tmp___259 ;
  int tmp___260 ;
  int tmp___261 ;
  int tmp___262 ;
  int tmp___263 ;
  int tmp___264 ;
  int tmp___265 ;
  int tmp___266 ;
  int tmp___267 ;
  int tmp___268 ;
  int tmp___269 ;
  int tmp___270 ;
  int tmp___271 ;
  int tmp___272 ;
  int tmp___273 ;
  int tmp___274 ;
  int tmp___275 ;
  int tmp___276 ;
  int tmp___277 ;
  int tmp___278 ;
  int tmp___279 ;
  int tmp___280 ;
  int tmp___281 ;
  int tmp___282 ;
  int tmp___283 ;
  int tmp___284 ;
  int tmp___285 ;
  int tmp___286 ;
  int tmp___287 ;
  int tmp___288 ;
  int tmp___289 ;
  int tmp___290 ;
  int tmp___291 ;
  int tmp___292 ;
  int tmp___293 ;
  int tmp___294 ;
  int tmp___295 ;
  int tmp___296 ;
  int tmp___297 ;
  int tmp___298 ;
  int tmp___299 ;
  int tmp___300 ;
  int tmp___301 ;
  int tmp___302 ;
  int tmp___303 ;
  int tmp___304 ;
  int tmp___305 ;
  int tmp___306 ;
  int tmp___307 ;
  int tmp___308 ;
  int tmp___309 ;
  int tmp___310 ;
  int tmp___311 ;
  int tmp___312 ;
  int tmp___313 ;
  int tmp___314 ;
  int tmp___315 ;
  int tmp___316 ;
  int tmp___317 ;
  int tmp___318 ;
  int tmp___319 ;
  int tmp___320 ;
  int tmp___321 ;
  int tmp___322 ;
  int tmp___323 ;
  int tmp___324 ;
  int tmp___325 ;
  int tmp___326 ;
  int tmp___327 ;
  int tmp___328 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg0 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg2 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg3 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg5 = (char *)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg8 = (char *)tmp___3;
  tmp___4 = ldv_init_zalloc(1UL);
  ldvarg6 = (char *)tmp___4;
  tmp___5 = ldv_init_zalloc(48UL);
  ldvarg11 = (struct device_attribute *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg10 = (char *)tmp___6;
  tmp___7 = ldv_init_zalloc(1416UL);
  ldvarg9 = (struct device *)tmp___7;
  tmp___8 = ldv_init_zalloc(1UL);
  ldvarg14 = (char *)tmp___8;
  tmp___9 = ldv_init_zalloc(1UL);
  ldvarg12 = (char *)tmp___9;
  tmp___10 = ldv_init_zalloc(48UL);
  ldvarg17 = (struct device_attribute *)tmp___10;
  tmp___11 = ldv_init_zalloc(1UL);
  ldvarg16 = (char *)tmp___11;
  tmp___12 = ldv_init_zalloc(1416UL);
  ldvarg15 = (struct device *)tmp___12;
  tmp___13 = ldv_init_zalloc(1UL);
  ldvarg18 = (char *)tmp___13;
  tmp___14 = ldv_init_zalloc(1UL);
  ldvarg20 = (char *)tmp___14;
  tmp___15 = ldv_init_zalloc(1416UL);
  ldvarg21 = (struct device *)tmp___15;
  tmp___16 = ldv_init_zalloc(48UL);
  ldvarg23 = (struct device_attribute *)tmp___16;
  tmp___17 = ldv_init_zalloc(1UL);
  ldvarg22 = (char *)tmp___17;
  tmp___18 = ldv_init_zalloc(1UL);
  ldvarg24 = (char *)tmp___18;
  tmp___19 = ldv_init_zalloc(1UL);
  ldvarg26 = (char *)tmp___19;
  tmp___20 = ldv_init_zalloc(1UL);
  ldvarg27 = (char *)tmp___20;
  tmp___21 = ldv_init_zalloc(1UL);
  ldvarg29 = (char *)tmp___21;
  tmp___22 = ldv_init_zalloc(48UL);
  ldvarg32 = (struct device_attribute *)tmp___22;
  tmp___23 = ldv_init_zalloc(1UL);
  ldvarg31 = (char *)tmp___23;
  tmp___24 = ldv_init_zalloc(1416UL);
  ldvarg30 = (struct device *)tmp___24;
  tmp___25 = ldv_init_zalloc(48UL);
  ldvarg35 = (struct device_attribute *)tmp___25;
  tmp___26 = ldv_init_zalloc(1UL);
  ldvarg34 = (char *)tmp___26;
  tmp___27 = ldv_init_zalloc(1416UL);
  ldvarg33 = (struct device *)tmp___27;
  tmp___28 = ldv_init_zalloc(1UL);
  ldvarg37 = (char *)tmp___28;
  tmp___29 = ldv_init_zalloc(1416UL);
  ldvarg36 = (struct device *)tmp___29;
  tmp___30 = ldv_init_zalloc(48UL);
  ldvarg38 = (struct device_attribute *)tmp___30;
  tmp___31 = ldv_init_zalloc(1416UL);
  ldvarg39 = (struct device *)tmp___31;
  tmp___32 = ldv_init_zalloc(48UL);
  ldvarg41 = (struct device_attribute *)tmp___32;
  tmp___33 = ldv_init_zalloc(1UL);
  ldvarg40 = (char *)tmp___33;
  tmp___34 = ldv_init_zalloc(1UL);
  ldvarg43 = (char *)tmp___34;
  tmp___35 = ldv_init_zalloc(1416UL);
  ldvarg42 = (struct device *)tmp___35;
  tmp___36 = ldv_init_zalloc(48UL);
  ldvarg44 = (struct device_attribute *)tmp___36;
  tmp___37 = ldv_init_zalloc(1416UL);
  ldvarg45 = (struct device *)tmp___37;
  tmp___38 = ldv_init_zalloc(48UL);
  ldvarg47 = (struct device_attribute *)tmp___38;
  tmp___39 = ldv_init_zalloc(1UL);
  ldvarg46 = (char *)tmp___39;
  tmp___40 = ldv_init_zalloc(1UL);
  ldvarg48 = (char *)tmp___40;
  tmp___41 = ldv_init_zalloc(1UL);
  ldvarg50 = (char *)tmp___41;
  tmp___42 = ldv_init_zalloc(1416UL);
  ldvarg51 = (struct device *)tmp___42;
  tmp___43 = ldv_init_zalloc(48UL);
  ldvarg53 = (struct device_attribute *)tmp___43;
  tmp___44 = ldv_init_zalloc(1UL);
  ldvarg52 = (char *)tmp___44;
  tmp___45 = ldv_init_zalloc(1416UL);
  ldvarg54 = (struct device *)tmp___45;
  tmp___46 = ldv_init_zalloc(1UL);
  ldvarg55 = (char *)tmp___46;
  tmp___47 = ldv_init_zalloc(48UL);
  ldvarg56 = (struct device_attribute *)tmp___47;
  tmp___48 = ldv_init_zalloc(1UL);
  ldvarg57 = (char *)tmp___48;
  tmp___49 = ldv_init_zalloc(1UL);
  ldvarg59 = (char *)tmp___49;
  tmp___50 = ldv_init_zalloc(1UL);
  ldvarg61 = (char *)tmp___50;
  tmp___51 = ldv_init_zalloc(1416UL);
  ldvarg60 = (struct device *)tmp___51;
  tmp___52 = ldv_init_zalloc(48UL);
  ldvarg62 = (struct device_attribute *)tmp___52;
  tmp___53 = ldv_init_zalloc(1UL);
  ldvarg65 = (char *)tmp___53;
  tmp___54 = ldv_init_zalloc(1UL);
  ldvarg63 = (char *)tmp___54;
  tmp___55 = ldv_init_zalloc(1UL);
  ldvarg66 = (char *)tmp___55;
  tmp___56 = ldv_init_zalloc(1UL);
  ldvarg68 = (char *)tmp___56;
  tmp___57 = ldv_init_zalloc(1UL);
  ldvarg71 = (char *)tmp___57;
  tmp___58 = ldv_init_zalloc(1UL);
  ldvarg69 = (char *)tmp___58;
  tmp___59 = ldv_init_zalloc(1UL);
  ldvarg74 = (char *)tmp___59;
  tmp___60 = ldv_init_zalloc(1UL);
  ldvarg72 = (char *)tmp___60;
  tmp___61 = ldv_init_zalloc(48UL);
  ldvarg77 = (struct device_attribute *)tmp___61;
  tmp___62 = ldv_init_zalloc(1UL);
  ldvarg76 = (char *)tmp___62;
  tmp___63 = ldv_init_zalloc(1416UL);
  ldvarg75 = (struct device *)tmp___63;
  tmp___64 = ldv_init_zalloc(1UL);
  ldvarg79 = (char *)tmp___64;
  tmp___65 = ldv_init_zalloc(48UL);
  ldvarg80 = (struct device_attribute *)tmp___65;
  tmp___66 = ldv_init_zalloc(1416UL);
  ldvarg78 = (struct device *)tmp___66;
  tmp___67 = ldv_init_zalloc(1416UL);
  ldvarg81 = (struct device *)tmp___67;
  tmp___68 = ldv_init_zalloc(1UL);
  ldvarg82 = (char *)tmp___68;
  tmp___69 = ldv_init_zalloc(48UL);
  ldvarg83 = (struct device_attribute *)tmp___69;
  tmp___70 = ldv_init_zalloc(1UL);
  ldvarg85 = (char *)tmp___70;
  tmp___71 = ldv_init_zalloc(1416UL);
  ldvarg84 = (struct device *)tmp___71;
  tmp___72 = ldv_init_zalloc(48UL);
  ldvarg86 = (struct device_attribute *)tmp___72;
  tmp___73 = ldv_init_zalloc(1UL);
  ldvarg88 = (char *)tmp___73;
  tmp___74 = ldv_init_zalloc(48UL);
  ldvarg89 = (struct device_attribute *)tmp___74;
  tmp___75 = ldv_init_zalloc(1416UL);
  ldvarg87 = (struct device *)tmp___75;
  tmp___76 = ldv_init_zalloc(1UL);
  ldvarg92 = (char *)tmp___76;
  tmp___77 = ldv_init_zalloc(1UL);
  ldvarg90 = (char *)tmp___77;
  tmp___78 = ldv_init_zalloc(1416UL);
  ldvarg93 = (struct device *)tmp___78;
  tmp___79 = ldv_init_zalloc(48UL);
  ldvarg95 = (struct device_attribute *)tmp___79;
  tmp___80 = ldv_init_zalloc(1UL);
  ldvarg94 = (char *)tmp___80;
  tmp___81 = ldv_init_zalloc(48UL);
  ldvarg98 = (struct device_attribute *)tmp___81;
  tmp___82 = ldv_init_zalloc(1UL);
  ldvarg97 = (char *)tmp___82;
  tmp___83 = ldv_init_zalloc(1416UL);
  ldvarg96 = (struct device *)tmp___83;
  tmp___84 = ldv_init_zalloc(48UL);
  ldvarg101 = (struct device_attribute *)tmp___84;
  tmp___85 = ldv_init_zalloc(1UL);
  ldvarg100 = (char *)tmp___85;
  tmp___86 = ldv_init_zalloc(1416UL);
  ldvarg99 = (struct device *)tmp___86;
  tmp___87 = ldv_init_zalloc(48UL);
  ldvarg104 = (struct device_attribute *)tmp___87;
  tmp___88 = ldv_init_zalloc(1416UL);
  ldvarg102 = (struct device *)tmp___88;
  tmp___89 = ldv_init_zalloc(1UL);
  ldvarg103 = (char *)tmp___89;
  tmp___90 = ldv_init_zalloc(1UL);
  ldvarg106 = (char *)tmp___90;
  tmp___91 = ldv_init_zalloc(1416UL);
  ldvarg105 = (struct device *)tmp___91;
  tmp___92 = ldv_init_zalloc(48UL);
  ldvarg107 = (struct device_attribute *)tmp___92;
  tmp___93 = ldv_init_zalloc(48UL);
  ldvarg110 = (struct device_attribute *)tmp___93;
  tmp___94 = ldv_init_zalloc(1416UL);
  ldvarg108 = (struct device *)tmp___94;
  tmp___95 = ldv_init_zalloc(1UL);
  ldvarg109 = (char *)tmp___95;
  tmp___96 = ldv_init_zalloc(1416UL);
  ldvarg111 = (struct device *)tmp___96;
  tmp___97 = ldv_init_zalloc(1UL);
  ldvarg112 = (char *)tmp___97;
  tmp___98 = ldv_init_zalloc(48UL);
  ldvarg113 = (struct device_attribute *)tmp___98;
  tmp___99 = ldv_init_zalloc(48UL);
  ldvarg116 = (struct device_attribute *)tmp___99;
  tmp___100 = ldv_init_zalloc(1416UL);
  ldvarg114 = (struct device *)tmp___100;
  tmp___101 = ldv_init_zalloc(1UL);
  ldvarg115 = (char *)tmp___101;
  tmp___102 = ldv_init_zalloc(48UL);
  ldvarg119 = (struct device_attribute *)tmp___102;
  tmp___103 = ldv_init_zalloc(1416UL);
  ldvarg117 = (struct device *)tmp___103;
  tmp___104 = ldv_init_zalloc(1UL);
  ldvarg118 = (char *)tmp___104;
  tmp___105 = ldv_init_zalloc(1UL);
  ldvarg121 = (char *)tmp___105;
  tmp___106 = ldv_init_zalloc(48UL);
  ldvarg122 = (struct device_attribute *)tmp___106;
  tmp___107 = ldv_init_zalloc(1416UL);
  ldvarg120 = (struct device *)tmp___107;
  tmp___108 = ldv_init_zalloc(1416UL);
  ldvarg123 = (struct device *)tmp___108;
  tmp___109 = ldv_init_zalloc(1UL);
  ldvarg124 = (char *)tmp___109;
  tmp___110 = ldv_init_zalloc(48UL);
  ldvarg125 = (struct device_attribute *)tmp___110;
  tmp___111 = ldv_init_zalloc(1UL);
  ldvarg127 = (char *)tmp___111;
  tmp___112 = ldv_init_zalloc(48UL);
  ldvarg128 = (struct device_attribute *)tmp___112;
  tmp___113 = ldv_init_zalloc(1416UL);
  ldvarg126 = (struct device *)tmp___113;
  tmp___114 = ldv_init_zalloc(48UL);
  ldvarg131 = (struct device_attribute *)tmp___114;
  tmp___115 = ldv_init_zalloc(1416UL);
  ldvarg129 = (struct device *)tmp___115;
  tmp___116 = ldv_init_zalloc(1UL);
  ldvarg130 = (char *)tmp___116;
  tmp___117 = ldv_init_zalloc(48UL);
  ldvarg134 = (struct device_attribute *)tmp___117;
  tmp___118 = ldv_init_zalloc(1UL);
  ldvarg133 = (char *)tmp___118;
  tmp___119 = ldv_init_zalloc(1416UL);
  ldvarg132 = (struct device *)tmp___119;
  tmp___120 = ldv_init_zalloc(1UL);
  ldvarg136 = (char *)tmp___120;
  tmp___121 = ldv_init_zalloc(48UL);
  ldvarg137 = (struct device_attribute *)tmp___121;
  tmp___122 = ldv_init_zalloc(1416UL);
  ldvarg135 = (struct device *)tmp___122;
  tmp___123 = ldv_init_zalloc(1416UL);
  ldvarg138 = (struct device *)tmp___123;
  tmp___124 = ldv_init_zalloc(48UL);
  ldvarg140 = (struct device_attribute *)tmp___124;
  tmp___125 = ldv_init_zalloc(1UL);
  ldvarg139 = (char *)tmp___125;
  tmp___126 = ldv_init_zalloc(1UL);
  ldvarg143 = (char *)tmp___126;
  tmp___127 = ldv_init_zalloc(1UL);
  ldvarg141 = (char *)tmp___127;
  tmp___128 = ldv_init_zalloc(1UL);
  ldvarg145 = (char *)tmp___128;
  tmp___129 = ldv_init_zalloc(48UL);
  ldvarg146 = (struct device_attribute *)tmp___129;
  tmp___130 = ldv_init_zalloc(1416UL);
  ldvarg144 = (struct device *)tmp___130;
  tmp___131 = ldv_init_zalloc(1416UL);
  ldvarg147 = (struct device *)tmp___131;
  tmp___132 = ldv_init_zalloc(48UL);
  ldvarg149 = (struct device_attribute *)tmp___132;
  tmp___133 = ldv_init_zalloc(1UL);
  ldvarg148 = (char *)tmp___133;
  tmp___134 = ldv_init_zalloc(1416UL);
  ldvarg150 = (struct device *)tmp___134;
  tmp___135 = ldv_init_zalloc(1UL);
  ldvarg151 = (char *)tmp___135;
  tmp___136 = ldv_init_zalloc(48UL);
  ldvarg152 = (struct device_attribute *)tmp___136;
  tmp___137 = ldv_init_zalloc(1UL);
  ldvarg154 = (char *)tmp___137;
  tmp___138 = ldv_init_zalloc(1416UL);
  ldvarg153 = (struct device *)tmp___138;
  tmp___139 = ldv_init_zalloc(48UL);
  ldvarg155 = (struct device_attribute *)tmp___139;
  tmp___140 = ldv_init_zalloc(1416UL);
  ldvarg156 = (struct device *)tmp___140;
  tmp___141 = ldv_init_zalloc(1UL);
  ldvarg157 = (char *)tmp___141;
  tmp___142 = ldv_init_zalloc(48UL);
  ldvarg158 = (struct device_attribute *)tmp___142;
  tmp___143 = ldv_init_zalloc(32UL);
  ldvarg159 = (struct pci_device_id *)tmp___143;
  tmp___144 = ldv_init_zalloc(48UL);
  ldvarg162 = (struct device_attribute *)tmp___144;
  tmp___145 = ldv_init_zalloc(1UL);
  ldvarg161 = (char *)tmp___145;
  tmp___146 = ldv_init_zalloc(1416UL);
  ldvarg160 = (struct device *)tmp___146;
  tmp___147 = ldv_init_zalloc(1UL);
  ldvarg164 = (char *)tmp___147;
  tmp___148 = ldv_init_zalloc(48UL);
  ldvarg165 = (struct device_attribute *)tmp___148;
  tmp___149 = ldv_init_zalloc(1416UL);
  ldvarg163 = (struct device *)tmp___149;
  tmp___150 = ldv_init_zalloc(1UL);
  ldvarg168 = (char *)tmp___150;
  tmp___151 = ldv_init_zalloc(1UL);
  ldvarg166 = (char *)tmp___151;
  tmp___152 = ldv_init_zalloc(1UL);
  ldvarg170 = (char *)tmp___152;
  tmp___153 = ldv_init_zalloc(48UL);
  ldvarg171 = (struct device_attribute *)tmp___153;
  tmp___154 = ldv_init_zalloc(1416UL);
  ldvarg169 = (struct device *)tmp___154;
  tmp___155 = ldv_init_zalloc(1UL);
  ldvarg174 = (char *)tmp___155;
  tmp___156 = ldv_init_zalloc(1UL);
  ldvarg172 = (char *)tmp___156;
  tmp___157 = ldv_init_zalloc(1UL);
  ldvarg177 = (char *)tmp___157;
  tmp___158 = ldv_init_zalloc(1UL);
  ldvarg175 = (char *)tmp___158;
  tmp___159 = ldv_init_zalloc(48UL);
  ldvarg180 = (struct device_attribute *)tmp___159;
  tmp___160 = ldv_init_zalloc(1416UL);
  ldvarg178 = (struct device *)tmp___160;
  tmp___161 = ldv_init_zalloc(1UL);
  ldvarg179 = (char *)tmp___161;
  tmp___162 = ldv_init_zalloc(48UL);
  ldvarg183 = (struct device_attribute *)tmp___162;
  tmp___163 = ldv_init_zalloc(1416UL);
  ldvarg181 = (struct device *)tmp___163;
  tmp___164 = ldv_init_zalloc(1UL);
  ldvarg182 = (char *)tmp___164;
  tmp___165 = ldv_init_zalloc(1UL);
  ldvarg185 = (char *)tmp___165;
  tmp___166 = ldv_init_zalloc(48UL);
  ldvarg186 = (struct device_attribute *)tmp___166;
  tmp___167 = ldv_init_zalloc(1416UL);
  ldvarg184 = (struct device *)tmp___167;
  tmp___168 = ldv_init_zalloc(48UL);
  ldvarg189 = (struct device_attribute *)tmp___168;
  tmp___169 = ldv_init_zalloc(1416UL);
  ldvarg187 = (struct device *)tmp___169;
  tmp___170 = ldv_init_zalloc(1UL);
  ldvarg188 = (char *)tmp___170;
  tmp___171 = ldv_init_zalloc(1UL);
  ldvarg191 = (char *)tmp___171;
  tmp___172 = ldv_init_zalloc(1416UL);
  ldvarg190 = (struct device *)tmp___172;
  tmp___173 = ldv_init_zalloc(48UL);
  ldvarg192 = (struct device_attribute *)tmp___173;
  tmp___174 = ldv_init_zalloc(48UL);
  ldvarg195 = (struct device_attribute *)tmp___174;
  tmp___175 = ldv_init_zalloc(1416UL);
  ldvarg193 = (struct device *)tmp___175;
  tmp___176 = ldv_init_zalloc(1UL);
  ldvarg194 = (char *)tmp___176;
  tmp___177 = ldv_init_zalloc(1UL);
  ldvarg197 = (char *)tmp___177;
  tmp___178 = ldv_init_zalloc(48UL);
  ldvarg198 = (struct device_attribute *)tmp___178;
  tmp___179 = ldv_init_zalloc(1416UL);
  ldvarg196 = (struct device *)tmp___179;
  tmp___180 = ldv_init_zalloc(1UL);
  ldvarg199 = (char *)tmp___180;
  tmp___181 = ldv_init_zalloc(1UL);
  ldvarg201 = (char *)tmp___181;
  tmp___182 = ldv_init_zalloc(48UL);
  ldvarg204 = (struct device_attribute *)tmp___182;
  tmp___183 = ldv_init_zalloc(1UL);
  ldvarg203 = (char *)tmp___183;
  tmp___184 = ldv_init_zalloc(1416UL);
  ldvarg202 = (struct device *)tmp___184;
  tmp___185 = ldv_init_zalloc(48UL);
  ldvarg207 = (struct device_attribute *)tmp___185;
  tmp___186 = ldv_init_zalloc(1416UL);
  ldvarg205 = (struct device *)tmp___186;
  tmp___187 = ldv_init_zalloc(1UL);
  ldvarg206 = (char *)tmp___187;
  tmp___188 = ldv_init_zalloc(1UL);
  ldvarg208 = (char *)tmp___188;
  tmp___189 = ldv_init_zalloc(1UL);
  ldvarg210 = (char *)tmp___189;
  tmp___190 = ldv_init_zalloc(48UL);
  ldvarg213 = (struct device_attribute *)tmp___190;
  tmp___191 = ldv_init_zalloc(1416UL);
  ldvarg211 = (struct device *)tmp___191;
  tmp___192 = ldv_init_zalloc(1UL);
  ldvarg212 = (char *)tmp___192;
  tmp___193 = ldv_init_zalloc(1UL);
  ldvarg215 = (char *)tmp___193;
  tmp___194 = ldv_init_zalloc(1416UL);
  ldvarg214 = (struct device *)tmp___194;
  tmp___195 = ldv_init_zalloc(48UL);
  ldvarg216 = (struct device_attribute *)tmp___195;
  tmp___196 = ldv_init_zalloc(1UL);
  ldvarg217 = (char *)tmp___196;
  tmp___197 = ldv_init_zalloc(1UL);
  ldvarg219 = (char *)tmp___197;
  tmp___198 = ldv_init_zalloc(1416UL);
  ldvarg220 = (struct device *)tmp___198;
  tmp___199 = ldv_init_zalloc(48UL);
  ldvarg222 = (struct device_attribute *)tmp___199;
  tmp___200 = ldv_init_zalloc(1UL);
  ldvarg221 = (char *)tmp___200;
  tmp___201 = ldv_init_zalloc(48UL);
  ldvarg225 = (struct device_attribute *)tmp___201;
  tmp___202 = ldv_init_zalloc(1UL);
  ldvarg224 = (char *)tmp___202;
  tmp___203 = ldv_init_zalloc(1416UL);
  ldvarg223 = (struct device *)tmp___203;
  tmp___204 = ldv_init_zalloc(48UL);
  ldvarg228 = (struct device_attribute *)tmp___204;
  tmp___205 = ldv_init_zalloc(1UL);
  ldvarg227 = (char *)tmp___205;
  tmp___206 = ldv_init_zalloc(1416UL);
  ldvarg226 = (struct device *)tmp___206;
  tmp___207 = ldv_init_zalloc(232UL);
  ldvarg229 = (struct sk_buff *)tmp___207;
  tmp___208 = ldv_init_zalloc(1UL);
  ldvarg230 = (char *)tmp___208;
  tmp___209 = ldv_init_zalloc(1UL);
  ldvarg232 = (char *)tmp___209;
  tmp___210 = ldv_init_zalloc(1UL);
  ldvarg233 = (char *)tmp___210;
  tmp___211 = ldv_init_zalloc(1UL);
  ldvarg235 = (char *)tmp___211;
  tmp___212 = ldv_init_zalloc(48UL);
  ldvarg238 = (struct device_attribute *)tmp___212;
  tmp___213 = ldv_init_zalloc(1UL);
  ldvarg237 = (char *)tmp___213;
  tmp___214 = ldv_init_zalloc(1416UL);
  ldvarg236 = (struct device *)tmp___214;
  tmp___215 = ldv_init_zalloc(1UL);
  ldvarg240 = (char *)tmp___215;
  tmp___216 = ldv_init_zalloc(48UL);
  ldvarg241 = (struct device_attribute *)tmp___216;
  tmp___217 = ldv_init_zalloc(1416UL);
  ldvarg239 = (struct device *)tmp___217;
  tmp___218 = ldv_init_zalloc(1UL);
  ldvarg242 = (char *)tmp___218;
  tmp___219 = ldv_init_zalloc(1UL);
  ldvarg244 = (char *)tmp___219;
  tmp___220 = ldv_init_zalloc(1UL);
  ldvarg246 = (char *)tmp___220;
  tmp___221 = ldv_init_zalloc(48UL);
  ldvarg247 = (struct device_attribute *)tmp___221;
  tmp___222 = ldv_init_zalloc(1416UL);
  ldvarg245 = (struct device *)tmp___222;
  tmp___223 = ldv_init_zalloc(48UL);
  ldvarg250 = (struct device_attribute *)tmp___223;
  tmp___224 = ldv_init_zalloc(1UL);
  ldvarg249 = (char *)tmp___224;
  tmp___225 = ldv_init_zalloc(1416UL);
  ldvarg248 = (struct device *)tmp___225;
  tmp___226 = ldv_init_zalloc(1UL);
  ldvarg252 = (char *)tmp___226;
  tmp___227 = ldv_init_zalloc(48UL);
  ldvarg253 = (struct device_attribute *)tmp___227;
  tmp___228 = ldv_init_zalloc(1416UL);
  ldvarg251 = (struct device *)tmp___228;
  tmp___229 = ldv_init_zalloc(48UL);
  ldvarg256 = (struct device_attribute *)tmp___229;
  tmp___230 = ldv_init_zalloc(1416UL);
  ldvarg254 = (struct device *)tmp___230;
  tmp___231 = ldv_init_zalloc(1UL);
  ldvarg255 = (char *)tmp___231;
  tmp___232 = ldv_init_zalloc(48UL);
  ldvarg259 = (struct device_attribute *)tmp___232;
  tmp___233 = ldv_init_zalloc(1UL);
  ldvarg258 = (char *)tmp___233;
  tmp___234 = ldv_init_zalloc(1416UL);
  ldvarg257 = (struct device *)tmp___234;
  tmp___235 = ldv_init_zalloc(48UL);
  ldvarg262 = (struct device_attribute *)tmp___235;
  tmp___236 = ldv_init_zalloc(1UL);
  ldvarg261 = (char *)tmp___236;
  tmp___237 = ldv_init_zalloc(1416UL);
  ldvarg260 = (struct device *)tmp___237;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg1), 0, 8UL);
  ldv_memset((void *)(& ldvarg4), 0, 8UL);
  ldv_memset((void *)(& ldvarg7), 0, 8UL);
  ldv_memset((void *)(& ldvarg13), 0, 8UL);
  ldv_memset((void *)(& ldvarg19), 0, 8UL);
  ldv_memset((void *)(& ldvarg25), 0, 8UL);
  ldv_memset((void *)(& ldvarg28), 0, 8UL);
  ldv_memset((void *)(& ldvarg49), 0, 8UL);
  ldv_memset((void *)(& ldvarg58), 0, 8UL);
  ldv_memset((void *)(& ldvarg64), 0, 8UL);
  ldv_memset((void *)(& ldvarg67), 0, 8UL);
  ldv_memset((void *)(& ldvarg70), 0, 8UL);
  ldv_memset((void *)(& ldvarg73), 0, 8UL);
  ldv_memset((void *)(& ldvarg91), 0, 8UL);
  ldv_memset((void *)(& ldvarg142), 0, 8UL);
  ldv_memset((void *)(& ldvarg167), 0, 8UL);
  ldv_memset((void *)(& ldvarg173), 0, 8UL);
  ldv_memset((void *)(& ldvarg176), 0, 8UL);
  ldv_memset((void *)(& ldvarg200), 0, 8UL);
  ldv_memset((void *)(& ldvarg209), 0, 8UL);
  ldv_memset((void *)(& ldvarg218), 0, 8UL);
  ldv_memset((void *)(& ldvarg231), 0, 8UL);
  ldv_memset((void *)(& ldvarg234), 0, 8UL);
  ldv_memset((void *)(& ldvarg243), 0, 8UL);
  ldv_state_variable_33 = 0;
  ldv_state_variable_32 = 0;
  ldv_state_variable_90 = 0;
  ldv_state_variable_63 = 0;
  ldv_state_variable_21 = 0;
  ldv_state_variable_71 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_80 = 0;
  ldv_state_variable_26 = 0;
  ldv_state_variable_18 = 0;
  ldv_state_variable_72 = 0;
  ldv_state_variable_16 = 0;
  ldv_state_variable_44 = 0;
  ldv_state_variable_55 = 0;
  ldv_state_variable_84 = 0;
  ldv_state_variable_74 = 0;
  ldv_state_variable_27 = 0;
  ldv_state_variable_57 = 0;
  ldv_state_variable_61 = 0;
  ldv_state_variable_20 = 0;
  ldv_state_variable_89 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_31 = 0;
  ldv_state_variable_35 = 0;
  ldv_state_variable_11 = 0;
  ldv_state_variable_78 = 0;
  ldv_state_variable_48 = 0;
  ldv_state_variable_87 = 0;
  ldv_state_variable_77 = 0;
  ldv_state_variable_65 = 0;
  ldv_state_variable_29 = 0;
  ldv_state_variable_50 = 0;
  ldv_state_variable_39 = 0;
  ldv_state_variable_64 = 0;
  ldv_state_variable_58 = 0;
  ldv_state_variable_41 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_81 = 0;
  ldv_state_variable_52 = 0;
  ldv_state_variable_60 = 0;
  ldv_state_variable_56 = 0;
  ldv_state_variable_73 = 0;
  ldv_state_variable_66 = 0;
  ldv_state_variable_45 = 0;
  ldv_state_variable_86 = 0;
  ldv_state_variable_76 = 0;
  ldv_state_variable_19 = 0;
  ldv_state_variable_62 = 0;
  ldv_state_variable_54 = 0;
  ldv_state_variable_67 = 0;
  ldv_state_variable_70 = 0;
  ldv_state_variable_68 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_17 = 0;
  ldv_state_variable_1 = 1;
  ldv_state_variable_88 = 0;
  ldv_state_variable_30 = 0;
  ldv_state_variable_82 = 0;
  ldv_state_variable_25 = 0;
  ldv_state_variable_28 = 0;
  ldv_state_variable_83 = 0;
  ldv_state_variable_75 = 0;
  ldv_state_variable_40 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_69 = 0;
  ldv_state_variable_59 = 0;
  ldv_state_variable_49 = 0;
  ldv_state_variable_24 = 0;
  ldv_state_variable_53 = 0;
  ldv_state_variable_79 = 0;
  ldv_state_variable_22 = 0;
  ldv_state_variable_42 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_46 = 0;
  ldv_state_variable_23 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_6 = 0;
  ldv_state_variable_85 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_36 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_51 = 0;
  ldv_state_variable_47 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_38 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_34 = 0;
  ldv_state_variable_37 = 0;
  ldv_state_variable_43 = 0;
  ldv_state_variable_5 = 0;
  ldv_52471:
  tmp___238 = __VERIFIER_nondet_int();
  switch (tmp___238) {
  case 0: ;
  if (ldv_state_variable_33 != 0) {
    tmp___239 = __VERIFIER_nondet_int();
    switch (tmp___239) {
    case 0: ;
    if (ldv_state_variable_33 == 1) {
      solos_param_store(dev_attr_HostControl_group1, dev_attr_HostControl_group0,
                        (char const *)ldvarg2, ldvarg1);
      ldv_state_variable_33 = 1;
    } else {
    }
    goto ldv_52080;
    case 1: ;
    if (ldv_state_variable_33 == 1) {
      solos_param_show(dev_attr_HostControl_group1, dev_attr_HostControl_group0, ldvarg0);
      ldv_state_variable_33 = 1;
    } else {
    }
    goto ldv_52080;
    default:
    ldv_stop();
    }
    ldv_52080: ;
  } else {
  }
  goto ldv_52083;
  case 1: ;
  if (ldv_state_variable_32 != 0) {
    tmp___240 = __VERIFIER_nondet_int();
    switch (tmp___240) {
    case 0: ;
    if (ldv_state_variable_32 == 1) {
      solos_param_store(dev_attr_AutoStart_group1, dev_attr_AutoStart_group0, (char const *)ldvarg5,
                        ldvarg4);
      ldv_state_variable_32 = 1;
    } else {
    }
    goto ldv_52086;
    case 1: ;
    if (ldv_state_variable_32 == 1) {
      solos_param_show(dev_attr_AutoStart_group1, dev_attr_AutoStart_group0, ldvarg3);
      ldv_state_variable_32 = 1;
    } else {
    }
    goto ldv_52086;
    default:
    ldv_stop();
    }
    ldv_52086: ;
  } else {
  }
  goto ldv_52083;
  case 2: ;
  if (ldv_state_variable_90 != 0) {
    tmp___241 = __VERIFIER_nondet_int();
    switch (tmp___241) {
    case 0: ;
    if (ldv_state_variable_90 == 1) {
      console_store(dev_attr_console_group1, dev_attr_console_group0, (char const *)ldvarg8,
                    ldvarg7);
      ldv_state_variable_90 = 1;
    } else {
    }
    goto ldv_52091;
    case 1: ;
    if (ldv_state_variable_90 == 1) {
      console_show(dev_attr_console_group1, dev_attr_console_group0, ldvarg6);
      ldv_state_variable_90 = 1;
    } else {
    }
    goto ldv_52091;
    default:
    ldv_stop();
    }
    ldv_52091: ;
  } else {
  }
  goto ldv_52083;
  case 3: ;
  if (ldv_state_variable_63 != 0) {
    tmp___242 = __VERIFIER_nondet_int();
    switch (tmp___242) {
    case 0: ;
    if (ldv_state_variable_63 == 1) {
      solos_param_show(ldvarg9, ldvarg11, ldvarg10);
      ldv_state_variable_63 = 1;
    } else {
    }
    goto ldv_52096;
    default:
    ldv_stop();
    }
    ldv_52096: ;
  } else {
  }
  goto ldv_52083;
  case 4: ;
  if (ldv_state_variable_21 != 0) {
    tmp___243 = __VERIFIER_nondet_int();
    switch (tmp___243) {
    case 0: ;
    if (ldv_state_variable_21 == 1) {
      solos_param_store(dev_attr_BisMMaxMargin_group1, dev_attr_BisMMaxMargin_group0,
                        (char const *)ldvarg14, ldvarg13);
      ldv_state_variable_21 = 1;
    } else {
    }
    goto ldv_52100;
    case 1: ;
    if (ldv_state_variable_21 == 1) {
      solos_param_show(dev_attr_BisMMaxMargin_group1, dev_attr_BisMMaxMargin_group0,
                       ldvarg12);
      ldv_state_variable_21 = 1;
    } else {
    }
    goto ldv_52100;
    default:
    ldv_stop();
    }
    ldv_52100: ;
  } else {
  }
  goto ldv_52083;
  case 5: ;
  if (ldv_state_variable_71 != 0) {
    tmp___244 = __VERIFIER_nondet_int();
    switch (tmp___244) {
    case 0: ;
    if (ldv_state_variable_71 == 1) {
      solos_param_show(ldvarg15, ldvarg17, ldvarg16);
      ldv_state_variable_71 = 1;
    } else {
    }
    goto ldv_52105;
    default:
    ldv_stop();
    }
    ldv_52105: ;
  } else {
  }
  goto ldv_52083;
  case 6: ;
  if (ldv_state_variable_7 != 0) {
    tmp___245 = __VERIFIER_nondet_int();
    switch (tmp___245) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      geos_gpio_store(gpio_attr_GPIO5_group1, gpio_attr_GPIO5_group0, (char const *)ldvarg20,
                      ldvarg19);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_52109;
    case 1: ;
    if (ldv_state_variable_7 == 1) {
      geos_gpio_show(gpio_attr_GPIO5_group1, gpio_attr_GPIO5_group0, ldvarg18);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_52109;
    default:
    ldv_stop();
    }
    ldv_52109: ;
  } else {
  }
  goto ldv_52083;
  case 7: ;
  if (ldv_state_variable_80 != 0) {
    tmp___246 = __VERIFIER_nondet_int();
    switch (tmp___246) {
    case 0: ;
    if (ldv_state_variable_80 == 1) {
      solos_param_show(ldvarg21, ldvarg23, ldvarg22);
      ldv_state_variable_80 = 1;
    } else {
    }
    goto ldv_52114;
    default:
    ldv_stop();
    }
    ldv_52114: ;
  } else {
  }
  goto ldv_52083;
  case 8: ;
  if (ldv_state_variable_26 != 0) {
    tmp___247 = __VERIFIER_nondet_int();
    switch (tmp___247) {
    case 0: ;
    if (ldv_state_variable_26 == 1) {
      solos_param_store(dev_attr_Profile_group1, dev_attr_Profile_group0, (char const *)ldvarg26,
                        ldvarg25);
      ldv_state_variable_26 = 1;
    } else {
    }
    goto ldv_52118;
    case 1: ;
    if (ldv_state_variable_26 == 1) {
      solos_param_show(dev_attr_Profile_group1, dev_attr_Profile_group0, ldvarg24);
      ldv_state_variable_26 = 1;
    } else {
    }
    goto ldv_52118;
    default:
    ldv_stop();
    }
    ldv_52118: ;
  } else {
  }
  goto ldv_52083;
  case 9: ;
  if (ldv_state_variable_18 != 0) {
    tmp___248 = __VERIFIER_nondet_int();
    switch (tmp___248) {
    case 0: ;
    if (ldv_state_variable_18 == 1) {
      solos_param_store(dev_attr_AnnexMMaxMargin_group1, dev_attr_AnnexMMaxMargin_group0,
                        (char const *)ldvarg29, ldvarg28);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_52123;
    case 1: ;
    if (ldv_state_variable_18 == 1) {
      solos_param_show(dev_attr_AnnexMMaxMargin_group1, dev_attr_AnnexMMaxMargin_group0,
                       ldvarg27);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_52123;
    default:
    ldv_stop();
    }
    ldv_52123: ;
  } else {
  }
  goto ldv_52083;
  case 10: ;
  if (ldv_state_variable_72 != 0) {
    tmp___249 = __VERIFIER_nondet_int();
    switch (tmp___249) {
    case 0: ;
    if (ldv_state_variable_72 == 1) {
      solos_param_show(ldvarg30, ldvarg32, ldvarg31);
      ldv_state_variable_72 = 1;
    } else {
    }
    goto ldv_52128;
    default:
    ldv_stop();
    }
    ldv_52128: ;
  } else {
  }
  goto ldv_52083;
  case 11: ;
  if (ldv_state_variable_16 != 0) {
    tmp___250 = __VERIFIER_nondet_int();
    switch (tmp___250) {
    case 0: ;
    if (ldv_state_variable_16 == 1) {
      solos_param_show(ldvarg33, ldvarg35, ldvarg34);
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_52132;
    default:
    ldv_stop();
    }
    ldv_52132: ;
  } else {
  }
  goto ldv_52083;
  case 12: ;
  if (ldv_state_variable_44 != 0) {
    tmp___251 = __VERIFIER_nondet_int();
    switch (tmp___251) {
    case 0: ;
    if (ldv_state_variable_44 == 1) {
      solos_param_show(ldvarg36, ldvarg38, ldvarg37);
      ldv_state_variable_44 = 1;
    } else {
    }
    goto ldv_52136;
    default:
    ldv_stop();
    }
    ldv_52136: ;
  } else {
  }
  goto ldv_52083;
  case 13: ;
  if (ldv_state_variable_55 != 0) {
    tmp___252 = __VERIFIER_nondet_int();
    switch (tmp___252) {
    case 0: ;
    if (ldv_state_variable_55 == 1) {
      solos_param_show(ldvarg39, ldvarg41, ldvarg40);
      ldv_state_variable_55 = 1;
    } else {
    }
    goto ldv_52140;
    default:
    ldv_stop();
    }
    ldv_52140: ;
  } else {
  }
  goto ldv_52083;
  case 14: ;
  if (ldv_state_variable_84 != 0) {
    tmp___253 = __VERIFIER_nondet_int();
    switch (tmp___253) {
    case 0: ;
    if (ldv_state_variable_84 == 1) {
      solos_param_show(ldvarg42, ldvarg44, ldvarg43);
      ldv_state_variable_84 = 1;
    } else {
    }
    goto ldv_52144;
    default:
    ldv_stop();
    }
    ldv_52144: ;
  } else {
  }
  goto ldv_52083;
  case 15: ;
  if (ldv_state_variable_74 != 0) {
    tmp___254 = __VERIFIER_nondet_int();
    switch (tmp___254) {
    case 0: ;
    if (ldv_state_variable_74 == 1) {
      solos_param_show(ldvarg45, ldvarg47, ldvarg46);
      ldv_state_variable_74 = 1;
    } else {
    }
    goto ldv_52148;
    default:
    ldv_stop();
    }
    ldv_52148: ;
  } else {
  }
  goto ldv_52083;
  case 16: ;
  if (ldv_state_variable_27 != 0) {
    tmp___255 = __VERIFIER_nondet_int();
    switch (tmp___255) {
    case 0: ;
    if (ldv_state_variable_27 == 1) {
      solos_param_store(dev_attr_LineMode_group1, dev_attr_LineMode_group0, (char const *)ldvarg50,
                        ldvarg49);
      ldv_state_variable_27 = 1;
    } else {
    }
    goto ldv_52152;
    case 1: ;
    if (ldv_state_variable_27 == 1) {
      solos_param_show(dev_attr_LineMode_group1, dev_attr_LineMode_group0, ldvarg48);
      ldv_state_variable_27 = 1;
    } else {
    }
    goto ldv_52152;
    default:
    ldv_stop();
    }
    ldv_52152: ;
  } else {
  }
  goto ldv_52083;
  case 17: ;
  if (ldv_state_variable_57 != 0) {
    tmp___256 = __VERIFIER_nondet_int();
    switch (tmp___256) {
    case 0: ;
    if (ldv_state_variable_57 == 1) {
      solos_param_show(ldvarg51, ldvarg53, ldvarg52);
      ldv_state_variable_57 = 1;
    } else {
    }
    goto ldv_52157;
    default:
    ldv_stop();
    }
    ldv_52157: ;
  } else {
  }
  goto ldv_52083;
  case 18: ;
  if (ldv_state_variable_61 != 0) {
    tmp___257 = __VERIFIER_nondet_int();
    switch (tmp___257) {
    case 0: ;
    if (ldv_state_variable_61 == 1) {
      solos_param_show(ldvarg54, ldvarg56, ldvarg55);
      ldv_state_variable_61 = 1;
    } else {
    }
    goto ldv_52161;
    default:
    ldv_stop();
    }
    ldv_52161: ;
  } else {
  }
  goto ldv_52083;
  case 19: ;
  if (ldv_state_variable_20 != 0) {
    tmp___258 = __VERIFIER_nondet_int();
    switch (tmp___258) {
    case 0: ;
    if (ldv_state_variable_20 == 1) {
      solos_param_store(dev_attr_AnnexAForceSNRMarginDn_group1, dev_attr_AnnexAForceSNRMarginDn_group0,
                        (char const *)ldvarg59, ldvarg58);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_52165;
    case 1: ;
    if (ldv_state_variable_20 == 1) {
      solos_param_show(dev_attr_AnnexAForceSNRMarginDn_group1, dev_attr_AnnexAForceSNRMarginDn_group0,
                       ldvarg57);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_52165;
    default:
    ldv_stop();
    }
    ldv_52165: ;
  } else {
  }
  goto ldv_52083;
  case 20: ;
  if (ldv_state_variable_89 != 0) {
    tmp___259 = __VERIFIER_nondet_int();
    switch (tmp___259) {
    case 0: ;
    if (ldv_state_variable_89 == 1) {
      solos_param_show(ldvarg60, ldvarg62, ldvarg61);
      ldv_state_variable_89 = 1;
    } else {
    }
    goto ldv_52170;
    default:
    ldv_stop();
    }
    ldv_52170: ;
  } else {
  }
  goto ldv_52083;
  case 21: ;
  if (ldv_state_variable_10 != 0) {
    tmp___260 = __VERIFIER_nondet_int();
    switch (tmp___260) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      geos_gpio_store(gpio_attr_GPIO2_group1, gpio_attr_GPIO2_group0, (char const *)ldvarg65,
                      ldvarg64);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_52174;
    case 1: ;
    if (ldv_state_variable_10 == 1) {
      geos_gpio_show(gpio_attr_GPIO2_group1, gpio_attr_GPIO2_group0, ldvarg63);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_52174;
    default:
    ldv_stop();
    }
    ldv_52174: ;
  } else {
  }
  goto ldv_52083;
  case 22: ;
  if (ldv_state_variable_31 != 0) {
    tmp___261 = __VERIFIER_nondet_int();
    switch (tmp___261) {
    case 0: ;
    if (ldv_state_variable_31 == 1) {
      solos_param_store(dev_attr_Failsafe_group1, dev_attr_Failsafe_group0, (char const *)ldvarg68,
                        ldvarg67);
      ldv_state_variable_31 = 1;
    } else {
    }
    goto ldv_52179;
    case 1: ;
    if (ldv_state_variable_31 == 1) {
      solos_param_show(dev_attr_Failsafe_group1, dev_attr_Failsafe_group0, ldvarg66);
      ldv_state_variable_31 = 1;
    } else {
    }
    goto ldv_52179;
    default:
    ldv_stop();
    }
    ldv_52179: ;
  } else {
  }
  goto ldv_52083;
  case 23: ;
  if (ldv_state_variable_35 != 0) {
    tmp___262 = __VERIFIER_nondet_int();
    switch (tmp___262) {
    case 0: ;
    if (ldv_state_variable_35 == 1) {
      solos_param_store(dev_attr_ActivateLine_group1, dev_attr_ActivateLine_group0,
                        (char const *)ldvarg71, ldvarg70);
      ldv_state_variable_35 = 1;
    } else {
    }
    goto ldv_52184;
    case 1: ;
    if (ldv_state_variable_35 == 1) {
      solos_param_show(dev_attr_ActivateLine_group1, dev_attr_ActivateLine_group0,
                       ldvarg69);
      ldv_state_variable_35 = 1;
    } else {
    }
    goto ldv_52184;
    default:
    ldv_stop();
    }
    ldv_52184: ;
  } else {
  }
  goto ldv_52083;
  case 24: ;
  if (ldv_state_variable_11 != 0) {
    tmp___263 = __VERIFIER_nondet_int();
    switch (tmp___263) {
    case 0: ;
    if (ldv_state_variable_11 == 1) {
      geos_gpio_store(gpio_attr_GPIO1_group1, gpio_attr_GPIO1_group0, (char const *)ldvarg74,
                      ldvarg73);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_52189;
    case 1: ;
    if (ldv_state_variable_11 == 1) {
      geos_gpio_show(gpio_attr_GPIO1_group1, gpio_attr_GPIO1_group0, ldvarg72);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_52189;
    default:
    ldv_stop();
    }
    ldv_52189: ;
  } else {
  }
  goto ldv_52083;
  case 25: ;
  if (ldv_state_variable_78 != 0) {
    tmp___264 = __VERIFIER_nondet_int();
    switch (tmp___264) {
    case 0: ;
    if (ldv_state_variable_78 == 1) {
      solos_param_show(ldvarg75, ldvarg77, ldvarg76);
      ldv_state_variable_78 = 1;
    } else {
    }
    goto ldv_52194;
    default:
    ldv_stop();
    }
    ldv_52194: ;
  } else {
  }
  goto ldv_52083;
  case 26: ;
  if (ldv_state_variable_48 != 0) {
    tmp___265 = __VERIFIER_nondet_int();
    switch (tmp___265) {
    case 0: ;
    if (ldv_state_variable_48 == 1) {
      solos_param_show(ldvarg78, ldvarg80, ldvarg79);
      ldv_state_variable_48 = 1;
    } else {
    }
    goto ldv_52198;
    default:
    ldv_stop();
    }
    ldv_52198: ;
  } else {
  }
  goto ldv_52083;
  case 27: ;
  if (ldv_state_variable_87 != 0) {
    tmp___266 = __VERIFIER_nondet_int();
    switch (tmp___266) {
    case 0: ;
    if (ldv_state_variable_87 == 1) {
      solos_param_show(ldvarg81, ldvarg83, ldvarg82);
      ldv_state_variable_87 = 1;
    } else {
    }
    goto ldv_52202;
    default:
    ldv_stop();
    }
    ldv_52202: ;
  } else {
  }
  goto ldv_52083;
  case 28: ;
  if (ldv_state_variable_77 != 0) {
    tmp___267 = __VERIFIER_nondet_int();
    switch (tmp___267) {
    case 0: ;
    if (ldv_state_variable_77 == 1) {
      solos_param_show(ldvarg84, ldvarg86, ldvarg85);
      ldv_state_variable_77 = 1;
    } else {
    }
    goto ldv_52206;
    default:
    ldv_stop();
    }
    ldv_52206: ;
  } else {
  }
  goto ldv_52083;
  case 29: ;
  if (ldv_state_variable_65 != 0) {
    tmp___268 = __VERIFIER_nondet_int();
    switch (tmp___268) {
    case 0: ;
    if (ldv_state_variable_65 == 1) {
      solos_param_show(ldvarg87, ldvarg89, ldvarg88);
      ldv_state_variable_65 = 1;
    } else {
    }
    goto ldv_52210;
    default:
    ldv_stop();
    }
    ldv_52210: ;
  } else {
  }
  goto ldv_52083;
  case 30: ;
  if (ldv_state_variable_29 != 0) {
    tmp___269 = __VERIFIER_nondet_int();
    switch (tmp___269) {
    case 0: ;
    if (ldv_state_variable_29 == 1) {
      solos_param_store(dev_attr_Retrain_group1, dev_attr_Retrain_group0, (char const *)ldvarg92,
                        ldvarg91);
      ldv_state_variable_29 = 1;
    } else {
    }
    goto ldv_52214;
    case 1: ;
    if (ldv_state_variable_29 == 1) {
      solos_param_show(dev_attr_Retrain_group1, dev_attr_Retrain_group0, ldvarg90);
      ldv_state_variable_29 = 1;
    } else {
    }
    goto ldv_52214;
    default:
    ldv_stop();
    }
    ldv_52214: ;
  } else {
  }
  goto ldv_52083;
  case 31: ;
  if (ldv_state_variable_50 != 0) {
    tmp___270 = __VERIFIER_nondet_int();
    switch (tmp___270) {
    case 0: ;
    if (ldv_state_variable_50 == 1) {
      solos_param_show(ldvarg93, ldvarg95, ldvarg94);
      ldv_state_variable_50 = 1;
    } else {
    }
    goto ldv_52219;
    default:
    ldv_stop();
    }
    ldv_52219: ;
  } else {
  }
  goto ldv_52083;
  case 32: ;
  if (ldv_state_variable_39 != 0) {
    tmp___271 = __VERIFIER_nondet_int();
    switch (tmp___271) {
    case 0: ;
    if (ldv_state_variable_39 == 1) {
      solos_param_show(ldvarg96, ldvarg98, ldvarg97);
      ldv_state_variable_39 = 1;
    } else {
    }
    goto ldv_52223;
    default:
    ldv_stop();
    }
    ldv_52223: ;
  } else {
  }
  goto ldv_52083;
  case 33: ;
  if (ldv_state_variable_64 != 0) {
    tmp___272 = __VERIFIER_nondet_int();
    switch (tmp___272) {
    case 0: ;
    if (ldv_state_variable_64 == 1) {
      solos_param_show(ldvarg99, ldvarg101, ldvarg100);
      ldv_state_variable_64 = 1;
    } else {
    }
    goto ldv_52227;
    default:
    ldv_stop();
    }
    ldv_52227: ;
  } else {
  }
  goto ldv_52083;
  case 34: ;
  if (ldv_state_variable_58 != 0) {
    tmp___273 = __VERIFIER_nondet_int();
    switch (tmp___273) {
    case 0: ;
    if (ldv_state_variable_58 == 1) {
      solos_param_show(ldvarg102, ldvarg104, ldvarg103);
      ldv_state_variable_58 = 1;
    } else {
    }
    goto ldv_52231;
    default:
    ldv_stop();
    }
    ldv_52231: ;
  } else {
  }
  goto ldv_52083;
  case 35: ;
  if (ldv_state_variable_41 != 0) {
    tmp___274 = __VERIFIER_nondet_int();
    switch (tmp___274) {
    case 0: ;
    if (ldv_state_variable_41 == 1) {
      solos_param_show(ldvarg105, ldvarg107, ldvarg106);
      ldv_state_variable_41 = 1;
    } else {
    }
    goto ldv_52235;
    default:
    ldv_stop();
    }
    ldv_52235: ;
  } else {
  }
  goto ldv_52083;
  case 36: ;
  if (ldv_state_variable_12 != 0) {
    tmp___275 = __VERIFIER_nondet_int();
    switch (tmp___275) {
    case 0: ;
    if (ldv_state_variable_12 == 1) {
      solos_param_show(ldvarg108, ldvarg110, ldvarg109);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_52239;
    default:
    ldv_stop();
    }
    ldv_52239: ;
  } else {
  }
  goto ldv_52083;
  case 37: ;
  if (ldv_state_variable_15 != 0) {
    tmp___276 = __VERIFIER_nondet_int();
    switch (tmp___276) {
    case 0: ;
    if (ldv_state_variable_15 == 1) {
      solos_param_show(ldvarg111, ldvarg113, ldvarg112);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_52243;
    default:
    ldv_stop();
    }
    ldv_52243: ;
  } else {
  }
  goto ldv_52083;
  case 38: ;
  if (ldv_state_variable_81 != 0) {
    tmp___277 = __VERIFIER_nondet_int();
    switch (tmp___277) {
    case 0: ;
    if (ldv_state_variable_81 == 1) {
      solos_param_show(ldvarg114, ldvarg116, ldvarg115);
      ldv_state_variable_81 = 1;
    } else {
    }
    goto ldv_52247;
    default:
    ldv_stop();
    }
    ldv_52247: ;
  } else {
  }
  goto ldv_52083;
  case 39: ;
  if (ldv_state_variable_52 != 0) {
    tmp___278 = __VERIFIER_nondet_int();
    switch (tmp___278) {
    case 0: ;
    if (ldv_state_variable_52 == 1) {
      solos_param_show(ldvarg117, ldvarg119, ldvarg118);
      ldv_state_variable_52 = 1;
    } else {
    }
    goto ldv_52251;
    default:
    ldv_stop();
    }
    ldv_52251: ;
  } else {
  }
  goto ldv_52083;
  case 40: ;
  if (ldv_state_variable_60 != 0) {
    tmp___279 = __VERIFIER_nondet_int();
    switch (tmp___279) {
    case 0: ;
    if (ldv_state_variable_60 == 1) {
      solos_param_show(ldvarg120, ldvarg122, ldvarg121);
      ldv_state_variable_60 = 1;
    } else {
    }
    goto ldv_52255;
    default:
    ldv_stop();
    }
    ldv_52255: ;
  } else {
  }
  goto ldv_52083;
  case 41: ;
  if (ldv_state_variable_56 != 0) {
    tmp___280 = __VERIFIER_nondet_int();
    switch (tmp___280) {
    case 0: ;
    if (ldv_state_variable_56 == 1) {
      solos_param_show(ldvarg123, ldvarg125, ldvarg124);
      ldv_state_variable_56 = 1;
    } else {
    }
    goto ldv_52259;
    default:
    ldv_stop();
    }
    ldv_52259: ;
  } else {
  }
  goto ldv_52083;
  case 42: ;
  if (ldv_state_variable_73 != 0) {
    tmp___281 = __VERIFIER_nondet_int();
    switch (tmp___281) {
    case 0: ;
    if (ldv_state_variable_73 == 1) {
      solos_param_show(ldvarg126, ldvarg128, ldvarg127);
      ldv_state_variable_73 = 1;
    } else {
    }
    goto ldv_52263;
    default:
    ldv_stop();
    }
    ldv_52263: ;
  } else {
  }
  goto ldv_52083;
  case 43: ;
  if (ldv_state_variable_66 != 0) {
    tmp___282 = __VERIFIER_nondet_int();
    switch (tmp___282) {
    case 0: ;
    if (ldv_state_variable_66 == 1) {
      solos_param_show(ldvarg129, ldvarg131, ldvarg130);
      ldv_state_variable_66 = 1;
    } else {
    }
    goto ldv_52267;
    default:
    ldv_stop();
    }
    ldv_52267: ;
  } else {
  }
  goto ldv_52083;
  case 44: ;
  if (ldv_state_variable_45 != 0) {
    tmp___283 = __VERIFIER_nondet_int();
    switch (tmp___283) {
    case 0: ;
    if (ldv_state_variable_45 == 1) {
      solos_param_show(ldvarg132, ldvarg134, ldvarg133);
      ldv_state_variable_45 = 1;
    } else {
    }
    goto ldv_52271;
    default:
    ldv_stop();
    }
    ldv_52271: ;
  } else {
  }
  goto ldv_52083;
  case 45: ;
  if (ldv_state_variable_86 != 0) {
    tmp___284 = __VERIFIER_nondet_int();
    switch (tmp___284) {
    case 0: ;
    if (ldv_state_variable_86 == 1) {
      solos_param_show(ldvarg135, ldvarg137, ldvarg136);
      ldv_state_variable_86 = 1;
    } else {
    }
    goto ldv_52275;
    default:
    ldv_stop();
    }
    ldv_52275: ;
  } else {
  }
  goto ldv_52083;
  case 46: ;
  if (ldv_state_variable_76 != 0) {
    tmp___285 = __VERIFIER_nondet_int();
    switch (tmp___285) {
    case 0: ;
    if (ldv_state_variable_76 == 1) {
      solos_param_show(ldvarg138, ldvarg140, ldvarg139);
      ldv_state_variable_76 = 1;
    } else {
    }
    goto ldv_52279;
    default:
    ldv_stop();
    }
    ldv_52279: ;
  } else {
  }
  goto ldv_52083;
  case 47: ;
  if (ldv_state_variable_19 != 0) {
    tmp___286 = __VERIFIER_nondet_int();
    switch (tmp___286) {
    case 0: ;
    if (ldv_state_variable_19 == 1) {
      solos_param_store(dev_attr_AnnexAMaxMargin_group1, dev_attr_AnnexAMaxMargin_group0,
                        (char const *)ldvarg143, ldvarg142);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_52283;
    case 1: ;
    if (ldv_state_variable_19 == 1) {
      solos_param_show(dev_attr_AnnexAMaxMargin_group1, dev_attr_AnnexAMaxMargin_group0,
                       ldvarg141);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_52283;
    default:
    ldv_stop();
    }
    ldv_52283: ;
  } else {
  }
  goto ldv_52083;
  case 48: ;
  if (ldv_state_variable_62 != 0) {
    tmp___287 = __VERIFIER_nondet_int();
    switch (tmp___287) {
    case 0: ;
    if (ldv_state_variable_62 == 1) {
      solos_param_show(ldvarg144, ldvarg146, ldvarg145);
      ldv_state_variable_62 = 1;
    } else {
    }
    goto ldv_52288;
    default:
    ldv_stop();
    }
    ldv_52288: ;
  } else {
  }
  goto ldv_52083;
  case 49: ;
  if (ldv_state_variable_54 != 0) {
    tmp___288 = __VERIFIER_nondet_int();
    switch (tmp___288) {
    case 0: ;
    if (ldv_state_variable_54 == 1) {
      solos_param_show(ldvarg147, ldvarg149, ldvarg148);
      ldv_state_variable_54 = 1;
    } else {
    }
    goto ldv_52292;
    default:
    ldv_stop();
    }
    ldv_52292: ;
  } else {
  }
  goto ldv_52083;
  case 50: ;
  if (ldv_state_variable_67 != 0) {
    tmp___289 = __VERIFIER_nondet_int();
    switch (tmp___289) {
    case 0: ;
    if (ldv_state_variable_67 == 1) {
      solos_param_show(ldvarg150, ldvarg152, ldvarg151);
      ldv_state_variable_67 = 1;
    } else {
    }
    goto ldv_52296;
    default:
    ldv_stop();
    }
    ldv_52296: ;
  } else {
  }
  goto ldv_52083;
  case 51: ;
  if (ldv_state_variable_70 != 0) {
    tmp___290 = __VERIFIER_nondet_int();
    switch (tmp___290) {
    case 0: ;
    if (ldv_state_variable_70 == 1) {
      solos_param_show(ldvarg153, ldvarg155, ldvarg154);
      ldv_state_variable_70 = 1;
    } else {
    }
    goto ldv_52300;
    default:
    ldv_stop();
    }
    ldv_52300: ;
  } else {
  }
  goto ldv_52083;
  case 52: ;
  if (ldv_state_variable_68 != 0) {
    tmp___291 = __VERIFIER_nondet_int();
    switch (tmp___291) {
    case 0: ;
    if (ldv_state_variable_68 == 1) {
      solos_param_show(ldvarg156, ldvarg158, ldvarg157);
      ldv_state_variable_68 = 1;
    } else {
    }
    goto ldv_52304;
    default:
    ldv_stop();
    }
    ldv_52304: ;
  } else {
  }
  goto ldv_52083;
  case 53: ;
  if (ldv_state_variable_2 != 0) {
    tmp___292 = __VERIFIER_nondet_int();
    switch (tmp___292) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_0 = fpga_probe(fpga_driver_group1, (struct pci_device_id const *)ldvarg159);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_52308;
    case 1: ;
    if (ldv_state_variable_2 == 2) {
      fpga_remove(fpga_driver_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    goto ldv_52308;
    case 2: ;
    if (ldv_state_variable_2 == 2) {
      ldv_shutdown_2();
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_52308;
    default:
    ldv_stop();
    }
    ldv_52308: ;
  } else {
  }
  goto ldv_52083;
  case 54: ;
  if (ldv_state_variable_17 != 0) {
    tmp___293 = __VERIFIER_nondet_int();
    switch (tmp___293) {
    case 0: ;
    if (ldv_state_variable_17 == 1) {
      solos_param_show(ldvarg160, ldvarg162, ldvarg161);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_52314;
    default:
    ldv_stop();
    }
    ldv_52314: ;
  } else {
  }
  goto ldv_52083;
  case 55: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_52083;
  case 56: ;
  if (ldv_state_variable_88 != 0) {
    tmp___294 = __VERIFIER_nondet_int();
    switch (tmp___294) {
    case 0: ;
    if (ldv_state_variable_88 == 1) {
      solos_param_show(ldvarg163, ldvarg165, ldvarg164);
      ldv_state_variable_88 = 1;
    } else {
    }
    goto ldv_52319;
    default:
    ldv_stop();
    }
    ldv_52319: ;
  } else {
  }
  goto ldv_52083;
  case 57: ;
  if (ldv_state_variable_30 != 0) {
    tmp___295 = __VERIFIER_nondet_int();
    switch (tmp___295) {
    case 0: ;
    if (ldv_state_variable_30 == 1) {
      solos_param_store(dev_attr_ShowtimeLed_group1, dev_attr_ShowtimeLed_group0,
                        (char const *)ldvarg168, ldvarg167);
      ldv_state_variable_30 = 1;
    } else {
    }
    goto ldv_52323;
    case 1: ;
    if (ldv_state_variable_30 == 1) {
      solos_param_show(dev_attr_ShowtimeLed_group1, dev_attr_ShowtimeLed_group0, ldvarg166);
      ldv_state_variable_30 = 1;
    } else {
    }
    goto ldv_52323;
    default:
    ldv_stop();
    }
    ldv_52323: ;
  } else {
  }
  goto ldv_52083;
  case 58: ;
  if (ldv_state_variable_82 != 0) {
    tmp___296 = __VERIFIER_nondet_int();
    switch (tmp___296) {
    case 0: ;
    if (ldv_state_variable_82 == 1) {
      solos_param_show(ldvarg169, ldvarg171, ldvarg170);
      ldv_state_variable_82 = 1;
    } else {
    }
    goto ldv_52328;
    default:
    ldv_stop();
    }
    ldv_52328: ;
  } else {
  }
  goto ldv_52083;
  case 59: ;
  if (ldv_state_variable_25 != 0) {
    tmp___297 = __VERIFIER_nondet_int();
    switch (tmp___297) {
    case 0: ;
    if (ldv_state_variable_25 == 1) {
      solos_param_store(dev_attr_DetectNoise_group1, dev_attr_DetectNoise_group0,
                        (char const *)ldvarg174, ldvarg173);
      ldv_state_variable_25 = 1;
    } else {
    }
    goto ldv_52332;
    case 1: ;
    if (ldv_state_variable_25 == 1) {
      solos_param_show(dev_attr_DetectNoise_group1, dev_attr_DetectNoise_group0, ldvarg172);
      ldv_state_variable_25 = 1;
    } else {
    }
    goto ldv_52332;
    default:
    ldv_stop();
    }
    ldv_52332: ;
  } else {
  }
  goto ldv_52083;
  case 60: ;
  if (ldv_state_variable_28 != 0) {
    tmp___298 = __VERIFIER_nondet_int();
    switch (tmp___298) {
    case 0: ;
    if (ldv_state_variable_28 == 1) {
      solos_param_store(dev_attr_Defaults_group1, dev_attr_Defaults_group0, (char const *)ldvarg177,
                        ldvarg176);
      ldv_state_variable_28 = 1;
    } else {
    }
    goto ldv_52337;
    case 1: ;
    if (ldv_state_variable_28 == 1) {
      solos_param_show(dev_attr_Defaults_group1, dev_attr_Defaults_group0, ldvarg175);
      ldv_state_variable_28 = 1;
    } else {
    }
    goto ldv_52337;
    default:
    ldv_stop();
    }
    ldv_52337: ;
  } else {
  }
  goto ldv_52083;
  case 61: ;
  if (ldv_state_variable_83 != 0) {
    tmp___299 = __VERIFIER_nondet_int();
    switch (tmp___299) {
    case 0: ;
    if (ldv_state_variable_83 == 1) {
      solos_param_show(ldvarg178, ldvarg180, ldvarg179);
      ldv_state_variable_83 = 1;
    } else {
    }
    goto ldv_52342;
    default:
    ldv_stop();
    }
    ldv_52342: ;
  } else {
  }
  goto ldv_52083;
  case 62: ;
  if (ldv_state_variable_75 != 0) {
    tmp___300 = __VERIFIER_nondet_int();
    switch (tmp___300) {
    case 0: ;
    if (ldv_state_variable_75 == 1) {
      solos_param_show(ldvarg181, ldvarg183, ldvarg182);
      ldv_state_variable_75 = 1;
    } else {
    }
    goto ldv_52346;
    default:
    ldv_stop();
    }
    ldv_52346: ;
  } else {
  }
  goto ldv_52083;
  case 63: ;
  if (ldv_state_variable_40 != 0) {
    tmp___301 = __VERIFIER_nondet_int();
    switch (tmp___301) {
    case 0: ;
    if (ldv_state_variable_40 == 1) {
      solos_param_show(ldvarg184, ldvarg186, ldvarg185);
      ldv_state_variable_40 = 1;
    } else {
    }
    goto ldv_52350;
    default:
    ldv_stop();
    }
    ldv_52350: ;
  } else {
  }
  goto ldv_52083;
  case 64: ;
  if (ldv_state_variable_14 != 0) {
    tmp___302 = __VERIFIER_nondet_int();
    switch (tmp___302) {
    case 0: ;
    if (ldv_state_variable_14 == 1) {
      solos_param_show(ldvarg187, ldvarg189, ldvarg188);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_52354;
    default:
    ldv_stop();
    }
    ldv_52354: ;
  } else {
  }
  goto ldv_52083;
  case 65: ;
  if (ldv_state_variable_69 != 0) {
    tmp___303 = __VERIFIER_nondet_int();
    switch (tmp___303) {
    case 0: ;
    if (ldv_state_variable_69 == 1) {
      solos_param_show(ldvarg190, ldvarg192, ldvarg191);
      ldv_state_variable_69 = 1;
    } else {
    }
    goto ldv_52358;
    default:
    ldv_stop();
    }
    ldv_52358: ;
  } else {
  }
  goto ldv_52083;
  case 66: ;
  if (ldv_state_variable_59 != 0) {
    tmp___304 = __VERIFIER_nondet_int();
    switch (tmp___304) {
    case 0: ;
    if (ldv_state_variable_59 == 1) {
      solos_param_show(ldvarg193, ldvarg195, ldvarg194);
      ldv_state_variable_59 = 1;
    } else {
    }
    goto ldv_52362;
    default:
    ldv_stop();
    }
    ldv_52362: ;
  } else {
  }
  goto ldv_52083;
  case 67: ;
  if (ldv_state_variable_49 != 0) {
    tmp___305 = __VERIFIER_nondet_int();
    switch (tmp___305) {
    case 0: ;
    if (ldv_state_variable_49 == 1) {
      solos_param_show(ldvarg196, ldvarg198, ldvarg197);
      ldv_state_variable_49 = 1;
    } else {
    }
    goto ldv_52366;
    default:
    ldv_stop();
    }
    ldv_52366: ;
  } else {
  }
  goto ldv_52083;
  case 68: ;
  if (ldv_state_variable_24 != 0) {
    tmp___306 = __VERIFIER_nondet_int();
    switch (tmp___306) {
    case 0: ;
    if (ldv_state_variable_24 == 1) {
      solos_param_store(dev_attr_BisAForceSNRMarginDn_group1, dev_attr_BisAForceSNRMarginDn_group0,
                        (char const *)ldvarg201, ldvarg200);
      ldv_state_variable_24 = 1;
    } else {
    }
    goto ldv_52370;
    case 1: ;
    if (ldv_state_variable_24 == 1) {
      solos_param_show(dev_attr_BisAForceSNRMarginDn_group1, dev_attr_BisAForceSNRMarginDn_group0,
                       ldvarg199);
      ldv_state_variable_24 = 1;
    } else {
    }
    goto ldv_52370;
    default:
    ldv_stop();
    }
    ldv_52370: ;
  } else {
  }
  goto ldv_52083;
  case 69: ;
  if (ldv_state_variable_53 != 0) {
    tmp___307 = __VERIFIER_nondet_int();
    switch (tmp___307) {
    case 0: ;
    if (ldv_state_variable_53 == 1) {
      solos_param_show(ldvarg202, ldvarg204, ldvarg203);
      ldv_state_variable_53 = 1;
    } else {
    }
    goto ldv_52375;
    default:
    ldv_stop();
    }
    ldv_52375: ;
  } else {
  }
  goto ldv_52083;
  case 70: ;
  if (ldv_state_variable_79 != 0) {
    tmp___308 = __VERIFIER_nondet_int();
    switch (tmp___308) {
    case 0: ;
    if (ldv_state_variable_79 == 1) {
      solos_param_show(ldvarg205, ldvarg207, ldvarg206);
      ldv_state_variable_79 = 1;
    } else {
    }
    goto ldv_52379;
    default:
    ldv_stop();
    }
    ldv_52379: ;
  } else {
  }
  goto ldv_52083;
  case 71: ;
  if (ldv_state_variable_22 != 0) {
    tmp___309 = __VERIFIER_nondet_int();
    switch (tmp___309) {
    case 0: ;
    if (ldv_state_variable_22 == 1) {
      solos_param_store(dev_attr_BisAMaxMargin_group1, dev_attr_BisAMaxMargin_group0,
                        (char const *)ldvarg210, ldvarg209);
      ldv_state_variable_22 = 1;
    } else {
    }
    goto ldv_52383;
    case 1: ;
    if (ldv_state_variable_22 == 1) {
      solos_param_show(dev_attr_BisAMaxMargin_group1, dev_attr_BisAMaxMargin_group0,
                       ldvarg208);
      ldv_state_variable_22 = 1;
    } else {
    }
    goto ldv_52383;
    default:
    ldv_stop();
    }
    ldv_52383: ;
  } else {
  }
  goto ldv_52083;
  case 72: ;
  if (ldv_state_variable_42 != 0) {
    tmp___310 = __VERIFIER_nondet_int();
    switch (tmp___310) {
    case 0: ;
    if (ldv_state_variable_42 == 1) {
      solos_param_show(ldvarg211, ldvarg213, ldvarg212);
      ldv_state_variable_42 = 1;
    } else {
    }
    goto ldv_52388;
    default:
    ldv_stop();
    }
    ldv_52388: ;
  } else {
  }
  goto ldv_52083;
  case 73: ;
  if (ldv_state_variable_0 != 0) {
    tmp___311 = __VERIFIER_nondet_int();
    switch (tmp___311) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      solos_pci_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_52393;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = solos_pci_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_state_variable_43 = 1;
        ldv_state_variable_37 = 1;
        ldv_state_variable_34 = 1;
        ldv_state_variable_4 = 1;
        ldv_state_variable_38 = 1;
        ldv_state_variable_8 = 1;
        ldv_initialize_geos_gpio_attr_8();
        ldv_state_variable_47 = 1;
        ldv_state_variable_51 = 1;
        ldv_state_variable_9 = 1;
        ldv_initialize_geos_gpio_attr_9();
        ldv_state_variable_36 = 1;
        ldv_initialize_device_attribute_36();
        ldv_state_variable_85 = 1;
        ldv_state_variable_6 = 1;
        ldv_state_variable_13 = 1;
        ldv_state_variable_23 = 1;
        ldv_initialize_device_attribute_23();
        ldv_state_variable_46 = 1;
        ldv_state_variable_42 = 1;
        ldv_state_variable_22 = 1;
        ldv_initialize_device_attribute_22();
        ldv_state_variable_79 = 1;
        ldv_state_variable_53 = 1;
        ldv_state_variable_24 = 1;
        ldv_initialize_device_attribute_24();
        ldv_state_variable_49 = 1;
        ldv_state_variable_59 = 1;
        ldv_state_variable_69 = 1;
        ldv_state_variable_14 = 1;
        ldv_state_variable_40 = 1;
        ldv_state_variable_75 = 1;
        ldv_state_variable_83 = 1;
        ldv_state_variable_28 = 1;
        ldv_initialize_device_attribute_28();
        ldv_state_variable_25 = 1;
        ldv_initialize_device_attribute_25();
        ldv_state_variable_82 = 1;
        ldv_state_variable_30 = 1;
        ldv_initialize_device_attribute_30();
        ldv_state_variable_88 = 1;
        ldv_state_variable_17 = 1;
        ldv_state_variable_68 = 1;
        ldv_state_variable_70 = 1;
        ldv_state_variable_67 = 1;
        ldv_state_variable_54 = 1;
        ldv_state_variable_62 = 1;
        ldv_state_variable_19 = 1;
        ldv_initialize_device_attribute_19();
        ldv_state_variable_76 = 1;
        ldv_state_variable_86 = 1;
        ldv_state_variable_45 = 1;
        ldv_state_variable_66 = 1;
        ldv_state_variable_73 = 1;
        ldv_state_variable_56 = 1;
        ldv_state_variable_60 = 1;
        ldv_state_variable_52 = 1;
        ldv_state_variable_81 = 1;
        ldv_state_variable_15 = 1;
        ldv_state_variable_12 = 1;
        ldv_state_variable_41 = 1;
        ldv_state_variable_58 = 1;
        ldv_state_variable_64 = 1;
        ldv_state_variable_39 = 1;
        ldv_state_variable_50 = 1;
        ldv_state_variable_29 = 1;
        ldv_initialize_device_attribute_29();
        ldv_state_variable_65 = 1;
        ldv_state_variable_77 = 1;
        ldv_state_variable_87 = 1;
        ldv_state_variable_48 = 1;
        ldv_state_variable_78 = 1;
        ldv_state_variable_11 = 1;
        ldv_initialize_geos_gpio_attr_11();
        ldv_state_variable_35 = 1;
        ldv_initialize_device_attribute_35();
        ldv_state_variable_31 = 1;
        ldv_initialize_device_attribute_31();
        ldv_state_variable_10 = 1;
        ldv_initialize_geos_gpio_attr_10();
        ldv_state_variable_89 = 1;
        ldv_state_variable_20 = 1;
        ldv_initialize_device_attribute_20();
        ldv_state_variable_61 = 1;
        ldv_state_variable_57 = 1;
        ldv_state_variable_27 = 1;
        ldv_initialize_device_attribute_27();
        ldv_state_variable_74 = 1;
        ldv_state_variable_84 = 1;
        ldv_state_variable_55 = 1;
        ldv_state_variable_44 = 1;
        ldv_state_variable_16 = 1;
        ldv_state_variable_72 = 1;
        ldv_state_variable_18 = 1;
        ldv_initialize_device_attribute_18();
        ldv_state_variable_26 = 1;
        ldv_initialize_device_attribute_26();
        ldv_state_variable_80 = 1;
        ldv_state_variable_7 = 1;
        ldv_initialize_geos_gpio_attr_7();
        ldv_state_variable_71 = 1;
        ldv_state_variable_21 = 1;
        ldv_initialize_device_attribute_21();
        ldv_state_variable_63 = 1;
        ldv_state_variable_90 = 1;
        ldv_initialize_device_attribute_90();
        ldv_state_variable_32 = 1;
        ldv_initialize_device_attribute_32();
        ldv_state_variable_33 = 1;
        ldv_initialize_device_attribute_33();
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_52393;
    default:
    ldv_stop();
    }
    ldv_52393: ;
  } else {
  }
  goto ldv_52083;
  case 74: ;
  if (ldv_state_variable_46 != 0) {
    tmp___312 = __VERIFIER_nondet_int();
    switch (tmp___312) {
    case 0: ;
    if (ldv_state_variable_46 == 1) {
      solos_param_show(ldvarg214, ldvarg216, ldvarg215);
      ldv_state_variable_46 = 1;
    } else {
    }
    goto ldv_52398;
    default:
    ldv_stop();
    }
    ldv_52398: ;
  } else {
  }
  goto ldv_52083;
  case 75: ;
  if (ldv_state_variable_23 != 0) {
    tmp___313 = __VERIFIER_nondet_int();
    switch (tmp___313) {
    case 0: ;
    if (ldv_state_variable_23 == 1) {
      solos_param_store(dev_attr_BisMForceSNRMarginDn_group1, dev_attr_BisMForceSNRMarginDn_group0,
                        (char const *)ldvarg219, ldvarg218);
      ldv_state_variable_23 = 1;
    } else {
    }
    goto ldv_52402;
    case 1: ;
    if (ldv_state_variable_23 == 1) {
      solos_param_show(dev_attr_BisMForceSNRMarginDn_group1, dev_attr_BisMForceSNRMarginDn_group0,
                       ldvarg217);
      ldv_state_variable_23 = 1;
    } else {
    }
    goto ldv_52402;
    default:
    ldv_stop();
    }
    ldv_52402: ;
  } else {
  }
  goto ldv_52083;
  case 76: ;
  if (ldv_state_variable_13 != 0) {
    tmp___314 = __VERIFIER_nondet_int();
    switch (tmp___314) {
    case 0: ;
    if (ldv_state_variable_13 == 1) {
      solos_param_show(ldvarg220, ldvarg222, ldvarg221);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_52407;
    default:
    ldv_stop();
    }
    ldv_52407: ;
  } else {
  }
  goto ldv_52083;
  case 77: ;
  if (ldv_state_variable_6 != 0) {
    tmp___315 = __VERIFIER_nondet_int();
    switch (tmp___315) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      geos_gpio_show(ldvarg223, ldvarg225, ldvarg224);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_52411;
    default:
    ldv_stop();
    }
    ldv_52411: ;
  } else {
  }
  goto ldv_52083;
  case 78: ;
  if (ldv_state_variable_85 != 0) {
    tmp___316 = __VERIFIER_nondet_int();
    switch (tmp___316) {
    case 0: ;
    if (ldv_state_variable_85 == 1) {
      solos_param_show(ldvarg226, ldvarg228, ldvarg227);
      ldv_state_variable_85 = 1;
    } else {
    }
    goto ldv_52415;
    default:
    ldv_stop();
    }
    ldv_52415: ;
  } else {
  }
  goto ldv_52083;
  case 79: ;
  if (ldv_state_variable_3 != 0) {
    tmp___317 = __VERIFIER_nondet_int();
    switch (tmp___317) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      psend(fpga_ops_group0, ldvarg229);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      psend(fpga_ops_group0, ldvarg229);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_52419;
    case 1: ;
    if (ldv_state_variable_3 == 2) {
      pclose(fpga_ops_group0);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_52419;
    case 2: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_2 = popen(fpga_ops_group0);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_52419;
    default:
    ldv_stop();
    }
    ldv_52419: ;
  } else {
  }
  goto ldv_52083;
  case 80: ;
  if (ldv_state_variable_36 != 0) {
    tmp___318 = __VERIFIER_nondet_int();
    switch (tmp___318) {
    case 0: ;
    if (ldv_state_variable_36 == 1) {
      solos_param_store(dev_attr_Action_group1, dev_attr_Action_group0, (char const *)ldvarg232,
                        ldvarg231);
      ldv_state_variable_36 = 1;
    } else {
    }
    goto ldv_52425;
    case 1: ;
    if (ldv_state_variable_36 == 1) {
      solos_param_show(dev_attr_Action_group1, dev_attr_Action_group0, ldvarg230);
      ldv_state_variable_36 = 1;
    } else {
    }
    goto ldv_52425;
    default:
    ldv_stop();
    }
    ldv_52425: ;
  } else {
  }
  goto ldv_52083;
  case 81: ;
  if (ldv_state_variable_9 != 0) {
    tmp___319 = __VERIFIER_nondet_int();
    switch (tmp___319) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      geos_gpio_store(gpio_attr_GPIO3_group1, gpio_attr_GPIO3_group0, (char const *)ldvarg235,
                      ldvarg234);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_52430;
    case 1: ;
    if (ldv_state_variable_9 == 1) {
      geos_gpio_show(gpio_attr_GPIO3_group1, gpio_attr_GPIO3_group0, ldvarg233);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_52430;
    default:
    ldv_stop();
    }
    ldv_52430: ;
  } else {
  }
  goto ldv_52083;
  case 82: ;
  if (ldv_state_variable_51 != 0) {
    tmp___320 = __VERIFIER_nondet_int();
    switch (tmp___320) {
    case 0: ;
    if (ldv_state_variable_51 == 1) {
      solos_param_show(ldvarg236, ldvarg238, ldvarg237);
      ldv_state_variable_51 = 1;
    } else {
    }
    goto ldv_52435;
    default:
    ldv_stop();
    }
    ldv_52435: ;
  } else {
  }
  goto ldv_52083;
  case 83: ;
  if (ldv_state_variable_47 != 0) {
    tmp___321 = __VERIFIER_nondet_int();
    switch (tmp___321) {
    case 0: ;
    if (ldv_state_variable_47 == 1) {
      solos_param_show(ldvarg239, ldvarg241, ldvarg240);
      ldv_state_variable_47 = 1;
    } else {
    }
    goto ldv_52439;
    default:
    ldv_stop();
    }
    ldv_52439: ;
  } else {
  }
  goto ldv_52083;
  case 84: ;
  if (ldv_state_variable_8 != 0) {
    tmp___322 = __VERIFIER_nondet_int();
    switch (tmp___322) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      geos_gpio_store(gpio_attr_GPIO4_group1, gpio_attr_GPIO4_group0, (char const *)ldvarg244,
                      ldvarg243);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_52443;
    case 1: ;
    if (ldv_state_variable_8 == 1) {
      geos_gpio_show(gpio_attr_GPIO4_group1, gpio_attr_GPIO4_group0, ldvarg242);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_52443;
    default:
    ldv_stop();
    }
    ldv_52443: ;
  } else {
  }
  goto ldv_52083;
  case 85: ;
  if (ldv_state_variable_38 != 0) {
    tmp___323 = __VERIFIER_nondet_int();
    switch (tmp___323) {
    case 0: ;
    if (ldv_state_variable_38 == 1) {
      solos_param_show(ldvarg245, ldvarg247, ldvarg246);
      ldv_state_variable_38 = 1;
    } else {
    }
    goto ldv_52448;
    default:
    ldv_stop();
    }
    ldv_52448: ;
  } else {
  }
  goto ldv_52083;
  case 86: ;
  if (ldv_state_variable_4 != 0) {
    tmp___324 = __VERIFIER_nondet_int();
    switch (tmp___324) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      hardware_show(ldvarg248, ldvarg250, ldvarg249);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_52452;
    default:
    ldv_stop();
    }
    ldv_52452: ;
  } else {
  }
  goto ldv_52083;
  case 87: ;
  if (ldv_state_variable_34 != 0) {
    tmp___325 = __VERIFIER_nondet_int();
    switch (tmp___325) {
    case 0: ;
    if (ldv_state_variable_34 == 1) {
      solos_param_show(ldvarg251, ldvarg253, ldvarg252);
      ldv_state_variable_34 = 1;
    } else {
    }
    goto ldv_52456;
    default:
    ldv_stop();
    }
    ldv_52456: ;
  } else {
  }
  goto ldv_52083;
  case 88: ;
  if (ldv_state_variable_37 != 0) {
    tmp___326 = __VERIFIER_nondet_int();
    switch (tmp___326) {
    case 0: ;
    if (ldv_state_variable_37 == 1) {
      solos_param_show(ldvarg254, ldvarg256, ldvarg255);
      ldv_state_variable_37 = 1;
    } else {
    }
    goto ldv_52460;
    default:
    ldv_stop();
    }
    ldv_52460: ;
  } else {
  }
  goto ldv_52083;
  case 89: ;
  if (ldv_state_variable_43 != 0) {
    tmp___327 = __VERIFIER_nondet_int();
    switch (tmp___327) {
    case 0: ;
    if (ldv_state_variable_43 == 1) {
      solos_param_show(ldvarg257, ldvarg259, ldvarg258);
      ldv_state_variable_43 = 1;
    } else {
    }
    goto ldv_52464;
    default:
    ldv_stop();
    }
    ldv_52464: ;
  } else {
  }
  goto ldv_52083;
  case 90: ;
  if (ldv_state_variable_5 != 0) {
    tmp___328 = __VERIFIER_nondet_int();
    switch (tmp___328) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      hardware_show(ldvarg260, ldvarg262, ldvarg261);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52468;
    default:
    ldv_stop();
    }
    ldv_52468: ;
  } else {
  }
  goto ldv_52083;
  default:
  ldv_stop();
  }
  ldv_52083: ;
  goto ldv_52471;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_5(lock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_irq_8(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_9(lock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irq_11(lock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_12(lock, flags);
  return;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
void *ldv_kmem_cache_alloc_20(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
void *ldv_malloc(size_t size ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_26(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_28(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_30(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_31(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_32(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_33(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_34(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
int ldv_pskb_expand_head_35(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_36(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_37(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
__inline static int ldv_request_irq_38(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_1(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_1((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_free_irq_39(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
struct atm_dev *ldv_atm_dev_register_40(char const *ldv_func_arg1 , struct device *ldv_func_arg2 ,
                                        struct atmdev_ops const *ldv_func_arg3 ,
                                        int ldv_func_arg4 , unsigned long *ldv_func_arg5 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  struct atm_dev *tmp ;
  {
  tmp = atm_dev_register(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4,
                         ldv_func_arg5);
  ldv_func_res = tmp;
  if ((unsigned long )ldv_func_res != (unsigned long )((ldv_func_ret_type___3 )0)) {
    ldv_state_variable_3 = 1;
    ldv_initialize_atmdev_ops_3();
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_atm_dev_deregister_41(struct atm_dev *ldv_func_arg1 )
{
  {
  atm_dev_deregister(ldv_func_arg1);
  ldv_state_variable_3 = 0;
  return;
}
}
void ldv_free_irq_42(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv___pci_register_driver_43(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_2 = 1;
  ldv_pci_driver_2();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_44(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_2 = 0;
  return;
}
}
extern void *memset(void * , int , size_t ) ;
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
bool ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 2012UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(2012L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(2012UL - (unsigned long )ptr));
}
}
bool ldv_is_err_or_null(void const *ptr )
{
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    tmp = ldv_is_err(ptr);
    if ((int )tmp) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((bool )tmp___0);
}
}
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0 && (flags & 16U) != 0U) {
    ldv_error();
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page *tmp ;
  {
  if (ldv_spin != 0 && (flags & 16U) != 0U) {
    ldv_error();
  } else {
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    ldv_error();
  } else {
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{
  int is_lock ;
  {
  is_lock = ldv_undef_int();
  if (is_lock != 0) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __dev_kfree_skb_irq(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
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
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
void _raw_read_lock(rwlock_t *arg0) {
  return;
}
void _raw_read_unlock(rwlock_t *arg0) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int atm_charge(struct atm_vcc *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void atm_dev_deregister(struct atm_dev *arg0) {
  return;
}
void *external_alloc(void);
struct atm_dev *atm_dev_register(const char *arg0, struct device *arg1, const struct atmdev_ops *arg2, int arg3, unsigned long *arg4) {
  return (struct atm_dev *)external_alloc();
}
void atm_dev_signal_change(struct atm_dev *arg0, char arg1) {
  return;
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
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
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
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
void kfree_skb(struct sk_buff *arg0) {
  return;
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_shutdown_2() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct page *ldv_some_page() {
  return (struct page *)external_alloc();
}
void list_del(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int net_ratelimit() {
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
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
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
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
long int simple_strtol(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_long();
}
void *external_alloc(void);
struct sk_buff *skb_dequeue(struct sk_buff_head *arg0) {
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
void skb_queue_tail(struct sk_buff_head *arg0, struct sk_buff *arg1) {
  return;
}
void skb_unlink(struct sk_buff *arg0, struct sk_buff_head *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int sysfs_create_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return;
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
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
