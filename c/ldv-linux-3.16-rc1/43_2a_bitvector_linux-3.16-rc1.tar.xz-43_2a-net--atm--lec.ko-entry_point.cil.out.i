extern void __VERIFIER_error() __attribute__ ((__noreturn__));
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
struct __anonstruct_ldv_1022_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1037_10 {
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
union __anonunion_ldv_1038_8 {
   struct __anonstruct_ldv_1022_9 ldv_1022 ;
   struct __anonstruct_ldv_1037_10 ldv_1037 ;
};
struct desc_struct {
   union __anonunion_ldv_1038_8 ldv_1038 ;
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
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_1458_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1458_15 ldv_1458 ;
};
typedef struct arch_spinlock arch_spinlock_t;
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
struct pid;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
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
union __anonunion_ldv_2998_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2998_20 ldv_2998 ;
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
struct __anonstruct_ldv_5289_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5295_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5296_24 {
   struct __anonstruct_ldv_5289_25 ldv_5289 ;
   struct __anonstruct_ldv_5295_26 ldv_5295 ;
};
union __anonunion_ldv_5305_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5296_24 ldv_5296 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5305_27 ldv_5305 ;
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
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
} __attribute__((__packed__)) ;
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
struct __anonstruct_ldv_6346_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6347_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6346_31 ldv_6346 ;
};
struct spinlock {
   union __anonunion_ldv_6347_30 ldv_6347 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_32 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_32 rwlock_t;
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_33 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_33 seqlock_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_34 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_34 kuid_t;
struct __anonstruct_kgid_t_35 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_35 kgid_t;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct optimistic_spin_queue;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
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
};
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct bio_vec;
struct notifier_block;
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
struct __anonstruct_ldv_13818_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13820_128 {
   struct __anonstruct_ldv_13818_129 ldv_13818 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13820_128 ldv_13820 ;
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
struct __anonstruct_ldv_14064_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14068_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14069_135 {
   struct __anonstruct_ldv_14064_136 ldv_14064 ;
   struct __anonstruct_ldv_14068_137 ldv_14068 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14069_135 ldv_14069 ;
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
union __anonunion_ldv_14178_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14184_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14194_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14196_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14194_144 ldv_14194 ;
   int units ;
};
struct __anonstruct_ldv_14198_142 {
   union __anonunion_ldv_14196_143 ldv_14196 ;
   atomic_t _count ;
};
union __anonunion_ldv_14200_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14198_142 ldv_14198 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14201_139 {
   union __anonunion_ldv_14184_140 ldv_14184 ;
   union __anonunion_ldv_14200_141 ldv_14200 ;
};
struct __anonstruct_ldv_14208_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14213_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14208_146 ldv_14208 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14219_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14178_138 ldv_14178 ;
   struct __anonstruct_ldv_14201_139 ldv_14201 ;
   union __anonunion_ldv_14213_145 ldv_14213 ;
   union __anonunion_ldv_14219_147 ldv_14219 ;
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
union __anonunion_ldv_14582_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14582_153 ldv_14582 ;
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
};
union __anonunion_ldv_14726_154 {
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
   union __anonunion_ldv_14726_154 ldv_14726 ;
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
union __anonunion_ldv_15401_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15401_155 ldv_15401 ;
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
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct_ldv_16027_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_16033_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_16034_156 {
   struct __anonstruct_ldv_16027_157 ldv_16027 ;
   struct __anonstruct_ldv_16033_158 ldv_16033 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_16034_156 ldv_16034 ;
};
struct atm_vcc;
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
union __anonunion_ldv_16594_160 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_16594_160 ldv_16594 ;
   unsigned long nr_segs ;
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
enum ldv_15221 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_15221 socket_state;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct in6_addr;
struct sk_buff;
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
struct plist_head {
   struct list_head node_list ;
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
struct __anonstruct_sigset_t_162 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_162 sigset_t;
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
struct __anonstruct__kill_164 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_165 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_166 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_167 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_168 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_169 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_170 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_163 {
   int _pad[28U] ;
   struct __anonstruct__kill_164 _kill ;
   struct __anonstruct__timer_165 _timer ;
   struct __anonstruct__rt_166 _rt ;
   struct __anonstruct__sigchld_167 _sigchld ;
   struct __anonstruct__sigfault_168 _sigfault ;
   struct __anonstruct__sigpoll_169 _sigpoll ;
   struct __anonstruct__sigsys_170 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_163 _sifields ;
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
union __anonunion_ldv_24162_173 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_24170_174 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_24183_176 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_24184_175 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_24183_176 ldv_24183 ;
};
union __anonunion_type_data_177 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_179 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_24199_178 {
   union __anonunion_payload_179 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_24162_173 ldv_24162 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_24170_174 ldv_24170 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_24184_175 ldv_24184 ;
   union __anonunion_type_data_177 type_data ;
   union __anonunion_ldv_24199_178 ldv_24199 ;
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
struct io_context;
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
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
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
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults_memory ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer_memory ;
   unsigned long *numa_faults_cpu ;
   unsigned long *numa_faults_buffer_cpu ;
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
struct __anonstruct_ldv_25945_184 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion_ldv_25946_183 {
   u64 v64 ;
   struct __anonstruct_ldv_25945_184 ldv_25945 ;
};
struct skb_mstamp {
   union __anonunion_ldv_25946_183 ldv_25946 ;
};
union __anonunion_ldv_25965_185 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct sec_path;
struct __anonstruct_ldv_25981_187 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_25982_186 {
   __wsum csum ;
   struct __anonstruct_ldv_25981_187 ldv_25981 ;
};
union __anonunion_ldv_26021_188 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion_ldv_26027_189 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion_ldv_25965_185 ldv_25965 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_25982_186 ldv_25982 ;
   __u32 priority ;
   unsigned char ignore_df : 1 ;
   unsigned char cloned : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char nohdr : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char pkt_type : 3 ;
   unsigned char fclone : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char peeked : 1 ;
   unsigned char nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   union __anonunion_ldv_26021_188 ldv_26021 ;
   __u32 secmark ;
   union __anonunion_ldv_26027_189 ldv_26027 ;
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
union __anonunion_data_190 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_190 data ;
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
struct __anonstruct_sync_serial_settings_191 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_191 sync_serial_settings;
struct __anonstruct_te1_settings_192 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_192 te1_settings;
struct __anonstruct_raw_hdlc_proto_193 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_193 raw_hdlc_proto;
struct __anonstruct_fr_proto_194 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_194 fr_proto;
struct __anonstruct_fr_proto_pvc_195 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_195 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_196 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_196 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_197 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_197 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_198 {
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
   union __anonunion_ifs_ifsu_198 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_199 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_200 {
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
   union __anonunion_ifr_ifrn_199 ifr_ifrn ;
   union __anonunion_ifr_ifru_200 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_27776_203 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_27777_202 {
   struct __anonstruct_ldv_27776_203 ldv_27776 ;
};
struct lockref {
   union __anonunion_ldv_27777_202 ldv_27777 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_27800_205 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_27802_204 {
   struct __anonstruct_ldv_27800_205 ldv_27800 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_27802_204 ldv_27802 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_206 {
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
   union __anonunion_d_u_206 d_u ;
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
struct __anonstruct_ldv_28163_208 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_28165_207 {
   struct __anonstruct_ldv_28163_208 ldv_28163 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_28165_207 ldv_28165 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct semaphore {
   raw_spinlock_t lock ;
   unsigned int count ;
   struct list_head wait_list ;
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
struct cgroup_subsys_state;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
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
struct __anonstruct_kprojid_t_209 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_209 kprojid_t;
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
union __anonunion_ldv_28690_210 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_28690_210 ldv_28690 ;
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
   struct rw_semaphore dqptr_sem ;
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
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
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
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
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
union __anonunion_ldv_29104_213 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_29124_214 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_29141_215 {
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
   union __anonunion_ldv_29104_213 ldv_29104 ;
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
   union __anonunion_ldv_29124_214 ldv_29124 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_29141_215 ldv_29141 ;
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
union __anonunion_f_u_216 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_216 f_u ;
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
struct __anonstruct_afs_218 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_217 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_218 afs ;
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
   union __anonunion_fl_u_217 fl_u ;
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
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
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
   u32 (*get_rxfh_key_size)(struct net_device * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh)(struct net_device * , u32 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * ) ;
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
union __anonunion_in6_u_235 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_235 in6_u ;
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
   unsigned long mibs[103U] ;
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
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
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
   atomic_t rt_genid ;
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
   u16 max_dsize ;
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
struct in_addr {
   __be32 s_addr ;
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
   u8 gencursor ;
   u8 genctr ;
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
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_t count ;
   unsigned int *pcpu_count ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_kill ;
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
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
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
   void (*css_free)(struct cgroup_subsys_state * ) ;
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
   struct cftype *base_cftypes ;
};
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
   __u32 spoofchk ;
   __u32 linkstate ;
   __u32 min_tx_rate ;
   __u32 max_tx_rate ;
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
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
};
struct __anonstruct_adj_list_246 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_247 {
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
union __anonunion_ldv_40242_248 {
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
   struct __anonstruct_adj_list_246 adj_list ;
   struct __anonstruct_all_adj_list_247 all_adj_list ;
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
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion_ldv_40242_248 ldv_40242 ;
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
typedef int pao_T_____33;
typedef int pao_T_____34;
typedef int pao_T_____35;
typedef int pao_T_____36;
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
union __anonunion_ki_obj_249 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_249 ki_obj ;
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
struct sock_filter_int {
   __u8 code ;
   unsigned char dst_reg : 4 ;
   unsigned char src_reg : 4 ;
   __s16 off ;
   __s32 imm ;
};
struct sock_fprog_kern {
   u16 len ;
   struct sock_filter *filter ;
};
union __anonunion_ldv_42234_250 {
   struct sock_filter insns[0U] ;
   struct sock_filter_int insnsi[0U] ;
   struct work_struct work ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned char jited : 1 ;
   unsigned int len : 31 ;
   struct sock_fprog_kern *orig_prog ;
   struct callback_head rcu ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter_int const * ) ;
   union __anonunion_ldv_42234_250 ldv_42234 ;
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
union __anonunion_ldv_43728_255 {
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
   union __anonunion_ldv_43728_255 ldv_43728 ;
};
struct __anonstruct_socket_lock_t_256 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_256 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct_ldv_43963_258 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion_ldv_43964_257 {
   __addrpair skc_addrpair ;
   struct __anonstruct_ldv_43963_258 ldv_43963 ;
};
union __anonunion_ldv_43968_259 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct_ldv_43974_261 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion_ldv_43975_260 {
   __portpair skc_portpair ;
   struct __anonstruct_ldv_43974_261 ldv_43974 ;
};
union __anonunion_ldv_43984_262 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion_ldv_43993_263 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion_ldv_43964_257 ldv_43964 ;
   union __anonunion_ldv_43968_259 ldv_43968 ;
   union __anonunion_ldv_43975_260 ldv_43975 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 4 ;
   int skc_bound_dev_if ;
   union __anonunion_ldv_43984_262 ldv_43984 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion_ldv_43993_263 ldv_43993 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_264 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_264 sk_backlog ;
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
union __anonunion_h_265 {
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
   union __anonunion_h_265 h ;
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
struct __anonstruct_itu_268 {
   unsigned char mode ;
   unsigned char window ;
};
union __anonunion_l2_267 {
   struct __anonstruct_itu_268 itu ;
   unsigned char user ;
};
struct __anonstruct_itu_270 {
   unsigned char mode ;
   unsigned char def_size ;
   unsigned char window ;
};
struct __anonstruct_h310_271 {
   unsigned char term_type ;
   unsigned char fw_mpx_cap ;
   unsigned char bw_mpx_cap ;
};
struct __anonstruct_tr9577_272 {
   unsigned char ipi ;
   unsigned char snap[5U] ;
};
union __anonunion_l3_269 {
   struct __anonstruct_itu_270 itu ;
   unsigned char user ;
   struct __anonstruct_h310_271 h310 ;
   struct __anonstruct_tr9577_272 tr9577 ;
};
struct atm_blli {
   unsigned char l2_proto ;
   union __anonunion_l2_267 l2 ;
   unsigned char l3_proto ;
   union __anonunion_l3_269 l3 ;
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
struct __anonstruct_sas_addr_274 {
   unsigned char prv[20U] ;
   char pub[13U] ;
   char lij_type ;
   __u32 lij_id ;
};
struct sockaddr_atmsvc {
   unsigned short sas_family ;
   struct __anonstruct_sas_addr_274 sas_addr ;
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
struct atm_skb_data {
   struct atm_vcc *vcc ;
   unsigned long atm_options ;
};
struct atm_ioctl {
   struct module *owner ;
   int (*ioctl)(struct socket * , unsigned int , unsigned long ) ;
   struct list_head list ;
};
enum ldv_32362 {
    l_set_mac_addr = 0,
    l_del_mac_addr = 1,
    l_svc_setup = 2,
    l_addr_delete = 3,
    l_topology_change = 4,
    l_flush_complete = 5,
    l_arp_update = 6,
    l_narp_req = 7,
    l_config = 8,
    l_flush_tran_id = 9,
    l_set_lecid = 10,
    l_arp_xmt = 11,
    l_rdesc_arp_xmt = 12,
    l_associate_req = 13,
    l_should_bridge = 14
} ;
typedef enum ldv_32362 atmlec_msg_type;
struct atmlec_config_msg {
   unsigned int maximum_unknown_frame_count ;
   unsigned int max_unknown_frame_time ;
   unsigned short max_retry_count ;
   unsigned int aging_time ;
   unsigned int forward_delay_time ;
   unsigned int arp_response_time ;
   unsigned int flush_timeout ;
   unsigned int path_switching_delay ;
   unsigned int lane_version ;
   int mtu ;
   int is_proxy ;
};
struct __anonstruct_normal_276 {
   unsigned char mac_addr[6U] ;
   unsigned char atm_addr[20U] ;
   unsigned int flag ;
   unsigned int targetless_le_arp ;
   unsigned int no_source_le_narp ;
};
struct __anonstruct_proxy_277 {
   __u16 lec_id ;
   __u32 tran_id ;
   unsigned char mac_addr[6U] ;
   unsigned char atm_addr[20U] ;
};
union __anonunion_content_275 {
   struct __anonstruct_normal_276 normal ;
   struct atmlec_config_msg config ;
   struct __anonstruct_proxy_277 proxy ;
};
struct atmlec_msg {
   atmlec_msg_type type ;
   int sizeoftlvs ;
   union __anonunion_content_275 content ;
};
struct atmlec_ioc {
   int dev_num ;
   unsigned char atm_addr[20U] ;
   unsigned char receive ;
};
union inet_addr {
   __u32 all[4U] ;
   __be32 ip ;
   __be32 ip6[4U] ;
   struct in_addr in ;
   struct in6_addr in6 ;
};
struct netpoll {
   struct net_device *dev ;
   char dev_name[16U] ;
   char const *name ;
   union inet_addr local_ip ;
   union inet_addr remote_ip ;
   bool ipv6 ;
   u16 local_port ;
   u16 remote_port ;
   u8 remote_mac[6U] ;
   struct work_struct cleanup_work ;
};
struct netpoll_info {
   atomic_t refcnt ;
   struct semaphore dev_lock ;
   struct sk_buff_head txq ;
   struct delayed_work tx_work ;
   struct netpoll *netpoll ;
   struct callback_head rcu ;
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
   unsigned char cookie_ts : 1 ;
   unsigned char num_timeout : 7 ;
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
   struct ipstats_mib *ipv6 ;
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
union __anonunion_ldv_48193_292 {
   __be32 a4 ;
   __be32 a6[4U] ;
};
struct inetpeer_addr_base {
   union __anonunion_ldv_48193_292 ldv_48193 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion_ldv_48208_293 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct_ldv_48212_295 {
   atomic_t rid ;
};
union __anonunion_ldv_48215_294 {
   struct __anonstruct_ldv_48212_295 ldv_48212 ;
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
   union __anonunion_ldv_48208_293 ldv_48208 ;
   union __anonunion_ldv_48215_294 ldv_48215 ;
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
struct in_ifaddr;
struct lecdatahdr_8023 {
   __be16 le_header ;
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_type ;
};
struct lane2_ops {
   int (*resolve)(struct net_device * , u8 const * , int , u8 ** , u32 * ) ;
   int (*associate_req)(struct net_device * , u8 const * , u8 const * , u32 ) ;
   void (*associate_indicator)(struct net_device * , u8 const * , u8 const * ,
                               u32 ) ;
};
struct lec_priv {
   unsigned short lecid ;
   struct hlist_head lec_arp_empty_ones ;
   struct hlist_head lec_arp_tables[16U] ;
   struct hlist_head lec_no_forward ;
   struct hlist_head mcast_fwds ;
   spinlock_t lec_arp_lock ;
   struct atm_vcc *mcast_vcc ;
   struct atm_vcc *lecd ;
   struct delayed_work lec_arp_work ;
   unsigned int maximum_unknown_frame_count ;
   unsigned long max_unknown_frame_time ;
   unsigned long vcc_timeout_period ;
   unsigned short max_retry_count ;
   unsigned long aging_time ;
   unsigned long forward_delay_time ;
   int topology_change ;
   unsigned long arp_response_time ;
   unsigned long flush_timeout ;
   unsigned long path_switching_delay ;
   u8 *tlvs ;
   u32 sizeoftlvs ;
   int lane_version ;
   int itfnum ;
   struct lane2_ops *lane2_ops ;
   int is_proxy ;
};
struct lec_vcc_priv {
   void (*old_pop)(struct atm_vcc * , struct sk_buff * ) ;
   int xoff ;
};
struct lec_arp_table {
   struct hlist_node next ;
   unsigned char atm_addr[20U] ;
   unsigned char mac_addr[6U] ;
   int is_rdesc ;
   struct atm_vcc *vcc ;
   struct atm_vcc *recv_vcc ;
   void (*old_push)(struct atm_vcc * , struct sk_buff * ) ;
   void (*old_recv_push)(struct atm_vcc * , struct sk_buff * ) ;
   unsigned long last_used ;
   unsigned long timestamp ;
   unsigned char no_tries ;
   unsigned char status ;
   unsigned short flags ;
   unsigned short packets_flooded ;
   unsigned long flush_tran_id ;
   struct timer_list timer ;
   struct lec_priv *priv ;
   u8 *tlvs ;
   u32 sizeoftlvs ;
   struct sk_buff_head tx_wait ;
   atomic_t usage ;
};
struct lec_state {
   unsigned long flags ;
   struct lec_priv *locked ;
   struct hlist_node *node ;
   struct net_device *dev ;
   int itf ;
   int arp_table ;
   int misc_table ;
};
struct ipv4_devconf {
   void *sysctl ;
   int data[28U] ;
   unsigned long state[1U] ;
};
struct ip_mc_list;
struct in_device {
   struct net_device *dev ;
   atomic_t refcnt ;
   int dead ;
   struct in_ifaddr *ifa_list ;
   struct ip_mc_list *mc_list ;
   struct ip_mc_list **mc_hash ;
   int mc_count ;
   spinlock_t mc_tomb_lock ;
   struct ip_mc_list *mc_tomb ;
   unsigned long mr_v1_seen ;
   unsigned long mr_v2_seen ;
   unsigned long mr_maxdelay ;
   unsigned char mr_qrv ;
   unsigned char mr_gq_running ;
   unsigned char mr_ifc_count ;
   struct timer_list mr_gq_timer ;
   struct timer_list mr_ifc_timer ;
   struct neigh_parms *arp_parms ;
   struct ipv4_devconf cnf ;
   struct callback_head callback_head ;
};
struct in_ifaddr {
   struct hlist_node hash ;
   struct in_ifaddr *ifa_next ;
   struct in_device *ifa_dev ;
   struct callback_head callback_head ;
   __be32 ifa_local ;
   __be32 ifa_address ;
   __be32 ifa_mask ;
   __be32 ifa_broadcast ;
   unsigned char ifa_scope ;
   unsigned char ifa_prefixlen ;
   __u32 ifa_flags ;
   char ifa_label[16U] ;
   __u32 ifa_valid_lft ;
   __u32 ifa_preferred_lft ;
   unsigned long ifa_cstamp ;
   unsigned long ifa_tstamp ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
typedef int ldv_func_ret_type___10;
typedef int ldv_func_ret_type___11;
typedef int ldv_func_ret_type___12;
typedef int ldv_func_ret_type___13;
typedef int ldv_func_ret_type___14;
typedef int ldv_func_ret_type___15;
typedef int ldv_func_ret_type___16;
typedef struct page___0 *pgtable_t___0;
struct __anonstruct____missing_field_name_211 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_210 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_211 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_209 {
   union __anonunion____missing_field_name_210 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_208 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_209 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_206 {
   union __anonunion_ldv_14184_140 __annonCompField38 ;
   union __anonunion____missing_field_name_208 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_213 {
   struct page___0 *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_212 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_213 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t___0 pmd_huge_pte ;
};
union __anonunion____missing_field_name_214 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache___0 *slab_cache ;
   struct page___0 *first_page ;
};
struct page___0 {
   unsigned long flags ;
   union __anonunion_ldv_14178_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_206 __annonCompField43 ;
   union __anonunion____missing_field_name_212 __annonCompField45 ;
   union __anonunion____missing_field_name_214 __annonCompField46 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
enum kobj_ns_type;
struct attribute___0 {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops___0 {
   ssize_t (*show)(struct kobject___0 * , struct attribute___0 * , char * ) ;
   ssize_t (*store)(struct kobject___0 * , struct attribute___0 * , char const * ,
                    size_t ) ;
};
struct kobject___0 {
   char const *name ;
   struct list_head entry ;
   struct kobject___0 *parent ;
   struct kset *kset ;
   struct kobj_type___0 *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type___0 {
   void (*release)(struct kobject___0 *kobj ) ;
   struct sysfs_ops___0 const *sysfs_ops ;
   struct attribute___0 **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject___0 *kobj ) ;
   void const *(*namespace)(struct kobject___0 *kobj ) ;
};
struct kmem_cache_cpu___0 {
   void **freelist ;
   unsigned long tid ;
   struct page___0 *page ;
   struct page___0 *partial ;
   unsigned int stat[26] ;
};
struct kmem_cache___0 {
   struct kmem_cache_cpu___0 *cpu_slab ;
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
   struct kobject___0 kobj ;
   struct memcg_cache_params___0 *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct __anonstruct____missing_field_name_227 {
   struct callback_head callback_head ;
   struct kmem_cache___0 *memcg_caches[0] ;
};
struct __anonstruct____missing_field_name_228 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache___0 *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField50 ;
   struct __anonstruct____missing_field_name_228 __annonCompField51 ;
};
struct memcg_cache_params___0 {
   bool is_root_cache ;
   union __anonunion____missing_field_name_226 __annonCompField52 ;
};
long ldv__builtin_expect(long exp , long c ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
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
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2, %0; setc %1": "+m" (*addr),
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
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern int printk(char const * , ...) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void might_fault(void) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
__inline static void INIT_HLIST_NODE(struct hlist_node *h )
{
  {
  h->next = (struct hlist_node *)0;
  h->pprev = (struct hlist_node **)0;
  return;
}
}
__inline static int hlist_empty(struct hlist_head const *h )
{
  {
  return ((unsigned long )h->first == (unsigned long )((struct hlist_node * )0));
}
}
__inline static void __hlist_del(struct hlist_node *n )
{
  struct hlist_node *next ;
  struct hlist_node **pprev ;
  {
  next = n->next;
  pprev = n->pprev;
  *pprev = next;
  if ((unsigned long )next != (unsigned long )((struct hlist_node *)0)) {
    next->pprev = pprev;
  } else {
  }
  return;
}
}
__inline static void hlist_del(struct hlist_node *n )
{
  {
  __hlist_del(n);
  n->next = (struct hlist_node *)-2401263026317557504L;
  n->pprev = (struct hlist_node **)-2401263026316508672L;
  return;
}
}
__inline static void hlist_add_head(struct hlist_node *n , struct hlist_head *h )
{
  struct hlist_node *first ;
  {
  first = h->first;
  n->next = first;
  if ((unsigned long )first != (unsigned long )((struct hlist_node *)0)) {
    first->pprev = & n->next;
  } else {
  }
  h->first = n;
  n->pprev = & h->first;
  return;
}
}
extern void __bad_percpu_size(void) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern void *kmemdup(void const * , size_t , gfp_t ) ;
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
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
__inline static void atomic_add(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; addl %1,%0": "+m" (v->counter): "ir" (i));
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
__inline static int atomic_dec_and_test(atomic_t *v )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0; sete %1": "+m" (v->counter),
                       "=qm" (c): : "memory");
  return ((int )((signed char )c) != 0);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6347.rlock);
}
}
__inline static void ldv_spin_unlock_irqrestore_8(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int del_timer(struct timer_list * ) ;
int ldv_del_timer_39(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_43(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_44(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_45(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_46(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_47(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_48(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_49(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_50(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_51(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_52(struct timer_list *ldv_func_arg1 ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_42(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_40(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_41(struct timer_list *ldv_func_arg1 ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  tmp = queue_delayed_work_on(8192, wq, dwork, delay);
  return (tmp);
}
}
__inline static bool schedule_delayed_work(struct delayed_work *dwork , unsigned long delay )
{
  bool tmp ;
  {
  tmp = queue_delayed_work(system_wq, dwork, delay);
  return (tmp);
}
}
extern void __bad_size_call_parameter(void) ;
extern void __module_get(struct module * ) ;
extern void module_put(struct module * ) ;
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_33(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *ldv_kmalloc_12(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern size_t __VERIFIER_nondet_size_t(void) ;
extern loff_t __VERIFIER_nondet_loff_t(void) ;
extern u32 __VERIFIER_nondet_u32(void) ;
extern unsigned int __VERIFIER_nondet_uint(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
extern void __VERIFIER_assume(int expression ) ;
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
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
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
  ldv_error();
  return;
}
}
struct timer_list *ldv_timer_list_1_3 ;
int ldv_timer_1_3 ;
struct atm_vcc *lecdev_ops_group0 ;
struct timer_list *ldv_timer_list_1_1 ;
struct net_device *lec_netdev_ops_group1 ;
int ldv_state_variable_6 ;
struct timer_list *ldv_timer_list_1_0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_timer_1_2 ;
int ldv_timer_1_1 ;
int ldv_state_variable_2 ;
struct timer_list *ldv_timer_list_1_2 ;
void *lec_seq_ops_group2 ;
struct inode *lec_seq_fops_group1 ;
int LDV_IN_INTERRUPT = 1;
struct file *lec_seq_fops_group2 ;
int ldv_timer_1_0 ;
struct seq_file *lec_seq_ops_group1 ;
int ldv_state_variable_3 ;
loff_t *lec_seq_ops_group3 ;
struct net_device *lane2_ops_group0 ;
int ref_cnt ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_state_variable_4 ;
void timer_init_1(void) ;
void ldv_file_operations_3(void) ;
void ldv_net_device_ops_5(void) ;
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void disable_suitable_timer_1(struct timer_list *timer ) ;
void activate_suitable_timer_1(struct timer_list *timer , unsigned long data ) ;
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void ldv_initialize_atmdev_ops_6(void) ;
void choose_timer_1(void) ;
void ldv_timer_1(int state , struct timer_list *timer ) ;
void ldv_seq_operations_4(void) ;
void ldv_initialize_lane2_ops_7(void) ;
extern bool capable(int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___0 = ldv__builtin_expect(sz < 0, 1L);
  if (tmp___0 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___1 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __copy_from_user_overflow();
    }
  }
  return (n);
}
}
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_putc(struct seq_file * , char ) ;
extern int seq_puts(struct seq_file * , char const * ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int seq_open_private(struct file * , struct seq_operations const * , int ) ;
extern int seq_release_private(struct inode * , struct file * ) ;
extern void kfree_skb(struct sk_buff * ) ;
extern void consume_skb(struct sk_buff * ) ;
extern struct sk_buff *__alloc_skb(unsigned int , gfp_t , int , int ) ;
__inline static struct sk_buff *ldv_alloc_skb_20(unsigned int size , gfp_t priority )
{
  struct sk_buff *tmp ;
  {
  tmp = __alloc_skb(size, priority, 0, -1);
  return (tmp);
}
}
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags ) ;
extern struct sk_buff *skb_clone(struct sk_buff * , gfp_t ) ;
struct sk_buff *ldv_skb_clone_24(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_32(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
extern struct sk_buff *skb_copy(struct sk_buff const * , gfp_t ) ;
struct sk_buff *ldv_skb_copy_26(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
int ldv_pskb_expand_head_22(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_30(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
extern struct sk_buff *skb_realloc_headroom(struct sk_buff * , unsigned int ) ;
extern struct sk_buff *skb_copy_expand(struct sk_buff const * , int , int , gfp_t ) ;
struct sk_buff *ldv_skb_copy_expand_34(struct sk_buff const *ldv_func_arg1 , int ldv_func_arg2 ,
                                       int ldv_func_arg3 , gfp_t flags ) ;
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
  spinlock_check(& list->lock);
  __raw_spin_lock_init(& list->lock.ldv_6347.rlock, "&(&list->lock)->rlock", & __key);
  __skb_queue_head_init(list);
  return;
}
}
extern void skb_queue_tail(struct sk_buff_head * , struct sk_buff * ) ;
extern struct sk_buff *skb_dequeue(struct sk_buff_head * ) ;
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
__inline static unsigned char *skb_tail_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->tail);
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
  tmp = skb_is_nonlinear(skb);
  return ((int )tmp ? 0 : (int )((unsigned int )skb->end - (unsigned int )skb->tail));
}
}
extern void skb_queue_purge(struct sk_buff_head * ) ;
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
struct sk_buff *ldv___netdev_alloc_skb_27(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_28(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_29(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
__inline static void skb_copy_to_linear_data(struct sk_buff *skb , void const *from ,
                                             unsigned int const len )
{
  size_t __len ;
  void *__ret ;
  {
  __len = (size_t )len;
  __ret = memcpy((void *)skb->data, from, __len);
  return;
}
}
extern struct proc_dir_entry *proc_create_data(char const * , umode_t , struct proc_dir_entry * ,
                                               struct file_operations const * ,
                                               void * ) ;
__inline static struct proc_dir_entry *proc_create(char const *name , umode_t mode ,
                                                   struct proc_dir_entry *parent ,
                                                   struct file_operations const *proc_fops )
{
  struct proc_dir_entry *tmp ;
  {
  tmp = proc_create_data(name, (int )mode, parent, proc_fops, (void *)0);
  return (tmp);
}
}
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
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
  return ((void *)dev + 3264U);
}
}
extern void free_netdev(struct net_device * ) ;
void ldv_free_netdev_36(struct net_device *dev ) ;
void ldv_free_netdev_38(struct net_device *dev ) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_start_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_start_queue(tmp);
  return;
}
}
__inline static void netif_tx_wake_queue(struct netdev_queue *dev_queue )
{
  int tmp ;
  {
  tmp = test_and_clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  if (tmp != 0) {
    __netif_schedule(dev_queue->qdisc);
  } else {
  }
  return;
}
}
__inline static void netif_wake_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_wake_queue(tmp);
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/netdevice.h", 2212);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    printk("\016lec:%s: netif_stop_queue() cannot be called before register_netdev()\n",
           "netif_tx_stop_queue");
    return;
  } else {
  }
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
  return;
}
}
__inline static bool netif_tx_queue_stopped(struct netdev_queue const *dev_queue )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev_queue->state));
  return (tmp != 0);
}
}
__inline static bool netif_queue_stopped(struct net_device const *dev )
{
  struct netdev_queue *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_get_tx_queue(dev, 0U);
  tmp___0 = netif_tx_queue_stopped((struct netdev_queue const *)tmp);
  return (tmp___0);
}
}
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev->state));
  return (tmp != 0);
}
}
extern int netif_rx(struct sk_buff * ) ;
extern int dev_set_mtu(struct net_device * , int ) ;
__inline static void dev_put(struct net_device *dev )
{
  void const *__vpp_verify ;
  int pao_ID__ ;
  int pao_ID_____0 ;
  int pao_ID_____1 ;
  int pao_ID_____2 ;
  {
  __vpp_verify = (void const *)0;
  switch (4UL) {
  case 1UL:
  pao_ID__ = -1;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "qi" (-1));
  }
  goto ldv_40910;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_40910;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_40910;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "re" (-1));
  }
  goto ldv_40910;
  default:
  __bad_percpu_size();
  }
  ldv_40910: ;
  goto ldv_40915;
  case 2UL:
  pao_ID_____0 = -1;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "qi" (-1));
  }
  goto ldv_40921;
  case 2UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_40921;
  case 4UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_40921;
  case 8UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "re" (-1));
  }
  goto ldv_40921;
  default:
  __bad_percpu_size();
  }
  ldv_40921: ;
  goto ldv_40915;
  case 4UL:
  pao_ID_____1 = -1;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "qi" (-1));
  }
  goto ldv_40931;
  case 2UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_40931;
  case 4UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_40931;
  case 8UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "re" (-1));
  }
  goto ldv_40931;
  default:
  __bad_percpu_size();
  }
  ldv_40931: ;
  goto ldv_40915;
  case 8UL:
  pao_ID_____2 = -1;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "qi" (-1));
  }
  goto ldv_40941;
  case 2UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_40941;
  case 4UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_40941;
  case 8UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (*(dev->pcpu_refcnt)): "re" (-1));
  }
  goto ldv_40941;
  default:
  __bad_percpu_size();
  }
  ldv_40941: ;
  goto ldv_40915;
  default:
  __bad_size_call_parameter();
  goto ldv_40915;
  }
  ldv_40915: ;
  return;
}
}
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_35(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_37(struct net_device *dev ) ;
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
__inline static void ether_addr_copy(u8 *dst , u8 const *src )
{
  {
  *((u32 *)dst) = *((u32 const *)src);
  *((u16 *)dst + 4U) = *((u16 const *)src + 4U);
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
extern struct proc_dir_entry *atm_proc_root ;
__inline static struct atm_vcc *atm_sk(struct sock *sk )
{
  {
  return ((struct atm_vcc *)sk);
}
}
__inline static struct atm_vcc *ATM_SD(struct socket *sock )
{
  struct atm_vcc *tmp ;
  {
  tmp = atm_sk(sock->sk);
  return (tmp);
}
}
__inline static struct sock *sk_atm(struct atm_vcc *vcc )
{
  {
  return ((struct sock *)vcc);
}
}
extern void vcc_insert_socket(struct sock * ) ;
__inline static void atm_force_charge(struct atm_vcc *vcc , int truesize )
{
  struct sock *tmp ;
  {
  tmp = sk_atm(vcc);
  atomic_add(truesize, & tmp->sk_backlog.rmem_alloc);
  return;
}
}
__inline static void atm_return(struct atm_vcc *vcc , int truesize )
{
  struct sock *tmp ;
  {
  tmp = sk_atm(vcc);
  atomic_sub(truesize, & tmp->sk_backlog.rmem_alloc);
  return;
}
}
__inline static int atm_may_send(struct atm_vcc *vcc , unsigned int size )
{
  struct sock *tmp ;
  int tmp___0 ;
  struct sock *tmp___1 ;
  {
  tmp = sk_atm(vcc);
  tmp___0 = atomic_read((atomic_t const *)(& tmp->sk_wmem_alloc));
  tmp___1 = sk_atm(vcc);
  return ((unsigned int )tmp___0 + size < (unsigned int )tmp___1->sk_sndbuf);
}
}
extern void vcc_release_async(struct atm_vcc * , int ) ;
extern void register_atm_ioctl(struct atm_ioctl * ) ;
extern void deregister_atm_ioctl(struct atm_ioctl * ) ;
extern int (*br_fdb_test_addr_hook)(struct net_device * , unsigned char * ) ;
static unsigned char bridge_ula_lec[5U] = { 1U, 128U, 194U, 0U,
        0U};
static int lec_open(struct net_device *dev ) ;
static netdev_tx_t lec_start_xmit(struct sk_buff *skb , struct net_device *dev ) ;
static int lec_close(struct net_device *dev ) ;
static struct lec_arp_table *lec_arp_find(struct lec_priv *priv , unsigned char const *mac_addr___0 ) ;
static int lec_arp_remove(struct lec_priv *priv , struct lec_arp_table *to_remove ) ;
static void lane2_associate_ind(struct net_device *dev , u8 const *mac_addr___0 ,
                                u8 const *tlvs , u32 sizeoftlvs ) ;
static int lane2_resolve(struct net_device *dev , u8 const *dst_mac , int force ,
                         u8 **tlvs , u32 *sizeoftlvs ) ;
static int lane2_associate_req(struct net_device *dev , u8 const *lan_dst , u8 const *tlvs ,
                               u32 sizeoftlvs ) ;
static int lec_addr_delete(struct lec_priv *priv , unsigned char const *atm_addr ,
                           unsigned long permanent ) ;
static void lec_arp_check_empties(struct lec_priv *priv , struct atm_vcc *vcc , struct sk_buff *skb ) ;
static void lec_arp_destroy(struct lec_priv *priv ) ;
static void lec_arp_init(struct lec_priv *priv ) ;
static struct atm_vcc *lec_arp_resolve(struct lec_priv *priv , unsigned char const *mac_to_find ,
                                       int is_rdesc , struct lec_arp_table **ret_entry ) ;
static void lec_arp_update(struct lec_priv *priv , unsigned char const *mac_addr___0 ,
                           unsigned char const *atm_addr , unsigned long remoteflag ,
                           unsigned int targetless_le_arp ) ;
static void lec_flush_complete(struct lec_priv *priv , unsigned long tran_id ) ;
static int lec_mcast_make(struct lec_priv *priv , struct atm_vcc *vcc ) ;
static void lec_set_flush_tran_id(struct lec_priv *priv , unsigned char const *atm_addr ,
                                  unsigned long tran_id ) ;
static void lec_vcc_added(struct lec_priv *priv , struct atmlec_ioc const *ioc_data ,
                          struct atm_vcc *vcc , void (*old_push)(struct atm_vcc * ,
                                                                 struct sk_buff * ) ) ;
static void lec_vcc_close(struct lec_priv *priv , struct atm_vcc *vcc ) ;
__inline static void lec_arp_hold(struct lec_arp_table *entry )
{
  {
  atomic_inc(& entry->usage);
  return;
}
}
__inline static void lec_arp_put(struct lec_arp_table *entry )
{
  int tmp ;
  {
  tmp = atomic_dec_and_test(& entry->usage);
  if (tmp != 0) {
    kfree((void const *)entry);
  } else {
  }
  return;
}
}
static struct lane2_ops lane2_ops = {& lane2_resolve, & lane2_associate_req, (void (*)(struct net_device * , u8 const * ,
                                                      u8 const * , u32 ))0};
static unsigned char bus_mac[6U] = { 255U, 255U, 255U, 255U,
        255U, 255U};
static struct net_device *dev_lec[48U] ;
static void lec_handle_bridge(struct sk_buff *skb , struct net_device *dev )
{
  char *buff ;
  struct lec_priv *priv ;
  struct sock *sk ;
  struct sk_buff *skb2 ;
  struct atmlec_msg *mesg ;
  void *tmp ;
  char *tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  {
  buff = (char *)skb->data + (unsigned long )(skb->dev)->hard_header_len;
  tmp___0 = buff;
  buff = buff + 1;
  if ((int )((signed char )*tmp___0) == 66) {
    tmp___1 = buff;
    buff = buff + 1;
    if ((int )((signed char )*tmp___1) == 66) {
      tmp___2 = buff;
      buff = buff + 1;
      if ((int )((signed char )*tmp___2) == 3) {
        skb2 = alloc_skb(52U, 32U);
        if ((unsigned long )skb2 == (unsigned long )((struct sk_buff *)0)) {
          return;
        } else {
        }
        skb2->len = 52U;
        mesg = (struct atmlec_msg *)skb2->data;
        mesg->type = 4;
        buff = buff + 4UL;
        mesg->content.normal.flag = (unsigned int )*buff & 1U;
        tmp = netdev_priv((struct net_device const *)dev);
        priv = (struct lec_priv *)tmp;
        atm_force_charge(priv->lecd, (int )skb2->truesize);
        sk = sk_atm(priv->lecd);
        skb_queue_tail(& sk->sk_receive_queue, skb2);
        (*(sk->sk_data_ready))(sk);
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static int lec_open(struct net_device *dev )
{
  {
  netif_start_queue(dev);
  return (0);
}
}
static void lec_send(struct atm_vcc *vcc , struct sk_buff *skb )
{
  struct net_device *dev ;
  struct sock *tmp ;
  int tmp___0 ;
  {
  dev = skb->dev;
  ((struct atm_skb_data *)(& skb->cb))->vcc = vcc;
  ((struct atm_skb_data *)(& skb->cb))->atm_options = vcc->atm_options;
  tmp = sk_atm(vcc);
  atomic_add((int )skb->truesize, & tmp->sk_wmem_alloc);
  tmp___0 = (*(vcc->send))(vcc, skb);
  if (tmp___0 < 0) {
    dev->stats.tx_dropped = dev->stats.tx_dropped + 1UL;
    return;
  } else {
  }
  dev->stats.tx_packets = dev->stats.tx_packets + 1UL;
  dev->stats.tx_bytes = dev->stats.tx_bytes + (unsigned long )skb->len;
  return;
}
}
static void lec_tx_timeout(struct net_device *dev )
{
  {
  printk("\016lec:%s: %s\n", "lec_tx_timeout", (char *)(& dev->name));
  dev->trans_start = jiffies;
  netif_wake_queue(dev);
  return;
}
}
static netdev_tx_t lec_start_xmit(struct sk_buff *skb , struct net_device *dev )
{
  struct sk_buff *skb2 ;
  struct lec_priv *priv ;
  void *tmp ;
  struct lecdatahdr_8023 *lec_h ;
  struct atm_vcc *vcc ;
  struct lec_arp_table *entry ;
  unsigned char *dst ;
  int min_frame_size ;
  int is_rdesc ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  struct _ddebug descriptor___1 ;
  long tmp___5 ;
  long tmp___6 ;
  unsigned int tmp___7 ;
  __u16 tmp___8 ;
  int tmp___9 ;
  struct _ddebug descriptor___2 ;
  long tmp___10 ;
  struct _ddebug descriptor___3 ;
  long tmp___11 ;
  struct _ddebug descriptor___4 ;
  long tmp___12 ;
  int tmp___13 ;
  struct _ddebug descriptor___5 ;
  long tmp___14 ;
  struct lec_vcc_priv *vpriv ;
  int tmp___15 ;
  int tmp___16 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct lec_priv *)tmp;
  descriptor.modname = "lec";
  descriptor.function = "lec_start_xmit";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor.format = "called\n";
  descriptor.lineno = 272U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "lec:%s: called\n", "lec_start_xmit");
  } else {
  }
  if ((unsigned long )priv->lecd == (unsigned long )((struct atm_vcc *)0)) {
    printk("\016lec:%s: %s:No lecd attached\n", "lec_start_xmit", (char *)(& dev->name));
    dev->stats.tx_errors = dev->stats.tx_errors + 1UL;
    netif_stop_queue(dev);
    kfree_skb(skb);
    return (0);
  } else {
  }
  descriptor___0.modname = "lec";
  descriptor___0.function = "lec_start_xmit";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor___0.format = "skbuff head:%lx data:%lx tail:%lx end:%lx\n";
  descriptor___0.lineno = 283U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
    tmp___2 = skb_tail_pointer((struct sk_buff const *)skb);
    __dynamic_pr_debug(& descriptor___0, "lec:%s: skbuff head:%lx data:%lx tail:%lx end:%lx\n",
                       "lec_start_xmit", (long )skb->head, (long )skb->data, (long )tmp___2,
                       (long )tmp___1);
  } else {
  }
  tmp___4 = memcmp((void const *)skb->data, (void const *)(& bridge_ula_lec),
                   5UL);
  if (tmp___4 == 0) {
    lec_handle_bridge(skb, dev);
  } else {
  }
  tmp___7 = skb_headroom((struct sk_buff const *)skb);
  if (tmp___7 <= 1U) {
    descriptor___1.modname = "lec";
    descriptor___1.function = "lec_start_xmit";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor___1.format = "reallocating skb\n";
    descriptor___1.lineno = 291U;
    descriptor___1.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "lec:%s: reallocating skb\n", "lec_start_xmit");
    } else {
    }
    skb2 = skb_realloc_headroom(skb, 16U);
    tmp___6 = ldv__builtin_expect((unsigned long )skb2 == (unsigned long )((struct sk_buff *)0),
                               0L);
    if (tmp___6 != 0L) {
      kfree_skb(skb);
      return (0);
    } else {
    }
    consume_skb(skb);
    skb = skb2;
  } else {
  }
  skb_push(skb, 2U);
  lec_h = (struct lecdatahdr_8023 *)skb->data;
  tmp___8 = __fswab16((int )priv->lecid);
  lec_h->le_header = tmp___8;
  min_frame_size = 62;
  if (skb->len < (unsigned int )min_frame_size) {
    tmp___9 = skb_tailroom((struct sk_buff const *)skb);
    if (skb->len + (unsigned int )tmp___9 < (unsigned int )min_frame_size) {
      skb2 = ldv_skb_copy_expand_34((struct sk_buff const *)skb, 0, (int )((unsigned int )min_frame_size - skb->truesize),
                                    32U);
      consume_skb(skb);
      if ((unsigned long )skb2 == (unsigned long )((struct sk_buff *)0)) {
        dev->stats.tx_dropped = dev->stats.tx_dropped + 1UL;
        return (0);
      } else {
      }
      skb = skb2;
    } else {
    }
    skb_put(skb, (unsigned int )min_frame_size - skb->len);
  } else {
  }
  is_rdesc = 0;
  dst = (unsigned char *)(& lec_h->h_dest);
  entry = (struct lec_arp_table *)0;
  vcc = lec_arp_resolve(priv, (unsigned char const *)dst, is_rdesc, & entry);
  descriptor___2.modname = "lec";
  descriptor___2.function = "lec_start_xmit";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor___2.format = "%s:vcc:%p vcc_flags:%lx, entry:%p\n";
  descriptor___2.lineno = 341U;
  descriptor___2.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    __dynamic_pr_debug(& descriptor___2, "lec:%s: %s:vcc:%p vcc_flags:%lx, entry:%p\n",
                       "lec_start_xmit", (char *)(& dev->name), vcc, (unsigned long )vcc != (unsigned long )((struct atm_vcc *)0) ? vcc->flags : 0UL,
                       entry);
  } else {
  }
  if ((unsigned long )vcc == (unsigned long )((struct atm_vcc *)0)) {
    goto _L;
  } else {
    tmp___13 = constant_test_bit(1L, (unsigned long const volatile *)(& vcc->flags));
    if (tmp___13 == 0) {
      _L:
      if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0) && entry->tx_wait.qlen <= 7U) {
        descriptor___3.modname = "lec";
        descriptor___3.function = "lec_start_xmit";
        descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
        descriptor___3.format = "%s:queuing packet, MAC address %pM\n";
        descriptor___3.lineno = 345U;
        descriptor___3.flags = 0U;
        tmp___11 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
        if (tmp___11 != 0L) {
          __dynamic_pr_debug(& descriptor___3, "lec:%s: %s:queuing packet, MAC address %pM\n",
                             "lec_start_xmit", (char *)(& dev->name), (unsigned char *)(& lec_h->h_dest));
        } else {
        }
        skb_queue_tail(& entry->tx_wait, skb);
      } else {
        descriptor___4.modname = "lec";
        descriptor___4.function = "lec_start_xmit";
        descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
        descriptor___4.format = "%s:tx queue full or no arp entry, dropping, MAC address: %pM\n";
        descriptor___4.lineno = 349U;
        descriptor___4.flags = 0U;
        tmp___12 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
        if (tmp___12 != 0L) {
          __dynamic_pr_debug(& descriptor___4, "lec:%s: %s:tx queue full or no arp entry, dropping, MAC address: %pM\n",
                             "lec_start_xmit", (char *)(& dev->name), (unsigned char *)(& lec_h->h_dest));
        } else {
        }
        dev->stats.tx_dropped = dev->stats.tx_dropped + 1UL;
        consume_skb(skb);
      }
      goto out;
    } else {
    }
  }
  goto ldv_49518;
  ldv_49517:
  descriptor___5.modname = "lec";
  descriptor___5.function = "lec_start_xmit";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor___5.format = "emptying tx queue, MAC address %pM\n";
  descriptor___5.lineno = 361U;
  descriptor___5.flags = 0U;
  tmp___14 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    __dynamic_pr_debug(& descriptor___5, "lec:%s: emptying tx queue, MAC address %pM\n",
                       "lec_start_xmit", (unsigned char *)(& lec_h->h_dest));
  } else {
  }
  lec_send(vcc, skb2);
  ldv_49518: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    skb2 = skb_dequeue(& entry->tx_wait);
    if ((unsigned long )skb2 != (unsigned long )((struct sk_buff *)0)) {
      goto ldv_49517;
    } else {
      goto ldv_49519;
    }
  } else {
  }
  ldv_49519:
  lec_send(vcc, skb);
  tmp___16 = atm_may_send(vcc, 0U);
  if (tmp___16 == 0) {
    vpriv = (struct lec_vcc_priv *)vcc->user_back;
    vpriv->xoff = 1;
    netif_stop_queue(dev);
    tmp___15 = atm_may_send(vcc, 0U);
    if (tmp___15 != 0) {
      netif_wake_queue(dev);
    } else {
    }
  } else {
  }
  out: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    lec_arp_put(entry);
  } else {
  }
  dev->trans_start = jiffies;
  return (0);
}
}
static int lec_close(struct net_device *dev )
{
  {
  netif_stop_queue(dev);
  return (0);
}
}
static int lec_atm_send(struct atm_vcc *vcc , struct sk_buff *skb )
{
  unsigned long flags ;
  struct net_device *dev ;
  struct lec_priv *priv ;
  void *tmp ;
  struct atmlec_msg *mesg ;
  struct lec_arp_table *entry ;
  int i ;
  char *tmp___0 ;
  struct sock *tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  int tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  struct sk_buff *skb2 ;
  struct sock *sk ;
  struct _ddebug descriptor___3 ;
  long tmp___7 ;
  int tmp___8 ;
  {
  dev = (struct net_device *)vcc->proto_data;
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct lec_priv *)tmp;
  tmp___1 = sk_atm(vcc);
  atomic_sub((int )skb->truesize, & tmp___1->sk_wmem_alloc);
  mesg = (struct atmlec_msg *)skb->data;
  tmp___0 = (char *)skb->data;
  tmp___0 = tmp___0 + 52UL;
  descriptor.modname = "lec";
  descriptor.function = "lec_atm_send";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor.format = "%s: msg from zeppelin:%d\n";
  descriptor.lineno = 411U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_pr_debug(& descriptor, "lec:%s: %s: msg from zeppelin:%d\n", "lec_atm_send",
                       (char *)(& dev->name), (unsigned int )mesg->type);
  } else {
  }
  switch ((unsigned int )mesg->type) {
  case 0U:
  i = 0;
  goto ldv_49539;
  ldv_49538:
  *(dev->dev_addr + (unsigned long )i) = mesg->content.normal.mac_addr[i];
  i = i + 1;
  ldv_49539: ;
  if (i <= 5) {
    goto ldv_49538;
  } else {
  }
  goto ldv_49541;
  case 1U:
  i = 0;
  goto ldv_49544;
  ldv_49543:
  *(dev->dev_addr + (unsigned long )i) = 0U;
  i = i + 1;
  ldv_49544: ;
  if (i <= 5) {
    goto ldv_49543;
  } else {
  }
  goto ldv_49541;
  case 3U:
  lec_addr_delete(priv, (unsigned char const *)(& mesg->content.normal.atm_addr),
                  (unsigned long )mesg->content.normal.flag);
  goto ldv_49541;
  case 4U:
  priv->topology_change = (int )mesg->content.normal.flag;
  goto ldv_49541;
  case 5U:
  lec_flush_complete(priv, (unsigned long )mesg->content.normal.flag);
  goto ldv_49541;
  case 7U:
  ldv_spin_lock();
  entry = lec_arp_find(priv, (unsigned char const *)(& mesg->content.normal.mac_addr));
  lec_arp_remove(priv, entry);
  spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
  if (mesg->content.normal.no_source_le_narp != 0U) {
    goto ldv_49541;
  } else {
  }
  case 6U:
  lec_arp_update(priv, (unsigned char const *)(& mesg->content.normal.mac_addr),
                 (unsigned char const *)(& mesg->content.normal.atm_addr), (unsigned long )mesg->content.normal.flag,
                 mesg->content.normal.targetless_le_arp);
  descriptor___0.modname = "lec";
  descriptor___0.function = "lec_atm_send";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor___0.format = "in l_arp_update\n";
  descriptor___0.lineno = 445U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "lec:%s: in l_arp_update\n", "lec_atm_send");
  } else {
  }
  if (mesg->sizeoftlvs != 0) {
    descriptor___1.modname = "lec";
    descriptor___1.function = "lec_atm_send";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor___1.format = "LANE2 3.1.5, got tlvs, size %d\n";
    descriptor___1.lineno = 448U;
    descriptor___1.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "lec:%s: LANE2 3.1.5, got tlvs, size %d\n",
                         "lec_atm_send", mesg->sizeoftlvs);
    } else {
    }
    lane2_associate_ind(dev, (u8 const *)(& mesg->content.normal.mac_addr), (u8 const *)tmp___0,
                        (u32 )mesg->sizeoftlvs);
  } else {
  }
  goto ldv_49541;
  case 8U:
  priv->maximum_unknown_frame_count = mesg->content.config.maximum_unknown_frame_count;
  priv->max_unknown_frame_time = (unsigned long )(mesg->content.config.max_unknown_frame_time * 250U);
  priv->max_retry_count = mesg->content.config.max_retry_count;
  priv->aging_time = (unsigned long )(mesg->content.config.aging_time * 250U);
  priv->forward_delay_time = (unsigned long )(mesg->content.config.forward_delay_time * 250U);
  priv->arp_response_time = (unsigned long )(mesg->content.config.arp_response_time * 250U);
  priv->flush_timeout = (unsigned long )(mesg->content.config.flush_timeout * 250U);
  priv->path_switching_delay = (unsigned long )(mesg->content.config.path_switching_delay * 250U);
  priv->lane_version = (int )mesg->content.config.lane_version;
  priv->lane2_ops = (struct lane2_ops *)0;
  if (priv->lane_version > 1) {
    priv->lane2_ops = & lane2_ops;
  } else {
  }
  tmp___5 = dev_set_mtu(dev, mesg->content.config.mtu);
  if (tmp___5 != 0) {
    printk("\016lec:%s: %s: change_mtu to %d failed\n", "lec_atm_send", (char *)(& dev->name),
           mesg->content.config.mtu);
  } else {
  }
  priv->is_proxy = mesg->content.config.is_proxy;
  goto ldv_49541;
  case 9U:
  lec_set_flush_tran_id(priv, (unsigned char const *)(& mesg->content.normal.atm_addr),
                        (unsigned long )mesg->content.normal.flag);
  goto ldv_49541;
  case 10U:
  priv->lecid = (unsigned short )mesg->content.normal.flag;
  goto ldv_49541;
  case 14U:
  descriptor___2.modname = "lec";
  descriptor___2.function = "lec_atm_send";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor___2.format = "%s: bridge zeppelin asks about %pM\n";
  descriptor___2.lineno = 489U;
  descriptor___2.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    __dynamic_pr_debug(& descriptor___2, "lec:%s: %s: bridge zeppelin asks about %pM\n",
                       "lec_atm_send", (char *)(& dev->name), (unsigned char *)(& mesg->content.proxy.mac_addr));
  } else {
  }
  if ((unsigned long )br_fdb_test_addr_hook == (unsigned long )((int (*)(struct net_device * ,
                                                                         unsigned char * ))0)) {
    goto ldv_49541;
  } else {
  }
  tmp___8 = (*br_fdb_test_addr_hook)(dev, (unsigned char *)(& mesg->content.proxy.mac_addr));
  if (tmp___8 != 0) {
    descriptor___3.modname = "lec";
    descriptor___3.function = "lec_atm_send";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor___3.format = "%s: entry found, responding to zeppelin\n";
    descriptor___3.lineno = 500U;
    descriptor___3.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "lec:%s: %s: entry found, responding to zeppelin\n",
                         "lec_atm_send", (char *)(& dev->name));
    } else {
    }
    skb2 = alloc_skb(52U, 32U);
    if ((unsigned long )skb2 == (unsigned long )((struct sk_buff *)0)) {
      goto ldv_49541;
    } else {
    }
    skb2->len = 52U;
    skb_copy_to_linear_data(skb2, (void const *)mesg, 52U);
    atm_force_charge(priv->lecd, (int )skb2->truesize);
    sk = sk_atm(priv->lecd);
    skb_queue_tail(& sk->sk_receive_queue, skb2);
    (*(sk->sk_data_ready))(sk);
  } else {
  }
  goto ldv_49541;
  default:
  printk("\016lec:%s: %s: Unknown message type %d\n", "lec_atm_send", (char *)(& dev->name),
         (unsigned int )mesg->type);
  consume_skb(skb);
  return (-22);
  }
  ldv_49541:
  consume_skb(skb);
  return (0);
}
}
static void lec_atm_close(struct atm_vcc *vcc )
{
  struct sk_buff *skb ;
  struct net_device *dev ;
  struct lec_priv *priv ;
  void *tmp ;
  struct sock *tmp___0 ;
  struct sk_buff *tmp___1 ;
  struct sock *tmp___2 ;
  {
  dev = (struct net_device *)vcc->proto_data;
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct lec_priv *)tmp;
  priv->lecd = (struct atm_vcc *)0;
  netif_stop_queue(dev);
  lec_arp_destroy(priv);
  tmp___0 = sk_atm(vcc);
  tmp___1 = skb_peek((struct sk_buff_head const *)(& tmp___0->sk_receive_queue));
  if ((unsigned long )tmp___1 != (unsigned long )((struct sk_buff *)0)) {
    printk("\016lec:%s: %s closing with messages pending\n", "lec_atm_close", (char *)(& dev->name));
  } else {
  }
  goto ldv_49570;
  ldv_49569:
  atm_return(vcc, (int )skb->truesize);
  consume_skb(skb);
  ldv_49570:
  tmp___2 = sk_atm(vcc);
  skb = skb_dequeue(& tmp___2->sk_receive_queue);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_49569;
  } else {
  }
  printk("\016lec:%s: %s: Shut down!\n", "lec_atm_close", (char *)(& dev->name));
  module_put(& __this_module);
  return;
}
}
static struct atmdev_ops lecdev_ops =
     {0, 0, & lec_atm_close, 0, 0, 0, 0, & lec_atm_send, 0, 0, 0, 0, 0, 0};
static struct atm_dev lecatm_dev =
     {(struct atmdev_ops const *)(& lecdev_ops), 0, "lec", 999, 0, 0, 0UL, {0, 0},
    {0, 0}, {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
             (unsigned char)0, (unsigned char)0}, {(signed char)0, (signed char)0},
    {{{0}, {0}, {0}, {0}, {0}}, {{0}, {0}, {0}, {0}, {0}}, {{0}, {0}, {0}, {0}, {0}}},
    (char)0, 0, {0}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0},
                                                                       "lecatm_dev.lock",
                                                                       0, 0UL}}}},
    0, 0, {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0,
                                                                    0, 0UL}}, {{0,
                                                                                0},
                                                                               0UL,
                                                                               0,
                                                                               0,
                                                                               0UL,
                                                                               0,
                                                                               0,
                                                                               0,
                                                                               {(char)0,
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
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
                                                 0, 0}, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0}, 0, 0, {{0},
                                                                                {{{{{0U}},
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
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}},
           0, 0, 0, 0, {{0}, (unsigned char)0, (unsigned char)0, (_Bool)0, (_Bool)0,
                        (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0U}},
                                                                             0U, 0U,
                                                                             0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
                        {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
                                      {0, 0}}}, 0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL,
                                                                        0, 0, 0UL,
                                                                        0, 0, 0, {(char)0,
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
                                                                        {0, {0, 0},
                                                                         0, 0, 0UL}},
                        0UL, {{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}}, {{{{{{0U}},
                                                                            0U, 0U,
                                                                            0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                                                         {0, 0}},
                        {0}, {0}, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                        0, 0, 0, 0, 0UL, 0UL, 0UL, 0UL, 0, 0, 0}, 0, 0, 0, 0, 0ULL,
           0UL, 0, {0, 0}, 0, 0, {0, 0}, 0, {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
           {0, 0}, {0, {0, 0}, {{0}}}, 0, 0, 0, 0, (_Bool)0, (_Bool)0}, {0, 0}};
static int send_to_lecd(struct lec_priv *priv , atmlec_msg_type type , unsigned char const *mac_addr___0 ,
                        unsigned char const *atm_addr , struct sk_buff *data )
{
  struct sock *sk ;
  struct sk_buff *skb ;
  struct atmlec_msg *mesg ;
  size_t __len ;
  void *__ret ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  if ((unsigned long )priv == (unsigned long )((struct lec_priv *)0) || (unsigned long )priv->lecd == (unsigned long )((struct atm_vcc *)0)) {
    return (-1);
  } else {
  }
  skb = alloc_skb(52U, 32U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-1);
  } else {
  }
  skb->len = 52U;
  mesg = (struct atmlec_msg *)skb->data;
  memset((void *)mesg, 0, 52UL);
  mesg->type = type;
  if ((unsigned long )data != (unsigned long )((struct sk_buff *)0)) {
    mesg->sizeoftlvs = (int )data->len;
  } else {
  }
  if ((unsigned long )mac_addr___0 != (unsigned long )((unsigned char const *)0U)) {
    ether_addr_copy((u8 *)(& mesg->content.normal.mac_addr), mac_addr___0);
  } else {
    mesg->content.normal.targetless_le_arp = 1U;
  }
  if ((unsigned long )atm_addr != (unsigned long )((unsigned char const *)0U)) {
    __len = 20UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& mesg->content.normal.atm_addr), (void const *)atm_addr,
                       __len);
    } else {
      __ret = memcpy((void *)(& mesg->content.normal.atm_addr), (void const *)atm_addr,
                               __len);
    }
  } else {
  }
  atm_force_charge(priv->lecd, (int )skb->truesize);
  sk = sk_atm(priv->lecd);
  skb_queue_tail(& sk->sk_receive_queue, skb);
  (*(sk->sk_data_ready))(sk);
  if ((unsigned long )data != (unsigned long )((struct sk_buff *)0)) {
    descriptor.modname = "lec";
    descriptor.function = "send_to_lecd";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor.format = "about to send %d bytes of data\n";
    descriptor.lineno = 595U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "lec:%s: about to send %d bytes of data\n",
                         "send_to_lecd", data->len);
    } else {
    }
    atm_force_charge(priv->lecd, (int )data->truesize);
    skb_queue_tail(& sk->sk_receive_queue, data);
    (*(sk->sk_data_ready))(sk);
  } else {
  }
  return (0);
}
}
static int lec_change_mtu(struct net_device *dev , int new_mtu )
{
  {
  if (new_mtu <= 67 || new_mtu > 18190) {
    return (-22);
  } else {
  }
  dev->mtu = (unsigned int )new_mtu;
  return (0);
}
}
static void lec_set_multicast_list(struct net_device *dev )
{
  {
  return;
}
}
static struct net_device_ops const lec_netdev_ops =
     {0, 0, & lec_open, & lec_close, & lec_start_xmit, 0, 0, & lec_set_multicast_list,
    0, 0, 0, 0, & lec_change_mtu, 0, & lec_tx_timeout, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static unsigned char const lec_ctrl_magic[4U] = { 255U, 0U, 1U, 1U};
static int lec_is_data_direct(struct atm_vcc *vcc )
{
  {
  return ((unsigned int )vcc->sap.blli[0].l3.tr9577.snap[4] == 2U || (unsigned int )vcc->sap.blli[0].l3.tr9577.snap[4] == 3U);
}
}
static void lec_push(struct atm_vcc *vcc , struct sk_buff *skb )
{
  unsigned long flags ;
  struct net_device *dev ;
  struct lec_priv *priv ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct sock *sk ;
  struct sock *tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct lec_arp_table *entry ;
  unsigned char *src ;
  unsigned char *dst ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  __u16 tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  dev = (struct net_device *)vcc->proto_data;
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct lec_priv *)tmp;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    descriptor.modname = "lec";
    descriptor.function = "lec_push";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor.format = "%s: null skb\n";
    descriptor.lineno = 657U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "lec:%s: %s: null skb\n", "lec_push", (char *)(& dev->name));
    } else {
    }
    lec_vcc_close(priv, vcc);
    return;
  } else {
  }
  tmp___8 = memcmp((void const *)skb->data, (void const *)(& lec_ctrl_magic),
                   4UL);
  if (tmp___8 == 0) {
    tmp___1 = sk_atm(vcc);
    sk = tmp___1;
    descriptor___0.modname = "lec";
    descriptor___0.function = "lec_push";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor___0.format = "%s: To daemon\n";
    descriptor___0.lineno = 676U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "lec:%s: %s: To daemon\n", "lec_push",
                         (char *)(& dev->name));
    } else {
    }
    skb_queue_tail(& sk->sk_receive_queue, skb);
    (*(sk->sk_data_ready))(sk);
  } else {
    atm_return(vcc, (int )skb->truesize);
    tmp___4 = __fswab16((int )priv->lecid);
    if (((int )*((__be16 *)skb->data) == (int )tmp___4 || (unsigned long )priv->lecd == (unsigned long )((struct atm_vcc *)0)) || (dev->flags & 1U) == 0U) {
      descriptor___1.modname = "lec";
      descriptor___1.function = "lec_push";
      descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
      descriptor___1.format = "Ignoring frame...\n";
      descriptor___1.lineno = 690U;
      descriptor___1.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        __dynamic_pr_debug(& descriptor___1, "lec:%s: Ignoring frame...\n", "lec_push");
      } else {
      }
      consume_skb(skb);
      return;
    } else {
    }
    dst = (unsigned char *)(& ((struct lecdatahdr_8023 *)skb->data)->h_dest);
    ldv_spin_lock();
    tmp___5 = lec_is_data_direct(vcc);
    if (tmp___5 != 0) {
      src = (unsigned char *)(& ((struct lecdatahdr_8023 *)skb->data)->h_source);
      entry = lec_arp_find(priv, (unsigned char const *)src);
      if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0) && (unsigned long )entry->vcc != (unsigned long )vcc) {
        lec_arp_remove(priv, entry);
        lec_arp_put(entry);
      } else {
      }
    } else {
    }
    spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
    if (((int )*dst & 1) == 0 && priv->is_proxy == 0) {
      tmp___6 = memcmp((void const *)dst, (void const *)dev->dev_addr, (size_t )dev->addr_len);
      if (tmp___6 != 0) {
        consume_skb(skb);
        return;
      } else {
      }
    } else {
    }
    tmp___7 = hlist_empty((struct hlist_head const *)(& priv->lec_arp_empty_ones));
    if (tmp___7 == 0) {
      lec_arp_check_empties(priv, vcc, skb);
    } else {
    }
    skb_pull(skb, 2U);
    skb->protocol = eth_type_trans(skb, dev);
    dev->stats.rx_packets = dev->stats.rx_packets + 1UL;
    dev->stats.rx_bytes = dev->stats.rx_bytes + (unsigned long )skb->len;
    memset((void *)(& skb->cb), 0, 16UL);
    netif_rx(skb);
  }
  return;
}
}
static void lec_pop(struct atm_vcc *vcc , struct sk_buff *skb )
{
  struct lec_vcc_priv *vpriv ;
  struct net_device *dev ;
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  vpriv = (struct lec_vcc_priv *)vcc->user_back;
  dev = skb->dev;
  if ((unsigned long )vpriv == (unsigned long )((struct lec_vcc_priv *)0)) {
    printk("\016lec:%s: vpriv = NULL!?!?!?\n", "lec_pop");
    return;
  } else {
  }
  (*(vpriv->old_pop))(vcc, skb);
  if (vpriv->xoff != 0) {
    tmp___1 = atm_may_send(vcc, 0U);
    if (tmp___1 != 0) {
      vpriv->xoff = 0;
      tmp = netif_running((struct net_device const *)dev);
      if ((int )tmp) {
        tmp___0 = netif_queue_stopped((struct net_device const *)dev);
        if ((int )tmp___0) {
          netif_wake_queue(dev);
        } else {
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
static int lec_vcc_attach(struct atm_vcc *vcc , void *arg )
{
  struct lec_vcc_priv *vpriv ;
  int bytes_left ;
  struct atmlec_ioc ioc_data ;
  unsigned long tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = copy_from_user((void *)(& ioc_data), (void const *)arg, 28UL);
  bytes_left = (int )tmp;
  if (bytes_left != 0) {
    printk("\016lec:%s: copy from user failed for %d bytes\n", "lec_vcc_attach", bytes_left);
  } else {
  }
  if ((ioc_data.dev_num < 0 || ioc_data.dev_num > 47) || (unsigned long )dev_lec[ioc_data.dev_num] == (unsigned long )((struct net_device *)0)) {
    return (-22);
  } else {
  }
  tmp___0 = kmalloc(16UL, 208U);
  vpriv = (struct lec_vcc_priv *)tmp___0;
  if ((unsigned long )vpriv == (unsigned long )((struct lec_vcc_priv *)0)) {
    return (-12);
  } else {
  }
  vpriv->xoff = 0;
  vpriv->old_pop = vcc->pop;
  vcc->user_back = (void *)vpriv;
  vcc->pop = & lec_pop;
  tmp___1 = netdev_priv((struct net_device const *)dev_lec[ioc_data.dev_num]);
  lec_vcc_added((struct lec_priv *)tmp___1, (struct atmlec_ioc const *)(& ioc_data),
                vcc, vcc->push);
  vcc->proto_data = (void *)dev_lec[ioc_data.dev_num];
  vcc->push = & lec_push;
  return (0);
}
}
static int lec_mcast_attach(struct atm_vcc *vcc , int arg )
{
  void *tmp ;
  int tmp___0 ;
  {
  if ((arg < 0 || arg > 47) || (unsigned long )dev_lec[arg] == (unsigned long )((struct net_device *)0)) {
    return (-22);
  } else {
  }
  vcc->proto_data = (void *)dev_lec[arg];
  tmp = netdev_priv((struct net_device const *)dev_lec[arg]);
  tmp___0 = lec_mcast_make((struct lec_priv *)tmp, vcc);
  return (tmp___0);
}
}
static int lecd_attach(struct atm_vcc *vcc , int arg )
{
  int i ;
  struct lec_priv *priv ;
  int size ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct sock *tmp___2 ;
  {
  if (arg < 0) {
    i = 0;
  } else {
    i = arg;
  }
  if (arg > 47) {
    return (-22);
  } else {
  }
  if ((unsigned long )dev_lec[i] == (unsigned long )((struct net_device *)0)) {
    size = 592;
    dev_lec[i] = alloc_etherdev_mqs(size, 1U, 1U);
    if ((unsigned long )dev_lec[i] == (unsigned long )((struct net_device *)0)) {
      return (-12);
    } else {
    }
    (dev_lec[i])->netdev_ops = & lec_netdev_ops;
    snprintf((char *)(& (dev_lec[i])->name), 16UL, "lec%d", i);
    tmp = ldv_register_netdev_35(dev_lec[i]);
    if (tmp != 0) {
      ldv_free_netdev_36(dev_lec[i]);
      return (-22);
    } else {
    }
    tmp___0 = netdev_priv((struct net_device const *)dev_lec[i]);
    priv = (struct lec_priv *)tmp___0;
  } else {
    tmp___1 = netdev_priv((struct net_device const *)dev_lec[i]);
    priv = (struct lec_priv *)tmp___1;
    if ((unsigned long )priv->lecd != (unsigned long )((struct atm_vcc *)0)) {
      return (-98);
    } else {
    }
  }
  lec_arp_init(priv);
  priv->itfnum = i;
  priv->lecd = vcc;
  vcc->dev = & lecatm_dev;
  tmp___2 = sk_atm(vcc);
  vcc_insert_socket(tmp___2);
  vcc->proto_data = (void *)dev_lec[i];
  set_bit(8L, (unsigned long volatile *)(& vcc->flags));
  set_bit(1L, (unsigned long volatile *)(& vcc->flags));
  priv->maximum_unknown_frame_count = 1U;
  priv->max_unknown_frame_time = 250UL;
  priv->vcc_timeout_period = 300000UL;
  priv->max_retry_count = 1U;
  priv->aging_time = 75000UL;
  priv->forward_delay_time = 3750UL;
  priv->topology_change = 0;
  priv->arp_response_time = 250UL;
  priv->flush_timeout = 1000UL;
  priv->path_switching_delay = 1500UL;
  if ((int )(dev_lec[i])->flags & 1) {
    netif_start_queue(dev_lec[i]);
  } else {
  }
  __module_get(& __this_module);
  return (i);
}
}
static char const *lec_arp_get_status_string(unsigned char status )
{
  char const *lec_arp_status_string[6U] ;
  {
  lec_arp_status_string[0] = "ESI_UNKNOWN       ";
  lec_arp_status_string[1] = "ESI_ARP_PENDING   ";
  lec_arp_status_string[2] = "ESI_VC_PENDING    ";
  lec_arp_status_string[3] = "<Undefined>       ";
  lec_arp_status_string[4] = "ESI_FLUSH_PENDING ";
  lec_arp_status_string[5] = "ESI_FORWARD_DIRECT";
  if ((unsigned int )status > 5U) {
    status = 3U;
  } else {
  }
  return (lec_arp_status_string[(int )status]);
}
}
static void lec_info(struct seq_file *seq , struct lec_arp_table *entry )
{
  int i ;
  char const *tmp ;
  {
  i = 0;
  goto ldv_49653;
  ldv_49652:
  seq_printf(seq, "%2.2x", (int )entry->mac_addr[i]);
  i = i + 1;
  ldv_49653: ;
  if (i <= 5) {
    goto ldv_49652;
  } else {
  }
  seq_printf(seq, " ");
  i = 0;
  goto ldv_49656;
  ldv_49655:
  seq_printf(seq, "%2.2x", (int )entry->atm_addr[i]);
  i = i + 1;
  ldv_49656: ;
  if (i <= 19) {
    goto ldv_49655;
  } else {
  }
  tmp = lec_arp_get_status_string((int )entry->status);
  seq_printf(seq, " %s %4.4x", tmp, (int )entry->flags);
  if ((unsigned long )entry->vcc != (unsigned long )((struct atm_vcc *)0)) {
    seq_printf(seq, "%3d %3d ", (int )(entry->vcc)->vpi, (entry->vcc)->vci);
  } else {
    seq_printf(seq, "        ");
  }
  if ((unsigned long )entry->recv_vcc != (unsigned long )((struct atm_vcc *)0)) {
    seq_printf(seq, "     %3d %3d", (int )(entry->recv_vcc)->vpi, (entry->recv_vcc)->vci);
  } else {
  }
  seq_putc(seq, 10);
  return;
}
}
static void *lec_tbl_walk(struct lec_state *state , struct hlist_head *tbl , loff_t *l )
{
  struct hlist_node *e ;
  struct lec_arp_table *tmp ;
  struct hlist_node const *__mptr ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr___0 ;
  struct lec_arp_table *tmp___0 ;
  {
  e = state->node;
  if ((unsigned long )e == (unsigned long )((struct hlist_node *)0)) {
    e = tbl->first;
  } else {
  }
  if ((unsigned long )((void *)e) == (unsigned long )((void *)1)) {
    e = tbl->first;
    *l = *l - 1LL;
  } else {
  }
  __mptr = (struct hlist_node const *)e;
  tmp = (struct lec_arp_table *)__mptr;
  goto ldv_49681;
  ldv_49680:
  *l = *l - 1LL;
  if (*l < 0LL) {
    goto ldv_49679;
  } else {
  }
  ____ptr = tmp->next.next;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr;
    tmp___0 = (struct lec_arp_table *)__mptr___0;
  } else {
    tmp___0 = (struct lec_arp_table *)0;
  }
  tmp = tmp___0;
  ldv_49681: ;
  if ((unsigned long )tmp != (unsigned long )((struct lec_arp_table *)0)) {
    goto ldv_49680;
  } else {
  }
  ldv_49679:
  state->node = e;
  return (*l < 0LL ? (void *)state : (void *)0);
}
}
static void *lec_arp_walk(struct lec_state *state , loff_t *l , struct lec_priv *priv )
{
  void *v ;
  int p ;
  {
  v = (void *)0;
  p = state->arp_table;
  goto ldv_49691;
  ldv_49690:
  v = lec_tbl_walk(state, (struct hlist_head *)(& priv->lec_arp_tables) + (unsigned long )p,
                   l);
  if ((unsigned long )v != (unsigned long )((void *)0)) {
    goto ldv_49689;
  } else {
  }
  p = p + 1;
  ldv_49691: ;
  if (p <= 15) {
    goto ldv_49690;
  } else {
  }
  ldv_49689:
  state->arp_table = p;
  return (v);
}
}
static void *lec_misc_walk(struct lec_state *state , loff_t *l , struct lec_priv *priv )
{
  struct hlist_head *lec_misc_tables[3U] ;
  void *v ;
  int q ;
  {
  lec_misc_tables[0] = & priv->lec_arp_empty_ones;
  lec_misc_tables[1] = & priv->lec_no_forward;
  lec_misc_tables[2] = & priv->mcast_fwds;
  v = (void *)0;
  q = state->misc_table;
  goto ldv_49704;
  ldv_49703:
  v = lec_tbl_walk(state, lec_misc_tables[q], l);
  if ((unsigned long )v != (unsigned long )((void *)0)) {
    goto ldv_49702;
  } else {
  }
  q = q + 1;
  ldv_49704: ;
  if ((unsigned int )q <= 2U) {
    goto ldv_49703;
  } else {
  }
  ldv_49702:
  state->misc_table = q;
  return (v);
}
}
static void *lec_priv_walk(struct lec_state *state , loff_t *l , struct lec_priv *priv )
{
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  if ((unsigned long )state->locked == (unsigned long )((struct lec_priv *)0)) {
    state->locked = priv;
    ldv_spin_lock();
  } else {
  }
  tmp___0 = lec_arp_walk(state, l, priv);
  if ((unsigned long )tmp___0 == (unsigned long )((void *)0)) {
    tmp___1 = lec_misc_walk(state, l, priv);
    if ((unsigned long )tmp___1 == (unsigned long )((void *)0)) {
      spin_unlock_irqrestore(& priv->lec_arp_lock, state->flags);
      state->locked = (struct lec_priv *)0;
      tmp = 0;
      state->misc_table = tmp;
      state->arp_table = tmp;
    } else {
    }
  } else {
  }
  return ((void *)state->locked);
}
}
static void *lec_itf_walk(struct lec_state *state , loff_t *l )
{
  struct net_device *dev ;
  void *v ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  dev = (unsigned long )state->dev != (unsigned long )((struct net_device *)0) ? state->dev : dev_lec[state->itf];
  if ((unsigned long )dev != (unsigned long )((struct net_device *)0)) {
    tmp___2 = netdev_priv((struct net_device const *)dev);
    if ((unsigned long )tmp___2 != (unsigned long )((void *)0)) {
      tmp___0 = netdev_priv((struct net_device const *)dev);
      tmp___1 = lec_priv_walk(state, l, (struct lec_priv *)tmp___0);
      v = tmp___1;
    } else {
      v = (void *)0;
    }
  } else {
    v = (void *)0;
  }
  if ((unsigned long )v == (unsigned long )((void *)0) && (unsigned long )dev != (unsigned long )((struct net_device *)0)) {
    dev_put(dev);
    dev = (struct net_device *)0;
  } else {
  }
  state->dev = dev;
  return (v);
}
}
static void *lec_get_idx(struct lec_state *state , loff_t l )
{
  void *v ;
  {
  v = (void *)0;
  goto ldv_49723;
  ldv_49722:
  v = lec_itf_walk(state, & l);
  if ((unsigned long )v != (unsigned long )((void *)0)) {
    goto ldv_49721;
  } else {
  }
  state->itf = state->itf + 1;
  ldv_49723: ;
  if (state->itf <= 47) {
    goto ldv_49722;
  } else {
  }
  ldv_49721: ;
  return (v);
}
}
static void *lec_seq_start(struct seq_file *seq , loff_t *pos )
{
  struct lec_state *state ;
  void *tmp ;
  void *tmp___0 ;
  {
  state = (struct lec_state *)seq->private;
  state->itf = 0;
  state->dev = (struct net_device *)0;
  state->locked = (struct lec_priv *)0;
  state->arp_table = 0;
  state->misc_table = 0;
  state->node = (struct hlist_node *)1;
  if (*pos != 0LL) {
    tmp = lec_get_idx(state, *pos);
    tmp___0 = tmp;
  } else {
    tmp___0 = (void *)1;
  }
  return (tmp___0);
}
}
static void lec_seq_stop(struct seq_file *seq , void *v )
{
  struct lec_state *state ;
  {
  state = (struct lec_state *)seq->private;
  if ((unsigned long )state->dev != (unsigned long )((struct net_device *)0)) {
    spin_unlock_irqrestore(& (state->locked)->lec_arp_lock, state->flags);
    dev_put(state->dev);
  } else {
  }
  return;
}
}
static void *lec_seq_next(struct seq_file *seq , void *v , loff_t *pos )
{
  struct lec_state *state ;
  long tmp ;
  {
  state = (struct lec_state *)seq->private;
  v = lec_get_idx(state, 1LL);
  tmp = PTR_ERR((void const *)v);
  *pos = *pos + (loff_t )(tmp != 0L);
  return (v);
}
}
static int lec_seq_show(struct seq_file *seq , void *v )
{
  char lec_banner[105U] ;
  struct lec_state *state ;
  struct net_device *dev ;
  struct lec_arp_table *entry ;
  struct hlist_node const *__mptr ;
  {
  lec_banner[0] = 'I';
  lec_banner[1] = 't';
  lec_banner[2] = 'f';
  lec_banner[3] = ' ';
  lec_banner[4] = ' ';
  lec_banner[5] = 'M';
  lec_banner[6] = 'A';
  lec_banner[7] = 'C';
  lec_banner[8] = ' ';
  lec_banner[9] = ' ';
  lec_banner[10] = ' ';
  lec_banner[11] = ' ';
  lec_banner[12] = ' ';
  lec_banner[13] = ' ';
  lec_banner[14] = ' ';
  lec_banner[15] = ' ';
  lec_banner[16] = ' ';
  lec_banner[17] = ' ';
  lec_banner[18] = 'A';
  lec_banner[19] = 'T';
  lec_banner[20] = 'M';
  lec_banner[21] = ' ';
  lec_banner[22] = 'd';
  lec_banner[23] = 'e';
  lec_banner[24] = 's';
  lec_banner[25] = 't';
  lec_banner[26] = 'i';
  lec_banner[27] = 'n';
  lec_banner[28] = 'a';
  lec_banner[29] = 't';
  lec_banner[30] = 'i';
  lec_banner[31] = 'o';
  lec_banner[32] = 'n';
  lec_banner[33] = ' ';
  lec_banner[34] = ' ';
  lec_banner[35] = ' ';
  lec_banner[36] = ' ';
  lec_banner[37] = ' ';
  lec_banner[38] = ' ';
  lec_banner[39] = ' ';
  lec_banner[40] = ' ';
  lec_banner[41] = ' ';
  lec_banner[42] = ' ';
  lec_banner[43] = ' ';
  lec_banner[44] = ' ';
  lec_banner[45] = ' ';
  lec_banner[46] = ' ';
  lec_banner[47] = ' ';
  lec_banner[48] = ' ';
  lec_banner[49] = ' ';
  lec_banner[50] = ' ';
  lec_banner[51] = ' ';
  lec_banner[52] = ' ';
  lec_banner[53] = ' ';
  lec_banner[54] = ' ';
  lec_banner[55] = ' ';
  lec_banner[56] = ' ';
  lec_banner[57] = ' ';
  lec_banner[58] = ' ';
  lec_banner[59] = 'S';
  lec_banner[60] = 't';
  lec_banner[61] = 'a';
  lec_banner[62] = 't';
  lec_banner[63] = 'u';
  lec_banner[64] = 's';
  lec_banner[65] = ' ';
  lec_banner[66] = ' ';
  lec_banner[67] = ' ';
  lec_banner[68] = ' ';
  lec_banner[69] = ' ';
  lec_banner[70] = ' ';
  lec_banner[71] = ' ';
  lec_banner[72] = ' ';
  lec_banner[73] = ' ';
  lec_banner[74] = ' ';
  lec_banner[75] = ' ';
  lec_banner[76] = ' ';
  lec_banner[77] = 'F';
  lec_banner[78] = 'l';
  lec_banner[79] = 'a';
  lec_banner[80] = 'g';
  lec_banner[81] = 's';
  lec_banner[82] = ' ';
  lec_banner[83] = 'V';
  lec_banner[84] = 'P';
  lec_banner[85] = 'I';
  lec_banner[86] = '/';
  lec_banner[87] = 'V';
  lec_banner[88] = 'C';
  lec_banner[89] = 'I';
  lec_banner[90] = ' ';
  lec_banner[91] = 'R';
  lec_banner[92] = 'e';
  lec_banner[93] = 'c';
  lec_banner[94] = 'v';
  lec_banner[95] = ' ';
  lec_banner[96] = 'V';
  lec_banner[97] = 'P';
  lec_banner[98] = 'I';
  lec_banner[99] = '/';
  lec_banner[100] = 'V';
  lec_banner[101] = 'C';
  lec_banner[102] = 'I';
  lec_banner[103] = '\n';
  lec_banner[104] = '\000';
  if ((unsigned long )v == (unsigned long )((void *)1)) {
    seq_puts(seq, (char const *)(& lec_banner));
  } else {
    state = (struct lec_state *)seq->private;
    dev = state->dev;
    __mptr = (struct hlist_node const *)state->node;
    entry = (struct lec_arp_table *)__mptr;
    seq_printf(seq, "%s ", (char *)(& dev->name));
    lec_info(seq, entry);
  }
  return (0);
}
}
static struct seq_operations const lec_seq_ops = {& lec_seq_start, & lec_seq_stop, & lec_seq_next, & lec_seq_show};
static int lec_seq_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  tmp = seq_open_private(file, & lec_seq_ops, 48);
  return (tmp);
}
}
static struct file_operations const lec_seq_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & lec_seq_open,
    0, & seq_release_private, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int lane_ioctl(struct socket *sock , unsigned int cmd , unsigned long arg )
{
  struct atm_vcc *vcc ;
  struct atm_vcc *tmp ;
  int err ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = ATM_SD(sock);
  vcc = tmp;
  err = 0;
  switch (cmd) {
  case 25040U: ;
  case 25042U: ;
  case 25041U:
  tmp___0 = capable(12);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-1);
  } else {
  }
  goto ldv_49766;
  default: ;
  return (-515);
  }
  ldv_49766: ;
  switch (cmd) {
  case 25040U:
  err = lecd_attach(vcc, (int )arg);
  if (err >= 0) {
    sock->state = 3;
  } else {
  }
  goto ldv_49769;
  case 25042U:
  err = lec_mcast_attach(vcc, (int )arg);
  goto ldv_49769;
  case 25041U:
  err = lec_vcc_attach(vcc, (void *)arg);
  goto ldv_49769;
  }
  ldv_49769: ;
  return (err);
}
}
static struct atm_ioctl lane_ioctl_ops = {& __this_module, & lane_ioctl, {0, 0}};
static int lane_module_init(void)
{
  struct proc_dir_entry *p ;
  {
  p = proc_create("lec", 292, atm_proc_root, & lec_seq_fops);
  if ((unsigned long )p == (unsigned long )((struct proc_dir_entry *)0)) {
    printk("\vlec:%s: Unable to initialize /proc/net/atm/lec\n", "lane_module_init");
    return (-12);
  } else {
  }
  register_atm_ioctl(& lane_ioctl_ops);
  printk("\016lec:%s: lec.c: initialized\n", "lane_module_init");
  return (0);
}
}
static void lane_module_cleanup(void)
{
  int i ;
  {
  remove_proc_entry("lec", atm_proc_root);
  deregister_atm_ioctl(& lane_ioctl_ops);
  i = 0;
  goto ldv_49783;
  ldv_49782: ;
  if ((unsigned long )dev_lec[i] != (unsigned long )((struct net_device *)0)) {
    ldv_unregister_netdev_37(dev_lec[i]);
    ldv_free_netdev_38(dev_lec[i]);
    dev_lec[i] = (struct net_device *)0;
  } else {
  }
  i = i + 1;
  ldv_49783: ;
  if (i <= 47) {
    goto ldv_49782;
  } else {
  }
  return;
}
}
static int lane2_resolve(struct net_device *dev , u8 const *dst_mac , int force ,
                         u8 **tlvs , u32 *sizeoftlvs )
{
  unsigned long flags ;
  struct lec_priv *priv ;
  void *tmp ;
  struct lec_arp_table *table ;
  struct sk_buff *skb ;
  int retval ;
  void *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct lec_priv *)tmp;
  if (force == 0) {
    ldv_spin_lock();
    table = lec_arp_find(priv, dst_mac);
    spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
    if ((unsigned long )table == (unsigned long )((struct lec_arp_table *)0)) {
      return (-1);
    } else {
    }
    tmp___0 = kmemdup((void const *)table->tlvs, (size_t )table->sizeoftlvs, 32U);
    *tlvs = (u8 *)tmp___0;
    if ((unsigned long )*tlvs == (unsigned long )((u8 *)0U)) {
      return (-1);
    } else {
    }
    *sizeoftlvs = table->sizeoftlvs;
    return (0);
  } else {
  }
  if ((unsigned long )sizeoftlvs == (unsigned long )((u32 *)0U)) {
    retval = send_to_lecd(priv, 11, dst_mac, (unsigned char const *)0U, (struct sk_buff *)0);
  } else {
    skb = alloc_skb(*sizeoftlvs, 32U);
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      return (-1);
    } else {
    }
    skb->len = *sizeoftlvs;
    skb_copy_to_linear_data(skb, (void const *)*tlvs, *sizeoftlvs);
    retval = send_to_lecd(priv, 11, dst_mac, (unsigned char const *)0U, skb);
  }
  return (retval);
}
}
static int lane2_associate_req(struct net_device *dev , u8 const *lan_dst , u8 const *tlvs ,
                               u32 sizeoftlvs )
{
  int retval ;
  struct sk_buff *skb ;
  struct lec_priv *priv ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct lec_priv *)tmp;
  tmp___0 = ether_addr_equal(lan_dst, (u8 const *)dev->dev_addr);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  kfree((void const *)priv->tlvs);
  tmp___2 = kmemdup((void const *)tlvs, (size_t )sizeoftlvs, 208U);
  priv->tlvs = (u8 *)tmp___2;
  if ((unsigned long )priv->tlvs == (unsigned long )((u8 *)0U)) {
    return (0);
  } else {
  }
  priv->sizeoftlvs = sizeoftlvs;
  skb = alloc_skb(sizeoftlvs, 32U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (0);
  } else {
  }
  skb->len = sizeoftlvs;
  skb_copy_to_linear_data(skb, (void const *)tlvs, sizeoftlvs);
  retval = send_to_lecd(priv, 13, (unsigned char const *)0U, (unsigned char const *)0U,
                        skb);
  if (retval != 0) {
    printk("\016lec:%s: lec.c: lane2_associate_req() failed\n", "lane2_associate_req");
  } else {
  }
  return (1);
}
}
static void lane2_associate_ind(struct net_device *dev , u8 const *mac_addr___0 ,
                                u8 const *tlvs , u32 sizeoftlvs )
{
  struct lec_priv *priv ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct lec_priv *)tmp;
  if ((unsigned long )priv->lane2_ops != (unsigned long )((struct lane2_ops *)0) && (unsigned long )(priv->lane2_ops)->associate_indicator != (unsigned long )((void (*)(struct net_device * ,
                                                                                                                                                                         u8 const * ,
                                                                                                                                                                         u8 const * ,
                                                                                                                                                                         u32 ))0)) {
    (*((priv->lane2_ops)->associate_indicator))(dev, mac_addr___0, tlvs, sizeoftlvs);
  } else {
  }
  return;
}
}
static void lec_arp_check_expire(struct work_struct *work ) ;
static void lec_arp_expire_arp(unsigned long data ) ;
static void lec_arp_init(struct lec_priv *priv )
{
  unsigned short i ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___1 ;
  {
  i = 0U;
  goto ldv_49969;
  ldv_49968:
  ((struct hlist_head *)(& priv->lec_arp_tables) + (unsigned long )i)->first = (struct hlist_node *)0;
  i = (unsigned short )((int )i + 1);
  ldv_49969: ;
  if ((unsigned int )i <= 15U) {
    goto ldv_49968;
  } else {
  }
  priv->lec_arp_empty_ones.first = (struct hlist_node *)0;
  priv->lec_no_forward.first = (struct hlist_node *)0;
  priv->mcast_fwds.first = (struct hlist_node *)0;
  spinlock_check(& priv->lec_arp_lock);
  __raw_spin_lock_init(& priv->lec_arp_lock.ldv_6347.rlock, "&(&priv->lec_arp_lock)->rlock",
                       & __key);
  __init_work(& priv->lec_arp_work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  priv->lec_arp_work.work.data = __constr_expr_0;
  lockdep_init_map(& priv->lec_arp_work.work.lockdep_map, "(&(&priv->lec_arp_work)->work)",
                   & __key___0, 0);
  INIT_LIST_HEAD(& priv->lec_arp_work.work.entry);
  priv->lec_arp_work.work.func = & lec_arp_check_expire;
  init_timer_key(& priv->lec_arp_work.timer, 2U, "(&(&priv->lec_arp_work)->timer)",
                 & __key___1);
  priv->lec_arp_work.timer.function = & delayed_work_timer_fn;
  priv->lec_arp_work.timer.data = (unsigned long )(& priv->lec_arp_work);
  schedule_delayed_work(& priv->lec_arp_work, 750UL);
  return;
}
}
static void lec_arp_clear_vccs(struct lec_arp_table *entry )
{
  struct atm_vcc *vcc ;
  struct lec_vcc_priv *vpriv ;
  struct net_device *dev ;
  {
  if ((unsigned long )entry->vcc != (unsigned long )((struct atm_vcc *)0)) {
    vcc = entry->vcc;
    vpriv = (struct lec_vcc_priv *)vcc->user_back;
    dev = (struct net_device *)vcc->proto_data;
    vcc->pop = vpriv->old_pop;
    if (vpriv->xoff != 0) {
      netif_wake_queue(dev);
    } else {
    }
    kfree((void const *)vpriv);
    vcc->user_back = (void *)0;
    vcc->push = entry->old_push;
    vcc_release_async(vcc, -32);
    entry->vcc = (struct atm_vcc *)0;
  } else {
  }
  if ((unsigned long )entry->recv_vcc != (unsigned long )((struct atm_vcc *)0)) {
    (entry->recv_vcc)->push = entry->old_recv_push;
    vcc_release_async(entry->recv_vcc, -32);
    entry->recv_vcc = (struct atm_vcc *)0;
  } else {
  }
  return;
}
}
__inline static void lec_arp_add(struct lec_priv *priv , struct lec_arp_table *entry )
{
  struct hlist_head *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = (struct hlist_head *)(& priv->lec_arp_tables) + ((unsigned long )entry->mac_addr[5] & 15UL);
  hlist_add_head(& entry->next, tmp);
  descriptor.modname = "lec";
  descriptor.function = "lec_arp_add";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor.format = "Added entry:%pM\n";
  descriptor.lineno = 1362U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "lec:%s: Added entry:%pM\n", "lec_arp_add", (unsigned char *)(& entry->mac_addr));
  } else {
  }
  return;
}
}
static int lec_arp_remove(struct lec_priv *priv , struct lec_arp_table *to_remove )
{
  struct lec_arp_table *entry ;
  int i ;
  int remove_vcc ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct lec_arp_table *tmp ;
  int tmp___0 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct lec_arp_table *tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  {
  remove_vcc = 1;
  if ((unsigned long )to_remove == (unsigned long )((struct lec_arp_table *)0)) {
    return (-1);
  } else {
  }
  hlist_del(& to_remove->next);
  ldv_del_timer_39(& to_remove->timer);
  if ((unsigned int )to_remove->status > 3U) {
    i = 0;
    goto ldv_50007;
    ldv_50006:
    ____ptr = ((struct hlist_head *)(& priv->lec_arp_tables) + (unsigned long )i)->first;
    if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
      __mptr = (struct hlist_node const *)____ptr;
      tmp = (struct lec_arp_table *)__mptr;
    } else {
      tmp = (struct lec_arp_table *)0;
    }
    entry = tmp;
    goto ldv_50005;
    ldv_50004:
    tmp___0 = memcmp((void const *)(& to_remove->atm_addr), (void const *)(& entry->atm_addr),
                     20UL);
    if (tmp___0 == 0) {
      remove_vcc = 0;
      goto ldv_50003;
    } else {
    }
    ____ptr___0 = entry->next.next;
    if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
      __mptr___0 = (struct hlist_node const *)____ptr___0;
      tmp___1 = (struct lec_arp_table *)__mptr___0;
    } else {
      tmp___1 = (struct lec_arp_table *)0;
    }
    entry = tmp___1;
    ldv_50005: ;
    if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
      goto ldv_50004;
    } else {
    }
    ldv_50003:
    i = i + 1;
    ldv_50007: ;
    if (i <= 15) {
      goto ldv_50006;
    } else {
    }
    if (remove_vcc != 0) {
      lec_arp_clear_vccs(to_remove);
    } else {
    }
  } else {
  }
  skb_queue_purge(& to_remove->tx_wait);
  descriptor.modname = "lec";
  descriptor.function = "lec_arp_remove";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor.format = "Removed entry:%pM\n";
  descriptor.lineno = 1403U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_pr_debug(& descriptor, "lec:%s: Removed entry:%pM\n", "lec_arp_remove",
                       (unsigned char *)(& to_remove->mac_addr));
  } else {
  }
  return (0);
}
}
static void lec_arp_destroy(struct lec_priv *priv )
{
  unsigned long flags ;
  struct hlist_node *next ;
  struct lec_arp_table *entry ;
  int i ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct lec_arp_table *tmp ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct lec_arp_table *tmp___0 ;
  struct hlist_node *____ptr___1 ;
  struct hlist_node const *__mptr___1 ;
  struct lec_arp_table *tmp___1 ;
  struct hlist_node *____ptr___2 ;
  struct hlist_node const *__mptr___2 ;
  struct lec_arp_table *tmp___2 ;
  struct hlist_node *____ptr___3 ;
  struct hlist_node const *__mptr___3 ;
  struct lec_arp_table *tmp___3 ;
  struct hlist_node *____ptr___4 ;
  struct hlist_node const *__mptr___4 ;
  struct lec_arp_table *tmp___4 ;
  struct hlist_node *____ptr___5 ;
  struct hlist_node const *__mptr___5 ;
  struct lec_arp_table *tmp___5 ;
  struct hlist_node *____ptr___6 ;
  struct hlist_node const *__mptr___6 ;
  struct lec_arp_table *tmp___6 ;
  {
  cancel_delayed_work_sync(& priv->lec_arp_work);
  ldv_spin_lock();
  i = 0;
  goto ldv_50031;
  ldv_50030:
  ____ptr = ((struct hlist_head *)(& priv->lec_arp_tables) + (unsigned long )i)->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp = (struct lec_arp_table *)__mptr;
  } else {
    tmp = (struct lec_arp_table *)0;
  }
  entry = tmp;
  goto ldv_50028;
  ldv_50027:
  lec_arp_remove(priv, entry);
  lec_arp_put(entry);
  ____ptr___0 = next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___0 = (struct lec_arp_table *)__mptr___0;
  } else {
    tmp___0 = (struct lec_arp_table *)0;
  }
  entry = tmp___0;
  ldv_50028: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    next = entry->next.next;
    goto ldv_50027;
  } else {
  }
  ((struct hlist_head *)(& priv->lec_arp_tables) + (unsigned long )i)->first = (struct hlist_node *)0;
  i = i + 1;
  ldv_50031: ;
  if (i <= 15) {
    goto ldv_50030;
  } else {
  }
  ____ptr___1 = priv->lec_arp_empty_ones.first;
  if ((unsigned long )____ptr___1 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___1 = (struct hlist_node const *)____ptr___1;
    tmp___1 = (struct lec_arp_table *)__mptr___1;
  } else {
    tmp___1 = (struct lec_arp_table *)0;
  }
  entry = tmp___1;
  goto ldv_50043;
  ldv_50042:
  ldv_del_timer_sync_40(& entry->timer);
  lec_arp_clear_vccs(entry);
  hlist_del(& entry->next);
  lec_arp_put(entry);
  ____ptr___2 = next;
  if ((unsigned long )____ptr___2 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___2 = (struct hlist_node const *)____ptr___2;
    tmp___2 = (struct lec_arp_table *)__mptr___2;
  } else {
    tmp___2 = (struct lec_arp_table *)0;
  }
  entry = tmp___2;
  ldv_50043: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    next = entry->next.next;
    goto ldv_50042;
  } else {
  }
  priv->lec_arp_empty_ones.first = (struct hlist_node *)0;
  ____ptr___3 = priv->lec_no_forward.first;
  if ((unsigned long )____ptr___3 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___3 = (struct hlist_node const *)____ptr___3;
    tmp___3 = (struct lec_arp_table *)__mptr___3;
  } else {
    tmp___3 = (struct lec_arp_table *)0;
  }
  entry = tmp___3;
  goto ldv_50055;
  ldv_50054:
  ldv_del_timer_sync_41(& entry->timer);
  lec_arp_clear_vccs(entry);
  hlist_del(& entry->next);
  lec_arp_put(entry);
  ____ptr___4 = next;
  if ((unsigned long )____ptr___4 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___4 = (struct hlist_node const *)____ptr___4;
    tmp___4 = (struct lec_arp_table *)__mptr___4;
  } else {
    tmp___4 = (struct lec_arp_table *)0;
  }
  entry = tmp___4;
  ldv_50055: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    next = entry->next.next;
    goto ldv_50054;
  } else {
  }
  priv->lec_no_forward.first = (struct hlist_node *)0;
  ____ptr___5 = priv->mcast_fwds.first;
  if ((unsigned long )____ptr___5 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___5 = (struct hlist_node const *)____ptr___5;
    tmp___5 = (struct lec_arp_table *)__mptr___5;
  } else {
    tmp___5 = (struct lec_arp_table *)0;
  }
  entry = tmp___5;
  goto ldv_50067;
  ldv_50066:
  lec_arp_clear_vccs(entry);
  hlist_del(& entry->next);
  lec_arp_put(entry);
  ____ptr___6 = next;
  if ((unsigned long )____ptr___6 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___6 = (struct hlist_node const *)____ptr___6;
    tmp___6 = (struct lec_arp_table *)__mptr___6;
  } else {
    tmp___6 = (struct lec_arp_table *)0;
  }
  entry = tmp___6;
  ldv_50067: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    next = entry->next.next;
    goto ldv_50066;
  } else {
  }
  priv->mcast_fwds.first = (struct hlist_node *)0;
  priv->mcast_vcc = (struct atm_vcc *)0;
  spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
  return;
}
}
static struct lec_arp_table *lec_arp_find(struct lec_priv *priv , unsigned char const *mac_addr___0 )
{
  struct hlist_head *head ;
  struct lec_arp_table *entry ;
  struct _ddebug descriptor ;
  long tmp ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct lec_arp_table *tmp___0 ;
  bool tmp___1 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct lec_arp_table *tmp___2 ;
  {
  descriptor.modname = "lec";
  descriptor.function = "lec_arp_find";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor.format = "%pM\n";
  descriptor.lineno = 1607U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "lec:%s: %pM\n", "lec_arp_find", mac_addr___0);
  } else {
  }
  head = (struct hlist_head *)(& priv->lec_arp_tables) + ((unsigned long )*(mac_addr___0 + 5UL) & 15UL);
  ____ptr = head->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp___0 = (struct lec_arp_table *)__mptr;
  } else {
    tmp___0 = (struct lec_arp_table *)0;
  }
  entry = tmp___0;
  goto ldv_50086;
  ldv_50085:
  tmp___1 = ether_addr_equal(mac_addr___0, (u8 const *)(& entry->mac_addr));
  if ((int )tmp___1) {
    return (entry);
  } else {
  }
  ____ptr___0 = entry->next.next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___2 = (struct lec_arp_table *)__mptr___0;
  } else {
    tmp___2 = (struct lec_arp_table *)0;
  }
  entry = tmp___2;
  ldv_50086: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    goto ldv_50085;
  } else {
  }
  return ((struct lec_arp_table *)0);
}
}
static struct lec_arp_table *make_entry(struct lec_priv *priv , unsigned char const *mac_addr___0 )
{
  struct lec_arp_table *to_return ;
  void *tmp ;
  {
  tmp = kzalloc(368UL, 32U);
  to_return = (struct lec_arp_table *)tmp;
  if ((unsigned long )to_return == (unsigned long )((struct lec_arp_table *)0)) {
    printk("\016lec:%s: LEC: Arp entry kmalloc failed\n", "make_entry");
    return ((struct lec_arp_table *)0);
  } else {
  }
  ether_addr_copy((u8 *)(& to_return->mac_addr), mac_addr___0);
  INIT_HLIST_NODE(& to_return->next);
  reg_timer_1(& to_return->timer, & lec_arp_expire_arp, (unsigned long )to_return);
  to_return->last_used = jiffies;
  to_return->priv = priv;
  skb_queue_head_init(& to_return->tx_wait);
  atomic_set(& to_return->usage, 1);
  return (to_return);
}
}
static void lec_arp_expire_arp(unsigned long data )
{
  struct lec_arp_table *entry ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  entry = (struct lec_arp_table *)data;
  descriptor.modname = "lec";
  descriptor.function = "lec_arp_expire_arp";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor.format = "\n";
  descriptor.lineno = 1645U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "lec:%s: \n", "lec_arp_expire_arp");
  } else {
  }
  if ((unsigned int )entry->status == 1U) {
    if ((int )((unsigned short )entry->no_tries) <= (int )(entry->priv)->max_retry_count) {
      if (entry->is_rdesc != 0) {
        send_to_lecd(entry->priv, 12, (unsigned char const *)(& entry->mac_addr),
                     (unsigned char const *)0U, (struct sk_buff *)0);
      } else {
        send_to_lecd(entry->priv, 11, (unsigned char const *)(& entry->mac_addr),
                     (unsigned char const *)0U, (struct sk_buff *)0);
      }
      entry->no_tries = (unsigned char )((int )entry->no_tries + 1);
    } else {
    }
    ldv_mod_timer_42(& entry->timer, (unsigned long )jiffies + 250UL);
  } else {
  }
  return;
}
}
static void lec_arp_expire_vcc(unsigned long data )
{
  unsigned long flags ;
  struct lec_arp_table *to_remove ;
  struct lec_priv *priv ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  to_remove = (struct lec_arp_table *)data;
  priv = to_remove->priv;
  ldv_del_timer_43(& to_remove->timer);
  descriptor.modname = "lec";
  descriptor.function = "lec_arp_expire_vcc";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor.format = "%p %p: vpi:%d vci:%d\n";
  descriptor.lineno = 1672U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "lec:%s: %p %p: vpi:%d vci:%d\n", "lec_arp_expire_vcc",
                       to_remove, priv, (unsigned long )to_remove->vcc != (unsigned long )((struct atm_vcc *)0) ? (int )(to_remove->recv_vcc)->vpi : 0,
                       (unsigned long )to_remove->vcc != (unsigned long )((struct atm_vcc *)0) ? (to_remove->recv_vcc)->vci : 0);
  } else {
  }
  ldv_spin_lock();
  hlist_del(& to_remove->next);
  spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
  lec_arp_clear_vccs(to_remove);
  lec_arp_put(to_remove);
  return;
}
}
static bool __lec_arp_check_expire(struct lec_arp_table *entry , unsigned long now ,
                                   struct lec_priv *priv )
{
  unsigned long time_to_check ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  if ((int )entry->flags & 1 && priv->topology_change != 0) {
    time_to_check = priv->forward_delay_time;
  } else {
    time_to_check = priv->aging_time;
  }
  descriptor.modname = "lec";
  descriptor.function = "__lec_arp_check_expire";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor.format = "About to expire: %lx - %lx > %lx\n";
  descriptor.lineno = 1694U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "lec:%s: About to expire: %lx - %lx > %lx\n",
                       "__lec_arp_check_expire", now, entry->last_used, time_to_check);
  } else {
  }
  if (((long )((entry->last_used + time_to_check) - now) < 0L && ((int )entry->flags & 2) == 0) && ((int )entry->mac_addr[0] & 1) == 0) {
    descriptor___0.modname = "lec";
    descriptor___0.function = "__lec_arp_check_expire";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor___0.format = "Entry timed out\n";
    descriptor___0.lineno = 1699U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "lec:%s: Entry timed out\n", "__lec_arp_check_expire");
    } else {
    }
    lec_arp_remove(priv, entry);
    lec_arp_put(entry);
  } else {
    if (((unsigned int )entry->status == 2U || (unsigned int )entry->status == 1U) && (long )(now - (entry->timestamp + priv->max_unknown_frame_time)) >= 0L) {
      entry->timestamp = jiffies;
      entry->packets_flooded = 0U;
      if ((unsigned int )entry->status == 2U) {
        send_to_lecd(priv, 2, (unsigned char const *)(& entry->mac_addr), (unsigned char const *)(& entry->atm_addr),
                     (struct sk_buff *)0);
      } else {
      }
    } else {
    }
    if ((unsigned int )entry->status == 4U && (long )(now - (entry->timestamp + priv->path_switching_delay)) >= 0L) {
      lec_arp_hold(entry);
      return (1);
    } else {
    }
  }
  return (0);
}
}
static void lec_arp_check_expire(struct work_struct *work )
{
  unsigned long flags ;
  struct lec_priv *priv ;
  struct work_struct const *__mptr ;
  struct hlist_node *next ;
  struct lec_arp_table *entry ;
  unsigned long now ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr___0 ;
  struct lec_arp_table *tmp___0 ;
  struct sk_buff *skb ;
  struct atm_vcc *vcc ;
  bool tmp___1 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___1 ;
  struct lec_arp_table *tmp___2 ;
  {
  __mptr = (struct work_struct const *)work;
  priv = (struct lec_priv *)__mptr + 0xffffffffffffff08UL;
  descriptor.modname = "lec";
  descriptor.function = "lec_arp_check_expire";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor.format = "%p\n";
  descriptor.lineno = 1752U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "lec:%s: %p\n", "lec_arp_check_expire", priv);
  } else {
  }
  now = jiffies;
  restart:
  ldv_spin_lock();
  i = 0;
  goto ldv_50167;
  ldv_50166:
  ____ptr = ((struct hlist_head *)(& priv->lec_arp_tables) + (unsigned long )i)->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr;
    tmp___0 = (struct lec_arp_table *)__mptr___0;
  } else {
    tmp___0 = (struct lec_arp_table *)0;
  }
  entry = tmp___0;
  goto ldv_50164;
  ldv_50163:
  tmp___1 = __lec_arp_check_expire(entry, now, priv);
  if ((int )tmp___1) {
    vcc = entry->vcc;
    spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
    goto ldv_50161;
    ldv_50160:
    lec_send(vcc, skb);
    ldv_50161:
    skb = skb_dequeue(& entry->tx_wait);
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      goto ldv_50160;
    } else {
    }
    entry->last_used = jiffies;
    entry->status = 5U;
    lec_arp_put(entry);
    goto restart;
  } else {
  }
  ____ptr___0 = next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___1 = (struct hlist_node const *)____ptr___0;
    tmp___2 = (struct lec_arp_table *)__mptr___1;
  } else {
    tmp___2 = (struct lec_arp_table *)0;
  }
  entry = tmp___2;
  ldv_50164: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    next = entry->next.next;
    goto ldv_50163;
  } else {
  }
  i = i + 1;
  ldv_50167: ;
  if (i <= 15) {
    goto ldv_50166;
  } else {
  }
  spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
  schedule_delayed_work(& priv->lec_arp_work, 750UL);
  return;
}
}
static struct atm_vcc *lec_arp_resolve(struct lec_priv *priv , unsigned char const *mac_to_find ,
                                       int is_rdesc , struct lec_arp_table **ret_entry )
{
  unsigned long flags ;
  struct lec_arp_table *entry ;
  struct atm_vcc *found ;
  bool tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  unsigned long tmp___3 ;
  {
  if ((int )*mac_to_find & 1) {
    switch (priv->lane_version) {
    case 1: ;
    return (priv->mcast_vcc);
    case 2:
    tmp = ether_addr_equal(mac_to_find, (u8 const *)(& bus_mac));
    if ((int )tmp) {
      return (priv->mcast_vcc);
    } else {
    }
    goto ldv_50180;
    default: ;
    goto ldv_50180;
    }
    ldv_50180: ;
  } else {
  }
  ldv_spin_lock();
  entry = lec_arp_find(priv, mac_to_find);
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    if ((unsigned int )entry->status == 5U) {
      entry->last_used = jiffies;
      lec_arp_hold(entry);
      *ret_entry = entry;
      found = entry->vcc;
      goto out;
    } else {
    }
    if ((unsigned int )entry->status == 1U) {
      entry->no_tries = 0U;
    } else {
    }
    if ((unsigned int )entry->status != 4U && (unsigned int )entry->packets_flooded < priv->maximum_unknown_frame_count) {
      entry->packets_flooded = (unsigned short )((int )entry->packets_flooded + 1);
      descriptor.modname = "lec";
      descriptor.function = "lec_arp_resolve";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
      descriptor.format = "Flooding..\n";
      descriptor.lineno = 1834U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_pr_debug(& descriptor, "lec:%s: Flooding..\n", "lec_arp_resolve");
      } else {
      }
      found = priv->mcast_vcc;
      goto out;
    } else {
    }
    lec_arp_hold(entry);
    *ret_entry = entry;
    descriptor___0.modname = "lec";
    descriptor___0.function = "lec_arp_resolve";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor___0.format = "entry->status %d entry->vcc %p\n";
    descriptor___0.lineno = 1846U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "lec:%s: entry->status %d entry->vcc %p\n",
                         "lec_arp_resolve", (int )entry->status, entry->vcc);
    } else {
    }
    found = (struct atm_vcc *)0;
  } else {
    entry = make_entry(priv, mac_to_find);
    descriptor___1.modname = "lec";
    descriptor___1.function = "lec_arp_resolve";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor___1.format = "Making entry\n";
    descriptor___1.lineno = 1851U;
    descriptor___1.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "lec:%s: Making entry\n", "lec_arp_resolve");
    } else {
    }
    if ((unsigned long )entry == (unsigned long )((struct lec_arp_table *)0)) {
      found = priv->mcast_vcc;
      goto out;
    } else {
    }
    lec_arp_add(priv, entry);
    entry->packets_flooded = 1U;
    entry->status = 1U;
    entry->no_tries = 1U;
    tmp___3 = jiffies;
    entry->timestamp = tmp___3;
    entry->last_used = tmp___3;
    entry->is_rdesc = is_rdesc;
    if (entry->is_rdesc != 0) {
      send_to_lecd(priv, 12, mac_to_find, (unsigned char const *)0U, (struct sk_buff *)0);
    } else {
      send_to_lecd(priv, 11, mac_to_find, (unsigned char const *)0U, (struct sk_buff *)0);
    }
    entry->timer.expires = (unsigned long )jiffies + 250UL;
    entry->timer.function = & lec_arp_expire_arp;
    add_timer(& entry->timer);
    found = priv->mcast_vcc;
  }
  out:
  spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
  return (found);
}
}
static int lec_addr_delete(struct lec_priv *priv , unsigned char const *atm_addr ,
                           unsigned long permanent )
{
  unsigned long flags ;
  struct hlist_node *next ;
  struct lec_arp_table *entry ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct lec_arp_table *tmp___0 ;
  int tmp___1 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct lec_arp_table *tmp___2 ;
  {
  descriptor.modname = "lec";
  descriptor.function = "lec_addr_delete";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor.format = "\n";
  descriptor.lineno = 1888U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "lec:%s: \n", "lec_addr_delete");
  } else {
  }
  ldv_spin_lock();
  i = 0;
  goto ldv_50211;
  ldv_50210:
  ____ptr = ((struct hlist_head *)(& priv->lec_arp_tables) + (unsigned long )i)->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp___0 = (struct lec_arp_table *)__mptr;
  } else {
    tmp___0 = (struct lec_arp_table *)0;
  }
  entry = tmp___0;
  goto ldv_50208;
  ldv_50207:
  tmp___1 = memcmp((void const *)atm_addr, (void const *)(& entry->atm_addr),
                   20UL);
  if (tmp___1 == 0 && (permanent != 0UL || ((int )entry->flags & 2) == 0)) {
    lec_arp_remove(priv, entry);
    lec_arp_put(entry);
  } else {
  }
  spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
  return (0);
  ____ptr___0 = next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___2 = (struct lec_arp_table *)__mptr___0;
  } else {
    tmp___2 = (struct lec_arp_table *)0;
  }
  entry = tmp___2;
  ldv_50208: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    next = entry->next.next;
    goto ldv_50207;
  } else {
  }
  i = i + 1;
  ldv_50211: ;
  if (i <= 15) {
    goto ldv_50210;
  } else {
  }
  spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
  return (-1);
}
}
static void lec_arp_update(struct lec_priv *priv , unsigned char const *mac_addr___0 ,
                           unsigned char const *atm_addr , unsigned long remoteflag ,
                           unsigned int targetless_le_arp )
{
  unsigned long flags ;
  struct hlist_node *next ;
  struct lec_arp_table *entry ;
  struct lec_arp_table *tmp ;
  int i ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct lec_arp_table *tmp___1 ;
  size_t __len ;
  void *__ret ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  int tmp___3 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct lec_arp_table *tmp___4 ;
  int tmp___5 ;
  size_t __len___0 ;
  void *__ret___0 ;
  struct hlist_node *____ptr___1 ;
  struct hlist_node const *__mptr___1 ;
  struct lec_arp_table *tmp___6 ;
  int tmp___7 ;
  struct hlist_node *____ptr___2 ;
  struct hlist_node const *__mptr___2 ;
  struct lec_arp_table *tmp___8 ;
  struct _ddebug descriptor___1 ;
  long tmp___9 ;
  {
  descriptor.modname = "lec";
  descriptor.function = "lec_arp_update";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor.format = "%smac:%pM\n";
  descriptor.lineno = 1921U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "lec:%s: %smac:%pM\n", "lec_arp_update", targetless_le_arp != 0U ? (char *)"targetless " : (char *)"",
                       mac_addr___0);
  } else {
  }
  ldv_spin_lock();
  entry = lec_arp_find(priv, mac_addr___0);
  if ((unsigned long )entry == (unsigned long )((struct lec_arp_table *)0) && targetless_le_arp != 0U) {
    goto out;
  } else {
  }
  tmp___5 = hlist_empty((struct hlist_head const *)(& priv->lec_arp_empty_ones));
  if (tmp___5 == 0) {
    ____ptr = priv->lec_arp_empty_ones.first;
    if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
      __mptr = (struct hlist_node const *)____ptr;
      tmp___1 = (struct lec_arp_table *)__mptr;
    } else {
      tmp___1 = (struct lec_arp_table *)0;
    }
    entry = tmp___1;
    goto ldv_50242;
    ldv_50241:
    tmp___3 = memcmp((void const *)(& entry->atm_addr), (void const *)atm_addr,
                     20UL);
    if (tmp___3 == 0) {
      hlist_del(& entry->next);
      ldv_del_timer_44(& entry->timer);
      tmp = lec_arp_find(priv, mac_addr___0);
      if ((unsigned long )tmp != (unsigned long )((struct lec_arp_table *)0)) {
        ldv_del_timer_45(& tmp->timer);
        tmp->status = 5U;
        __len = 20UL;
        if (__len > 63UL) {
          __ret = memcpy((void *)(& tmp->atm_addr), (void const *)atm_addr, __len);
        } else {
          __ret = memcpy((void *)(& tmp->atm_addr), (void const *)atm_addr,
                                   __len);
        }
        tmp->vcc = entry->vcc;
        tmp->old_push = entry->old_push;
        tmp->last_used = jiffies;
        ldv_del_timer_46(& entry->timer);
        lec_arp_put(entry);
        entry = tmp;
      } else {
        entry->status = 5U;
        ether_addr_copy((u8 *)(& entry->mac_addr), mac_addr___0);
        entry->last_used = jiffies;
        lec_arp_add(priv, entry);
      }
      if (remoteflag != 0UL) {
        entry->flags = (unsigned int )entry->flags | 1U;
      } else {
        entry->flags = (unsigned int )entry->flags & 65534U;
      }
      descriptor___0.modname = "lec";
      descriptor___0.function = "lec_arp_update";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
      descriptor___0.format = "After update\n";
      descriptor___0.lineno = 1958U;
      descriptor___0.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        __dynamic_pr_debug(& descriptor___0, "lec:%s: After update\n", "lec_arp_update");
      } else {
      }
      goto out;
    } else {
    }
    ____ptr___0 = next;
    if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
      __mptr___0 = (struct hlist_node const *)____ptr___0;
      tmp___4 = (struct lec_arp_table *)__mptr___0;
    } else {
      tmp___4 = (struct lec_arp_table *)0;
    }
    entry = tmp___4;
    ldv_50242: ;
    if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
      next = entry->next.next;
      goto ldv_50241;
    } else {
    }
  } else {
  }
  entry = lec_arp_find(priv, mac_addr___0);
  if ((unsigned long )entry == (unsigned long )((struct lec_arp_table *)0)) {
    entry = make_entry(priv, mac_addr___0);
    if ((unsigned long )entry == (unsigned long )((struct lec_arp_table *)0)) {
      goto out;
    } else {
    }
    entry->status = 0U;
    lec_arp_add(priv, entry);
  } else {
  }
  __len___0 = 20UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& entry->atm_addr), (void const *)atm_addr, __len___0);
  } else {
    __ret___0 = memcpy((void *)(& entry->atm_addr), (void const *)atm_addr,
                                 __len___0);
  }
  ldv_del_timer_47(& entry->timer);
  i = 0;
  goto ldv_50259;
  ldv_50258:
  ____ptr___1 = ((struct hlist_head *)(& priv->lec_arp_tables) + (unsigned long )i)->first;
  if ((unsigned long )____ptr___1 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___1 = (struct hlist_node const *)____ptr___1;
    tmp___6 = (struct lec_arp_table *)__mptr___1;
  } else {
    tmp___6 = (struct lec_arp_table *)0;
  }
  tmp = tmp___6;
  goto ldv_50257;
  ldv_50256: ;
  if ((unsigned long )entry != (unsigned long )tmp) {
    tmp___7 = memcmp((void const *)(& tmp->atm_addr), (void const *)atm_addr,
                     20UL);
    if (tmp___7 == 0) {
      if ((unsigned int )tmp->status > 2U) {
        entry->vcc = tmp->vcc;
        entry->old_push = tmp->old_push;
      } else {
      }
      entry->status = tmp->status;
      goto ldv_50255;
    } else {
    }
  } else {
  }
  ____ptr___2 = tmp->next.next;
  if ((unsigned long )____ptr___2 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___2 = (struct hlist_node const *)____ptr___2;
    tmp___8 = (struct lec_arp_table *)__mptr___2;
  } else {
    tmp___8 = (struct lec_arp_table *)0;
  }
  tmp = tmp___8;
  ldv_50257: ;
  if ((unsigned long )tmp != (unsigned long )((struct lec_arp_table *)0)) {
    goto ldv_50256;
  } else {
  }
  ldv_50255:
  i = i + 1;
  ldv_50259: ;
  if (i <= 15) {
    goto ldv_50258;
  } else {
  }
  if (remoteflag != 0UL) {
    entry->flags = (unsigned int )entry->flags | 1U;
  } else {
    entry->flags = (unsigned int )entry->flags & 65534U;
  }
  if ((unsigned int )entry->status == 1U || (unsigned int )entry->status == 0U) {
    entry->status = 2U;
    send_to_lecd(priv, 2, (unsigned char const *)(& entry->mac_addr), atm_addr,
                 (struct sk_buff *)0);
  } else {
  }
  descriptor___1.modname = "lec";
  descriptor___1.function = "lec_arp_update";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor___1.format = "After update2\n";
  descriptor___1.lineno = 2003U;
  descriptor___1.flags = 0U;
  tmp___9 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    __dynamic_pr_debug(& descriptor___1, "lec:%s: After update2\n", "lec_arp_update");
  } else {
  }
  out:
  spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
  return;
}
}
static void lec_vcc_added(struct lec_priv *priv , struct atmlec_ioc const *ioc_data ,
                          struct atm_vcc *vcc , void (*old_push)(struct atm_vcc * ,
                                                                 struct sk_buff * ) )
{
  unsigned long flags ;
  struct lec_arp_table *entry ;
  int i ;
  int found_entry ;
  struct _ddebug descriptor ;
  long tmp ;
  size_t __len ;
  void *__ret ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  size_t __len___0 ;
  void *__ret___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct lec_arp_table *tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  int tmp___5 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct lec_arp_table *tmp___6 ;
  struct _ddebug descriptor___4 ;
  long tmp___7 ;
  size_t __len___1 ;
  void *__ret___1 ;
  struct _ddebug descriptor___5 ;
  long tmp___8 ;
  {
  found_entry = 0;
  ldv_spin_lock();
  if ((unsigned int )((unsigned char )ioc_data->receive) == 2U) {
    descriptor.modname = "lec";
    descriptor.function = "lec_vcc_added";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor.format = "LEC_ARP: Attaching mcast forward\n";
    descriptor.lineno = 2024U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "lec:%s: LEC_ARP: Attaching mcast forward\n",
                         "lec_vcc_added");
    } else {
    }
    entry = make_entry(priv, (unsigned char const *)(& bus_mac));
    if ((unsigned long )entry == (unsigned long )((struct lec_arp_table *)0)) {
      goto out;
    } else {
    }
    ldv_del_timer_48(& entry->timer);
    __len = 20UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& entry->atm_addr), (void const *)(& ioc_data->atm_addr),
                       __len);
    } else {
      __ret = memcpy((void *)(& entry->atm_addr), (void const *)(& ioc_data->atm_addr),
                               __len);
    }
    entry->recv_vcc = vcc;
    entry->old_recv_push = old_push;
    hlist_add_head(& entry->next, & priv->mcast_fwds);
    goto out;
  } else
  if ((unsigned int )((unsigned char )ioc_data->receive) == 1U) {
    descriptor___0.modname = "lec";
    descriptor___0.function = "lec_vcc_added";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor___0.format = "LEC_ARP:Attaching data direct, not default: %2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x\n";
    descriptor___0.lineno = 2059U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "lec:%s: LEC_ARP:Attaching data direct, not default: %2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x\n",
                         "lec_vcc_added", (int )ioc_data->atm_addr[0], (int )ioc_data->atm_addr[1],
                         (int )ioc_data->atm_addr[2], (int )ioc_data->atm_addr[3],
                         (int )ioc_data->atm_addr[4], (int )ioc_data->atm_addr[5],
                         (int )ioc_data->atm_addr[6], (int )ioc_data->atm_addr[7],
                         (int )ioc_data->atm_addr[8], (int )ioc_data->atm_addr[9],
                         (int )ioc_data->atm_addr[10], (int )ioc_data->atm_addr[11],
                         (int )ioc_data->atm_addr[12], (int )ioc_data->atm_addr[13],
                         (int )ioc_data->atm_addr[14], (int )ioc_data->atm_addr[15],
                         (int )ioc_data->atm_addr[16], (int )ioc_data->atm_addr[17],
                         (int )ioc_data->atm_addr[18], (int )ioc_data->atm_addr[19]);
    } else {
    }
    entry = make_entry(priv, (unsigned char const *)(& bus_mac));
    if ((unsigned long )entry == (unsigned long )((struct lec_arp_table *)0)) {
      goto out;
    } else {
    }
    __len___0 = 20UL;
    if (__len___0 > 63UL) {
      __ret___0 = memcpy((void *)(& entry->atm_addr), (void const *)(& ioc_data->atm_addr),
                           __len___0);
    } else {
      __ret___0 = memcpy((void *)(& entry->atm_addr), (void const *)(& ioc_data->atm_addr),
                                   __len___0);
    }
    memset((void *)(& entry->mac_addr), 0, 6UL);
    entry->recv_vcc = vcc;
    entry->old_recv_push = old_push;
    entry->status = 0U;
    entry->timer.expires = priv->vcc_timeout_period + (unsigned long )jiffies;
    entry->timer.function = & lec_arp_expire_vcc;
    hlist_add_head(& entry->next, & priv->lec_no_forward);
    add_timer(& entry->timer);
    goto out;
  } else {
  }
  descriptor___1.modname = "lec";
  descriptor___1.function = "lec_vcc_added";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor___1.format = "LEC_ARP:Attaching data direct, default: %2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x\n";
  descriptor___1.lineno = 2085U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor___1, "lec:%s: LEC_ARP:Attaching data direct, default: %2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x\n",
                       "lec_vcc_added", (int )ioc_data->atm_addr[0], (int )ioc_data->atm_addr[1],
                       (int )ioc_data->atm_addr[2], (int )ioc_data->atm_addr[3], (int )ioc_data->atm_addr[4],
                       (int )ioc_data->atm_addr[5], (int )ioc_data->atm_addr[6], (int )ioc_data->atm_addr[7],
                       (int )ioc_data->atm_addr[8], (int )ioc_data->atm_addr[9], (int )ioc_data->atm_addr[10],
                       (int )ioc_data->atm_addr[11], (int )ioc_data->atm_addr[12],
                       (int )ioc_data->atm_addr[13], (int )ioc_data->atm_addr[14],
                       (int )ioc_data->atm_addr[15], (int )ioc_data->atm_addr[16],
                       (int )ioc_data->atm_addr[17], (int )ioc_data->atm_addr[18],
                       (int )ioc_data->atm_addr[19]);
  } else {
  }
  i = 0;
  goto ldv_50299;
  ldv_50298:
  ____ptr = ((struct hlist_head *)(& priv->lec_arp_tables) + (unsigned long )i)->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp___2 = (struct lec_arp_table *)__mptr;
  } else {
    tmp___2 = (struct lec_arp_table *)0;
  }
  entry = tmp___2;
  goto ldv_50296;
  ldv_50295:
  tmp___5 = memcmp((void const *)(& ioc_data->atm_addr), (void const *)(& entry->atm_addr),
                   20UL);
  if (tmp___5 == 0) {
    descriptor___2.modname = "lec";
    descriptor___2.function = "lec_vcc_added";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor___2.format = "LEC_ARP: Attaching data direct\n";
    descriptor___2.lineno = 2092U;
    descriptor___2.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "lec:%s: LEC_ARP: Attaching data direct\n",
                         "lec_vcc_added");
    } else {
    }
    descriptor___3.modname = "lec";
    descriptor___3.function = "lec_vcc_added";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor___3.format = "Currently -> Vcc: %d, Rvcc:%d\n";
    descriptor___3.lineno = 2096U;
    descriptor___3.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "lec:%s: Currently -> Vcc: %d, Rvcc:%d\n",
                         "lec_vcc_added", (unsigned long )entry->vcc != (unsigned long )((struct atm_vcc *)0) ? (entry->vcc)->vci : 0,
                         (unsigned long )entry->recv_vcc != (unsigned long )((struct atm_vcc *)0) ? (entry->recv_vcc)->vci : 0);
    } else {
    }
    found_entry = 1;
    ldv_del_timer_49(& entry->timer);
    entry->vcc = vcc;
    entry->old_push = old_push;
    if ((unsigned int )entry->status == 2U) {
      if (priv->maximum_unknown_frame_count == 0U) {
        entry->status = 5U;
      } else {
        entry->timestamp = jiffies;
        entry->status = 4U;
      }
    } else {
    }
  } else {
  }
  ____ptr___0 = entry->next.next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___6 = (struct lec_arp_table *)__mptr___0;
  } else {
    tmp___6 = (struct lec_arp_table *)0;
  }
  entry = tmp___6;
  ldv_50296: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    goto ldv_50295;
  } else {
  }
  i = i + 1;
  ldv_50299: ;
  if (i <= 15) {
    goto ldv_50298;
  } else {
  }
  if (found_entry != 0) {
    descriptor___4.modname = "lec";
    descriptor___4.function = "lec_vcc_added";
    descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor___4.format = "After vcc was added\n";
    descriptor___4.lineno = 2135U;
    descriptor___4.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_pr_debug(& descriptor___4, "lec:%s: After vcc was added\n", "lec_vcc_added");
    } else {
    }
    goto out;
  } else {
  }
  entry = make_entry(priv, (unsigned char const *)(& bus_mac));
  if ((unsigned long )entry == (unsigned long )((struct lec_arp_table *)0)) {
    goto out;
  } else {
  }
  entry->vcc = vcc;
  entry->old_push = old_push;
  __len___1 = 20UL;
  if (__len___1 > 63UL) {
    __ret___1 = memcpy((void *)(& entry->atm_addr), (void const *)(& ioc_data->atm_addr),
                         __len___1);
  } else {
    __ret___1 = memcpy((void *)(& entry->atm_addr), (void const *)(& ioc_data->atm_addr),
                                 __len___1);
  }
  memset((void *)(& entry->mac_addr), 0, 6UL);
  entry->status = 0U;
  hlist_add_head(& entry->next, & priv->lec_arp_empty_ones);
  entry->timer.expires = priv->vcc_timeout_period + (unsigned long )jiffies;
  entry->timer.function = & lec_arp_expire_vcc;
  add_timer(& entry->timer);
  descriptor___5.modname = "lec";
  descriptor___5.function = "lec_vcc_added";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor___5.format = "After vcc was added\n";
  descriptor___5.lineno = 2155U;
  descriptor___5.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    __dynamic_pr_debug(& descriptor___5, "lec:%s: After vcc was added\n", "lec_vcc_added");
  } else {
  }
  out:
  spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
  return;
}
}
static void lec_flush_complete(struct lec_priv *priv , unsigned long tran_id )
{
  unsigned long flags ;
  struct lec_arp_table *entry ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct lec_arp_table *tmp___0 ;
  struct sk_buff *skb ;
  struct atm_vcc *vcc ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct lec_arp_table *tmp___2 ;
  {
  descriptor.modname = "lec";
  descriptor.function = "lec_flush_complete";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor.format = "%lx\n";
  descriptor.lineno = 2167U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "lec:%s: %lx\n", "lec_flush_complete", tran_id);
  } else {
  }
  restart:
  ldv_spin_lock();
  i = 0;
  goto ldv_50334;
  ldv_50333:
  ____ptr = ((struct hlist_head *)(& priv->lec_arp_tables) + (unsigned long )i)->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp___0 = (struct lec_arp_table *)__mptr;
  } else {
    tmp___0 = (struct lec_arp_table *)0;
  }
  entry = tmp___0;
  goto ldv_50331;
  ldv_50330: ;
  if (entry->flush_tran_id == tran_id && (unsigned int )entry->status == 4U) {
    vcc = entry->vcc;
    lec_arp_hold(entry);
    spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
    goto ldv_50327;
    ldv_50326:
    lec_send(vcc, skb);
    ldv_50327:
    skb = skb_dequeue(& entry->tx_wait);
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      goto ldv_50326;
    } else {
    }
    entry->last_used = jiffies;
    entry->status = 5U;
    lec_arp_put(entry);
    descriptor___0.modname = "lec";
    descriptor___0.function = "lec_flush_complete";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor___0.format = "LEC_ARP: Flushed\n";
    descriptor___0.lineno = 2186U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "lec:%s: LEC_ARP: Flushed\n", "lec_flush_complete");
    } else {
    }
    goto restart;
  } else {
  }
  ____ptr___0 = entry->next.next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___2 = (struct lec_arp_table *)__mptr___0;
  } else {
    tmp___2 = (struct lec_arp_table *)0;
  }
  entry = tmp___2;
  ldv_50331: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    goto ldv_50330;
  } else {
  }
  i = i + 1;
  ldv_50334: ;
  if (i <= 15) {
    goto ldv_50333;
  } else {
  }
  spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
  return;
}
}
static void lec_set_flush_tran_id(struct lec_priv *priv , unsigned char const *atm_addr ,
                                  unsigned long tran_id )
{
  unsigned long flags ;
  struct lec_arp_table *entry ;
  int i ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct lec_arp_table *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct lec_arp_table *tmp___2 ;
  {
  ldv_spin_lock();
  i = 0;
  goto ldv_50358;
  ldv_50357:
  ____ptr = ((struct hlist_head *)(& priv->lec_arp_tables) + (unsigned long )i)->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp = (struct lec_arp_table *)__mptr;
  } else {
    tmp = (struct lec_arp_table *)0;
  }
  entry = tmp;
  goto ldv_50355;
  ldv_50354:
  tmp___1 = memcmp((void const *)atm_addr, (void const *)(& entry->atm_addr),
                   20UL);
  if (tmp___1 == 0) {
    entry->flush_tran_id = tran_id;
    descriptor.modname = "lec";
    descriptor.function = "lec_set_flush_tran_id";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
    descriptor.format = "Set flush transaction id to %lx for %p\n";
    descriptor.lineno = 2210U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "lec:%s: Set flush transaction id to %lx for %p\n",
                         "lec_set_flush_tran_id", tran_id, entry);
    } else {
    }
  } else {
  }
  ____ptr___0 = entry->next.next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___2 = (struct lec_arp_table *)__mptr___0;
  } else {
    tmp___2 = (struct lec_arp_table *)0;
  }
  entry = tmp___2;
  ldv_50355: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    goto ldv_50354;
  } else {
  }
  i = i + 1;
  ldv_50358: ;
  if (i <= 15) {
    goto ldv_50357;
  } else {
  }
  spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
  return;
}
}
static int lec_mcast_make(struct lec_priv *priv , struct atm_vcc *vcc )
{
  unsigned long flags ;
  unsigned char mac_addr___0[6U] ;
  struct lec_arp_table *to_add ;
  struct lec_vcc_priv *vpriv ;
  int err ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  mac_addr___0[0] = 255U;
  mac_addr___0[1] = 255U;
  mac_addr___0[2] = 255U;
  mac_addr___0[3] = 255U;
  mac_addr___0[4] = 255U;
  mac_addr___0[5] = 255U;
  err = 0;
  tmp = kmalloc(16UL, 208U);
  vpriv = (struct lec_vcc_priv *)tmp;
  if ((unsigned long )vpriv == (unsigned long )((struct lec_vcc_priv *)0)) {
    return (-12);
  } else {
  }
  vpriv->xoff = 0;
  vpriv->old_pop = vcc->pop;
  vcc->user_back = (void *)vpriv;
  vcc->pop = & lec_pop;
  ldv_spin_lock();
  to_add = make_entry(priv, (unsigned char const *)(& mac_addr___0));
  if ((unsigned long )to_add == (unsigned long )((struct lec_arp_table *)0)) {
    vcc->pop = vpriv->old_pop;
    kfree((void const *)vpriv);
    err = -12;
    goto out;
  } else {
  }
  __len = 20UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& to_add->atm_addr), (void const *)(& vcc->remote.sas_addr.prv),
                     __len);
  } else {
    __ret = memcpy((void *)(& to_add->atm_addr), (void const *)(& vcc->remote.sas_addr.prv),
                             __len);
  }
  to_add->status = 5U;
  to_add->flags = (unsigned int )to_add->flags | 2U;
  to_add->vcc = vcc;
  to_add->old_push = vcc->push;
  vcc->push = & lec_push;
  priv->mcast_vcc = vcc;
  lec_arp_add(priv, to_add);
  out:
  spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
  return (err);
}
}
static void lec_vcc_close(struct lec_priv *priv , struct atm_vcc *vcc )
{
  unsigned long flags ;
  struct hlist_node *next ;
  struct lec_arp_table *entry ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct lec_arp_table *tmp___0 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct lec_arp_table *tmp___1 ;
  struct hlist_node *____ptr___1 ;
  struct hlist_node const *__mptr___1 ;
  struct lec_arp_table *tmp___2 ;
  struct hlist_node *____ptr___2 ;
  struct hlist_node const *__mptr___2 ;
  struct lec_arp_table *tmp___3 ;
  struct hlist_node *____ptr___3 ;
  struct hlist_node const *__mptr___3 ;
  struct lec_arp_table *tmp___4 ;
  struct hlist_node *____ptr___4 ;
  struct hlist_node const *__mptr___4 ;
  struct lec_arp_table *tmp___5 ;
  struct hlist_node *____ptr___5 ;
  struct hlist_node const *__mptr___5 ;
  struct lec_arp_table *tmp___6 ;
  struct hlist_node *____ptr___6 ;
  struct hlist_node const *__mptr___6 ;
  struct lec_arp_table *tmp___7 ;
  {
  descriptor.modname = "lec";
  descriptor.function = "lec_vcc_close";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor.format = "LEC_ARP: lec_vcc_close vpi:%d vci:%d\n";
  descriptor.lineno = 2261U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "lec:%s: LEC_ARP: lec_vcc_close vpi:%d vci:%d\n",
                       "lec_vcc_close", (int )vcc->vpi, vcc->vci);
  } else {
  }
  ldv_spin_lock();
  i = 0;
  goto ldv_50396;
  ldv_50395:
  ____ptr = ((struct hlist_head *)(& priv->lec_arp_tables) + (unsigned long )i)->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp___0 = (struct lec_arp_table *)__mptr;
  } else {
    tmp___0 = (struct lec_arp_table *)0;
  }
  entry = tmp___0;
  goto ldv_50393;
  ldv_50392: ;
  if ((unsigned long )entry->vcc == (unsigned long )vcc) {
    lec_arp_remove(priv, entry);
    lec_arp_put(entry);
    if ((unsigned long )priv->mcast_vcc == (unsigned long )vcc) {
      priv->mcast_vcc = (struct atm_vcc *)0;
    } else {
    }
  } else {
  }
  ____ptr___0 = next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___1 = (struct lec_arp_table *)__mptr___0;
  } else {
    tmp___1 = (struct lec_arp_table *)0;
  }
  entry = tmp___1;
  ldv_50393: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    next = entry->next.next;
    goto ldv_50392;
  } else {
  }
  i = i + 1;
  ldv_50396: ;
  if (i <= 15) {
    goto ldv_50395;
  } else {
  }
  ____ptr___1 = priv->lec_arp_empty_ones.first;
  if ((unsigned long )____ptr___1 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___1 = (struct hlist_node const *)____ptr___1;
    tmp___2 = (struct lec_arp_table *)__mptr___1;
  } else {
    tmp___2 = (struct lec_arp_table *)0;
  }
  entry = tmp___2;
  goto ldv_50408;
  ldv_50407: ;
  if ((unsigned long )entry->vcc == (unsigned long )vcc) {
    lec_arp_clear_vccs(entry);
    ldv_del_timer_50(& entry->timer);
    hlist_del(& entry->next);
    lec_arp_put(entry);
  } else {
  }
  ____ptr___2 = next;
  if ((unsigned long )____ptr___2 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___2 = (struct hlist_node const *)____ptr___2;
    tmp___3 = (struct lec_arp_table *)__mptr___2;
  } else {
    tmp___3 = (struct lec_arp_table *)0;
  }
  entry = tmp___3;
  ldv_50408: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    next = entry->next.next;
    goto ldv_50407;
  } else {
  }
  ____ptr___3 = priv->lec_no_forward.first;
  if ((unsigned long )____ptr___3 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___3 = (struct hlist_node const *)____ptr___3;
    tmp___4 = (struct lec_arp_table *)__mptr___3;
  } else {
    tmp___4 = (struct lec_arp_table *)0;
  }
  entry = tmp___4;
  goto ldv_50420;
  ldv_50419: ;
  if ((unsigned long )entry->recv_vcc == (unsigned long )vcc) {
    lec_arp_clear_vccs(entry);
    ldv_del_timer_51(& entry->timer);
    hlist_del(& entry->next);
    lec_arp_put(entry);
  } else {
  }
  ____ptr___4 = next;
  if ((unsigned long )____ptr___4 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___4 = (struct hlist_node const *)____ptr___4;
    tmp___5 = (struct lec_arp_table *)__mptr___4;
  } else {
    tmp___5 = (struct lec_arp_table *)0;
  }
  entry = tmp___5;
  ldv_50420: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    next = entry->next.next;
    goto ldv_50419;
  } else {
  }
  ____ptr___5 = priv->mcast_fwds.first;
  if ((unsigned long )____ptr___5 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___5 = (struct hlist_node const *)____ptr___5;
    tmp___6 = (struct lec_arp_table *)__mptr___5;
  } else {
    tmp___6 = (struct lec_arp_table *)0;
  }
  entry = tmp___6;
  goto ldv_50432;
  ldv_50431: ;
  if ((unsigned long )entry->recv_vcc == (unsigned long )vcc) {
    lec_arp_clear_vccs(entry);
    hlist_del(& entry->next);
    lec_arp_put(entry);
  } else {
  }
  ____ptr___6 = next;
  if ((unsigned long )____ptr___6 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___6 = (struct hlist_node const *)____ptr___6;
    tmp___7 = (struct lec_arp_table *)__mptr___6;
  } else {
    tmp___7 = (struct lec_arp_table *)0;
  }
  entry = tmp___7;
  ldv_50432: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    next = entry->next.next;
    goto ldv_50431;
  } else {
  }
  spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
  return;
}
}
static void lec_arp_check_empties(struct lec_priv *priv , struct atm_vcc *vcc , struct sk_buff *skb )
{
  unsigned long flags ;
  struct hlist_node *next ;
  struct lec_arp_table *entry ;
  struct lec_arp_table *tmp ;
  struct lecdatahdr_8023 *hdr ;
  unsigned char *src ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct lec_arp_table *tmp___0 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct lec_arp_table *tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  {
  hdr = (struct lecdatahdr_8023 *)skb->data;
  src = (unsigned char *)(& hdr->h_source);
  ldv_spin_lock();
  ____ptr = priv->lec_arp_empty_ones.first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp___0 = (struct lec_arp_table *)__mptr;
  } else {
    tmp___0 = (struct lec_arp_table *)0;
  }
  entry = tmp___0;
  goto ldv_50456;
  ldv_50455: ;
  if ((unsigned long )entry->vcc == (unsigned long )vcc) {
    ldv_del_timer_52(& entry->timer);
    ether_addr_copy((u8 *)(& entry->mac_addr), (u8 const *)src);
    entry->status = 5U;
    entry->last_used = jiffies;
    tmp = lec_arp_find(priv, (unsigned char const *)src);
    if ((unsigned long )tmp != (unsigned long )((struct lec_arp_table *)0)) {
      lec_arp_remove(priv, tmp);
      lec_arp_put(tmp);
    } else {
    }
    hlist_del(& entry->next);
    lec_arp_add(priv, entry);
    goto out;
  } else {
  }
  ____ptr___0 = next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___1 = (struct lec_arp_table *)__mptr___0;
  } else {
    tmp___1 = (struct lec_arp_table *)0;
  }
  entry = tmp___1;
  ldv_50456: ;
  if ((unsigned long )entry != (unsigned long )((struct lec_arp_table *)0)) {
    next = entry->next.next;
    goto ldv_50455;
  } else {
  }
  descriptor.modname = "lec";
  descriptor.function = "lec_arp_check_empties";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--net--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/521/dscv_tempdir/dscv/ri/43_2a/net/atm/lec.o.c.prepared";
  descriptor.format = "LEC_ARP: Arp_check_empties: entry not found!\n";
  descriptor.lineno = 2340U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_pr_debug(& descriptor, "lec:%s: LEC_ARP: Arp_check_empties: entry not found!\n",
                       "lec_arp_check_empties");
  } else {
  }
  out:
  spin_unlock_irqrestore(& priv->lec_arp_lock, flags);
  return;
}
}
void *ldv_retval_2 ;
int ldv_retval_5 ;
extern int ldv_open_6(void) ;
int ldv_retval_0 ;
int ldv_retval_4 ;
extern int ldv_ndo_init_5(void) ;
extern void ldv_initialize(void) ;
void *ldv_retval_1 ;
extern void ldv_check_final_state(void) ;
int ldv_retval_3 ;
extern int ldv_ndo_uninit_5(void) ;
void timer_init_1(void)
{
  {
  ldv_timer_1_0 = 0;
  ldv_timer_1_1 = 0;
  ldv_timer_1_2 = 0;
  ldv_timer_1_3 = 0;
  return;
}
}
void ldv_file_operations_3(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(1032UL);
  lec_seq_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_zalloc(512UL);
  lec_seq_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_net_device_ops_5(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(3264UL);
  lec_netdev_ops_group1 = (struct net_device *)tmp;
  return;
}
}
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& lec_arp_expire_arp)) {
    activate_suitable_timer_1(timer, data);
  } else {
  }
  return (0);
}
}
void disable_suitable_timer_1(struct timer_list *timer )
{
  {
  if (ldv_timer_1_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_0) {
    ldv_timer_1_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_1) {
    ldv_timer_1_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_2) {
    ldv_timer_1_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_3) {
    ldv_timer_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
void activate_suitable_timer_1(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_1_0 == 0 || ldv_timer_1_0 == 2) {
    ldv_timer_list_1_0 = timer;
    ldv_timer_list_1_0->data = data;
    ldv_timer_1_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_1 == 0 || ldv_timer_1_1 == 2) {
    ldv_timer_list_1_1 = timer;
    ldv_timer_list_1_1->data = data;
    ldv_timer_1_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_2 == 0 || ldv_timer_1_2 == 2) {
    ldv_timer_list_1_2 = timer;
    ldv_timer_list_1_2->data = data;
    ldv_timer_1_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_3 == 0 || ldv_timer_1_3 == 2) {
    ldv_timer_list_1_3 = timer;
    ldv_timer_list_1_3->data = data;
    ldv_timer_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_1_0 == (unsigned long )timer) {
    if (ldv_timer_1_0 == 2 || pending_flag != 0) {
      ldv_timer_list_1_0 = timer;
      ldv_timer_list_1_0->data = data;
      ldv_timer_1_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_1 == (unsigned long )timer) {
    if (ldv_timer_1_1 == 2 || pending_flag != 0) {
      ldv_timer_list_1_1 = timer;
      ldv_timer_list_1_1->data = data;
      ldv_timer_1_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_2 == (unsigned long )timer) {
    if (ldv_timer_1_2 == 2 || pending_flag != 0) {
      ldv_timer_list_1_2 = timer;
      ldv_timer_list_1_2->data = data;
      ldv_timer_1_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_3 == (unsigned long )timer) {
    if (ldv_timer_1_3 == 2 || pending_flag != 0) {
      ldv_timer_list_1_3 = timer;
      ldv_timer_list_1_3->data = data;
      ldv_timer_1_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_1(timer, data);
  return;
}
}
void ldv_initialize_atmdev_ops_6(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1624UL);
  lecdev_ops_group0 = (struct atm_vcc *)tmp;
  return;
}
}
void choose_timer_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_1_0 == 1) {
    ldv_timer_1_0 = 2;
    ldv_timer_1(ldv_timer_1_0, ldv_timer_list_1_0);
  } else {
  }
  goto ldv_50513;
  case 1: ;
  if (ldv_timer_1_1 == 1) {
    ldv_timer_1_1 = 2;
    ldv_timer_1(ldv_timer_1_1, ldv_timer_list_1_1);
  } else {
  }
  goto ldv_50513;
  case 2: ;
  if (ldv_timer_1_2 == 1) {
    ldv_timer_1_2 = 2;
    ldv_timer_1(ldv_timer_1_2, ldv_timer_list_1_2);
  } else {
  }
  goto ldv_50513;
  case 3: ;
  if (ldv_timer_1_3 == 1) {
    ldv_timer_1_3 = 2;
    ldv_timer_1(ldv_timer_1_3, ldv_timer_list_1_3);
  } else {
  }
  goto ldv_50513;
  default:
  ldv_stop();
  }
  ldv_50513: ;
  return;
}
}
void ldv_timer_1(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  lec_arp_expire_arp(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
void ldv_seq_operations_4(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(264UL);
  lec_seq_ops_group1 = (struct seq_file *)tmp;
  return;
}
}
void ldv_initialize_lane2_ops_7(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(3264UL);
  lane2_ops_group0 = (struct net_device *)tmp;
  return;
}
}
int main(void)
{
  struct sk_buff *ldvarg0 ;
  void *tmp ;
  int ldvarg1 ;
  int tmp___0 ;
  size_t ldvarg4 ;
  size_t tmp___1 ;
  loff_t *ldvarg3 ;
  void *tmp___2 ;
  char *ldvarg5 ;
  void *tmp___3 ;
  loff_t ldvarg2 ;
  loff_t tmp___4 ;
  u8 *ldvarg8 ;
  void *tmp___5 ;
  u8 *ldvarg11 ;
  void *tmp___6 ;
  int ldvarg7 ;
  int tmp___7 ;
  u32 ldvarg10 ;
  u32 tmp___8 ;
  u8 *ldvarg12 ;
  void *tmp___9 ;
  u32 *ldvarg9 ;
  void *tmp___10 ;
  u8 **ldvarg6 ;
  void *tmp___11 ;
  unsigned long ldvarg14 ;
  unsigned long tmp___12 ;
  struct socket *ldvarg13 ;
  void *tmp___13 ;
  unsigned int ldvarg15 ;
  unsigned int tmp___14 ;
  int ldvarg17 ;
  int tmp___15 ;
  struct sk_buff *ldvarg16 ;
  void *tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  {
  tmp = ldv_zalloc(232UL);
  ldvarg0 = (struct sk_buff *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg1 = tmp___0;
  tmp___1 = __VERIFIER_nondet_size_t();
  ldvarg4 = tmp___1;
  tmp___2 = ldv_zalloc(8UL);
  ldvarg3 = (loff_t *)tmp___2;
  tmp___3 = ldv_zalloc(1UL);
  ldvarg5 = (char *)tmp___3;
  tmp___4 = __VERIFIER_nondet_loff_t();
  ldvarg2 = tmp___4;
  tmp___5 = ldv_zalloc(1UL);
  ldvarg8 = (u8 *)tmp___5;
  tmp___6 = ldv_zalloc(1UL);
  ldvarg11 = (u8 *)tmp___6;
  tmp___7 = __VERIFIER_nondet_int();
  ldvarg7 = tmp___7;
  tmp___8 = __VERIFIER_nondet_u32();
  ldvarg10 = tmp___8;
  tmp___9 = ldv_zalloc(1UL);
  ldvarg12 = (u8 *)tmp___9;
  tmp___10 = ldv_zalloc(4UL);
  ldvarg9 = (u32 *)tmp___10;
  tmp___11 = ldv_zalloc(8UL);
  ldvarg6 = (u8 **)tmp___11;
  tmp___12 = __VERIFIER_nondet_ulong();
  ldvarg14 = tmp___12;
  tmp___13 = ldv_zalloc(48UL);
  ldvarg13 = (struct socket *)tmp___13;
  tmp___14 = __VERIFIER_nondet_uint();
  ldvarg15 = tmp___14;
  tmp___15 = __VERIFIER_nondet_int();
  ldvarg17 = tmp___15;
  tmp___16 = ldv_zalloc(232UL);
  ldvarg16 = (struct sk_buff *)tmp___16;
  ldv_initialize();
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_2 = 0;
  timer_init_1();
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_5 = 0;
  ldv_50612:
  tmp___17 = __VERIFIER_nondet_int();
  switch (tmp___17) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___18 = __VERIFIER_nondet_int();
    switch (tmp___18) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      lec_atm_send(lecdev_ops_group0, ldvarg0);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      lec_atm_send(lecdev_ops_group0, ldvarg0);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_50565;
    case 1: ;
    if (ldv_state_variable_6 == 2) {
      lec_atm_close(lecdev_ops_group0);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_50565;
    case 2: ;
    if (ldv_state_variable_6 == 1) {
      ldv_open_6();
      ldv_state_variable_6 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_50565;
    default:
    ldv_stop();
    }
    ldv_50565: ;
  } else {
  }
  goto ldv_50569;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    tmp___19 = __VERIFIER_nondet_int();
    switch (tmp___19) {
    case 0: ;
    if (ldv_state_variable_3 == 2) {
      seq_release_private(lec_seq_fops_group1, lec_seq_fops_group2);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_50572;
    case 1: ;
    if (ldv_state_variable_3 == 2) {
      seq_read(lec_seq_fops_group2, ldvarg5, ldvarg4, ldvarg3);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_50572;
    case 2: ;
    if (ldv_state_variable_3 == 2) {
      seq_lseek(lec_seq_fops_group2, ldvarg2, ldvarg1);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_50572;
    case 3: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_0 = lec_seq_open(lec_seq_fops_group1, lec_seq_fops_group2);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_50572;
    default:
    ldv_stop();
    }
    ldv_50572: ;
  } else {
  }
  goto ldv_50569;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___20 = __VERIFIER_nondet_int();
    switch (tmp___20) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      lane2_associate_req(lane2_ops_group0, (u8 const *)ldvarg12, (u8 const *)ldvarg11,
                          ldvarg10);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_50579;
    case 1: ;
    if (ldv_state_variable_7 == 1) {
      lane2_resolve(lane2_ops_group0, (u8 const *)ldvarg8, ldvarg7, ldvarg6, ldvarg9);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_50579;
    default:
    ldv_stop();
    }
    ldv_50579: ;
  } else {
  }
  goto ldv_50569;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    tmp___21 = __VERIFIER_nondet_int();
    switch (tmp___21) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      lane_ioctl(ldvarg13, ldvarg15, ldvarg14);
      ldv_state_variable_2 = 1;
    } else {
    }
    goto ldv_50584;
    default:
    ldv_stop();
    }
    ldv_50584: ;
  } else {
  }
  goto ldv_50569;
  case 4: ;
  if (ldv_state_variable_1 != 0) {
    choose_timer_1();
  } else {
  }
  goto ldv_50569;
  case 5: ;
  if (ldv_state_variable_4 != 0) {
    tmp___22 = __VERIFIER_nondet_int();
    switch (tmp___22) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_2 = lec_seq_start(lec_seq_ops_group1, lec_seq_ops_group3);
      if ((unsigned long )ldv_retval_2 != (unsigned long )((void *)0)) {
        ldv_state_variable_4 = 3;
        ref_cnt = ref_cnt + 1;
      } else {
      }
      if ((unsigned long )ldv_retval_2 == (unsigned long )((void *)0)) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_50589;
    case 1: ;
    if (ldv_state_variable_4 == 3) {
      lec_seq_stop(lec_seq_ops_group1, lec_seq_ops_group2);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      lec_seq_stop(lec_seq_ops_group1, lec_seq_ops_group2);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_50589;
    case 2: ;
    if (ldv_state_variable_4 == 2) {
      lec_seq_show(lec_seq_ops_group1, (void *)lec_seq_ops_group3);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_50589;
    case 3: ;
    if (ldv_state_variable_4 == 2) {
      ldv_retval_1 = lec_seq_next(lec_seq_ops_group1, lec_seq_ops_group2, lec_seq_ops_group3);
      if ((unsigned long )ldv_retval_1 == (unsigned long )((void *)0)) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
      if ((unsigned long )ldv_retval_1 != (unsigned long )((void *)0)) {
        ldv_state_variable_4 = 3;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_50589;
    default:
    ldv_stop();
    }
    ldv_50589: ;
  } else {
  }
  goto ldv_50569;
  case 6: ;
  if (ldv_state_variable_0 != 0) {
    tmp___23 = __VERIFIER_nondet_int();
    switch (tmp___23) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      lane_module_cleanup();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_50597;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_3 = lane_module_init();
      if (ldv_retval_3 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_2 = 1;
        ldv_state_variable_7 = 1;
        ldv_initialize_lane2_ops_7();
        ldv_state_variable_3 = 1;
        ldv_file_operations_3();
        ldv_state_variable_4 = 1;
        ldv_seq_operations_4();
        ldv_state_variable_6 = 1;
        ldv_initialize_atmdev_ops_6();
      } else {
      }
      if (ldv_retval_3 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_50597;
    default:
    ldv_stop();
    }
    ldv_50597: ;
  } else {
  }
  goto ldv_50569;
  case 7: ;
  if (ldv_state_variable_5 != 0) {
    tmp___24 = __VERIFIER_nondet_int();
    switch (tmp___24) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      lec_set_multicast_list(lec_netdev_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      lec_set_multicast_list(lec_netdev_ops_group1);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      lec_set_multicast_list(lec_netdev_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_50602;
    case 1: ;
    if (ldv_state_variable_5 == 3) {
      lec_close(lec_netdev_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_50602;
    case 2: ;
    if (ldv_state_variable_5 == 3) {
      lec_change_mtu(lec_netdev_ops_group1, ldvarg17);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      lec_change_mtu(lec_netdev_ops_group1, ldvarg17);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_50602;
    case 3: ;
    if (ldv_state_variable_5 == 2) {
      ldv_retval_5 = lec_open(lec_netdev_ops_group1);
      if (ldv_retval_5 == 0) {
        ldv_state_variable_5 = 3;
      } else {
      }
    } else {
    }
    goto ldv_50602;
    case 4: ;
    if (ldv_state_variable_5 == 3) {
      lec_start_xmit(ldvarg16, lec_netdev_ops_group1);
      ldv_state_variable_5 = 3;
    } else {
    }
    goto ldv_50602;
    case 5: ;
    if (ldv_state_variable_5 == 1) {
      lec_tx_timeout(lec_netdev_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      lec_tx_timeout(lec_netdev_ops_group1);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      lec_tx_timeout(lec_netdev_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_50602;
    case 6: ;
    if (ldv_state_variable_5 == 1) {
      ldv_retval_4 = ldv_ndo_init_5();
      if (ldv_retval_4 == 0) {
        ldv_state_variable_5 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_50602;
    case 7: ;
    if (ldv_state_variable_5 == 2) {
      ldv_ndo_uninit_5();
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_50602;
    default:
    ldv_stop();
    }
    ldv_50602: ;
  } else {
  }
  goto ldv_50569;
  default:
  ldv_stop();
  }
  ldv_50569: ;
  goto ldv_50612;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_8(lock, flags);
  return;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kmalloc_12(size, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return ((void *)0);
}
}
void *ldv_malloc(size_t size ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_alloc_skb_20(size, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_22(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_24(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_26(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_27(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_28(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_29(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_30(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_32(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
void *ldv_kmem_cache_alloc_33(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
struct sk_buff *ldv_skb_copy_expand_34(struct sk_buff const *ldv_func_arg1 , int ldv_func_arg2 ,
                                       int ldv_func_arg3 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy_expand(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_register_netdev_35(struct net_device *dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_5 = 1;
  ldv_net_device_ops_5();
  return (ldv_func_res);
}
}
void ldv_free_netdev_36(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_5 = 0;
  return;
}
}
void ldv_unregister_netdev_37(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_5 = 0;
  return;
}
}
void ldv_free_netdev_38(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_5 = 0;
  return;
}
}
int ldv_del_timer_39(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_40(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_41(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_42(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_1(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_43(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_44(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_45(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_46(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_47(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_48(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___12 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_49(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___13 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_50(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___14 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_51(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___15 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_52(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___16 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static void ldv_error(void);
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  return;
}
}
extern struct page___0 *ldv_some_page(void) ;
struct page___0 *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page___0 *tmp ;
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin == 0) {
  } else {
    ldv_error();
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
  if (is_lock) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void *external_alloc(void);
struct sk_buff *__alloc_skb(unsigned int arg0, gfp_t arg1, int arg2, int arg3) {
  return (struct sk_buff *)external_alloc();
}
void __copy_from_user_overflow() {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __module_get(struct module *arg0) {
  return;
}
void *external_alloc(void);
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return (struct sk_buff *)external_alloc();
}
void __netif_schedule(struct Qdisc *arg0) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
void *external_alloc(void);
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return (struct net_device *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void deregister_atm_ioctl(struct atm_ioctl *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_set_mtu(struct net_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
void free_netdev(struct net_device *arg0) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void kfree_skb(struct sk_buff *arg0) {
  return;
}
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
void *external_alloc(void);
void *kmemdup(const void *arg0, size_t arg1, gfp_t arg2) {
  return (void *)external_alloc();
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_init_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_uninit_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_open_6() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct page___0 *ldv_some_page() {
  return (struct page___0 *)external_alloc();
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
void module_put(struct module *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_rx(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct proc_dir_entry *proc_create_data(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2, const struct file_operations *arg3, void *arg4) {
  return (struct proc_dir_entry *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int pskb_expand_head(struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
void register_atm_ioctl(struct atm_ioctl *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void remove_proc_entry(const char *arg0, struct proc_dir_entry *arg1) {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_open_private(struct file *arg0, const struct seq_operations *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_putc(struct seq_file *arg0, char arg1) {
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
int seq_release_private(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct sk_buff *skb_clone(struct sk_buff *arg0, gfp_t arg1) {
  return (struct sk_buff *)external_alloc();
}
void *external_alloc(void);
struct sk_buff *skb_copy(const struct sk_buff *arg0, gfp_t arg1) {
  return (struct sk_buff *)external_alloc();
}
void *external_alloc(void);
struct sk_buff *skb_copy_expand(const struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return (struct sk_buff *)external_alloc();
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
void skb_queue_purge(struct sk_buff_head *arg0) {
  return;
}
void skb_queue_tail(struct sk_buff_head *arg0, struct sk_buff *arg1) {
  return;
}
void *external_alloc(void);
struct sk_buff *skb_realloc_headroom(struct sk_buff *arg0, unsigned int arg1) {
  return (struct sk_buff *)external_alloc();
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void vcc_insert_socket(struct sock *arg0) {
  return;
}
void vcc_release_async(struct atm_vcc *arg0, int arg1) {
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
