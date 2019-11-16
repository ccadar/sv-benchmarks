typedef signed char __s8;
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
struct device;
struct usb_device;
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
struct net_device;
struct file_operations;
struct completion;
struct pid;
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
union __anonunion____missing_field_name_22 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_22 __annonCompField10 ;
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
struct __anonstruct____missing_field_name_27 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_28 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_26 {
   struct __anonstruct____missing_field_name_27 __annonCompField14 ;
   struct __anonstruct____missing_field_name_28 __annonCompField15 ;
};
union __anonunion____missing_field_name_29 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_26 __annonCompField16 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_29 __annonCompField17 ;
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
struct __anonstruct____missing_field_name_33 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_32 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_33 __annonCompField19 ;
};
struct spinlock {
   union __anonunion____missing_field_name_32 __annonCompField20 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_34 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_34 rwlock_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
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
struct vm_area_struct;
struct inode;
struct notifier_block;
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
struct __anonstruct____missing_field_name_38 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_39 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_37 {
   struct __anonstruct____missing_field_name_38 __annonCompField22 ;
   struct __anonstruct____missing_field_name_39 __annonCompField23 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_37 __annonCompField24 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct __anonstruct_mm_context_t_40 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_40 mm_context_t;
struct address_space;
union __anonunion____missing_field_name_41 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_43 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_47 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_46 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_47 __annonCompField27 ;
   int units ;
};
struct __anonstruct____missing_field_name_45 {
   union __anonunion____missing_field_name_46 __annonCompField28 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_44 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_45 __annonCompField29 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_42 {
   union __anonunion____missing_field_name_43 __annonCompField26 ;
   union __anonunion____missing_field_name_44 __annonCompField30 ;
};
struct __anonstruct____missing_field_name_49 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_48 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_49 __annonCompField32 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_50 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_41 __annonCompField25 ;
   struct __anonstruct____missing_field_name_42 __annonCompField31 ;
   union __anonunion____missing_field_name_48 __annonCompField33 ;
   union __anonunion____missing_field_name_50 __annonCompField34 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_52 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_51 {
   struct __anonstruct_linear_52 linear ;
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
   union __anonunion_shared_51 shared ;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
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
enum ldv_11173 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_11173 socket_state;
struct poll_table_struct;
struct pipe_inode_info;
struct net;
struct fasync_struct;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
};
struct sock;
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
struct __anonstruct_nodemask_t_53 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_53 nodemask_t;
struct ctl_table;
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
struct device_node;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct mem_cgroup;
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
union __anonunion_u_145 {
   struct completion *completion ;
   struct kernfs_node *removed_list ;
};
union __anonunion____missing_field_name_146 {
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
   union __anonunion_u_145 u ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_146 __annonCompField46 ;
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
struct __anonstruct_kuid_t_147 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_147 kuid_t;
struct __anonstruct_kgid_t_148 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_148 kgid_t;
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
struct __anonstruct____missing_field_name_150 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_151 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_149 {
   struct __anonstruct____missing_field_name_150 __annonCompField47 ;
   struct __anonstruct____missing_field_name_151 __annonCompField48 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_149 __annonCompField49 ;
};
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
struct __anonstruct____missing_field_name_156 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_155 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_156 __annonCompField51 ;
};
union __anonunion____missing_field_name_157 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion____missing_field_name_158 {
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
   union __anonunion____missing_field_name_155 __annonCompField52 ;
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
   union __anonunion____missing_field_name_157 __annonCompField53 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_158 __annonCompField54 ;
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
struct ieee80211_hdr {
   __le16 frame_control ;
   __le16 duration_id ;
   u8 addr1[6U] ;
   u8 addr2[6U] ;
   u8 addr3[6U] ;
   __le16 seq_ctrl ;
   u8 addr4[6U] ;
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
union __anonunion_data_195 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_195 data ;
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
struct __anonstruct_sync_serial_settings_196 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_196 sync_serial_settings;
struct __anonstruct_te1_settings_197 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_197 te1_settings;
struct __anonstruct_raw_hdlc_proto_198 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_198 raw_hdlc_proto;
struct __anonstruct_fr_proto_199 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_199 fr_proto;
struct __anonstruct_fr_proto_pvc_200 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_200 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_201 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_201 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_202 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_202 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_203 {
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
   union __anonunion_ifs_ifsu_203 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_204 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_205 {
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
   union __anonunion_ifr_ifrn_204 ifr_ifrn ;
   union __anonunion_ifr_ifru_205 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_208 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_207 {
   struct __anonstruct____missing_field_name_208 __annonCompField56 ;
};
struct lockref {
   union __anonunion____missing_field_name_207 __annonCompField57 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_210 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_209 {
   struct __anonstruct____missing_field_name_210 __annonCompField58 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_209 __annonCompField59 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_211 {
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
   union __anonunion_d_u_211 d_u ;
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
struct __anonstruct_kprojid_t_213 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_213 kprojid_t;
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
union __anonunion____missing_field_name_214 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_214 __annonCompField60 ;
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
union __anonunion_arg_216 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_215 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_216 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_215 read_descriptor_t;
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
union __anonunion____missing_field_name_217 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_218 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_219 {
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
   union __anonunion____missing_field_name_217 __annonCompField61 ;
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
   union __anonunion____missing_field_name_218 __annonCompField62 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_219 __annonCompField63 ;
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
union __anonunion_f_u_220 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_220 f_u ;
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
struct __anonstruct_afs_222 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_221 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_222 afs ;
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
   union __anonunion_fl_u_221 fl_u ;
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
struct __anonstruct_sigset_t_223 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_223 sigset_t;
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
struct __anonstruct__kill_225 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_226 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_227 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_228 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_229 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_230 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_231 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_224 {
   int _pad[28U] ;
   struct __anonstruct__kill_225 _kill ;
   struct __anonstruct__timer_226 _timer ;
   struct __anonstruct__rt_227 _rt ;
   struct __anonstruct__sigchld_228 _sigchld ;
   struct __anonstruct__sigfault_229 _sigfault ;
   struct __anonstruct__sigpoll_230 _sigpoll ;
   struct __anonstruct__sigsys_231 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_224 _sifields ;
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
struct __anonstruct____missing_field_name_235 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_234 {
   struct __anonstruct____missing_field_name_235 __annonCompField64 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_234 __annonCompField65 ;
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
union __anonunion____missing_field_name_236 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_237 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_239 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_238 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_239 __annonCompField68 ;
};
union __anonunion_type_data_240 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_242 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_241 {
   union __anonunion_payload_242 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_236 __annonCompField66 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_237 __annonCompField67 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_238 __annonCompField69 ;
   union __anonunion_type_data_240 type_data ;
   union __anonunion____missing_field_name_241 __annonCompField70 ;
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
enum ldv_28345 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_28346 {
    RTNL_LINK_INITIALIZED = 0,
    RTNL_LINK_INITIALIZING = 1
} ;
struct __anonstruct_adj_list_271 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_272 {
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
union __anonunion____missing_field_name_273 {
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
   struct __anonstruct_adj_list_271 adj_list ;
   struct __anonstruct_all_adj_list_272 all_adj_list ;
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
   enum ldv_28345 reg_state : 8 ;
   bool dismantle ;
   enum ldv_28346 rtnl_link_state : 16 ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion____missing_field_name_273 __annonCompField75 ;
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
enum nl80211_channel_type {
    NL80211_CHAN_NO_HT = 0,
    NL80211_CHAN_HT20 = 1,
    NL80211_CHAN_HT40MINUS = 2,
    NL80211_CHAN_HT40PLUS = 3
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
struct __anonstruct_wext_275 {
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
   struct __anonstruct_wext_275 wext ;
};
struct ieee80211_tx_queue_params {
   u16 txop ;
   u16 cw_min ;
   u16 cw_max ;
   u8 aifs ;
   bool acm ;
   bool uapsd ;
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
struct __anonstruct____missing_field_name_279 {
   struct ieee80211_tx_rate rates[4U] ;
   s8 rts_cts_rate_idx ;
   u8 use_rts : 1 ;
   u8 use_cts_prot : 1 ;
   u8 short_preamble : 1 ;
   u8 skip_table : 1 ;
};
union __anonunion____missing_field_name_278 {
   struct __anonstruct____missing_field_name_279 __annonCompField76 ;
   unsigned long jiffies ;
};
struct ieee80211_vif;
struct ieee80211_key_conf;
struct __anonstruct_control_277 {
   union __anonunion____missing_field_name_278 __annonCompField77 ;
   struct ieee80211_vif *vif ;
   struct ieee80211_key_conf *hw_key ;
   u32 flags ;
};
struct __anonstruct_status_280 {
   struct ieee80211_tx_rate rates[4U] ;
   int ack_signal ;
   u8 ampdu_ack_len ;
   u8 ampdu_len ;
   u8 antenna ;
};
struct __anonstruct____missing_field_name_281 {
   struct ieee80211_tx_rate driver_rates[4U] ;
   u8 pad[4U] ;
   void *rate_driver_data[3U] ;
};
union __anonunion____missing_field_name_276 {
   struct __anonstruct_control_277 control ;
   struct __anonstruct_status_280 status ;
   struct __anonstruct____missing_field_name_281 __annonCompField78 ;
   void *driver_data[5U] ;
};
struct ieee80211_tx_info {
   u32 flags ;
   u8 band ;
   u8 hw_queue ;
   u16 ack_frame_id ;
   union __anonunion____missing_field_name_276 __annonCompField79 ;
};
struct ieee80211_rx_status;
struct ieee80211_rx_status {
   u64 mactime ;
   u32 device_timestamp ;
   u32 ampdu_reference ;
   u32 flag ;
   u32 vendor_radiotap_bitmap ;
   u16 vendor_radiotap_len ;
   u16 freq ;
   u8 rate_idx ;
   u8 vht_nss ;
   u8 rx_flags ;
   u8 band ;
   u8 antenna ;
   s8 signal ;
   u8 chains ;
   s8 chain_signal[4U] ;
   u8 ampdu_delimiter_crc ;
   u8 vendor_radiotap_align ;
   u8 vendor_radiotap_oui[3U] ;
   u8 vendor_radiotap_subns ;
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
enum ieee80211_sta_rx_bandwidth {
    IEEE80211_STA_RX_BW_20 = 0,
    IEEE80211_STA_RX_BW_40 = 1,
    IEEE80211_STA_RX_BW_80 = 2,
    IEEE80211_STA_RX_BW_160 = 3
} ;
struct __anonstruct_rate_282 {
   s8 idx ;
   u8 count ;
   u8 count_cts ;
   u8 count_rts ;
   u16 flags ;
};
struct ieee80211_sta_rates {
   struct callback_head callback_head ;
   struct __anonstruct_rate_282 rate[4U] ;
};
struct ieee80211_sta {
   u32 supp_rates[3U] ;
   u8 addr[6U] ;
   u16 aid ;
   struct ieee80211_sta_ht_cap ht_cap ;
   struct ieee80211_sta_vht_cap vht_cap ;
   bool wme ;
   u8 uapsd_queues ;
   u8 max_sp ;
   u8 rx_nss ;
   enum ieee80211_sta_rx_bandwidth bandwidth ;
   enum ieee80211_smps_mode smps_mode ;
   struct ieee80211_sta_rates *rates ;
   u8 drv_priv[0U] ;
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
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
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
   unsigned int sysfs_files_created : 1 ;
   unsigned int ep_devs_created : 1 ;
   unsigned int unregistering : 1 ;
   unsigned int needs_remote_wakeup : 1 ;
   unsigned int needs_altsetting0 : 1 ;
   unsigned int needs_binding : 1 ;
   unsigned int reset_running : 1 ;
   unsigned int resetting_device : 1 ;
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
   unsigned int is_b_host : 1 ;
   unsigned int b_hnp_enable : 1 ;
   unsigned int no_stop_on_short : 1 ;
   unsigned int no_sg_constraint : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
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
   unsigned int can_submit : 1 ;
   unsigned int persist_enabled : 1 ;
   unsigned int have_langid : 1 ;
   unsigned int authorized : 1 ;
   unsigned int authenticated : 1 ;
   unsigned int wusb : 1 ;
   unsigned int lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_besl_capable : 1 ;
   unsigned int usb2_hw_lpm_enabled : 1 ;
   unsigned int usb2_hw_lpm_allowed : 1 ;
   unsigned int usb3_lpm_enabled : 1 ;
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
   unsigned int do_remote_wakeup : 1 ;
   unsigned int reset_resume : 1 ;
   unsigned int port_is_suspended : 1 ;
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
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   atomic_t suspend_wakeups ;
   unsigned int poisoned : 1 ;
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
enum intf_type {
    INTF_PCI = 0,
    INTF_USB = 1
} ;
enum radio_path {
    RF90_PATH_A = 0,
    RF90_PATH_B = 1,
    RF90_PATH_C = 2,
    RF90_PATH_D = 3
} ;
enum rf_pwrstate {
    ERFON = 0,
    ERFSLEEP = 1,
    ERFOFF = 2
} ;
struct bb_reg_def {
   u32 rfintfs ;
   u32 rfintfi ;
   u32 rfintfo ;
   u32 rfintfe ;
   u32 rf3wire_offset ;
   u32 rflssi_select ;
   u32 rftxgain_stage ;
   u32 rfhssi_para1 ;
   u32 rfhssi_para2 ;
   u32 rfsw_ctrl ;
   u32 rfagc_control1 ;
   u32 rfagc_control2 ;
   u32 rfrxiq_imbal ;
   u32 rfrx_afe ;
   u32 rftxiq_imbal ;
   u32 rftx_afe ;
   u32 rf_rb ;
   u32 rf_rbpi ;
};
enum io_type {
    IO_CMD_PAUSE_DM_BY_SCAN = 0,
    IO_CMD_RESUME_DM_BY_SCAN = 1
} ;
enum rt_enc_alg {
    NO_ENCRYPTION = 0,
    WEP40_ENCRYPTION = 1,
    TKIP_ENCRYPTION = 2,
    RSERVED_ENCRYPTION = 3,
    AESCCMP_ENCRYPTION = 4,
    WEP104_ENCRYPTION = 5,
    AESCMAC_ENCRYPTION = 6
} ;
enum rt_psmode {
    EACTIVE = 0,
    EMAXPS = 1,
    EFASTPS = 2,
    EAUTOPS = 3
} ;
enum led_ctl_mode {
    LED_CTL_POWER_ON = 1,
    LED_CTL_LINK = 2,
    LED_CTL_NO_LINK = 3,
    LED_CTL_TX = 4,
    LED_CTL_RX = 5,
    LED_CTL_SITE_SURVEY = 6,
    LED_CTL_POWER_OFF = 7,
    LED_CTL_START_TO_LINK = 8,
    LED_CTL_START_WPS = 9,
    LED_CTL_STOP_WPS = 10
} ;
enum macphy_mode {
    SINGLEMAC_SINGLEPHY = 0,
    DUALMAC_DUALPHY = 1,
    DUALMAC_SINGLEPHY = 2
} ;
enum band_type {
    BAND_ON_2_4G = 0,
    BAND_ON_5G = 1,
    BAND_ON_BOTH = 2,
    BANDMAX = 3
} ;
enum rtl_link_state {
    MAC80211_NOLINK = 0,
    MAC80211_LINKING = 1,
    MAC80211_LINKED = 2,
    MAC80211_LINKED_SCANNING = 3
} ;
enum rt_polarity_ctl {
    RT_POLARITY_LOW_ACT = 0,
    RT_POLARITY_HIGH_ACT = 1
} ;
struct rtl_qos_parameters {
   __le16 cw_min ;
   __le16 cw_max ;
   u8 aifs ;
   u8 flag ;
   __le16 tx_op ;
};
struct rt_smooth_data {
   u32 elements[100U] ;
   u32 index ;
   u32 total_num ;
   u32 total_val ;
};
struct false_alarm_statistics {
   u32 cnt_parity_fail ;
   u32 cnt_rate_illegal ;
   u32 cnt_crc8_fail ;
   u32 cnt_mcs_fail ;
   u32 cnt_fast_fsync_fail ;
   u32 cnt_sb_search_fail ;
   u32 cnt_ofdm_fail ;
   u32 cnt_cck_fail ;
   u32 cnt_all ;
   u32 cnt_ofdm_cca ;
   u32 cnt_cck_cca ;
   u32 cnt_cca_all ;
   u32 cnt_bw_usc ;
   u32 cnt_bw_lsc ;
};
struct init_gain {
   u8 xaagccore1 ;
   u8 xbagccore1 ;
   u8 xcagccore1 ;
   u8 xdagccore1 ;
   u8 cca ;
};
struct wireless_stats {
   unsigned long txbytesunicast ;
   unsigned long txbytesmulticast ;
   unsigned long txbytesbroadcast ;
   unsigned long rxbytesunicast ;
   long rx_snr_db[4U] ;
   long recv_signal_power ;
   long signal_quality ;
   long last_sigstrength_inpercent ;
   u32 rssi_calculate_cnt ;
   long signal_strength ;
   u8 rx_rssi_percentage[4U] ;
   u8 rx_evm_percentage[2U] ;
   struct rt_smooth_data ui_rssi ;
   struct rt_smooth_data ui_link_quality ;
};
struct rate_adaptive {
   u8 rate_adaptive_disabled ;
   u8 ratr_state ;
   u16 reserve ;
   u32 high_rssi_thresh_for_ra ;
   u32 high2low_rssi_thresh_for_ra ;
   u8 low2high_rssi_thresh_for_ra40m ;
   u32 low_rssi_thresh_for_ra40M ;
   u8 low2high_rssi_thresh_for_ra20m ;
   u32 low_rssi_thresh_for_ra20M ;
   u32 upper_rssi_threshold_ratr ;
   u32 middleupper_rssi_threshold_ratr ;
   u32 middle_rssi_threshold_ratr ;
   u32 middlelow_rssi_threshold_ratr ;
   u32 low_rssi_threshold_ratr ;
   u32 ultralow_rssi_threshold_ratr ;
   u32 low_rssi_threshold_ratr_40m ;
   u32 low_rssi_threshold_ratr_20m ;
   u8 ping_rssi_enable ;
   u32 ping_rssi_ratr ;
   u32 ping_rssi_thresh_for_ra ;
   u32 last_ratr ;
   u8 pre_ratr_state ;
};
struct regd_pair_mapping {
   u16 reg_dmnenum ;
   u16 reg_5ghz_ctl ;
   u16 reg_2ghz_ctl ;
};
struct rtl_regulatory {
   char alpha2[2U] ;
   u16 country_code ;
   u16 max_power_level ;
   u32 tp_scale ;
   u16 current_rd ;
   u16 current_rd_ext ;
   int16_t power_limit ;
   struct regd_pair_mapping *regpair ;
};
struct rtl_rfkill {
   bool rfkill_state ;
};
enum p2p_ps_state {
    P2P_PS_DISABLE = 0,
    P2P_PS_ENABLE = 1,
    P2P_PS_SCAN = 2,
    P2P_PS_SCAN_DONE = 3,
    P2P_PS_ALLSTASLEEP = 4
} ;
enum p2p_ps_mode {
    P2P_PS_NONE = 0,
    P2P_PS_CTWINDOW = 1,
    P2P_PS_NOA = 2,
    P2P_PS_MIX = 3
} ;
struct rtl_p2p_ps_info {
   enum p2p_ps_mode p2p_ps_mode ;
   enum p2p_ps_state p2p_ps_state ;
   u8 noa_index ;
   u8 ctwindow ;
   u8 opp_ps ;
   u8 noa_num ;
   u8 noa_count_type[2U] ;
   u32 noa_duration[2U] ;
   u32 noa_interval[2U] ;
   u32 noa_start_time[2U] ;
};
struct p2p_ps_offload_t {
   u8 offload_en : 1 ;
   u8 role : 1 ;
   u8 ctwindow_en : 1 ;
   u8 noa0_en : 1 ;
   u8 noa1_en : 1 ;
   u8 allstasleep : 1 ;
   u8 discovery : 1 ;
   u8 reserved : 1 ;
};
struct iqk_matrix_regs {
   bool iqk_done ;
   long value[1U][8U] ;
};
struct phy_parameters {
   u16 length ;
   u32 *pdata ;
};
struct rtl_phy {
   struct bb_reg_def phyreg_def[4U] ;
   struct init_gain initgain_backup ;
   enum io_type current_io_type ;
   u8 rf_mode ;
   u8 rf_type ;
   u8 current_chan_bw ;
   u8 set_bwmode_inprogress ;
   u8 sw_chnl_inprogress ;
   u8 sw_chnl_stage ;
   u8 sw_chnl_step ;
   u8 current_channel ;
   u8 h2c_box_num ;
   u8 set_io_inprogress ;
   u8 lck_inprogress ;
   s32 reg_e94 ;
   s32 reg_e9c ;
   s32 reg_ea4 ;
   s32 reg_eac ;
   s32 reg_eb4 ;
   s32 reg_ebc ;
   s32 reg_ec4 ;
   s32 reg_ecc ;
   u8 rfpienable ;
   u8 reserve_0 ;
   u16 reserve_1 ;
   u32 reg_c04 ;
   u32 reg_c08 ;
   u32 reg_874 ;
   u32 adda_backup[16U] ;
   u32 iqk_mac_backup[4U] ;
   u32 iqk_bb_backup[10U] ;
   bool iqk_initialized ;
   bool need_iqk ;
   struct iqk_matrix_regs iqk_matrix[46U] ;
   bool rfpi_enable ;
   u8 pwrgroup_cnt ;
   u8 cck_high_power ;
   u32 mcs_offset[13U][16U] ;
   u8 default_initialgain[4U] ;
   u8 cur_cck_txpwridx ;
   u8 cur_ofdm24g_txpwridx ;
   u8 cur_bw20_txpwridx ;
   u8 cur_bw40_txpwridx ;
   u32 rfreg_chnlval[2U] ;
   bool apk_done ;
   u32 reg_rf3c[2U] ;
   u8 framesync ;
   u32 framesync_c34 ;
   u8 num_total_rfpath ;
   struct phy_parameters hwparam_tables[10U] ;
   u16 rf_pathmap ;
   enum rt_polarity_ctl polarity_ctl ;
};
struct rtl_ht_agg {
   u16 txq_id ;
   u16 wait_for_ba ;
   u16 start_idx ;
   u64 bitmap ;
   u32 rate_n_flags ;
   u8 agg_state ;
   u8 rx_agg_state ;
};
struct rtl_tid_data {
   u16 seq_number ;
   struct rtl_ht_agg agg ;
};
struct rtl_priv;
struct rtl_io {
   struct device *dev ;
   struct mutex bb_mutex ;
   unsigned long pci_mem_end ;
   unsigned long pci_mem_start ;
   unsigned long pci_base_addr ;
   void (*write8_async)(struct rtl_priv * , u32 , u8 ) ;
   void (*write16_async)(struct rtl_priv * , u32 , u16 ) ;
   void (*write32_async)(struct rtl_priv * , u32 , u32 ) ;
   void (*writeN_sync)(struct rtl_priv * , u32 , void * , u16 ) ;
   u8 (*read8_sync)(struct rtl_priv * , u32 ) ;
   u16 (*read16_sync)(struct rtl_priv * , u32 ) ;
   u32 (*read32_sync)(struct rtl_priv * , u32 ) ;
};
struct rtl_mac {
   u8 mac_addr[6U] ;
   u8 mac80211_registered ;
   u8 beacon_enabled ;
   u32 tx_ss_num ;
   u32 rx_ss_num ;
   struct ieee80211_supported_band bands[3U] ;
   struct ieee80211_hw *hw ;
   struct ieee80211_vif *vif ;
   enum nl80211_iftype opmode ;
   struct rtl_tid_data tids[9U] ;
   enum rtl_link_state link_state ;
   int n_channels ;
   int n_bitrates ;
   bool offchan_delay ;
   u8 p2p ;
   bool p2p_in_use ;
   u32 rx_conf ;
   u16 rx_mgt_filter ;
   u16 rx_ctrl_filter ;
   u16 rx_data_filter ;
   bool act_scanning ;
   u8 cnt_after_linked ;
   bool skip_scan ;
   struct sk_buff_head skb_waitq[9U] ;
   bool rdg_en ;
   u8 bssid[6U] ;
   u32 vendor ;
   u8 mcs[16U] ;
   u32 basic_rates ;
   u8 ht_enable ;
   u8 sgi_40 ;
   u8 sgi_20 ;
   u8 bw_40 ;
   u8 mode ;
   u8 slot_time ;
   u8 short_preamble ;
   u8 use_cts_protect ;
   u8 cur_40_prime_sc ;
   u8 cur_40_prime_sc_bk ;
   u64 tsf ;
   u8 retry_short ;
   u8 retry_long ;
   u16 assoc_id ;
   bool hiddenssid ;
   int beacon_interval ;
   u8 min_space_cfg ;
   u8 max_mss_density ;
   u8 current_ampdu_factor ;
   u8 current_ampdu_density ;
   struct ieee80211_tx_queue_params edca_param[5U] ;
   struct rtl_qos_parameters ac[4U] ;
   u64 last_txok_cnt ;
   u64 last_rxok_cnt ;
   u32 last_bt_edca_ul ;
   u32 last_bt_edca_dl ;
};
struct btdm_8723 {
   bool all_off ;
   bool agc_table_en ;
   bool adc_back_off_on ;
   bool b2_ant_hid_en ;
   bool low_penalty_rate_adaptive ;
   bool rf_rx_lpf_shrink ;
   bool reject_aggre_pkt ;
   bool tra_tdma_on ;
   u8 tra_tdma_nav ;
   u8 tra_tdma_ant ;
   bool tdma_on ;
   u8 tdma_ant ;
   u8 tdma_nav ;
   u8 tdma_dac_swing ;
   u8 fw_dac_swing_lvl ;
   bool ps_tdma_on ;
   u8 ps_tdma_byte[5U] ;
   bool pta_on ;
   u32 val_0x6c0 ;
   u32 val_0x6c8 ;
   u32 val_0x6cc ;
   bool sw_dac_swing_on ;
   u32 sw_dac_swing_lvl ;
   u32 wlan_act_hi ;
   u32 wlan_act_lo ;
   u32 bt_retry_index ;
   bool dec_bt_pwr ;
   bool ignore_wlan_act ;
};
struct bt_coexist_8723 {
   u32 high_priority_tx ;
   u32 high_priority_rx ;
   u32 low_priority_tx ;
   u32 low_priority_rx ;
   u8 c2h_bt_info ;
   bool c2h_bt_info_req_sent ;
   bool c2h_bt_inquiry_page ;
   u32 bt_inq_page_start_time ;
   u8 bt_retry_cnt ;
   u8 c2h_bt_info_original ;
   u8 bt_inquiry_page_cnt ;
   struct btdm_8723 btdm ;
};
struct rtl_hal {
   struct ieee80211_hw *hw ;
   bool driver_is_goingto_unload ;
   bool up_first_time ;
   bool first_init ;
   bool being_init_adapter ;
   bool bbrf_ready ;
   bool mac_func_enable ;
   struct bt_coexist_8723 hal_coex_8723 ;
   enum intf_type interface ;
   u16 hw_type ;
   u8 ic_class ;
   u8 oem_id ;
   u32 version ;
   u8 state ;
   u8 board_type ;
   u32 fwsize ;
   u8 *pfirmware ;
   u16 fw_version ;
   u16 fw_subversion ;
   bool h2c_setinprogress ;
   u8 last_hmeboxnum ;
   bool fw_ready ;
   u8 fw_rsvdpage_startoffset ;
   u8 h2c_txcmd_seq ;
   u16 fwcmd_iomap ;
   u32 fwcmd_ioparam ;
   bool set_fwcmd_inprogress ;
   u8 current_fwcmd_io ;
   struct p2p_ps_offload_t p2p_ps_offload ;
   bool fw_clk_change_in_progress ;
   bool allow_sw_to_change_hwclc ;
   u8 fw_ps_state ;
   bool driver_going2unload ;
   u8 minspace_cfg ;
   enum macphy_mode macphymode ;
   enum band_type current_bandtype ;
   enum band_type current_bandtypebackup ;
   enum band_type bandset ;
   u32 interfaceindex ;
   u8 macphyctl_reg ;
   bool earlymode_enable ;
   u8 max_earlymode_num ;
   bool during_mac0init_radiob ;
   bool during_mac1init_radioa ;
   bool reloadtxpowerindex ;
   bool load_imrandiqk_setting_for2g ;
   bool disable_amsdu_8k ;
   bool master_of_dmsp ;
   bool slave_of_dmsp ;
};
struct rtl_security {
   bool use_sw_sec ;
   bool being_setkey ;
   bool use_defaultkey ;
   enum rt_enc_alg pairwise_enc_algorithm ;
   enum rt_enc_alg group_enc_algorithm ;
   u32 hwsec_cam_bitmap ;
   u8 hwsec_cam_sta_addr[32U][6U] ;
   u8 key_buf[5U][61U] ;
   u8 key_len[5U] ;
   u8 *pairwise_key ;
};
struct fast_ant_training {
   u8 bssid[6U] ;
   u8 antsel_rx_keep_0 ;
   u8 antsel_rx_keep_1 ;
   u8 antsel_rx_keep_2 ;
   u32 ant_sum[7U] ;
   u32 ant_cnt[7U] ;
   u32 ant_ave[7U] ;
   u8 fat_state ;
   u32 train_idx ;
   u8 antsel_a[33U] ;
   u8 antsel_b[33U] ;
   u8 antsel_c[33U] ;
   u32 main_ant_sum[33U] ;
   u32 aux_ant_sum[33U] ;
   u32 main_ant_cnt[33U] ;
   u32 aux_ant_cnt[33U] ;
   u8 rx_idle_ant ;
   bool becomelinked ;
};
struct rtl_dm {
   long entry_min_undec_sm_pwdb ;
   long undec_sm_cck ;
   long undec_sm_pwdb ;
   long entry_max_undec_sm_pwdb ;
   s32 ofdm_pkt_cnt ;
   bool dm_initialgain_enable ;
   bool dynamic_txpower_enable ;
   bool current_turbo_edca ;
   bool is_any_nonbepkts ;
   bool is_cur_rdlstate ;
   bool txpower_trackinginit ;
   bool disable_framebursting ;
   bool cck_inch14 ;
   bool txpower_tracking ;
   bool useramask ;
   bool rfpath_rxenable[4U] ;
   bool inform_fw_driverctrldm ;
   bool current_mrc_switch ;
   u8 txpowercount ;
   u8 powerindex_backup[6U] ;
   u8 thermalvalue_rxgain ;
   u8 thermalvalue_iqk ;
   u8 thermalvalue_lck ;
   u8 thermalvalue ;
   u8 last_dtp_lvl ;
   u8 thermalvalue_avg[8U] ;
   u8 thermalvalue_avg_index ;
   bool done_txpower ;
   u8 dynamic_txhighpower_lvl ;
   u8 dm_flag ;
   u8 dm_flag_tmp ;
   u8 dm_type ;
   u8 dm_rssi_sel ;
   u8 txpower_track_control ;
   bool interrupt_migration ;
   bool disable_tx_int ;
   char ofdm_index[2U] ;
   char cck_index ;
   char delta_power_index ;
   char delta_power_index_last ;
   char power_index_offset ;
   u8 swing_idx_ofdm[2U] ;
   u8 swing_idx_ofdm_cur ;
   u8 swing_idx_ofdm_base ;
   bool swing_flag_ofdm ;
   u8 swing_idx_cck ;
   u8 swing_idx_cck_cur ;
   u8 swing_idx_cck_base ;
   bool swing_flag_cck ;
   bool supp_phymode_switch ;
   struct fast_ant_training fat_table ;
};
struct rtl_efuse {
   bool autoLoad_ok ;
   bool bootfromefuse ;
   u16 max_physical_size ;
   u8 efuse_map[2U][256U] ;
   u16 efuse_usedbytes ;
   u8 efuse_usedpercentage ;
   u8 autoload_failflag ;
   u8 autoload_status ;
   short epromtype ;
   u16 eeprom_vid ;
   u16 eeprom_did ;
   u16 eeprom_svid ;
   u16 eeprom_smid ;
   u8 eeprom_oemid ;
   u16 eeprom_channelplan ;
   u8 eeprom_version ;
   u8 board_type ;
   u8 external_pa ;
   u8 dev_addr[6U] ;
   u8 wowlan_enable ;
   u8 antenna_div_cfg ;
   u8 antenna_div_type ;
   bool txpwr_fromeprom ;
   u8 eeprom_crystalcap ;
   u8 eeprom_tssi[2U] ;
   u8 eeprom_tssi_5g[3U][2U] ;
   u8 eeprom_pwrlimit_ht20[12U] ;
   u8 eeprom_pwrlimit_ht40[12U] ;
   u8 eeprom_chnlarea_txpwr_cck[2U][3U] ;
   u8 eeprom_chnlarea_txpwr_ht40_1s[2U][12U] ;
   u8 eprom_chnl_txpwr_ht40_2sdf[2U][12U] ;
   u8 txpwrlevel_cck[2U][14U] ;
   u8 txpwrlevel_ht40_1s[2U][59U] ;
   u8 txpwrlevel_ht40_2s[2U][59U] ;
   u8 internal_pa_5g[2U] ;
   u8 eeprom_c9 ;
   u8 eeprom_cc ;
   u8 eeprom_pwrgroup[2U][3U] ;
   u8 pwrgroup_ht20[2U][59U] ;
   u8 pwrgroup_ht40[2U][59U] ;
   char txpwr_ht20diff[2U][59U] ;
   u8 txpwr_legacyhtdiff[2U][59U] ;
   u8 txpwr_safetyflag ;
   u16 eeprom_txpowerdiff ;
   u8 legacy_httxpowerdiff ;
   u8 antenna_txpwdiff[3U] ;
   u8 eeprom_regulatory ;
   u8 eeprom_thermalmeter ;
   u8 thermalmeter[2U] ;
   u16 tssi_13dbm ;
   u8 crystalcap ;
   u8 delta_iqk ;
   u8 delta_lck ;
   u8 legacy_ht_txpowerdiff ;
   bool apk_thermalmeterignore ;
   bool b1x1_recvcombine ;
   bool b1ss_support ;
   u8 channel_plan ;
};
struct rtl_ps_ctl {
   bool pwrdomain_protect ;
   bool in_powersavemode ;
   bool rfchange_inprogress ;
   bool swrf_processing ;
   bool hwradiooff ;
   bool support_aspm ;
   bool support_backdoor ;
   enum rt_psmode dot11_psmode ;
   bool swctrl_lps ;
   bool leisure_ps ;
   bool fwctrl_lps ;
   u8 fwctrl_psmode ;
   u8 reg_fwctrl_lps ;
   bool fw_current_inpsmode ;
   u8 reg_max_lps_awakeintvl ;
   bool report_linked ;
   bool low_power_enable ;
   bool inactiveps ;
   u32 rfoff_reason ;
   u32 cur_ps_level ;
   u32 reg_rfps_level ;
   u8 const_amdpci_aspm ;
   bool pwrdown_mode ;
   enum rf_pwrstate inactive_pwrstate ;
   enum rf_pwrstate rfpwr_state ;
   bool sw_ps_enabled ;
   bool state ;
   bool state_inap ;
   bool multi_buffered ;
   u16 nullfunc_seq ;
   unsigned int dtim_counter ;
   unsigned int sleep_ms ;
   unsigned long last_sleep_jiffies ;
   unsigned long last_awake_jiffies ;
   unsigned long last_delaylps_stamp_jiffies ;
   unsigned long last_dtim ;
   unsigned long last_beacon ;
   unsigned long last_action ;
   unsigned long last_slept ;
   struct rtl_p2p_ps_info p2p_ps_info ;
   u8 pwr_mode ;
   u8 smart_ps ;
};
struct rtl_stats {
   u8 psaddr[6U] ;
   u32 mac_time[2U] ;
   s8 rssi ;
   u8 signal ;
   u8 noise ;
   u8 rate ;
   u8 received_channel ;
   u8 control ;
   u8 mask ;
   u8 freq ;
   u16 len ;
   u64 tsf ;
   u32 beacon_time ;
   u8 nic_type ;
   u16 length ;
   u8 signalquality ;
   s32 recvsignalpower ;
   s8 rxpower ;
   u8 signalstrength ;
   u16 hwerror : 1 ;
   u16 crc : 1 ;
   u16 icv : 1 ;
   u16 shortpreamble : 1 ;
   u16 antenna : 1 ;
   u16 decrypted : 1 ;
   u16 wakeup : 1 ;
   u32 timestamp_low ;
   u32 timestamp_high ;
   u8 rx_drvinfo_size ;
   u8 rx_bufshift ;
   bool isampdu ;
   bool isfirst_ampdu ;
   bool rx_is40Mhzpacket ;
   u32 rx_pwdb_all ;
   u8 rx_mimo_signalstrength[4U] ;
   s8 rx_mimo_sig_qual[2U] ;
   bool packet_matchbssid ;
   bool is_cck ;
   bool is_ht ;
   bool packet_toself ;
   bool packet_beacon ;
   char cck_adc_pwdb[4U] ;
   u8 packet_report_type ;
   u32 macid ;
   u8 wake_match ;
   u32 bt_rx_rssi_percentage ;
   u32 macid_valid_entry[2U] ;
};
struct rt_link_detect {
   u32 bcn_rx_inperiod ;
   u32 roam_times ;
   u32 num_tx_in4period[4U] ;
   u32 num_rx_in4period[4U] ;
   u32 num_tx_inperiod ;
   u32 num_rx_inperiod ;
   bool busytraffic ;
   bool tx_busy_traffic ;
   bool rx_busy_traffic ;
   bool higher_busytraffic ;
   bool higher_busyrxtraffic ;
   u32 tidtx_in4period[9U][4U] ;
   u32 tidtx_inperiod[9U] ;
   bool higher_busytxtraffic[9U] ;
};
struct rtl_tcb_desc {
   u8 packet_bw : 1 ;
   u8 multicast : 1 ;
   u8 broadcast : 1 ;
   u8 rts_stbc : 1 ;
   u8 rts_enable : 1 ;
   u8 cts_enable : 1 ;
   u8 rts_use_shortpreamble : 1 ;
   u8 rts_use_shortgi : 1 ;
   u8 rts_sc : 1 ;
   u8 rts_bw : 1 ;
   u8 rts_rate ;
   u8 use_shortgi : 1 ;
   u8 use_shortpreamble : 1 ;
   u8 use_driver_rate : 1 ;
   u8 disable_ratefallback : 1 ;
   u8 ratr_index ;
   u8 mac_id ;
   u8 hw_rate ;
   u8 last_inipkt : 1 ;
   u8 cmd_or_init : 1 ;
   u8 queue_index ;
   u8 empkt_num ;
   u32 empkt_len[10U] ;
   bool btx_enable_sw_calc_duration ;
};
struct rtl_hal_ops {
   int (*init_sw_vars)(struct ieee80211_hw * ) ;
   void (*deinit_sw_vars)(struct ieee80211_hw * ) ;
   void (*read_chip_version)(struct ieee80211_hw * ) ;
   void (*read_eeprom_info)(struct ieee80211_hw * ) ;
   void (*interrupt_recognized)(struct ieee80211_hw * , u32 * , u32 * ) ;
   int (*hw_init)(struct ieee80211_hw * ) ;
   void (*hw_disable)(struct ieee80211_hw * ) ;
   void (*hw_suspend)(struct ieee80211_hw * ) ;
   void (*hw_resume)(struct ieee80211_hw * ) ;
   void (*enable_interrupt)(struct ieee80211_hw * ) ;
   void (*disable_interrupt)(struct ieee80211_hw * ) ;
   int (*set_network_type)(struct ieee80211_hw * , enum nl80211_iftype ) ;
   void (*set_chk_bssid)(struct ieee80211_hw * , bool ) ;
   void (*set_bw_mode)(struct ieee80211_hw * , enum nl80211_channel_type ) ;
   u8 (*switch_channel)(struct ieee80211_hw * ) ;
   void (*set_qos)(struct ieee80211_hw * , int ) ;
   void (*set_bcn_reg)(struct ieee80211_hw * ) ;
   void (*set_bcn_intv)(struct ieee80211_hw * ) ;
   void (*update_interrupt_mask)(struct ieee80211_hw * , u32 , u32 ) ;
   void (*get_hw_reg)(struct ieee80211_hw * , u8 , u8 * ) ;
   void (*set_hw_reg)(struct ieee80211_hw * , u8 , u8 * ) ;
   void (*update_rate_tbl)(struct ieee80211_hw * , struct ieee80211_sta * , u8 ) ;
   void (*update_rate_mask)(struct ieee80211_hw * , u8 ) ;
   void (*fill_tx_desc)(struct ieee80211_hw * , struct ieee80211_hdr * , u8 * , struct ieee80211_tx_info * ,
                        struct ieee80211_sta * , struct sk_buff * , u8 , struct rtl_tcb_desc * ) ;
   void (*fill_fake_txdesc)(struct ieee80211_hw * , u8 * , u32 , bool ) ;
   void (*fill_tx_cmddesc)(struct ieee80211_hw * , u8 * , bool , bool , struct sk_buff * ) ;
   bool (*cmd_send_packet)(struct ieee80211_hw * , struct sk_buff * ) ;
   bool (*query_rx_desc)(struct ieee80211_hw * , struct rtl_stats * , struct ieee80211_rx_status * ,
                         u8 * , struct sk_buff * ) ;
   void (*set_channel_access)(struct ieee80211_hw * ) ;
   bool (*radio_onoff_checking)(struct ieee80211_hw * , u8 * ) ;
   void (*dm_watchdog)(struct ieee80211_hw * ) ;
   void (*scan_operation_backup)(struct ieee80211_hw * , u8 ) ;
   bool (*set_rf_power_state)(struct ieee80211_hw * , enum rf_pwrstate ) ;
   void (*led_control)(struct ieee80211_hw * , enum led_ctl_mode ) ;
   void (*set_desc)(u8 * , bool , u8 , u8 * ) ;
   u32 (*get_desc)(u8 * , bool , u8 ) ;
   void (*tx_polling)(struct ieee80211_hw * , u8 ) ;
   void (*enable_hw_sec)(struct ieee80211_hw * ) ;
   void (*set_key)(struct ieee80211_hw * , u32 , u8 * , bool , u8 , bool , bool ) ;
   void (*init_sw_leds)(struct ieee80211_hw * ) ;
   void (*deinit_sw_leds)(struct ieee80211_hw * ) ;
   u32 (*get_bbreg)(struct ieee80211_hw * , u32 , u32 ) ;
   void (*set_bbreg)(struct ieee80211_hw * , u32 , u32 , u32 ) ;
   u32 (*get_rfreg)(struct ieee80211_hw * , enum radio_path , u32 , u32 ) ;
   void (*set_rfreg)(struct ieee80211_hw * , enum radio_path , u32 , u32 , u32 ) ;
   void (*allow_all_destaddr)(struct ieee80211_hw * , bool , bool ) ;
   void (*linked_set_reg)(struct ieee80211_hw * ) ;
   void (*chk_switch_dmdp)(struct ieee80211_hw * ) ;
   void (*dualmac_easy_concurrent)(struct ieee80211_hw * ) ;
   void (*dualmac_switch_to_dmdp)(struct ieee80211_hw * ) ;
   bool (*phy_rf6052_config)(struct ieee80211_hw * ) ;
   void (*phy_rf6052_set_cck_txpower)(struct ieee80211_hw * , u8 * ) ;
   void (*phy_rf6052_set_ofdm_txpower)(struct ieee80211_hw * , u8 * , u8 ) ;
   bool (*config_bb_with_headerfile)(struct ieee80211_hw * , u8 ) ;
   bool (*config_bb_with_pgheaderfile)(struct ieee80211_hw * , u8 ) ;
   void (*phy_lc_calibrate)(struct ieee80211_hw * , bool ) ;
   void (*phy_set_bw_mode_callback)(struct ieee80211_hw * ) ;
   void (*dm_dynamic_txpower)(struct ieee80211_hw * ) ;
   void (*c2h_command_handle)(struct ieee80211_hw * ) ;
   void (*bt_wifi_media_status_notify)(struct ieee80211_hw * , bool ) ;
   void (*bt_coex_off_before_lps)(struct ieee80211_hw * ) ;
   void (*fill_h2c_cmd)(struct ieee80211_hw * , u8 , u32 , u8 * ) ;
};
struct rtl_intf_ops {
   void (*read_efuse_byte)(struct ieee80211_hw * , u16 , u8 * ) ;
   int (*adapter_start)(struct ieee80211_hw * ) ;
   void (*adapter_stop)(struct ieee80211_hw * ) ;
   bool (*check_buddy_priv)(struct ieee80211_hw * , struct rtl_priv ** ) ;
   int (*adapter_tx)(struct ieee80211_hw * , struct ieee80211_sta * , struct sk_buff * ,
                     struct rtl_tcb_desc * ) ;
   void (*flush)(struct ieee80211_hw * , bool ) ;
   int (*reset_trx_ring)(struct ieee80211_hw * ) ;
   bool (*waitq_insert)(struct ieee80211_hw * , struct ieee80211_sta * , struct sk_buff * ) ;
   void (*disable_aspm)(struct ieee80211_hw * ) ;
   void (*enable_aspm)(struct ieee80211_hw * ) ;
};
struct rtl_mod_params {
   bool sw_crypto ;
   int debug ;
   bool inactiveps ;
   bool swctrl_lps ;
   bool fwctrl_lps ;
};
struct rtl_hal_usbint_cfg {
   u32 in_ep_num ;
   u32 rx_urb_num ;
   u32 rx_max_size ;
   void (*usb_rx_hdl)(struct ieee80211_hw * , struct sk_buff * ) ;
   void (*usb_rx_segregate_hdl)(struct ieee80211_hw * , struct sk_buff * , struct sk_buff_head * ) ;
   void (*usb_tx_cleanup)(struct ieee80211_hw * , struct sk_buff * ) ;
   int (*usb_tx_post_hdl)(struct ieee80211_hw * , struct urb * , struct sk_buff * ) ;
   struct sk_buff *(*usb_tx_aggregate_hdl)(struct ieee80211_hw * , struct sk_buff_head * ) ;
   int (*usb_endpoint_mapping)(struct ieee80211_hw * ) ;
   u16 (*usb_mq_to_hwq)(__le16 , u16 ) ;
};
struct rtl_hal_cfg {
   u8 bar_id ;
   bool write_readback ;
   char *name ;
   char *fw_name ;
   char *alt_fw_name ;
   struct rtl_hal_ops *ops ;
   struct rtl_mod_params *mod_params ;
   struct rtl_hal_usbint_cfg *usb_interface_cfg ;
   u32 maps[80U] ;
};
struct rtl_locks {
   struct mutex conf_mutex ;
   struct mutex ps_mutex ;
   spinlock_t ips_lock ;
   spinlock_t irq_th_lock ;
   spinlock_t irq_pci_lock ;
   spinlock_t tx_lock ;
   spinlock_t h2c_lock ;
   spinlock_t rf_ps_lock ;
   spinlock_t rf_lock ;
   spinlock_t lps_lock ;
   spinlock_t waitq_lock ;
   spinlock_t entry_list_lock ;
   spinlock_t usb_lock ;
   spinlock_t fw_ps_lock ;
   spinlock_t cck_and_rw_pagea_lock ;
   spinlock_t check_sendpkt_lock ;
};
struct rtl_works {
   struct ieee80211_hw *hw ;
   struct timer_list watchdog_timer ;
   struct timer_list dualmac_easyconcurrent_retrytimer ;
   struct timer_list fw_clockoff_timer ;
   struct timer_list fast_antenna_training_timer ;
   struct tasklet_struct irq_tasklet ;
   struct tasklet_struct irq_prepare_bcn_tasklet ;
   struct workqueue_struct *rtl_wq ;
   struct delayed_work watchdog_wq ;
   struct delayed_work ips_nic_off_wq ;
   struct delayed_work ps_work ;
   struct delayed_work ps_rfon_wq ;
   struct delayed_work fwevt_wq ;
   struct work_struct lps_change_work ;
   struct work_struct fill_h2c_cmd ;
};
struct rtl_debug {
   u32 dbgp_type[19U] ;
   int global_debuglevel ;
   u64 global_debugcomponents ;
   struct proc_dir_entry *proc_dir ;
   char proc_name[20U] ;
};
struct rtl_dualmac_easy_concurrent_ctl {
   enum band_type currentbandtype_backfordmdp ;
   bool close_bbandrf_for_dmsp ;
   bool change_to_dmdp ;
   bool change_to_dmsp ;
   bool switch_in_process ;
};
struct rtl_dmsp_ctl {
   bool activescan_for_slaveofdmsp ;
   bool scan_for_anothermac_fordmsp ;
   bool scan_for_itself_fordmsp ;
   bool writedig_for_anothermacofdmsp ;
   u32 curdigvalue_for_anothermacofdmsp ;
   bool changecckpdstate_for_anothermacofdmsp ;
   u8 curcckpdstate_for_anothermacofdmsp ;
   bool changetxhighpowerlvl_for_anothermacofdmsp ;
   u8 curtxhighlvl_for_anothermacofdmsp ;
   long rssivalmin_for_anothermacofdmsp ;
};
struct ps_t {
   u8 pre_ccastate ;
   u8 cur_ccasate ;
   u8 pre_rfstate ;
   u8 cur_rfstate ;
   long rssi_val_min ;
};
struct dig_t {
   u32 rssi_lowthresh ;
   u32 rssi_highthresh ;
   u32 fa_lowthresh ;
   u32 fa_highthresh ;
   long last_min_undec_pwdb_for_dm ;
   long rssi_highpower_lowthresh ;
   long rssi_highpower_highthresh ;
   u32 recover_cnt ;
   u32 pre_igvalue ;
   u32 cur_igvalue ;
   long rssi_val ;
   u8 dig_enable_flag ;
   u8 dig_ext_port_stage ;
   u8 dig_algorithm ;
   u8 dig_twoport_algorithm ;
   u8 dig_dbgmode ;
   u8 dig_slgorithm_switch ;
   u8 cursta_cstate ;
   u8 presta_cstate ;
   u8 curmultista_cstate ;
   char back_val ;
   char back_range_max ;
   char back_range_min ;
   u8 rx_gain_max ;
   u8 rx_gain_min ;
   u8 min_undec_pwdb_for_dm ;
   u8 rssi_val_min ;
   u8 pre_cck_cca_thres ;
   u8 cur_cck_cca_thres ;
   u8 pre_cck_pd_state ;
   u8 cur_cck_pd_state ;
   u8 pre_cck_fa_state ;
   u8 cur_cck_fa_state ;
   u8 pre_ccastate ;
   u8 cur_ccasate ;
   u8 large_fa_hit ;
   u8 dig_dynamic_min ;
   u8 forbidden_igi ;
   u8 dig_state ;
   u8 dig_highpwrstate ;
   u8 cur_sta_cstate ;
   u8 pre_sta_cstate ;
   u8 cur_ap_cstate ;
   u8 pre_ap_cstate ;
   u8 cur_pd_thstate ;
   u8 pre_pd_thstate ;
   u8 cur_cs_ratiostate ;
   u8 pre_cs_ratiostate ;
   u8 backoff_enable_flag ;
   char backoffval_range_max ;
   char backoffval_range_min ;
   u8 dig_min_0 ;
   u8 dig_min_1 ;
   bool media_connect_0 ;
   bool media_connect_1 ;
   u32 antdiv_rssi_max ;
   u32 rssi_max ;
};
struct rtl_global_var {
   struct list_head glb_priv_list ;
   spinlock_t glb_list_lock ;
};
struct rtl_rate_priv;
struct rtl_priv {
   struct ieee80211_hw *hw ;
   struct completion firmware_loading_complete ;
   struct list_head list ;
   struct rtl_priv *buddy_priv ;
   struct rtl_global_var *glb_var ;
   struct rtl_dualmac_easy_concurrent_ctl easy_concurrent_ctl ;
   struct rtl_dmsp_ctl dmsp_ctl ;
   struct rtl_locks locks ;
   struct rtl_works works ;
   struct rtl_mac mac80211 ;
   struct rtl_hal rtlhal ;
   struct rtl_regulatory regd ;
   struct rtl_rfkill rfkill ;
   struct rtl_io io ;
   struct rtl_phy phy ;
   struct rtl_dm dm ;
   struct rtl_security sec ;
   struct rtl_efuse efuse ;
   struct rtl_ps_ctl psc ;
   struct rate_adaptive ra ;
   struct wireless_stats stats ;
   struct rt_link_detect link_info ;
   struct false_alarm_statistics falsealm_cnt ;
   struct rtl_rate_priv *rate_priv ;
   struct list_head entry_list ;
   struct rtl_debug dbg ;
   int max_fw_size ;
   struct rtl_hal_cfg *cfg ;
   struct rtl_intf_ops *intf_ops ;
   unsigned long status ;
   struct dig_t dm_digtable ;
   struct ps_t dm_pstable ;
   u32 reg_874 ;
   u32 reg_c70 ;
   u32 reg_85c ;
   u32 reg_a74 ;
   bool reg_init ;
   bool bt_operation_on ;
   __le32 *usb_data ;
   int usb_data_index ;
   bool initialized ;
   bool enter_ps ;
   u8 rate_mask[5U] ;
   u8 priv[0U] ;
};
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned int flags : 8 ;
};
enum hrtimer_restart;
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
struct pci_bus;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
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
union __anonunion____missing_field_name_291 {
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
   union __anonunion____missing_field_name_291 __annonCompField81 ;
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
enum rtl_led_pin {
    LED_PIN_GPIO0 = 0,
    LED_PIN_LED0 = 1,
    LED_PIN_LED1 = 2,
    LED_PIN_LED2 = 3
} ;
enum acm_method {
    eAcmWay0_SwAndHw = 0,
    eAcmWay1_HW = 1,
    eAcmWay2_SW = 2
} ;
struct rtl_led {
   void *hw ;
   enum rtl_led_pin ledpin ;
   bool ledon ;
};
struct rtl_led_ctl {
   bool led_opendrain ;
   struct rtl_led sw_led0 ;
   struct rtl_led sw_led1 ;
};
struct bt_coexist_info {
   u8 eeprom_bt_coexist ;
   u8 eeprom_bt_type ;
   u8 eeprom_bt_ant_num ;
   u8 eeprom_bt_ant_isol ;
   u8 eeprom_bt_radio_shared ;
   u8 bt_coexistence ;
   u8 bt_ant_num ;
   u8 bt_coexist_type ;
   u8 bt_state ;
   u8 bt_cur_state ;
   u8 bt_ant_isolation ;
   u8 bt_pape_ctrl ;
   u8 bt_service ;
   u8 bt_radio_shared_type ;
   u8 bt_rfreg_origin_1e ;
   u8 bt_rfreg_origin_1f ;
   u8 bt_rssi_state ;
   u32 ratio_tx ;
   u32 ratio_pri ;
   u32 bt_edca_ul ;
   u32 bt_edca_dl ;
   bool init_set ;
   bool bt_busy_traffic ;
   bool bt_traffic_mode_set ;
   bool bt_non_traffic_mode_set ;
   bool fw_coexist_all_off ;
   bool sw_coexist_all_off ;
   bool hw_coexist_all_off ;
   u32 cstate ;
   u32 previous_state ;
   u32 cstate_h ;
   u32 previous_state_h ;
   u8 bt_pre_rssi_state ;
   u8 bt_pre_rssi_state1 ;
   u8 reg_bt_iso ;
   u8 reg_bt_sco ;
   bool balance_on ;
   u8 bt_active_zero_cnt ;
   bool cur_bt_disabled ;
   bool pre_bt_disabled ;
   u8 bt_profile_case ;
   u8 bt_profile_action ;
   bool bt_busy ;
   bool hold_for_bt_operation ;
   u8 lps_counter ;
};
struct rtl_rx_desc {
   u32 dword[8U] ;
};
struct rtl_tx_desc {
   u32 dword[16U] ;
};
struct rtl8192_tx_ring {
   struct rtl_tx_desc *desc ;
   dma_addr_t dma ;
   unsigned int idx ;
   unsigned int entries ;
   struct sk_buff_head queue ;
};
struct rtl8192_rx_ring {
   struct rtl_rx_desc *desc ;
   dma_addr_t dma ;
   unsigned int idx ;
   struct sk_buff *rx_buf[64U] ;
};
struct rtl_pci {
   struct pci_dev *pdev ;
   bool irq_enabled ;
   bool driver_is_goingto_unload ;
   bool up_first_time ;
   bool first_init ;
   bool being_init_adapter ;
   bool init_ready ;
   struct rtl8192_tx_ring tx_ring[9U] ;
   int txringcount[9U] ;
   u32 transmit_config ;
   struct rtl8192_rx_ring rx_ring[2U] ;
   int rxringcount ;
   u16 rxbuffersize ;
   u32 receive_config ;
   u8 irq_alloc ;
   u32 irq_mask[2U] ;
   u32 sys_irq_mask ;
   u32 reg_bcn_ctrl_val ;
   u8 const_pci_aspm ;
   u8 const_amdpci_aspm ;
   u8 const_hwsw_rfoff_d3 ;
   u8 const_support_pciaspm ;
   u8 const_hostpci_aspm_setting ;
   u8 const_devicepci_aspm_setting ;
   bool support_aspm ;
   bool support_backdoor ;
   enum acm_method acm_method ;
   u16 shortretry_limit ;
   u16 longretry_limit ;
};
struct mp_adapter {
   u8 linkctrl_reg ;
   u8 busnumber ;
   u8 devnumber ;
   u8 funcnumber ;
   u8 pcibridge_busnum ;
   u8 pcibridge_devnum ;
   u8 pcibridge_funcnum ;
   u8 pcibridge_vendor ;
   u16 pcibridge_vendorid ;
   u16 pcibridge_deviceid ;
   u8 num4bytes ;
   u8 pcibridge_pciehdr_offset ;
   u8 pcibridge_linkctrlreg ;
   bool amd_l1_patch ;
};
struct rtl_pci_priv {
   struct rtl_pci dev ;
   struct mp_adapter ndis_adapter ;
   struct rtl_led_ctl ledctl ;
   struct bt_coexist_info bt_coexist ;
};
enum version_8192d {
    VERSION_TEST_CHIP_88C = 0,
    VERSION_TEST_CHIP_92C = 32,
    VERSION_TEST_UMC_CHIP_8723 = 129,
    VERSION_NORMAL_TSMC_CHIP_88C = 8,
    VERSION_NORMAL_TSMC_CHIP_92C = 40,
    VERSION_NORMAL_TSMC_CHIP_92C_1T2R = 24,
    VERSION_NORMAL_UMC_CHIP_88C_A_CUT = 136,
    VERSION_NORMAL_UMC_CHIP_92C_A_CUT = 168,
    VERSION_NORMAL_UMC_CHIP_92C_1T2R_A_CUT = 152,
    VERSION_NORMAL_UMC_CHIP_8723_1T1R_A_CUT = 137,
    VERSION_NORMAL_UMC_CHIP_8723_1T1R_B_CUT = 4233,
    VERSION_NORMAL_UMC_CHIP_88C_B_CUT = 4232,
    VERSION_NORMAL_UMC_CHIP_92C_B_CUT = 4264,
    VERSION_NORMAL_UMC_CHIP_92C_1T2R_B_CUT = 4240,
    VERSION_TEST_CHIP_92D_SINGLEPHY = 34,
    VERSION_TEST_CHIP_92D_DUALPHY = 2,
    VERSION_NORMAL_CHIP_92D_SINGLEPHY = 42,
    VERSION_NORMAL_CHIP_92D_DUALPHY = 10,
    VERSION_NORMAL_CHIP_92D_C_CUT_SINGLEPHY = 8234,
    VERSION_NORMAL_CHIP_92D_C_CUT_DUALPHY = 8202,
    VERSION_NORMAL_CHIP_92D_D_CUT_SINGLEPHY = 12330,
    VERSION_NORMAL_CHIP_92D_D_CUT_DUALPHY = 12298,
    VERSION_NORMAL_CHIP_92D_E_CUT_SINGLEPHY = 16426,
    VERSION_NORMAL_CHIP_92D_E_CUT_DUALPHY = 16394
} ;
enum hrtimer_restart;
struct __anonstruct_f_295 {
   u8 aifsn : 4 ;
   u8 acm : 1 ;
   u8 aci : 2 ;
   u8 reserved : 1 ;
};
union aci_aifsn {
   u8 char_data ;
   struct __anonstruct_f_295 f ;
};
enum wireless_mode {
    WIRELESS_MODE_UNKNOWN = 0,
    WIRELESS_MODE_A = 1,
    WIRELESS_MODE_B = 2,
    WIRELESS_MODE_G = 4,
    WIRELESS_MODE_AUTO = 8,
    WIRELESS_MODE_N_24G = 16,
    WIRELESS_MODE_N_5G = 32
} ;
struct rssi_sta {
   long undec_sm_pwdb ;
   long undec_sm_cck ;
};
struct rtl_sta_info {
   struct list_head list ;
   u8 ratr_index ;
   u8 wireless_mode ;
   u8 mimo_ps ;
   u8 mac_addr[6U] ;
   struct rtl_tid_data tids[9U] ;
   struct rssi_sta rssi_stat ;
};
struct txpower_info {
   u8 cck_index[2U][12U] ;
   u8 ht40_1sindex[2U][12U] ;
   u8 ht40_2sindexdiff[2U][12U] ;
   u8 ht20indexdiff[2U][12U] ;
   u8 ofdmindexdiff[2U][12U] ;
   u8 ht40maxoffset[2U][12U] ;
   u8 ht20maxoffset[2U][12U] ;
   u8 tssi_a[3U] ;
   u8 tssi_b[3U] ;
};
enum hrtimer_restart;
enum hrtimer_restart;
enum swchnlcmd_id {
    CMDID_END = 0,
    CMDID_SET_TXPOWEROWER_LEVEL = 1,
    CMDID_BBREGWRITE10 = 2,
    CMDID_WRITEPORT_ULONG = 3,
    CMDID_WRITEPORT_USHORT = 4,
    CMDID_WRITEPORT_UCHAR = 5,
    CMDID_RF_WRITEREG = 6
} ;
struct swchnlcmd {
   enum swchnlcmd_id cmdid ;
   u32 para1 ;
   u32 para2 ;
   u32 msdelay ;
};
enum rf_content {
    radioa_txt = 0,
    radiob_txt = 1,
    radioc_txt = 2,
    radiod_txt = 3
} ;
enum hrtimer_restart;
typedef short s16;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
typedef void (*ctor_fn_t)(void);
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
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
enum hrtimer_restart;
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct pdev_archdata {
};
enum nl80211_bss_scan_width {
    NL80211_BSS_CHAN_WIDTH_20 = 0,
    NL80211_BSS_CHAN_WIDTH_10 = 1,
    NL80211_BSS_CHAN_WIDTH_5 = 2
} ;
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
struct cfg80211_ssid {
   u8 ssid[32U] ;
   u8 ssid_len ;
};
struct cfg80211_scan_request {
   struct cfg80211_ssid *ssids ;
   int n_ssids ;
   u32 n_channels ;
   enum nl80211_bss_scan_width scan_width ;
   u8 const *ie ;
   size_t ie_len ;
   u32 flags ;
   u32 rates[3U] ;
   struct wireless_dev *wdev ;
   struct wiphy *wiphy ;
   unsigned long scan_start ;
   bool aborted ;
   bool notified ;
   bool no_cck ;
   struct ieee80211_channel *channels[0U] ;
};
struct cfg80211_match_set {
   struct cfg80211_ssid ssid ;
};
struct cfg80211_sched_scan_request {
   struct cfg80211_ssid *ssids ;
   int n_ssids ;
   u32 n_channels ;
   enum nl80211_bss_scan_width scan_width ;
   u32 interval ;
   u8 const *ie ;
   size_t ie_len ;
   u32 flags ;
   struct cfg80211_match_set *match_sets ;
   int n_match_sets ;
   s32 rssi_thold ;
   struct wiphy *wiphy ;
   struct net_device *dev ;
   unsigned long scan_start ;
   struct ieee80211_channel *channels[0U] ;
};
struct __anonstruct_control_274 {
   u32 legacy ;
   u8 ht_mcs[10U] ;
   u16 vht_mcs[8U] ;
};
struct cfg80211_bitrate_mask {
   struct __anonstruct_control_274 control[3U] ;
};
struct cfg80211_gtk_rekey_data {
   u8 kek[16U] ;
   u8 kck[16U] ;
   u8 replay_ctr[8U] ;
};
struct ieee80211_low_level_stats {
   unsigned int dot11ACKFailureCount ;
   unsigned int dot11RTSFailureCount ;
   unsigned int dot11FCSErrorCount ;
   unsigned int dot11RTSSuccessCount ;
};
enum ieee80211_rssi_event {
    RSSI_EVENT_HIGH = 0,
    RSSI_EVENT_LOW = 1
} ;
struct ieee80211_sched_scan_ies {
   u8 *ie[3U] ;
   size_t len[3U] ;
};
struct ieee80211_channel_switch {
   u64 timestamp ;
   bool block_tx ;
   struct cfg80211_chan_def chandef ;
   u8 count ;
};
enum set_key_cmd {
    SET_KEY = 0,
    DISABLE_KEY = 1
} ;
enum ieee80211_sta_state {
    IEEE80211_STA_NOTEXIST = 0,
    IEEE80211_STA_NONE = 1,
    IEEE80211_STA_AUTH = 2,
    IEEE80211_STA_ASSOC = 3,
    IEEE80211_STA_AUTHORIZED = 4
} ;
enum sta_notify_cmd {
    STA_NOTIFY_SLEEP = 0,
    STA_NOTIFY_AWAKE = 1
} ;
struct ieee80211_tx_control {
   struct ieee80211_sta *sta ;
};
enum ieee80211_ampdu_mlme_action {
    IEEE80211_AMPDU_RX_START = 0,
    IEEE80211_AMPDU_RX_STOP = 1,
    IEEE80211_AMPDU_TX_START = 2,
    IEEE80211_AMPDU_TX_STOP_CONT = 3,
    IEEE80211_AMPDU_TX_STOP_FLUSH = 4,
    IEEE80211_AMPDU_TX_STOP_FLUSH_CONT = 5,
    IEEE80211_AMPDU_TX_OPERATIONAL = 6
} ;
enum ieee80211_frame_release_type {
    IEEE80211_FRAME_RELEASE_PSPOLL = 0,
    IEEE80211_FRAME_RELEASE_UAPSD = 1
} ;
enum ieee80211_roc_type {
    IEEE80211_ROC_TYPE_NORMAL = 0,
    IEEE80211_ROC_TYPE_MGMT_TX = 1
} ;
struct ieee80211_ops {
   void (*tx)(struct ieee80211_hw * , struct ieee80211_tx_control * , struct sk_buff * ) ;
   int (*start)(struct ieee80211_hw * ) ;
   void (*stop)(struct ieee80211_hw * ) ;
   int (*suspend)(struct ieee80211_hw * , struct cfg80211_wowlan * ) ;
   int (*resume)(struct ieee80211_hw * ) ;
   void (*set_wakeup)(struct ieee80211_hw * , bool ) ;
   int (*add_interface)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*change_interface)(struct ieee80211_hw * , struct ieee80211_vif * , enum nl80211_iftype ,
                           bool ) ;
   void (*remove_interface)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*config)(struct ieee80211_hw * , u32 ) ;
   void (*bss_info_changed)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_bss_conf * ,
                            u32 ) ;
   int (*start_ap)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*stop_ap)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   u64 (*prepare_multicast)(struct ieee80211_hw * , struct netdev_hw_addr_list * ) ;
   void (*configure_filter)(struct ieee80211_hw * , unsigned int , unsigned int * ,
                            u64 ) ;
   int (*set_tim)(struct ieee80211_hw * , struct ieee80211_sta * , bool ) ;
   int (*set_key)(struct ieee80211_hw * , enum set_key_cmd , struct ieee80211_vif * ,
                  struct ieee80211_sta * , struct ieee80211_key_conf * ) ;
   void (*update_tkip_key)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_key_conf * ,
                           struct ieee80211_sta * , u32 , u16 * ) ;
   void (*set_rekey_data)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_gtk_rekey_data * ) ;
   void (*set_default_unicast_key)(struct ieee80211_hw * , struct ieee80211_vif * ,
                                   int ) ;
   int (*hw_scan)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_scan_request * ) ;
   void (*cancel_hw_scan)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*sched_scan_start)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_sched_scan_request * ,
                           struct ieee80211_sched_scan_ies * ) ;
   void (*sched_scan_stop)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*sw_scan_start)(struct ieee80211_hw * ) ;
   void (*sw_scan_complete)(struct ieee80211_hw * ) ;
   int (*get_stats)(struct ieee80211_hw * , struct ieee80211_low_level_stats * ) ;
   void (*get_tkip_seq)(struct ieee80211_hw * , u8 , u32 * , u16 * ) ;
   int (*set_frag_threshold)(struct ieee80211_hw * , u32 ) ;
   int (*set_rts_threshold)(struct ieee80211_hw * , u32 ) ;
   int (*sta_add)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   int (*sta_remove)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   void (*sta_add_debugfs)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                           struct dentry * ) ;
   void (*sta_remove_debugfs)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                              struct dentry * ) ;
   void (*sta_notify)(struct ieee80211_hw * , struct ieee80211_vif * , enum sta_notify_cmd ,
                      struct ieee80211_sta * ) ;
   int (*sta_state)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                    enum ieee80211_sta_state , enum ieee80211_sta_state ) ;
   void (*sta_pre_rcu_remove)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   void (*sta_rc_update)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                         u32 ) ;
   int (*conf_tx)(struct ieee80211_hw * , struct ieee80211_vif * , u16 , struct ieee80211_tx_queue_params const * ) ;
   u64 (*get_tsf)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*set_tsf)(struct ieee80211_hw * , struct ieee80211_vif * , u64 ) ;
   void (*reset_tsf)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*tx_last_beacon)(struct ieee80211_hw * ) ;
   int (*ampdu_action)(struct ieee80211_hw * , struct ieee80211_vif * , enum ieee80211_ampdu_mlme_action ,
                       struct ieee80211_sta * , u16 , u16 * , u8 ) ;
   int (*get_survey)(struct ieee80211_hw * , int , struct survey_info * ) ;
   void (*rfkill_poll)(struct ieee80211_hw * ) ;
   void (*set_coverage_class)(struct ieee80211_hw * , u8 ) ;
   int (*testmode_cmd)(struct ieee80211_hw * , struct ieee80211_vif * , void * , int ) ;
   int (*testmode_dump)(struct ieee80211_hw * , struct sk_buff * , struct netlink_callback * ,
                        void * , int ) ;
   void (*flush)(struct ieee80211_hw * , u32 , bool ) ;
   void (*channel_switch)(struct ieee80211_hw * , struct ieee80211_channel_switch * ) ;
   int (*napi_poll)(struct ieee80211_hw * , int ) ;
   int (*set_antenna)(struct ieee80211_hw * , u32 , u32 ) ;
   int (*get_antenna)(struct ieee80211_hw * , u32 * , u32 * ) ;
   int (*remain_on_channel)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_channel * ,
                            int , enum ieee80211_roc_type ) ;
   int (*cancel_remain_on_channel)(struct ieee80211_hw * ) ;
   int (*set_ringparam)(struct ieee80211_hw * , u32 , u32 ) ;
   void (*get_ringparam)(struct ieee80211_hw * , u32 * , u32 * , u32 * , u32 * ) ;
   bool (*tx_frames_pending)(struct ieee80211_hw * ) ;
   int (*set_bitrate_mask)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_bitrate_mask const * ) ;
   void (*rssi_callback)(struct ieee80211_hw * , struct ieee80211_vif * , enum ieee80211_rssi_event ) ;
   void (*allow_buffered_frames)(struct ieee80211_hw * , struct ieee80211_sta * ,
                                 u16 , int , enum ieee80211_frame_release_type ,
                                 bool ) ;
   void (*release_buffered_frames)(struct ieee80211_hw * , struct ieee80211_sta * ,
                                   u16 , int , enum ieee80211_frame_release_type ,
                                   bool ) ;
   int (*get_et_sset_count)(struct ieee80211_hw * , struct ieee80211_vif * , int ) ;
   void (*get_et_stats)(struct ieee80211_hw * , struct ieee80211_vif * , struct ethtool_stats * ,
                        u64 * ) ;
   void (*get_et_strings)(struct ieee80211_hw * , struct ieee80211_vif * , u32 ,
                          u8 * ) ;
   int (*get_rssi)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                   s8 * ) ;
   void (*mgd_prepare_tx)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*add_chanctx)(struct ieee80211_hw * , struct ieee80211_chanctx_conf * ) ;
   void (*remove_chanctx)(struct ieee80211_hw * , struct ieee80211_chanctx_conf * ) ;
   void (*change_chanctx)(struct ieee80211_hw * , struct ieee80211_chanctx_conf * ,
                          u32 ) ;
   int (*assign_vif_chanctx)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_chanctx_conf * ) ;
   void (*unassign_vif_chanctx)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_chanctx_conf * ) ;
   void (*restart_complete)(struct ieee80211_hw * ) ;
   void (*ipv6_addr_change)(struct ieee80211_hw * , struct ieee80211_vif * , struct inet6_dev * ) ;
   void (*channel_switch_beacon)(struct ieee80211_hw * , struct ieee80211_vif * ,
                                 struct cfg80211_chan_def * ) ;
   int (*join_ibss)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*leave_ibss)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
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
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
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
union __anonunion____missing_field_name_300 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_300 __annonCompField82 ;
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
typedef int ldv_func_ret_type;
enum hrtimer_restart;
struct phy_sts_cck_8192d {
   u8 adc_pwdb_X[4U] ;
   u8 sq_rpt ;
   u8 cck_agc_rpt ;
};
struct rx_fwinfo_92d {
   u8 gain_trsw[4U] ;
   u8 pwdb_all ;
   u8 cfosho[4U] ;
   u8 cfotail[4U] ;
   char rxevm[2U] ;
   char rxsnr[4U] ;
   u8 pdsnr[2U] ;
   u8 csi_current[2U] ;
   u8 csi_target[2U] ;
   u8 sigevm ;
   u8 max_ex_pwr ;
   u8 ex_intf_flag : 1 ;
   u8 sgi_en : 1 ;
   u8 rxsc : 2 ;
   u8 reserve : 4 ;
};
struct rx_desc_92d {
   u32 length : 14 ;
   u32 crc32 : 1 ;
   u32 icverror : 1 ;
   u32 drv_infosize : 4 ;
   u32 security : 3 ;
   u32 qos : 1 ;
   u32 shift : 2 ;
   u32 phystatus : 1 ;
   u32 swdec : 1 ;
   u32 lastseg : 1 ;
   u32 firstseg : 1 ;
   u32 eor : 1 ;
   u32 own : 1 ;
   u32 macid : 5 ;
   u32 tid : 4 ;
   u32 hwrsvd : 5 ;
   u32 paggr : 1 ;
   u32 faggr : 1 ;
   u32 a1_fit : 4 ;
   u32 a2_fit : 4 ;
   u32 pam : 1 ;
   u32 pwr : 1 ;
   u32 moredata : 1 ;
   u32 morefrag : 1 ;
   u32 type : 2 ;
   u32 mc : 1 ;
   u32 bc : 1 ;
   u32 seq : 12 ;
   u32 frag : 4 ;
   u32 nextpktlen : 14 ;
   u32 nextind : 1 ;
   u32 rsvd : 1 ;
   u32 rxmcs : 6 ;
   u32 rxht : 1 ;
   u32 amsdu : 1 ;
   u32 splcp : 1 ;
   u32 bandwidth : 1 ;
   u32 htc : 1 ;
   u32 tcpchk_rpt : 1 ;
   u32 ipcchk_rpt : 1 ;
   u32 tcpchk_valid : 1 ;
   u32 hwpcerr : 1 ;
   u32 hwpcind : 1 ;
   u32 iv0 : 16 ;
   u32 iv1 ;
   u32 tsfl ;
   u32 bufferaddress ;
   u32 bufferaddress64 ;
};
struct rx_desc_92c;
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
typedef int ldv_map;
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
extern int printk(char const * , ...) ;
extern void __bad_percpu_size(void) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern int __preempt_count ;
__inline static int preempt_count(void)
{
  int pfo_ret__ ;
  {
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
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6038;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6038;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6038;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6038;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6038: ;
  return (pfo_ret__ & 2147483647);
}
}
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField20.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField20.rlock, flags);
  }
  return;
}
}
__inline static u8 rtl_read_byte(struct rtl_priv *rtlpriv , u32 addr )
{
  u8 tmp ;
  {
  {
  tmp = (*(rtlpriv->io.read8_sync))(rtlpriv, addr);
  }
  return (tmp);
}
}
__inline static void rtl_write_byte(struct rtl_priv *rtlpriv , u32 addr , u8 val8 )
{
  {
  {
  (*(rtlpriv->io.write8_async))(rtlpriv, addr, (int )val8);
  }
  if ((int )(rtlpriv->cfg)->write_readback) {
    {
    (*(rtlpriv->io.read8_sync))(rtlpriv, addr);
    }
  } else {
  }
  return;
}
}
__inline static void rtl_write_dword(struct rtl_priv *rtlpriv , u32 addr , u32 val32 )
{
  {
  {
  (*(rtlpriv->io.write32_async))(rtlpriv, addr, val32);
  }
  if ((int )(rtlpriv->cfg)->write_readback) {
    {
    (*(rtlpriv->io.read32_sync))(rtlpriv, addr);
    }
  } else {
  }
  return;
}
}
__inline static u32 rtl_get_bbreg(struct ieee80211_hw *hw , u32 regaddr , u32 bitmask )
{
  struct rtl_priv *rtlpriv ;
  u32 tmp ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp = (*(((rtlpriv->cfg)->ops)->get_bbreg))(hw, regaddr, bitmask);
  }
  return (tmp);
}
}
__inline static void rtl_set_bbreg(struct ieee80211_hw *hw , u32 regaddr , u32 bitmask ,
                                   u32 data )
{
  struct rtl_priv *rtlpriv ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  (*(((rtlpriv->cfg)->ops)->set_bbreg))(hw, regaddr, bitmask, data);
  }
  return;
}
}
__inline static u32 rtl_get_rfreg(struct ieee80211_hw *hw , enum radio_path rfpath ,
                                  u32 regaddr , u32 bitmask )
{
  struct rtl_priv *rtlpriv ;
  u32 tmp ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp = (*(((rtlpriv->cfg)->ops)->get_rfreg))(hw, rfpath, regaddr, bitmask);
  }
  return (tmp);
}
}
__inline static void rtl_set_rfreg(struct ieee80211_hw *hw , enum radio_path rfpath ,
                                   u32 regaddr , u32 bitmask , u32 data )
{
  struct rtl_priv *rtlpriv ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  (*(((rtlpriv->cfg)->ops)->set_rfreg))(hw, rfpath, regaddr, bitmask, data);
  }
  return;
}
}
__inline static void rtl92d_acquire_cckandrw_pagea_ctl(struct ieee80211_hw *hw , unsigned long *flag )
{
  struct rtl_priv *rtlpriv ;
  raw_spinlock_t *tmp ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  if (rtlpriv->rtlhal.interfaceindex == 1U) {
    {
    tmp = spinlock_check(& rtlpriv->locks.cck_and_rw_pagea_lock);
    *flag = _raw_spin_lock_irqsave(tmp);
    }
  } else {
  }
  return;
}
}
__inline static void rtl92d_release_cckandrw_pagea_ctl(struct ieee80211_hw *hw , unsigned long *flag )
{
  struct rtl_priv *rtlpriv ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  if (rtlpriv->rtlhal.interfaceindex == 1U) {
    {
    spin_unlock_irqrestore(& rtlpriv->locks.cck_and_rw_pagea_lock, *flag);
    }
  } else {
  }
  return;
}
}
void rtl92d_phy_set_txpower_level(struct ieee80211_hw *hw , u8 channel ) ;
void rtl92d_phy_lc_calibrate(struct ieee80211_hw *hw ) ;
void rtl92d_phy_ap_calibrate(struct ieee80211_hw *hw , char delta ) ;
void rtl92d_phy_iq_calibrate(struct ieee80211_hw *hw ) ;
void rtl92d_phy_reset_iqk_result(struct ieee80211_hw *hw ) ;
u8 rtl92d_get_rightchnlplace_for_iqk(u8 chnl ) ;
void rtl92d_dm_init(struct ieee80211_hw *hw ) ;
void rtl92d_dm_watchdog(struct ieee80211_hw *hw ) ;
void rtl92d_dm_init_edca_turbo(struct ieee80211_hw *hw ) ;
void rtl92d_dm_write_dig(struct ieee80211_hw *hw ) ;
void rtl92d_dm_check_txpower_tracking_thermal_meter(struct ieee80211_hw *hw ) ;
void rtl92d_dm_init_rate_adaptive_mask(struct ieee80211_hw *hw ) ;
void rtl92d_fill_h2c_cmd(struct ieee80211_hw *hw , u8 element_id , u32 cmd_len , u8 *cmdbuffer ) ;
static u32 const ofdmswing_table[43U] =
  { 2139095550U, 2021655010U, 1908408775U, 1803551150U,
        1698693525U, 1606418815U, 1514144105U, 1430258005U,
        1350566210U, 1275068720U, 1203765535U, 1136656655U,
        1073742080U, 1015021810U, 956301540U, 901775575U,
        851443915U, 805306560U, 759169205U, 717226155U,
        679477410U, 637534360U, 603979920U, 570425480U,
        536871040U, 507510905U, 478150770U, 452984940U,
        427819110U, 402653280U, 381681755U, 360710230U,
        339738705U, 318767180U, 301989960U, 285212740U,
        268435520U, 251658300U, 239075385U, 226492470U,
        213909555U, 201326640U, 188743725U};
static u8 const cckswing_table_ch1ch13[33U][8U] =
  { { 54U, 53U, 46U, 37U,
            28U, 18U, 9U, 4U},
   { 51U, 50U, 43U, 35U,
            26U, 17U, 8U, 4U},
   { 48U, 47U, 41U, 33U,
            25U, 16U, 8U, 3U},
   { 45U, 45U, 39U, 31U,
            24U, 15U, 8U, 3U},
   { 43U, 42U, 37U, 30U,
            22U, 14U, 7U, 3U},
   { 40U, 40U, 34U, 28U,
            21U, 13U, 7U, 3U},
   { 38U, 37U, 33U, 27U,
            20U, 13U, 6U, 3U},
   { 36U, 35U, 31U, 25U,
            19U, 12U, 6U, 3U},
   { 34U, 33U, 29U, 24U,
            17U, 11U, 6U, 2U},
   { 32U, 32U, 27U, 22U,
            17U, 8U, 5U, 2U},
   { 31U, 30U, 26U, 21U,
            16U, 10U, 5U, 2U},
   { 29U, 28U, 24U, 20U,
            15U, 10U, 5U, 2U},
   { 27U, 26U, 23U, 19U,
            14U, 9U, 4U, 2U},
   { 26U, 25U, 22U, 18U,
            13U, 9U, 4U, 2U},
   { 24U, 23U, 21U, 17U,
            12U, 8U, 4U, 2U},
   { 23U, 22U, 19U, 16U,
            12U, 8U, 4U, 2U},
   { 22U, 21U, 18U, 15U,
            11U, 7U, 4U, 1U},
   { 20U, 20U, 17U, 14U,
            11U, 7U, 3U, 2U},
   { 19U, 19U, 16U, 13U,
            10U, 6U, 3U, 1U},
   { 18U, 18U, 15U, 12U,
            9U, 6U, 3U, 1U},
   { 17U, 17U, 15U, 12U,
            9U, 6U, 3U, 1U},
   { 16U, 16U, 14U, 11U,
            8U, 5U, 3U, 1U},
   { 15U, 15U, 13U, 11U,
            8U, 5U, 3U, 1U},
   { 14U, 14U, 12U, 10U,
            8U, 5U, 2U, 1U},
   { 13U, 13U, 12U, 10U,
            7U, 5U, 2U, 1U},
   { 13U, 12U, 11U, 9U,
            7U, 4U, 2U, 1U},
   { 12U, 12U, 10U, 9U,
            6U, 4U, 2U, 1U},
   { 11U, 11U, 10U, 8U,
            6U, 4U, 2U, 1U},
   { 11U, 10U, 9U, 8U,
            6U, 4U, 2U, 1U},
   { 10U, 10U, 9U, 7U,
            5U, 3U, 2U, 1U},
   { 10U, 9U, 8U, 7U,
            5U, 3U, 2U, 1U},
   { 9U, 9U, 8U, 6U,
            5U, 3U, 1U, 1U},
   { 9U, 8U, 7U, 6U,
            4U, 3U, 1U, 1U}};
static u8 const cckswing_table_ch14[33U][8U] =
  { { 54U, 53U, 46U, 27U,
            0U, 0U, 0U, 0U},
   { 51U, 50U, 43U, 25U,
            0U, 0U, 0U, 0U},
   { 48U, 47U, 41U, 24U,
            0U, 0U, 0U, 0U},
   { 45U, 45U, 23U, 23U,
            0U, 0U, 0U, 0U},
   { 43U, 42U, 37U, 21U,
            0U, 0U, 0U, 0U},
   { 40U, 40U, 36U, 20U,
            0U, 0U, 0U, 0U},
   { 38U, 37U, 33U, 19U,
            0U, 0U, 0U, 0U},
   { 36U, 35U, 31U, 18U,
            0U, 0U, 0U, 0U},
   { 34U, 33U, 29U, 17U,
            0U, 0U, 0U, 0U},
   { 32U, 32U, 27U, 16U,
            0U, 0U, 0U, 0U},
   { 31U, 30U, 26U, 15U,
            0U, 0U, 0U, 0U},
   { 29U, 28U, 24U, 14U,
            0U, 0U, 0U, 0U},
   { 27U, 26U, 23U, 14U,
            0U, 0U, 0U, 0U},
   { 26U, 25U, 22U, 13U,
            0U, 0U, 0U, 0U},
   { 24U, 23U, 21U, 12U,
            0U, 0U, 0U, 0U},
   { 23U, 22U, 19U, 11U,
            0U, 0U, 0U, 0U},
   { 22U, 21U, 18U, 11U,
            0U, 0U, 0U, 0U},
   { 20U, 20U, 17U, 10U,
            0U, 0U, 0U, 0U},
   { 19U, 19U, 16U, 10U,
            0U, 0U, 0U, 0U},
   { 18U, 18U, 15U, 9U,
            0U, 0U, 0U, 0U},
   { 17U, 17U, 15U, 9U,
            0U, 0U, 0U, 0U},
   { 16U, 16U, 14U, 8U,
            0U, 0U, 0U, 0U},
   { 15U, 15U, 13U, 8U,
            0U, 0U, 0U, 0U},
   { 14U, 14U, 12U, 7U,
            0U, 0U, 0U, 0U},
   { 13U, 13U, 12U, 7U,
            0U, 0U, 0U, 0U},
   { 13U, 12U, 11U, 6U,
            0U, 0U, 0U, 0U},
   { 12U, 12U, 10U, 6U,
            0U, 0U, 0U, 0U},
   { 11U, 11U, 10U, 6U,
            0U, 0U, 0U, 0U},
   { 11U, 10U, 9U, 5U,
            0U, 0U, 0U, 0U},
   { 10U, 10U, 9U, 5U,
            0U, 0U, 0U, 0U},
   { 10U, 9U, 8U, 5U,
            0U, 0U, 0U, 0U},
   { 9U, 9U, 8U, 5U,
            0U, 0U, 0U, 0U},
   { 9U, 8U, 7U, 4U,
            0U, 0U, 0U, 0U}};
static void rtl92d_dm_diginit(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct dig_t *de_digtable ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  de_digtable = & rtlpriv->dm_digtable;
  de_digtable->dig_enable_flag = 1U;
  de_digtable->dig_ext_port_stage = 4U;
  de_digtable->cur_igvalue = 32U;
  de_digtable->pre_igvalue = 0U;
  de_digtable->cursta_cstate = 0U;
  de_digtable->presta_cstate = 0U;
  de_digtable->curmultista_cstate = 3U;
  de_digtable->rssi_lowthresh = 35U;
  de_digtable->rssi_highthresh = 40U;
  de_digtable->fa_lowthresh = 400U;
  de_digtable->fa_highthresh = 1000U;
  de_digtable->rx_gain_max = 50U;
  de_digtable->rx_gain_min = 32U;
  de_digtable->back_val = 10;
  de_digtable->back_range_max = 12;
  de_digtable->back_range_min = -4;
  de_digtable->pre_cck_pd_state = 0U;
  de_digtable->cur_cck_pd_state = 4U;
  de_digtable->large_fa_hit = 0U;
  de_digtable->recover_cnt = 0U;
  de_digtable->forbidden_igi = 32U;
  return;
}
}
static void rtl92d_dm_false_alarm_counter_statistics(struct ieee80211_hw *hw )
{
  u32 ret_value ;
  struct rtl_priv *rtlpriv ;
  struct false_alarm_statistics *falsealm_cnt ;
  unsigned long flag ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  falsealm_cnt = & rtlpriv->falsealm_cnt;
  flag = 0UL;
  rtl_set_bbreg(hw, 3072U, 2147483648U, 1U);
  rtl_set_bbreg(hw, 3328U, 2147483648U, 1U);
  ret_value = rtl_get_bbreg(hw, 3312U, 4294967295U);
  falsealm_cnt->cnt_fast_fsync_fail = ret_value & 65535U;
  falsealm_cnt->cnt_sb_search_fail = ret_value >> 16;
  ret_value = rtl_get_bbreg(hw, 3488U, 4294967295U);
  falsealm_cnt->cnt_parity_fail = ret_value >> 16;
  ret_value = rtl_get_bbreg(hw, 3492U, 4294967295U);
  falsealm_cnt->cnt_rate_illegal = ret_value & 65535U;
  falsealm_cnt->cnt_crc8_fail = ret_value >> 16;
  ret_value = rtl_get_bbreg(hw, 3496U, 4294967295U);
  falsealm_cnt->cnt_mcs_fail = ret_value & 65535U;
  falsealm_cnt->cnt_ofdm_fail = ((((falsealm_cnt->cnt_parity_fail + falsealm_cnt->cnt_rate_illegal) + falsealm_cnt->cnt_crc8_fail) + falsealm_cnt->cnt_mcs_fail) + falsealm_cnt->cnt_fast_fsync_fail) + falsealm_cnt->cnt_sb_search_fail;
  }
  if ((unsigned int )rtlpriv->rtlhal.current_bandtype != 1U) {
    {
    rtl92d_acquire_cckandrw_pagea_ctl(hw, & flag);
    ret_value = rtl_get_bbreg(hw, 2652U, 255U);
    falsealm_cnt->cnt_cck_fail = ret_value;
    ret_value = rtl_get_bbreg(hw, 2648U, 4278190080U);
    falsealm_cnt->cnt_cck_fail = falsealm_cnt->cnt_cck_fail + ((ret_value << 8) & 65535U);
    rtl92d_release_cckandrw_pagea_ctl(hw, & flag);
    }
  } else {
    falsealm_cnt->cnt_cck_fail = 0U;
  }
  {
  falsealm_cnt->cnt_all = (((((falsealm_cnt->cnt_fast_fsync_fail + falsealm_cnt->cnt_sb_search_fail) + falsealm_cnt->cnt_parity_fail) + falsealm_cnt->cnt_rate_illegal) + falsealm_cnt->cnt_crc8_fail) + falsealm_cnt->cnt_mcs_fail) + falsealm_cnt->cnt_cck_fail;
  rtl_set_bbreg(hw, 3328U, 134217728U, 1U);
  rtl_set_bbreg(hw, 3328U, 134217728U, 0U);
  rtl_set_bbreg(hw, 3072U, 2147483648U, 0U);
  rtl_set_bbreg(hw, 3328U, 2147483648U, 0U);
  }
  if ((unsigned int )rtlpriv->rtlhal.current_bandtype != 1U) {
    {
    rtl92d_acquire_cckandrw_pagea_ctl(hw, & flag);
    rtl_set_bbreg(hw, 2604U, 49152U, 0U);
    rtl_set_bbreg(hw, 2604U, 49152U, 2U);
    rtl92d_release_cckandrw_pagea_ctl(hw, & flag);
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Cnt_Fast_Fsync_fail = %x, Cnt_SB_Search_fail = %x\n",
             "rtl92d_dm_false_alarm_counter_statistics", (unsigned long )tmp___0 & 2096896UL,
             ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL, falsealm_cnt->cnt_fast_fsync_fail,
             falsealm_cnt->cnt_sb_search_fail);
      }
    } else {
    }
  } else {
  }
  {
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Cnt_Parity_Fail = %x, Cnt_Rate_Illegal = %x, Cnt_Crc8_fail = %x, Cnt_Mcs_fail = %x\n",
             "rtl92d_dm_false_alarm_counter_statistics", (unsigned long )tmp___4 & 2096896UL,
             ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL, falsealm_cnt->cnt_parity_fail,
             falsealm_cnt->cnt_rate_illegal, falsealm_cnt->cnt_crc8_fail, falsealm_cnt->cnt_mcs_fail);
      }
    } else {
    }
  } else {
  }
  {
  tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                             0L);
  }
  if (tmp___9 != 0L) {
    {
    tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___7 = preempt_count();
      tmp___8 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Cnt_Ofdm_fail = %x, Cnt_Cck_fail = %x, Cnt_all = %x\n",
             "rtl92d_dm_false_alarm_counter_statistics", (unsigned long )tmp___8 & 2096896UL,
             ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL, falsealm_cnt->cnt_ofdm_fail,
             falsealm_cnt->cnt_cck_fail, falsealm_cnt->cnt_all);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void rtl92d_dm_find_minimum_rssi(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct dig_t *de_digtable ;
  struct rtl_mac *mac ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  long tmp___17 ;
  long tmp___18 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  de_digtable = & rtlpriv->dm_digtable;
  mac = & rtlpriv->mac80211;
  if ((unsigned int )mac->link_state <= 1U && rtlpriv->dm.entry_min_undec_sm_pwdb == 0L) {
    {
    de_digtable->min_undec_pwdb_for_dm = 0U;
    tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 262144ULL) != 0ULL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp = preempt_count();
        tmp___0 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Not connected to any\n", "rtl92d_dm_find_minimum_rssi",
               (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )mac->link_state > 1U) {
    if ((unsigned int )mac->opmode == 3U || (unsigned int )mac->opmode == 1U) {
      {
      de_digtable->min_undec_pwdb_for_dm = (u8 )rtlpriv->dm.entry_min_undec_sm_pwdb;
      tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 262144ULL) != 0ULL,
                                 0L);
      }
      if (tmp___5 != 0L) {
        {
        tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___6 != 0L) {
          {
          tmp___3 = preempt_count();
          tmp___4 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> AP Client PWDB = 0x%lx\n", "rtl92d_dm_find_minimum_rssi",
                 (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL,
                 rtlpriv->dm.entry_min_undec_sm_pwdb);
          }
        } else {
        }
      } else {
      }
    } else {
      {
      de_digtable->min_undec_pwdb_for_dm = (u8 )rtlpriv->dm.undec_sm_pwdb;
      tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 262144ULL) != 0ULL,
                                 0L);
      }
      if (tmp___9 != 0L) {
        {
        tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___10 != 0L) {
          {
          tmp___7 = preempt_count();
          tmp___8 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> STA Default Port PWDB = 0x%x\n", "rtl92d_dm_find_minimum_rssi",
                 (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL,
                 (int )de_digtable->min_undec_pwdb_for_dm);
          }
        } else {
        }
      } else {
      }
    }
  } else {
    {
    de_digtable->min_undec_pwdb_for_dm = (u8 )rtlpriv->dm.entry_min_undec_sm_pwdb;
    tmp___13 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 262144ULL) != 0ULL,
                                0L);
    }
    if (tmp___13 != 0L) {
      {
      tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___14 != 0L) {
        {
        tmp___11 = preempt_count();
        tmp___12 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> AP Ext Port or disconnect PWDB = 0x%x\n",
               "rtl92d_dm_find_minimum_rssi", (unsigned long )tmp___12 & 2096896UL,
               ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL, (int )de_digtable->min_undec_pwdb_for_dm);
        }
      } else {
      }
    } else {
    }
  }
  {
  tmp___17 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                              0L);
  }
  if (tmp___17 != 0L) {
    {
    tmp___18 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___18 != 0L) {
      {
      tmp___15 = preempt_count();
      tmp___16 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> MinUndecoratedPWDBForDM =%d\n", "rtl92d_dm_find_minimum_rssi",
             (unsigned long )tmp___16 & 2096896UL, ((unsigned long )tmp___15 & 0xffffffffffdfffffUL) != 0UL,
             (int )de_digtable->min_undec_pwdb_for_dm);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void rtl92d_dm_cck_packet_detection_thresh(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct dig_t *de_digtable ;
  unsigned long flag ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  de_digtable = & rtlpriv->dm_digtable;
  flag = 0UL;
  if ((unsigned int )de_digtable->cursta_cstate == 1U) {
    if ((unsigned int )de_digtable->pre_cck_pd_state == 0U) {
      if ((unsigned int )de_digtable->min_undec_pwdb_for_dm <= 25U) {
        de_digtable->cur_cck_pd_state = 0U;
      } else {
        de_digtable->cur_cck_pd_state = 1U;
      }
    } else
    if ((unsigned int )de_digtable->min_undec_pwdb_for_dm <= 20U) {
      de_digtable->cur_cck_pd_state = 0U;
    } else {
      de_digtable->cur_cck_pd_state = 1U;
    }
  } else {
    de_digtable->cur_cck_pd_state = 0U;
  }
  if ((int )de_digtable->pre_cck_pd_state != (int )de_digtable->cur_cck_pd_state) {
    if ((unsigned int )de_digtable->cur_cck_pd_state == 0U) {
      {
      rtl92d_acquire_cckandrw_pagea_ctl(hw, & flag);
      rtl_set_bbreg(hw, 2568U, 16711680U, 131U);
      rtl92d_release_cckandrw_pagea_ctl(hw, & flag);
      }
    } else {
      {
      rtl92d_acquire_cckandrw_pagea_ctl(hw, & flag);
      rtl_set_bbreg(hw, 2568U, 16711680U, 205U);
      rtl92d_release_cckandrw_pagea_ctl(hw, & flag);
      }
    }
    de_digtable->pre_cck_pd_state = de_digtable->cur_cck_pd_state;
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> CurSTAConnectState=%s\n", "rtl92d_dm_cck_packet_detection_thresh",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             (unsigned int )de_digtable->cursta_cstate == 1U ? (char *)"DIG_STA_CONNECT " : (char *)"DIG_STA_DISCONNECT");
      }
    } else {
    }
  } else {
  }
  {
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> CCKPDStage=%s\n", "rtl92d_dm_cck_packet_detection_thresh",
             (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL,
             (unsigned int )de_digtable->cur_cck_pd_state == 0U ? (char *)"Low RSSI " : (char *)"High RSSI ");
      }
    } else {
    }
  } else {
  }
  {
  tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                             0L);
  }
  if (tmp___9 != 0L) {
    {
    tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___7 = preempt_count();
      tmp___8 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> is92d single phy =%x\n", "rtl92d_dm_cck_packet_detection_thresh",
             (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL,
             ((unsigned long )rtlpriv->rtlhal.version & 119UL) == 34UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
void rtl92d_dm_write_dig(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct dig_t *de_digtable ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  de_digtable = & rtlpriv->dm_digtable;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> cur_igvalue = 0x%x, pre_igvalue = 0x%x, back_val = %d\n",
             "rtl92d_dm_write_dig", (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             de_digtable->cur_igvalue, de_digtable->pre_igvalue, (int )de_digtable->back_val);
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )de_digtable->dig_enable_flag == 0U) {
    {
    tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> DIG is disabled\n", "rtl92d_dm_write_dig",
               (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    de_digtable->pre_igvalue = 23U;
    return;
  } else {
  }
  if (de_digtable->pre_igvalue != de_digtable->cur_igvalue) {
    {
    rtl_set_bbreg(hw, 3152U, 127U, de_digtable->cur_igvalue);
    rtl_set_bbreg(hw, 3160U, 127U, de_digtable->cur_igvalue);
    de_digtable->pre_igvalue = de_digtable->cur_igvalue;
    }
  } else {
  }
  return;
}
}
static void rtl92d_early_mode_enabled(struct rtl_priv *rtlpriv )
{
  struct dig_t *de_digtable ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  u8 tmp___15 ;
  {
  de_digtable = & rtlpriv->dm_digtable;
  if ((unsigned int )rtlpriv->mac80211.link_state > 1U && rtlpriv->mac80211.vendor == 6U) {
    {
    tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp = preempt_count();
        tmp___0 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> IOT_PEER = CISCO\n", "rtl92d_early_mode_enabled",
               (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    if (de_digtable->last_min_undec_pwdb_for_dm > 49L && (unsigned int )de_digtable->min_undec_pwdb_for_dm <= 49U) {
      {
      rtl_write_byte(rtlpriv, 1232U, 0);
      tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                                 0L);
      }
      if (tmp___5 != 0L) {
        {
        tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___6 != 0L) {
          {
          tmp___3 = preempt_count();
          tmp___4 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> Early Mode Off\n", "rtl92d_early_mode_enabled",
                 (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
          }
        } else {
        }
      } else {
      }
    } else
    if (de_digtable->last_min_undec_pwdb_for_dm <= 55L && (unsigned int )de_digtable->min_undec_pwdb_for_dm > 55U) {
      {
      rtl_write_byte(rtlpriv, 1232U, 15);
      tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                                 0L);
      }
      if (tmp___9 != 0L) {
        {
        tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___10 != 0L) {
          {
          tmp___7 = preempt_count();
          tmp___8 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> Early Mode On\n", "rtl92d_early_mode_enabled",
                 (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL);
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
    {
    tmp___15 = rtl_read_byte(rtlpriv, 1232U);
    }
    if (((int )tmp___15 & 15) == 0) {
      {
      rtl_write_byte(rtlpriv, 1232U, 15);
      tmp___13 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                                  0L);
      }
      if (tmp___13 != 0L) {
        {
        tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___14 != 0L) {
          {
          tmp___11 = preempt_count();
          tmp___12 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> Early Mode On\n", "rtl92d_early_mode_enabled",
                 (unsigned long )tmp___12 & 2096896UL, ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL);
          }
        } else {
        }
      } else {
      }
    } else {
    }
  }
  return;
}
}
static void rtl92d_dm_dig(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct dig_t *de_digtable ;
  u8 value_igi ;
  struct false_alarm_statistics *falsealm_cnt ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  long tmp___17 ;
  long tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  long tmp___21 ;
  long tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  long tmp___25 ;
  long tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  long tmp___29 ;
  long tmp___30 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  de_digtable = & rtlpriv->dm_digtable;
  value_igi = (u8 )de_digtable->cur_igvalue;
  falsealm_cnt = & rtlpriv->falsealm_cnt;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> ==>\n", "rtl92d_dm_dig", (unsigned long )tmp___0 & 2096896UL,
             ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  if ((int )rtlpriv->rtlhal.earlymode_enable) {
    {
    rtl92d_early_mode_enabled(rtlpriv);
    de_digtable->last_min_undec_pwdb_for_dm = (long )de_digtable->min_undec_pwdb_for_dm;
    }
  } else {
  }
  if (! rtlpriv->dm.dm_initialgain_enable) {
    return;
  } else {
  }
  if ((unsigned int )rtlpriv->mac80211.opmode != 2U) {
    return;
  } else {
  }
  {
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> progress\n", "rtl92d_dm_dig", (unsigned long )tmp___4 & 2096896UL,
             ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )rtlpriv->mac80211.link_state > 1U) {
    de_digtable->cursta_cstate = 1U;
  } else {
    de_digtable->cursta_cstate = 0U;
  }
  if (falsealm_cnt->cnt_all <= 255U) {
    value_igi = (u8 )((int )value_igi - 1);
  } else
  if (falsealm_cnt->cnt_all <= 1023U) {
    value_igi = value_igi;
  } else
  if (falsealm_cnt->cnt_all <= 1535U) {
    value_igi = (u8 )((int )value_igi + 1);
  } else
  if (falsealm_cnt->cnt_all > 1535U) {
    value_igi = (unsigned int )value_igi + 2U;
  } else {
  }
  {
  tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                             0L);
  }
  if (tmp___9 != 0L) {
    {
    tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___7 = preempt_count();
      tmp___8 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> dm_DIG() Before: large_fa_hit=%d, forbidden_igi=%x\n",
             "rtl92d_dm_dig", (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL,
             (int )de_digtable->large_fa_hit, (int )de_digtable->forbidden_igi);
      }
    } else {
    }
  } else {
  }
  {
  tmp___13 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                              0L);
  }
  if (tmp___13 != 0L) {
    {
    tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___14 != 0L) {
      {
      tmp___11 = preempt_count();
      tmp___12 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> dm_DIG() Before: Recover_cnt=%d, rx_gain_min=%x\n",
             "rtl92d_dm_dig", (unsigned long )tmp___12 & 2096896UL, ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL,
             de_digtable->recover_cnt, (int )de_digtable->rx_gain_min);
      }
    } else {
    }
  } else {
  }
  if (falsealm_cnt->cnt_all > 10000U) {
    {
    tmp___17 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                                0L);
    }
    if (tmp___17 != 0L) {
      {
      tmp___18 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___18 != 0L) {
        {
        tmp___15 = preempt_count();
        tmp___16 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> dm_DIG(): Abnormally false alarm case\n",
               "rtl92d_dm_dig", (unsigned long )tmp___16 & 2096896UL, ((unsigned long )tmp___15 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    de_digtable->large_fa_hit = (u8 )((int )de_digtable->large_fa_hit + 1);
    if ((u32 )de_digtable->forbidden_igi < de_digtable->cur_igvalue) {
      de_digtable->forbidden_igi = (u8 )de_digtable->cur_igvalue;
      de_digtable->large_fa_hit = 1U;
    } else {
    }
    if ((unsigned int )de_digtable->large_fa_hit > 2U) {
      if ((int )de_digtable->forbidden_igi + 1 > 62) {
        de_digtable->rx_gain_min = 62U;
      } else {
        de_digtable->rx_gain_min = (unsigned int )de_digtable->forbidden_igi + 1U;
      }
      de_digtable->recover_cnt = 3600U;
    } else {
    }
  } else
  if (de_digtable->recover_cnt != 0U) {
    de_digtable->recover_cnt = de_digtable->recover_cnt - 1U;
  } else
  if ((unsigned int )de_digtable->large_fa_hit == 0U) {
    if ((int )de_digtable->forbidden_igi + -1 <= 31) {
      de_digtable->forbidden_igi = 32U;
      de_digtable->rx_gain_min = 32U;
    } else {
      de_digtable->forbidden_igi = (u8 )((int )de_digtable->forbidden_igi - 1);
      de_digtable->rx_gain_min = (unsigned int )de_digtable->forbidden_igi + 1U;
    }
  } else
  if ((unsigned int )de_digtable->large_fa_hit == 3U) {
    de_digtable->large_fa_hit = 0U;
  } else {
  }
  {
  tmp___21 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                              0L);
  }
  if (tmp___21 != 0L) {
    {
    tmp___22 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___22 != 0L) {
      {
      tmp___19 = preempt_count();
      tmp___20 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> dm_DIG() After: large_fa_hit=%d, forbidden_igi=%x\n",
             "rtl92d_dm_dig", (unsigned long )tmp___20 & 2096896UL, ((unsigned long )tmp___19 & 0xffffffffffdfffffUL) != 0UL,
             (int )de_digtable->large_fa_hit, (int )de_digtable->forbidden_igi);
      }
    } else {
    }
  } else {
  }
  {
  tmp___25 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                              0L);
  }
  if (tmp___25 != 0L) {
    {
    tmp___26 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___26 != 0L) {
      {
      tmp___23 = preempt_count();
      tmp___24 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> dm_DIG() After: recover_cnt=%d, rx_gain_min=%x\n",
             "rtl92d_dm_dig", (unsigned long )tmp___24 & 2096896UL, ((unsigned long )tmp___23 & 0xffffffffffdfffffUL) != 0UL,
             de_digtable->recover_cnt, (int )de_digtable->rx_gain_min);
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )value_igi > 62U) {
    value_igi = 62U;
  } else
  if ((int )value_igi < (int )de_digtable->rx_gain_min) {
    value_igi = de_digtable->rx_gain_min;
  } else {
  }
  {
  de_digtable->cur_igvalue = (u32 )value_igi;
  rtl92d_dm_write_dig(hw);
  }
  if ((unsigned int )rtlpriv->rtlhal.current_bandtype != 1U) {
    {
    rtl92d_dm_cck_packet_detection_thresh(hw);
    }
  } else {
  }
  {
  tmp___29 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8192ULL) != 0ULL,
                              0L);
  }
  if (tmp___29 != 0L) {
    {
    tmp___30 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___30 != 0L) {
      {
      tmp___27 = preempt_count();
      tmp___28 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <<==\n", "rtl92d_dm_dig", (unsigned long )tmp___28 & 2096896UL,
             ((unsigned long )tmp___27 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void rtl92d_dm_init_dynamic_txpower(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpriv->dm.dynamic_txpower_enable = 1;
  rtlpriv->dm.last_dtp_lvl = 0U;
  rtlpriv->dm.dynamic_txhighpower_lvl = 0U;
  return;
}
}
static void rtl92d_dm_dynamic_txpower(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_hal *rtlhal ;
  struct rtl_mac *mac ;
  long undec_sm_pwdb ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  long tmp___17 ;
  long tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  long tmp___21 ;
  long tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  long tmp___25 ;
  long tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  long tmp___29 ;
  long tmp___30 ;
  int tmp___31 ;
  int tmp___32 ;
  long tmp___33 ;
  long tmp___34 ;
  int tmp___35 ;
  int tmp___36 ;
  long tmp___37 ;
  long tmp___38 ;
  int tmp___39 ;
  int tmp___40 ;
  long tmp___41 ;
  long tmp___42 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rtlhal = & rtlpriv->rtlhal;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  if (! rtlpriv->dm.dynamic_txpower_enable || ((unsigned long )rtlpriv->dm.dm_flag & 2UL) != 0UL) {
    rtlpriv->dm.dynamic_txhighpower_lvl = 0U;
    return;
  } else {
  }
  if ((unsigned int )mac->link_state <= 1U && rtlpriv->dm.entry_min_undec_sm_pwdb == 0L) {
    {
    tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 65536ULL) != 0ULL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp = preempt_count();
        tmp___0 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Not connected to any\n", "rtl92d_dm_dynamic_txpower",
               (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    rtlpriv->dm.dynamic_txhighpower_lvl = 0U;
    rtlpriv->dm.last_dtp_lvl = 0U;
    return;
  } else {
  }
  if ((unsigned int )mac->link_state > 1U) {
    if ((unsigned int )mac->opmode == 1U) {
      {
      undec_sm_pwdb = rtlpriv->dm.entry_min_undec_sm_pwdb;
      tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 65536ULL) != 0ULL,
                                 0L);
      }
      if (tmp___5 != 0L) {
        {
        tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___6 != 0L) {
          {
          tmp___3 = preempt_count();
          tmp___4 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> IBSS Client PWDB = 0x%lx\n", "rtl92d_dm_dynamic_txpower",
                 (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL,
                 undec_sm_pwdb);
          }
        } else {
        }
      } else {
      }
    } else {
      {
      undec_sm_pwdb = rtlpriv->dm.undec_sm_pwdb;
      tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 65536ULL) != 0ULL,
                                 0L);
      }
      if (tmp___9 != 0L) {
        {
        tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___10 != 0L) {
          {
          tmp___7 = preempt_count();
          tmp___8 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> STA Default Port PWDB = 0x%lx\n", "rtl92d_dm_dynamic_txpower",
                 (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL,
                 undec_sm_pwdb);
          }
        } else {
        }
      } else {
      }
    }
  } else {
    {
    undec_sm_pwdb = rtlpriv->dm.entry_min_undec_sm_pwdb;
    tmp___13 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 65536ULL) != 0ULL,
                                0L);
    }
    if (tmp___13 != 0L) {
      {
      tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___14 != 0L) {
        {
        tmp___11 = preempt_count();
        tmp___12 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> AP Ext Port PWDB = 0x%lx\n", "rtl92d_dm_dynamic_txpower",
               (unsigned long )tmp___12 & 2096896UL, ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL,
               undec_sm_pwdb);
        }
      } else {
      }
    } else {
    }
  }
  if ((unsigned int )rtlhal->current_bandtype == 1U) {
    if (undec_sm_pwdb > 50L) {
      {
      rtlpriv->dm.dynamic_txhighpower_lvl = 2U;
      tmp___17 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 32768ULL) != 0ULL,
                                  0L);
      }
      if (tmp___17 != 0L) {
        {
        tmp___18 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___18 != 0L) {
          {
          tmp___15 = preempt_count();
          tmp___16 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> 5G:TxHighPwrLevel_Level2 (TxPwr=0x0)\n",
                 "rtl92d_dm_dynamic_txpower", (unsigned long )tmp___16 & 2096896UL,
                 ((unsigned long )tmp___15 & 0xffffffffffdfffffUL) != 0UL);
          }
        } else {
        }
      } else {
      }
    } else
    if ((unsigned long )undec_sm_pwdb - 43UL <= 7UL) {
      {
      rtlpriv->dm.dynamic_txhighpower_lvl = 1U;
      tmp___21 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 32768ULL) != 0ULL,
                                  0L);
      }
      if (tmp___21 != 0L) {
        {
        tmp___22 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___22 != 0L) {
          {
          tmp___19 = preempt_count();
          tmp___20 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> 5G:TxHighPwrLevel_Level1 (TxPwr=0x10)\n",
                 "rtl92d_dm_dynamic_txpower", (unsigned long )tmp___20 & 2096896UL,
                 ((unsigned long )tmp___19 & 0xffffffffffdfffffUL) != 0UL);
          }
        } else {
        }
      } else {
      }
    } else
    if (undec_sm_pwdb <= 42L) {
      {
      rtlpriv->dm.dynamic_txhighpower_lvl = 0U;
      tmp___25 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 32768ULL) != 0ULL,
                                  0L);
      }
      if (tmp___25 != 0L) {
        {
        tmp___26 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___26 != 0L) {
          {
          tmp___23 = preempt_count();
          tmp___24 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> 5G:TxHighPwrLevel_Normal\n", "rtl92d_dm_dynamic_txpower",
                 (unsigned long )tmp___24 & 2096896UL, ((unsigned long )tmp___23 & 0xffffffffffdfffffUL) != 0UL);
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else
  if (undec_sm_pwdb > 73L) {
    {
    rtlpriv->dm.dynamic_txhighpower_lvl = 2U;
    tmp___29 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 65536ULL) != 0ULL,
                                0L);
    }
    if (tmp___29 != 0L) {
      {
      tmp___30 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___30 != 0L) {
        {
        tmp___27 = preempt_count();
        tmp___28 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> TXHIGHPWRLEVEL_LEVEL1 (TxPwr=0x0)\n",
               "rtl92d_dm_dynamic_txpower", (unsigned long )tmp___28 & 2096896UL,
               ((unsigned long )tmp___27 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  } else
  if ((unsigned long )undec_sm_pwdb - 67UL <= 3UL) {
    {
    rtlpriv->dm.dynamic_txhighpower_lvl = 1U;
    tmp___33 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 65536ULL) != 0ULL,
                                0L);
    }
    if (tmp___33 != 0L) {
      {
      tmp___34 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___34 != 0L) {
        {
        tmp___31 = preempt_count();
        tmp___32 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> TXHIGHPWRLEVEL_LEVEL1 (TxPwr=0x10)\n",
               "rtl92d_dm_dynamic_txpower", (unsigned long )tmp___32 & 2096896UL,
               ((unsigned long )tmp___31 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  } else
  if (undec_sm_pwdb <= 61L) {
    {
    rtlpriv->dm.dynamic_txhighpower_lvl = 0U;
    tmp___37 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 65536ULL) != 0ULL,
                                0L);
    }
    if (tmp___37 != 0L) {
      {
      tmp___38 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___38 != 0L) {
        {
        tmp___35 = preempt_count();
        tmp___36 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> TXHIGHPWRLEVEL_NORMAL\n", "rtl92d_dm_dynamic_txpower",
               (unsigned long )tmp___36 & 2096896UL, ((unsigned long )tmp___35 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if ((int )rtlpriv->dm.dynamic_txhighpower_lvl != (int )rtlpriv->dm.last_dtp_lvl) {
    {
    tmp___41 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 65536ULL) != 0ULL,
                                0L);
    }
    if (tmp___41 != 0L) {
      {
      tmp___42 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___42 != 0L) {
        {
        tmp___39 = preempt_count();
        tmp___40 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> PHY_SetTxPowerLevel8192S() Channel = %d\n",
               "rtl92d_dm_dynamic_txpower", (unsigned long )tmp___40 & 2096896UL,
               ((unsigned long )tmp___39 & 0xffffffffffdfffffUL) != 0UL, (int )rtlphy->current_channel);
        }
      } else {
      }
    } else {
    }
    {
    rtl92d_phy_set_txpower_level(hw, (int )rtlphy->current_channel);
    }
  } else {
  }
  rtlpriv->dm.last_dtp_lvl = rtlpriv->dm.dynamic_txhighpower_lvl;
  return;
}
}
static void rtl92d_dm_pwdb_monitor(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  u32 temp ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  if ((unsigned int )rtlpriv->mac80211.opmode != 2U) {
    return;
  } else {
  }
  if ((int )rtlpriv->dm.useramask) {
    {
    temp = (u32 )rtlpriv->dm.undec_sm_pwdb;
    temp = temp << 16;
    temp = temp | 256U;
    rtl92d_fill_h2c_cmd(hw, 5, 3U, (u8 *)(& temp));
    }
  } else {
    {
    rtl_write_byte(rtlpriv, 1278U, (int )((unsigned char )rtlpriv->dm.undec_sm_pwdb));
    }
  }
  return;
}
}
void rtl92d_dm_init_edca_turbo(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpriv->dm.current_turbo_edca = 0;
  rtlpriv->dm.is_any_nonbepkts = 0;
  rtlpriv->dm.is_cur_rdlstate = 0;
  return;
}
}
static void rtl92d_dm_check_edca_turbo(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_mac *mac ;
  u64 last_txok_cnt ;
  u64 last_rxok_cnt ;
  u64 cur_txok_cnt ;
  u64 cur_rxok_cnt ;
  u32 edca_be_ul ;
  u32 edca_be_dl ;
  u8 tmp ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  edca_be_ul = 6202411U;
  edca_be_dl = 6202411U;
  if ((unsigned int )mac->link_state != 2U) {
    rtlpriv->dm.current_turbo_edca = 0;
    goto exit;
  } else {
  }
  if (! rtlpriv->dm.disable_framebursting && (((unsigned int )rtlpriv->sec.pairwise_enc_algorithm == 1U || (unsigned int )rtlpriv->sec.pairwise_enc_algorithm == 5U) || (unsigned int )rtlpriv->sec.pairwise_enc_algorithm == 2U)) {
    if ((edca_be_ul & 4294901760U) == 0U) {
      edca_be_ul = edca_be_ul | 6160384U;
    } else {
    }
    if ((edca_be_dl & 4294901760U) == 0U) {
      edca_be_dl = edca_be_dl | 6160384U;
    } else {
    }
  } else {
  }
  if (! rtlpriv->dm.is_any_nonbepkts && ! rtlpriv->dm.disable_framebursting) {
    cur_txok_cnt = (unsigned long long )rtlpriv->stats.txbytesunicast - last_txok_cnt;
    cur_rxok_cnt = (unsigned long long )rtlpriv->stats.rxbytesunicast - last_rxok_cnt;
    if (cur_rxok_cnt > cur_txok_cnt * 4ULL) {
      if (! rtlpriv->dm.is_cur_rdlstate || ! rtlpriv->dm.current_turbo_edca) {
        {
        rtl_write_dword(rtlpriv, 1288U, edca_be_dl);
        rtlpriv->dm.is_cur_rdlstate = 1;
        }
      } else {
      }
    } else
    if ((int )rtlpriv->dm.is_cur_rdlstate || ! rtlpriv->dm.current_turbo_edca) {
      {
      rtl_write_dword(rtlpriv, 1288U, edca_be_ul);
      rtlpriv->dm.is_cur_rdlstate = 0;
      }
    } else {
    }
    rtlpriv->dm.current_turbo_edca = 1;
  } else
  if ((int )rtlpriv->dm.current_turbo_edca) {
    {
    tmp = 0U;
    (*(((rtlpriv->cfg)->ops)->set_hw_reg))(hw, 31, & tmp);
    rtlpriv->dm.current_turbo_edca = 0;
    }
  } else {
  }
  exit:
  rtlpriv->dm.is_any_nonbepkts = 0;
  last_txok_cnt = (u64 )rtlpriv->stats.txbytesunicast;
  last_rxok_cnt = (u64 )rtlpriv->stats.rxbytesunicast;
  return;
}
}
static void rtl92d_dm_rxgain_tracking_thermalmeter(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  u8 index_mapping[15U] ;
  int i ;
  u32 u4tmp ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  index_mapping[0] = 15U;
  index_mapping[1] = 15U;
  index_mapping[2] = 13U;
  index_mapping[3] = 12U;
  index_mapping[4] = 11U;
  index_mapping[5] = 10U;
  index_mapping[6] = 9U;
  index_mapping[7] = 8U;
  index_mapping[8] = 7U;
  index_mapping[9] = 6U;
  index_mapping[10] = 5U;
  index_mapping[11] = 4U;
  index_mapping[12] = 4U;
  index_mapping[13] = 3U;
  index_mapping[14] = 2U;
  u4tmp = (u32 )((int )index_mapping[(int )rtlpriv->efuse.eeprom_thermalmeter - (int )rtlpriv->dm.thermalvalue_rxgain] << 12);
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> ===> Rx Gain %x\n", "rtl92d_dm_rxgain_tracking_thermalmeter",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             u4tmp);
      }
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_50643;
  ldv_50642:
  {
  rtl_set_rfreg(hw, (enum radio_path )i, 60U, 1048575U, (rtlpriv->phy.reg_rf3c[i] & 4294905855U) | u4tmp);
  i = i + 1;
  }
  ldv_50643: ;
  if (i < (int )rtlpriv->phy.num_total_rfpath) {
    goto ldv_50642;
  } else {
  }
  return;
}
}
static void rtl92d_bandtype_2_4G(struct ieee80211_hw *hw , long *temp_cckg , u8 *cck_index_old )
{
  struct rtl_priv *rtlpriv ;
  int i ;
  unsigned long flag ;
  long temp_cck ;
  u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  int tmp___9 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  flag = 0UL;
  rtl92d_acquire_cckandrw_pagea_ctl(hw, & flag);
  tmp = rtl_get_bbreg(hw, 2596U, 4294967295U);
  temp_cck = (long )tmp & 1061109567L;
  rtl92d_release_cckandrw_pagea_ctl(hw, & flag);
  i = 0;
  }
  goto ldv_50657;
  ldv_50656: ;
  if ((int )rtlpriv->dm.cck_inch14) {
    {
    tmp___4 = memcmp((void const *)(& temp_cck), (void const *)(& cckswing_table_ch14) + ((unsigned long )i + 2UL),
                     4UL);
    }
    if (tmp___4 == 0) {
      {
      *cck_index_old = (unsigned char )i;
      tmp___2 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                                 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp___3 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___3 != 0L) {
          {
          tmp___0 = preempt_count();
          tmp___1 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> Initial reg0x%x = 0x%lx, cck_index=0x%x, ch 14 %d\n",
                 "rtl92d_bandtype_2_4G", (unsigned long )tmp___1 & 2096896UL, ((unsigned long )tmp___0 & 0xffffffffffdfffffUL) != 0UL,
                 2596, temp_cck, (int )*cck_index_old, (int )rtlpriv->dm.cck_inch14);
          }
        } else {
        }
      } else {
      }
      goto ldv_50655;
    } else {
    }
  } else {
    {
    tmp___9 = memcmp((void const *)(& temp_cck), (void const *)(& cckswing_table_ch1ch13) + ((unsigned long )i + 2UL),
                     4UL);
    }
    if (tmp___9 == 0) {
      {
      *cck_index_old = (unsigned char )i;
      tmp___7 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                                 0L);
      }
      if (tmp___7 != 0L) {
        {
        tmp___8 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___8 != 0L) {
          {
          tmp___5 = preempt_count();
          tmp___6 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> Initial reg0x%x = 0x%lx, cck_index = 0x%x, ch14 %d\n",
                 "rtl92d_bandtype_2_4G", (unsigned long )tmp___6 & 2096896UL, ((unsigned long )tmp___5 & 0xffffffffffdfffffUL) != 0UL,
                 2596, temp_cck, (int )*cck_index_old, (int )rtlpriv->dm.cck_inch14);
          }
        } else {
        }
      } else {
      }
      goto ldv_50655;
    } else {
    }
  }
  i = i + 1;
  ldv_50657: ;
  if (i <= 32) {
    goto ldv_50656;
  } else {
  }
  ldv_50655:
  *temp_cckg = temp_cck;
  return;
}
}
static void rtl92d_bandtype_5G(struct rtl_hal *rtlhal , u8 *ofdm_index , bool *internal_pa ,
                               u8 thermalvalue , u8 delta , u8 rf , struct rtl_efuse *rtlefuse ,
                               struct rtl_priv *rtlpriv , struct rtl_phy *rtlphy ,
                               u8 (*index_mapping)[13U] , u8 (*index_mapping_pa)[13U] )
{
  int i ;
  u8 index ;
  u8 offset ;
  {
  offset = 0U;
  i = 0;
  goto ldv_50675;
  ldv_50674: ;
  if ((unsigned int )rtlhal->macphymode == 1U && rtlhal->interfaceindex == 1U) {
    *internal_pa = (unsigned int )rtlefuse->internal_pa_5g[1] != 0U;
  } else {
    *internal_pa = (unsigned int )rtlefuse->internal_pa_5g[i] != 0U;
  }
  if ((int )*internal_pa) {
    if (rtlhal->interfaceindex == 1U || i == (int )rf) {
      offset = 4U;
    } else {
      offset = 0U;
    }
    if ((unsigned int )rtlphy->current_channel - 100U <= 65U) {
      offset = (unsigned int )offset + 2U;
    } else {
    }
  } else
  if (rtlhal->interfaceindex == 1U || i == (int )rf) {
    offset = 2U;
  } else {
    offset = 0U;
  }
  if ((int )thermalvalue > (int )rtlefuse->eeprom_thermalmeter) {
    offset = (u8 )((int )offset + 1);
  } else {
  }
  if ((int )*internal_pa) {
    if ((unsigned int )delta > 12U) {
      index = (*(index_mapping_pa + (unsigned long )offset))[12];
    } else {
      index = (*(index_mapping_pa + (unsigned long )offset))[(int )delta];
    }
  } else
  if ((unsigned int )delta > 12U) {
    index = (*(index_mapping + (unsigned long )offset))[12];
  } else {
    index = (*(index_mapping + (unsigned long )offset))[(int )delta];
  }
  if ((int )thermalvalue > (int )rtlefuse->eeprom_thermalmeter) {
    if ((int )*internal_pa && (unsigned int )thermalvalue > 18U) {
      *(ofdm_index + (unsigned long )i) = (unsigned int )((u8 )rtlpriv->dm.ofdm_index[i]) + ((unsigned int )((u8 )((unsigned int )delta / 2U)) * 253U - ((unsigned int )delta & 1U));
    } else {
      *(ofdm_index + (unsigned long )i) = (int )*(ofdm_index + (unsigned long )i) - (int )index;
    }
  } else {
    *(ofdm_index + (unsigned long )i) = (int )*(ofdm_index + (unsigned long )i) + (int )index;
  }
  i = i + 1;
  ldv_50675: ;
  if (i < (int )rf) {
    goto ldv_50674;
  } else {
  }
  return;
}
}
static void rtl92d_dm_txpower_tracking_callback_thermalmeter(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  struct rtl_phy *rtlphy ;
  struct rtl_efuse *rtlefuse ;
  u8 thermalvalue ;
  u8 delta ;
  u8 delta_lck ;
  u8 delta_iqk ;
  u8 delta_rxgain ;
  u8 offset ;
  u8 thermalvalue_avg_count ;
  u32 thermalvalue_avg ;
  bool internal_pa ;
  long ele_a ;
  long ele_d ;
  long temp_cck ;
  long val_x ;
  long value32 ;
  long val_y ;
  long ele_c ;
  u8 ofdm_index[3U] ;
  s8 cck_index ;
  u8 ofdm_index_old[3U] ;
  s8 cck_index_old ;
  u8 index ;
  int i ;
  bool is2t ;
  u8 ofdm_min_index ;
  u8 ofdm_min_index_internal_pa ;
  u8 rf ;
  u8 indexforchannel ;
  u8 tmp ;
  u8 index_mapping[5U][13U] ;
  u8 index_mapping_internal_pa[8U][13U] ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  u32 tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  u32 tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  long tmp___17 ;
  long tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  long tmp___21 ;
  long tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  long tmp___25 ;
  long tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  long tmp___29 ;
  long tmp___30 ;
  int tmp___31 ;
  int tmp___32 ;
  long tmp___33 ;
  long tmp___34 ;
  int tmp___35 ;
  int tmp___36 ;
  long tmp___37 ;
  long tmp___38 ;
  int tmp___39 ;
  int tmp___40 ;
  long tmp___41 ;
  long tmp___42 ;
  int tmp___43 ;
  int tmp___44 ;
  long tmp___45 ;
  long tmp___46 ;
  int tmp___47 ;
  int tmp___48 ;
  long tmp___49 ;
  long tmp___50 ;
  u32 tmp___51 ;
  u32 tmp___52 ;
  u32 tmp___53 ;
  int tmp___54 ;
  int tmp___55 ;
  long tmp___56 ;
  long tmp___57 ;
  int tmp___58 ;
  int tmp___59 ;
  long tmp___60 ;
  long tmp___61 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  rtlphy = & rtlpriv->phy;
  rtlefuse = & ((struct rtl_priv *)hw->priv)->efuse;
  thermalvalue_avg_count = 0U;
  thermalvalue_avg = 0U;
  internal_pa = 0;
  ele_a = 0L;
  ele_c = 0L;
  cck_index = 0;
  ofdm_index_old[0] = 0U;
  ofdm_index_old[1] = 0U;
  ofdm_index_old[2] = 0U;
  cck_index_old = 0;
  is2t = ((unsigned long )rtlhal->version & 119UL) == 34UL;
  ofdm_min_index = 6U;
  ofdm_min_index_internal_pa = 3U;
  tmp = rtl92d_get_rightchnlplace_for_iqk((int )rtlphy->current_channel);
  indexforchannel = tmp;
  index_mapping[0][0] = 0U;
  index_mapping[0][1] = 1U;
  index_mapping[0][2] = 3U;
  index_mapping[0][3] = 6U;
  index_mapping[0][4] = 8U;
  index_mapping[0][5] = 9U;
  index_mapping[0][6] = 11U;
  index_mapping[0][7] = 13U;
  index_mapping[0][8] = 14U;
  index_mapping[0][9] = 16U;
  index_mapping[0][10] = 17U;
  index_mapping[0][11] = 18U;
  index_mapping[0][12] = 18U;
  index_mapping[1][0] = 0U;
  index_mapping[1][1] = 2U;
  index_mapping[1][2] = 4U;
  index_mapping[1][3] = 5U;
  index_mapping[1][4] = 7U;
  index_mapping[1][5] = 10U;
  index_mapping[1][6] = 12U;
  index_mapping[1][7] = 14U;
  index_mapping[1][8] = 16U;
  index_mapping[1][9] = 18U;
  index_mapping[1][10] = 18U;
  index_mapping[1][11] = 18U;
  index_mapping[1][12] = 18U;
  index_mapping[2][0] = 0U;
  index_mapping[2][1] = 2U;
  index_mapping[2][2] = 3U;
  index_mapping[2][3] = 6U;
  index_mapping[2][4] = 8U;
  index_mapping[2][5] = 9U;
  index_mapping[2][6] = 11U;
  index_mapping[2][7] = 13U;
  index_mapping[2][8] = 14U;
  index_mapping[2][9] = 16U;
  index_mapping[2][10] = 17U;
  index_mapping[2][11] = 18U;
  index_mapping[2][12] = 18U;
  index_mapping[3][0] = 0U;
  index_mapping[3][1] = 2U;
  index_mapping[3][2] = 4U;
  index_mapping[3][3] = 5U;
  index_mapping[3][4] = 7U;
  index_mapping[3][5] = 10U;
  index_mapping[3][6] = 13U;
  index_mapping[3][7] = 16U;
  index_mapping[3][8] = 16U;
  index_mapping[3][9] = 18U;
  index_mapping[3][10] = 18U;
  index_mapping[3][11] = 18U;
  index_mapping[3][12] = 18U;
  index_mapping[4][0] = 0U;
  index_mapping[4][1] = 1U;
  index_mapping[4][2] = 2U;
  index_mapping[4][3] = 3U;
  index_mapping[4][4] = 4U;
  index_mapping[4][5] = 5U;
  index_mapping[4][6] = 6U;
  index_mapping[4][7] = 7U;
  index_mapping[4][8] = 7U;
  index_mapping[4][9] = 8U;
  index_mapping[4][10] = 9U;
  index_mapping[4][11] = 10U;
  index_mapping[4][12] = 10U;
  index_mapping_internal_pa[0][0] = 0U;
  index_mapping_internal_pa[0][1] = 1U;
  index_mapping_internal_pa[0][2] = 2U;
  index_mapping_internal_pa[0][3] = 4U;
  index_mapping_internal_pa[0][4] = 6U;
  index_mapping_internal_pa[0][5] = 7U;
  index_mapping_internal_pa[0][6] = 9U;
  index_mapping_internal_pa[0][7] = 11U;
  index_mapping_internal_pa[0][8] = 12U;
  index_mapping_internal_pa[0][9] = 14U;
  index_mapping_internal_pa[0][10] = 15U;
  index_mapping_internal_pa[0][11] = 16U;
  index_mapping_internal_pa[0][12] = 16U;
  index_mapping_internal_pa[1][0] = 0U;
  index_mapping_internal_pa[1][1] = 2U;
  index_mapping_internal_pa[1][2] = 4U;
  index_mapping_internal_pa[1][3] = 5U;
  index_mapping_internal_pa[1][4] = 7U;
  index_mapping_internal_pa[1][5] = 10U;
  index_mapping_internal_pa[1][6] = 12U;
  index_mapping_internal_pa[1][7] = 14U;
  index_mapping_internal_pa[1][8] = 16U;
  index_mapping_internal_pa[1][9] = 18U;
  index_mapping_internal_pa[1][10] = 18U;
  index_mapping_internal_pa[1][11] = 18U;
  index_mapping_internal_pa[1][12] = 18U;
  index_mapping_internal_pa[2][0] = 0U;
  index_mapping_internal_pa[2][1] = 1U;
  index_mapping_internal_pa[2][2] = 2U;
  index_mapping_internal_pa[2][3] = 3U;
  index_mapping_internal_pa[2][4] = 5U;
  index_mapping_internal_pa[2][5] = 6U;
  index_mapping_internal_pa[2][6] = 8U;
  index_mapping_internal_pa[2][7] = 10U;
  index_mapping_internal_pa[2][8] = 11U;
  index_mapping_internal_pa[2][9] = 13U;
  index_mapping_internal_pa[2][10] = 14U;
  index_mapping_internal_pa[2][11] = 15U;
  index_mapping_internal_pa[2][12] = 15U;
  index_mapping_internal_pa[3][0] = 0U;
  index_mapping_internal_pa[3][1] = 2U;
  index_mapping_internal_pa[3][2] = 4U;
  index_mapping_internal_pa[3][3] = 5U;
  index_mapping_internal_pa[3][4] = 7U;
  index_mapping_internal_pa[3][5] = 10U;
  index_mapping_internal_pa[3][6] = 12U;
  index_mapping_internal_pa[3][7] = 14U;
  index_mapping_internal_pa[3][8] = 16U;
  index_mapping_internal_pa[3][9] = 18U;
  index_mapping_internal_pa[3][10] = 18U;
  index_mapping_internal_pa[3][11] = 18U;
  index_mapping_internal_pa[3][12] = 18U;
  index_mapping_internal_pa[4][0] = 0U;
  index_mapping_internal_pa[4][1] = 1U;
  index_mapping_internal_pa[4][2] = 2U;
  index_mapping_internal_pa[4][3] = 4U;
  index_mapping_internal_pa[4][4] = 6U;
  index_mapping_internal_pa[4][5] = 7U;
  index_mapping_internal_pa[4][6] = 9U;
  index_mapping_internal_pa[4][7] = 11U;
  index_mapping_internal_pa[4][8] = 12U;
  index_mapping_internal_pa[4][9] = 14U;
  index_mapping_internal_pa[4][10] = 15U;
  index_mapping_internal_pa[4][11] = 16U;
  index_mapping_internal_pa[4][12] = 16U;
  index_mapping_internal_pa[5][0] = 0U;
  index_mapping_internal_pa[5][1] = 2U;
  index_mapping_internal_pa[5][2] = 4U;
  index_mapping_internal_pa[5][3] = 5U;
  index_mapping_internal_pa[5][4] = 7U;
  index_mapping_internal_pa[5][5] = 10U;
  index_mapping_internal_pa[5][6] = 13U;
  index_mapping_internal_pa[5][7] = 16U;
  index_mapping_internal_pa[5][8] = 16U;
  index_mapping_internal_pa[5][9] = 18U;
  index_mapping_internal_pa[5][10] = 18U;
  index_mapping_internal_pa[5][11] = 18U;
  index_mapping_internal_pa[5][12] = 18U;
  index_mapping_internal_pa[6][0] = 0U;
  index_mapping_internal_pa[6][1] = 1U;
  index_mapping_internal_pa[6][2] = 2U;
  index_mapping_internal_pa[6][3] = 3U;
  index_mapping_internal_pa[6][4] = 5U;
  index_mapping_internal_pa[6][5] = 6U;
  index_mapping_internal_pa[6][6] = 8U;
  index_mapping_internal_pa[6][7] = 9U;
  index_mapping_internal_pa[6][8] = 10U;
  index_mapping_internal_pa[6][9] = 12U;
  index_mapping_internal_pa[6][10] = 13U;
  index_mapping_internal_pa[6][11] = 14U;
  index_mapping_internal_pa[6][12] = 14U;
  index_mapping_internal_pa[7][0] = 0U;
  index_mapping_internal_pa[7][1] = 2U;
  index_mapping_internal_pa[7][2] = 4U;
  index_mapping_internal_pa[7][3] = 5U;
  index_mapping_internal_pa[7][4] = 7U;
  index_mapping_internal_pa[7][5] = 10U;
  index_mapping_internal_pa[7][6] = 13U;
  index_mapping_internal_pa[7][7] = 16U;
  index_mapping_internal_pa[7][8] = 16U;
  index_mapping_internal_pa[7][9] = 18U;
  index_mapping_internal_pa[7][10] = 18U;
  index_mapping_internal_pa[7][11] = 18U;
  index_mapping_internal_pa[7][12] = 18U;
  rtlpriv->dm.txpower_trackinginit = 1;
  tmp___2 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                             0L);
  }
  if (tmp___2 != 0L) {
    {
    tmp___3 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___3 != 0L) {
      {
      tmp___0 = preempt_count();
      tmp___1 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> \n", "rtl92d_dm_txpower_tracking_callback_thermalmeter",
             (unsigned long )tmp___1 & 2096896UL, ((unsigned long )tmp___0 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  {
  tmp___4 = rtl_get_rfreg(hw, 0, 66U, 63488U);
  thermalvalue = (unsigned char )tmp___4;
  tmp___7 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                             0L);
  }
  if (tmp___7 != 0L) {
    {
    tmp___8 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___8 != 0L) {
      {
      tmp___5 = preempt_count();
      tmp___6 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermalmeter 0x%x\n",
             "rtl92d_dm_txpower_tracking_callback_thermalmeter", (unsigned long )tmp___6 & 2096896UL,
             ((unsigned long )tmp___5 & 0xffffffffffdfffffUL) != 0UL, (int )thermalvalue,
             (int )rtlpriv->dm.thermalvalue, (int )rtlefuse->eeprom_thermalmeter);
      }
    } else {
    }
  } else {
  }
  {
  rtl92d_phy_ap_calibrate(hw, (int )((char )((int )thermalvalue - (int )rtlefuse->eeprom_thermalmeter)));
  }
  if ((int )is2t) {
    rf = 2U;
  } else {
    rf = 1U;
  }
  if ((unsigned int )thermalvalue != 0U) {
    {
    tmp___9 = rtl_get_bbreg(hw, 3200U, 4294967295U);
    ele_d = (long )tmp___9 & 4290772992L;
    i = 0;
    }
    goto ldv_50716;
    ldv_50715: ;
    if (ele_d == ((long )ofdmswing_table[i] & 4290772992L)) {
      {
      ofdm_index_old[0] = (unsigned char )i;
      tmp___12 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                                  0L);
      }
      if (tmp___12 != 0L) {
        {
        tmp___13 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___13 != 0L) {
          {
          tmp___10 = preempt_count();
          tmp___11 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> Initial pathA ele_d reg0x%x = 0x%lx, ofdm_index=0x%x\n",
                 "rtl92d_dm_txpower_tracking_callback_thermalmeter", (unsigned long )tmp___11 & 2096896UL,
                 ((unsigned long )tmp___10 & 0xffffffffffdfffffUL) != 0UL, 3200, ele_d,
                 (int )ofdm_index_old[0]);
          }
        } else {
        }
      } else {
      }
      goto ldv_50714;
    } else {
    }
    i = i + 1;
    ldv_50716: ;
    if (i <= 42) {
      goto ldv_50715;
    } else {
    }
    ldv_50714: ;
    if ((int )is2t) {
      {
      tmp___14 = rtl_get_bbreg(hw, 3208U, 4294967295U);
      ele_d = (long )tmp___14 & 4290772992L;
      i = 0;
      }
      goto ldv_50719;
      ldv_50718: ;
      if (ele_d == ((long )ofdmswing_table[i] & 4290772992L)) {
        {
        ofdm_index_old[1] = (unsigned char )i;
        tmp___17 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                                    0L);
        }
        if (tmp___17 != 0L) {
          {
          tmp___18 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
          }
          if (tmp___18 != 0L) {
            {
            tmp___15 = preempt_count();
            tmp___16 = preempt_count();
            printk("\017rtl8192de:%s():<%lx-%x> Initial pathB ele_d reg 0x%x = 0x%lx, ofdm_index = 0x%x\n",
                   "rtl92d_dm_txpower_tracking_callback_thermalmeter", (unsigned long )tmp___16 & 2096896UL,
                   ((unsigned long )tmp___15 & 0xffffffffffdfffffUL) != 0UL, 3208,
                   ele_d, (int )ofdm_index_old[1]);
            }
          } else {
          }
        } else {
        }
        goto ldv_50717;
      } else {
      }
      i = i + 1;
      ldv_50719: ;
      if (i <= 42) {
        goto ldv_50718;
      } else {
      }
      ldv_50717: ;
    } else {
    }
    if ((unsigned int )rtlhal->current_bandtype == 0U) {
      {
      rtl92d_bandtype_2_4G(hw, & temp_cck, (u8 *)(& cck_index_old));
      }
    } else {
      temp_cck = 151917335L;
      cck_index_old = 12;
    }
    if ((unsigned int )rtlpriv->dm.thermalvalue == 0U) {
      rtlpriv->dm.thermalvalue = rtlefuse->eeprom_thermalmeter;
      rtlpriv->dm.thermalvalue_lck = thermalvalue;
      rtlpriv->dm.thermalvalue_iqk = thermalvalue;
      rtlpriv->dm.thermalvalue_rxgain = rtlefuse->eeprom_thermalmeter;
      i = 0;
      goto ldv_50721;
      ldv_50720:
      rtlpriv->dm.ofdm_index[i] = (char )ofdm_index_old[i];
      i = i + 1;
      ldv_50721: ;
      if (i < (int )rf) {
        goto ldv_50720;
      } else {
      }
      rtlpriv->dm.cck_index = (char )cck_index_old;
    } else {
    }
    if ((int )rtlhal->reloadtxpowerindex) {
      i = 0;
      goto ldv_50724;
      ldv_50723:
      rtlpriv->dm.ofdm_index[i] = (char )ofdm_index_old[i];
      i = i + 1;
      ldv_50724: ;
      if (i < (int )rf) {
        goto ldv_50723;
      } else {
      }
      {
      rtlpriv->dm.cck_index = (char )cck_index_old;
      tmp___21 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                                  0L);
      }
      if (tmp___21 != 0L) {
        {
        tmp___22 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___22 != 0L) {
          {
          tmp___19 = preempt_count();
          tmp___20 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> reload ofdm index for band switch\n",
                 "rtl92d_dm_txpower_tracking_callback_thermalmeter", (unsigned long )tmp___20 & 2096896UL,
                 ((unsigned long )tmp___19 & 0xffffffffffdfffffUL) != 0UL);
          }
        } else {
        }
      } else {
      }
    } else {
    }
    rtlpriv->dm.thermalvalue_avg[(int )rtlpriv->dm.thermalvalue_avg_index] = thermalvalue;
    rtlpriv->dm.thermalvalue_avg_index = (u8 )((int )rtlpriv->dm.thermalvalue_avg_index + 1);
    if ((unsigned int )rtlpriv->dm.thermalvalue_avg_index == 8U) {
      rtlpriv->dm.thermalvalue_avg_index = 0U;
    } else {
    }
    i = 0;
    goto ldv_50727;
    ldv_50726: ;
    if ((unsigned int )rtlpriv->dm.thermalvalue_avg[i] != 0U) {
      thermalvalue_avg = thermalvalue_avg + (u32 )rtlpriv->dm.thermalvalue_avg[i];
      thermalvalue_avg_count = (u8 )((int )thermalvalue_avg_count + 1);
    } else {
    }
    i = i + 1;
    ldv_50727: ;
    if (i <= 7) {
      goto ldv_50726;
    } else {
    }
    if ((unsigned int )thermalvalue_avg_count != 0U) {
      thermalvalue = (unsigned char )(thermalvalue_avg / (u32 )thermalvalue_avg_count);
    } else {
    }
    if ((int )rtlhal->reloadtxpowerindex) {
      delta = (int )thermalvalue > (int )rtlefuse->eeprom_thermalmeter ? (int )thermalvalue - (int )rtlefuse->eeprom_thermalmeter : (int )rtlefuse->eeprom_thermalmeter - (int )thermalvalue;
      rtlhal->reloadtxpowerindex = 0;
      rtlpriv->dm.done_txpower = 0;
    } else
    if ((int )rtlpriv->dm.done_txpower) {
      delta = (int )thermalvalue > (int )rtlpriv->dm.thermalvalue ? (int )thermalvalue - (int )rtlpriv->dm.thermalvalue : (int )rtlpriv->dm.thermalvalue - (int )thermalvalue;
    } else {
      delta = (int )thermalvalue > (int )rtlefuse->eeprom_thermalmeter ? (int )thermalvalue - (int )rtlefuse->eeprom_thermalmeter : (int )rtlefuse->eeprom_thermalmeter - (int )thermalvalue;
    }
    {
    delta_lck = (int )thermalvalue > (int )rtlpriv->dm.thermalvalue_lck ? (int )thermalvalue - (int )rtlpriv->dm.thermalvalue_lck : (int )rtlpriv->dm.thermalvalue_lck - (int )thermalvalue;
    delta_iqk = (int )thermalvalue > (int )rtlpriv->dm.thermalvalue_iqk ? (int )thermalvalue - (int )rtlpriv->dm.thermalvalue_iqk : (int )rtlpriv->dm.thermalvalue_iqk - (int )thermalvalue;
    delta_rxgain = (int )thermalvalue > (int )rtlpriv->dm.thermalvalue_rxgain ? (int )thermalvalue - (int )rtlpriv->dm.thermalvalue_rxgain : (int )rtlpriv->dm.thermalvalue_rxgain - (int )thermalvalue;
    tmp___25 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                                0L);
    }
    if (tmp___25 != 0L) {
      {
      tmp___26 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___26 != 0L) {
        {
        tmp___23 = preempt_count();
        tmp___24 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermalmeter 0x%x delta 0x%x delta_lck 0x%x delta_iqk 0x%x\n",
               "rtl92d_dm_txpower_tracking_callback_thermalmeter", (unsigned long )tmp___24 & 2096896UL,
               ((unsigned long )tmp___23 & 0xffffffffffdfffffUL) != 0UL, (int )thermalvalue,
               (int )rtlpriv->dm.thermalvalue, (int )rtlefuse->eeprom_thermalmeter,
               (int )delta, (int )delta_lck, (int )delta_iqk);
        }
      } else {
      }
    } else {
    }
    if ((int )delta_lck > (int )rtlefuse->delta_lck && (unsigned int )rtlefuse->delta_lck != 0U) {
      {
      rtlpriv->dm.thermalvalue_lck = thermalvalue;
      rtl92d_phy_lc_calibrate(hw);
      }
    } else {
    }
    if ((unsigned int )delta != 0U && (unsigned int )rtlpriv->dm.txpower_track_control != 0U) {
      rtlpriv->dm.done_txpower = 1;
      delta = (int )thermalvalue > (int )rtlefuse->eeprom_thermalmeter ? (int )thermalvalue - (int )rtlefuse->eeprom_thermalmeter : (int )rtlefuse->eeprom_thermalmeter - (int )thermalvalue;
      if ((unsigned int )rtlhal->current_bandtype == 0U) {
        offset = 4U;
        if ((unsigned int )delta > 12U) {
          index = index_mapping[(int )offset][12];
        } else {
          index = index_mapping[(int )offset][(int )delta];
        }
        if ((int )thermalvalue > (int )rtlpriv->dm.thermalvalue) {
          i = 0;
          goto ldv_50730;
          ldv_50729:
          ofdm_index[i] = (int )ofdm_index[i] - (int )delta;
          i = i + 1;
          ldv_50730: ;
          if (i < (int )rf) {
            goto ldv_50729;
          } else {
          }
          cck_index = (s8 )((int )((unsigned char )cck_index) - (int )delta);
        } else {
          i = 0;
          goto ldv_50733;
          ldv_50732:
          ofdm_index[i] = (int )ofdm_index[i] + (int )index;
          i = i + 1;
          ldv_50733: ;
          if (i < (int )rf) {
            goto ldv_50732;
          } else {
          }
          cck_index = (s8 )((int )((unsigned char )cck_index) + (int )index);
        }
      } else
      if ((unsigned int )rtlhal->current_bandtype == 1U) {
        {
        rtl92d_bandtype_5G(rtlhal, (u8 *)(& ofdm_index), & internal_pa, (int )thermalvalue,
                           (int )delta, (int )rf, rtlefuse, rtlpriv, rtlphy, (u8 (*)[13])(& index_mapping),
                           (u8 (*)[13])(& index_mapping_internal_pa));
        }
      } else {
      }
      if ((int )is2t) {
        {
        tmp___29 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                                    0L);
        }
        if (tmp___29 != 0L) {
          {
          tmp___30 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
          }
          if (tmp___30 != 0L) {
            {
            tmp___27 = preempt_count();
            tmp___28 = preempt_count();
            printk("\017rtl8192de:%s():<%lx-%x> temp OFDM_A_index=0x%x, OFDM_B_index = 0x%x,cck_index=0x%x\n",
                   "rtl92d_dm_txpower_tracking_callback_thermalmeter", (unsigned long )tmp___28 & 2096896UL,
                   ((unsigned long )tmp___27 & 0xffffffffffdfffffUL) != 0UL, (int )rtlpriv->dm.ofdm_index[0],
                   (int )rtlpriv->dm.ofdm_index[1], (int )rtlpriv->dm.cck_index);
            }
          } else {
          }
        } else {
        }
      } else {
        {
        tmp___33 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                                    0L);
        }
        if (tmp___33 != 0L) {
          {
          tmp___34 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
          }
          if (tmp___34 != 0L) {
            {
            tmp___31 = preempt_count();
            tmp___32 = preempt_count();
            printk("\017rtl8192de:%s():<%lx-%x> temp OFDM_A_index=0x%x,cck_index = 0x%x\n",
                   "rtl92d_dm_txpower_tracking_callback_thermalmeter", (unsigned long )tmp___32 & 2096896UL,
                   ((unsigned long )tmp___31 & 0xffffffffffdfffffUL) != 0UL, (int )rtlpriv->dm.ofdm_index[0],
                   (int )rtlpriv->dm.cck_index);
            }
          } else {
          }
        } else {
        }
      }
      i = 0;
      goto ldv_50736;
      ldv_50735: ;
      if ((unsigned int )ofdm_index[i] > 42U) {
        ofdm_index[i] = 42U;
      } else
      if ((int )ofdm_index[i] < (int )ofdm_min_index) {
        ofdm_index[i] = ofdm_min_index;
      } else {
      }
      i = i + 1;
      ldv_50736: ;
      if (i < (int )rf) {
        goto ldv_50735;
      } else {
      }
      if ((unsigned int )rtlhal->current_bandtype == 0U) {
        if ((int )cck_index > 32) {
          cck_index = 32;
        } else
        if ((int )internal_pa || (unsigned int )rtlhal->current_bandtype == 0U) {
          if ((int )ofdm_index[i] < (int )ofdm_min_index_internal_pa) {
            ofdm_index[i] = ofdm_min_index_internal_pa;
          } else {
          }
        } else
        if ((int )cck_index < 0) {
          cck_index = 0;
        } else {
        }
      } else {
      }
      if ((int )is2t) {
        {
        tmp___37 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                                    0L);
        }
        if (tmp___37 != 0L) {
          {
          tmp___38 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
          }
          if (tmp___38 != 0L) {
            {
            tmp___35 = preempt_count();
            tmp___36 = preempt_count();
            printk("\017rtl8192de:%s():<%lx-%x> new OFDM_A_index=0x%x, OFDM_B_index = 0x%x, cck_index=0x%x\n",
                   "rtl92d_dm_txpower_tracking_callback_thermalmeter", (unsigned long )tmp___36 & 2096896UL,
                   ((unsigned long )tmp___35 & 0xffffffffffdfffffUL) != 0UL, (int )ofdm_index[0],
                   (int )ofdm_index[1], (int )cck_index);
            }
          } else {
          }
        } else {
        }
      } else {
        {
        tmp___41 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                                    0L);
        }
        if (tmp___41 != 0L) {
          {
          tmp___42 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
          }
          if (tmp___42 != 0L) {
            {
            tmp___39 = preempt_count();
            tmp___40 = preempt_count();
            printk("\017rtl8192de:%s():<%lx-%x> new OFDM_A_index=0x%x,cck_index = 0x%x\n",
                   "rtl92d_dm_txpower_tracking_callback_thermalmeter", (unsigned long )tmp___40 & 2096896UL,
                   ((unsigned long )tmp___39 & 0xffffffffffdfffffUL) != 0UL, (int )ofdm_index[0],
                   (int )cck_index);
            }
          } else {
          }
        } else {
        }
      }
      ele_d = (long )((unsigned int )ofdmswing_table[(int )ofdm_index[0]] >> 22);
      val_x = rtlphy->iqk_matrix[(int )indexforchannel].value[0][0];
      val_y = rtlphy->iqk_matrix[(int )indexforchannel].value[0][1];
      if (val_x != 0L) {
        if ((val_x & 512L) != 0L) {
          val_x = val_x | 4294966272L;
        } else {
        }
        ele_a = (val_x * ele_d >> 8) & 1023L;
        if ((val_y & 512L) != 0L) {
          val_y = val_y | 4294966272L;
        } else {
        }
        {
        ele_c = (val_y * ele_d >> 8) & 1023L;
        value32 = ((ele_d << 22) | ((ele_c & 63L) << 16)) | ele_a;
        rtl_set_bbreg(hw, 3200U, 4294967295U, (u32 )value32);
        value32 = (ele_c & 960L) >> 6;
        rtl_set_bbreg(hw, 3220U, 4026531840U, (u32 )value32);
        value32 = (val_x * ele_d >> 7) & 1L;
        rtl_set_bbreg(hw, 3148U, 16777216U, (u32 )value32);
        }
      } else {
        {
        rtl_set_bbreg(hw, 3200U, 4294967295U, ofdmswing_table[(int )ofdm_index[0]]);
        rtl_set_bbreg(hw, 3220U, 4026531840U, 0U);
        rtl_set_bbreg(hw, 3148U, 16777216U, 0U);
        }
      }
      {
      tmp___45 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                                  0L);
      }
      if (tmp___45 != 0L) {
        {
        tmp___46 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___46 != 0L) {
          {
          tmp___43 = preempt_count();
          tmp___44 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> TxPwrTracking for interface %d path A: X = 0x%lx, Y = 0x%lx ele_A = 0x%lx ele_C = 0x%lx ele_D = 0x%lx 0xe94 = 0x%lx 0xe9c = 0x%lx\n",
                 "rtl92d_dm_txpower_tracking_callback_thermalmeter", (unsigned long )tmp___44 & 2096896UL,
                 ((unsigned long )tmp___43 & 0xffffffffffdfffffUL) != 0UL, rtlhal->interfaceindex,
                 val_x, val_y, ele_a, ele_c, ele_d, val_x, val_y);
          }
        } else {
        }
      } else {
      }
      if ((int )cck_index > 32) {
        cck_index = 32;
      } else {
      }
      if ((int )cck_index < 0) {
        cck_index = 0;
      } else {
      }
      if ((unsigned int )rtlhal->current_bandtype == 0U) {
        if (! rtlpriv->dm.cck_inch14) {
          {
          rtl_write_byte(rtlpriv, 2594U, (int )cckswing_table_ch1ch13[(int )((unsigned char )cck_index)][0]);
          rtl_write_byte(rtlpriv, 2595U, (int )cckswing_table_ch1ch13[(int )((unsigned char )cck_index)][1]);
          rtl_write_byte(rtlpriv, 2596U, (int )cckswing_table_ch1ch13[(int )((unsigned char )cck_index)][2]);
          rtl_write_byte(rtlpriv, 2597U, (int )cckswing_table_ch1ch13[(int )((unsigned char )cck_index)][3]);
          rtl_write_byte(rtlpriv, 2598U, (int )cckswing_table_ch1ch13[(int )((unsigned char )cck_index)][4]);
          rtl_write_byte(rtlpriv, 2599U, (int )cckswing_table_ch1ch13[(int )((unsigned char )cck_index)][5]);
          rtl_write_byte(rtlpriv, 2600U, (int )cckswing_table_ch1ch13[(int )((unsigned char )cck_index)][6]);
          rtl_write_byte(rtlpriv, 2601U, (int )cckswing_table_ch1ch13[(int )((unsigned char )cck_index)][7]);
          }
        } else {
          {
          rtl_write_byte(rtlpriv, 2594U, (int )cckswing_table_ch14[(int )((unsigned char )cck_index)][0]);
          rtl_write_byte(rtlpriv, 2595U, (int )cckswing_table_ch14[(int )((unsigned char )cck_index)][1]);
          rtl_write_byte(rtlpriv, 2596U, (int )cckswing_table_ch14[(int )((unsigned char )cck_index)][2]);
          rtl_write_byte(rtlpriv, 2597U, (int )cckswing_table_ch14[(int )((unsigned char )cck_index)][3]);
          rtl_write_byte(rtlpriv, 2598U, (int )cckswing_table_ch14[(int )((unsigned char )cck_index)][4]);
          rtl_write_byte(rtlpriv, 2599U, (int )cckswing_table_ch14[(int )((unsigned char )cck_index)][5]);
          rtl_write_byte(rtlpriv, 2600U, (int )cckswing_table_ch14[(int )((unsigned char )cck_index)][6]);
          rtl_write_byte(rtlpriv, 2601U, (int )cckswing_table_ch14[(int )((unsigned char )cck_index)][7]);
          }
        }
      } else {
      }
      if ((int )is2t) {
        ele_d = (long )((unsigned int )ofdmswing_table[(int )ofdm_index[1]] >> 22);
        val_x = rtlphy->iqk_matrix[(int )indexforchannel].value[0][4];
        val_y = rtlphy->iqk_matrix[(int )indexforchannel].value[0][5];
        if (val_x != 0L) {
          if ((val_x & 512L) != 0L) {
            val_x = val_x | 4294966272L;
          } else {
          }
          ele_a = (val_x * ele_d >> 8) & 1023L;
          if ((val_y & 512L) != 0L) {
            val_y = val_y | 4294966272L;
          } else {
          }
          {
          ele_c = (val_y * ele_d >> 8) & 1023L;
          value32 = ((ele_d << 22) | ((ele_c & 63L) << 16)) | ele_a;
          rtl_set_bbreg(hw, 3208U, 4294967295U, (u32 )value32);
          value32 = (ele_c & 960L) >> 6;
          rtl_set_bbreg(hw, 3228U, 4026531840U, (u32 )value32);
          value32 = (val_x * ele_d >> 7) & 1L;
          rtl_set_bbreg(hw, 3148U, 268435456U, (u32 )value32);
          }
        } else {
          {
          rtl_set_bbreg(hw, 3208U, 4294967295U, ofdmswing_table[(int )ofdm_index[1]]);
          rtl_set_bbreg(hw, 3228U, 4026531840U, 0U);
          rtl_set_bbreg(hw, 3148U, 268435456U, 0U);
          }
        }
        {
        tmp___49 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                                    0L);
        }
        if (tmp___49 != 0L) {
          {
          tmp___50 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
          }
          if (tmp___50 != 0L) {
            {
            tmp___47 = preempt_count();
            tmp___48 = preempt_count();
            printk("\017rtl8192de:%s():<%lx-%x> TxPwrTracking path B: X = 0x%lx, Y = 0x%lx ele_A = 0x%lx ele_C = 0x%lx ele_D = 0x%lx 0xeb4 = 0x%lx 0xebc = 0x%lx\n",
                   "rtl92d_dm_txpower_tracking_callback_thermalmeter", (unsigned long )tmp___48 & 2096896UL,
                   ((unsigned long )tmp___47 & 0xffffffffffdfffffUL) != 0UL, val_x,
                   val_y, ele_a, ele_c, ele_d, val_x, val_y);
            }
          } else {
          }
        } else {
        }
      } else {
      }
      {
      tmp___56 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                                  0L);
      }
      if (tmp___56 != 0L) {
        {
        tmp___57 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___57 != 0L) {
          {
          tmp___51 = rtl_get_rfreg(hw, 0, 36U, 1048575U);
          tmp___52 = rtl_get_bbreg(hw, 3220U, 4294967295U);
          tmp___53 = rtl_get_bbreg(hw, 3200U, 4294967295U);
          tmp___54 = preempt_count();
          tmp___55 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> TxPwrTracking 0xc80 = 0x%x, 0xc94 = 0x%x RF 0x24 = 0x%x\n",
                 "rtl92d_dm_txpower_tracking_callback_thermalmeter", (unsigned long )tmp___55 & 2096896UL,
                 ((unsigned long )tmp___54 & 0xffffffffffdfffffUL) != 0UL, tmp___53,
                 tmp___52, tmp___51);
          }
        } else {
        }
      } else {
      }
    } else {
    }
    if ((int )delta_iqk > (int )rtlefuse->delta_iqk && (unsigned int )rtlefuse->delta_iqk != 0U) {
      {
      rtl92d_phy_reset_iqk_result(hw);
      rtlpriv->dm.thermalvalue_iqk = thermalvalue;
      rtl92d_phy_iq_calibrate(hw);
      }
    } else {
    }
    if (((unsigned int )delta_rxgain != 0U && (unsigned int )rtlhal->current_bandtype == 1U) && (int )thermalvalue <= (int )rtlefuse->eeprom_thermalmeter) {
      {
      rtlpriv->dm.thermalvalue_rxgain = thermalvalue;
      rtl92d_dm_rxgain_tracking_thermalmeter(hw);
      }
    } else {
    }
    if ((unsigned int )rtlpriv->dm.txpower_track_control != 0U) {
      rtlpriv->dm.thermalvalue = thermalvalue;
    } else {
    }
  } else {
  }
  {
  tmp___60 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                              0L);
  }
  if (tmp___60 != 0L) {
    {
    tmp___61 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___61 != 0L) {
      {
      tmp___58 = preempt_count();
      tmp___59 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <===\n", "rtl92d_dm_txpower_tracking_callback_thermalmeter",
             (unsigned long )tmp___59 & 2096896UL, ((unsigned long )tmp___58 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void rtl92d_dm_initialize_txpower_tracking(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpriv->dm.txpower_tracking = 1;
  rtlpriv->dm.txpower_trackinginit = 0;
  rtlpriv->dm.txpower_track_control = 1U;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> pMgntInfo->txpower_tracking = %d\n", "rtl92d_dm_initialize_txpower_tracking",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             (int )rtlpriv->dm.txpower_tracking);
      }
    } else {
    }
  } else {
  }
  return;
}
}
void rtl92d_dm_check_txpower_tracking_thermal_meter(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  u8 tm_trigger ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  if (! rtlpriv->dm.txpower_tracking) {
    return;
  } else {
  }
  if ((unsigned int )tm_trigger == 0U) {
    {
    rtl_set_rfreg(hw, 0, 66U, 196608U, 3U);
    tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp = preempt_count();
        tmp___0 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Trigger 92S Thermal Meter!!\n", "rtl92d_dm_check_txpower_tracking_thermal_meter",
               (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    tm_trigger = 1U;
    return;
  } else {
    {
    tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 131072ULL) != 0ULL,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Schedule TxPowerTracking direct call!!\n",
               "rtl92d_dm_check_txpower_tracking_thermal_meter", (unsigned long )tmp___4 & 2096896UL,
               ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    {
    rtl92d_dm_txpower_tracking_callback_thermalmeter(hw);
    tm_trigger = 0U;
    }
  }
  return;
}
}
void rtl92d_dm_init_rate_adaptive_mask(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rate_adaptive *ra ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  ra = & rtlpriv->ra;
  ra->ratr_state = 0U;
  ra->pre_ratr_state = 0U;
  if ((unsigned int )rtlpriv->dm.dm_type == 1U) {
    rtlpriv->dm.useramask = 1;
  } else {
    rtlpriv->dm.useramask = 0;
  }
  return;
}
}
void rtl92d_dm_init(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpriv->dm.dm_type = 1U;
  rtl92d_dm_diginit(hw);
  rtl92d_dm_init_dynamic_txpower(hw);
  rtl92d_dm_init_edca_turbo(hw);
  rtl92d_dm_init_rate_adaptive_mask(hw);
  rtl92d_dm_initialize_txpower_tracking(hw);
  }
  return;
}
}
void rtl92d_dm_watchdog(struct ieee80211_hw *hw )
{
  struct rtl_ps_ctl *ppsc ;
  bool fw_current_inpsmode ;
  bool fwps_awake ;
  {
  ppsc = & ((struct rtl_priv *)hw->priv)->psc;
  fw_current_inpsmode = 0;
  fwps_awake = 1;
  if (((unsigned int )ppsc->rfpwr_state == 0U && (! fw_current_inpsmode && (int )fwps_awake)) && ! ppsc->rfchange_inprogress) {
    {
    rtl92d_dm_pwdb_monitor(hw);
    rtl92d_dm_false_alarm_counter_statistics(hw);
    rtl92d_dm_find_minimum_rssi(hw);
    rtl92d_dm_dig(hw);
    rtl92d_dm_dynamic_txpower(hw);
    rtl92d_dm_check_edca_turbo(hw);
    }
  } else {
  }
  return;
}
}
extern void print_hex_dump(char const * , char const * , int , int , int ,
                           void const * , size_t , bool ) ;
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
  goto ldv_3152;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3152;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3152;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3152;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3152: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void kfree_skb(struct sk_buff * ) ;
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
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
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
extern void __const_udelay(unsigned long ) ;
__inline static u32 rtl_read_dword(struct rtl_priv *rtlpriv , u32 addr )
{
  u32 tmp ;
  {
  {
  tmp = (*(rtlpriv->io.read32_sync))(rtlpriv, addr);
  }
  return (tmp);
}
}
int rtl92d_download_fw(struct ieee80211_hw *hw ) ;
void rtl92d_firmware_selfreset(struct ieee80211_hw *hw ) ;
void rtl92d_set_fw_pwrmode_cmd(struct ieee80211_hw *hw , u8 mode ) ;
void rtl92d_set_fw_rsvdpagepkt(struct ieee80211_hw *hw , bool dl_finished ) ;
void rtl92d_set_fw_joinbss_report_cmd(struct ieee80211_hw *hw , u8 mstatus ) ;
spinlock_t globalmutex_for_fwdownload ;
static bool _rtl92d_is_fw_downloaded(struct rtl_priv *rtlpriv )
{
  u32 tmp ;
  {
  {
  tmp = rtl_read_dword(rtlpriv, 128U);
  }
  return (((unsigned long )tmp & 2UL) != 0UL);
}
}
static void _rtl92d_enable_fw_download(struct ieee80211_hw *hw , bool enable )
{
  struct rtl_priv *rtlpriv ;
  u8 tmp ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  if ((int )enable) {
    {
    tmp = rtl_read_byte(rtlpriv, 3U);
    rtl_write_byte(rtlpriv, 3U, (int )((unsigned int )tmp | 4U));
    tmp = rtl_read_byte(rtlpriv, 128U);
    rtl_write_byte(rtlpriv, 128U, (int )((unsigned int )tmp | 1U));
    tmp = rtl_read_byte(rtlpriv, 130U);
    rtl_write_byte(rtlpriv, 130U, (int )tmp & 247);
    }
  } else {
    {
    tmp = rtl_read_byte(rtlpriv, 128U);
    rtl_write_byte(rtlpriv, 128U, (int )tmp & 254);
    }
  }
  return;
}
}
static void _rtl92d_fw_block_write(struct ieee80211_hw *hw , u8 const *buffer ,
                                   u32 size )
{
  struct rtl_priv *rtlpriv ;
  u32 blocksize ;
  u8 *bufferptr ;
  u32 *pu4BytePtr ;
  u32 i ;
  u32 offset ;
  u32 blockCount ;
  u32 remainSize ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  blocksize = 4U;
  bufferptr = (u8 *)buffer;
  pu4BytePtr = (u32 *)buffer;
  blockCount = size / blocksize;
  remainSize = size % blocksize;
  i = 0U;
  goto ldv_50511;
  ldv_50510:
  {
  offset = i * blocksize;
  rtl_write_dword(rtlpriv, offset + 4096U, *(pu4BytePtr + (unsigned long )i));
  i = i + 1U;
  }
  ldv_50511: ;
  if (i < blockCount) {
    goto ldv_50510;
  } else {
  }
  if (remainSize != 0U) {
    offset = blockCount * blocksize;
    bufferptr = bufferptr + (unsigned long )offset;
    i = 0U;
    goto ldv_50514;
    ldv_50513:
    {
    rtl_write_byte(rtlpriv, (offset + i) + 4096U, (int )*(bufferptr + (unsigned long )i));
    i = i + 1U;
    }
    ldv_50514: ;
    if (i < remainSize) {
      goto ldv_50513;
    } else {
    }
  } else {
  }
  return;
}
}
static void _rtl92d_fw_page_write(struct ieee80211_hw *hw , u32 page , u8 const *buffer ,
                                  u32 size )
{
  struct rtl_priv *rtlpriv ;
  u8 value8 ;
  u8 u8page ;
  u8 tmp ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  u8page = (unsigned int )((unsigned char )page) & 7U;
  tmp = rtl_read_byte(rtlpriv, 130U);
  value8 = (u8 )(((int )((signed char )tmp) & -8) | (int )((signed char )u8page));
  rtl_write_byte(rtlpriv, 130U, (int )value8);
  _rtl92d_fw_block_write(hw, buffer, size);
  }
  return;
}
}
static void _rtl92d_fill_dummy(u8 *pfwbuf , u32 *pfwlen )
{
  u32 fwlen ;
  u8 remain ;
  {
  fwlen = *pfwlen;
  remain = (unsigned int )((unsigned char )fwlen) & 3U;
  remain = (unsigned int )remain != 0U ? 4U - (unsigned int )remain : 0U;
  goto ldv_50532;
  ldv_50531:
  *(pfwbuf + (unsigned long )fwlen) = 0U;
  fwlen = fwlen + 1U;
  remain = (u8 )((int )remain - 1);
  ldv_50532: ;
  if ((unsigned int )remain != 0U) {
    goto ldv_50531;
  } else {
  }
  *pfwlen = fwlen;
  return;
}
}
static void _rtl92d_write_fw(struct ieee80211_hw *hw , enum version_8192d version ,
                             u8 *buffer , u32 size )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 *bufferPtr ;
  u32 pagenums ;
  u32 remainSize ;
  u32 page ;
  u32 offset ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  bufferPtr = buffer;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 2ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> FW size is %d bytes,\n", "_rtl92d_write_fw",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             size);
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )rtlhal->hw_type == 6U) {
    {
    _rtl92d_fill_dummy(bufferPtr, & size);
    }
  } else {
  }
  pagenums = size / 4096U;
  remainSize = size & 4095U;
  if (pagenums > 8U) {
    {
    tmp___5 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Page numbers should not greater then 8\n",
               "_rtl92d_write_fw", (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  page = 0U;
  goto ldv_50549;
  ldv_50548:
  {
  offset = page * 4096U;
  _rtl92d_fw_page_write(hw, page, (u8 const *)bufferPtr + (unsigned long )offset,
                        4096U);
  page = page + 1U;
  }
  ldv_50549: ;
  if (page < pagenums) {
    goto ldv_50548;
  } else {
  }
  if (remainSize != 0U) {
    {
    offset = pagenums * 4096U;
    page = pagenums;
    _rtl92d_fw_page_write(hw, page, (u8 const *)bufferPtr + (unsigned long )offset,
                          remainSize);
    }
  } else {
  }
  return;
}
}
static int _rtl92d_fw_free_to_go(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  u32 counter ;
  u32 value32 ;
  u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  counter = 0U;
  ldv_50557:
  {
  value32 = rtl_read_dword(rtlpriv, 128U);
  tmp = counter;
  counter = counter + 1U;
  }
  if (tmp <= 999U && ((unsigned long )value32 & 4UL) == 0UL) {
    goto ldv_50557;
  } else {
  }
  if (counter > 999U) {
    {
    tmp___2 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp___3 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___3 != 0L) {
        {
        tmp___0 = preempt_count();
        tmp___1 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> chksum report faill ! REG_MCUFWDL:0x%08x\n",
               "_rtl92d_fw_free_to_go", (unsigned long )tmp___1 & 2096896UL, ((unsigned long )tmp___0 & 0xffffffffffdfffffUL) != 0UL,
               value32);
        }
      } else {
      }
    } else {
    }
    return (-5);
  } else {
  }
  {
  tmp___6 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 2ULL) != 0ULL,
                             0L);
  }
  if (tmp___6 != 0L) {
    {
    tmp___7 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___7 != 0L) {
      {
      tmp___4 = preempt_count();
      tmp___5 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Checksum report OK ! REG_MCUFWDL:0x%08x\n",
             "_rtl92d_fw_free_to_go", (unsigned long )tmp___5 & 2096896UL, ((unsigned long )tmp___4 & 0xffffffffffdfffffUL) != 0UL,
             value32);
      }
    } else {
    }
  } else {
  }
  {
  value32 = rtl_read_dword(rtlpriv, 128U);
  value32 = value32 | 2U;
  rtl_write_dword(rtlpriv, 128U, value32);
  }
  return (0);
}
}
void rtl92d_firmware_selfreset(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  u8 u1b_tmp ;
  u8 delay ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  delay = 100U;
  rtl_write_byte(rtlpriv, 463U, 32);
  u1b_tmp = rtl_read_byte(rtlpriv, 3U);
  }
  goto ldv_50568;
  ldv_50567:
  delay = (u8 )((int )delay - 1);
  if ((unsigned int )delay == 0U) {
    goto ldv_50566;
  } else {
  }
  {
  __const_udelay(214750UL);
  u1b_tmp = rtl_read_byte(rtlpriv, 3U);
  }
  ldv_50568: ;
  if (((unsigned long )u1b_tmp & 4UL) != 0UL) {
    goto ldv_50567;
  } else {
  }
  ldv_50566: ;
  if ((unsigned int )delay == 0U) {
    {
    printk("\017rtl8192de:%s(): 8051 reset failed!\n", "rtl92d_firmware_selfreset");
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 2ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> =====> 8051 reset success (%d)\n", "rtl92d_firmware_selfreset",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             (int )delay);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static int _rtl92d_fw_init(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u32 counter ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  u8 tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  u8 tmp___8 ;
  u8 tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  u8 tmp___14 ;
  u32 tmp___15 ;
  u8 tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  long tmp___19 ;
  long tmp___20 ;
  u8 tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  long tmp___24 ;
  long tmp___25 ;
  u32 tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  long tmp___29 ;
  long tmp___30 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 2ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> FW already have download\n", "_rtl92d_fw_init",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  counter = 0U;
  ldv_50577: ;
  if (rtlhal->interfaceindex == 0U) {
    {
    tmp___8 = rtl_read_byte(rtlpriv, 24U);
    }
    if ((int )tmp___8 & 1) {
      {
      tmp___6 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 2ULL) != 0ULL,
                                 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___7 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
        }
        if (tmp___7 != 0L) {
          {
          tmp___3 = rtl_read_byte(rtlpriv, 24U);
          tmp___4 = preempt_count();
          tmp___5 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> Polling FW ready success!! REG_MCUFWDL: 0x%x\n",
                 "_rtl92d_fw_init", (unsigned long )tmp___5 & 2096896UL, ((unsigned long )tmp___4 & 0xffffffffffdfffffUL) != 0UL,
                 (int )tmp___3);
          }
        } else {
        }
      } else {
      }
      return (0);
    } else {
    }
    {
    __const_udelay(21475UL);
    }
  } else {
    {
    tmp___14 = rtl_read_byte(rtlpriv, 26U);
    }
    if ((int )tmp___14 & 1) {
      {
      tmp___12 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 2ULL) != 0ULL,
                                  0L);
      }
      if (tmp___12 != 0L) {
        {
        tmp___13 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
        }
        if (tmp___13 != 0L) {
          {
          tmp___9 = rtl_read_byte(rtlpriv, 26U);
          tmp___10 = preempt_count();
          tmp___11 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> Polling FW ready success!! REG_MCUFWDL: 0x%x\n",
                 "_rtl92d_fw_init", (unsigned long )tmp___11 & 2096896UL, ((unsigned long )tmp___10 & 0xffffffffffdfffffUL) != 0UL,
                 (int )tmp___9);
          }
        } else {
        }
      } else {
      }
      return (0);
    } else {
    }
    {
    __const_udelay(21475UL);
    }
  }
  tmp___15 = counter;
  counter = counter + 1U;
  if (tmp___15 <= 999U) {
    goto ldv_50577;
  } else {
  }
  if (rtlhal->interfaceindex == 0U) {
    {
    tmp___19 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 2ULL) != 0ULL,
                                0L);
    }
    if (tmp___19 != 0L) {
      {
      tmp___20 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
      }
      if (tmp___20 != 0L) {
        {
        tmp___16 = rtl_read_byte(rtlpriv, 24U);
        tmp___17 = preempt_count();
        tmp___18 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Polling FW ready fail!! MAC0 FW init not ready: 0x%x\n",
               "_rtl92d_fw_init", (unsigned long )tmp___18 & 2096896UL, ((unsigned long )tmp___17 & 0xffffffffffdfffffUL) != 0UL,
               (int )tmp___16);
        }
      } else {
      }
    } else {
    }
  } else {
    {
    tmp___24 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 2ULL) != 0ULL,
                                0L);
    }
    if (tmp___24 != 0L) {
      {
      tmp___25 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
      }
      if (tmp___25 != 0L) {
        {
        tmp___21 = rtl_read_byte(rtlpriv, 26U);
        tmp___22 = preempt_count();
        tmp___23 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Polling FW ready fail!! MAC1 FW init not ready: 0x%x\n",
               "_rtl92d_fw_init", (unsigned long )tmp___23 & 2096896UL, ((unsigned long )tmp___22 & 0xffffffffffdfffffUL) != 0UL,
               (int )tmp___21);
        }
      } else {
      }
    } else {
    }
  }
  {
  tmp___29 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 2ULL) != 0ULL,
                              0L);
  }
  if (tmp___29 != 0L) {
    {
    tmp___30 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
    }
    if (tmp___30 != 0L) {
      {
      tmp___26 = rtl_read_dword(rtlpriv, 128U);
      tmp___27 = preempt_count();
      tmp___28 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Polling FW ready fail!! REG_MCUFWDL:0x%08ul\n",
             "_rtl92d_fw_init", (unsigned long )tmp___28 & 2096896UL, ((unsigned long )tmp___27 & 0xffffffffffdfffffUL) != 0UL,
             tmp___26);
      }
    } else {
    }
  } else {
  }
  return (-1);
}
}
int rtl92d_download_fw(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 *pfwheader ;
  u8 *pfwdata ;
  u32 fwsize ;
  int err ;
  enum version_8192d version ;
  u8 value ;
  u32 count ;
  bool fw_downloaded ;
  bool fwdl_in_process ;
  unsigned long flags ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  raw_spinlock_t *tmp___7 ;
  u8 tmp___8 ;
  raw_spinlock_t *tmp___9 ;
  u8 tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  raw_spinlock_t *tmp___15 ;
  u8 tmp___16 ;
  raw_spinlock_t *tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  long tmp___20 ;
  long tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  long tmp___24 ;
  long tmp___25 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  version = rtlhal->version;
  fw_downloaded = 0;
  fwdl_in_process = 0;
  if (rtlpriv->max_fw_size == 0 || (unsigned long )rtlhal->pfirmware == (unsigned long )((u8 *)0U)) {
    return (1);
  } else {
  }
  {
  fwsize = rtlhal->fwsize;
  pfwheader = rtlhal->pfirmware;
  pfwdata = rtlhal->pfirmware;
  rtlhal->fw_version = (unsigned short )*((__le32 *)pfwheader + 4U);
  rtlhal->fw_subversion = (unsigned int )((unsigned short )(*((__le32 *)pfwheader + 4U) >> 16)) & 255U;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> FirmwareVersion(%d), FirmwareSubVersion(%d), Signature(%#x)\n",
             "rtl92d_download_fw", (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             (int )rtlhal->fw_version, (int )rtlhal->fw_subversion, *((__le32 *)pfwheader) & 65535U);
      }
    } else {
    }
  } else {
  }
  if ((((((*((__le32 *)pfwheader) & 65520U) == 37568U || (*((__le32 *)pfwheader) & 65520U) == 35008U) || (*((__le32 *)pfwheader) & 65535U) == 37584U) || (*((__le32 *)pfwheader) & 65535U) == 37585U) || (*((__le32 *)pfwheader) & 65535U) == 37586U) || (*((__le32 *)pfwheader) & 65535U) == 37587U) {
    {
    tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Shift 32 bytes for FW header!!\n", "rtl92d_download_fw",
               (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    pfwdata = pfwdata + 32UL;
    fwsize = fwsize - 32U;
  } else {
  }
  {
  tmp___7 = spinlock_check(& globalmutex_for_fwdownload);
  flags = _raw_spin_lock_irqsave(tmp___7);
  fw_downloaded = _rtl92d_is_fw_downloaded(rtlpriv);
  tmp___8 = rtl_read_byte(rtlpriv, 31U);
  }
  if (((unsigned long )tmp___8 & 32UL) != 0UL) {
    fwdl_in_process = 1;
  } else {
    fwdl_in_process = 0;
  }
  if ((int )fw_downloaded) {
    {
    spin_unlock_irqrestore(& globalmutex_for_fwdownload, flags);
    }
    goto exit;
  } else
  if ((int )fwdl_in_process) {
    {
    spin_unlock_irqrestore(& globalmutex_for_fwdownload, flags);
    count = 0U;
    }
    goto ldv_50604;
    ldv_50603:
    {
    __const_udelay(2147500UL);
    tmp___9 = spinlock_check(& globalmutex_for_fwdownload);
    flags = _raw_spin_lock_irqsave(tmp___9);
    fw_downloaded = _rtl92d_is_fw_downloaded(rtlpriv);
    tmp___10 = rtl_read_byte(rtlpriv, 31U);
    }
    if (((unsigned long )tmp___10 & 32UL) != 0UL) {
      fwdl_in_process = 1;
    } else {
      fwdl_in_process = 0;
    }
    {
    spin_unlock_irqrestore(& globalmutex_for_fwdownload, flags);
    }
    if ((int )fw_downloaded) {
      goto exit;
    } else
    if (! fwdl_in_process) {
      goto ldv_50602;
    } else {
      {
      tmp___13 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 2ULL) != 0ULL,
                                  0L);
      }
      if (tmp___13 != 0L) {
        {
        tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
        }
        if (tmp___14 != 0L) {
          {
          tmp___11 = preempt_count();
          tmp___12 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> Wait for another mac download fw\n",
                 "rtl92d_download_fw", (unsigned long )tmp___12 & 2096896UL, ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL);
          }
        } else {
        }
      } else {
      }
    }
    count = count + 1U;
    ldv_50604: ;
    if (count <= 4999U) {
      goto ldv_50603;
    } else {
    }
    ldv_50602:
    {
    tmp___15 = spinlock_check(& globalmutex_for_fwdownload);
    flags = _raw_spin_lock_irqsave(tmp___15);
    value = rtl_read_byte(rtlpriv, 31U);
    value = (u8 )((unsigned int )value | 32U);
    rtl_write_byte(rtlpriv, 31U, (int )value);
    spin_unlock_irqrestore(& globalmutex_for_fwdownload, flags);
    }
  } else {
    {
    value = rtl_read_byte(rtlpriv, 31U);
    value = (u8 )((unsigned int )value | 32U);
    rtl_write_byte(rtlpriv, 31U, (int )value);
    spin_unlock_irqrestore(& globalmutex_for_fwdownload, flags);
    }
  }
  {
  tmp___16 = rtl_read_byte(rtlpriv, 128U);
  }
  if ((int )((signed char )tmp___16) < 0) {
    {
    rtl92d_firmware_selfreset(hw);
    rtl_write_byte(rtlpriv, 128U, 0);
    }
  } else {
  }
  {
  _rtl92d_enable_fw_download(hw, 1);
  _rtl92d_write_fw(hw, version, pfwdata, fwsize);
  _rtl92d_enable_fw_download(hw, 0);
  tmp___17 = spinlock_check(& globalmutex_for_fwdownload);
  flags = _raw_spin_lock_irqsave(tmp___17);
  err = _rtl92d_fw_free_to_go(hw);
  value = rtl_read_byte(rtlpriv, 31U);
  value = (unsigned int )value & 223U;
  rtl_write_byte(rtlpriv, 31U, (int )value);
  spin_unlock_irqrestore(& globalmutex_for_fwdownload, flags);
  }
  if (err != 0) {
    {
    tmp___20 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                                0L);
    }
    if (tmp___20 != 0L) {
      {
      tmp___21 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___21 != 0L) {
        {
        tmp___18 = preempt_count();
        tmp___19 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> fw is not ready to run!\n", "rtl92d_download_fw",
               (unsigned long )tmp___19 & 2096896UL, ((unsigned long )tmp___18 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    goto exit;
  } else {
    {
    tmp___24 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 2ULL) != 0ULL,
                                0L);
    }
    if (tmp___24 != 0L) {
      {
      tmp___25 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
      }
      if (tmp___25 != 0L) {
        {
        tmp___22 = preempt_count();
        tmp___23 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> fw is ready to run!\n", "rtl92d_download_fw",
               (unsigned long )tmp___23 & 2096896UL, ((unsigned long )tmp___22 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  }
  exit:
  {
  err = _rtl92d_fw_init(hw);
  }
  return (err);
}
}
static bool _rtl92d_check_fw_read_last_h2c(struct ieee80211_hw *hw , u8 boxnum )
{
  struct rtl_priv *rtlpriv ;
  u8 val_hmetfr ;
  bool result ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  result = 0;
  val_hmetfr = rtl_read_byte(rtlpriv, 460U);
  }
  if (((unsigned long )((int )val_hmetfr >> (int )boxnum) & 1UL) == 0UL) {
    result = 1;
  } else {
  }
  return (result);
}
}
static void _rtl92d_fill_h2c_command(struct ieee80211_hw *hw , u8 element_id , u32 cmd_len ,
                                     u8 *cmdbuffer )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  struct rtl_ps_ctl *ppsc ;
  u8 boxnum ;
  u16 box_reg ;
  u16 box_extreg ;
  u8 u1b_tmp ;
  bool isfw_read ;
  u8 buf_index ;
  bool bwrite_success ;
  u8 wait_h2c_limmit ;
  u8 wait_writeh2c_limmit ;
  u8 boxcontent[4U] ;
  u8 boxextcontent[2U] ;
  u32 h2c_waitcounter ;
  unsigned long flag ;
  u8 idx ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  raw_spinlock_t *tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  raw_spinlock_t *tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  long tmp___19 ;
  long tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  long tmp___23 ;
  long tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  long tmp___27 ;
  long tmp___28 ;
  int tmp___29 ;
  int tmp___30 ;
  long tmp___31 ;
  long tmp___32 ;
  int tmp___33 ;
  int tmp___34 ;
  long tmp___35 ;
  long tmp___36 ;
  int tmp___37 ;
  int tmp___38 ;
  long tmp___39 ;
  long tmp___40 ;
  int tmp___41 ;
  int tmp___42 ;
  long tmp___43 ;
  long tmp___44 ;
  int tmp___45 ;
  int tmp___46 ;
  long tmp___47 ;
  long tmp___48 ;
  raw_spinlock_t *tmp___49 ;
  int tmp___50 ;
  int tmp___51 ;
  long tmp___52 ;
  long tmp___53 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  ppsc = & ((struct rtl_priv *)hw->priv)->psc;
  box_reg = 0U;
  box_extreg = 0U;
  isfw_read = 0;
  buf_index = 0U;
  bwrite_success = 0;
  wait_h2c_limmit = 100U;
  wait_writeh2c_limmit = 100U;
  h2c_waitcounter = 0U;
  if ((unsigned int )ppsc->rfpwr_state == 2U || (unsigned int )ppsc->inactive_pwrstate == 2U) {
    {
    tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp = preempt_count();
        tmp___0 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Return as RF is off!!!\n", "_rtl92d_fill_h2c_command",
               (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  {
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> come in\n", "_rtl92d_fill_h2c_command",
             (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  ldv_50652:
  {
  tmp___7 = spinlock_check(& rtlpriv->locks.h2c_lock);
  flag = _raw_spin_lock_irqsave(tmp___7);
  }
  if ((int )rtlhal->h2c_setinprogress) {
    {
    tmp___10 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                                0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___11 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___11 != 0L) {
        {
        tmp___8 = preempt_count();
        tmp___9 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> H2C set in progress! Wait to set..element_id(%d)\n",
               "_rtl92d_fill_h2c_command", (unsigned long )tmp___9 & 2096896UL, ((unsigned long )tmp___8 & 0xffffffffffdfffffUL) != 0UL,
               (int )element_id);
        }
      } else {
      }
    } else {
    }
    goto ldv_50649;
    ldv_50648:
    {
    spin_unlock_irqrestore(& rtlpriv->locks.h2c_lock, flag);
    h2c_waitcounter = h2c_waitcounter + 1U;
    tmp___14 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                                0L);
    }
    if (tmp___14 != 0L) {
      {
      tmp___15 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___15 != 0L) {
        {
        tmp___12 = preempt_count();
        tmp___13 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Wait 100 us (%d times)...\n", "_rtl92d_fill_h2c_command",
               (unsigned long )tmp___13 & 2096896UL, ((unsigned long )tmp___12 & 0xffffffffffdfffffUL) != 0UL,
               h2c_waitcounter);
        }
      } else {
      }
    } else {
    }
    {
    __const_udelay(429500UL);
    }
    if (h2c_waitcounter > 1000U) {
      return;
    } else {
    }
    {
    tmp___16 = spinlock_check(& rtlpriv->locks.h2c_lock);
    flag = _raw_spin_lock_irqsave(tmp___16);
    }
    ldv_50649: ;
    if ((int )rtlhal->h2c_setinprogress) {
      goto ldv_50648;
    } else {
    }
    {
    spin_unlock_irqrestore(& rtlpriv->locks.h2c_lock, flag);
    }
  } else {
    {
    rtlhal->h2c_setinprogress = 1;
    spin_unlock_irqrestore(& rtlpriv->locks.h2c_lock, flag);
    }
    goto ldv_50651;
  }
  goto ldv_50652;
  ldv_50651: ;
  goto ldv_50692;
  ldv_50691:
  wait_writeh2c_limmit = (u8 )((int )wait_writeh2c_limmit - 1);
  if ((unsigned int )wait_writeh2c_limmit == 0U) {
    {
    tmp___19 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                                0L);
    }
    if (tmp___19 != 0L) {
      {
      tmp___20 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___20 != 0L) {
        {
        tmp___17 = preempt_count();
        tmp___18 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Write H2C fail because no trigger for FW INT!\n",
               "_rtl92d_fill_h2c_command", (unsigned long )tmp___18 & 2096896UL, ((unsigned long )tmp___17 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    goto ldv_50653;
  } else {
  }
  boxnum = rtlhal->last_hmeboxnum;
  {
  if ((int )boxnum == 0) {
    goto case_0;
  } else {
  }
  if ((int )boxnum == 1) {
    goto case_1;
  } else {
  }
  if ((int )boxnum == 2) {
    goto case_2;
  } else {
  }
  if ((int )boxnum == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0:
  box_reg = 464U;
  box_extreg = 136U;
  goto ldv_50655;
  case_1:
  box_reg = 468U;
  box_extreg = 138U;
  goto ldv_50655;
  case_2:
  box_reg = 472U;
  box_extreg = 140U;
  goto ldv_50655;
  case_3:
  box_reg = 476U;
  box_extreg = 142U;
  goto ldv_50655;
  switch_default:
  {
  tmp___23 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                              0L);
  }
  if (tmp___23 != 0L) {
    {
    tmp___24 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___24 != 0L) {
      {
      tmp___21 = preempt_count();
      tmp___22 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> switch case not processed\n", "_rtl92d_fill_h2c_command",
             (unsigned long )tmp___22 & 2096896UL, ((unsigned long )tmp___21 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_50655;
  switch_break: ;
  }
  ldv_50655:
  {
  isfw_read = _rtl92d_check_fw_read_last_h2c(hw, (int )boxnum);
  }
  goto ldv_50662;
  ldv_50661:
  wait_h2c_limmit = (u8 )((int )wait_h2c_limmit - 1);
  if ((unsigned int )wait_h2c_limmit == 0U) {
    {
    tmp___27 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                                0L);
    }
    if (tmp___27 != 0L) {
      {
      tmp___28 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___28 != 0L) {
        {
        tmp___25 = preempt_count();
        tmp___26 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Waiting too long for FW read clear HMEBox(%d)!\n",
               "_rtl92d_fill_h2c_command", (unsigned long )tmp___26 & 2096896UL, ((unsigned long )tmp___25 & 0xffffffffffdfffffUL) != 0UL,
               (int )boxnum);
        }
      } else {
      }
    } else {
    }
    goto ldv_50660;
  } else {
  }
  {
  __const_udelay(42950UL);
  isfw_read = _rtl92d_check_fw_read_last_h2c(hw, (int )boxnum);
  u1b_tmp = rtl_read_byte(rtlpriv, 447U);
  tmp___31 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                              0L);
  }
  if (tmp___31 != 0L) {
    {
    tmp___32 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___32 != 0L) {
      {
      tmp___29 = preempt_count();
      tmp___30 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Waiting for FW read clear HMEBox(%d)!!! 0x1BF = %2x\n",
             "_rtl92d_fill_h2c_command", (unsigned long )tmp___30 & 2096896UL, ((unsigned long )tmp___29 & 0xffffffffffdfffffUL) != 0UL,
             (int )boxnum, (int )u1b_tmp);
      }
    } else {
    }
  } else {
  }
  ldv_50662: ;
  if (! isfw_read) {
    goto ldv_50661;
  } else {
  }
  ldv_50660: ;
  if (! isfw_read) {
    {
    tmp___35 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                                0L);
    }
    if (tmp___35 != 0L) {
      {
      tmp___36 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___36 != 0L) {
        {
        tmp___33 = preempt_count();
        tmp___34 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Write H2C register BOX[%d] fail!!!!! Fw do not read.\n",
               "_rtl92d_fill_h2c_command", (unsigned long )tmp___34 & 2096896UL, ((unsigned long )tmp___33 & 0xffffffffffdfffffUL) != 0UL,
               (int )boxnum);
        }
      } else {
      }
    } else {
    }
    goto ldv_50653;
  } else {
  }
  {
  memset((void *)(& boxcontent), 0, 4UL);
  memset((void *)(& boxextcontent), 0, 2UL);
  boxcontent[0] = element_id;
  tmp___39 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                              0L);
  }
  if (tmp___39 != 0L) {
    {
    tmp___40 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___40 != 0L) {
      {
      tmp___37 = preempt_count();
      tmp___38 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Write element_id box_reg(%4x) = %2x\n",
             "_rtl92d_fill_h2c_command", (unsigned long )tmp___38 & 2096896UL, ((unsigned long )tmp___37 & 0xffffffffffdfffffUL) != 0UL,
             (int )box_reg, (int )element_id);
      }
    } else {
    }
  } else {
  }
  {
  if (cmd_len == 1U) {
    goto case_1___0;
  } else {
  }
  if (cmd_len == 2U) {
    goto case_2___0;
  } else {
  }
  if (cmd_len == 3U) {
    goto case_3___0;
  } else {
  }
  if (cmd_len == 4U) {
    goto case_4;
  } else {
  }
  if (cmd_len == 5U) {
    goto case_5;
  } else {
  }
  goto switch_default___0;
  case_1___0:
  {
  boxcontent[0] = (unsigned int )boxcontent[0] & 127U;
  memcpy((void *)(& boxcontent) + 1U, (void const *)cmdbuffer + (unsigned long )buf_index,
         1UL);
  idx = 0U;
  }
  goto ldv_50665;
  ldv_50664:
  {
  rtl_write_byte(rtlpriv, (u32 )((int )box_reg + (int )idx), (int )boxcontent[(int )idx]);
  idx = (u8 )((int )idx + 1);
  }
  ldv_50665: ;
  if ((unsigned int )idx <= 3U) {
    goto ldv_50664;
  } else {
  }
  goto ldv_50667;
  case_2___0:
  {
  boxcontent[0] = (unsigned int )boxcontent[0] & 127U;
  memcpy((void *)(& boxcontent) + 1U, (void const *)cmdbuffer + (unsigned long )buf_index,
         2UL);
  idx = 0U;
  }
  goto ldv_50670;
  ldv_50669:
  {
  rtl_write_byte(rtlpriv, (u32 )((int )box_reg + (int )idx), (int )boxcontent[(int )idx]);
  idx = (u8 )((int )idx + 1);
  }
  ldv_50670: ;
  if ((unsigned int )idx <= 3U) {
    goto ldv_50669;
  } else {
  }
  goto ldv_50667;
  case_3___0:
  {
  boxcontent[0] = (unsigned int )boxcontent[0] & 127U;
  memcpy((void *)(& boxcontent) + 1U, (void const *)cmdbuffer + (unsigned long )buf_index,
         3UL);
  idx = 0U;
  }
  goto ldv_50674;
  ldv_50673:
  {
  rtl_write_byte(rtlpriv, (u32 )((int )box_reg + (int )idx), (int )boxcontent[(int )idx]);
  idx = (u8 )((int )idx + 1);
  }
  ldv_50674: ;
  if ((unsigned int )idx <= 3U) {
    goto ldv_50673;
  } else {
  }
  goto ldv_50667;
  case_4:
  {
  boxcontent[0] = (u8 )((unsigned int )boxcontent[0] | 128U);
  memcpy((void *)(& boxextcontent), (void const *)cmdbuffer + (unsigned long )buf_index,
         2UL);
  memcpy((void *)(& boxcontent) + 1U, (void const *)(cmdbuffer + ((unsigned long )buf_index + 2UL)),
         2UL);
  idx = 0U;
  }
  goto ldv_50678;
  ldv_50677:
  {
  rtl_write_byte(rtlpriv, (u32 )((int )box_extreg + (int )idx), (int )boxextcontent[(int )idx]);
  idx = (u8 )((int )idx + 1);
  }
  ldv_50678: ;
  if ((unsigned int )idx <= 1U) {
    goto ldv_50677;
  } else {
  }
  idx = 0U;
  goto ldv_50681;
  ldv_50680:
  {
  rtl_write_byte(rtlpriv, (u32 )((int )box_reg + (int )idx), (int )boxcontent[(int )idx]);
  idx = (u8 )((int )idx + 1);
  }
  ldv_50681: ;
  if ((unsigned int )idx <= 3U) {
    goto ldv_50680;
  } else {
  }
  goto ldv_50667;
  case_5:
  {
  boxcontent[0] = (u8 )((unsigned int )boxcontent[0] | 128U);
  memcpy((void *)(& boxextcontent), (void const *)cmdbuffer + (unsigned long )buf_index,
         2UL);
  memcpy((void *)(& boxcontent) + 1U, (void const *)(cmdbuffer + ((unsigned long )buf_index + 2UL)),
         3UL);
  idx = 0U;
  }
  goto ldv_50685;
  ldv_50684:
  {
  rtl_write_byte(rtlpriv, (u32 )((int )box_extreg + (int )idx), (int )boxextcontent[(int )idx]);
  idx = (u8 )((int )idx + 1);
  }
  ldv_50685: ;
  if ((unsigned int )idx <= 1U) {
    goto ldv_50684;
  } else {
  }
  idx = 0U;
  goto ldv_50688;
  ldv_50687:
  {
  rtl_write_byte(rtlpriv, (u32 )((int )box_reg + (int )idx), (int )boxcontent[(int )idx]);
  idx = (u8 )((int )idx + 1);
  }
  ldv_50688: ;
  if ((unsigned int )idx <= 3U) {
    goto ldv_50687;
  } else {
  }
  goto ldv_50667;
  switch_default___0:
  {
  tmp___43 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                              0L);
  }
  if (tmp___43 != 0L) {
    {
    tmp___44 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___44 != 0L) {
      {
      tmp___41 = preempt_count();
      tmp___42 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> switch case not processed\n", "_rtl92d_fill_h2c_command",
             (unsigned long )tmp___42 & 2096896UL, ((unsigned long )tmp___41 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_50667;
  switch_break___0: ;
  }
  ldv_50667:
  bwrite_success = 1;
  rtlhal->last_hmeboxnum = (unsigned int )boxnum + 1U;
  if ((unsigned int )rtlhal->last_hmeboxnum == 4U) {
    rtlhal->last_hmeboxnum = 0U;
  } else {
  }
  {
  tmp___47 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                              0L);
  }
  if (tmp___47 != 0L) {
    {
    tmp___48 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___48 != 0L) {
      {
      tmp___45 = preempt_count();
      tmp___46 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> pHalData->last_hmeboxnum  = %d\n", "_rtl92d_fill_h2c_command",
             (unsigned long )tmp___46 & 2096896UL, ((unsigned long )tmp___45 & 0xffffffffffdfffffUL) != 0UL,
             (int )rtlhal->last_hmeboxnum);
      }
    } else {
    }
  } else {
  }
  ldv_50692: ;
  if (! bwrite_success) {
    goto ldv_50691;
  } else {
  }
  ldv_50653:
  {
  tmp___49 = spinlock_check(& rtlpriv->locks.h2c_lock);
  flag = _raw_spin_lock_irqsave(tmp___49);
  rtlhal->h2c_setinprogress = 0;
  spin_unlock_irqrestore(& rtlpriv->locks.h2c_lock, flag);
  tmp___52 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                              0L);
  }
  if (tmp___52 != 0L) {
    {
    tmp___53 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___53 != 0L) {
      {
      tmp___50 = preempt_count();
      tmp___51 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> go out\n", "_rtl92d_fill_h2c_command", (unsigned long )tmp___51 & 2096896UL,
             ((unsigned long )tmp___50 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
void rtl92d_fill_h2c_cmd(struct ieee80211_hw *hw , u8 element_id , u32 cmd_len , u8 *cmdbuffer )
{
  u32 tmp_cmdbuf[2U] ;
  {
  {
  memset((void *)(& tmp_cmdbuf), 0, 8UL);
  memcpy((void *)(& tmp_cmdbuf), (void const *)cmdbuffer, (size_t )cmd_len);
  _rtl92d_fill_h2c_command(hw, (int )element_id, cmd_len, (u8 *)(& tmp_cmdbuf));
  }
  return;
}
}
void rtl92d_set_fw_pwrmode_cmd(struct ieee80211_hw *hw , u8 mode )
{
  struct rtl_priv *rtlpriv ;
  u8 u1_h2c_set_pwrmode[3U] ;
  unsigned int tmp ;
  struct rtl_ps_ctl *ppsc ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  struct task_struct *tmp___4 ;
  struct task_struct *tmp___5 ;
  struct _ddebug descriptor ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  u1_h2c_set_pwrmode[0] = 0U;
  tmp = 1U;
  {
  while (1) {
    while_continue: ;
    if (tmp >= 3U) {
      goto while_break;
    } else {
    }
    u1_h2c_set_pwrmode[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  while_break: ;
  }
  {
  ppsc = & ((struct rtl_priv *)hw->priv)->psc;
  tmp___2 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 65536ULL) != 0ULL,
                             0L);
  }
  if (tmp___2 != 0L) {
    {
    tmp___3 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___3 != 0L) {
      {
      tmp___0 = preempt_count();
      tmp___1 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> FW LPS mode = %d\n", "rtl92d_set_fw_pwrmode_cmd",
             (unsigned long )tmp___1 & 2096896UL, ((unsigned long )tmp___0 & 0xffffffffffdfffffUL) != 0UL,
             (int )mode);
      }
    } else {
    }
  } else {
  }
  {
  *((u8 *)(& u1_h2c_set_pwrmode)) = mode;
  *((u8 *)(& u1_h2c_set_pwrmode) + 1UL) = 1U;
  *((u8 *)(& u1_h2c_set_pwrmode) + 2UL) = ppsc->reg_max_lps_awakeintvl;
  tmp___7 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                             0L);
  }
  if (tmp___7 != 0L) {
    {
    tmp___8 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
    }
    if (tmp___8 != 0L) {
      {
      tmp___4 = get_current();
      tmp___5 = get_current();
      printk("\017%s: In process \"%s\" (pid %i): %s\n", (char *)"rtl8192de", (char *)(& tmp___5->comm),
             tmp___4->pid, (char *)"rtl92d_set_fw_rsvdpagepkt(): u1_h2c_set_pwrmode");
      descriptor.modname = "rtl8192de";
      descriptor.function = "rtl92d_set_fw_pwrmode_cmd";
      descriptor.filename = "drivers/net/wireless/rtlwifi/rtl8192de/fw.c";
      descriptor.format = "";
      descriptor.lineno = 556U;
      descriptor.flags = 0U;
      tmp___6 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp___6 != 0L) {
        {
        print_hex_dump("\017", "", 0, 16, 1, (void const *)(& u1_h2c_set_pwrmode),
                       3UL, 1);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  rtl92d_fill_h2c_cmd(hw, 1, 3U, (u8 *)(& u1_h2c_set_pwrmode));
  }
  return;
}
}
static bool _rtl92d_cmd_send_packet(struct ieee80211_hw *hw , struct sk_buff *skb )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_pci *rtlpci ;
  struct rtl8192_tx_ring *ring ;
  struct rtl_tx_desc *pdesc ;
  u8 idx ;
  unsigned long flags ;
  struct sk_buff *pskb ;
  raw_spinlock_t *tmp ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  idx = 0U;
  ring = (struct rtl8192_tx_ring *)(& rtlpci->tx_ring) + 4UL;
  pskb = __skb_dequeue(& ring->queue);
  kfree_skb(pskb);
  tmp = spinlock_check(& rtlpriv->locks.irq_th_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  pdesc = ring->desc + (unsigned long )idx;
  (*(((rtlpriv->cfg)->ops)->get_desc))((u8 *)pdesc, 1, 0);
  (*(((rtlpriv->cfg)->ops)->fill_tx_cmddesc))(hw, (u8 *)pdesc, 1, 1, skb);
  __skb_queue_tail(& ring->queue, skb);
  spin_unlock_irqrestore(& rtlpriv->locks.irq_th_lock, flags);
  (*(((rtlpriv->cfg)->ops)->tx_polling))(hw, 4);
  }
  return (1);
}
}
static u8 reserved_page_packet[768U] =
  { 128U, 0U, 0U, 0U,
        255U, 255U, 255U, 255U,
        255U, 255U, 0U, 224U,
        76U, 118U, 0U, 66U,
        0U, 64U, 16U, 16U,
        0U, 3U, 80U, 8U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        100U, 0U, 0U, 4U,
        0U, 12U, 108U, 105U,
        110U, 107U, 115U, 121U,
        115U, 95U, 119U, 108U,
        97U, 110U, 1U, 4U,
        130U, 132U, 139U, 150U,
        3U, 1U, 1U, 6U,
        2U, 0U, 0U, 42U,
        1U, 0U, 50U, 8U,
        36U, 48U, 72U, 108U,
        12U, 18U, 24U, 96U,
        45U, 26U, 108U, 24U,
        3U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        61U, 0U, 221U, 6U,
        0U, 224U, 76U, 2U,
        1U, 112U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        16U, 0U, 32U, 140U,
        0U, 18U, 16U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 1U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        164U, 16U, 1U, 192U,
        0U, 64U, 16U, 16U,
        0U, 3U, 0U, 224U,
        76U, 118U, 0U, 66U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        24U, 0U, 32U, 140U,
        0U, 18U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 128U,
        128U, 1U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        72U, 1U, 0U, 0U,
        0U, 64U, 16U, 16U,
        0U, 3U, 0U, 224U,
        76U, 118U, 0U, 66U,
        0U, 64U, 16U, 16U,
        0U, 3U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        114U, 0U, 32U, 140U,
        0U, 18U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 128U,
        128U, 1U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        80U, 0U, 0U, 0U,
        0U, 64U, 16U, 16U,
        0U, 3U, 0U, 224U,
        76U, 118U, 0U, 66U,
        0U, 64U, 16U, 16U,
        0U, 3U, 0U, 0U,
        158U, 70U, 21U, 50U,
        39U, 242U, 45U, 0U,
        100U, 0U, 0U, 4U,
        0U, 12U, 108U, 105U,
        110U, 107U, 115U, 121U,
        115U, 95U, 119U, 108U,
        97U, 110U, 1U, 4U,
        130U, 132U, 139U, 150U,
        3U, 1U, 1U, 6U,
        2U, 0U, 0U, 42U,
        1U, 0U, 50U, 8U,
        36U, 48U, 72U, 108U,
        12U, 18U, 24U, 96U,
        45U, 26U, 108U, 24U,
        3U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        61U, 0U, 221U, 6U,
        0U, 224U, 76U, 2U,
        1U, 112U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U};
void rtl92d_set_fw_rsvdpagepkt(struct ieee80211_hw *hw , bool dl_finished )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_mac *mac ;
  struct sk_buff *skb ;
  u32 totalpacketlen ;
  bool rtstatus ;
  u8 u1RsvdPageLoc[3U] ;
  unsigned int tmp ;
  bool dlok ;
  u8 *beacon ;
  u8 *p_pspoll ;
  u8 *nullfunc ;
  u8 *p_probersp ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  struct task_struct *tmp___5 ;
  struct task_struct *tmp___6 ;
  struct _ddebug descriptor___0 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  unsigned char *tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  struct task_struct *tmp___15 ;
  struct task_struct *tmp___16 ;
  struct _ddebug descriptor___1 ;
  long tmp___17 ;
  long tmp___18 ;
  long tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  long tmp___22 ;
  long tmp___23 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  skb = (struct sk_buff *)0;
  u1RsvdPageLoc[0] = 0U;
  tmp = 1U;
  {
  while (1) {
    while_continue: ;
    if (tmp >= 3U) {
      goto while_break;
    } else {
    }
    u1RsvdPageLoc[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  while_break: ;
  }
  {
  dlok = 0;
  beacon = (u8 *)(& reserved_page_packet);
  *(beacon + 10UL) = *((u8 *)(& mac->mac_addr));
  *(beacon + 11U) = *((u8 *)(& mac->mac_addr) + 1UL);
  *(beacon + 12U) = *((u8 *)(& mac->mac_addr) + 2UL);
  *(beacon + 13U) = *((u8 *)(& mac->mac_addr) + 3UL);
  *(beacon + 14U) = *((u8 *)(& mac->mac_addr) + 4UL);
  *(beacon + 15U) = *((u8 *)(& mac->mac_addr) + 5UL);
  *(beacon + 16UL) = *((u8 *)(& mac->bssid));
  *(beacon + 17U) = *((u8 *)(& mac->bssid) + 1UL);
  *(beacon + 18U) = *((u8 *)(& mac->bssid) + 2UL);
  *(beacon + 19U) = *((u8 *)(& mac->bssid) + 3UL);
  *(beacon + 20U) = *((u8 *)(& mac->bssid) + 4UL);
  *(beacon + 21U) = *((u8 *)(& mac->bssid) + 5UL);
  p_pspoll = (u8 *)(& reserved_page_packet) + 256UL;
  *((u16 *)p_pspoll + 2U) = (u16 )((unsigned int )mac->assoc_id | 49152U);
  memcpy((void *)p_pspoll + 4U, (void const *)(& mac->bssid), 6UL);
  memcpy((void *)p_pspoll + 10U, (void const *)(& mac->mac_addr), 6UL);
  *((u8 *)(& u1RsvdPageLoc) + 1UL) = 2U;
  nullfunc = (u8 *)(& reserved_page_packet) + 384UL;
  *(nullfunc + 4UL) = *((u8 *)(& mac->bssid));
  *(nullfunc + 5U) = *((u8 *)(& mac->bssid) + 1UL);
  *(nullfunc + 6U) = *((u8 *)(& mac->bssid) + 2UL);
  *(nullfunc + 7U) = *((u8 *)(& mac->bssid) + 3UL);
  *(nullfunc + 8U) = *((u8 *)(& mac->bssid) + 4UL);
  *(nullfunc + 9U) = *((u8 *)(& mac->bssid) + 5UL);
  *(nullfunc + 10UL) = *((u8 *)(& mac->mac_addr));
  *(nullfunc + 11U) = *((u8 *)(& mac->mac_addr) + 1UL);
  *(nullfunc + 12U) = *((u8 *)(& mac->mac_addr) + 2UL);
  *(nullfunc + 13U) = *((u8 *)(& mac->mac_addr) + 3UL);
  *(nullfunc + 14U) = *((u8 *)(& mac->mac_addr) + 4UL);
  *(nullfunc + 15U) = *((u8 *)(& mac->mac_addr) + 5UL);
  *(nullfunc + 16UL) = *((u8 *)(& mac->bssid));
  *(nullfunc + 17U) = *((u8 *)(& mac->bssid) + 1UL);
  *(nullfunc + 18U) = *((u8 *)(& mac->bssid) + 2UL);
  *(nullfunc + 19U) = *((u8 *)(& mac->bssid) + 3UL);
  *(nullfunc + 20U) = *((u8 *)(& mac->bssid) + 4UL);
  *(nullfunc + 21U) = *((u8 *)(& mac->bssid) + 5UL);
  *((u8 *)(& u1RsvdPageLoc) + 2UL) = 3U;
  p_probersp = (u8 *)(& reserved_page_packet) + 512UL;
  *(p_probersp + 4UL) = *((u8 *)(& mac->bssid));
  *(p_probersp + 5U) = *((u8 *)(& mac->bssid) + 1UL);
  *(p_probersp + 6U) = *((u8 *)(& mac->bssid) + 2UL);
  *(p_probersp + 7U) = *((u8 *)(& mac->bssid) + 3UL);
  *(p_probersp + 8U) = *((u8 *)(& mac->bssid) + 4UL);
  *(p_probersp + 9U) = *((u8 *)(& mac->bssid) + 5UL);
  *(p_probersp + 10UL) = *((u8 *)(& mac->mac_addr));
  *(p_probersp + 11U) = *((u8 *)(& mac->mac_addr) + 1UL);
  *(p_probersp + 12U) = *((u8 *)(& mac->mac_addr) + 2UL);
  *(p_probersp + 13U) = *((u8 *)(& mac->mac_addr) + 3UL);
  *(p_probersp + 14U) = *((u8 *)(& mac->mac_addr) + 4UL);
  *(p_probersp + 15U) = *((u8 *)(& mac->mac_addr) + 5UL);
  *(p_probersp + 16UL) = *((u8 *)(& mac->bssid));
  *(p_probersp + 17U) = *((u8 *)(& mac->bssid) + 1UL);
  *(p_probersp + 18U) = *((u8 *)(& mac->bssid) + 2UL);
  *(p_probersp + 19U) = *((u8 *)(& mac->bssid) + 3UL);
  *(p_probersp + 20U) = *((u8 *)(& mac->bssid) + 4UL);
  *(p_probersp + 21U) = *((u8 *)(& mac->bssid) + 5UL);
  *((u8 *)(& u1RsvdPageLoc)) = 4U;
  totalpacketlen = 768U;
  tmp___3 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                             0L);
  }
  if (tmp___3 != 0L) {
    {
    tmp___4 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___4 != 0L) {
      {
      tmp___0 = get_current();
      tmp___1 = get_current();
      printk("\017%s: In process \"%s\" (pid %i): %s\n", (char *)"rtl8192de", (char *)(& tmp___1->comm),
             tmp___0->pid, (char *)"rtl92d_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL");
      descriptor.modname = "rtl8192de";
      descriptor.function = "rtl92d_set_fw_rsvdpagepkt";
      descriptor.filename = "drivers/net/wireless/rtlwifi/rtl8192de/fw.c";
      descriptor.format = "";
      descriptor.lineno = 747U;
      descriptor.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp___2 != 0L) {
        {
        print_hex_dump("\017", "", 0, 16, 1, (void const *)(& reserved_page_packet),
                       (size_t )totalpacketlen, 1);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  tmp___8 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                             0L);
  }
  if (tmp___8 != 0L) {
    {
    tmp___9 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
    }
    if (tmp___9 != 0L) {
      {
      tmp___5 = get_current();
      tmp___6 = get_current();
      printk("\017%s: In process \"%s\" (pid %i): %s\n", (char *)"rtl8192de", (char *)(& tmp___6->comm),
             tmp___5->pid, (char *)"rtl92d_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL");
      descriptor___0.modname = "rtl8192de";
      descriptor___0.function = "rtl92d_set_fw_rsvdpagepkt";
      descriptor___0.filename = "drivers/net/wireless/rtlwifi/rtl8192de/fw.c";
      descriptor___0.format = "";
      descriptor___0.lineno = 750U;
      descriptor___0.flags = 0U;
      tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___7 != 0L) {
        {
        print_hex_dump("\017", "", 0, 16, 1, (void const *)(& u1RsvdPageLoc), 3UL,
                       1);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  skb = dev_alloc_skb(totalpacketlen);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    dlok = 0;
  } else {
    {
    tmp___10 = skb_put(skb, totalpacketlen);
    memcpy((void *)tmp___10, (void const *)(& reserved_page_packet), (size_t )totalpacketlen);
    rtstatus = _rtl92d_cmd_send_packet(hw, skb);
    }
    if ((int )rtstatus) {
      dlok = 1;
    } else {
    }
  }
  if ((int )dlok) {
    {
    tmp___13 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 65536ULL) != 0ULL,
                                0L);
    }
    if (tmp___13 != 0L) {
      {
      tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___14 != 0L) {
        {
        tmp___11 = preempt_count();
        tmp___12 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Set RSVD page location to Fw\n", "rtl92d_set_fw_rsvdpagepkt",
               (unsigned long )tmp___12 & 2096896UL, ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    {
    tmp___18 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                                0L);
    }
    if (tmp___18 != 0L) {
      {
      tmp___19 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
      }
      if (tmp___19 != 0L) {
        {
        tmp___15 = get_current();
        tmp___16 = get_current();
        printk("\017%s: In process \"%s\" (pid %i): %s\n", (char *)"rtl8192de", (char *)(& tmp___16->comm),
               tmp___15->pid, (char *)"H2C_RSVDPAGE");
        descriptor___1.modname = "rtl8192de";
        descriptor___1.function = "rtl92d_set_fw_rsvdpagepkt";
        descriptor___1.filename = "drivers/net/wireless/rtlwifi/rtl8192de/fw.c";
        descriptor___1.format = "";
        descriptor___1.lineno = 766U;
        descriptor___1.flags = 0U;
        tmp___17 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
        }
        if (tmp___17 != 0L) {
          {
          print_hex_dump("\017", "", 0, 16, 1, (void const *)(& u1RsvdPageLoc),
                         3UL, 1);
          }
        } else {
        }
      } else {
      }
    } else {
    }
    {
    rtl92d_fill_h2c_cmd(hw, 3, 3U, (u8 *)(& u1RsvdPageLoc));
    }
  } else {
    {
    tmp___22 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                                0L);
    }
    if (tmp___22 != 0L) {
      {
      tmp___23 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 1, 0L);
      }
      if (tmp___23 != 0L) {
        {
        tmp___20 = preempt_count();
        tmp___21 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Set RSVD page location to Fw FAIL!!!!!!\n",
               "rtl92d_set_fw_rsvdpagepkt", (unsigned long )tmp___21 & 2096896UL,
               ((unsigned long )tmp___20 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  }
  return;
}
}
void rtl92d_set_fw_joinbss_report_cmd(struct ieee80211_hw *hw , u8 mstatus )
{
  u8 u1_joinbssrpt_parm[1U] ;
  {
  {
  u1_joinbssrpt_parm[0] = 0U;
  *((u8 *)(& u1_joinbssrpt_parm)) = mstatus;
  rtl92d_fill_h2c_cmd(hw, 2, 1U, (u8 *)(& u1_joinbssrpt_parm));
  }
  return;
}
}
extern void synchronize_irq(unsigned int ) ;
__inline static u16 rtl_read_word(struct rtl_priv *rtlpriv , u32 addr )
{
  u16 tmp ;
  {
  {
  tmp = (*(rtlpriv->io.read16_sync))(rtlpriv, addr);
  }
  return (tmp);
}
}
__inline static void rtl_write_word(struct rtl_priv *rtlpriv , u32 addr , u16 val16 )
{
  {
  {
  (*(rtlpriv->io.write16_async))(rtlpriv, addr, (int )val16);
  }
  if ((int )(rtlpriv->cfg)->write_readback) {
    {
    (*(rtlpriv->io.read16_sync))(rtlpriv, addr);
    }
  } else {
  }
  return;
}
}
__inline static u8 get_rf_type(struct rtl_phy *rtlphy )
{
  {
  return (rtlphy->rf_type);
}
}
extern void rtl_efuse_shadow_map_update(struct ieee80211_hw * ) ;
extern void rtl_cam_reset_all_entry(struct ieee80211_hw * ) ;
extern u8 rtl_cam_add_one_entry(struct ieee80211_hw * , u8 * , u32 , u32 , u32 ,
                                u32 , u8 * ) ;
extern int rtl_cam_delete_one_entry(struct ieee80211_hw * , u8 * , u32 ) ;
extern void rtl_cam_mark_invalid(struct ieee80211_hw * , u8 ) ;
extern void rtl_cam_empty_entry(struct ieee80211_hw * , u8 ) ;
extern u8 rtl_cam_get_free_entry(struct ieee80211_hw * , u8 * ) ;
extern void rtl_cam_del_entry(struct ieee80211_hw * , u8 * ) ;
bool rtl92d_phy_mac_config(struct ieee80211_hw *hw ) ;
bool rtl92d_phy_bb_config(struct ieee80211_hw *hw ) ;
bool rtl92d_phy_rf_config(struct ieee80211_hw *hw ) ;
void rtl92d_phy_get_hw_reg_originalvalue(struct ieee80211_hw *hw ) ;
bool rtl92d_phy_set_io_cmd(struct ieee80211_hw *hw , enum io_type iotype ) ;
void rtl92d_phy_config_macphymode(struct ieee80211_hw *hw ) ;
void rtl92d_phy_config_macphymode_info(struct ieee80211_hw *hw ) ;
u8 rtl92d_get_chnlgroup_fromarray(u8 chnl ) ;
void rtl92d_phy_set_poweron(struct ieee80211_hw *hw ) ;
void rtl92d_phy_config_maccoexist_rfpage(struct ieee80211_hw *hw ) ;
bool rtl92d_phy_check_poweroff(struct ieee80211_hw *hw ) ;
void rtl92d_update_bbrf_configuration(struct ieee80211_hw *hw ) ;
void rtl92de_sw_led_on(struct ieee80211_hw *hw , struct rtl_led *pled ) ;
void rtl92de_sw_led_off(struct ieee80211_hw *hw , struct rtl_led *pled ) ;
spinlock_t globalmutex_power ;
spinlock_t globalmutex_for_power_and_efuse ;
void rtl92de_get_hw_reg(struct ieee80211_hw *hw , u8 variable , u8 *val ) ;
void rtl92de_read_eeprom_info(struct ieee80211_hw *hw ) ;
void rtl92de_interrupt_recognized(struct ieee80211_hw *hw , u32 *p_inta , u32 *p_intb ) ;
int rtl92de_hw_init(struct ieee80211_hw *hw ) ;
void rtl92de_card_disable(struct ieee80211_hw *hw ) ;
void rtl92de_enable_interrupt(struct ieee80211_hw *hw ) ;
void rtl92de_disable_interrupt(struct ieee80211_hw *hw ) ;
int rtl92de_set_network_type(struct ieee80211_hw *hw , enum nl80211_iftype type ) ;
void rtl92de_set_check_bssid(struct ieee80211_hw *hw , bool check_bssid ) ;
void rtl92de_set_qos(struct ieee80211_hw *hw , int aci ) ;
void rtl92de_set_beacon_related_registers(struct ieee80211_hw *hw ) ;
void rtl92de_set_beacon_interval(struct ieee80211_hw *hw ) ;
void rtl92de_update_interrupt_mask(struct ieee80211_hw *hw , u32 add_msr , u32 rm_msr ) ;
void rtl92de_set_hw_reg(struct ieee80211_hw *hw , u8 variable , u8 *val ) ;
void rtl92de_update_hal_rate_tbl(struct ieee80211_hw *hw , struct ieee80211_sta *sta ,
                                 u8 rssi_level ) ;
void rtl92de_update_channel_access_setting(struct ieee80211_hw *hw ) ;
bool rtl92de_gpio_radio_on_off_checking(struct ieee80211_hw *hw , u8 *valid ) ;
void rtl92de_enable_hw_security_config(struct ieee80211_hw *hw ) ;
void rtl92de_set_key(struct ieee80211_hw *hw , u32 key_index , u8 *p_macaddr , bool is_group ,
                     u8 enc_algo , bool is_wepkey , bool clear_all ) ;
void rtl92de_write_dword_dbi(struct ieee80211_hw *hw , u16 offset , u32 value , u8 direct ) ;
u32 rtl92de_read_dword_dbi(struct ieee80211_hw *hw , u16 offset , u8 direct ) ;
void rtl92de_suspend(struct ieee80211_hw *hw ) ;
void rtl92de_resume(struct ieee80211_hw *hw ) ;
void rtl92d_linked_set_reg(struct ieee80211_hw *hw ) ;
u32 rtl92de_read_dword_dbi(struct ieee80211_hw *hw , u16 offset , u8 direct )
{
  struct rtl_priv *rtlpriv ;
  u32 value ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtl_write_word(rtlpriv, 848U, (int )offset & 4092);
  rtl_write_byte(rtlpriv, 850U, (int )((unsigned int )direct | 2U));
  __const_udelay(42950UL);
  value = rtl_read_dword(rtlpriv, 844U);
  }
  return (value);
}
}
void rtl92de_write_dword_dbi(struct ieee80211_hw *hw , u16 offset , u32 value , u8 direct )
{
  struct rtl_priv *rtlpriv ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtl_write_word(rtlpriv, 848U, (int )((u16 )(((int )((short )offset) & 4092) | -4096)));
  rtl_write_dword(rtlpriv, 840U, value);
  rtl_write_byte(rtlpriv, 850U, (int )((unsigned int )direct | 1U));
  }
  return;
}
}
static void _rtl92de_set_bcn_ctrl_reg(struct ieee80211_hw *hw , u8 set_bits , u8 clear_bits )
{
  struct rtl_pci *rtlpci ;
  struct rtl_priv *rtlpriv ;
  {
  {
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpci->reg_bcn_ctrl_val = rtlpci->reg_bcn_ctrl_val | (u32 )set_bits;
  rtlpci->reg_bcn_ctrl_val = rtlpci->reg_bcn_ctrl_val & (u32 )(~ ((int )clear_bits));
  rtl_write_byte(rtlpriv, 1360U, (int )((unsigned char )rtlpci->reg_bcn_ctrl_val));
  }
  return;
}
}
static void _rtl92de_stop_tx_beacon(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  u8 tmp1byte ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp1byte = rtl_read_byte(rtlpriv, 1058U);
  rtl_write_byte(rtlpriv, 1058U, (int )tmp1byte & 191);
  rtl_write_byte(rtlpriv, 1373U, 255);
  rtl_write_byte(rtlpriv, 1345U, 100);
  tmp1byte = rtl_read_byte(rtlpriv, 1346U);
  tmp1byte = (unsigned int )tmp1byte & 254U;
  rtl_write_byte(rtlpriv, 1346U, (int )tmp1byte);
  }
  return;
}
}
static void _rtl92de_resume_tx_beacon(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  u8 tmp1byte ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp1byte = rtl_read_byte(rtlpriv, 1058U);
  rtl_write_byte(rtlpriv, 1058U, (int )((unsigned int )tmp1byte | 64U));
  rtl_write_byte(rtlpriv, 1373U, 10);
  rtl_write_byte(rtlpriv, 1345U, 255);
  tmp1byte = rtl_read_byte(rtlpriv, 1346U);
  tmp1byte = (u8 )((unsigned int )tmp1byte | 1U);
  rtl_write_byte(rtlpriv, 1346U, (int )tmp1byte);
  }
  return;
}
}
static void _rtl92de_enable_bcn_sub_func(struct ieee80211_hw *hw )
{
  {
  {
  _rtl92de_set_bcn_ctrl_reg(hw, 0, 2);
  }
  return;
}
}
static void _rtl92de_disable_bcn_sub_func(struct ieee80211_hw *hw )
{
  {
  {
  _rtl92de_set_bcn_ctrl_reg(hw, 2, 0);
  }
  return;
}
}
void rtl92de_get_hw_reg(struct ieee80211_hw *hw , u8 variable , u8 *val )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_ps_ctl *ppsc ;
  struct rtl_pci *rtlpci ;
  enum rf_pwrstate rfState ;
  u32 val_rcr ;
  u64 tsf ;
  u32 *ptsf_low ;
  u32 *ptsf_high ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  ppsc = & ((struct rtl_priv *)hw->priv)->psc;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  {
  if ((int )variable == 43) {
    goto case_43;
  } else {
  }
  if ((int )variable == 39) {
    goto case_39;
  } else {
  }
  if ((int )variable == 83) {
    goto case_83;
  } else {
  }
  if ((int )variable == 63) {
    goto case_63;
  } else {
  }
  if ((int )variable == 81) {
    goto case_81;
  } else {
  }
  if ((int )variable == 86) {
    goto case_86;
  } else {
  }
  if ((int )variable == 87) {
    goto case_87;
  } else {
  }
  goto switch_default;
  case_43:
  *((u32 *)val) = rtlpci->receive_config;
  goto ldv_50971;
  case_39:
  *((enum rf_pwrstate *)val) = ppsc->rfpwr_state;
  goto ldv_50971;
  case_83:
  {
  (*(((rtlpriv->cfg)->ops)->get_hw_reg))(hw, 39, (u8 *)(& rfState));
  }
  if ((unsigned int )rfState == 2U) {
    *((bool *)val) = 1;
  } else {
    {
    val_rcr = rtl_read_dword(rtlpriv, 1544U);
    val_rcr = val_rcr & 458752U;
    }
    if (val_rcr != 0U) {
      *((bool *)val) = 0;
    } else {
      *((bool *)val) = 1;
    }
  }
  goto ldv_50971;
  case_63:
  *((bool *)val) = ppsc->fw_current_inpsmode;
  goto ldv_50971;
  case_81:
  {
  ptsf_low = (u32 *)(& tsf);
  ptsf_high = (u32 *)(& tsf) + 1UL;
  *ptsf_high = rtl_read_dword(rtlpriv, 1380U);
  *ptsf_low = rtl_read_dword(rtlpriv, 1376U);
  *((u64 *)val) = tsf;
  }
  goto ldv_50971;
  case_86:
  *((bool *)val) = rtlpriv->dm.interrupt_migration;
  goto ldv_50971;
  case_87:
  *((bool *)val) = rtlpriv->dm.disable_tx_int;
  goto ldv_50971;
  switch_default:
  {
  tmp___1 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> switch case not processed\n", "rtl92de_get_hw_reg",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_50971;
  switch_break: ;
  }
  ldv_50971: ;
  return;
}
}
void rtl92de_set_hw_reg(struct ieee80211_hw *hw , u8 variable , u8 *val )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_pci *rtlpci ;
  struct rtl_mac *mac ;
  struct rtl_hal *rtlhal ;
  struct rtl_efuse *rtlefuse ;
  struct rtl_ps_ctl *ppsc ;
  u8 idx ;
  u16 rate_cfg ;
  u8 rate_index ;
  u8 e_aci ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  u8 reg_tmp ;
  u8 short_preamble ;
  u8 min_spacing_to_set ;
  u8 sec_min_space ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  u8 density_to_set ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  u8 factor_toset ;
  u32 regtoSet ;
  u8 *ptmp_byte ;
  u8 index ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  u8 e_aci___0 ;
  u8 e_aci___1 ;
  union aci_aifsn *p_aci_aifsn ;
  u8 acm ;
  u8 acm_ctrl ;
  u8 tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  long tmp___18 ;
  long tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  long tmp___22 ;
  long tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  long tmp___26 ;
  long tmp___27 ;
  u8 retry_limit ;
  u8 mstatus ;
  u8 tmp_regcr ;
  u8 tmp_reg422 ;
  bool recover ;
  u16 u2btmp ;
  u8 btype_ibss ;
  bool int_migration ;
  bool disable_ac_int ;
  int tmp___28 ;
  int tmp___29 ;
  long tmp___30 ;
  long tmp___31 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  rtlefuse = & ((struct rtl_priv *)hw->priv)->efuse;
  ppsc = & ((struct rtl_priv *)hw->priv)->psc;
  {
  if ((int )variable == 0) {
    goto case_0;
  } else {
  }
  if ((int )variable == 2) {
    goto case_2;
  } else {
  }
  if ((int )variable == 3) {
    goto case_3;
  } else {
  }
  if ((int )variable == 14) {
    goto case_14;
  } else {
  }
  if ((int )variable == 17) {
    goto case_17;
  } else {
  }
  if ((int )variable == 18) {
    goto case_18;
  } else {
  }
  if ((int )variable == 27) {
    goto case_27;
  } else {
  }
  if ((int )variable == 28) {
    goto case_28;
  } else {
  }
  if ((int )variable == 29) {
    goto case_29;
  } else {
  }
  if ((int )variable == 31) {
    goto case_31;
  } else {
  }
  if ((int )variable == 32) {
    goto case_32;
  } else {
  }
  if ((int )variable == 43) {
    goto case_43;
  } else {
  }
  if ((int )variable == 52) {
    goto case_52;
  } else {
  }
  if ((int )variable == 84) {
    goto case_84;
  } else {
  }
  if ((int )variable == 56) {
    goto case_56;
  } else {
  }
  if ((int )variable == 55) {
    goto case_55;
  } else {
  }
  if ((int )variable == 69) {
    goto case_69;
  } else {
  }
  if ((int )variable == 26) {
    goto case_26;
  } else {
  }
  if ((int )variable == 59) {
    goto case_59;
  } else {
  }
  if ((int )variable == 60) {
    goto case_60;
  } else {
  }
  if ((int )variable == 63) {
    goto case_63;
  } else {
  }
  if ((int )variable == 61) {
    goto case_61;
  } else {
  }
  if ((int )variable == 79) {
    goto case_79;
  } else {
  }
  if ((int )variable == 81) {
    goto case_81;
  } else {
  }
  if ((int )variable == 86) {
    goto case_86;
  } else {
  }
  if ((int )variable == 87) {
    goto case_87;
  } else {
  }
  goto switch_default___1;
  case_0:
  idx = 0U;
  goto ldv_50999;
  ldv_50998:
  {
  rtl_write_byte(rtlpriv, (u32 )((int )idx + 1552), (int )*(val + (unsigned long )idx));
  idx = (u8 )((int )idx + 1);
  }
  ldv_50999: ;
  if ((unsigned int )idx <= 5U) {
    goto ldv_50998;
  } else {
  }
  goto ldv_51001;
  case_2:
  rate_cfg = *((u16 *)val);
  rate_index = 0U;
  rate_cfg = (unsigned int )rate_cfg & 351U;
  if (mac->vendor == 6U && ((int )rate_cfg & 336) == 0) {
    rate_cfg = (u16 )((unsigned int )rate_cfg | 1U);
  } else {
  }
  {
  rtl_write_byte(rtlpriv, 1088U, (int )((u8 )rate_cfg));
  rtl_write_byte(rtlpriv, 1089U, (int )((u8 )((int )rate_cfg >> 8)));
  }
  goto ldv_51006;
  ldv_51005:
  rate_cfg = (u16 )((int )rate_cfg >> 1);
  rate_index = (u8 )((int )rate_index + 1);
  ldv_51006: ;
  if ((unsigned int )rate_cfg > 1U) {
    goto ldv_51005;
  } else {
  }
  if ((unsigned int )rtlhal->fw_version > 14U) {
    {
    rtl_write_byte(rtlpriv, 1152U, (int )rate_index);
    }
  } else {
  }
  goto ldv_51001;
  case_3:
  idx = 0U;
  goto ldv_51010;
  ldv_51009:
  {
  rtl_write_byte(rtlpriv, (u32 )((int )idx + 1560), (int )*(val + (unsigned long )idx));
  idx = (u8 )((int )idx + 1);
  }
  ldv_51010: ;
  if ((unsigned int )idx <= 5U) {
    goto ldv_51009;
  } else {
  }
  goto ldv_51001;
  case_14:
  {
  rtl_write_byte(rtlpriv, 1301U, (int )*val);
  rtl_write_byte(rtlpriv, 1303U, (int )*(val + 1UL));
  rtl_write_byte(rtlpriv, 1065U, (int )*val);
  rtl_write_byte(rtlpriv, 1595U, (int )*val);
  }
  if ((unsigned int )mac->ht_enable == 0U) {
    {
    rtl_write_word(rtlpriv, 1598U, 3598);
    }
  } else {
    {
    rtl_write_word(rtlpriv, 1598U, (int )*((u16 *)val));
    }
  }
  goto ldv_51001;
  case_17:
  {
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 32ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> HW_VAR_SLOT_TIME %x\n", "rtl92de_set_hw_reg",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             (int )*val);
      }
    } else {
    }
  } else {
  }
  {
  rtl_write_byte(rtlpriv, 1307U, (int )*val);
  e_aci = 0U;
  }
  goto ldv_51017;
  ldv_51016:
  {
  (*(((rtlpriv->cfg)->ops)->set_hw_reg))(hw, 31, & e_aci);
  e_aci = (u8 )((int )e_aci + 1);
  }
  ldv_51017: ;
  if ((unsigned int )e_aci <= 3U) {
    goto ldv_51016;
  } else {
  }
  goto ldv_51001;
  case_18:
  short_preamble = (unsigned int )*val != 0U;
  reg_tmp = (int )mac->cur_40_prime_sc << 5U;
  if ((unsigned int )short_preamble != 0U) {
    reg_tmp = (u8 )((unsigned int )reg_tmp | 128U);
  } else {
  }
  {
  rtl_write_byte(rtlpriv, 1090U, (int )reg_tmp);
  }
  goto ldv_51001;
  case_27:
  min_spacing_to_set = *val;
  if ((unsigned int )min_spacing_to_set <= 7U) {
    sec_min_space = 0U;
    if ((int )min_spacing_to_set < (int )sec_min_space) {
      min_spacing_to_set = sec_min_space;
    } else {
    }
    {
    mac->min_space_cfg = (u8 )(((int )((signed char )mac->min_space_cfg) & -8) | (int )((signed char )min_spacing_to_set));
    *val = min_spacing_to_set;
    tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 32ULL) != 0ULL,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Set HW_VAR_AMPDU_MIN_SPACE: %#x\n", "rtl92de_set_hw_reg",
               (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL,
               (int )mac->min_space_cfg);
        }
      } else {
      }
    } else {
    }
    {
    rtl_write_byte(rtlpriv, 1116U, (int )mac->min_space_cfg);
    }
  } else {
  }
  goto ldv_51001;
  case_28:
  {
  density_to_set = *val;
  mac->min_space_cfg = rtlpriv->rtlhal.minspace_cfg;
  mac->min_space_cfg = (u8 )((int )((signed char )mac->min_space_cfg) | (int )((signed char )((int )density_to_set << 3)));
  tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 32ULL) != 0ULL,
                             0L);
  }
  if (tmp___9 != 0L) {
    {
    tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___7 = preempt_count();
      tmp___8 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Set HW_VAR_SHORTGI_DENSITY: %#x\n", "rtl92de_set_hw_reg",
             (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL,
             (int )mac->min_space_cfg);
      }
    } else {
    }
  } else {
  }
  {
  rtl_write_byte(rtlpriv, 1116U, (int )mac->min_space_cfg);
  }
  goto ldv_51001;
  case_29:
  ptmp_byte = (u8 *)0U;
  if ((unsigned int )rtlhal->macphymode == 1U) {
    regtoSet = 3111282241U;
  } else
  if ((unsigned int )rtlhal->macphymode == 2U) {
    regtoSet = 1717724737U;
  } else {
    regtoSet = 3111299137U;
  }
  factor_toset = *val;
  if ((unsigned int )factor_toset <= 3U) {
    factor_toset = (u8 )(1 << ((int )factor_toset + 2));
    if ((unsigned int )factor_toset > 15U) {
      factor_toset = 15U;
    } else {
    }
    index = 0U;
    goto ldv_51033;
    ldv_51032:
    ptmp_byte = (u8 *)(& regtoSet) + (unsigned long )index;
    if (((int )*ptmp_byte & 240) > (int )factor_toset << 4) {
      *ptmp_byte = (u8 )(((int )((signed char )*ptmp_byte) & 15) | (int )((signed char )((int )factor_toset << 4)));
    } else {
    }
    if (((int )*ptmp_byte & 15) > (int )factor_toset) {
      *ptmp_byte = (u8 )(((int )((signed char )*ptmp_byte) & -16) | (int )((signed char )factor_toset));
    } else {
    }
    index = (u8 )((int )index + 1);
    ldv_51033: ;
    if ((unsigned int )index <= 3U) {
      goto ldv_51032;
    } else {
    }
    {
    rtl_write_dword(rtlpriv, 1112U, regtoSet);
    tmp___13 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 32ULL) != 0ULL,
                                0L);
    }
    if (tmp___13 != 0L) {
      {
      tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___14 != 0L) {
        {
        tmp___11 = preempt_count();
        tmp___12 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Set HW_VAR_AMPDU_FACTOR: %#x\n", "rtl92de_set_hw_reg",
               (unsigned long )tmp___12 & 2096896UL, ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL,
               (int )factor_toset);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  goto ldv_51001;
  case_31:
  {
  e_aci___0 = *val;
  rtl92d_dm_init_edca_turbo(hw);
  }
  if ((unsigned int )rtlpci->acm_method != 2U) {
    {
    (*(((rtlpriv->cfg)->ops)->set_hw_reg))(hw, 32, & e_aci___0);
    }
  } else {
  }
  goto ldv_51001;
  case_32:
  {
  e_aci___1 = *val;
  p_aci_aifsn = (union aci_aifsn *)(& mac->ac[0].aifs);
  acm = p_aci_aifsn->f.acm;
  tmp___15 = rtl_read_byte(rtlpriv, 1472U);
  acm_ctrl = tmp___15;
  acm_ctrl = (u8 )((int )((signed char )acm_ctrl) | ((unsigned int )rtlpci->acm_method != 2U));
  }
  if ((unsigned int )acm != 0U) {
    {
    if ((int )e_aci___1 == 0) {
      goto case_0___0;
    } else {
    }
    if ((int )e_aci___1 == 2) {
      goto case_2___0;
    } else {
    }
    if ((int )e_aci___1 == 3) {
      goto case_3___0;
    } else {
    }
    goto switch_default;
    case_0___0:
    acm_ctrl = (u8 )((unsigned int )acm_ctrl | 2U);
    goto ldv_51043;
    case_2___0:
    acm_ctrl = (u8 )((unsigned int )acm_ctrl | 4U);
    goto ldv_51043;
    case_3___0:
    acm_ctrl = (u8 )((unsigned int )acm_ctrl | 8U);
    goto ldv_51043;
    switch_default:
    {
    tmp___18 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                                0L);
    }
    if (tmp___18 != 0L) {
      {
      tmp___19 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 1, 0L);
      }
      if (tmp___19 != 0L) {
        {
        tmp___16 = preempt_count();
        tmp___17 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> HW_VAR_ACM_CTRL acm set failed: eACI is %d\n",
               "rtl92de_set_hw_reg", (unsigned long )tmp___17 & 2096896UL, ((unsigned long )tmp___16 & 0xffffffffffdfffffUL) != 0UL,
               (int )acm);
        }
      } else {
      }
    } else {
    }
    goto ldv_51043;
    switch_break___0: ;
    }
    ldv_51043: ;
  } else {
    {
    if ((int )e_aci___1 == 0) {
      goto case_0___1;
    } else {
    }
    if ((int )e_aci___1 == 2) {
      goto case_2___1;
    } else {
    }
    if ((int )e_aci___1 == 3) {
      goto case_3___1;
    } else {
    }
    goto switch_default___0;
    case_0___1:
    acm_ctrl = (unsigned int )acm_ctrl & 253U;
    goto ldv_51048;
    case_2___1:
    acm_ctrl = (unsigned int )acm_ctrl & 251U;
    goto ldv_51048;
    case_3___1:
    acm_ctrl = (unsigned int )acm_ctrl & 247U;
    goto ldv_51048;
    switch_default___0:
    {
    tmp___22 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                                0L);
    }
    if (tmp___22 != 0L) {
      {
      tmp___23 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___23 != 0L) {
        {
        tmp___20 = preempt_count();
        tmp___21 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> switch case not processed\n", "rtl92de_set_hw_reg",
               (unsigned long )tmp___21 & 2096896UL, ((unsigned long )tmp___20 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    goto ldv_51048;
    switch_break___1: ;
    }
    ldv_51048: ;
  }
  {
  tmp___26 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 33554432ULL) != 0ULL,
                              0L);
  }
  if (tmp___26 != 0L) {
    {
    tmp___27 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___27 != 0L) {
      {
      tmp___24 = preempt_count();
      tmp___25 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> SetHwReg8190pci(): [HW_VAR_ACM_CTRL] Write 0x%X\n",
             "rtl92de_set_hw_reg", (unsigned long )tmp___25 & 2096896UL, ((unsigned long )tmp___24 & 0xffffffffffdfffffUL) != 0UL,
             (int )acm_ctrl);
      }
    } else {
    }
  } else {
  }
  {
  rtl_write_byte(rtlpriv, 1472U, (int )acm_ctrl);
  }
  goto ldv_51001;
  case_43:
  {
  rtl_write_dword(rtlpriv, 1544U, *((u32 *)val));
  rtlpci->receive_config = *((u32 *)val);
  }
  goto ldv_51001;
  case_52:
  {
  retry_limit = *val;
  rtl_write_word(rtlpriv, 1066U, (int )((u16 )((int )((short )((int )retry_limit << 8)) | (int )((short )retry_limit))));
  }
  goto ldv_51001;
  case_84:
  {
  rtl_write_byte(rtlpriv, 1363U, 3);
  }
  goto ldv_51001;
  case_56:
  rtlefuse->efuse_usedbytes = *((u16 *)val);
  goto ldv_51001;
  case_55:
  rtlefuse->efuse_usedpercentage = *val;
  goto ldv_51001;
  case_69:
  {
  rtl92d_phy_set_io_cmd(hw, *((enum io_type *)val));
  }
  goto ldv_51001;
  case_26:
  {
  rtl_write_byte(rtlpriv, 1664U, (int )*val);
  }
  goto ldv_51001;
  case_59:
  {
  rtl92d_fill_h2c_cmd(hw, 15, 1U, val);
  }
  goto ldv_51001;
  case_60: ;
  goto ldv_51001;
  case_63:
  ppsc->fw_current_inpsmode = *((bool *)val);
  goto ldv_51001;
  case_61:
  mstatus = *val;
  recover = 0;
  if ((unsigned int )mstatus == 1U) {
    {
    (*(((rtlpriv->cfg)->ops)->set_hw_reg))(hw, 79, (u8 *)0U);
    tmp_regcr = rtl_read_byte(rtlpriv, 257U);
    rtl_write_byte(rtlpriv, 257U, (int )((unsigned int )tmp_regcr | 1U));
    _rtl92de_set_bcn_ctrl_reg(hw, 0, 8);
    _rtl92de_set_bcn_ctrl_reg(hw, 16, 0);
    tmp_reg422 = rtl_read_byte(rtlpriv, 1058U);
    }
    if (((unsigned long )tmp_reg422 & 64UL) != 0UL) {
      recover = 1;
    } else {
    }
    {
    rtl_write_byte(rtlpriv, 1058U, (int )tmp_reg422 & 191);
    rtl92d_set_fw_rsvdpagepkt(hw, 0);
    _rtl92de_set_bcn_ctrl_reg(hw, 8, 0);
    _rtl92de_set_bcn_ctrl_reg(hw, 0, 16);
    }
    if ((int )recover) {
      {
      rtl_write_byte(rtlpriv, 1058U, (int )tmp_reg422);
      }
    } else {
    }
    {
    rtl_write_byte(rtlpriv, 257U, (int )tmp_regcr & 254);
    }
  } else {
  }
  {
  rtl92d_set_fw_joinbss_report_cmd(hw, (int )*val);
  }
  goto ldv_51001;
  case_79:
  {
  u2btmp = rtl_read_word(rtlpriv, 1704U);
  u2btmp = (unsigned int )u2btmp & 49152U;
  rtl_write_word(rtlpriv, 1704U, (int )u2btmp | (int )mac->assoc_id);
  }
  goto ldv_51001;
  case_81:
  btype_ibss = *val;
  if ((unsigned int )btype_ibss != 0U) {
    {
    _rtl92de_stop_tx_beacon(hw);
    }
  } else {
  }
  {
  _rtl92de_set_bcn_ctrl_reg(hw, 0, 8);
  rtl_write_dword(rtlpriv, 1376U, (unsigned int )mac->tsf);
  rtl_write_dword(rtlpriv, 1380U, (unsigned int )(mac->tsf >> 32));
  _rtl92de_set_bcn_ctrl_reg(hw, 8, 0);
  }
  if ((unsigned int )btype_ibss != 0U) {
    {
    _rtl92de_resume_tx_beacon(hw);
    }
  } else {
  }
  goto ldv_51001;
  case_86:
  int_migration = *((bool *)val);
  if ((int )int_migration) {
    {
    rtl_write_dword(rtlpriv, 772U, 4261416864U);
    rtlpriv->dm.interrupt_migration = int_migration;
    }
  } else {
    {
    rtl_write_dword(rtlpriv, 772U, 0U);
    rtlpriv->dm.interrupt_migration = int_migration;
    }
  }
  goto ldv_51001;
  case_87:
  disable_ac_int = *((bool *)val);
  if ((int )disable_ac_int) {
    {
    (*(((rtlpriv->cfg)->ops)->update_interrupt_mask))(hw, 0U, 30U);
    rtlpriv->dm.disable_tx_int = disable_ac_int;
    }
  } else {
    {
    (*(((rtlpriv->cfg)->ops)->update_interrupt_mask))(hw, 30U, 0U);
    rtlpriv->dm.disable_tx_int = disable_ac_int;
    }
  }
  goto ldv_51001;
  switch_default___1:
  {
  tmp___30 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                              0L);
  }
  if (tmp___30 != 0L) {
    {
    tmp___31 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___31 != 0L) {
      {
      tmp___28 = preempt_count();
      tmp___29 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> switch case not processed\n", "rtl92de_set_hw_reg",
             (unsigned long )tmp___29 & 2096896UL, ((unsigned long )tmp___28 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_51001;
  switch_break: ;
  }
  ldv_51001: ;
  return;
}
}
static bool _rtl92de_llt_write(struct ieee80211_hw *hw , u32 address , u32 data )
{
  struct rtl_priv *rtlpriv ;
  bool status ;
  long count ;
  u32 value ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  status = 1;
  count = 0L;
  value = (((address << 8) & 65535U) | (data & 255U)) | 1073741824U;
  rtl_write_dword(rtlpriv, 480U, value);
  }
  ldv_51088:
  {
  value = rtl_read_dword(rtlpriv, 480U);
  }
  if (value >> 30 == 0U) {
    goto ldv_51086;
  } else {
  }
  if (count > 20L) {
    {
    tmp___1 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp = preempt_count();
        tmp___0 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Failed to polling write LLT done at address %d!\n",
               "_rtl92de_llt_write", (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
               address);
        }
      } else {
      }
    } else {
    }
    status = 0;
    goto ldv_51086;
  } else {
  }
  count = count + 1L;
  if (count != 0L) {
    goto ldv_51088;
  } else {
  }
  ldv_51086: ;
  return (status);
}
}
static bool _rtl92de_llt_table_init(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  unsigned short i ;
  u8 txpktbuf_bndy ;
  u8 maxPage ;
  bool status ;
  u32 value32 ;
  u8 value8 ;
  u16 tmp ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  if ((unsigned int )rtlpriv->rtlhal.macphymode == 0U) {
    maxPage = 255U;
    txpktbuf_bndy = 246U;
    value8 = 0U;
    value32 = 2160004393U;
  } else
  if ((unsigned int )rtlpriv->rtlhal.macphymode != 0U) {
    maxPage = 127U;
    txpktbuf_bndy = 123U;
    value8 = 0U;
    value32 = 2155151365U;
  } else {
  }
  {
  rtl_write_byte(rtlpriv, 532U, (int )value8);
  rtl_write_dword(rtlpriv, 512U, value32);
  tmp = rtl_read_word(rtlpriv, 278U);
  rtl_write_dword(rtlpriv, 276U, (u32 )(((int )tmp << 16) | (int )txpktbuf_bndy));
  rtl_write_byte(rtlpriv, 521U, (int )txpktbuf_bndy);
  rtl_write_byte(rtlpriv, 1060U, (int )txpktbuf_bndy);
  rtl_write_byte(rtlpriv, 1061U, (int )txpktbuf_bndy);
  rtl_write_byte(rtlpriv, 1117U, (int )txpktbuf_bndy);
  rtl_write_byte(rtlpriv, 260U, 17);
  rtl_write_byte(rtlpriv, 1551U, 4);
  i = 0U;
  }
  goto ldv_51100;
  ldv_51099:
  {
  status = _rtl92de_llt_write(hw, (u32 )i, (u32 )((int )i + 1));
  }
  if (! status) {
    return (status);
  } else {
  }
  i = (unsigned short )((int )i + 1);
  ldv_51100: ;
  if ((int )i < (int )txpktbuf_bndy + -1) {
    goto ldv_51099;
  } else {
  }
  {
  status = _rtl92de_llt_write(hw, (u32 )((int )txpktbuf_bndy + -1), 255U);
  }
  if (! status) {
    return (status);
  } else {
  }
  i = (unsigned short )txpktbuf_bndy;
  goto ldv_51103;
  ldv_51102:
  {
  status = _rtl92de_llt_write(hw, (u32 )i, (u32 )((int )i + 1));
  }
  if (! status) {
    return (status);
  } else {
  }
  i = (unsigned short )((int )i + 1);
  ldv_51103: ;
  if ((int )i < (int )((unsigned short )maxPage)) {
    goto ldv_51102;
  } else {
  }
  {
  status = _rtl92de_llt_write(hw, (u32 )maxPage, (u32 )txpktbuf_bndy);
  }
  if (! status) {
    return (status);
  } else {
  }
  return (1);
}
}
static void _rtl92de_gen_refresh_led_state(struct ieee80211_hw *hw )
{
  struct rtl_pci_priv *pcipriv ;
  struct rtl_pci *rtlpci ;
  struct rtl_ps_ctl *ppsc ;
  struct rtl_led *pLed0 ;
  {
  pcipriv = (struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv);
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  ppsc = & ((struct rtl_priv *)hw->priv)->psc;
  pLed0 = & pcipriv->ledctl.sw_led0;
  if ((int )rtlpci->up_first_time) {
    return;
  } else {
  }
  if (ppsc->rfoff_reason == 268435456U) {
    {
    rtl92de_sw_led_on(hw, pLed0);
    }
  } else
  if (ppsc->rfoff_reason == 0U) {
    {
    rtl92de_sw_led_on(hw, pLed0);
    }
  } else {
    {
    rtl92de_sw_led_off(hw, pLed0);
    }
  }
  return;
}
}
static bool _rtl92de_init_mac(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_pci *rtlpci ;
  unsigned char bytetmp ;
  unsigned short wordtmp ;
  u16 retry ;
  u8 tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  rtl92d_phy_set_poweron(hw);
  rtl_write_byte(rtlpriv, 28U, 0);
  rtl_write_byte(rtlpriv, 32U, 5);
  rtl_write_byte(rtlpriv, 17U, 43);
  rtl_write_byte(rtlpriv, 36U, 15);
  tmp = rtl_read_byte(rtlpriv, 5U);
  bytetmp = (unsigned int )tmp | 1U;
  __const_udelay(8590UL);
  rtl_write_byte(rtlpriv, 5U, (int )bytetmp);
  __const_udelay(8590UL);
  bytetmp = rtl_read_byte(rtlpriv, 5U);
  __const_udelay(214750UL);
  retry = 0U;
  }
  goto ldv_51121;
  ldv_51120:
  {
  retry = (u16 )((int )retry + 1);
  bytetmp = rtl_read_byte(rtlpriv, 5U);
  __const_udelay(214750UL);
  }
  ldv_51121: ;
  if (((int )bytetmp & 1) != 0 && (unsigned int )retry <= 999U) {
    goto ldv_51120;
  } else {
  }
  {
  rtl_write_word(rtlpriv, 4U, 4114);
  rtl_write_byte(rtlpriv, 1U, 130);
  __const_udelay(8590UL);
  rtl_write_word(rtlpriv, 256U, 0);
  rtl_write_word(rtlpriv, 256U, 767);
  rtl_write_byte(rtlpriv, 769U, 0);
  tmp___0 = _rtl92de_llt_table_init(hw);
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
  rtl_write_dword(rtlpriv, 292U, 4294967295U);
  rtl_write_byte(rtlpriv, 300U, 255);
  rtl92d_phy_config_maccoexist_rfpage(hw);
  wordtmp = rtl_read_word(rtlpriv, 268U);
  wordtmp = (unsigned int )wordtmp & 15U;
  wordtmp = (unsigned int )wordtmp | 63345U;
  rtl_write_word(rtlpriv, 268U, (int )wordtmp);
  rtl_write_byte(rtlpriv, 1057U, 31);
  rtl_write_dword(rtlpriv, 1544U, rtlpci->receive_config);
  rtl_write_dword(rtlpriv, 1540U, rtlpci->transmit_config);
  rtl_write_byte(rtlpriv, 1232U, 0);
  rtl_write_dword(rtlpriv, 776U, (u32 )rtlpci->tx_ring[4].dma);
  rtl_write_dword(rtlpriv, 792U, (u32 )rtlpci->tx_ring[6].dma);
  rtl_write_dword(rtlpriv, 800U, (u32 )rtlpci->tx_ring[3].dma);
  rtl_write_dword(rtlpriv, 808U, (u32 )rtlpci->tx_ring[2].dma);
  rtl_write_dword(rtlpriv, 816U, (u32 )rtlpci->tx_ring[1].dma);
  rtl_write_dword(rtlpriv, 824U, (u32 )rtlpci->tx_ring[0].dma);
  rtl_write_dword(rtlpriv, 784U, (u32 )rtlpci->tx_ring[7].dma);
  rtl_write_dword(rtlpriv, 832U, (u32 )rtlpci->rx_ring[0].dma);
  rtl_write_byte(rtlpriv, 771U, 51);
  rtl_write_dword(rtlpriv, 772U, 0U);
  bytetmp = rtl_read_byte(rtlpriv, 1536U);
  rtl_write_byte(rtlpriv, 1536U, (int )bytetmp & 191);
  }
  ldv_51123:
  {
  retry = (u16 )((int )retry + 1);
  bytetmp = rtl_read_byte(rtlpriv, 1536U);
  }
  if ((unsigned int )retry <= 199U && (int )((signed char )bytetmp) >= 0) {
    goto ldv_51123;
  } else {
  }
  {
  _rtl92de_gen_refresh_led_state(hw);
  rtl_write_dword(rtlpriv, 448U, 0U);
  }
  return (1);
}
}
static void _rtl92de_hw_configure(struct ieee80211_hw *hw )
{
  struct rtl_pci *rtlpci ;
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 reg_bw_opmode ;
  u32 reg_rrsr ;
  {
  {
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  reg_bw_opmode = 4U;
  reg_rrsr = 4095U;
  rtl_write_byte(rtlpriv, 1152U, 8);
  rtl_write_byte(rtlpriv, 1539U, (int )reg_bw_opmode);
  rtl_write_dword(rtlpriv, 1088U, reg_rrsr);
  rtl_write_byte(rtlpriv, 1307U, 9);
  rtl_write_byte(rtlpriv, 1116U, 0);
  rtl_write_word(rtlpriv, 1056U, 8064);
  rtl_write_word(rtlpriv, 1066U, 1799);
  rtl_write_dword(rtlpriv, 1228U, 33630210U);
  rtl_write_byte(rtlpriv, 1059U, 255);
  rtl_write_dword(rtlpriv, 1072U, 16777216U);
  rtl_write_dword(rtlpriv, 1076U, 117835012U);
  rtl_write_dword(rtlpriv, 1080U, 16777216U);
  rtl_write_dword(rtlpriv, 1084U, 117835012U);
  }
  if ((unsigned int )rtlhal->macphymode == 1U) {
    {
    rtl_write_dword(rtlpriv, 1112U, 3111282241U);
    }
  } else
  if ((unsigned int )rtlhal->macphymode == 2U) {
    {
    rtl_write_dword(rtlpriv, 1112U, 1717724737U);
    }
  } else {
    {
    rtl_write_dword(rtlpriv, 1112U, 3111299137U);
    }
  }
  {
  rtl_write_byte(rtlpriv, 1370U, 2);
  rtl_write_byte(rtlpriv, 1373U, 10);
  rtlpci->reg_bcn_ctrl_val = 31U;
  rtl_write_byte(rtlpriv, 1360U, (int )((u8 )rtlpci->reg_bcn_ctrl_val));
  rtl_write_byte(rtlpriv, 1345U, 255);
  rtl_write_byte(rtlpriv, 1298U, 28);
  rtl_write_byte(rtlpriv, 1306U, 22);
  rtl_write_word(rtlpriv, 1350U, 32);
  rtl_write_word(rtlpriv, 1120U, 26214);
  rtl_write_byte(rtlpriv, 1600U, 64);
  rtl_write_word(rtlpriv, 1064U, 4112);
  rtl_write_word(rtlpriv, 1594U, 4112);
  rtl_write_word(rtlpriv, 1300U, 4112);
  rtl_write_word(rtlpriv, 1302U, 4112);
  rtl_write_dword(rtlpriv, 1568U, 4294967295U);
  rtl_write_dword(rtlpriv, 1572U, 4294967295U);
  }
  {
  if ((int )rtlpriv->phy.rf_type == 1) {
    goto case_1;
  } else {
  }
  if ((int )rtlpriv->phy.rf_type == 0) {
    goto case_0;
  } else {
  }
  if ((int )rtlpriv->phy.rf_type == 2) {
    goto case_2;
  } else {
  }
  if ((int )rtlpriv->phy.rf_type == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_1: ;
  case_0:
  rtlhal->minspace_cfg = 80U;
  goto ldv_51135;
  case_2: ;
  case_3:
  rtlhal->minspace_cfg = 152U;
  goto ldv_51135;
  switch_break: ;
  }
  ldv_51135: ;
  return;
}
}
static void _rtl92de_enable_aspm_back_door(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_ps_ctl *ppsc ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  ppsc = & ((struct rtl_priv *)hw->priv)->psc;
  rtl_write_byte(rtlpriv, 843U, 147);
  rtl_write_word(rtlpriv, 848U, 34572);
  rtl_write_byte(rtlpriv, 850U, 1);
  }
  if ((int )ppsc->support_backdoor) {
    {
    rtl_write_byte(rtlpriv, 841U, 27);
    }
  } else {
    {
    rtl_write_byte(rtlpriv, 841U, 3);
    }
  }
  {
  rtl_write_word(rtlpriv, 848U, 10008);
  rtl_write_byte(rtlpriv, 850U, 1);
  }
  return;
}
}
void rtl92de_enable_hw_security_config(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  u8 sec_reg_value ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> PairwiseEncAlgorithm = %d GroupEncAlgorithm = %d\n",
             "rtl92de_enable_hw_security_config", (unsigned long )tmp___0 & 2096896UL,
             ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL, (unsigned int )rtlpriv->sec.pairwise_enc_algorithm,
             (unsigned int )rtlpriv->sec.group_enc_algorithm);
      }
    } else {
    }
  } else {
  }
  if ((int )((rtlpriv->cfg)->mod_params)->sw_crypto || (int )rtlpriv->sec.use_sw_sec) {
    {
    tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 512ULL) != 0ULL,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> not open hw encryption\n", "rtl92de_enable_hw_security_config",
               (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  sec_reg_value = 12U;
  if ((int )rtlpriv->sec.use_defaultkey) {
    sec_reg_value = (u8 )((unsigned int )sec_reg_value | 1U);
    sec_reg_value = (u8 )((unsigned int )sec_reg_value | 2U);
  } else {
  }
  {
  sec_reg_value = (u8 )((unsigned int )sec_reg_value | 192U);
  rtl_write_byte(rtlpriv, 257U, 2);
  tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 512ULL) != 0ULL,
                             0L);
  }
  if (tmp___9 != 0L) {
    {
    tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___7 = preempt_count();
      tmp___8 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> The SECR-value %x\n", "rtl92de_enable_hw_security_config",
             (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL,
             (int )sec_reg_value);
      }
    } else {
    }
  } else {
  }
  {
  (*(((rtlpriv->cfg)->ops)->set_hw_reg))(hw, 26, & sec_reg_value);
  }
  return;
}
}
int rtl92de_hw_init(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  struct rtl_mac *mac ;
  struct rtl_phy *rtlphy ;
  struct rtl_pci *rtlpci ;
  struct rtl_ps_ctl *ppsc ;
  bool rtstatus ;
  u8 tmp_u1b ;
  int i ;
  int err ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  u32 tmp_rega ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  rtlphy = & rtlpriv->phy;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  ppsc = & ((struct rtl_priv *)hw->priv)->psc;
  rtstatus = 1;
  rtlpci->being_init_adapter = 1;
  rtlpci->init_ready = 0;
  tmp = spinlock_check(& globalmutex_for_power_and_efuse);
  flags = _raw_spin_lock_irqsave(tmp);
  rtl92d_phy_reset_iqk_result(hw);
  rtstatus = _rtl92de_init_mac(hw);
  }
  if (! rtstatus) {
    {
    tmp___2 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp___3 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___3 != 0L) {
        {
        tmp___0 = preempt_count();
        tmp___1 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Init MAC failed\n", "rtl92de_hw_init",
               (unsigned long )tmp___1 & 2096896UL, ((unsigned long )tmp___0 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    {
    err = 1;
    spin_unlock_irqrestore(& globalmutex_for_power_and_efuse, flags);
    }
    return (err);
  } else {
  }
  {
  err = rtl92d_download_fw(hw);
  spin_unlock_irqrestore(& globalmutex_for_power_and_efuse, flags);
  }
  if (err != 0) {
    {
    tmp___6 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                               0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___7 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 1, 0L);
      }
      if (tmp___7 != 0L) {
        {
        tmp___4 = preempt_count();
        tmp___5 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Failed to download FW. Init HW without FW..\n",
               "rtl92de_hw_init", (unsigned long )tmp___5 & 2096896UL, ((unsigned long )tmp___4 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    return (1);
  } else {
  }
  {
  rtlhal->last_hmeboxnum = 0U;
  rtlpriv->psc.fw_current_inpsmode = 0;
  tmp_u1b = rtl_read_byte(rtlpriv, 1541U);
  tmp_u1b = (u8 )((unsigned int )tmp_u1b | 48U);
  rtl_write_byte(rtlpriv, 1541U, (int )tmp_u1b);
  }
  if ((int )rtlhal->earlymode_enable) {
    {
    tmp___10 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                                0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___11 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___11 != 0L) {
        {
        tmp___8 = preempt_count();
        tmp___9 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> EarlyMode Enabled!!!\n", "rtl92de_hw_init",
               (unsigned long )tmp___9 & 2096896UL, ((unsigned long )tmp___8 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    {
    tmp_u1b = rtl_read_byte(rtlpriv, 1232U);
    tmp_u1b = (u8 )((unsigned int )tmp_u1b | 31U);
    rtl_write_byte(rtlpriv, 1232U, (int )tmp_u1b);
    rtl_write_byte(rtlpriv, 1235U, 128);
    tmp_u1b = rtl_read_byte(rtlpriv, 1541U);
    tmp_u1b = (u8 )((unsigned int )tmp_u1b | 64U);
    rtl_write_byte(rtlpriv, 1541U, (int )tmp_u1b);
    }
  } else {
  }
  if ((int )mac->rdg_en) {
    {
    rtl_write_byte(rtlpriv, 1316U, 255);
    rtl_write_word(rtlpriv, 1348U, 512);
    rtl_write_byte(rtlpriv, 1123U, 5);
    }
  } else {
  }
  {
  rtl92d_phy_mac_config(hw);
  rtlpci->receive_config = rtl_read_dword(rtlpriv, 1544U);
  rtlpci->receive_config = rtlpci->receive_config & 4294966527U;
  rtl92d_phy_bb_config(hw);
  rtlphy->rf_mode = 0U;
  rtl_set_bbreg(hw, 2188U, 15728640U, 15U);
  rtl92d_phy_rf_config(hw);
  rtl92d_update_bbrf_configuration(hw);
  rtl_set_bbreg(hw, 2188U, 15728640U, 0U);
  rtlphy->rfreg_chnlval[0] = rtl_get_rfreg(hw, 0, 24U, 1048575U);
  rtlphy->rfreg_chnlval[1] = rtl_get_rfreg(hw, 1, 24U, 1048575U);
  }
  if ((unsigned int )rtlhal->current_bandtype == 0U) {
    {
    rtl_set_bbreg(hw, 2048U, 16777216U, 1U);
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 2048U, 33554432U, 1U);
  }
  if (rtlhal->interfaceindex == 0U) {
    {
    rtl_set_bbreg(hw, 2180U, 3072U, 3U);
    }
  } else {
    {
    rtl_set_bbreg(hw, 2180U, 3072U, 3U);
    }
  }
  {
  _rtl92de_hw_configure(hw);
  rtl_cam_reset_all_entry(hw);
  rtl92de_enable_hw_security_config(hw);
  rtl92d_phy_get_hw_reg_originalvalue(hw);
  rtl92d_phy_set_txpower_level(hw, (int )rtlphy->current_channel);
  ppsc->rfpwr_state = 0;
  (*(((rtlpriv->cfg)->ops)->set_hw_reg))(hw, 0, (u8 *)(& mac->mac_addr));
  _rtl92de_enable_aspm_back_door(hw);
  rtl92d_dm_init(hw);
  rtlpci->being_init_adapter = 0;
  }
  if ((unsigned int )ppsc->rfpwr_state == 0U) {
    {
    rtl92d_phy_lc_calibrate(hw);
    }
    if ((unsigned int )rtlhal->macphymode == 1U) {
      i = 0;
      goto ldv_51170;
      ldv_51169:
      {
      __const_udelay(214750UL);
      tmp_rega = rtl_get_rfreg(hw, 0, 42U, 4294967295U);
      }
      if (((unsigned long )tmp_rega & 2048UL) != 0UL) {
        goto ldv_51168;
      } else {
      }
      i = i + 1;
      ldv_51170: ;
      if (i <= 9999) {
        goto ldv_51169;
      } else {
      }
      ldv_51168: ;
      if (i == 10000) {
        rtlpci->init_ready = 0;
        return (1);
      } else {
      }
    } else {
    }
  } else {
  }
  rtlpci->init_ready = 1;
  return (err);
}
}
static enum version_8192d _rtl92de_read_chip_version(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  enum version_8192d version ;
  u32 value32 ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  version = 42;
  value32 = rtl_read_dword(rtlpriv, 240U);
  }
  if ((value32 & 983040U) == 0U) {
    {
    version = 34;
    tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp = preempt_count();
        tmp___0 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> TEST CHIP!!!\n", "_rtl92de_read_chip_version",
               (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  } else {
    {
    version = 42;
    tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Normal CHIP!!!\n", "_rtl92de_read_chip_version",
               (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  }
  return (version);
}
}
static int _rtl92de_set_media_status(struct ieee80211_hw *hw , enum nl80211_iftype type )
{
  struct rtl_priv *rtlpriv ;
  u8 bt_msr ;
  u8 tmp ;
  enum led_ctl_mode ledaction ;
  u8 bcnfunc_enable ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  long tmp___18 ;
  long tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  long tmp___22 ;
  long tmp___23 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp = rtl_read_byte(rtlpriv, 258U);
  bt_msr = tmp;
  ledaction = 3;
  bt_msr = (unsigned int )bt_msr & 252U;
  }
  if ((unsigned int )type == 0U || (unsigned int )type == 2U) {
    {
    _rtl92de_stop_tx_beacon(hw);
    _rtl92de_enable_bcn_sub_func(hw);
    }
  } else
  if ((unsigned int )type == 1U || (unsigned int )type == 3U) {
    {
    _rtl92de_resume_tx_beacon(hw);
    _rtl92de_disable_bcn_sub_func(hw);
    }
  } else {
    {
    tmp___2 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp___3 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 1, 0L);
      }
      if (tmp___3 != 0L) {
        {
        tmp___0 = preempt_count();
        tmp___1 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Set HW_VAR_MEDIA_STATUS: No such media status(%x)\n",
               "_rtl92de_set_media_status", (unsigned long )tmp___1 & 2096896UL, ((unsigned long )tmp___0 & 0xffffffffffdfffffUL) != 0UL,
               (unsigned int )type);
        }
      } else {
      }
    } else {
    }
  }
  {
  bcnfunc_enable = rtl_read_byte(rtlpriv, 1360U);
  }
  {
  if ((unsigned int )type == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )type == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )type == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0:
  {
  bt_msr = bt_msr;
  ledaction = 2;
  bcnfunc_enable = (unsigned int )bcnfunc_enable & 247U;
  tmp___6 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___6 != 0L) {
    {
    tmp___7 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___7 != 0L) {
      {
      tmp___4 = preempt_count();
      tmp___5 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Set Network type to NO LINK!\n", "_rtl92de_set_media_status",
             (unsigned long )tmp___5 & 2096896UL, ((unsigned long )tmp___4 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_51188;
  case_1:
  {
  bt_msr = (u8 )((unsigned int )bt_msr | 1U);
  bcnfunc_enable = (u8 )((unsigned int )bcnfunc_enable | 8U);
  tmp___10 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                              0L);
  }
  if (tmp___10 != 0L) {
    {
    tmp___11 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___11 != 0L) {
      {
      tmp___8 = preempt_count();
      tmp___9 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Set Network type to Ad Hoc!\n", "_rtl92de_set_media_status",
             (unsigned long )tmp___9 & 2096896UL, ((unsigned long )tmp___8 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_51188;
  case_2:
  {
  bt_msr = (u8 )((unsigned int )bt_msr | 2U);
  ledaction = 2;
  bcnfunc_enable = (unsigned int )bcnfunc_enable & 247U;
  tmp___14 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                              0L);
  }
  if (tmp___14 != 0L) {
    {
    tmp___15 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___15 != 0L) {
      {
      tmp___12 = preempt_count();
      tmp___13 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Set Network type to STA!\n", "_rtl92de_set_media_status",
             (unsigned long )tmp___13 & 2096896UL, ((unsigned long )tmp___12 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_51188;
  case_3:
  {
  bt_msr = (u8 )((unsigned int )bt_msr | 3U);
  bcnfunc_enable = (u8 )((unsigned int )bcnfunc_enable | 8U);
  tmp___18 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                              0L);
  }
  if (tmp___18 != 0L) {
    {
    tmp___19 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___19 != 0L) {
      {
      tmp___16 = preempt_count();
      tmp___17 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Set Network type to AP!\n", "_rtl92de_set_media_status",
             (unsigned long )tmp___17 & 2096896UL, ((unsigned long )tmp___16 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_51188;
  switch_default:
  {
  tmp___22 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                              0L);
  }
  if (tmp___22 != 0L) {
    {
    tmp___23 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___23 != 0L) {
      {
      tmp___20 = preempt_count();
      tmp___21 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Network type %d not supported!\n", "_rtl92de_set_media_status",
             (unsigned long )tmp___21 & 2096896UL, ((unsigned long )tmp___20 & 0xffffffffffdfffffUL) != 0UL,
             (unsigned int )type);
      }
    } else {
    }
  } else {
  }
  return (1);
  switch_break: ;
  }
  ldv_51188:
  {
  rtl_write_byte(rtlpriv, 258U, (int )bt_msr);
  (*(((rtlpriv->cfg)->ops)->led_control))(hw, ledaction);
  rtl_write_byte(rtlpriv, 1297U, 102);
  }
  return (0);
}
}
void rtl92de_set_check_bssid(struct ieee80211_hw *hw , bool check_bssid )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_pci *rtlpci ;
  u32 reg_rcr ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  reg_rcr = rtlpci->receive_config;
  if ((unsigned int )rtlpriv->psc.rfpwr_state != 0U) {
    return;
  } else {
  }
  if ((int )check_bssid) {
    {
    reg_rcr = reg_rcr | 192U;
    (*(((rtlpriv->cfg)->ops)->set_hw_reg))(hw, 43, (u8 *)(& reg_rcr));
    _rtl92de_set_bcn_ctrl_reg(hw, 0, 16);
    }
  } else
  if (! check_bssid) {
    {
    reg_rcr = reg_rcr & 4294967103U;
    _rtl92de_set_bcn_ctrl_reg(hw, 16, 0);
    (*(((rtlpriv->cfg)->ops)->set_hw_reg))(hw, 43, (u8 *)(& reg_rcr));
    }
  } else {
  }
  return;
}
}
int rtl92de_set_network_type(struct ieee80211_hw *hw , enum nl80211_iftype type )
{
  struct rtl_priv *rtlpriv ;
  int tmp ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp = _rtl92de_set_media_status(hw, type);
  }
  if (tmp != 0) {
    return (-95);
  } else {
  }
  if ((unsigned int )rtlpriv->mac80211.link_state == 2U) {
    if ((unsigned int )type != 3U) {
      {
      rtl92de_set_check_bssid(hw, 1);
      }
    } else {
    }
  } else {
    {
    rtl92de_set_check_bssid(hw, 0);
    }
  }
  return (0);
}
}
void rtl92d_linked_set_reg(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  u8 indexforchannel ;
  u8 channel ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  channel = rtlphy->current_channel;
  indexforchannel = rtl92d_get_rightchnlplace_for_iqk((int )channel);
  }
  if (! rtlphy->iqk_matrix[(int )indexforchannel].iqk_done) {
    {
    tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 68ULL) != 0ULL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp = preempt_count();
        tmp___0 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Do IQK for channel:%d\n", "rtl92d_linked_set_reg",
               (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
               (int )channel);
        }
      } else {
      }
    } else {
    }
    {
    rtl92d_phy_iq_calibrate(hw);
    }
  } else {
  }
  return;
}
}
void rtl92de_set_qos(struct ieee80211_hw *hw , int aci )
{
  {
  {
  rtl92d_dm_init_edca_turbo(hw);
  }
  return;
}
}
void rtl92de_enable_interrupt(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_pci *rtlpci ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  rtl_write_dword(rtlpriv, 288U, rtlpci->irq_mask[0]);
  rtl_write_dword(rtlpriv, 296U, rtlpci->irq_mask[1]);
  }
  return;
}
}
void rtl92de_disable_interrupt(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_pci *rtlpci ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  rtl_write_dword(rtlpriv, 288U, 0U);
  rtl_write_dword(rtlpriv, 296U, 0U);
  synchronize_irq((rtlpci->pdev)->irq);
  }
  return;
}
}
static void _rtl92de_poweroff_adapter(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  u8 u1b_tmp ;
  unsigned long flags ;
  u8 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  raw_spinlock_t *tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  (*((rtlpriv->intf_ops)->enable_aspm))(hw);
  rtl_write_byte(rtlpriv, 31U, 0);
  rtl_set_bbreg(hw, 2172U, 8U, 0U);
  rtl_set_bbreg(hw, 2172U, 32768U, 0U);
  rtl_write_byte(rtlpriv, 32U, 4);
  rtl92d_firmware_selfreset(hw);
  rtl_write_byte(rtlpriv, 3U, 81);
  rtl_write_byte(rtlpriv, 128U, 0);
  rtl_write_dword(rtlpriv, 68U, 0U);
  u1b_tmp = rtl_read_byte(rtlpriv, 68U);
  rtl_write_dword(rtlpriv, 68U, (u32 )(((int )u1b_tmp << 8) | 16711680));
  rtl_write_word(rtlpriv, 66U, 1936);
  rtl_write_word(rtlpriv, 76U, 32896);
  rtl_write_byte(rtlpriv, 40U, 128);
  rtl_write_byte(rtlpriv, 17U, 35);
  rtl_write_byte(rtlpriv, 36U, 14);
  rtl_write_byte(rtlpriv, 28U, 14);
  rtl_write_byte(rtlpriv, 5U, 16);
  tmp___2 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___2 != 0L) {
    {
    tmp___3 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___3 != 0L) {
      {
      tmp = rtl_read_byte(rtlpriv, 17U);
      tmp___0 = preempt_count();
      tmp___1 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> In PowerOff,reg0x%x=%X\n", "_rtl92de_poweroff_adapter",
             (unsigned long )tmp___1 & 2096896UL, ((unsigned long )tmp___0 & 0xffffffffffdfffffUL) != 0UL,
             17, (int )tmp);
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )rtlpriv->rtlhal.macphymode != 0U) {
    {
    tmp___4 = spinlock_check(& globalmutex_power);
    flags = _raw_spin_lock_irqsave(tmp___4);
    u1b_tmp = rtl_read_byte(rtlpriv, 23U);
    u1b_tmp = (unsigned int )u1b_tmp & 127U;
    rtl_write_byte(rtlpriv, 23U, (int )u1b_tmp);
    spin_unlock_irqrestore(& globalmutex_power, flags);
    }
  } else {
  }
  {
  tmp___7 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___7 != 0L) {
    {
    tmp___8 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___8 != 0L) {
      {
      tmp___5 = preempt_count();
      tmp___6 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <=======\n", "_rtl92de_poweroff_adapter",
             (unsigned long )tmp___6 & 2096896UL, ((unsigned long )tmp___5 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
void rtl92de_card_disable(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_ps_ctl *ppsc ;
  struct rtl_pci *rtlpci ;
  struct rtl_mac *mac ;
  enum nl80211_iftype opmode ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  ppsc = & ((struct rtl_priv *)hw->priv)->psc;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  mac->link_state = 0;
  opmode = 0;
  _rtl92de_set_media_status(hw, opmode);
  }
  if ((int )rtlpci->driver_is_goingto_unload || ppsc->rfoff_reason > 536870912U) {
    {
    (*(((rtlpriv->cfg)->ops)->led_control))(hw, 7);
    }
  } else {
  }
  {
  ppsc->cur_ps_level = ppsc->cur_ps_level | 8U;
  rtl_write_byte(rtlpriv, 769U, 254);
  __const_udelay(214750UL);
  rtl_set_bbreg(hw, 2188U, 15728640U, 15U);
  rtl_set_rfreg(hw, 0, 0U, 1048575U, 0U);
  rtl_write_byte(rtlpriv, 1536U, 64);
  rtl_set_bbreg(hw, 3076U, 255U, 0U);
  rtl_set_bbreg(hw, 3332U, 15U, 0U);
  rtl_write_byte(rtlpriv, 2U, 226);
  }
  if (rtlpriv->rtlhal.interfaceindex == 1U) {
    {
    rtl_write_byte(rtlpriv, 2U, 224);
    }
  } else {
  }
  {
  __const_udelay(214750UL);
  rtl_write_byte(rtlpriv, 769U, 255);
  __const_udelay(214750UL);
  rtl_write_byte(rtlpriv, 256U, 0);
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> ==> Do power off.......\n", "rtl92de_card_disable",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  {
  tmp___3 = rtl92d_phy_check_poweroff(hw);
  }
  if ((int )tmp___3) {
    {
    _rtl92de_poweroff_adapter(hw);
    }
  } else {
  }
  return;
}
}
void rtl92de_interrupt_recognized(struct ieee80211_hw *hw , u32 *p_inta , u32 *p_intb )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_pci *rtlpci ;
  u32 tmp ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  tmp = rtl_read_dword(rtlpriv, 292U);
  *p_inta = tmp & rtlpci->irq_mask[0];
  rtl_write_dword(rtlpriv, 292U, *p_inta);
  }
  return;
}
}
void rtl92de_set_beacon_related_registers(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_mac *mac ;
  u16 bcn_interval ;
  u16 atim_window ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  bcn_interval = (u16 )mac->beacon_interval;
  atim_window = 2U;
  rtl_write_word(rtlpriv, 1370U, (int )atim_window);
  rtl_write_word(rtlpriv, 1364U, (int )bcn_interval);
  rtl_write_word(rtlpriv, 1296U, 26127);
  rtl_write_byte(rtlpriv, 1374U, 32);
  }
  if ((unsigned int )rtlpriv->rtlhal.current_bandtype == 1U) {
    {
    rtl_write_byte(rtlpriv, 1375U, 48);
    }
  } else {
    {
    rtl_write_byte(rtlpriv, 1375U, 32);
    }
  }
  {
  rtl_write_byte(rtlpriv, 1542U, 48);
  }
  return;
}
}
void rtl92de_set_beacon_interval(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_mac *mac ;
  u16 bcn_interval ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  bcn_interval = (u16 )mac->beacon_interval;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1024ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> beacon_interval:%d\n", "rtl92de_set_beacon_interval",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             (int )bcn_interval);
      }
    } else {
    }
  } else {
  }
  {
  rtl_write_word(rtlpriv, 1364U, (int )bcn_interval);
  }
  return;
}
}
void rtl92de_update_interrupt_mask(struct ieee80211_hw *hw , u32 add_msr , u32 rm_msr )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_pci *rtlpci ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 128ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> add_msr:%x, rm_msr:%x\n", "rtl92de_update_interrupt_mask",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             add_msr, rm_msr);
      }
    } else {
    }
  } else {
  }
  if (add_msr != 0U) {
    rtlpci->irq_mask[0] = rtlpci->irq_mask[0] | add_msr;
  } else {
  }
  if (rm_msr != 0U) {
    rtlpci->irq_mask[0] = rtlpci->irq_mask[0] & ~ rm_msr;
  } else {
  }
  {
  rtl92de_disable_interrupt(hw);
  rtl92de_enable_interrupt(hw);
  }
  return;
}
}
static void _rtl92de_readpowervalue_fromprom(struct txpower_info *pwrinfo , u8 *rom_content ,
                                             bool autoLoadfail )
{
  u32 rfpath ;
  u32 eeaddr ;
  u32 group ;
  u32 offset1 ;
  u32 offset2 ;
  u8 i ;
  int base1 ;
  {
  {
  memset((void *)pwrinfo, 0, 174UL);
  }
  if ((int )autoLoadfail) {
    group = 0U;
    goto ldv_51290;
    ldv_51289:
    rfpath = 0U;
    goto ldv_51287;
    ldv_51286: ;
    if (group <= 2U) {
      pwrinfo->cck_index[rfpath][group] = 44U;
      pwrinfo->ht40_1sindex[rfpath][group] = 44U;
    } else {
      pwrinfo->ht40_1sindex[rfpath][group] = 34U;
    }
    pwrinfo->ht40_2sindexdiff[rfpath][group] = 0U;
    pwrinfo->ht20indexdiff[rfpath][group] = 2U;
    pwrinfo->ofdmindexdiff[rfpath][group] = 4U;
    pwrinfo->ht40maxoffset[rfpath][group] = 0U;
    pwrinfo->ht20maxoffset[rfpath][group] = 0U;
    rfpath = rfpath + 1U;
    ldv_51287: ;
    if (rfpath <= 1U) {
      goto ldv_51286;
    } else {
    }
    group = group + 1U;
    ldv_51290: ;
    if (group <= 11U) {
      goto ldv_51289;
    } else {
    }
    i = 0U;
    goto ldv_51293;
    ldv_51292:
    pwrinfo->tssi_a[(int )i] = 0U;
    pwrinfo->tssi_b[(int )i] = 0U;
    i = (u8 )((int )i + 1);
    ldv_51293: ;
    if ((unsigned int )i <= 2U) {
      goto ldv_51292;
    } else {
    }
    return;
  } else {
  }
  rfpath = 0U;
  goto ldv_51299;
  ldv_51298:
  group = 0U;
  goto ldv_51296;
  ldv_51295:
  eeaddr = (rfpath * 3U + group) + 97U;
  pwrinfo->cck_index[rfpath][group] = (unsigned int )*(rom_content + (unsigned long )eeaddr) == 255U ? (eeaddr > 123U ? 34U : 44U) : *(rom_content + (unsigned long )eeaddr);
  group = group + 1U;
  ldv_51296: ;
  if (group <= 2U) {
    goto ldv_51295;
  } else {
  }
  rfpath = rfpath + 1U;
  ldv_51299: ;
  if (rfpath <= 1U) {
    goto ldv_51298;
  } else {
  }
  rfpath = 0U;
  goto ldv_51305;
  ldv_51304:
  group = 0U;
  goto ldv_51302;
  ldv_51301:
  offset1 = group / 3U;
  offset2 = group % 3U;
  eeaddr = ((rfpath * 3U + offset2) + offset1 * 21U) + 103U;
  pwrinfo->ht40_1sindex[rfpath][group] = (unsigned int )*(rom_content + (unsigned long )eeaddr) == 255U ? (eeaddr > 123U ? 34U : 44U) : *(rom_content + (unsigned long )eeaddr);
  group = group + 1U;
  ldv_51302: ;
  if (group <= 11U) {
    goto ldv_51301;
  } else {
  }
  rfpath = rfpath + 1U;
  ldv_51305: ;
  if (rfpath <= 1U) {
    goto ldv_51304;
  } else {
  }
  group = 0U;
  goto ldv_51312;
  ldv_51311:
  rfpath = 0U;
  goto ldv_51309;
  ldv_51308:
  base1 = 109;
  offset1 = group / 3U;
  offset2 = group % 3U;
  if ((unsigned int )*(rom_content + (unsigned long )(((u32 )base1 + offset2) + offset1 * 21U)) != 255U) {
    pwrinfo->ht40_2sindexdiff[rfpath][group] = (unsigned int )((u8 )((int )*(rom_content + (unsigned long )(((u32 )base1 + offset2) + offset1 * 21U)) >> (int )(rfpath * 4U))) & 15U;
  } else {
    pwrinfo->ht40_2sindexdiff[rfpath][group] = 0U;
  }
  if ((unsigned int )*(rom_content + (unsigned long )((offset2 + offset1 * 21U) + 112U)) != 255U) {
    pwrinfo->ht20indexdiff[rfpath][group] = (unsigned int )((u8 )((int )*(rom_content + (unsigned long )((offset2 + offset1 * 21U) + 112U)) >> (int )(rfpath * 4U))) & 15U;
  } else {
    pwrinfo->ht20indexdiff[rfpath][group] = 2U;
  }
  if ((unsigned int )*(rom_content + (unsigned long )((offset2 + offset1 * 21U) + 115U)) != 255U) {
    pwrinfo->ofdmindexdiff[rfpath][group] = (unsigned int )((u8 )((int )*(rom_content + (unsigned long )((offset2 + offset1 * 21U) + 115U)) >> (int )(rfpath * 4U))) & 15U;
  } else {
    pwrinfo->ofdmindexdiff[rfpath][group] = 4U;
  }
  if ((unsigned int )*(rom_content + (unsigned long )((offset2 + offset1 * 21U) + 118U)) != 255U) {
    pwrinfo->ht40maxoffset[rfpath][group] = (unsigned int )((u8 )((int )*(rom_content + (unsigned long )((offset2 + offset1 * 21U) + 118U)) >> (int )(rfpath * 4U))) & 15U;
  } else {
    pwrinfo->ht40maxoffset[rfpath][group] = 0U;
  }
  if ((unsigned int )*(rom_content + (unsigned long )((offset2 + offset1 * 21U) + 121U)) != 255U) {
    pwrinfo->ht20maxoffset[rfpath][group] = (unsigned int )((u8 )((int )*(rom_content + (unsigned long )((offset2 + offset1 * 21U) + 121U)) >> (int )(rfpath * 4U))) & 15U;
  } else {
    pwrinfo->ht20maxoffset[rfpath][group] = 0U;
  }
  rfpath = rfpath + 1U;
  ldv_51309: ;
  if (rfpath <= 1U) {
    goto ldv_51308;
  } else {
  }
  group = group + 1U;
  ldv_51312: ;
  if (group <= 11U) {
    goto ldv_51311;
  } else {
  }
  if ((unsigned int )*(rom_content + 190UL) != 255U) {
    pwrinfo->tssi_a[0] = (unsigned int )*(rom_content + 190UL) & 63U;
    pwrinfo->tssi_b[0] = (unsigned int )*(rom_content + 191UL) & 63U;
    pwrinfo->tssi_a[1] = (unsigned int )*(rom_content + 192UL) & 63U;
    pwrinfo->tssi_b[1] = (u8 )((int )((signed char )((int )*(rom_content + 192UL) >> 6)) | (int )((signed char )(((int )*(rom_content + 193UL) & 15) << 2)));
    pwrinfo->tssi_a[2] = (u8 )((int )((signed char )((int )*(rom_content + 193UL) >> 4)) | (int )((signed char )(((int )*(rom_content + 194UL) & 3) << 4)));
    pwrinfo->tssi_b[2] = (int )*(rom_content + 194UL) >> 2;
  } else {
    i = 0U;
    goto ldv_51315;
    ldv_51314:
    pwrinfo->tssi_a[(int )i] = 0U;
    pwrinfo->tssi_b[(int )i] = 0U;
    i = (u8 )((int )i + 1);
    ldv_51315: ;
    if ((unsigned int )i <= 2U) {
      goto ldv_51314;
    } else {
    }
  }
  return;
}
}
static void _rtl92de_read_txpower_info(struct ieee80211_hw *hw , bool autoload_fail ,
                                       u8 *hwinfo )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_efuse *rtlefuse ;
  struct txpower_info pwrinfo ;
  u8 tempval[2U] ;
  u8 i ;
  u8 pwr ;
  u8 diff ;
  u32 ch ;
  u32 rfPath ;
  u32 group ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  long tmp___17 ;
  long tmp___18 ;
  u8 tmp___19 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlefuse = & ((struct rtl_priv *)hw->priv)->efuse;
  _rtl92de_readpowervalue_fromprom(& pwrinfo, hwinfo, (int )autoload_fail);
  }
  if (! autoload_fail) {
    rtlefuse->eeprom_regulatory = (unsigned int )*(hwinfo + 196UL) & 7U;
    rtlefuse->eeprom_thermalmeter = (unsigned int )*(hwinfo + 195UL) & 31U;
    rtlefuse->crystalcap = *(hwinfo + 189UL);
    tempval[0] = (unsigned int )*(hwinfo + 188UL) & 3U;
    tempval[1] = (u8 )(((int )*(hwinfo + 188UL) & 12) >> 2);
    rtlefuse->txpwr_fromeprom = 1;
    if (((unsigned long )rtlpriv->rtlhal.version & 61447UL) == 12290UL || ((unsigned long )rtlpriv->rtlhal.version & 61447UL) == 16386UL) {
      {
      rtlefuse->internal_pa_5g[0] = ((unsigned long )*(hwinfo + 190UL) & 64UL) >> 6 == 0UL;
      rtlefuse->internal_pa_5g[1] = ((unsigned long )*(hwinfo + 191UL) & 64UL) >> 6 == 0UL;
      tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                                 0L);
      }
      if (tmp___1 != 0L) {
        {
        tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
        }
        if (tmp___2 != 0L) {
          {
          tmp = preempt_count();
          tmp___0 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> Is D cut,Internal PA0 %d Internal PA1 %d\n",
                 "_rtl92de_read_txpower_info", (unsigned long )tmp___0 & 2096896UL,
                 ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL, (int )rtlefuse->internal_pa_5g[0],
                 (int )rtlefuse->internal_pa_5g[1]);
          }
        } else {
        }
      } else {
      }
    } else {
    }
    rtlefuse->eeprom_c9 = *(hwinfo + 201UL);
    rtlefuse->eeprom_cc = *(hwinfo + 204UL);
  } else {
    rtlefuse->eeprom_regulatory = 0U;
    rtlefuse->eeprom_thermalmeter = 18U;
    rtlefuse->crystalcap = 0U;
    tempval[1] = 3U;
    tempval[0] = tempval[1];
  }
  if ((unsigned int )rtlefuse->eeprom_thermalmeter - 6U > 22U) {
    rtlefuse->eeprom_thermalmeter = 18U;
  } else {
  }
  rtlefuse->thermalmeter[0] = rtlefuse->eeprom_thermalmeter;
  if ((unsigned int )rtlefuse->crystalcap == 255U) {
    rtlefuse->crystalcap = 0U;
  } else {
  }
  if ((unsigned int )rtlefuse->eeprom_regulatory > 3U) {
    rtlefuse->eeprom_regulatory = 0U;
  } else {
  }
  i = 0U;
  goto ldv_51340;
  ldv_51339: ;
  {
  if ((int )tempval[(int )i] == 0) {
    goto case_0;
  } else {
  }
  if ((int )tempval[(int )i] == 1) {
    goto case_1;
  } else {
  }
  if ((int )tempval[(int )i] == 2) {
    goto case_2;
  } else {
  }
  if ((int )tempval[(int )i] == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0:
  tempval[(int )i] = 5U;
  goto ldv_51334;
  case_1:
  tempval[(int )i] = 4U;
  goto ldv_51334;
  case_2:
  tempval[(int )i] = 3U;
  goto ldv_51334;
  case_3: ;
  switch_default:
  tempval[(int )i] = 0U;
  goto ldv_51334;
  switch_break: ;
  }
  ldv_51334:
  i = (u8 )((int )i + 1);
  ldv_51340: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_51339;
  } else {
  }
  rtlefuse->delta_iqk = tempval[0];
  if ((unsigned int )tempval[1] != 0U) {
    rtlefuse->delta_lck = (unsigned int )tempval[1] + 255U;
  } else {
  }
  if ((unsigned int )rtlefuse->eeprom_c9 == 255U) {
    rtlefuse->eeprom_c9 = 0U;
  } else {
  }
  {
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 128ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> EEPROMRegulatory = 0x%x\n", "_rtl92de_read_txpower_info",
             (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL,
             (int )rtlefuse->eeprom_regulatory);
      }
    } else {
    }
  } else {
  }
  {
  tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 128ULL) != 0ULL,
                             0L);
  }
  if (tmp___9 != 0L) {
    {
    tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___7 = preempt_count();
      tmp___8 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> ThermalMeter = 0x%x\n", "_rtl92de_read_txpower_info",
             (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL,
             (int )rtlefuse->eeprom_thermalmeter);
      }
    } else {
    }
  } else {
  }
  {
  tmp___13 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 128ULL) != 0ULL,
                              0L);
  }
  if (tmp___13 != 0L) {
    {
    tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___14 != 0L) {
      {
      tmp___11 = preempt_count();
      tmp___12 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> CrystalCap = 0x%x\n", "_rtl92de_read_txpower_info",
             (unsigned long )tmp___12 & 2096896UL, ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL,
             (int )rtlefuse->crystalcap);
      }
    } else {
    }
  } else {
  }
  {
  tmp___17 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 128ULL) != 0ULL,
                              0L);
  }
  if (tmp___17 != 0L) {
    {
    tmp___18 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___18 != 0L) {
      {
      tmp___15 = preempt_count();
      tmp___16 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Delta_IQK = 0x%x Delta_LCK = 0x%x\n", "_rtl92de_read_txpower_info",
             (unsigned long )tmp___16 & 2096896UL, ((unsigned long )tmp___15 & 0xffffffffffdfffffUL) != 0UL,
             (int )rtlefuse->delta_iqk, (int )rtlefuse->delta_lck);
      }
    } else {
    }
  } else {
  }
  rfPath = 0U;
  goto ldv_51346;
  ldv_51345:
  ch = 0U;
  goto ldv_51343;
  ldv_51342:
  {
  tmp___19 = rtl92d_get_chnlgroup_fromarray((int )((unsigned char )ch));
  group = (u32 )tmp___19;
  }
  if (ch <= 13U) {
    rtlefuse->txpwrlevel_cck[rfPath][ch] = pwrinfo.cck_index[rfPath][group];
  } else {
  }
  rtlefuse->txpwrlevel_ht40_1s[rfPath][ch] = pwrinfo.ht40_1sindex[rfPath][group];
  rtlefuse->txpwr_ht20diff[rfPath][ch] = (char )pwrinfo.ht20indexdiff[rfPath][group];
  rtlefuse->txpwr_legacyhtdiff[rfPath][ch] = pwrinfo.ofdmindexdiff[rfPath][group];
  rtlefuse->pwrgroup_ht20[rfPath][ch] = pwrinfo.ht20maxoffset[rfPath][group];
  rtlefuse->pwrgroup_ht40[rfPath][ch] = pwrinfo.ht40maxoffset[rfPath][group];
  pwr = pwrinfo.ht40_1sindex[rfPath][group];
  diff = pwrinfo.ht40_2sindexdiff[rfPath][group];
  rtlefuse->txpwrlevel_ht40_2s[rfPath][ch] = (int )pwr > (int )diff ? (int )pwr - (int )diff : 0U;
  ch = ch + 1U;
  ldv_51343: ;
  if (ch <= 58U) {
    goto ldv_51342;
  } else {
  }
  rfPath = rfPath + 1U;
  ldv_51346: ;
  if (rfPath <= 1U) {
    goto ldv_51345;
  } else {
  }
  return;
}
}
static void _rtl92de_read_macphymode_from_prom(struct ieee80211_hw *hw , u8 *content )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 macphy_crvalue ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  macphy_crvalue = *(content + 8UL);
  if (((unsigned long )macphy_crvalue & 8UL) != 0UL) {
    {
    rtlhal->macphymode = 0;
    tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp = preempt_count();
        tmp___0 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> MacPhyMode SINGLEMAC_SINGLEPHY\n", "_rtl92de_read_macphymode_from_prom",
               (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  } else {
    {
    rtlhal->macphymode = 1;
    tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> MacPhyMode DUALMAC_DUALPHY\n", "_rtl92de_read_macphymode_from_prom",
               (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  }
  return;
}
}
static void _rtl92de_read_macphymode_and_bandtype(struct ieee80211_hw *hw , u8 *content )
{
  {
  {
  _rtl92de_read_macphymode_from_prom(hw, content);
  rtl92d_phy_config_macphymode(hw);
  rtl92d_phy_config_macphymode_info(hw);
  }
  return;
}
}
static void _rtl92de_efuse_update_chip_version(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  enum version_8192d chipver ;
  u8 cutvalue[2U] ;
  u16 chipvalue ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  chipver = rtlpriv->rtlhal.version;
  (*((rtlpriv->intf_ops)->read_efuse_byte))(hw, 1022, (u8 *)(& cutvalue) + 1UL);
  (*((rtlpriv->intf_ops)->read_efuse_byte))(hw, 1023, (u8 *)(& cutvalue));
  chipvalue = (u16 )((int )((short )((int )cutvalue[1] << 8)) | (int )((short )cutvalue[0]));
  }
  {
  if ((int )chipvalue == 43605) {
    goto case_43605;
  } else {
  }
  if ((int )chipvalue == 39270) {
    goto case_39270;
  } else {
  }
  if ((int )chipvalue == 52275) {
    goto case_52275;
  } else {
  }
  goto switch_default;
  case_43605:
  {
  chipver = (unsigned int )chipver | 8192U;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> C-CUT!!!\n", "_rtl92de_efuse_update_chip_version",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_51369;
  case_39270:
  {
  chipver = (unsigned int )chipver | 12288U;
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> D-CUT!!!\n", "_rtl92de_efuse_update_chip_version",
             (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_51369;
  case_52275:
  {
  chipver = (unsigned int )chipver | 16384U;
  tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___9 != 0L) {
    {
    tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___7 = preempt_count();
      tmp___8 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> E-CUT!!!\n", "_rtl92de_efuse_update_chip_version",
             (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_51369;
  switch_default:
  {
  chipver = (unsigned int )chipver | 12288U;
  tmp___13 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                              0L);
  }
  if (tmp___13 != 0L) {
    {
    tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___14 != 0L) {
      {
      tmp___11 = preempt_count();
      tmp___12 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Unknown CUT!\n", "_rtl92de_efuse_update_chip_version",
             (unsigned long )tmp___12 & 2096896UL, ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_51369;
  switch_break: ;
  }
  ldv_51369:
  rtlpriv->rtlhal.version = (u32 )chipver;
  return;
}
}
static void _rtl92de_read_adapter_info(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_efuse *rtlefuse ;
  struct rtl_hal *rtlhal ;
  u16 i ;
  u16 usvalue ;
  u8 hwinfo[256U] ;
  u16 eeprom_id ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  struct task_struct *tmp___4 ;
  struct task_struct *tmp___5 ;
  struct _ddebug descriptor ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  long tmp___11 ;
  long tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  long tmp___15 ;
  long tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  long tmp___19 ;
  long tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  long tmp___23 ;
  long tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  long tmp___27 ;
  long tmp___28 ;
  int tmp___29 ;
  int tmp___30 ;
  long tmp___31 ;
  long tmp___32 ;
  int tmp___33 ;
  int tmp___34 ;
  long tmp___35 ;
  long tmp___36 ;
  int tmp___37 ;
  int tmp___38 ;
  long tmp___39 ;
  long tmp___40 ;
  int tmp___41 ;
  int tmp___42 ;
  long tmp___43 ;
  long tmp___44 ;
  int tmp___45 ;
  int tmp___46 ;
  long tmp___47 ;
  long tmp___48 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlefuse = & ((struct rtl_priv *)hw->priv)->efuse;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  if ((int )rtlefuse->epromtype == 2) {
    {
    tmp = spinlock_check(& globalmutex_for_power_and_efuse);
    flags = _raw_spin_lock_irqsave(tmp);
    rtl_efuse_shadow_map_update(hw);
    _rtl92de_efuse_update_chip_version(hw);
    spin_unlock_irqrestore(& globalmutex_for_power_and_efuse, flags);
    memcpy((void *)(& hwinfo), (void const *)(& rtlefuse->efuse_map), 256UL);
    }
  } else
  if ((int )rtlefuse->epromtype == 0) {
    {
    tmp___2 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp___3 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___3 != 0L) {
        {
        tmp___0 = preempt_count();
        tmp___1 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> RTL819X Not boot from eeprom, check it !!\n",
               "_rtl92de_read_adapter_info", (unsigned long )tmp___1 & 2096896UL,
               ((unsigned long )tmp___0 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  tmp___7 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___7 != 0L) {
    {
    tmp___8 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
    }
    if (tmp___8 != 0L) {
      {
      tmp___4 = get_current();
      tmp___5 = get_current();
      printk("\017%s: In process \"%s\" (pid %i): %s\n", (char *)"rtl8192de", (char *)(& tmp___5->comm),
             tmp___4->pid, (char *)"MAP");
      descriptor.modname = "rtl8192de";
      descriptor.function = "_rtl92de_read_adapter_info";
      descriptor.filename = "drivers/net/wireless/rtlwifi/rtl8192de/hw.c";
      descriptor.format = "";
      descriptor.lineno = 1763U;
      descriptor.flags = 0U;
      tmp___6 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp___6 != 0L) {
        {
        print_hex_dump("\017", "", 0, 16, 1, (void const *)(& hwinfo), 256UL, 1);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  eeprom_id = *((u16 *)(& hwinfo));
  if ((unsigned int )eeprom_id != 33065U) {
    {
    tmp___11 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                                0L);
    }
    if (tmp___11 != 0L) {
      {
      tmp___12 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 1, 0L);
      }
      if (tmp___12 != 0L) {
        {
        tmp___9 = preempt_count();
        tmp___10 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> EEPROM ID(%#x) is invalid!!\n", "_rtl92de_read_adapter_info",
               (unsigned long )tmp___10 & 2096896UL, ((unsigned long )tmp___9 & 0xffffffffffdfffffUL) != 0UL,
               (int )eeprom_id);
        }
      } else {
      }
    } else {
    }
    rtlefuse->autoload_failflag = 1U;
  } else {
    {
    tmp___15 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                                0L);
    }
    if (tmp___15 != 0L) {
      {
      tmp___16 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___16 != 0L) {
        {
        tmp___13 = preempt_count();
        tmp___14 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Autoload OK\n", "_rtl92de_read_adapter_info",
               (unsigned long )tmp___14 & 2096896UL, ((unsigned long )tmp___13 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    rtlefuse->autoload_failflag = 0U;
  }
  if ((unsigned int )rtlefuse->autoload_failflag != 0U) {
    {
    tmp___19 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                                0L);
    }
    if (tmp___19 != 0L) {
      {
      tmp___20 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___20 != 0L) {
        {
        tmp___17 = preempt_count();
        tmp___18 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> RTL819X Not boot from eeprom, check it !!\n",
               "_rtl92de_read_adapter_info", (unsigned long )tmp___18 & 2096896UL,
               ((unsigned long )tmp___17 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  {
  rtlefuse->eeprom_oemid = hwinfo[203];
  _rtl92de_read_macphymode_and_bandtype(hw, (u8 *)(& hwinfo));
  rtlefuse->eeprom_vid = *((u16 *)(& hwinfo) + 40U);
  rtlefuse->eeprom_did = *((u16 *)(& hwinfo) + 42U);
  rtlefuse->eeprom_svid = *((u16 *)(& hwinfo) + 44U);
  rtlefuse->eeprom_smid = *((u16 *)(& hwinfo) + 46U);
  tmp___23 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                              0L);
  }
  if (tmp___23 != 0L) {
    {
    tmp___24 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___24 != 0L) {
      {
      tmp___21 = preempt_count();
      tmp___22 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> EEPROMId = 0x%4x\n", "_rtl92de_read_adapter_info",
             (unsigned long )tmp___22 & 2096896UL, ((unsigned long )tmp___21 & 0xffffffffffdfffffUL) != 0UL,
             (int )eeprom_id);
      }
    } else {
    }
  } else {
  }
  {
  tmp___27 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                              0L);
  }
  if (tmp___27 != 0L) {
    {
    tmp___28 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___28 != 0L) {
      {
      tmp___25 = preempt_count();
      tmp___26 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> EEPROM VID = 0x%4x\n", "_rtl92de_read_adapter_info",
             (unsigned long )tmp___26 & 2096896UL, ((unsigned long )tmp___25 & 0xffffffffffdfffffUL) != 0UL,
             (int )rtlefuse->eeprom_vid);
      }
    } else {
    }
  } else {
  }
  {
  tmp___31 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                              0L);
  }
  if (tmp___31 != 0L) {
    {
    tmp___32 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___32 != 0L) {
      {
      tmp___29 = preempt_count();
      tmp___30 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> EEPROM DID = 0x%4x\n", "_rtl92de_read_adapter_info",
             (unsigned long )tmp___30 & 2096896UL, ((unsigned long )tmp___29 & 0xffffffffffdfffffUL) != 0UL,
             (int )rtlefuse->eeprom_did);
      }
    } else {
    }
  } else {
  }
  {
  tmp___35 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                              0L);
  }
  if (tmp___35 != 0L) {
    {
    tmp___36 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___36 != 0L) {
      {
      tmp___33 = preempt_count();
      tmp___34 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> EEPROM SVID = 0x%4x\n", "_rtl92de_read_adapter_info",
             (unsigned long )tmp___34 & 2096896UL, ((unsigned long )tmp___33 & 0xffffffffffdfffffUL) != 0UL,
             (int )rtlefuse->eeprom_svid);
      }
    } else {
    }
  } else {
  }
  {
  tmp___39 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                              0L);
  }
  if (tmp___39 != 0L) {
    {
    tmp___40 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___40 != 0L) {
      {
      tmp___37 = preempt_count();
      tmp___38 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> EEPROM SMID = 0x%4x\n", "_rtl92de_read_adapter_info",
             (unsigned long )tmp___38 & 2096896UL, ((unsigned long )tmp___37 & 0xffffffffffdfffffUL) != 0UL,
             (int )rtlefuse->eeprom_smid);
      }
    } else {
    }
  } else {
  }
  if (rtlhal->interfaceindex == 0U) {
    i = 0U;
    goto ldv_51390;
    ldv_51389:
    usvalue = *((u16 *)(& hwinfo) + (unsigned long )((int )i + 85));
    *((u16 *)(& rtlefuse->dev_addr) + (unsigned long )i) = usvalue;
    i = (unsigned int )i + 2U;
    ldv_51390: ;
    if ((unsigned int )i <= 5U) {
      goto ldv_51389;
    } else {
    }
  } else {
    i = 0U;
    goto ldv_51393;
    ldv_51392:
    usvalue = *((u16 *)(& hwinfo) + (unsigned long )((int )i + 91));
    *((u16 *)(& rtlefuse->dev_addr) + (unsigned long )i) = usvalue;
    i = (unsigned int )i + 2U;
    ldv_51393: ;
    if ((unsigned int )i <= 5U) {
      goto ldv_51392;
    } else {
    }
  }
  {
  (*(((rtlpriv->cfg)->ops)->set_hw_reg))(hw, 0, (u8 *)(& rtlefuse->dev_addr));
  tmp___43 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                              0L);
  }
  if (tmp___43 != 0L) {
    {
    tmp___44 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
    }
    if (tmp___44 != 0L) {
      {
      tmp___41 = preempt_count();
      tmp___42 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> %pM\n", "_rtl92de_read_adapter_info", (unsigned long )tmp___42 & 2096896UL,
             ((unsigned long )tmp___41 & 0xffffffffffdfffffUL) != 0UL, (u8 *)(& rtlefuse->dev_addr));
      }
    } else {
    }
  } else {
  }
  {
  _rtl92de_read_txpower_info(hw, (unsigned int )rtlefuse->autoload_failflag != 0U,
                             (u8 *)(& hwinfo));
  }
  {
  if ((unsigned int )rtlhal->bandset == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )rtlhal->bandset == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )rtlhal->bandset == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0:
  rtlefuse->channel_plan = 8U;
  goto ldv_51396;
  case_1:
  rtlefuse->channel_plan = 0U;
  goto ldv_51396;
  case_2:
  rtlefuse->channel_plan = 0U;
  goto ldv_51396;
  switch_default:
  rtlefuse->channel_plan = 0U;
  goto ldv_51396;
  switch_break: ;
  }
  ldv_51396:
  {
  rtlefuse->eeprom_version = (u8 )*((u16 *)(& hwinfo) + 202U);
  rtlefuse->txpwr_fromeprom = 1;
  tmp___47 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                              0L);
  }
  if (tmp___47 != 0L) {
    {
    tmp___48 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___48 != 0L) {
      {
      tmp___45 = preempt_count();
      tmp___46 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> EEPROM Customer ID: 0x%2x\n", "_rtl92de_read_adapter_info",
             (unsigned long )tmp___46 & 2096896UL, ((unsigned long )tmp___45 & 0xffffffffffdfffffUL) != 0UL,
             (int )rtlefuse->eeprom_oemid);
      }
    } else {
    }
  } else {
  }
  return;
}
}
void rtl92de_read_eeprom_info(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_efuse *rtlefuse ;
  struct rtl_hal *rtlhal ;
  u8 tmp_u1b ;
  enum version_8192d tmp ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlefuse = & ((struct rtl_priv *)hw->priv)->efuse;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  tmp = _rtl92de_read_chip_version(hw);
  rtlhal->version = (u32 )tmp;
  tmp_u1b = rtl_read_byte(rtlpriv, 10U);
  rtlefuse->autoload_status = tmp_u1b;
  }
  if (((unsigned long )tmp_u1b & 16UL) != 0UL) {
    {
    tmp___2 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp___3 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
      }
      if (tmp___3 != 0L) {
        {
        tmp___0 = preempt_count();
        tmp___1 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Boot from EEPROM\n", "rtl92de_read_eeprom_info",
               (unsigned long )tmp___1 & 2096896UL, ((unsigned long )tmp___0 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    rtlefuse->epromtype = 0;
  } else {
    {
    tmp___6 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                               0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___7 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
      }
      if (tmp___7 != 0L) {
        {
        tmp___4 = preempt_count();
        tmp___5 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Boot from EFUSE\n", "rtl92de_read_eeprom_info",
               (unsigned long )tmp___5 & 2096896UL, ((unsigned long )tmp___4 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    rtlefuse->epromtype = 2;
  }
  if (((unsigned long )tmp_u1b & 32UL) != 0UL) {
    {
    tmp___10 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                                0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___11 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___11 != 0L) {
        {
        tmp___8 = preempt_count();
        tmp___9 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Autoload OK\n", "rtl92de_read_eeprom_info",
               (unsigned long )tmp___9 & 2096896UL, ((unsigned long )tmp___8 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    {
    rtlefuse->autoload_failflag = 0U;
    _rtl92de_read_adapter_info(hw);
    }
  } else {
    {
    tmp___14 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                                0L);
    }
    if (tmp___14 != 0L) {
      {
      tmp___15 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___15 != 0L) {
        {
        tmp___12 = preempt_count();
        tmp___13 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Autoload ERR!!\n", "rtl92de_read_eeprom_info",
               (unsigned long )tmp___13 & 2096896UL, ((unsigned long )tmp___12 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  }
  return;
}
}
static void rtl92de_update_hal_rate_table(struct ieee80211_hw *hw , struct ieee80211_sta *sta )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_mac *mac ;
  struct rtl_hal *rtlhal ;
  u32 ratr_value ;
  u8 ratr_index ;
  u8 nmode ;
  u8 mimo_ps ;
  u16 shortgi_rate ;
  u32 tmp_ratr_value ;
  u8 curtxbw_40mhz ;
  u8 curshortgi_40mhz ;
  u8 curshortgi_20mhz ;
  enum wireless_mode wirelessmode ;
  u32 ratr_mask ;
  u8 tmp ;
  u8 tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  ratr_index = 0U;
  nmode = mac->ht_enable;
  mimo_ps = 1U;
  curtxbw_40mhz = mac->bw_40;
  curshortgi_40mhz = ((int )sta->ht_cap.cap & 64) != 0;
  curshortgi_20mhz = ((int )sta->ht_cap.cap & 32) != 0;
  wirelessmode = (enum wireless_mode )mac->mode;
  if ((unsigned int )rtlhal->current_bandtype == 1U) {
    ratr_value = sta->supp_rates[1] << 4;
  } else {
    ratr_value = sta->supp_rates[0];
  }
  ratr_value = ratr_value | (u32 )(((int )sta->ht_cap.mcs.rx_mask[1] << 20) | ((int )sta->ht_cap.mcs.rx_mask[0] << 12));
  {
  if ((unsigned int )wirelessmode == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )wirelessmode == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )wirelessmode == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )wirelessmode == 16U) {
    goto case_16;
  } else {
  }
  if ((unsigned int )wirelessmode == 32U) {
    goto case_32;
  } else {
  }
  goto switch_default;
  case_1:
  ratr_value = ratr_value & 4080U;
  goto ldv_51427;
  case_2: ;
  if ((ratr_value & 12U) != 0U) {
    ratr_value = ratr_value & 13U;
  } else {
    ratr_value = ratr_value & 15U;
  }
  goto ldv_51427;
  case_4:
  ratr_value = ratr_value & 4085U;
  goto ldv_51427;
  case_16: ;
  case_32:
  nmode = 1U;
  if ((unsigned int )mimo_ps == 2U) {
    ratr_value = ratr_value & 520197U;
  } else {
    {
    tmp = get_rf_type(rtlphy);
    }
    if ((unsigned int )tmp == 1U) {
      ratr_mask = 1044485U;
    } else {
      {
      tmp___0 = get_rf_type(rtlphy);
      }
      if ((unsigned int )tmp___0 == 0U) {
        ratr_mask = 1044485U;
      } else {
        ratr_mask = 252702725U;
      }
    }
    ratr_value = ratr_value & ratr_mask;
  }
  goto ldv_51427;
  switch_default: ;
  if ((unsigned int )rtlphy->rf_type == 1U) {
    ratr_value = ratr_value & 1044735U;
  } else {
    ratr_value = ratr_value & 252702975U;
  }
  goto ldv_51427;
  switch_break: ;
  }
  ldv_51427:
  ratr_value = ratr_value & 268435455U;
  if ((unsigned int )nmode != 0U && (((unsigned int )curtxbw_40mhz != 0U && (unsigned int )curshortgi_40mhz != 0U) || ((unsigned int )curtxbw_40mhz == 0U && (unsigned int )curshortgi_20mhz != 0U))) {
    ratr_value = ratr_value | 268435456U;
    tmp_ratr_value = ratr_value >> 12;
    shortgi_rate = 15U;
    goto ldv_51436;
    ldv_51435: ;
    if (((u32 )(1 << (int )shortgi_rate) & tmp_ratr_value) != 0U) {
      goto ldv_51434;
    } else {
    }
    shortgi_rate = (u16 )((int )shortgi_rate - 1);
    ldv_51436: ;
    if ((unsigned int )shortgi_rate != 0U) {
      goto ldv_51435;
    } else {
    }
    ldv_51434:
    shortgi_rate = (u16 )((((int )((short )((int )shortgi_rate << 12)) | (int )((short )((int )shortgi_rate << 8))) | (int )((short )((int )shortgi_rate << 4))) | (int )((short )shortgi_rate));
  } else {
  }
  {
  rtl_write_dword(rtlpriv, (u32 )(((int )ratr_index + 273) * 4), ratr_value);
  tmp___4 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4194304ULL) != 0ULL,
                             0L);
  }
  if (tmp___4 != 0L) {
    {
    tmp___5 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___1 = rtl_read_dword(rtlpriv, 1092U);
      tmp___2 = preempt_count();
      tmp___3 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> %x\n", "rtl92de_update_hal_rate_table",
             (unsigned long )tmp___3 & 2096896UL, ((unsigned long )tmp___2 & 0xffffffffffdfffffUL) != 0UL,
             tmp___1);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void rtl92de_update_hal_rate_mask(struct ieee80211_hw *hw , struct ieee80211_sta *sta ,
                                         u8 rssi_level )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_mac *mac ;
  struct rtl_hal *rtlhal ;
  struct rtl_sta_info *sta_entry ;
  u32 ratr_bitmap ;
  u8 ratr_index ;
  u8 curtxbw_40mhz ;
  u8 curshortgi_40mhz ;
  u8 curshortgi_20mhz ;
  enum wireless_mode wirelessmode ;
  bool shortgi ;
  u32 value[2U] ;
  u8 macid ;
  u8 mimo_ps ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  sta_entry = (struct rtl_sta_info *)0;
  curtxbw_40mhz = (unsigned int )sta->bandwidth != 0U;
  curshortgi_40mhz = ((int )sta->ht_cap.cap & 64) != 0;
  curshortgi_20mhz = ((int )sta->ht_cap.cap & 32) != 0;
  wirelessmode = 0;
  shortgi = 0;
  macid = 0U;
  mimo_ps = 1U;
  sta_entry = (struct rtl_sta_info *)(& sta->drv_priv);
  mimo_ps = sta_entry->mimo_ps;
  wirelessmode = (enum wireless_mode )sta_entry->wireless_mode;
  if ((unsigned int )mac->opmode == 2U) {
    curtxbw_40mhz = mac->bw_40;
  } else
  if ((unsigned int )mac->opmode == 3U || (unsigned int )mac->opmode == 1U) {
    macid = (unsigned int )((u8 )sta->aid) + 1U;
  } else {
  }
  if ((unsigned int )rtlhal->current_bandtype == 1U) {
    ratr_bitmap = sta->supp_rates[1] << 4;
  } else {
    ratr_bitmap = sta->supp_rates[0];
  }
  ratr_bitmap = ratr_bitmap | (u32 )(((int )sta->ht_cap.mcs.rx_mask[1] << 20) | ((int )sta->ht_cap.mcs.rx_mask[0] << 12));
  {
  if ((unsigned int )wirelessmode == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )wirelessmode == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )wirelessmode == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )wirelessmode == 16U) {
    goto case_16;
  } else {
  }
  if ((unsigned int )wirelessmode == 32U) {
    goto case_32;
  } else {
  }
  goto switch_default;
  case_2:
  ratr_index = 6U;
  if ((ratr_bitmap & 12U) != 0U) {
    ratr_bitmap = ratr_bitmap & 13U;
  } else {
    ratr_bitmap = ratr_bitmap & 15U;
  }
  goto ldv_51459;
  case_4:
  ratr_index = 4U;
  if ((unsigned int )rssi_level == 1U) {
    ratr_bitmap = ratr_bitmap & 3840U;
  } else
  if ((unsigned int )rssi_level == 2U) {
    ratr_bitmap = ratr_bitmap & 4080U;
  } else {
    ratr_bitmap = ratr_bitmap & 4085U;
  }
  goto ldv_51459;
  case_1:
  ratr_index = 5U;
  ratr_bitmap = ratr_bitmap & 4080U;
  goto ldv_51459;
  case_16: ;
  case_32: ;
  if ((unsigned int )wirelessmode == 16U) {
    ratr_index = 0U;
  } else {
    ratr_index = 1U;
  }
  if ((unsigned int )mimo_ps == 2U) {
    if ((unsigned int )rssi_level == 1U) {
      ratr_bitmap = ratr_bitmap & 458752U;
    } else
    if ((unsigned int )rssi_level == 2U) {
      ratr_bitmap = ratr_bitmap & 520192U;
    } else {
      ratr_bitmap = ratr_bitmap & 520197U;
    }
  } else
  if ((unsigned int )rtlphy->rf_type <= 1U) {
    if ((unsigned int )curtxbw_40mhz != 0U) {
      if ((unsigned int )rssi_level == 1U) {
        ratr_bitmap = ratr_bitmap & 983040U;
      } else
      if ((unsigned int )rssi_level == 2U) {
        ratr_bitmap = ratr_bitmap & 1044480U;
      } else {
        ratr_bitmap = ratr_bitmap & 1044501U;
      }
    } else
    if ((unsigned int )rssi_level == 1U) {
      ratr_bitmap = ratr_bitmap & 983040U;
    } else
    if ((unsigned int )rssi_level == 2U) {
      ratr_bitmap = ratr_bitmap & 1044480U;
    } else {
      ratr_bitmap = ratr_bitmap & 1044485U;
    }
  } else
  if ((unsigned int )curtxbw_40mhz != 0U) {
    if ((unsigned int )rssi_level == 1U) {
      ratr_bitmap = ratr_bitmap & 252641280U;
    } else
    if ((unsigned int )rssi_level == 2U) {
      ratr_bitmap = ratr_bitmap & 252702720U;
    } else {
      ratr_bitmap = ratr_bitmap & 252702741U;
    }
  } else
  if ((unsigned int )rssi_level == 1U) {
    ratr_bitmap = ratr_bitmap & 252641280U;
  } else
  if ((unsigned int )rssi_level == 2U) {
    ratr_bitmap = ratr_bitmap & 252702720U;
  } else {
    ratr_bitmap = ratr_bitmap & 252702725U;
  }
  if (((unsigned int )curtxbw_40mhz != 0U && (unsigned int )curshortgi_40mhz != 0U) || ((unsigned int )curtxbw_40mhz == 0U && (unsigned int )curshortgi_20mhz != 0U)) {
    if ((unsigned int )macid == 0U) {
      shortgi = 1;
    } else
    if ((unsigned int )macid == 1U) {
      shortgi = 0;
    } else {
    }
  } else {
  }
  goto ldv_51459;
  switch_default:
  ratr_index = 0U;
  if ((unsigned int )rtlphy->rf_type == 1U) {
    ratr_bitmap = ratr_bitmap & 1044735U;
  } else {
    ratr_bitmap = ratr_bitmap & 252702975U;
  }
  goto ldv_51459;
  switch_break: ;
  }
  ldv_51459:
  {
  value[0] = (ratr_bitmap & 268435455U) | (u32 )((int )ratr_index << 28);
  value[1] = (u32 )(((int )macid | ((int )shortgi ? 32 : 0)) | 128);
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4194304ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> ratr_bitmap :%x value0:%x value1:%x\n",
             "rtl92de_update_hal_rate_mask", (unsigned long )tmp___0 & 2096896UL,
             ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL, ratr_bitmap, value[0],
             value[1]);
      }
    } else {
    }
  } else {
  }
  {
  rtl92d_fill_h2c_cmd(hw, 6, 5U, (u8 *)(& value));
  }
  if ((unsigned int )macid != 0U) {
    sta_entry->ratr_index = ratr_index;
  } else {
  }
  return;
}
}
void rtl92de_update_hal_rate_tbl(struct ieee80211_hw *hw , struct ieee80211_sta *sta ,
                                 u8 rssi_level )
{
  struct rtl_priv *rtlpriv ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  if ((int )rtlpriv->dm.useramask) {
    {
    rtl92de_update_hal_rate_mask(hw, sta, (int )rssi_level);
    }
  } else {
    {
    rtl92de_update_hal_rate_table(hw, sta);
    }
  }
  return;
}
}
void rtl92de_update_channel_access_setting(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_mac *mac ;
  u16 sifs_timer ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  (*(((rtlpriv->cfg)->ops)->set_hw_reg))(hw, 17, & mac->slot_time);
  }
  if ((unsigned int )mac->ht_enable == 0U) {
    sifs_timer = 2570U;
  } else {
    sifs_timer = 4112U;
  }
  {
  (*(((rtlpriv->cfg)->ops)->set_hw_reg))(hw, 14, (u8 *)(& sifs_timer));
  }
  return;
}
}
bool rtl92de_gpio_radio_on_off_checking(struct ieee80211_hw *hw , u8 *valid )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_ps_ctl *ppsc ;
  struct rtl_pci *rtlpci ;
  enum rf_pwrstate e_rfpowerstate_toset ;
  u8 u1tmp ;
  bool actuallyset ;
  unsigned long flag ;
  raw_spinlock_t *tmp ;
  u8 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  raw_spinlock_t *tmp___9 ;
  raw_spinlock_t *tmp___10 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  ppsc = & ((struct rtl_priv *)hw->priv)->psc;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  actuallyset = 0;
  if ((int )rtlpci->being_init_adapter) {
    return (0);
  } else {
  }
  if ((int )ppsc->swrf_processing) {
    return (0);
  } else {
  }
  {
  tmp = spinlock_check(& rtlpriv->locks.rf_ps_lock);
  flag = _raw_spin_lock_irqsave(tmp);
  }
  if ((int )ppsc->rfchange_inprogress) {
    {
    spin_unlock_irqrestore(& rtlpriv->locks.rf_ps_lock, flag);
    }
    return (0);
  } else {
    {
    ppsc->rfchange_inprogress = 1;
    spin_unlock_irqrestore(& rtlpriv->locks.rf_ps_lock, flag);
    }
  }
  {
  tmp___0 = rtl_read_byte(rtlpriv, 67U);
  rtl_write_byte(rtlpriv, 67U, (int )tmp___0 & 247);
  u1tmp = rtl_read_byte(rtlpriv, 66U);
  e_rfpowerstate_toset = ((unsigned long )u1tmp & 8UL) != 0UL ? 0 : 2;
  }
  if ((int )ppsc->hwradiooff && (unsigned int )e_rfpowerstate_toset == 0U) {
    {
    tmp___3 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                               0L);
    }
    if (tmp___3 != 0L) {
      {
      tmp___4 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
      }
      if (tmp___4 != 0L) {
        {
        tmp___1 = preempt_count();
        tmp___2 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> GPIOChangeRF  - HW Radio ON, RF ON\n",
               "rtl92de_gpio_radio_on_off_checking", (unsigned long )tmp___2 & 2096896UL,
               ((unsigned long )tmp___1 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    e_rfpowerstate_toset = 0;
    ppsc->hwradiooff = 0;
    actuallyset = 1;
  } else
  if (! ppsc->hwradiooff && (unsigned int )e_rfpowerstate_toset == 2U) {
    {
    tmp___7 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                               0L);
    }
    if (tmp___7 != 0L) {
      {
      tmp___8 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
      }
      if (tmp___8 != 0L) {
        {
        tmp___5 = preempt_count();
        tmp___6 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> GPIOChangeRF  - HW Radio OFF, RF OFF\n",
               "rtl92de_gpio_radio_on_off_checking", (unsigned long )tmp___6 & 2096896UL,
               ((unsigned long )tmp___5 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    e_rfpowerstate_toset = 2;
    ppsc->hwradiooff = 1;
    actuallyset = 1;
  } else {
  }
  if ((int )actuallyset) {
    {
    tmp___9 = spinlock_check(& rtlpriv->locks.rf_ps_lock);
    flag = _raw_spin_lock_irqsave(tmp___9);
    ppsc->rfchange_inprogress = 0;
    spin_unlock_irqrestore(& rtlpriv->locks.rf_ps_lock, flag);
    }
  } else {
    if (((unsigned long )ppsc->reg_rfps_level & 8UL) != 0UL) {
      ppsc->cur_ps_level = ppsc->cur_ps_level | 8U;
    } else {
    }
    {
    tmp___10 = spinlock_check(& rtlpriv->locks.rf_ps_lock);
    flag = _raw_spin_lock_irqsave(tmp___10);
    ppsc->rfchange_inprogress = 0;
    spin_unlock_irqrestore(& rtlpriv->locks.rf_ps_lock, flag);
    }
  }
  *valid = 1U;
  return ((bool )(! ((int )ppsc->hwradiooff != 0)));
}
}
void rtl92de_set_key(struct ieee80211_hw *hw , u32 key_index , u8 *p_macaddr , bool is_group ,
                     u8 enc_algo , bool is_wepkey , bool clear_all )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_mac *mac ;
  struct rtl_efuse *rtlefuse ;
  u8 *macaddr ;
  u32 entry_id ;
  bool is_pairwise ;
  u8 cam_const_addr[4U][6U] ;
  u8 cam_const_broad[6U] ;
  u8 idx ;
  u8 cam_offset ;
  u8 clear_number ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  u8 tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  long tmp___18 ;
  long tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  long tmp___22 ;
  long tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  long tmp___26 ;
  long tmp___27 ;
  struct task_struct *tmp___28 ;
  struct task_struct *tmp___29 ;
  struct _ddebug descriptor ;
  long tmp___30 ;
  long tmp___31 ;
  long tmp___32 ;
  int tmp___33 ;
  int tmp___34 ;
  long tmp___35 ;
  long tmp___36 ;
  int tmp___37 ;
  int tmp___38 ;
  long tmp___39 ;
  long tmp___40 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  rtlefuse = & ((struct rtl_priv *)hw->priv)->efuse;
  macaddr = p_macaddr;
  is_pairwise = 0;
  cam_const_addr[0][0] = 0U;
  cam_const_addr[0][1] = 0U;
  cam_const_addr[0][2] = 0U;
  cam_const_addr[0][3] = 0U;
  cam_const_addr[0][4] = 0U;
  cam_const_addr[0][5] = 0U;
  cam_const_addr[1][0] = 0U;
  cam_const_addr[1][1] = 0U;
  cam_const_addr[1][2] = 0U;
  cam_const_addr[1][3] = 0U;
  cam_const_addr[1][4] = 0U;
  cam_const_addr[1][5] = 1U;
  cam_const_addr[2][0] = 0U;
  cam_const_addr[2][1] = 0U;
  cam_const_addr[2][2] = 0U;
  cam_const_addr[2][3] = 0U;
  cam_const_addr[2][4] = 0U;
  cam_const_addr[2][5] = 2U;
  cam_const_addr[3][0] = 0U;
  cam_const_addr[3][1] = 0U;
  cam_const_addr[3][2] = 0U;
  cam_const_addr[3][3] = 0U;
  cam_const_addr[3][4] = 0U;
  cam_const_addr[3][5] = 3U;
  cam_const_broad[0] = 255U;
  cam_const_broad[1] = 255U;
  cam_const_broad[2] = 255U;
  cam_const_broad[3] = 255U;
  cam_const_broad[4] = 255U;
  cam_const_broad[5] = 255U;
  if ((int )clear_all) {
    {
    cam_offset = 0U;
    clear_number = 5U;
    tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 512ULL) != 0ULL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp = preempt_count();
        tmp___0 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> clear_all\n", "rtl92de_set_key", (unsigned long )tmp___0 & 2096896UL,
               ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    idx = 0U;
    goto ldv_51521;
    ldv_51520:
    {
    rtl_cam_mark_invalid(hw, (int )cam_offset + (int )idx);
    rtl_cam_empty_entry(hw, (int )cam_offset + (int )idx);
    }
    if ((unsigned int )idx <= 4U) {
      {
      memset((void *)(& rtlpriv->sec.key_buf) + (unsigned long )idx, 0, 61UL);
      rtlpriv->sec.key_len[(int )idx] = 0U;
      }
    } else {
    }
    idx = (u8 )((int )idx + 1);
    ldv_51521: ;
    if ((int )idx < (int )clear_number) {
      goto ldv_51520;
    } else {
    }
  } else {
    {
    if ((int )enc_algo == 1) {
      goto case_1;
    } else {
    }
    if ((int )enc_algo == 5) {
      goto case_5;
    } else {
    }
    if ((int )enc_algo == 2) {
      goto case_2;
    } else {
    }
    if ((int )enc_algo == 4) {
      goto case_4;
    } else {
    }
    goto switch_default;
    case_1:
    enc_algo = 1U;
    goto ldv_51524;
    case_5:
    enc_algo = 5U;
    goto ldv_51524;
    case_2:
    enc_algo = 2U;
    goto ldv_51524;
    case_4:
    enc_algo = 4U;
    goto ldv_51524;
    switch_default:
    {
    tmp___5 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> switch case not processed\n", "rtl92de_set_key",
               (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    enc_algo = 2U;
    goto ldv_51524;
    switch_break: ;
    }
    ldv_51524: ;
    if ((int )is_wepkey || (int )rtlpriv->sec.use_defaultkey) {
      macaddr = (u8 *)(& cam_const_addr) + (unsigned long )key_index;
      entry_id = key_index;
    } else
    if ((int )is_group) {
      macaddr = (u8 *)(& cam_const_broad);
      entry_id = key_index;
    } else {
      if ((unsigned int )mac->opmode == 3U) {
        {
        tmp___7 = rtl_cam_get_free_entry(hw, p_macaddr);
        entry_id = (u32 )tmp___7;
        }
        if (entry_id > 31U) {
          {
          tmp___10 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 512ULL) != 0ULL,
                                      0L);
          }
          if (tmp___10 != 0L) {
            {
            tmp___11 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
            }
            if (tmp___11 != 0L) {
              {
              tmp___8 = preempt_count();
              tmp___9 = preempt_count();
              printk("\017rtl8192de:%s():<%lx-%x> Can not find free hw security cam entry\n",
                     "rtl92de_set_key", (unsigned long )tmp___9 & 2096896UL, ((unsigned long )tmp___8 & 0xffffffffffdfffffUL) != 0UL);
              }
            } else {
            }
          } else {
          }
          return;
        } else {
        }
      } else {
        entry_id = 4U;
      }
      key_index = 0U;
      is_pairwise = 1;
    }
    if ((unsigned int )rtlpriv->sec.key_len[key_index] == 0U) {
      {
      tmp___14 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 512ULL) != 0ULL,
                                  0L);
      }
      if (tmp___14 != 0L) {
        {
        tmp___15 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
        }
        if (tmp___15 != 0L) {
          {
          tmp___12 = preempt_count();
          tmp___13 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> delete one entry, entry_id is %d\n",
                 "rtl92de_set_key", (unsigned long )tmp___13 & 2096896UL, ((unsigned long )tmp___12 & 0xffffffffffdfffffUL) != 0UL,
                 entry_id);
          }
        } else {
        }
      } else {
      }
      if ((unsigned int )mac->opmode == 3U) {
        {
        rtl_cam_del_entry(hw, p_macaddr);
        }
      } else {
      }
      {
      rtl_cam_delete_one_entry(hw, p_macaddr, entry_id);
      }
    } else {
      {
      tmp___18 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 512ULL) != 0ULL,
                                  0L);
      }
      if (tmp___18 != 0L) {
        {
        tmp___19 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___19 != 0L) {
          {
          tmp___16 = preempt_count();
          tmp___17 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> The insert KEY length is %d\n", "rtl92de_set_key",
                 (unsigned long )tmp___17 & 2096896UL, ((unsigned long )tmp___16 & 0xffffffffffdfffffUL) != 0UL,
                 (int )rtlpriv->sec.key_len[0]);
          }
        } else {
        }
      } else {
      }
      {
      tmp___22 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 512ULL) != 0ULL,
                                  0L);
      }
      if (tmp___22 != 0L) {
        {
        tmp___23 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___23 != 0L) {
          {
          tmp___20 = preempt_count();
          tmp___21 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> The insert KEY is %x %x\n", "rtl92de_set_key",
                 (unsigned long )tmp___21 & 2096896UL, ((unsigned long )tmp___20 & 0xffffffffffdfffffUL) != 0UL,
                 (int )rtlpriv->sec.key_buf[0][0], (int )rtlpriv->sec.key_buf[0][1]);
          }
        } else {
        }
      } else {
      }
      {
      tmp___26 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 512ULL) != 0ULL,
                                  0L);
      }
      if (tmp___26 != 0L) {
        {
        tmp___27 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
        }
        if (tmp___27 != 0L) {
          {
          tmp___24 = preempt_count();
          tmp___25 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> add one entry\n", "rtl92de_set_key",
                 (unsigned long )tmp___25 & 2096896UL, ((unsigned long )tmp___24 & 0xffffffffffdfffffUL) != 0UL);
          }
        } else {
        }
      } else {
      }
      if ((int )is_pairwise) {
        {
        tmp___31 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 512ULL) != 0ULL,
                                    0L);
        }
        if (tmp___31 != 0L) {
          {
          tmp___32 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
          }
          if (tmp___32 != 0L) {
            {
            tmp___28 = get_current();
            tmp___29 = get_current();
            printk("\017%s: In process \"%s\" (pid %i): %s\n", (char *)"rtl8192de",
                   (char *)(& tmp___29->comm), tmp___28->pid, (char *)"Pairwise Key content");
            descriptor.modname = "rtl8192de";
            descriptor.function = "rtl92de_set_key";
            descriptor.filename = "drivers/net/wireless/rtlwifi/rtl8192de/hw.c";
            descriptor.format = "";
            descriptor.lineno = 2262U;
            descriptor.flags = 0U;
            tmp___30 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
            }
            if (tmp___30 != 0L) {
              {
              print_hex_dump("\017", "", 0, 16, 1, (void const *)rtlpriv->sec.pairwise_key,
                             (size_t )rtlpriv->sec.key_len[0], 1);
              }
            } else {
            }
          } else {
          }
        } else {
        }
        {
        tmp___35 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 512ULL) != 0ULL,
                                    0L);
        }
        if (tmp___35 != 0L) {
          {
          tmp___36 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
          }
          if (tmp___36 != 0L) {
            {
            tmp___33 = preempt_count();
            tmp___34 = preempt_count();
            printk("\017rtl8192de:%s():<%lx-%x> set Pairwise key\n", "rtl92de_set_key",
                   (unsigned long )tmp___34 & 2096896UL, ((unsigned long )tmp___33 & 0xffffffffffdfffffUL) != 0UL);
            }
          } else {
          }
        } else {
        }
        {
        rtl_cam_add_one_entry(hw, macaddr, key_index, entry_id, (u32 )enc_algo, 0U,
                              (u8 *)(& rtlpriv->sec.key_buf) + (unsigned long )key_index);
        }
      } else {
        {
        tmp___39 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 512ULL) != 0ULL,
                                    0L);
        }
        if (tmp___39 != 0L) {
          {
          tmp___40 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
          }
          if (tmp___40 != 0L) {
            {
            tmp___37 = preempt_count();
            tmp___38 = preempt_count();
            printk("\017rtl8192de:%s():<%lx-%x> set group key\n", "rtl92de_set_key",
                   (unsigned long )tmp___38 & 2096896UL, ((unsigned long )tmp___37 & 0xffffffffffdfffffUL) != 0UL);
            }
          } else {
          }
        } else {
        }
        if ((unsigned int )mac->opmode == 1U) {
          {
          rtl_cam_add_one_entry(hw, (u8 *)(& rtlefuse->dev_addr), 0U, 4U, (u32 )enc_algo,
                                0U, (u8 *)(& rtlpriv->sec.key_buf) + (unsigned long )entry_id);
          }
        } else {
        }
        {
        rtl_cam_add_one_entry(hw, macaddr, key_index, entry_id, (u32 )enc_algo, 0U,
                              (u8 *)(& rtlpriv->sec.key_buf) + (unsigned long )entry_id);
        }
      }
    }
  }
  return;
}
}
void rtl92de_suspend(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpriv->rtlhal.macphyctl_reg = rtl_read_byte(rtlpriv, 248U);
  }
  return;
}
}
void rtl92de_resume(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtl_write_byte(rtlpriv, 248U, (int )rtlpriv->rtlhal.macphyctl_reg);
  }
  return;
}
}
void rtl92de_init_sw_leds(struct ieee80211_hw *hw ) ;
void rtl92de_led_control(struct ieee80211_hw *hw , enum led_ctl_mode ledaction ) ;
static void _rtl92ce_init_led(struct ieee80211_hw *hw , struct rtl_led *pled , enum rtl_led_pin ledpin )
{
  {
  pled->hw = (void *)hw;
  pled->ledpin = ledpin;
  pled->ledon = 0;
  return;
}
}
void rtl92de_sw_led_on(struct ieee80211_hw *hw , struct rtl_led *pled )
{
  u8 ledcfg ;
  struct rtl_priv *rtlpriv ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 256ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> LedAddr:%X ledpin=%d\n", "rtl92de_sw_led_on",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             78, (unsigned int )pled->ledpin);
      }
    } else {
    }
  } else {
  }
  {
  if ((unsigned int )pled->ledpin == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )pled->ledpin == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )pled->ledpin == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  goto ldv_50295;
  case_1:
  {
  ledcfg = rtl_read_byte(rtlpriv, 78U);
  }
  if ((unsigned int )rtlpriv->efuse.eeprom_did == 33142U || (unsigned int )rtlpriv->efuse.eeprom_did == 33171U) {
    {
    rtl_write_byte(rtlpriv, 78U, (int )(((unsigned int )ledcfg & 16U) | 224U));
    }
  } else {
    {
    rtl_write_byte(rtlpriv, 78U, (int )(((unsigned int )ledcfg & 80U) | 160U));
    }
  }
  goto ldv_50295;
  case_2:
  {
  ledcfg = rtl_read_byte(rtlpriv, 77U);
  rtl_write_byte(rtlpriv, 78U, (int )(((unsigned int )ledcfg & 15U) | 32U));
  }
  goto ldv_50295;
  switch_default:
  {
  tmp___5 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> switch case not processed\n", "rtl92de_sw_led_on",
             (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_50295;
  switch_break: ;
  }
  ldv_50295:
  pled->ledon = 1;
  return;
}
}
void rtl92de_sw_led_off(struct ieee80211_hw *hw , struct rtl_led *pled )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_pci_priv *pcipriv ;
  u8 ledcfg ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  pcipriv = (struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv);
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 256ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> LedAddr:%X ledpin=%d\n", "rtl92de_sw_led_off",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             78, (unsigned int )pled->ledpin);
      }
    } else {
    }
  } else {
  }
  {
  ledcfg = rtl_read_byte(rtlpriv, 78U);
  }
  {
  if ((unsigned int )pled->ledpin == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )pled->ledpin == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )pled->ledpin == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  goto ldv_50308;
  case_1:
  ledcfg = (unsigned int )ledcfg & 240U;
  if ((int )pcipriv->ledctl.led_opendrain) {
    {
    rtl_write_byte(rtlpriv, 78U, (int )((unsigned int )ledcfg | 98U));
    }
  } else {
    {
    rtl_write_byte(rtlpriv, 78U, (int )((unsigned int )ledcfg | 104U));
    }
  }
  goto ldv_50308;
  case_2:
  {
  ledcfg = (unsigned int )ledcfg & 15U;
  rtl_write_byte(rtlpriv, 78U, (int )((unsigned int )ledcfg | 8U));
  }
  goto ldv_50308;
  switch_default:
  {
  tmp___5 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> switch case not processed\n", "rtl92de_sw_led_off",
             (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_50308;
  switch_break: ;
  }
  ldv_50308:
  pled->ledon = 0;
  return;
}
}
void rtl92de_init_sw_leds(struct ieee80211_hw *hw )
{
  struct rtl_pci_priv *pcipriv ;
  {
  {
  pcipriv = (struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv);
  _rtl92ce_init_led(hw, & pcipriv->ledctl.sw_led0, 1);
  _rtl92ce_init_led(hw, & pcipriv->ledctl.sw_led1, 2);
  }
  return;
}
}
static void _rtl92ce_sw_led_control(struct ieee80211_hw *hw , enum led_ctl_mode ledaction )
{
  struct rtl_pci_priv *pcipriv ;
  struct rtl_led *pLed0 ;
  {
  pcipriv = (struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv);
  pLed0 = & pcipriv->ledctl.sw_led0;
  {
  if ((unsigned int )ledaction == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )ledaction == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )ledaction == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )ledaction == 7U) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_2: ;
  case_3:
  {
  rtl92de_sw_led_on(hw, pLed0);
  }
  goto ldv_50325;
  case_7:
  {
  rtl92de_sw_led_off(hw, pLed0);
  }
  goto ldv_50325;
  switch_default: ;
  goto ldv_50325;
  switch_break: ;
  }
  ldv_50325: ;
  return;
}
}
void rtl92de_led_control(struct ieee80211_hw *hw , enum led_ctl_mode ledaction )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_ps_ctl *ppsc ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  ppsc = & ((struct rtl_priv *)hw->priv)->psc;
  if (ppsc->rfoff_reason > 536870912U && ((((unsigned int )ledaction - 4U <= 2U || (unsigned int )ledaction == 2U) || ((unsigned int )ledaction == 3U || (unsigned int )ledaction == 8U)) || (unsigned int )ledaction == 1U)) {
    return;
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 256ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> ledaction %d,\n", "rtl92de_led_control",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             (unsigned int )ledaction);
      }
    } else {
    }
  } else {
  }
  {
  _rtl92ce_sw_led_control(hw, ledaction);
  }
  return;
}
}
extern unsigned long volatile jiffies ;
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
__inline static __u32 skb_queue_len(struct sk_buff_head const *list_ )
{
  {
  return ((__u32 )list_->qlen);
}
}
__inline static bool is_hal_stop(struct rtl_hal *rtlhal )
{
  {
  return ((unsigned int )rtlhal->state == 0U);
}
}
extern bool rtl_ps_enable_nic(struct ieee80211_hw * ) ;
extern bool rtl_ps_disable_nic(struct ieee80211_hw * ) ;
u32 rtl92d_phy_query_bb_reg(struct ieee80211_hw *hw , u32 regaddr , u32 bitmask ) ;
void rtl92d_phy_set_bb_reg(struct ieee80211_hw *hw , u32 regaddr , u32 bitmask , u32 data ) ;
u32 rtl92d_phy_query_rf_reg(struct ieee80211_hw *hw , enum radio_path rfpath , u32 regaddr ,
                            u32 bitmask ) ;
void rtl92d_phy_set_rf_reg(struct ieee80211_hw *hw , enum radio_path rfpath , u32 regaddr ,
                           u32 bitmask , u32 data ) ;
void rtl92d_phy_set_bw_mode(struct ieee80211_hw *hw , enum nl80211_channel_type ch_type ) ;
u8 rtl92d_phy_sw_chnl(struct ieee80211_hw *hw ) ;
bool rtl92d_phy_config_rf_with_headerfile(struct ieee80211_hw *hw , enum rf_content content ,
                                          enum radio_path rfpath ) ;
bool rtl92d_phy_set_rf_power_state(struct ieee80211_hw *hw , enum rf_pwrstate rfpwr_state ) ;
void rtl92d_phy_reload_iqk_setting(struct ieee80211_hw *hw , u8 channel ) ;
void rtl92d_phy_rf6052_set_bandwidth(struct ieee80211_hw *hw , u8 bandwidth ) ;
void rtl92d_phy_rf6052_set_cck_txpower(struct ieee80211_hw *hw , u8 *ppowerlevel ) ;
void rtl92d_phy_rf6052_set_ofdm_txpower(struct ieee80211_hw *hw , u8 *ppowerlevel ,
                                        u8 channel ) ;
bool rtl92d_phy_rf6052_config(struct ieee80211_hw *hw ) ;
bool rtl92d_phy_enable_anotherphy(struct ieee80211_hw *hw , bool bmac0 ) ;
void rtl92d_phy_powerdown_anotherphy(struct ieee80211_hw *hw , bool bmac0 ) ;
u32 rtl8192de_phy_reg_2tarray[380U] ;
u32 rtl8192de_phy_reg_array_pg[624U] ;
u32 rtl8192de_radioa_2tarray[378U] ;
u32 rtl8192de_radiob_2tarray[384U] ;
u32 rtl8192de_radioa_2t_int_paarray[378U] ;
u32 rtl8192de_radiob_2t_int_paarray[384U] ;
u32 rtl8192de_mac_2tarray[160U] ;
u32 rtl8192de_agctab_array[386U] ;
u32 rtl8192de_agctab_5garray[194U] ;
u32 rtl8192de_agctab_2garray[194U] ;
static u32 rf_reg_for_5g_swchnl_normal[13U] =
  { 0U, 47U, 48U, 49U,
        50U, 51U, 52U, 53U,
        54U, 55U, 56U, 57U,
        0U};
static u8 rf_reg_for_c_cut_5g[6U] = { 37U, 38U, 39U, 40U,
        41U, 42U};
static u8 rf_reg_for_c_cut_2g[5U] = { 37U, 38U, 39U, 43U,
        44U};
static u8 rf_for_c_cut_5g_internal_pa[7U] = { 11U, 72U, 73U, 75U,
        3U, 4U, 14U};
static u32 rf_reg_mask_for_c_cut_2g[5U] = { 933890U, 1536U, 458754U, 6U,
        63488U};
static u8 rf_chnl_5g[19U] =
  { 36U, 40U, 44U, 48U,
        52U, 56U, 60U, 64U,
        100U, 104U, 108U, 112U,
        116U, 120U, 124U, 128U,
        132U, 136U, 140U};
static u8 rf_chnl_5g_40m[17U] =
  { 38U, 42U, 46U, 50U,
        54U, 58U, 62U, 102U,
        106U, 110U, 114U, 118U,
        122U, 126U, 130U, 134U,
        138U};
static u32 rf_reg_pram_c_5g[5U][6U] = { { 934846U, 1033784U, 490506U, 910449U,
            880912U, 584452U},
   { 934846U, 1032312U, 1014810U, 920689U,
            882000U, 715524U},
   { 934847U, 1044536U, 1014794U, 910449U,
            939344U, 715524U},
   { 934847U, 1044601U, 1014810U, 910449U,
            939344U, 715524U},
   { 934847U, 1044536U, 1014810U, 910449U,
            882000U, 715524U}};
static u32 rf_reg_param_for_c_cut_2g[3U][5U] = { { 410556U, 1032248U, 490522U, 266889U,
            6208U},
   { 410556U, 1032248U, 31770U, 266889U,
            6208U},
   { 148412U, 1033272U, 31770U, 266891U,
            64577U}};
static u32 rf_syn_g4_for_c_cut_2g = 1073U;
static u32 rf_pram_c_5g_int_pa[3U][7U] = { { 6656U, 263235U, 3765U, 564204U,
            608786U, 608786U, 608786U},
   { 6144U, 787523U, 1840U, 562926U,
            608850U, 608850U, 608850U},
   { 6144U, 787523U, 1840U, 562926U,
            608786U, 608786U, 608786U}};
static u32 rf_imr_param_normal[1U][3U][13U] = { { { 458752U, 4080U, 278543U, 4080U,
                0U, 0U, 0U, 0U,
                0U, 411784U, 927340U, 144U,
                143359U},
     { 458752U, 141440U, 280335U, 350336U,
                112U, 557056U, 0U, 557184U,
                458752U, 412290U, 935532U, 144U,
                208026U},
     { 458752U, 280704U, 280447U, 489600U,
                112U, 557056U, 0U, 557232U,
                0U, 412546U, 935532U, 144U,
                208026U}}};
static u32 curveindex_5g[221U] = { 0U};
static u32 curveindex_2g[14U] = { 0U};
static u32 targetchnl_5g[221U] =
  { 25141U, 25116U, 25091U, 25066U,
        25041U, 25016U, 24991U, 24966U,
        24941U, 24917U, 24892U, 24867U,
        24843U, 24818U, 24794U, 24770U,
        24765U, 24721U, 24697U, 24672U,
        24648U, 24624U, 24600U, 24576U,
        24552U, 24528U, 24504U, 24480U,
        24457U, 24433U, 24409U, 24385U,
        24362U, 24338U, 24315U, 24291U,
        24268U, 24245U, 24221U, 24198U,
        24175U, 24151U, 24128U, 24105U,
        24082U, 24059U, 24036U, 24013U,
        23990U, 23967U, 23945U, 23922U,
        23899U, 23876U, 23854U, 23831U,
        23809U, 23786U, 23764U, 23741U,
        23719U, 23697U, 23674U, 23652U,
        23630U, 23608U, 23586U, 23564U,
        23541U, 23519U, 23498U, 23476U,
        23454U, 23432U, 23410U, 23388U,
        23367U, 23345U, 23323U, 23302U,
        23280U, 23259U, 23237U, 23216U,
        23194U, 23173U, 23152U, 23130U,
        23109U, 23088U, 23067U, 23046U,
        23025U, 23003U, 22982U, 22962U,
        22941U, 22920U, 22899U, 22878U,
        22857U, 22837U, 22816U, 22795U,
        22775U, 22754U, 22733U, 22713U,
        22692U, 22672U, 22652U, 22631U,
        22611U, 22591U, 22570U, 22550U,
        22530U, 22510U, 22490U, 22469U,
        22449U, 22429U, 22409U, 22390U,
        22370U, 22350U, 22336U, 22310U,
        22290U, 22271U, 22251U, 22231U,
        22212U, 22192U, 22173U, 22153U,
        22134U, 22114U, 22095U, 22075U,
        22056U, 22037U, 22017U, 21998U,
        21979U, 21960U, 21941U, 21921U,
        21902U, 21883U, 21864U, 21845U,
        21826U, 21807U, 21789U, 21770U,
        21751U, 21732U, 21713U, 21695U,
        21676U, 21657U, 21639U, 21620U,
        21602U, 21583U, 21565U, 21546U,
        21528U, 21509U, 21491U, 21473U,
        21454U, 21436U, 21418U, 21400U,
        21381U, 21363U, 21345U, 21327U,
        21309U, 21291U, 21273U, 21255U,
        21237U, 21219U, 21201U, 21183U,
        21166U, 21148U, 21130U, 21112U,
        21095U, 21077U, 21059U, 21042U,
        21024U, 21007U, 20989U, 20972U,
        25679U, 25653U, 25627U, 25601U,
        25575U, 25549U, 25523U, 25497U,
        25471U, 25446U, 25420U, 25394U,
        25369U, 25343U, 25318U, 25292U,
        25267U, 25242U, 25216U, 25191U,
        25166U};
static u32 targetchnl_2g[14U] =
  { 26084U, 26030U, 25976U, 25923U,
        25869U, 25816U, 25764U, 25711U,
        25658U, 25606U, 25554U, 25502U,
        25451U, 25328U};
static u32 _rtl92d_phy_calculate_bit_shift(u32 bitmask )
{
  u32 i ;
  {
  i = 0U;
  goto ldv_50685;
  ldv_50684: ;
  if ((int )(bitmask >> (int )i) & 1) {
    goto ldv_50683;
  } else {
  }
  i = i + 1U;
  ldv_50685: ;
  if (i <= 31U) {
    goto ldv_50684;
  } else {
  }
  ldv_50683: ;
  return (i);
}
}
u32 rtl92d_phy_query_bb_reg(struct ieee80211_hw *hw , u32 regaddr , u32 bitmask )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u32 returnvalue ;
  u32 originalvalue ;
  u32 bitshift ;
  u8 dbi_direct ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & rtlpriv->rtlhal;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> regaddr(%#x), bitmask(%#x)\n", "rtl92d_phy_query_bb_reg",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             regaddr, bitmask);
      }
    } else {
    }
  } else {
  }
  if ((int )rtlhal->during_mac1init_radioa || (int )rtlhal->during_mac0init_radiob) {
    if ((int )rtlhal->during_mac1init_radioa) {
      dbi_direct = 8U;
    } else
    if ((int )rtlhal->during_mac0init_radiob) {
      dbi_direct = 12U;
    } else {
    }
    {
    originalvalue = rtl92de_read_dword_dbi(hw, (int )((unsigned short )regaddr), (int )dbi_direct);
    }
  } else {
    {
    originalvalue = rtl_read_dword(rtlpriv, regaddr);
    }
  }
  {
  bitshift = _rtl92d_phy_calculate_bit_shift(bitmask);
  returnvalue = (originalvalue & bitmask) >> (int )bitshift;
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> BBR MASK=0x%x Addr[0x%x]=0x%x\n", "rtl92d_phy_query_bb_reg",
             (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL,
             bitmask, regaddr, originalvalue);
      }
    } else {
    }
  } else {
  }
  return (returnvalue);
}
}
void rtl92d_phy_set_bb_reg(struct ieee80211_hw *hw , u32 regaddr , u32 bitmask , u32 data )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 dbi_direct ;
  u32 originalvalue ;
  u32 bitshift ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & rtlpriv->rtlhal;
  dbi_direct = 0U;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> regaddr(%#x), bitmask(%#x), data(%#x)\n",
             "rtl92d_phy_set_bb_reg", (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             regaddr, bitmask, data);
      }
    } else {
    }
  } else {
  }
  if ((int )rtlhal->during_mac1init_radioa) {
    dbi_direct = 8U;
  } else
  if ((int )rtlhal->during_mac0init_radiob) {
    dbi_direct = 12U;
  } else {
  }
  if (bitmask != 4294967295U) {
    if ((int )rtlhal->during_mac1init_radioa || (int )rtlhal->during_mac0init_radiob) {
      {
      originalvalue = rtl92de_read_dword_dbi(hw, (int )((unsigned short )regaddr),
                                             (int )dbi_direct);
      }
    } else {
      {
      originalvalue = rtl_read_dword(rtlpriv, regaddr);
      }
    }
    {
    bitshift = _rtl92d_phy_calculate_bit_shift(bitmask);
    data = (originalvalue & ~ bitmask) | (data << (int )bitshift);
    }
  } else {
  }
  if ((int )rtlhal->during_mac1init_radioa || (int )rtlhal->during_mac0init_radiob) {
    {
    rtl92de_write_dword_dbi(hw, (int )((unsigned short )regaddr), data, (int )dbi_direct);
    }
  } else {
    {
    rtl_write_dword(rtlpriv, regaddr, data);
    }
  }
  {
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> regaddr(%#x), bitmask(%#x), data(%#x)\n",
             "rtl92d_phy_set_bb_reg", (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL,
             regaddr, bitmask, data);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static u32 _rtl92d_phy_rf_serial_read(struct ieee80211_hw *hw , enum radio_path rfpath ,
                                      u32 offset )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct bb_reg_def *pphyreg ;
  u32 newoffset ;
  u32 tmplong ;
  u32 tmplong2 ;
  u8 rfpi_enable ;
  u32 retvalue ;
  u32 tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  pphyreg = (struct bb_reg_def *)(& rtlphy->phyreg_def) + (unsigned long )rfpath;
  rfpi_enable = 0U;
  newoffset = offset;
  tmplong = rtl_get_bbreg(hw, 2084U, 4294967295U);
  }
  if ((unsigned int )rfpath == 0U) {
    tmplong2 = tmplong;
  } else {
    {
    tmplong2 = rtl_get_bbreg(hw, pphyreg->rfhssi_para2, 4294967295U);
    }
  }
  {
  tmplong2 = ((tmplong2 & 2155872255U) | (newoffset << 23)) | 2147483648U;
  rtl_set_bbreg(hw, 2084U, 4294967295U, tmplong & 2147483647U);
  __const_udelay(42950UL);
  rtl_set_bbreg(hw, pphyreg->rfhssi_para2, 4294967295U, tmplong2);
  __const_udelay(214750UL);
  __const_udelay(214750UL);
  rtl_set_bbreg(hw, 2084U, 4294967295U, tmplong | 2147483648U);
  __const_udelay(42950UL);
  }
  if ((unsigned int )rfpath == 0U) {
    {
    tmp = rtl_get_bbreg(hw, 2080U, 256U);
    rfpi_enable = (unsigned char )tmp;
    }
  } else
  if ((unsigned int )rfpath == 1U) {
    {
    tmp___0 = rtl_get_bbreg(hw, 2088U, 256U);
    rfpi_enable = (unsigned char )tmp___0;
    }
  } else {
  }
  if ((unsigned int )rfpi_enable != 0U) {
    {
    retvalue = rtl_get_bbreg(hw, pphyreg->rf_rbpi, 1048575U);
    }
  } else {
    {
    retvalue = rtl_get_bbreg(hw, pphyreg->rf_rb, 1048575U);
    }
  }
  {
  tmp___3 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___3 != 0L) {
    {
    tmp___4 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___4 != 0L) {
      {
      tmp___1 = preempt_count();
      tmp___2 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> RFR-%d Addr[0x%x] = 0x%x\n", "_rtl92d_phy_rf_serial_read",
             (unsigned long )tmp___2 & 2096896UL, ((unsigned long )tmp___1 & 0xffffffffffdfffffUL) != 0UL,
             (unsigned int )rfpath, pphyreg->rf_rb, retvalue);
      }
    } else {
    }
  } else {
  }
  return (retvalue);
}
}
static void _rtl92d_phy_rf_serial_write(struct ieee80211_hw *hw , enum radio_path rfpath ,
                                        u32 offset , u32 data )
{
  u32 data_and_addr ;
  u32 newoffset ;
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct bb_reg_def *pphyreg ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  pphyreg = (struct bb_reg_def *)(& rtlphy->phyreg_def) + (unsigned long )rfpath;
  newoffset = offset;
  data_and_addr = ((newoffset << 20) | (data & 1048575U)) & 268435455U;
  rtl_set_bbreg(hw, pphyreg->rf3wire_offset, 4294967295U, data_and_addr);
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> RFW-%d Addr[0x%x]=0x%x\n", "_rtl92d_phy_rf_serial_write",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             (unsigned int )rfpath, pphyreg->rf3wire_offset, data_and_addr);
      }
    } else {
    }
  } else {
  }
  return;
}
}
u32 rtl92d_phy_query_rf_reg(struct ieee80211_hw *hw , enum radio_path rfpath , u32 regaddr ,
                            u32 bitmask )
{
  struct rtl_priv *rtlpriv ;
  u32 original_value ;
  u32 readback_value ;
  u32 bitshift ;
  unsigned long flags ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> regaddr(%#x), rfpath(%#x), bitmask(%#x)\n",
             "rtl92d_phy_query_rf_reg", (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             regaddr, (unsigned int )rfpath, bitmask);
      }
    } else {
    }
  } else {
  }
  {
  tmp___3 = spinlock_check(& rtlpriv->locks.rf_lock);
  flags = _raw_spin_lock_irqsave(tmp___3);
  original_value = _rtl92d_phy_rf_serial_read(hw, rfpath, regaddr);
  bitshift = _rtl92d_phy_calculate_bit_shift(bitmask);
  readback_value = (original_value & bitmask) >> (int )bitshift;
  spin_unlock_irqrestore(& rtlpriv->locks.rf_lock, flags);
  tmp___6 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___6 != 0L) {
    {
    tmp___7 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___7 != 0L) {
      {
      tmp___4 = preempt_count();
      tmp___5 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> regaddr(%#x), rfpath(%#x), bitmask(%#x), original_value(%#x)\n",
             "rtl92d_phy_query_rf_reg", (unsigned long )tmp___5 & 2096896UL, ((unsigned long )tmp___4 & 0xffffffffffdfffffUL) != 0UL,
             regaddr, (unsigned int )rfpath, bitmask, original_value);
      }
    } else {
    }
  } else {
  }
  return (readback_value);
}
}
void rtl92d_phy_set_rf_reg(struct ieee80211_hw *hw , enum radio_path rfpath , u32 regaddr ,
                           u32 bitmask , u32 data )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  u32 original_value ;
  u32 bitshift ;
  unsigned long flags ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\n",
             "rtl92d_phy_set_rf_reg", (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             regaddr, bitmask, data, (unsigned int )rfpath);
      }
    } else {
    }
  } else {
  }
  if (bitmask == 0U) {
    return;
  } else {
  }
  {
  tmp___3 = spinlock_check(& rtlpriv->locks.rf_lock);
  flags = _raw_spin_lock_irqsave(tmp___3);
  }
  if ((unsigned int )rtlphy->rf_mode != 1U) {
    if (bitmask != 1048575U) {
      {
      original_value = _rtl92d_phy_rf_serial_read(hw, rfpath, regaddr);
      bitshift = _rtl92d_phy_calculate_bit_shift(bitmask);
      data = (original_value & ~ bitmask) | (data << (int )bitshift);
      }
    } else {
    }
    {
    _rtl92d_phy_rf_serial_write(hw, rfpath, regaddr, data);
    }
  } else {
  }
  {
  spin_unlock_irqrestore(& rtlpriv->locks.rf_lock, flags);
  tmp___6 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___6 != 0L) {
    {
    tmp___7 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___7 != 0L) {
      {
      tmp___4 = preempt_count();
      tmp___5 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\n",
             "rtl92d_phy_set_rf_reg", (unsigned long )tmp___5 & 2096896UL, ((unsigned long )tmp___4 & 0xffffffffffdfffffUL) != 0UL,
             regaddr, bitmask, data, (unsigned int )rfpath);
      }
    } else {
    }
  } else {
  }
  return;
}
}
bool rtl92d_phy_mac_config(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  u32 i ;
  u32 arraylength ;
  u32 *ptrarray ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Read Rtl819XMACPHY_Array\n", "rtl92d_phy_mac_config",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  {
  arraylength = 160U;
  ptrarray = (u32 *)(& rtl8192de_mac_2tarray);
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Img:Rtl819XMAC_Array\n", "rtl92d_phy_mac_config",
             (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  i = 0U;
  goto ldv_50776;
  ldv_50775:
  {
  rtl_write_byte(rtlpriv, *(ptrarray + (unsigned long )i), (int )((unsigned char )*(ptrarray + (unsigned long )(i + 1U))));
  i = i + 2U;
  }
  ldv_50776: ;
  if (i < arraylength) {
    goto ldv_50775;
  } else {
  }
  if ((unsigned int )rtlpriv->rtlhal.macphymode == 0U) {
    {
    rtl_write_byte(rtlpriv, 1226U, 11);
    }
  } else {
    {
    rtl_write_byte(rtlpriv, 1226U, 7);
    }
  }
  return (1);
}
}
static void _rtl92d_phy_init_bb_rf_register_definition(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rtlphy->phyreg_def[0].rfintfs = 2160U;
  rtlphy->phyreg_def[1].rfintfs = 2160U;
  rtlphy->phyreg_def[2].rfintfs = 2164U;
  rtlphy->phyreg_def[3].rfintfs = 2164U;
  rtlphy->phyreg_def[0].rfintfi = 2272U;
  rtlphy->phyreg_def[1].rfintfi = 2272U;
  rtlphy->phyreg_def[2].rfintfi = 2276U;
  rtlphy->phyreg_def[3].rfintfi = 2276U;
  rtlphy->phyreg_def[0].rfintfo = 2144U;
  rtlphy->phyreg_def[1].rfintfo = 2148U;
  rtlphy->phyreg_def[0].rfintfe = 2144U;
  rtlphy->phyreg_def[1].rfintfe = 2148U;
  rtlphy->phyreg_def[0].rf3wire_offset = 2112U;
  rtlphy->phyreg_def[1].rf3wire_offset = 2116U;
  rtlphy->phyreg_def[0].rflssi_select = 2168U;
  rtlphy->phyreg_def[1].rflssi_select = 2168U;
  rtlphy->phyreg_def[2].rflssi_select = 2172U;
  rtlphy->phyreg_def[3].rflssi_select = 2172U;
  rtlphy->phyreg_def[0].rftxgain_stage = 2060U;
  rtlphy->phyreg_def[1].rftxgain_stage = 2060U;
  rtlphy->phyreg_def[2].rftxgain_stage = 2060U;
  rtlphy->phyreg_def[3].rftxgain_stage = 2060U;
  rtlphy->phyreg_def[0].rfhssi_para1 = 2080U;
  rtlphy->phyreg_def[1].rfhssi_para1 = 2088U;
  rtlphy->phyreg_def[0].rfhssi_para2 = 2084U;
  rtlphy->phyreg_def[1].rfhssi_para2 = 2092U;
  rtlphy->phyreg_def[0].rfsw_ctrl = 2136U;
  rtlphy->phyreg_def[1].rfsw_ctrl = 2136U;
  rtlphy->phyreg_def[2].rfsw_ctrl = 2140U;
  rtlphy->phyreg_def[3].rfsw_ctrl = 2140U;
  rtlphy->phyreg_def[0].rfagc_control1 = 3152U;
  rtlphy->phyreg_def[1].rfagc_control1 = 3160U;
  rtlphy->phyreg_def[2].rfagc_control1 = 3168U;
  rtlphy->phyreg_def[3].rfagc_control1 = 3176U;
  rtlphy->phyreg_def[0].rfagc_control2 = 3156U;
  rtlphy->phyreg_def[1].rfagc_control2 = 3164U;
  rtlphy->phyreg_def[2].rfagc_control2 = 3172U;
  rtlphy->phyreg_def[3].rfagc_control2 = 3180U;
  rtlphy->phyreg_def[0].rfrxiq_imbal = 3092U;
  rtlphy->phyreg_def[1].rfrxiq_imbal = 3100U;
  rtlphy->phyreg_def[2].rfrxiq_imbal = 3108U;
  rtlphy->phyreg_def[3].rfrxiq_imbal = 3116U;
  rtlphy->phyreg_def[0].rfrx_afe = 3088U;
  rtlphy->phyreg_def[1].rfrx_afe = 3096U;
  rtlphy->phyreg_def[2].rfrx_afe = 3104U;
  rtlphy->phyreg_def[3].rfrx_afe = 3112U;
  rtlphy->phyreg_def[0].rftxiq_imbal = 3200U;
  rtlphy->phyreg_def[1].rftxiq_imbal = 3208U;
  rtlphy->phyreg_def[2].rftxiq_imbal = 3216U;
  rtlphy->phyreg_def[3].rftxiq_imbal = 3224U;
  rtlphy->phyreg_def[0].rftx_afe = 3204U;
  rtlphy->phyreg_def[1].rftx_afe = 3212U;
  rtlphy->phyreg_def[2].rftx_afe = 3220U;
  rtlphy->phyreg_def[3].rftx_afe = 3228U;
  rtlphy->phyreg_def[0].rf_rb = 2208U;
  rtlphy->phyreg_def[1].rf_rb = 2212U;
  rtlphy->phyreg_def[2].rf_rb = 2216U;
  rtlphy->phyreg_def[3].rf_rb = 2220U;
  rtlphy->phyreg_def[0].rf_rbpi = 2232U;
  rtlphy->phyreg_def[1].rf_rbpi = 2236U;
  return;
}
}
static bool _rtl92d_phy_config_bb_with_headerfile(struct ieee80211_hw *hw , u8 configtype )
{
  int i ;
  u32 *phy_regarray_table ;
  u32 *agctab_array_table ;
  u32 *agctab_5garray_table ;
  u16 phy_reg_arraylen ;
  u16 agctab_arraylen ;
  u16 agctab_5garraylen ;
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  unsigned long __ms ;
  unsigned long tmp___15 ;
  unsigned long __ms___0 ;
  unsigned long tmp___16 ;
  unsigned long __ms___1 ;
  unsigned long tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  long tmp___20 ;
  long tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  long tmp___24 ;
  long tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  long tmp___28 ;
  long tmp___29 ;
  int tmp___30 ;
  int tmp___31 ;
  long tmp___32 ;
  long tmp___33 ;
  int tmp___34 ;
  int tmp___35 ;
  long tmp___36 ;
  long tmp___37 ;
  int tmp___38 ;
  int tmp___39 ;
  long tmp___40 ;
  long tmp___41 ;
  int tmp___42 ;
  int tmp___43 ;
  long tmp___44 ;
  long tmp___45 ;
  {
  agctab_array_table = (u32 *)0U;
  agctab_arraylen = 0U;
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  if (rtlhal->interfaceindex == 0U) {
    {
    agctab_arraylen = 386U;
    agctab_array_table = (u32 *)(& rtl8192de_agctab_array);
    tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp = preempt_count();
        tmp___0 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x>  ===> phy:MAC0, Rtl819XAGCTAB_Array\n",
               "_rtl92d_phy_config_bb_with_headerfile", (unsigned long )tmp___0 & 2096896UL,
               ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  } else
  if ((unsigned int )rtlhal->current_bandtype == 0U) {
    {
    agctab_arraylen = 194U;
    agctab_array_table = (u32 *)(& rtl8192de_agctab_2garray);
    tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x>  ===> phy:MAC1, Rtl819XAGCTAB_2GArray\n",
               "_rtl92d_phy_config_bb_with_headerfile", (unsigned long )tmp___4 & 2096896UL,
               ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  } else {
    {
    agctab_5garraylen = 194U;
    agctab_5garray_table = (u32 *)(& rtl8192de_agctab_5garray);
    tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                               0L);
    }
    if (tmp___9 != 0L) {
      {
      tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___10 != 0L) {
        {
        tmp___7 = preempt_count();
        tmp___8 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x>  ===> phy:MAC1, Rtl819XAGCTAB_5GArray\n",
               "_rtl92d_phy_config_bb_with_headerfile", (unsigned long )tmp___8 & 2096896UL,
               ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  }
  {
  phy_reg_arraylen = 380U;
  phy_regarray_table = (u32 *)(& rtl8192de_phy_reg_2tarray);
  tmp___13 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                              0L);
  }
  if (tmp___13 != 0L) {
    {
    tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___14 != 0L) {
      {
      tmp___11 = preempt_count();
      tmp___12 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x>  ===> phy:Rtl819XPHY_REG_Array_PG\n", "_rtl92d_phy_config_bb_with_headerfile",
             (unsigned long )tmp___12 & 2096896UL, ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )configtype == 0U) {
    i = 0;
    goto ldv_50810;
    ldv_50809: ;
    if (*(phy_regarray_table + (unsigned long )i) == 254U) {
      __ms = 50UL;
      goto ldv_50799;
      ldv_50798:
      {
      __const_udelay(4295000UL);
      }
      ldv_50799:
      tmp___15 = __ms;
      __ms = __ms - 1UL;
      if (tmp___15 != 0UL) {
        goto ldv_50798;
      } else {
      }
    } else
    if (*(phy_regarray_table + (unsigned long )i) == 253U) {
      if (1) {
        {
        __const_udelay(21475000UL);
        }
      } else {
        __ms___0 = 5UL;
        goto ldv_50803;
        ldv_50802:
        {
        __const_udelay(4295000UL);
        }
        ldv_50803:
        tmp___16 = __ms___0;
        __ms___0 = __ms___0 - 1UL;
        if (tmp___16 != 0UL) {
          goto ldv_50802;
        } else {
        }
      }
    } else
    if (*(phy_regarray_table + (unsigned long )i) == 252U) {
      if (1) {
        {
        __const_udelay(4295000UL);
        }
      } else {
        __ms___1 = 1UL;
        goto ldv_50807;
        ldv_50806:
        {
        __const_udelay(4295000UL);
        }
        ldv_50807:
        tmp___17 = __ms___1;
        __ms___1 = __ms___1 - 1UL;
        if (tmp___17 != 0UL) {
          goto ldv_50806;
        } else {
        }
      }
    } else
    if (*(phy_regarray_table + (unsigned long )i) == 251U) {
      {
      __const_udelay(214750UL);
      }
    } else
    if (*(phy_regarray_table + (unsigned long )i) == 250U) {
      {
      __const_udelay(21475UL);
      }
    } else
    if (*(phy_regarray_table + (unsigned long )i) == 249U) {
      {
      __const_udelay(4295UL);
      }
    } else {
    }
    {
    rtl_set_bbreg(hw, *(phy_regarray_table + (unsigned long )i), 4294967295U, *(phy_regarray_table + ((unsigned long )i + 1UL)));
    __const_udelay(4295UL);
    tmp___20 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                                0L);
    }
    if (tmp___20 != 0L) {
      {
      tmp___21 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
      }
      if (tmp___21 != 0L) {
        {
        tmp___18 = preempt_count();
        tmp___19 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> The phy_regarray_table[0] is %x Rtl819XPHY_REGArray[1] is %x\n",
               "_rtl92d_phy_config_bb_with_headerfile", (unsigned long )tmp___19 & 2096896UL,
               ((unsigned long )tmp___18 & 0xffffffffffdfffffUL) != 0UL, *(phy_regarray_table + (unsigned long )i),
               *(phy_regarray_table + ((unsigned long )i + 1UL)));
        }
      } else {
      }
    } else {
    }
    i = i + 2;
    ldv_50810: ;
    if (i < (int )phy_reg_arraylen) {
      goto ldv_50809;
    } else {
    }
  } else
  if ((unsigned int )configtype == 1U) {
    if (rtlhal->interfaceindex == 0U) {
      i = 0;
      goto ldv_50813;
      ldv_50812:
      {
      rtl_set_bbreg(hw, *(agctab_array_table + (unsigned long )i), 4294967295U, *(agctab_array_table + ((unsigned long )i + 1UL)));
      __const_udelay(4295UL);
      tmp___24 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                                  0L);
      }
      if (tmp___24 != 0L) {
        {
        tmp___25 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
        }
        if (tmp___25 != 0L) {
          {
          tmp___22 = preempt_count();
          tmp___23 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> The Rtl819XAGCTAB_Array_Table[0] is %ul Rtl819XPHY_REGArray[1] is %ul\n",
                 "_rtl92d_phy_config_bb_with_headerfile", (unsigned long )tmp___23 & 2096896UL,
                 ((unsigned long )tmp___22 & 0xffffffffffdfffffUL) != 0UL, *(agctab_array_table + (unsigned long )i),
                 *(agctab_array_table + ((unsigned long )i + 1UL)));
          }
        } else {
        }
      } else {
      }
      i = i + 2;
      ldv_50813: ;
      if (i < (int )agctab_arraylen) {
        goto ldv_50812;
      } else {
      }
      {
      tmp___28 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                                  0L);
      }
      if (tmp___28 != 0L) {
        {
        tmp___29 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___29 != 0L) {
          {
          tmp___26 = preempt_count();
          tmp___27 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> Normal Chip, MAC0, load Rtl819XAGCTAB_Array\n",
                 "_rtl92d_phy_config_bb_with_headerfile", (unsigned long )tmp___27 & 2096896UL,
                 ((unsigned long )tmp___26 & 0xffffffffffdfffffUL) != 0UL);
          }
        } else {
        }
      } else {
      }
    } else
    if ((unsigned int )rtlhal->current_bandtype == 0U) {
      i = 0;
      goto ldv_50816;
      ldv_50815:
      {
      rtl_set_bbreg(hw, *(agctab_array_table + (unsigned long )i), 4294967295U, *(agctab_array_table + ((unsigned long )i + 1UL)));
      __const_udelay(4295UL);
      tmp___32 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                                  0L);
      }
      if (tmp___32 != 0L) {
        {
        tmp___33 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
        }
        if (tmp___33 != 0L) {
          {
          tmp___30 = preempt_count();
          tmp___31 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> The Rtl819XAGCTAB_Array_Table[0] is %ul Rtl819XPHY_REGArray[1] is %ul\n",
                 "_rtl92d_phy_config_bb_with_headerfile", (unsigned long )tmp___31 & 2096896UL,
                 ((unsigned long )tmp___30 & 0xffffffffffdfffffUL) != 0UL, *(agctab_array_table + (unsigned long )i),
                 *(agctab_array_table + ((unsigned long )i + 1UL)));
          }
        } else {
        }
      } else {
      }
      i = i + 2;
      ldv_50816: ;
      if (i < (int )agctab_arraylen) {
        goto ldv_50815;
      } else {
      }
      {
      tmp___36 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                                  0L);
      }
      if (tmp___36 != 0L) {
        {
        tmp___37 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___37 != 0L) {
          {
          tmp___34 = preempt_count();
          tmp___35 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> Load Rtl819XAGCTAB_2GArray\n", "_rtl92d_phy_config_bb_with_headerfile",
                 (unsigned long )tmp___35 & 2096896UL, ((unsigned long )tmp___34 & 0xffffffffffdfffffUL) != 0UL);
          }
        } else {
        }
      } else {
      }
    } else {
      i = 0;
      goto ldv_50819;
      ldv_50818:
      {
      rtl_set_bbreg(hw, *(agctab_5garray_table + (unsigned long )i), 4294967295U,
                    *(agctab_5garray_table + ((unsigned long )i + 1UL)));
      __const_udelay(4295UL);
      tmp___40 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                                  0L);
      }
      if (tmp___40 != 0L) {
        {
        tmp___41 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
        }
        if (tmp___41 != 0L) {
          {
          tmp___38 = preempt_count();
          tmp___39 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> The Rtl819XAGCTAB_5GArray_Table[0] is %ul Rtl819XPHY_REGArray[1] is %ul\n",
                 "_rtl92d_phy_config_bb_with_headerfile", (unsigned long )tmp___39 & 2096896UL,
                 ((unsigned long )tmp___38 & 0xffffffffffdfffffUL) != 0UL, *(agctab_5garray_table + (unsigned long )i),
                 *(agctab_5garray_table + ((unsigned long )i + 1UL)));
          }
        } else {
        }
      } else {
      }
      i = i + 2;
      ldv_50819: ;
      if (i < (int )agctab_5garraylen) {
        goto ldv_50818;
      } else {
      }
      {
      tmp___44 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                                  0L);
      }
      if (tmp___44 != 0L) {
        {
        tmp___45 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___45 != 0L) {
          {
          tmp___42 = preempt_count();
          tmp___43 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> Load Rtl819XAGCTAB_5GArray\n", "_rtl92d_phy_config_bb_with_headerfile",
                 (unsigned long )tmp___43 & 2096896UL, ((unsigned long )tmp___42 & 0xffffffffffdfffffUL) != 0UL);
          }
        } else {
        }
      } else {
      }
    }
  } else {
  }
  return (1);
}
}
static void _rtl92d_store_pwrindex_diffrate_offset(struct ieee80211_hw *hw , u32 regaddr ,
                                                   u32 bitmask , u32 data )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  int index ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  if (regaddr == 3584U) {
    index = 0;
  } else
  if (regaddr == 3588U) {
    index = 1;
  } else
  if (regaddr == 3592U) {
    index = 6;
  } else
  if (regaddr == 2156U && bitmask == 4294967040U) {
    index = 7;
  } else
  if (regaddr == 3600U) {
    index = 2;
  } else
  if (regaddr == 3604U) {
    index = 3;
  } else
  if (regaddr == 3608U) {
    index = 4;
  } else
  if (regaddr == 3612U) {
    index = 5;
  } else
  if (regaddr == 2096U) {
    index = 8;
  } else
  if (regaddr == 2100U) {
    index = 9;
  } else
  if (regaddr == 2104U) {
    index = 14;
  } else
  if (regaddr == 2156U && bitmask == 255U) {
    index = 15;
  } else
  if (regaddr == 2108U) {
    index = 10;
  } else
  if (regaddr == 2120U) {
    index = 11;
  } else
  if (regaddr == 2124U) {
    index = 12;
  } else
  if (regaddr == 2152U) {
    index = 13;
  } else {
    return;
  }
  {
  rtlphy->mcs_offset[(int )rtlphy->pwrgroup_cnt][index] = data;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> MCSTxPowerLevelOriginalOffset[%d][%d] = 0x%ulx\n",
             "_rtl92d_store_pwrindex_diffrate_offset", (unsigned long )tmp___0 & 2096896UL,
             ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL, (int )rtlphy->pwrgroup_cnt,
             index, rtlphy->mcs_offset[(int )rtlphy->pwrgroup_cnt][index]);
      }
    } else {
    }
  } else {
  }
  if (index == 13) {
    rtlphy->pwrgroup_cnt = (u8 )((int )rtlphy->pwrgroup_cnt + 1);
  } else {
  }
  return;
}
}
static bool _rtl92d_phy_config_bb_with_pgheaderfile(struct ieee80211_hw *hw , u8 configtype )
{
  struct rtl_priv *rtlpriv ;
  int i ;
  u32 *phy_regarray_table_pg ;
  u16 phy_regarray_pg_len ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  unsigned long __ms___1 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  phy_regarray_pg_len = 624U;
  phy_regarray_table_pg = (u32 *)(& rtl8192de_phy_reg_array_pg);
  if ((unsigned int )configtype == 0U) {
    i = 0;
    goto ldv_50852;
    ldv_50851: ;
    if (*(phy_regarray_table_pg + (unsigned long )i) == 254U) {
      __ms = 50UL;
      goto ldv_50841;
      ldv_50840:
      {
      __const_udelay(4295000UL);
      }
      ldv_50841:
      tmp = __ms;
      __ms = __ms - 1UL;
      if (tmp != 0UL) {
        goto ldv_50840;
      } else {
      }
    } else
    if (*(phy_regarray_table_pg + (unsigned long )i) == 253U) {
      if (1) {
        {
        __const_udelay(21475000UL);
        }
      } else {
        __ms___0 = 5UL;
        goto ldv_50845;
        ldv_50844:
        {
        __const_udelay(4295000UL);
        }
        ldv_50845:
        tmp___0 = __ms___0;
        __ms___0 = __ms___0 - 1UL;
        if (tmp___0 != 0UL) {
          goto ldv_50844;
        } else {
        }
      }
    } else
    if (*(phy_regarray_table_pg + (unsigned long )i) == 252U) {
      if (1) {
        {
        __const_udelay(4295000UL);
        }
      } else {
        __ms___1 = 1UL;
        goto ldv_50849;
        ldv_50848:
        {
        __const_udelay(4295000UL);
        }
        ldv_50849:
        tmp___1 = __ms___1;
        __ms___1 = __ms___1 - 1UL;
        if (tmp___1 != 0UL) {
          goto ldv_50848;
        } else {
        }
      }
    } else
    if (*(phy_regarray_table_pg + (unsigned long )i) == 251U) {
      {
      __const_udelay(214750UL);
      }
    } else
    if (*(phy_regarray_table_pg + (unsigned long )i) == 250U) {
      {
      __const_udelay(21475UL);
      }
    } else
    if (*(phy_regarray_table_pg + (unsigned long )i) == 249U) {
      {
      __const_udelay(4295UL);
      }
    } else {
    }
    {
    _rtl92d_store_pwrindex_diffrate_offset(hw, *(phy_regarray_table_pg + (unsigned long )i),
                                           *(phy_regarray_table_pg + ((unsigned long )i + 1UL)),
                                           *(phy_regarray_table_pg + ((unsigned long )i + 2UL)));
    i = i + 3;
    }
    ldv_50852: ;
    if (i < (int )phy_regarray_pg_len) {
      goto ldv_50851;
    } else {
    }
  } else {
    {
    tmp___4 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 16ULL) != 0ULL,
                               0L);
    }
    if (tmp___4 != 0L) {
      {
      tmp___5 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
      }
      if (tmp___5 != 0L) {
        {
        tmp___2 = preempt_count();
        tmp___3 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> configtype != BaseBand_Config_PHY_REG\n",
               "_rtl92d_phy_config_bb_with_pgheaderfile", (unsigned long )tmp___3 & 2096896UL,
               ((unsigned long )tmp___2 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
  }
  return (1);
}
}
static bool _rtl92d_phy_bb_config(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_efuse *rtlefuse ;
  bool rtstatus ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  u32 tmp___15 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rtlefuse = & ((struct rtl_priv *)hw->priv)->efuse;
  rtstatus = 1;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> ==>\n", "_rtl92d_phy_bb_config", (unsigned long )tmp___0 & 2096896UL,
             ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  {
  rtstatus = _rtl92d_phy_config_bb_with_headerfile(hw, 0);
  }
  if (! rtstatus) {
    {
    tmp___5 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Write BB Reg Fail!!\n", "_rtl92d_phy_bb_config",
               (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    return (0);
  } else {
  }
  if ((unsigned int )rtlefuse->autoload_failflag == 0U) {
    {
    rtlphy->pwrgroup_cnt = 0U;
    rtstatus = _rtl92d_phy_config_bb_with_pgheaderfile(hw, 0);
    }
  } else {
  }
  if (! rtstatus) {
    {
    tmp___9 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                               0L);
    }
    if (tmp___9 != 0L) {
      {
      tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___10 != 0L) {
        {
        tmp___7 = preempt_count();
        tmp___8 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> BB_PG Reg Fail!!\n", "_rtl92d_phy_bb_config",
               (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    return (0);
  } else {
  }
  {
  rtstatus = _rtl92d_phy_config_bb_with_headerfile(hw, 1);
  }
  if (! rtstatus) {
    {
    tmp___13 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                                0L);
    }
    if (tmp___13 != 0L) {
      {
      tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___14 != 0L) {
        {
        tmp___11 = preempt_count();
        tmp___12 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> AGC Table Fail\n", "_rtl92d_phy_bb_config",
               (unsigned long )tmp___12 & 2096896UL, ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    return (0);
  } else {
  }
  {
  tmp___15 = rtl_get_bbreg(hw, 2084U, 512U);
  rtlphy->cck_high_power = tmp___15 != 0U;
  }
  return (1);
}
}
bool rtl92d_phy_bb_config(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  u16 regval ;
  u32 regvaldw ;
  u8 value ;
  bool tmp ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  _rtl92d_phy_init_bb_rf_register_definition(hw);
  regval = rtl_read_word(rtlpriv, 2U);
  rtl_write_word(rtlpriv, 2U, (int )((unsigned int )regval | 8195U));
  rtl_write_byte(rtlpriv, 40U, 131);
  rtl_write_byte(rtlpriv, 41U, 219);
  value = rtl_read_byte(rtlpriv, 31U);
  rtl_write_byte(rtlpriv, 31U, (int )((unsigned int )value | 7U));
  rtl_write_byte(rtlpriv, 2U, 227);
  rtl_write_byte(rtlpriv, 37U, 128);
  }
  if (((unsigned long )rtlpriv->rtlhal.version & 119UL) != 34UL) {
    {
    regvaldw = rtl_read_dword(rtlpriv, 76U);
    rtl_write_dword(rtlpriv, 76U, regvaldw | 8388608U);
    }
  } else {
  }
  {
  tmp = _rtl92d_phy_bb_config(hw);
  }
  return (tmp);
}
}
bool rtl92d_phy_rf_config(struct ieee80211_hw *hw )
{
  bool tmp ;
  {
  {
  tmp = rtl92d_phy_rf6052_config(hw);
  }
  return (tmp);
}
}
bool rtl92d_phy_config_rf_with_headerfile(struct ieee80211_hw *hw , enum rf_content content ,
                                          enum radio_path rfpath )
{
  int i ;
  u32 *radioa_array_table ;
  u32 *radiob_array_table ;
  u16 radioa_arraylen ;
  u16 radiob_arraylen ;
  struct rtl_priv *rtlpriv ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  unsigned long __ms ;
  unsigned long tmp___15 ;
  unsigned long __ms___0 ;
  unsigned long tmp___16 ;
  unsigned long __ms___1 ;
  unsigned long tmp___17 ;
  unsigned long __ms___2 ;
  unsigned long tmp___18 ;
  unsigned long __ms___3 ;
  unsigned long tmp___19 ;
  unsigned long __ms___4 ;
  unsigned long tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  long tmp___23 ;
  long tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  long tmp___27 ;
  long tmp___28 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  radioa_arraylen = 378U;
  radioa_array_table = (u32 *)(& rtl8192de_radioa_2tarray);
  radiob_arraylen = 384U;
  radiob_array_table = (u32 *)(& rtl8192de_radiob_2tarray);
  if ((unsigned int )rtlpriv->efuse.internal_pa_5g[0] != 0U) {
    radioa_arraylen = 378U;
    radioa_array_table = (u32 *)(& rtl8192de_radioa_2t_int_paarray);
  } else {
  }
  if ((unsigned int )rtlpriv->efuse.internal_pa_5g[1] != 0U) {
    radiob_arraylen = 384U;
    radiob_array_table = (u32 *)(& rtl8192de_radiob_2t_int_paarray);
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> PHY_ConfigRFWithHeaderFile() Radio_A:Rtl819XRadioA_1TArray\n",
             "rtl92d_phy_config_rf_with_headerfile", (unsigned long )tmp___0 & 2096896UL,
             ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  {
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> PHY_ConfigRFWithHeaderFile() Radio_B:Rtl819XRadioB_1TArray\n",
             "rtl92d_phy_config_rf_with_headerfile", (unsigned long )tmp___4 & 2096896UL,
             ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  {
  tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___9 != 0L) {
    {
    tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___7 = preempt_count();
      tmp___8 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Radio No %x\n", "rtl92d_phy_config_rf_with_headerfile",
             (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL,
             (unsigned int )rfpath);
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )content == 1U && (unsigned int )rfpath == 0U) {
    {
    tmp___13 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                                0L);
    }
    if (tmp___13 != 0L) {
      {
      tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___14 != 0L) {
        {
        tmp___11 = preempt_count();
        tmp___12 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x>  ===> althougth Path A, we load radiob.txt\n",
               "rtl92d_phy_config_rf_with_headerfile", (unsigned long )tmp___12 & 2096896UL,
               ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    radioa_arraylen = radiob_arraylen;
    radioa_array_table = radiob_array_table;
  } else {
  }
  {
  if ((unsigned int )rfpath == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )rfpath == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )rfpath == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )rfpath == 3U) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_0:
  i = 0;
  goto ldv_50899;
  ldv_50898: ;
  if (*(radioa_array_table + (unsigned long )i) == 254U) {
    __ms = 50UL;
    goto ldv_50888;
    ldv_50887:
    {
    __const_udelay(4295000UL);
    }
    ldv_50888:
    tmp___15 = __ms;
    __ms = __ms - 1UL;
    if (tmp___15 != 0UL) {
      goto ldv_50887;
    } else {
    }
  } else
  if (*(radioa_array_table + (unsigned long )i) == 253U) {
    if (1) {
      {
      __const_udelay(21475000UL);
      }
    } else {
      __ms___0 = 5UL;
      goto ldv_50892;
      ldv_50891:
      {
      __const_udelay(4295000UL);
      }
      ldv_50892:
      tmp___16 = __ms___0;
      __ms___0 = __ms___0 - 1UL;
      if (tmp___16 != 0UL) {
        goto ldv_50891;
      } else {
      }
    }
  } else
  if (*(radioa_array_table + (unsigned long )i) == 252U) {
    if (1) {
      {
      __const_udelay(4295000UL);
      }
    } else {
      __ms___1 = 1UL;
      goto ldv_50896;
      ldv_50895:
      {
      __const_udelay(4295000UL);
      }
      ldv_50896:
      tmp___17 = __ms___1;
      __ms___1 = __ms___1 - 1UL;
      if (tmp___17 != 0UL) {
        goto ldv_50895;
      } else {
      }
    }
  } else
  if (*(radioa_array_table + (unsigned long )i) == 251U) {
    {
    __const_udelay(214750UL);
    }
  } else
  if (*(radioa_array_table + (unsigned long )i) == 250U) {
    {
    __const_udelay(21475UL);
    }
  } else
  if (*(radioa_array_table + (unsigned long )i) == 249U) {
    {
    __const_udelay(4295UL);
    }
  } else {
    {
    rtl_set_rfreg(hw, rfpath, *(radioa_array_table + (unsigned long )i), 1048575U,
                  *(radioa_array_table + ((unsigned long )i + 1UL)));
    __const_udelay(4295UL);
    }
  }
  i = i + 2;
  ldv_50899: ;
  if (i < (int )radioa_arraylen) {
    goto ldv_50898;
  } else {
  }
  goto ldv_50901;
  case_1:
  i = 0;
  goto ldv_50916;
  ldv_50915: ;
  if (*(radiob_array_table + (unsigned long )i) == 254U) {
    __ms___2 = 50UL;
    goto ldv_50905;
    ldv_50904:
    {
    __const_udelay(4295000UL);
    }
    ldv_50905:
    tmp___18 = __ms___2;
    __ms___2 = __ms___2 - 1UL;
    if (tmp___18 != 0UL) {
      goto ldv_50904;
    } else {
    }
  } else
  if (*(radiob_array_table + (unsigned long )i) == 253U) {
    if (1) {
      {
      __const_udelay(21475000UL);
      }
    } else {
      __ms___3 = 5UL;
      goto ldv_50909;
      ldv_50908:
      {
      __const_udelay(4295000UL);
      }
      ldv_50909:
      tmp___19 = __ms___3;
      __ms___3 = __ms___3 - 1UL;
      if (tmp___19 != 0UL) {
        goto ldv_50908;
      } else {
      }
    }
  } else
  if (*(radiob_array_table + (unsigned long )i) == 252U) {
    if (1) {
      {
      __const_udelay(4295000UL);
      }
    } else {
      __ms___4 = 1UL;
      goto ldv_50913;
      ldv_50912:
      {
      __const_udelay(4295000UL);
      }
      ldv_50913:
      tmp___20 = __ms___4;
      __ms___4 = __ms___4 - 1UL;
      if (tmp___20 != 0UL) {
        goto ldv_50912;
      } else {
      }
    }
  } else
  if (*(radiob_array_table + (unsigned long )i) == 251U) {
    {
    __const_udelay(214750UL);
    }
  } else
  if (*(radiob_array_table + (unsigned long )i) == 250U) {
    {
    __const_udelay(21475UL);
    }
  } else
  if (*(radiob_array_table + (unsigned long )i) == 249U) {
    {
    __const_udelay(4295UL);
    }
  } else {
    {
    rtl_set_rfreg(hw, rfpath, *(radiob_array_table + (unsigned long )i), 1048575U,
                  *(radiob_array_table + ((unsigned long )i + 1UL)));
    __const_udelay(4295UL);
    }
  }
  i = i + 2;
  ldv_50916: ;
  if (i < (int )radiob_arraylen) {
    goto ldv_50915;
  } else {
  }
  goto ldv_50901;
  case_2:
  {
  tmp___23 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                              0L);
  }
  if (tmp___23 != 0L) {
    {
    tmp___24 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___24 != 0L) {
      {
      tmp___21 = preempt_count();
      tmp___22 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> switch case not processed\n", "rtl92d_phy_config_rf_with_headerfile",
             (unsigned long )tmp___22 & 2096896UL, ((unsigned long )tmp___21 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_50901;
  case_3:
  {
  tmp___27 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                              0L);
  }
  if (tmp___27 != 0L) {
    {
    tmp___28 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___28 != 0L) {
      {
      tmp___25 = preempt_count();
      tmp___26 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> switch case not processed\n", "rtl92d_phy_config_rf_with_headerfile",
             (unsigned long )tmp___26 & 2096896UL, ((unsigned long )tmp___25 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_50901;
  switch_break: ;
  }
  ldv_50901: ;
  return (1);
}
}
void rtl92d_phy_get_hw_reg_originalvalue(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  tmp = rtl_get_bbreg(hw, 3152U, 255U);
  rtlphy->default_initialgain[0] = (unsigned char )tmp;
  tmp___0 = rtl_get_bbreg(hw, 3160U, 255U);
  rtlphy->default_initialgain[1] = (unsigned char )tmp___0;
  tmp___1 = rtl_get_bbreg(hw, 3168U, 255U);
  rtlphy->default_initialgain[2] = (unsigned char )tmp___1;
  tmp___2 = rtl_get_bbreg(hw, 3176U, 255U);
  rtlphy->default_initialgain[3] = (unsigned char )tmp___2;
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x\n",
             "rtl92d_phy_get_hw_reg_originalvalue", (unsigned long )tmp___4 & 2096896UL,
             ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL, (int )rtlphy->default_initialgain[0],
             (int )rtlphy->default_initialgain[1], (int )rtlphy->default_initialgain[2],
             (int )rtlphy->default_initialgain[3]);
      }
    } else {
    }
  } else {
  }
  {
  tmp___7 = rtl_get_bbreg(hw, 3128U, 255U);
  rtlphy->framesync = (unsigned char )tmp___7;
  rtlphy->framesync_c34 = rtl_get_bbreg(hw, 3124U, 4294967295U);
  tmp___10 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                              0L);
  }
  if (tmp___10 != 0L) {
    {
    tmp___11 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___11 != 0L) {
      {
      tmp___8 = preempt_count();
      tmp___9 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Default framesync (0x%x) = 0x%x\n", "rtl92d_phy_get_hw_reg_originalvalue",
             (unsigned long )tmp___9 & 2096896UL, ((unsigned long )tmp___8 & 0xffffffffffdfffffUL) != 0UL,
             3128, (int )rtlphy->framesync);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void _rtl92d_get_txpower_index(struct ieee80211_hw *hw , u8 channel , u8 *cckpowerlevel ,
                                      u8 *ofdmpowerlevel )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_hal *rtlhal ;
  struct rtl_efuse *rtlefuse ;
  u8 index ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rtlhal = & rtlpriv->rtlhal;
  rtlefuse = & ((struct rtl_priv *)hw->priv)->efuse;
  index = (unsigned int )channel + 255U;
  if ((unsigned int )rtlhal->current_bandtype == 0U) {
    *cckpowerlevel = rtlefuse->txpwrlevel_cck[0][(int )index];
    *(cckpowerlevel + 1UL) = rtlefuse->txpwrlevel_cck[1][(int )index];
  } else {
    *cckpowerlevel = 0U;
    *(cckpowerlevel + 1UL) = 0U;
  }
  if ((unsigned int )rtlphy->rf_type <= 1U) {
    *ofdmpowerlevel = rtlefuse->txpwrlevel_ht40_1s[0][(int )index];
    *(ofdmpowerlevel + 1UL) = rtlefuse->txpwrlevel_ht40_1s[1][(int )index];
  } else
  if ((unsigned int )rtlphy->rf_type == 2U) {
    *ofdmpowerlevel = rtlefuse->txpwrlevel_ht40_2s[0][(int )index];
    *(ofdmpowerlevel + 1UL) = rtlefuse->txpwrlevel_ht40_2s[1][(int )index];
  } else {
  }
  return;
}
}
static void _rtl92d_ccxpower_index_check(struct ieee80211_hw *hw , u8 channel , u8 *cckpowerlevel ,
                                         u8 *ofdmpowerlevel )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rtlphy->cur_cck_txpwridx = *cckpowerlevel;
  rtlphy->cur_ofdm24g_txpwridx = *ofdmpowerlevel;
  return;
}
}
static u8 _rtl92c_phy_get_rightchnlplace(u8 chnl )
{
  u8 channel_5g[59U] ;
  u8 place ;
  {
  channel_5g[0] = 1U;
  channel_5g[1] = 2U;
  channel_5g[2] = 3U;
  channel_5g[3] = 4U;
  channel_5g[4] = 5U;
  channel_5g[5] = 6U;
  channel_5g[6] = 7U;
  channel_5g[7] = 8U;
  channel_5g[8] = 9U;
  channel_5g[9] = 10U;
  channel_5g[10] = 11U;
  channel_5g[11] = 12U;
  channel_5g[12] = 13U;
  channel_5g[13] = 14U;
  channel_5g[14] = 36U;
  channel_5g[15] = 38U;
  channel_5g[16] = 40U;
  channel_5g[17] = 42U;
  channel_5g[18] = 44U;
  channel_5g[19] = 46U;
  channel_5g[20] = 48U;
  channel_5g[21] = 50U;
  channel_5g[22] = 52U;
  channel_5g[23] = 54U;
  channel_5g[24] = 56U;
  channel_5g[25] = 58U;
  channel_5g[26] = 60U;
  channel_5g[27] = 62U;
  channel_5g[28] = 64U;
  channel_5g[29] = 100U;
  channel_5g[30] = 102U;
  channel_5g[31] = 104U;
  channel_5g[32] = 106U;
  channel_5g[33] = 108U;
  channel_5g[34] = 110U;
  channel_5g[35] = 112U;
  channel_5g[36] = 114U;
  channel_5g[37] = 116U;
  channel_5g[38] = 118U;
  channel_5g[39] = 120U;
  channel_5g[40] = 122U;
  channel_5g[41] = 124U;
  channel_5g[42] = 126U;
  channel_5g[43] = 128U;
  channel_5g[44] = 130U;
  channel_5g[45] = 132U;
  channel_5g[46] = 134U;
  channel_5g[47] = 136U;
  channel_5g[48] = 138U;
  channel_5g[49] = 140U;
  channel_5g[50] = 149U;
  channel_5g[51] = 151U;
  channel_5g[52] = 153U;
  channel_5g[53] = 155U;
  channel_5g[54] = 157U;
  channel_5g[55] = 159U;
  channel_5g[56] = 161U;
  channel_5g[57] = 163U;
  channel_5g[58] = 165U;
  place = chnl;
  if ((unsigned int )chnl > 14U) {
    place = 14U;
    goto ldv_50952;
    ldv_50951: ;
    if ((int )channel_5g[(int )place] == (int )chnl) {
      place = (u8 )((int )place + 1);
      goto ldv_50950;
    } else {
    }
    place = (u8 )((int )place + 1);
    ldv_50952: ;
    if ((unsigned int )place <= 58U) {
      goto ldv_50951;
    } else {
    }
    ldv_50950: ;
  } else {
  }
  return (place);
}
}
void rtl92d_phy_set_txpower_level(struct ieee80211_hw *hw , u8 channel )
{
  struct rtl_efuse *rtlefuse ;
  struct rtl_priv *rtlpriv ;
  u8 cckpowerlevel[2U] ;
  u8 ofdmpowerlevel[2U] ;
  {
  rtlefuse = & ((struct rtl_priv *)hw->priv)->efuse;
  rtlpriv = (struct rtl_priv *)hw->priv;
  if (! rtlefuse->txpwr_fromeprom) {
    return;
  } else {
  }
  {
  channel = _rtl92c_phy_get_rightchnlplace((int )channel);
  _rtl92d_get_txpower_index(hw, (int )channel, (u8 *)(& cckpowerlevel), (u8 *)(& ofdmpowerlevel));
  }
  if ((unsigned int )rtlpriv->rtlhal.current_bandtype == 0U) {
    {
    _rtl92d_ccxpower_index_check(hw, (int )channel, (u8 *)(& cckpowerlevel), (u8 *)(& ofdmpowerlevel));
    }
  } else {
  }
  if ((unsigned int )rtlpriv->rtlhal.current_bandtype == 0U) {
    {
    rtl92d_phy_rf6052_set_cck_txpower(hw, (u8 *)(& cckpowerlevel));
    }
  } else {
  }
  {
  rtl92d_phy_rf6052_set_ofdm_txpower(hw, (u8 *)(& ofdmpowerlevel), (int )channel);
  }
  return;
}
}
void rtl92d_phy_set_bw_mode(struct ieee80211_hw *hw , enum nl80211_channel_type ch_type )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_hal *rtlhal ;
  struct rtl_mac *mac ;
  unsigned long flag ;
  u8 reg_prsr_rsc ;
  u8 reg_bw_opmode ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  long tmp___18 ;
  long tmp___19 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  flag = 0UL;
  if ((unsigned int )rtlphy->set_bwmode_inprogress != 0U) {
    return;
  } else {
  }
  {
  tmp___3 = is_hal_stop(rtlhal);
  }
  if ((int )tmp___3) {
    {
    tmp___1 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 1, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp = preempt_count();
        tmp___0 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> FALSE driver sleep or unload\n", "rtl92d_phy_set_bw_mode",
               (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  {
  rtlphy->set_bwmode_inprogress = 1U;
  tmp___6 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 64ULL) != 0ULL,
                             0L);
  }
  if (tmp___6 != 0L) {
    {
    tmp___7 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___7 != 0L) {
      {
      tmp___4 = preempt_count();
      tmp___5 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Switch to %s bandwidth\n", "rtl92d_phy_set_bw_mode",
             (unsigned long )tmp___5 & 2096896UL, ((unsigned long )tmp___4 & 0xffffffffffdfffffUL) != 0UL,
             (unsigned int )rtlphy->current_chan_bw == 0U ? (char *)"20MHz" : (char *)"40MHz");
      }
    } else {
    }
  } else {
  }
  {
  reg_bw_opmode = rtl_read_byte(rtlpriv, 1539U);
  reg_prsr_rsc = rtl_read_byte(rtlpriv, 1090U);
  }
  {
  if ((int )rtlphy->current_chan_bw == 0) {
    goto case_0;
  } else {
  }
  if ((int )rtlphy->current_chan_bw == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0:
  {
  reg_bw_opmode = (u8 )((unsigned int )reg_bw_opmode | 4U);
  rtl_write_byte(rtlpriv, 1539U, (int )reg_bw_opmode);
  }
  goto ldv_50974;
  case_1:
  {
  reg_bw_opmode = (unsigned int )reg_bw_opmode & 251U;
  rtl_write_byte(rtlpriv, 1539U, (int )reg_bw_opmode);
  reg_prsr_rsc = (u8 )(((int )((signed char )reg_prsr_rsc) & -112) | (int )((signed char )((int )mac->cur_40_prime_sc << 5)));
  rtl_write_byte(rtlpriv, 1090U, (int )reg_prsr_rsc);
  }
  goto ldv_50974;
  switch_default:
  {
  tmp___10 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                              0L);
  }
  if (tmp___10 != 0L) {
    {
    tmp___11 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___11 != 0L) {
      {
      tmp___8 = preempt_count();
      tmp___9 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> unknown bandwidth: %#X\n", "rtl92d_phy_set_bw_mode",
             (unsigned long )tmp___9 & 2096896UL, ((unsigned long )tmp___8 & 0xffffffffffdfffffUL) != 0UL,
             (int )rtlphy->current_chan_bw);
      }
    } else {
    }
  } else {
  }
  goto ldv_50974;
  switch_break: ;
  }
  ldv_50974: ;
  {
  if ((int )rtlphy->current_chan_bw == 0) {
    goto case_0___0;
  } else {
  }
  if ((int )rtlphy->current_chan_bw == 1) {
    goto case_1___0;
  } else {
  }
  goto switch_default___0;
  case_0___0:
  {
  rtl_set_bbreg(hw, 2048U, 1U, 0U);
  rtl_set_bbreg(hw, 2304U, 1U, 0U);
  rtl_set_bbreg(hw, 2180U, 3072U, 3U);
  }
  goto ldv_50978;
  case_1___0:
  {
  rtl_set_bbreg(hw, 2048U, 1U, 1U);
  rtl_set_bbreg(hw, 2304U, 1U, 1U);
  }
  if ((unsigned int )rtlhal->current_bandtype == 0U) {
    {
    rtl92d_acquire_cckandrw_pagea_ctl(hw, & flag);
    rtl_set_bbreg(hw, 2560U, 16U, (u32 )((int )mac->cur_40_prime_sc >> 1));
    rtl92d_release_cckandrw_pagea_ctl(hw, & flag);
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 3328U, 3072U, (u32 )mac->cur_40_prime_sc);
  rtl_set_bbreg(hw, 2180U, 3072U, 0U);
  rtl_set_bbreg(hw, 2072U, 201326592U, (unsigned int )mac->cur_40_prime_sc == 1U ? 2U : 1U);
  }
  goto ldv_50978;
  switch_default___0:
  {
  tmp___14 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                              0L);
  }
  if (tmp___14 != 0L) {
    {
    tmp___15 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___15 != 0L) {
      {
      tmp___12 = preempt_count();
      tmp___13 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> unknown bandwidth: %#X\n", "rtl92d_phy_set_bw_mode",
             (unsigned long )tmp___13 & 2096896UL, ((unsigned long )tmp___12 & 0xffffffffffdfffffUL) != 0UL,
             (int )rtlphy->current_chan_bw);
      }
    } else {
    }
  } else {
  }
  goto ldv_50978;
  switch_break___0: ;
  }
  ldv_50978:
  {
  rtl92d_phy_rf6052_set_bandwidth(hw, (int )rtlphy->current_chan_bw);
  rtlphy->set_bwmode_inprogress = 0U;
  tmp___18 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 64ULL) != 0ULL,
                              0L);
  }
  if (tmp___18 != 0L) {
    {
    tmp___19 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___19 != 0L) {
      {
      tmp___16 = preempt_count();
      tmp___17 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <==\n", "rtl92d_phy_set_bw_mode", (unsigned long )tmp___17 & 2096896UL,
             ((unsigned long )tmp___16 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void _rtl92d_phy_stop_trx_before_changeband(struct ieee80211_hw *hw )
{
  {
  {
  rtl_set_bbreg(hw, 2048U, 16777216U, 0U);
  rtl_set_bbreg(hw, 2048U, 33554432U, 0U);
  rtl_set_bbreg(hw, 3076U, 255U, 0U);
  rtl_set_bbreg(hw, 3332U, 15U, 0U);
  }
  return;
}
}
static void rtl92d_phy_switch_wirelessband(struct ieee80211_hw *hw , u8 band )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 value8 ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  unsigned long __ms ;
  unsigned long tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> ==>\n", "rtl92d_phy_switch_wirelessband",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  rtlhal->bandset = (enum band_type )band;
  rtlhal->current_bandtype = (enum band_type )band;
  if (((unsigned long )rtlhal->version & 119UL) == 34UL) {
    rtlhal->bandset = 2;
  } else {
  }
  {
  _rtl92d_phy_stop_trx_before_changeband(hw);
  }
  if ((unsigned int )rtlhal->current_bandtype == 0U) {
    {
    tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> ====>2.4G\n", "rtl92d_phy_switch_wirelessband",
               (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    if (rtlhal->interfaceindex == 1U) {
      {
      _rtl92d_phy_config_bb_with_headerfile(hw, 1);
      }
    } else {
    }
  } else {
    {
    tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                               0L);
    }
    if (tmp___9 != 0L) {
      {
      tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
      }
      if (tmp___10 != 0L) {
        {
        tmp___7 = preempt_count();
        tmp___8 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> ====>5G\n", "rtl92d_phy_switch_wirelessband",
               (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    if (rtlhal->interfaceindex == 1U) {
      {
      _rtl92d_phy_config_bb_with_headerfile(hw, 1);
      }
    } else {
    }
  }
  {
  rtl92d_update_bbrf_configuration(hw);
  }
  if ((unsigned int )rtlhal->current_bandtype == 0U) {
    {
    rtl_set_bbreg(hw, 2048U, 16777216U, 1U);
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 2048U, 33554432U, 1U);
  rtlhal->reloadtxpowerindex = 1;
  }
  if ((unsigned int )rtlhal->current_bandtype == 0U) {
    {
    value8 = rtl_read_byte(rtlpriv, rtlhal->interfaceindex == 0U ? 129U : 83U);
    value8 = (u8 )((unsigned int )value8 | 2U);
    rtl_write_byte(rtlpriv, rtlhal->interfaceindex == 0U ? 129U : 83U, (int )value8);
    }
  } else {
    {
    value8 = rtl_read_byte(rtlpriv, rtlhal->interfaceindex == 0U ? 129U : 83U);
    value8 = (unsigned int )value8 & 253U;
    rtl_write_byte(rtlpriv, rtlhal->interfaceindex == 0U ? 129U : 83U, (int )value8);
    }
  }
  if (1) {
    {
    __const_udelay(4295000UL);
    }
  } else {
    __ms = 1UL;
    goto ldv_50994;
    ldv_50993:
    {
    __const_udelay(4295000UL);
    }
    ldv_50994:
    tmp___11 = __ms;
    __ms = __ms - 1UL;
    if (tmp___11 != 0UL) {
      goto ldv_50993;
    } else {
    }
  }
  {
  tmp___14 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                              0L);
  }
  if (tmp___14 != 0L) {
    {
    tmp___15 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___15 != 0L) {
      {
      tmp___12 = preempt_count();
      tmp___13 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <==Switch Band OK\n", "rtl92d_phy_switch_wirelessband",
             (unsigned long )tmp___13 & 2096896UL, ((unsigned long )tmp___12 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void _rtl92d_phy_reload_imr_setting(struct ieee80211_hw *hw , u8 channel ,
                                           u8 rfpath )
{
  struct rtl_priv *rtlpriv ;
  u32 imr_num ;
  u32 rfmask ;
  u8 group ;
  u8 i ;
  unsigned long flag ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  long tmp___17 ;
  long tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  long tmp___21 ;
  long tmp___22 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  imr_num = 12U;
  rfmask = 1048575U;
  flag = 0UL;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> ====>path %d\n", "_rtl92d_phy_reload_imr_setting",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             (int )rfpath);
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )rtlpriv->rtlhal.current_bandtype == 1U) {
    {
    tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> ====>5G\n", "_rtl92d_phy_reload_imr_setting",
               (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    {
    rtl_set_bbreg(hw, 2048U, 50331648U, 0U);
    rtl_set_bbreg(hw, 2188U, 15728640U, 15U);
    }
    if ((unsigned int )channel > 99U) {
      {
      rtl_set_bbreg(hw, 3372U, 24576U, 2U);
      }
    } else {
      {
      rtl_set_bbreg(hw, 3372U, 24576U, 1U);
      }
    }
    group = (unsigned int )channel <= 64U ? 1U : 2U;
    imr_num = 13U;
    i = 0U;
    goto ldv_51009;
    ldv_51008:
    {
    rtl_set_rfreg(hw, (enum radio_path )rfpath, rf_reg_for_5g_swchnl_normal[(int )i],
                  rfmask, rf_imr_param_normal[0][(int )group][(int )i]);
    i = (u8 )((int )i + 1);
    }
    ldv_51009: ;
    if ((u32 )i < imr_num) {
      goto ldv_51008;
    } else {
    }
    {
    rtl_set_bbreg(hw, 2188U, 15728640U, 0U);
    rtl_set_bbreg(hw, 2048U, 33554432U, 1U);
    }
  } else {
    {
    tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 64ULL) != 0ULL,
                               0L);
    }
    if (tmp___9 != 0L) {
      {
      tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___10 != 0L) {
        {
        tmp___7 = preempt_count();
        tmp___8 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Load RF IMR parameters for G band. IMR already setting %d\n",
               "_rtl92d_phy_reload_imr_setting", (unsigned long )tmp___8 & 2096896UL,
               ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL, (int )rtlpriv->rtlhal.load_imrandiqk_setting_for2g);
        }
      } else {
      }
    } else {
    }
    {
    tmp___13 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                                0L);
    }
    if (tmp___13 != 0L) {
      {
      tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___14 != 0L) {
        {
        tmp___11 = preempt_count();
        tmp___12 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> ====>2.4G\n", "_rtl92d_phy_reload_imr_setting",
               (unsigned long )tmp___12 & 2096896UL, ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    if (! rtlpriv->rtlhal.load_imrandiqk_setting_for2g) {
      {
      tmp___17 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 64ULL) != 0ULL,
                                  0L);
      }
      if (tmp___17 != 0L) {
        {
        tmp___18 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___18 != 0L) {
          {
          tmp___15 = preempt_count();
          tmp___16 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> Load RF IMR parameters for G band. %d\n",
                 "_rtl92d_phy_reload_imr_setting", (unsigned long )tmp___16 & 2096896UL,
                 ((unsigned long )tmp___15 & 0xffffffffffdfffffUL) != 0UL, (int )rfpath);
          }
        } else {
        }
      } else {
      }
      {
      rtl92d_acquire_cckandrw_pagea_ctl(hw, & flag);
      rtl_set_bbreg(hw, 2048U, 50331648U, 0U);
      rtl_set_bbreg(hw, 2188U, 15728640U, 15U);
      imr_num = 13U;
      i = 0U;
      }
      goto ldv_51012;
      ldv_51011:
      {
      rtl_set_rfreg(hw, (enum radio_path )rfpath, rf_reg_for_5g_swchnl_normal[(int )i],
                    1048575U, rf_imr_param_normal[0][0][(int )i]);
      i = (u8 )((int )i + 1);
      }
      ldv_51012: ;
      if ((u32 )i < imr_num) {
        goto ldv_51011;
      } else {
      }
      {
      rtl_set_bbreg(hw, 2188U, 15728640U, 0U);
      rtl_set_bbreg(hw, 2048U, 50331648U, 3U);
      rtl92d_release_cckandrw_pagea_ctl(hw, & flag);
      }
    } else {
    }
  }
  {
  tmp___21 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                              0L);
  }
  if (tmp___21 != 0L) {
    {
    tmp___22 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___22 != 0L) {
      {
      tmp___19 = preempt_count();
      tmp___20 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <====\n", "_rtl92d_phy_reload_imr_setting",
             (unsigned long )tmp___20 & 2096896UL, ((unsigned long )tmp___19 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void _rtl92d_phy_enable_rf_env(struct ieee80211_hw *hw , u8 rfpath , u32 *pu4_regval )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct bb_reg_def *pphyreg ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  pphyreg = (struct bb_reg_def *)(& rtlphy->phyreg_def) + (unsigned long )rfpath;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> ====>\n", "_rtl92d_phy_enable_rf_env", (unsigned long )tmp___0 & 2096896UL,
             ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  {
  if ((int )rfpath == 0) {
    goto case_0;
  } else {
  }
  if ((int )rfpath == 2) {
    goto case_2;
  } else {
  }
  if ((int )rfpath == 1) {
    goto case_1;
  } else {
  }
  if ((int )rfpath == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_0: ;
  case_2:
  {
  *pu4_regval = rtl_get_bbreg(hw, pphyreg->rfintfs, 16U);
  }
  goto ldv_51025;
  case_1: ;
  case_3:
  {
  *pu4_regval = rtl_get_bbreg(hw, pphyreg->rfintfs, 1048576U);
  }
  goto ldv_51025;
  switch_break: ;
  }
  ldv_51025:
  {
  rtl_set_bbreg(hw, pphyreg->rfintfe, 1048576U, 1U);
  __const_udelay(4295UL);
  rtl_set_bbreg(hw, pphyreg->rfintfo, 16U, 1U);
  __const_udelay(4295UL);
  rtl_set_bbreg(hw, pphyreg->rfhssi_para2, 1024U, 0U);
  __const_udelay(4295UL);
  rtl_set_bbreg(hw, pphyreg->rfhssi_para2, 2048U, 0U);
  __const_udelay(4295UL);
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <====\n", "_rtl92d_phy_enable_rf_env", (unsigned long )tmp___4 & 2096896UL,
             ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void _rtl92d_phy_restore_rf_env(struct ieee80211_hw *hw , u8 rfpath , u32 *pu4_regval )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct bb_reg_def *pphyreg ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  pphyreg = (struct bb_reg_def *)(& rtlphy->phyreg_def) + (unsigned long )rfpath;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> =====>\n", "_rtl92d_phy_restore_rf_env",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  {
  if ((int )rfpath == 0) {
    goto case_0;
  } else {
  }
  if ((int )rfpath == 2) {
    goto case_2;
  } else {
  }
  if ((int )rfpath == 1) {
    goto case_1;
  } else {
  }
  if ((int )rfpath == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_0: ;
  case_2:
  {
  rtl_set_bbreg(hw, pphyreg->rfintfs, 16U, *pu4_regval);
  }
  goto ldv_51039;
  case_1: ;
  case_3:
  {
  rtl_set_bbreg(hw, pphyreg->rfintfs, 1048576U, *pu4_regval);
  }
  goto ldv_51039;
  switch_break: ;
  }
  ldv_51039:
  {
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <=====\n", "_rtl92d_phy_restore_rf_env",
             (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void _rtl92d_phy_switch_rf_setting(struct ieee80211_hw *hw , u8 channel )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_hal *rtlhal ;
  u8 path ;
  u8 index ;
  u8 i ;
  u8 rfpath ;
  bool need_pwr_down ;
  bool internal_pa ;
  u32 u4regvalue ;
  u32 mask ;
  u32 value ;
  u32 u4tmp ;
  u32 u4tmp2 ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  u32 tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  long tmp___11 ;
  long tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  long tmp___15 ;
  long tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  long tmp___19 ;
  long tmp___20 ;
  long tmp___21 ;
  u32 tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  long tmp___25 ;
  long tmp___26 ;
  long tmp___27 ;
  int tmp___28 ;
  int tmp___29 ;
  long tmp___30 ;
  long tmp___31 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rtlhal = & rtlpriv->rtlhal;
  path = (unsigned int )rtlhal->current_bandtype != 1U;
  index = 0U;
  i = 0U;
  rfpath = 0U;
  need_pwr_down = 0;
  internal_pa = 0;
  mask = 114688U;
  value = 0U;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> ====>\n", "_rtl92d_phy_switch_rf_setting",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )rtlhal->current_bandtype == 1U) {
    {
    tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> ====>5G\n", "_rtl92d_phy_switch_rf_setting",
               (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    {
    u4tmp = curveindex_5g[(int )channel + -1];
    tmp___7 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___7 != 0L) {
      {
      printk("\017rtl8192de: ver 1 set RF-A, 5G, 0x28 = 0x%x !!\n", u4tmp);
      }
    } else {
    }
    i = 0U;
    goto ldv_51062;
    ldv_51061: ;
    if ((int )channel == (int )rf_chnl_5g[(int )i] && (unsigned int )channel <= 140U) {
      index = 0U;
    } else {
    }
    i = (u8 )((int )i + 1);
    ldv_51062: ;
    if ((unsigned int )i <= 18U) {
      goto ldv_51061;
    } else {
    }
    i = 0U;
    goto ldv_51065;
    ldv_51064: ;
    if ((int )channel == (int )rf_chnl_5g_40m[(int )i] && (unsigned int )channel <= 140U) {
      index = 1U;
    } else {
    }
    i = (u8 )((int )i + 1);
    ldv_51065: ;
    if ((unsigned int )i <= 16U) {
      goto ldv_51064;
    } else {
    }
    if (((unsigned int )channel == 149U || (unsigned int )channel == 155U) || (unsigned int )channel == 161U) {
      index = 2U;
    } else
    if (((unsigned int )channel == 151U || (unsigned int )channel == 153U) || ((unsigned int )channel == 163U || (unsigned int )channel == 165U)) {
      index = 3U;
    } else
    if ((unsigned int )channel == 157U || (unsigned int )channel == 159U) {
      index = 4U;
    } else {
    }
    if ((unsigned int )rtlhal->macphymode == 1U && rtlhal->interfaceindex == 1U) {
      {
      need_pwr_down = rtl92d_phy_enable_anotherphy(hw, 0);
      rtlhal->during_mac1init_radioa = 1;
      }
      if ((int )need_pwr_down) {
        {
        _rtl92d_phy_enable_rf_env(hw, (int )path, & u4regvalue);
        }
      } else {
      }
    } else {
    }
    i = 0U;
    goto ldv_51068;
    ldv_51067: ;
    if ((unsigned int )i == 0U && (unsigned int )rtlhal->macphymode == 1U) {
      {
      rtl_set_rfreg(hw, (enum radio_path )path, (u32 )rf_reg_for_c_cut_5g[(int )i],
                    1048575U, 934813U);
      }
    } else
    if ((unsigned int )rf_reg_for_c_cut_5g[(int )i] == 40U) {
      u4tmp2 = (rf_reg_pram_c_5g[(int )index][(int )i] & 2047U) | (u4tmp << 11);
      if ((unsigned int )channel == 36U) {
        u4tmp2 = u4tmp2 & 4294967103U;
      } else {
      }
      {
      rtl_set_rfreg(hw, (enum radio_path )path, (u32 )rf_reg_for_c_cut_5g[(int )i],
                    1048575U, u4tmp2);
      }
    } else {
      {
      rtl_set_rfreg(hw, (enum radio_path )path, (u32 )rf_reg_for_c_cut_5g[(int )i],
                    1048575U, rf_reg_pram_c_5g[(int )index][(int )i]);
      }
    }
    {
    tmp___11 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                                0L);
    }
    if (tmp___11 != 0L) {
      {
      tmp___12 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
      }
      if (tmp___12 != 0L) {
        {
        tmp___8 = rtl_get_rfreg(hw, (enum radio_path )path, (u32 )rf_reg_for_c_cut_5g[(int )i],
                                1048575U);
        tmp___9 = preempt_count();
        tmp___10 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> offset 0x%x value 0x%x path %d index %d readback 0x%x\n",
               "_rtl92d_phy_switch_rf_setting", (unsigned long )tmp___10 & 2096896UL,
               ((unsigned long )tmp___9 & 0xffffffffffdfffffUL) != 0UL, (int )rf_reg_for_c_cut_5g[(int )i],
               rf_reg_pram_c_5g[(int )index][(int )i], (int )path, (int )index, tmp___8);
        }
      } else {
      }
    } else {
    }
    i = (u8 )((int )i + 1);
    ldv_51068: ;
    if ((unsigned int )i <= 5U) {
      goto ldv_51067;
    } else {
    }
    if ((int )need_pwr_down) {
      {
      _rtl92d_phy_restore_rf_env(hw, (int )path, & u4regvalue);
      }
    } else {
    }
    if ((int )rtlhal->during_mac1init_radioa) {
      {
      rtl92d_phy_powerdown_anotherphy(hw, 0);
      }
    } else {
    }
    if ((unsigned int )channel <= 148U) {
      value = 7U;
    } else
    if ((unsigned int )channel > 148U) {
      value = 2U;
    } else {
    }
    if ((unsigned int )channel - 36U <= 28U) {
      index = 0U;
    } else
    if ((unsigned int )channel - 100U <= 40U) {
      index = 1U;
    } else {
      index = 2U;
    }
    rfpath = 0U;
    goto ldv_51074;
    ldv_51073: ;
    if ((unsigned int )rtlhal->macphymode == 1U && rtlhal->interfaceindex == 1U) {
      internal_pa = (unsigned int )rtlpriv->efuse.internal_pa_5g[1] != 0U;
    } else {
      internal_pa = (unsigned int )rtlpriv->efuse.internal_pa_5g[(int )rfpath] != 0U;
    }
    if ((int )internal_pa) {
      i = 0U;
      goto ldv_51071;
      ldv_51070:
      {
      rtl_set_rfreg(hw, (enum radio_path )rfpath, (u32 )rf_for_c_cut_5g_internal_pa[(int )i],
                    1048575U, rf_pram_c_5g_int_pa[(int )index][(int )i]);
      tmp___15 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                                  0L);
      }
      if (tmp___15 != 0L) {
        {
        tmp___16 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___16 != 0L) {
          {
          tmp___13 = preempt_count();
          tmp___14 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> offset 0x%x value 0x%x path %d index %d\n",
                 "_rtl92d_phy_switch_rf_setting", (unsigned long )tmp___14 & 2096896UL,
                 ((unsigned long )tmp___13 & 0xffffffffffdfffffUL) != 0UL, (int )rf_for_c_cut_5g_internal_pa[(int )i],
                 rf_pram_c_5g_int_pa[(int )index][(int )i], (int )rfpath, (int )index);
          }
        } else {
        }
      } else {
      }
      i = (u8 )((int )i + 1);
      ldv_51071: ;
      if ((unsigned int )i <= 6U) {
        goto ldv_51070;
      } else {
      }
    } else {
      {
      rtl_set_rfreg(hw, (enum radio_path )rfpath, 11U, mask, value);
      }
    }
    rfpath = (u8 )((int )rfpath + 1);
    ldv_51074: ;
    if ((int )rfpath < (int )rtlphy->num_total_rfpath) {
      goto ldv_51073;
    } else {
    }
  } else
  if ((unsigned int )rtlhal->current_bandtype == 0U) {
    {
    tmp___19 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                                0L);
    }
    if (tmp___19 != 0L) {
      {
      tmp___20 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___20 != 0L) {
        {
        tmp___17 = preempt_count();
        tmp___18 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> ====>2.4G\n", "_rtl92d_phy_switch_rf_setting",
               (unsigned long )tmp___18 & 2096896UL, ((unsigned long )tmp___17 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    {
    u4tmp = curveindex_2g[(int )channel + -1];
    tmp___21 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                                0L);
    }
    if (tmp___21 != 0L) {
      {
      printk("\017rtl8192de: ver 3 set RF-B, 2G, 0x28 = 0x%x !!\n", u4tmp);
      }
    } else {
    }
    if ((((unsigned int )channel - 1U <= 1U || (unsigned int )channel == 4U) || ((unsigned int )channel == 9U || (unsigned int )channel == 10U)) || ((unsigned int )channel == 11U || (unsigned int )channel == 12U)) {
      index = 0U;
    } else
    if (((unsigned int )channel == 3U || (unsigned int )channel == 13U) || (unsigned int )channel == 14U) {
      index = 1U;
    } else
    if ((unsigned int )channel - 5U <= 3U) {
      index = 2U;
    } else {
    }
    if ((unsigned int )rtlhal->macphymode == 1U) {
      path = 0U;
      if (rtlhal->interfaceindex == 0U) {
        {
        need_pwr_down = rtl92d_phy_enable_anotherphy(hw, 1);
        rtlhal->during_mac0init_radiob = 1;
        }
        if ((int )need_pwr_down) {
          {
          _rtl92d_phy_enable_rf_env(hw, (int )path, & u4regvalue);
          }
        } else {
        }
      } else {
      }
    } else {
    }
    i = 0U;
    goto ldv_51077;
    ldv_51076: ;
    if ((unsigned int )rf_reg_for_c_cut_2g[(int )i] == 43U) {
      {
      rtl_set_rfreg(hw, (enum radio_path )path, (u32 )rf_reg_for_c_cut_2g[(int )i],
                    1048575U, rf_reg_param_for_c_cut_2g[(int )index][(int )i] | 131072U);
      }
    } else {
      {
      rtl_set_rfreg(hw, (enum radio_path )path, (u32 )rf_reg_for_c_cut_2g[(int )i],
                    1048575U, rf_reg_param_for_c_cut_2g[(int )index][(int )i]);
      }
    }
    {
    tmp___25 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                                0L);
    }
    if (tmp___25 != 0L) {
      {
      tmp___26 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
      }
      if (tmp___26 != 0L) {
        {
        tmp___22 = rtl_get_rfreg(hw, (enum radio_path )path, (u32 )rf_reg_for_c_cut_2g[(int )i],
                                 1048575U);
        tmp___23 = preempt_count();
        tmp___24 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> offset 0x%x value 0x%x mak 0x%x path %d index %d readback 0x%x\n",
               "_rtl92d_phy_switch_rf_setting", (unsigned long )tmp___24 & 2096896UL,
               ((unsigned long )tmp___23 & 0xffffffffffdfffffUL) != 0UL, (int )rf_reg_for_c_cut_2g[(int )i],
               rf_reg_param_for_c_cut_2g[(int )index][(int )i], rf_reg_mask_for_c_cut_2g[(int )i],
               (int )path, (int )index, tmp___22);
        }
      } else {
      }
    } else {
    }
    i = (u8 )((int )i + 1);
    ldv_51077: ;
    if ((unsigned int )i <= 4U) {
      goto ldv_51076;
    } else {
    }
    {
    tmp___27 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                                0L);
    }
    if (tmp___27 != 0L) {
      {
      printk("\017rtl8192de: cosa ver 3 set RF-B, 2G, 0x28 = 0x%x !!\n", rf_syn_g4_for_c_cut_2g | (u4tmp << 11));
      }
    } else {
    }
    {
    rtl_set_rfreg(hw, (enum radio_path )path, 40U, 1048575U, rf_syn_g4_for_c_cut_2g | (u4tmp << 11));
    }
    if ((int )need_pwr_down) {
      {
      _rtl92d_phy_restore_rf_env(hw, (int )path, & u4regvalue);
      }
    } else {
    }
    if ((int )rtlhal->during_mac0init_radiob) {
      {
      rtl92d_phy_powerdown_anotherphy(hw, 1);
      }
    } else {
    }
  } else {
  }
  {
  tmp___30 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                              0L);
  }
  if (tmp___30 != 0L) {
    {
    tmp___31 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___31 != 0L) {
      {
      tmp___28 = preempt_count();
      tmp___29 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <====\n", "_rtl92d_phy_switch_rf_setting",
             (unsigned long )tmp___29 & 2096896UL, ((unsigned long )tmp___28 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
u8 rtl92d_get_rightchnlplace_for_iqk(u8 chnl )
{
  u8 channel_all[59U] ;
  u8 place ;
  {
  channel_all[0] = 1U;
  channel_all[1] = 2U;
  channel_all[2] = 3U;
  channel_all[3] = 4U;
  channel_all[4] = 5U;
  channel_all[5] = 6U;
  channel_all[6] = 7U;
  channel_all[7] = 8U;
  channel_all[8] = 9U;
  channel_all[9] = 10U;
  channel_all[10] = 11U;
  channel_all[11] = 12U;
  channel_all[12] = 13U;
  channel_all[13] = 14U;
  channel_all[14] = 36U;
  channel_all[15] = 38U;
  channel_all[16] = 40U;
  channel_all[17] = 42U;
  channel_all[18] = 44U;
  channel_all[19] = 46U;
  channel_all[20] = 48U;
  channel_all[21] = 50U;
  channel_all[22] = 52U;
  channel_all[23] = 54U;
  channel_all[24] = 56U;
  channel_all[25] = 58U;
  channel_all[26] = 60U;
  channel_all[27] = 62U;
  channel_all[28] = 64U;
  channel_all[29] = 100U;
  channel_all[30] = 102U;
  channel_all[31] = 104U;
  channel_all[32] = 106U;
  channel_all[33] = 108U;
  channel_all[34] = 110U;
  channel_all[35] = 112U;
  channel_all[36] = 114U;
  channel_all[37] = 116U;
  channel_all[38] = 118U;
  channel_all[39] = 120U;
  channel_all[40] = 122U;
  channel_all[41] = 124U;
  channel_all[42] = 126U;
  channel_all[43] = 128U;
  channel_all[44] = 130U;
  channel_all[45] = 132U;
  channel_all[46] = 134U;
  channel_all[47] = 136U;
  channel_all[48] = 138U;
  channel_all[49] = 140U;
  channel_all[50] = 149U;
  channel_all[51] = 151U;
  channel_all[52] = 153U;
  channel_all[53] = 155U;
  channel_all[54] = 157U;
  channel_all[55] = 159U;
  channel_all[56] = 161U;
  channel_all[57] = 163U;
  channel_all[58] = 165U;
  place = chnl;
  if ((unsigned int )chnl > 14U) {
    place = 14U;
    goto ldv_51085;
    ldv_51084: ;
    if ((int )channel_all[(int )place] == (int )chnl) {
      return ((unsigned int )place + 243U);
    } else {
    }
    place = (u8 )((int )place + 1);
    ldv_51085: ;
    if ((unsigned int )place <= 58U) {
      goto ldv_51084;
    } else {
    }
  } else {
  }
  return (0U);
}
}
static u8 _rtl92d_phy_patha_iqk(struct ieee80211_hw *hw , bool configpathb )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u32 regeac ;
  u32 rege94 ;
  u32 rege9c ;
  u32 regea4 ;
  u8 result ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  unsigned long __ms ;
  unsigned long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  result = 0U;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: Path A IQK!\n");
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\017rtl8192de: Path-A IQK setting!\n");
    }
  } else {
  }
  if (rtlhal->interfaceindex == 0U) {
    {
    rtl_set_bbreg(hw, 3632U, 4294967295U, 268471327U);
    rtl_set_bbreg(hw, 3636U, 4294967295U, 268471327U);
    }
  } else {
    {
    rtl_set_bbreg(hw, 3632U, 4294967295U, 268471330U);
    rtl_set_bbreg(hw, 3636U, 4294967295U, 268471330U);
    }
  }
  {
  rtl_set_bbreg(hw, 3640U, 4294967295U, 2182349058U);
  rtl_set_bbreg(hw, 3644U, 4294967295U, 672530950U);
  }
  if ((int )configpathb) {
    {
    rtl_set_bbreg(hw, 3664U, 4294967295U, 268471330U);
    rtl_set_bbreg(hw, 3668U, 4294967295U, 268471330U);
    rtl_set_bbreg(hw, 3672U, 4294967295U, 2182349058U);
    rtl_set_bbreg(hw, 3676U, 4294967295U, 672530950U);
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    printk("\017rtl8192de: LO calibration setting!\n");
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 3660U, 4294967295U, 4598033U);
  tmp___2 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___2 != 0L) {
    {
    printk("\017rtl8192de: One shot, path A LOK & IQK!\n");
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 3656U, 4294967295U, 4177526784U);
  rtl_set_bbreg(hw, 3656U, 4294967295U, 4160749568U);
  tmp___3 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___3 != 0L) {
    {
    printk("\017rtl8192de: Delay %d ms for One shot, path A LOK & IQK\n", 1);
    }
  } else {
  }
  if (1) {
    {
    __const_udelay(4295000UL);
    }
  } else {
    __ms = 1UL;
    goto ldv_51100;
    ldv_51099:
    {
    __const_udelay(4295000UL);
    }
    ldv_51100:
    tmp___4 = __ms;
    __ms = __ms - 1UL;
    if (tmp___4 != 0UL) {
      goto ldv_51099;
    } else {
    }
  }
  {
  regeac = rtl_get_bbreg(hw, 3756U, 4294967295U);
  tmp___5 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    printk("\017rtl8192de: 0xeac = 0x%x\n", regeac);
    }
  } else {
  }
  {
  rege94 = rtl_get_bbreg(hw, 3732U, 4294967295U);
  tmp___6 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___6 != 0L) {
    {
    printk("\017rtl8192de: 0xe94 = 0x%x\n", rege94);
    }
  } else {
  }
  {
  rege9c = rtl_get_bbreg(hw, 3740U, 4294967295U);
  tmp___7 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___7 != 0L) {
    {
    printk("\017rtl8192de: 0xe9c = 0x%x\n", rege9c);
    }
  } else {
  }
  {
  regea4 = rtl_get_bbreg(hw, 3748U, 4294967295U);
  tmp___8 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___8 != 0L) {
    {
    printk("\017rtl8192de: 0xea4 = 0x%x\n", regea4);
    }
  } else {
  }
  if ((((unsigned long )regeac & 268435456UL) == 0UL && (rege94 & 67043328U) >> 16 != 322U) && (rege9c & 67043328U) >> 16 != 66U) {
    result = (u8 )((unsigned int )result | 1U);
  } else {
    return (result);
  }
  if ((((unsigned long )regeac & 134217728UL) == 0UL && (regea4 & 67043328U) >> 16 != 306U) && (regeac & 67043328U) >> 16 != 54U) {
    result = (u8 )((unsigned int )result | 2U);
  } else {
    {
    tmp___9 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___9 != 0L) {
      {
      printk("\017rtl8192de: Path A Rx IQK fail!!\n");
      }
    } else {
    }
  }
  return (result);
}
}
static u8 _rtl92d_phy_patha_iqk_5g_normal(struct ieee80211_hw *hw , bool configpathb )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  struct rtl_phy *rtlphy ;
  u32 regeac ;
  u32 rege94 ;
  u32 rege9c ;
  u32 regea4 ;
  u8 result ;
  u8 i ;
  u8 retrycount ;
  u32 TxOKBit ;
  u32 RxOKBit ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  unsigned long __ms ;
  unsigned long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  rtlphy = & rtlpriv->phy;
  result = 0U;
  retrycount = 2U;
  TxOKBit = 268435456U;
  RxOKBit = 134217728U;
  if (rtlhal->interfaceindex == 1U) {
    TxOKBit = 2147483648U;
    RxOKBit = 1073741824U;
  } else {
  }
  {
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: Path A IQK!\n");
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\017rtl8192de: Path-A IQK setting!\n");
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 3632U, 4294967295U, 402689055U);
  rtl_set_bbreg(hw, 3636U, 4294967295U, 402689055U);
  rtl_set_bbreg(hw, 3640U, 4294967295U, 2182349575U);
  rtl_set_bbreg(hw, 3644U, 4294967295U, 1746274656U);
  }
  if ((int )configpathb) {
    {
    rtl_set_bbreg(hw, 3664U, 4294967295U, 402689071U);
    rtl_set_bbreg(hw, 3668U, 4294967295U, 402689071U);
    rtl_set_bbreg(hw, 3672U, 4294967295U, 2182152192U);
    rtl_set_bbreg(hw, 3676U, 4294967295U, 1745944576U);
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    printk("\017rtl8192de: LO calibration setting!\n");
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 3660U, 4294967295U, 4598033U);
  rtl_set_bbreg(hw, 2160U, 4294967295U, 117444448U);
  rtl_set_bbreg(hw, 2144U, 4294967295U, 1726352944U);
  i = 0U;
  }
  goto ldv_51125;
  ldv_51124:
  {
  tmp___2 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___2 != 0L) {
    {
    printk("\017rtl8192de: One shot, path A LOK & IQK!\n");
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 3656U, 4294967295U, 4177526784U);
  rtl_set_bbreg(hw, 3656U, 4294967295U, 4160749568U);
  tmp___3 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___3 != 0L) {
    {
    printk("\017rtl8192de: Delay %d ms for One shot, path A LOK & IQK.\n", 1);
    }
  } else {
  }
  __ms = 10UL;
  goto ldv_51120;
  ldv_51119:
  {
  __const_udelay(4295000UL);
  }
  ldv_51120:
  tmp___4 = __ms;
  __ms = __ms - 1UL;
  if (tmp___4 != 0UL) {
    goto ldv_51119;
  } else {
  }
  {
  regeac = rtl_get_bbreg(hw, 3756U, 4294967295U);
  tmp___5 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    printk("\017rtl8192de: 0xeac = 0x%x\n", regeac);
    }
  } else {
  }
  {
  rege94 = rtl_get_bbreg(hw, 3732U, 4294967295U);
  tmp___6 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___6 != 0L) {
    {
    printk("\017rtl8192de: 0xe94 = 0x%x\n", rege94);
    }
  } else {
  }
  {
  rege9c = rtl_get_bbreg(hw, 3740U, 4294967295U);
  tmp___7 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___7 != 0L) {
    {
    printk("\017rtl8192de: 0xe9c = 0x%x\n", rege9c);
    }
  } else {
  }
  {
  regea4 = rtl_get_bbreg(hw, 3748U, 4294967295U);
  tmp___8 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___8 != 0L) {
    {
    printk("\017rtl8192de: 0xea4 = 0x%x\n", regea4);
    }
  } else {
  }
  if ((regeac & TxOKBit) == 0U && (rege94 & 67043328U) >> 16 != 322U) {
    result = (u8 )((unsigned int )result | 1U);
  } else {
    {
    tmp___9 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___9 != 0L) {
      {
      printk("\017rtl8192de: Path A Tx IQK fail!!\n");
      }
    } else {
    }
    goto ldv_51122;
  }
  if ((regeac & RxOKBit) == 0U && (regea4 & 67043328U) >> 16 != 306U) {
    result = (u8 )((unsigned int )result | 2U);
    goto ldv_51123;
  } else {
    {
    tmp___10 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                                0L);
    }
    if (tmp___10 != 0L) {
      {
      printk("\017rtl8192de: Path A Rx IQK fail!!\n");
      }
    } else {
    }
  }
  ldv_51122:
  i = (u8 )((int )i + 1);
  ldv_51125: ;
  if ((int )i < (int )retrycount) {
    goto ldv_51124;
  } else {
  }
  ldv_51123:
  {
  rtl_set_bbreg(hw, 2160U, 4294967295U, rtlphy->iqk_bb_backup[0]);
  rtl_set_bbreg(hw, 2144U, 4294967295U, rtlphy->iqk_bb_backup[1]);
  }
  return (result);
}
}
static u8 _rtl92d_phy_pathb_iqk(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  u32 regeac ;
  u32 regeb4 ;
  u32 regebc ;
  u32 regec4 ;
  u32 regecc ;
  u8 result ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long __ms ;
  unsigned long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  result = 0U;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: Path B IQK!\n");
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\017rtl8192de: One shot, path A LOK & IQK!\n");
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 3680U, 4294967295U, 2U);
  rtl_set_bbreg(hw, 3680U, 4294967295U, 0U);
  tmp___1 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    printk("\017rtl8192de: Delay %d ms for One shot, path B LOK & IQK\n", 1);
    }
  } else {
  }
  if (1) {
    {
    __const_udelay(4295000UL);
    }
  } else {
    __ms = 1UL;
    goto ldv_51138;
    ldv_51137:
    {
    __const_udelay(4295000UL);
    }
    ldv_51138:
    tmp___2 = __ms;
    __ms = __ms - 1UL;
    if (tmp___2 != 0UL) {
      goto ldv_51137;
    } else {
    }
  }
  {
  regeac = rtl_get_bbreg(hw, 3756U, 4294967295U);
  tmp___3 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___3 != 0L) {
    {
    printk("\017rtl8192de: 0xeac = 0x%x\n", regeac);
    }
  } else {
  }
  {
  regeb4 = rtl_get_bbreg(hw, 3764U, 4294967295U);
  tmp___4 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___4 != 0L) {
    {
    printk("\017rtl8192de: 0xeb4 = 0x%x\n", regeb4);
    }
  } else {
  }
  {
  regebc = rtl_get_bbreg(hw, 3772U, 4294967295U);
  tmp___5 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    printk("\017rtl8192de: 0xebc = 0x%x\n", regebc);
    }
  } else {
  }
  {
  regec4 = rtl_get_bbreg(hw, 3780U, 4294967295U);
  tmp___6 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___6 != 0L) {
    {
    printk("\017rtl8192de: 0xec4 = 0x%x\n", regec4);
    }
  } else {
  }
  {
  regecc = rtl_get_bbreg(hw, 3788U, 4294967295U);
  tmp___7 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___7 != 0L) {
    {
    printk("\017rtl8192de: 0xecc = 0x%x\n", regecc);
    }
  } else {
  }
  if (((int )regeac >= 0 && (regeb4 & 67043328U) >> 16 != 322U) && (regebc & 67043328U) >> 16 != 66U) {
    result = (u8 )((unsigned int )result | 1U);
  } else {
    return (result);
  }
  if ((((unsigned long )regeac & 1073741824UL) == 0UL && (regec4 & 67043328U) >> 16 != 306U) && (regecc & 67043328U) >> 16 != 54U) {
    result = (u8 )((unsigned int )result | 2U);
  } else {
    {
    tmp___8 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___8 != 0L) {
      {
      printk("\017rtl8192de: Path B Rx IQK fail!!\n");
      }
    } else {
    }
  }
  return (result);
}
}
static u8 _rtl92d_phy_pathb_iqk_5g_normal(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  u32 regeac ;
  u32 regeb4 ;
  u32 regebc ;
  u32 regec4 ;
  u32 regecc ;
  u8 result ;
  u8 i ;
  u8 retrycount ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  unsigned long __ms ;
  unsigned long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  result = 0U;
  retrycount = 2U;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: Path B IQK!\n");
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\017rtl8192de: Path-A IQK setting!\n");
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 3632U, 4294967295U, 402689055U);
  rtl_set_bbreg(hw, 3636U, 4294967295U, 402689055U);
  rtl_set_bbreg(hw, 3640U, 4294967295U, 2182152192U);
  rtl_set_bbreg(hw, 3644U, 4294967295U, 1745944576U);
  rtl_set_bbreg(hw, 3664U, 4294967295U, 402689071U);
  rtl_set_bbreg(hw, 3668U, 4294967295U, 402689071U);
  rtl_set_bbreg(hw, 3672U, 4294967295U, 2182349575U);
  rtl_set_bbreg(hw, 3676U, 4294967295U, 1746274656U);
  tmp___1 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    printk("\017rtl8192de: LO calibration setting!\n");
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 3660U, 4294967295U, 4598033U);
  rtl_set_bbreg(hw, 2160U, 4294967295U, 257951488U);
  rtl_set_bbreg(hw, 2148U, 4294967295U, 102698288U);
  i = 0U;
  }
  goto ldv_51160;
  ldv_51159:
  {
  tmp___2 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___2 != 0L) {
    {
    printk("\017rtl8192de: One shot, path A LOK & IQK!\n");
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 3656U, 4294967295U, 4194304000U);
  rtl_set_bbreg(hw, 3656U, 4294967295U, 4160749568U);
  tmp___3 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___3 != 0L) {
    {
    printk("\017rtl8192de: Delay %d ms for One shot, path B LOK & IQK.\n", 10);
    }
  } else {
  }
  __ms = 10UL;
  goto ldv_51155;
  ldv_51154:
  {
  __const_udelay(4295000UL);
  }
  ldv_51155:
  tmp___4 = __ms;
  __ms = __ms - 1UL;
  if (tmp___4 != 0UL) {
    goto ldv_51154;
  } else {
  }
  {
  regeac = rtl_get_bbreg(hw, 3756U, 4294967295U);
  tmp___5 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    printk("\017rtl8192de: 0xeac = 0x%x\n", regeac);
    }
  } else {
  }
  {
  regeb4 = rtl_get_bbreg(hw, 3764U, 4294967295U);
  tmp___6 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___6 != 0L) {
    {
    printk("\017rtl8192de: 0xeb4 = 0x%x\n", regeb4);
    }
  } else {
  }
  {
  regebc = rtl_get_bbreg(hw, 3772U, 4294967295U);
  tmp___7 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___7 != 0L) {
    {
    printk("\017rtl8192de: 0xebc = 0x%x\n", regebc);
    }
  } else {
  }
  {
  regec4 = rtl_get_bbreg(hw, 3780U, 4294967295U);
  tmp___8 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___8 != 0L) {
    {
    printk("\017rtl8192de: 0xec4 = 0x%x\n", regec4);
    }
  } else {
  }
  {
  regecc = rtl_get_bbreg(hw, 3788U, 4294967295U);
  tmp___9 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___9 != 0L) {
    {
    printk("\017rtl8192de: 0xecc = 0x%x\n", regecc);
    }
  } else {
  }
  if ((int )regeac >= 0 && (regeb4 & 67043328U) >> 16 != 322U) {
    result = (u8 )((unsigned int )result | 1U);
  } else {
    goto ldv_51157;
  }
  if (((unsigned long )regeac & 1073741824UL) == 0UL && (regec4 & 67043328U) >> 16 != 306U) {
    result = (u8 )((unsigned int )result | 2U);
    goto ldv_51158;
  } else {
    {
    tmp___10 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                                0L);
    }
    if (tmp___10 != 0L) {
      {
      printk("\017rtl8192de: Path B Rx IQK fail!!\n");
      }
    } else {
    }
  }
  ldv_51157:
  i = (u8 )((int )i + 1);
  ldv_51160: ;
  if ((int )i < (int )retrycount) {
    goto ldv_51159;
  } else {
  }
  ldv_51158:
  {
  rtl_set_bbreg(hw, 2160U, 4294967295U, rtlphy->iqk_bb_backup[0]);
  rtl_set_bbreg(hw, 2148U, 4294967295U, rtlphy->iqk_bb_backup[2]);
  }
  return (result);
}
}
static void _rtl92d_phy_save_adda_registers(struct ieee80211_hw *hw , u32 *adda_reg ,
                                            u32 *adda_backup , u32 regnum )
{
  struct rtl_priv *rtlpriv ;
  u32 i ;
  long tmp ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: Save ADDA parameters.\n");
    }
  } else {
  }
  i = 0U;
  goto ldv_51170;
  ldv_51169:
  {
  *(adda_backup + (unsigned long )i) = rtl_get_bbreg(hw, *(adda_reg + (unsigned long )i),
                                                     4294967295U);
  i = i + 1U;
  }
  ldv_51170: ;
  if (i < regnum) {
    goto ldv_51169;
  } else {
  }
  return;
}
}
static void _rtl92d_phy_save_mac_registers(struct ieee80211_hw *hw , u32 *macreg ,
                                           u32 *macbackup )
{
  struct rtl_priv *rtlpriv ;
  u32 i ;
  long tmp ;
  u8 tmp___0 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: Save MAC parameters.\n");
    }
  } else {
  }
  i = 0U;
  goto ldv_51180;
  ldv_51179:
  {
  tmp___0 = rtl_read_byte(rtlpriv, *(macreg + (unsigned long )i));
  *(macbackup + (unsigned long )i) = (u32 )tmp___0;
  i = i + 1U;
  }
  ldv_51180: ;
  if (i <= 2U) {
    goto ldv_51179;
  } else {
  }
  {
  *(macbackup + (unsigned long )i) = rtl_read_dword(rtlpriv, *(macreg + (unsigned long )i));
  }
  return;
}
}
static void _rtl92d_phy_reload_adda_registers(struct ieee80211_hw *hw , u32 *adda_reg ,
                                              u32 *adda_backup , u32 regnum )
{
  struct rtl_priv *rtlpriv ;
  u32 i ;
  long tmp ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: Reload ADDA power saving parameters !\n");
    }
  } else {
  }
  i = 0U;
  goto ldv_51191;
  ldv_51190:
  {
  rtl_set_bbreg(hw, *(adda_reg + (unsigned long )i), 4294967295U, *(adda_backup + (unsigned long )i));
  i = i + 1U;
  }
  ldv_51191: ;
  if (i < regnum) {
    goto ldv_51190;
  } else {
  }
  return;
}
}
static void _rtl92d_phy_reload_mac_registers(struct ieee80211_hw *hw , u32 *macreg ,
                                             u32 *macbackup )
{
  struct rtl_priv *rtlpriv ;
  u32 i ;
  long tmp ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: Reload MAC parameters !\n");
    }
  } else {
  }
  i = 0U;
  goto ldv_51201;
  ldv_51200:
  {
  rtl_write_byte(rtlpriv, *(macreg + (unsigned long )i), (int )((unsigned char )*(macbackup + (unsigned long )i)));
  i = i + 1U;
  }
  ldv_51201: ;
  if (i <= 2U) {
    goto ldv_51200;
  } else {
  }
  {
  rtl_write_byte(rtlpriv, *(macreg + (unsigned long )i), (int )((u8 )*(macbackup + (unsigned long )i)));
  }
  return;
}
}
static void _rtl92d_phy_path_adda_on(struct ieee80211_hw *hw , u32 *adda_reg , bool patha_on ,
                                     bool is2t )
{
  struct rtl_priv *rtlpriv ;
  u32 pathon ;
  u32 i ;
  long tmp ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: ADDA ON.\n");
    }
  } else {
  }
  pathon = (int )patha_on ? 81470884U : 186328484U;
  if ((int )patha_on) {
    pathon = rtlpriv->rtlhal.interfaceindex == 0U ? 81470884U : 186328484U;
  } else {
  }
  i = 0U;
  goto ldv_51213;
  ldv_51212:
  {
  rtl_set_bbreg(hw, *(adda_reg + (unsigned long )i), 4294967295U, pathon);
  i = i + 1U;
  }
  ldv_51213: ;
  if (i <= 15U) {
    goto ldv_51212;
  } else {
  }
  return;
}
}
static void _rtl92d_phy_mac_setting_calibration(struct ieee80211_hw *hw , u32 *macreg ,
                                                u32 *macbackup )
{
  struct rtl_priv *rtlpriv ;
  u32 i ;
  long tmp ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: MAC settings for Calibration.\n");
    }
  } else {
  }
  {
  rtl_write_byte(rtlpriv, *macreg, 63);
  i = 1U;
  }
  goto ldv_51223;
  ldv_51222:
  {
  rtl_write_byte(rtlpriv, *(macreg + (unsigned long )i), (int )((unsigned char )*(macbackup + (unsigned long )i)) & 247);
  i = i + 1U;
  }
  ldv_51223: ;
  if (i <= 2U) {
    goto ldv_51222;
  } else {
  }
  {
  rtl_write_byte(rtlpriv, *(macreg + (unsigned long )i), (int )((unsigned char )*(macbackup + (unsigned long )i)) & 223);
  }
  return;
}
}
static void _rtl92d_phy_patha_standby(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  long tmp ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: Path-A standby mode!\n");
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 3624U, 4294967295U, 0U);
  rtl_set_bbreg(hw, 2112U, 4294967295U, 65536U);
  rtl_set_bbreg(hw, 3624U, 4294967295U, 2155872256U);
  }
  return;
}
}
static void _rtl92d_phy_pimode_switch(struct ieee80211_hw *hw , bool pi_mode )
{
  struct rtl_priv *rtlpriv ;
  u32 mode ;
  long tmp ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: BB Switch to %s mode!\n", (int )pi_mode ? (char *)"PI" : (char *)"SI");
    }
  } else {
  }
  {
  mode = (int )pi_mode ? 16777472U : 16777216U;
  rtl_set_bbreg(hw, 2080U, 4294967295U, mode);
  rtl_set_bbreg(hw, 2088U, 4294967295U, mode);
  }
  return;
}
}
static void _rtl92d_phy_iq_calibrate(struct ieee80211_hw *hw , long (*result)[8U] ,
                                     u8 t , bool is2t )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  u32 i ;
  u8 patha_ok ;
  u8 pathb_ok ;
  u32 adda_reg[16U] ;
  u32 iqk_mac_reg[4U] ;
  u32 iqk_bb_reg[10U] ;
  u32 retrycount ;
  u32 bbvalue ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  u32 tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  long tmp___9 ;
  u32 tmp___10 ;
  u32 tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  u32 tmp___14 ;
  u32 tmp___15 ;
  u32 tmp___16 ;
  u32 tmp___17 ;
  long tmp___18 ;
  u32 tmp___19 ;
  u32 tmp___20 ;
  long tmp___21 ;
  long tmp___22 ;
  long tmp___23 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  adda_reg[0] = 2140U;
  adda_reg[1] = 3692U;
  adda_reg[2] = 3696U;
  adda_reg[3] = 3700U;
  adda_reg[4] = 3704U;
  adda_reg[5] = 3708U;
  adda_reg[6] = 3712U;
  adda_reg[7] = 3716U;
  adda_reg[8] = 3720U;
  adda_reg[9] = 3724U;
  adda_reg[10] = 3792U;
  adda_reg[11] = 3796U;
  adda_reg[12] = 3800U;
  adda_reg[13] = 3804U;
  adda_reg[14] = 3808U;
  adda_reg[15] = 3820U;
  iqk_mac_reg[0] = 1314U;
  iqk_mac_reg[1] = 1360U;
  iqk_mac_reg[2] = 1361U;
  iqk_mac_reg[3] = 64U;
  iqk_bb_reg[0] = 2160U;
  iqk_bb_reg[1] = 2144U;
  iqk_bb_reg[2] = 2148U;
  iqk_bb_reg[3] = 3080U;
  iqk_bb_reg[4] = 2164U;
  iqk_bb_reg[5] = 3076U;
  iqk_bb_reg[6] = 2048U;
  iqk_bb_reg[7] = 2188U;
  iqk_bb_reg[8] = 3152U;
  iqk_bb_reg[9] = 3160U;
  retrycount = 2U;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: IQK for 2.4G :Start!!!\n");
    }
  } else {
  }
  if ((unsigned int )t == 0U) {
    {
    bbvalue = rtl_get_bbreg(hw, 2048U, 4294967295U);
    tmp___0 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___0 != 0L) {
      {
      printk("\017rtl8192de: ==>0x%08x\n", bbvalue);
      }
    } else {
    }
    {
    tmp___1 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      printk("\017rtl8192de: IQ Calibration for %s\n", (int )is2t ? (char *)"2T2R" : (char *)"1T1R");
      }
    } else {
    }
    {
    _rtl92d_phy_save_adda_registers(hw, (u32 *)(& adda_reg), (u32 *)(& rtlphy->adda_backup),
                                    16U);
    _rtl92d_phy_save_mac_registers(hw, (u32 *)(& iqk_mac_reg), (u32 *)(& rtlphy->iqk_mac_backup));
    _rtl92d_phy_save_adda_registers(hw, (u32 *)(& iqk_bb_reg), (u32 *)(& rtlphy->iqk_bb_backup),
                                    10U);
    }
  } else {
  }
  {
  _rtl92d_phy_path_adda_on(hw, (u32 *)(& adda_reg), 1, (int )is2t);
  }
  if ((unsigned int )t == 0U) {
    {
    tmp___2 = rtl_get_bbreg(hw, 2080U, 256U);
    rtlphy->rfpi_enable = (unsigned int )((unsigned char )tmp___2) != 0U;
    }
  } else {
  }
  if (! rtlphy->rfpi_enable) {
    {
    _rtl92d_phy_pimode_switch(hw, 1);
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 2048U, 16777216U, 0U);
  rtl_set_bbreg(hw, 3076U, 4294967295U, 60839424U);
  rtl_set_bbreg(hw, 3080U, 4294967295U, 524516U);
  rtl_set_bbreg(hw, 2164U, 4294967295U, 572538880U);
  rtl_set_bbreg(hw, 2188U, 15728640U, 15U);
  }
  if ((int )is2t) {
    {
    rtl_set_bbreg(hw, 2112U, 4294967295U, 65536U);
    rtl_set_bbreg(hw, 2116U, 4294967295U, 65536U);
    }
  } else {
  }
  {
  _rtl92d_phy_mac_setting_calibration(hw, (u32 *)(& iqk_mac_reg), (u32 *)(& rtlphy->iqk_mac_backup));
  rtl_set_bbreg(hw, 2920U, 4294967295U, 257949696U);
  }
  if ((int )is2t) {
    {
    rtl_set_bbreg(hw, 2924U, 4294967295U, 257949696U);
    }
  } else {
  }
  {
  tmp___3 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___3 != 0L) {
    {
    printk("\017rtl8192de: IQK setting!\n");
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 3624U, 4294967295U, 2155872256U);
  rtl_set_bbreg(hw, 3648U, 4294967295U, 16808960U);
  rtl_set_bbreg(hw, 3652U, 4294967295U, 16795648U);
  i = 0U;
  }
  goto ldv_51253;
  ldv_51252:
  {
  patha_ok = _rtl92d_phy_patha_iqk(hw, (int )is2t);
  }
  if ((unsigned int )patha_ok == 3U) {
    {
    tmp___4 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___4 != 0L) {
      {
      printk("\017rtl8192de: Path A IQK Success!!\n");
      }
    } else {
    }
    {
    tmp___5 = rtl_get_bbreg(hw, 3732U, 4294967295U);
    (*(result + (unsigned long )t))[0] = (long )((tmp___5 & 67043328U) >> 16);
    tmp___6 = rtl_get_bbreg(hw, 3740U, 4294967295U);
    (*(result + (unsigned long )t))[1] = (long )((tmp___6 & 67043328U) >> 16);
    tmp___7 = rtl_get_bbreg(hw, 3748U, 4294967295U);
    (*(result + (unsigned long )t))[2] = (long )((tmp___7 & 67043328U) >> 16);
    tmp___8 = rtl_get_bbreg(hw, 3756U, 4294967295U);
    (*(result + (unsigned long )t))[3] = (long )((tmp___8 & 67043328U) >> 16);
    }
    goto ldv_51251;
  } else
  if (i == 1U && (unsigned int )patha_ok == 1U) {
    {
    tmp___9 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___9 != 0L) {
      {
      printk("\017rtl8192de: Path A IQK Only  Tx Success!!\n");
      }
    } else {
    }
    {
    tmp___10 = rtl_get_bbreg(hw, 3732U, 4294967295U);
    (*(result + (unsigned long )t))[0] = (long )((tmp___10 & 67043328U) >> 16);
    tmp___11 = rtl_get_bbreg(hw, 3740U, 4294967295U);
    (*(result + (unsigned long )t))[1] = (long )((tmp___11 & 67043328U) >> 16);
    }
  } else {
  }
  i = i + 1U;
  ldv_51253: ;
  if (i <= 1U) {
    goto ldv_51252;
  } else {
  }
  ldv_51251: ;
  if ((unsigned int )patha_ok == 0U) {
    {
    tmp___12 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                                0L);
    }
    if (tmp___12 != 0L) {
      {
      printk("\017rtl8192de: Path A IQK failed!!\n");
      }
    } else {
    }
  } else {
  }
  if ((int )is2t) {
    {
    _rtl92d_phy_patha_standby(hw);
    _rtl92d_phy_path_adda_on(hw, (u32 *)(& adda_reg), 0, (int )is2t);
    i = 0U;
    }
    goto ldv_51256;
    ldv_51255:
    {
    pathb_ok = _rtl92d_phy_pathb_iqk(hw);
    }
    if ((unsigned int )pathb_ok == 3U) {
      {
      tmp___13 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                                  0L);
      }
      if (tmp___13 != 0L) {
        {
        printk("\017rtl8192de: Path B IQK Success!!\n");
        }
      } else {
      }
      {
      tmp___14 = rtl_get_bbreg(hw, 3764U, 4294967295U);
      (*(result + (unsigned long )t))[4] = (long )((tmp___14 & 67043328U) >> 16);
      tmp___15 = rtl_get_bbreg(hw, 3772U, 4294967295U);
      (*(result + (unsigned long )t))[5] = (long )((tmp___15 & 67043328U) >> 16);
      tmp___16 = rtl_get_bbreg(hw, 3780U, 4294967295U);
      (*(result + (unsigned long )t))[6] = (long )((tmp___16 & 67043328U) >> 16);
      tmp___17 = rtl_get_bbreg(hw, 3788U, 4294967295U);
      (*(result + (unsigned long )t))[7] = (long )((tmp___17 & 67043328U) >> 16);
      }
      goto ldv_51254;
    } else
    if (i == 1U && (unsigned int )pathb_ok == 1U) {
      {
      tmp___18 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                                  0L);
      }
      if (tmp___18 != 0L) {
        {
        printk("\017rtl8192de: Path B Only Tx IQK Success!!\n");
        }
      } else {
      }
      {
      tmp___19 = rtl_get_bbreg(hw, 3764U, 4294967295U);
      (*(result + (unsigned long )t))[4] = (long )((tmp___19 & 67043328U) >> 16);
      tmp___20 = rtl_get_bbreg(hw, 3772U, 4294967295U);
      (*(result + (unsigned long )t))[5] = (long )((tmp___20 & 67043328U) >> 16);
      }
    } else {
    }
    i = i + 1U;
    ldv_51256: ;
    if (i <= 1U) {
      goto ldv_51255;
    } else {
    }
    ldv_51254: ;
    if ((unsigned int )pathb_ok == 0U) {
      {
      tmp___21 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                                  0L);
      }
      if (tmp___21 != 0L) {
        {
        printk("\017rtl8192de: Path B IQK failed!!\n");
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  tmp___22 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                              0L);
  }
  if (tmp___22 != 0L) {
    {
    printk("\017rtl8192de: IQK:Back to BB mode, load original value!\n");
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 3624U, 4294967295U, 0U);
  }
  if ((unsigned int )t != 0U) {
    if (! rtlphy->rfpi_enable) {
      {
      _rtl92d_phy_pimode_switch(hw, 0);
      }
    } else {
    }
    {
    _rtl92d_phy_reload_adda_registers(hw, (u32 *)(& adda_reg), (u32 *)(& rtlphy->adda_backup),
                                      16U);
    _rtl92d_phy_reload_mac_registers(hw, (u32 *)(& iqk_mac_reg), (u32 *)(& rtlphy->iqk_mac_backup));
    }
    if ((int )is2t) {
      {
      _rtl92d_phy_reload_adda_registers(hw, (u32 *)(& iqk_bb_reg), (u32 *)(& rtlphy->iqk_bb_backup),
                                        10U);
      }
    } else {
      {
      _rtl92d_phy_reload_adda_registers(hw, (u32 *)(& iqk_bb_reg), (u32 *)(& rtlphy->iqk_bb_backup),
                                        9U);
      }
    }
    {
    rtl_set_bbreg(hw, 3632U, 4294967295U, 16813056U);
    rtl_set_bbreg(hw, 3636U, 4294967295U, 16813056U);
    }
  } else {
  }
  {
  tmp___23 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                              0L);
  }
  if (tmp___23 != 0L) {
    {
    printk("\017rtl8192de: <==\n");
    }
  } else {
  }
  return;
}
}
static void _rtl92d_phy_iq_calibrate_5g_normal(struct ieee80211_hw *hw , long (*result)[8U] ,
                                               u8 t )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_hal *rtlhal ;
  u8 patha_ok ;
  u8 pathb_ok ;
  u32 adda_reg[16U] ;
  u32 iqk_mac_reg[4U] ;
  u32 iqk_bb_reg[10U] ;
  u32 bbvalue ;
  bool is2t ;
  long tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  u32 tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  long tmp___10 ;
  u32 tmp___11 ;
  u32 tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  u32 tmp___15 ;
  u32 tmp___16 ;
  u32 tmp___17 ;
  u32 tmp___18 ;
  long tmp___19 ;
  u32 tmp___20 ;
  u32 tmp___21 ;
  long tmp___22 ;
  long tmp___23 ;
  long tmp___24 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rtlhal = & rtlpriv->rtlhal;
  adda_reg[0] = 2140U;
  adda_reg[1] = 3692U;
  adda_reg[2] = 3696U;
  adda_reg[3] = 3700U;
  adda_reg[4] = 3704U;
  adda_reg[5] = 3708U;
  adda_reg[6] = 3712U;
  adda_reg[7] = 3716U;
  adda_reg[8] = 3720U;
  adda_reg[9] = 3724U;
  adda_reg[10] = 3792U;
  adda_reg[11] = 3796U;
  adda_reg[12] = 3800U;
  adda_reg[13] = 3804U;
  adda_reg[14] = 3808U;
  adda_reg[15] = 3820U;
  iqk_mac_reg[0] = 1314U;
  iqk_mac_reg[1] = 1360U;
  iqk_mac_reg[2] = 1361U;
  iqk_mac_reg[3] = 64U;
  iqk_bb_reg[0] = 2160U;
  iqk_bb_reg[1] = 2144U;
  iqk_bb_reg[2] = 2148U;
  iqk_bb_reg[3] = 3080U;
  iqk_bb_reg[4] = 2164U;
  iqk_bb_reg[5] = 3076U;
  iqk_bb_reg[6] = 2048U;
  iqk_bb_reg[7] = 2188U;
  iqk_bb_reg[8] = 3152U;
  iqk_bb_reg[9] = 3160U;
  is2t = ((unsigned long )rtlhal->version & 119UL) == 34UL;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: IQK for 5G NORMAL:Start!!!\n");
    }
  } else {
  }
  __ms = 20UL;
  goto ldv_51274;
  ldv_51273:
  {
  __const_udelay(4295000UL);
  }
  ldv_51274:
  tmp___0 = __ms;
  __ms = __ms - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_51273;
  } else {
  }
  if ((unsigned int )t == 0U) {
    {
    bbvalue = rtl_get_bbreg(hw, 2048U, 4294967295U);
    tmp___1 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      printk("\017rtl8192de: ==>0x%08x\n", bbvalue);
      }
    } else {
    }
    {
    tmp___2 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      printk("\017rtl8192de: IQ Calibration for %s\n", (int )is2t ? (char *)"2T2R" : (char *)"1T1R");
      }
    } else {
    }
    {
    _rtl92d_phy_save_adda_registers(hw, (u32 *)(& adda_reg), (u32 *)(& rtlphy->adda_backup),
                                    16U);
    _rtl92d_phy_save_mac_registers(hw, (u32 *)(& iqk_mac_reg), (u32 *)(& rtlphy->iqk_mac_backup));
    }
    if ((int )is2t) {
      {
      _rtl92d_phy_save_adda_registers(hw, (u32 *)(& iqk_bb_reg), (u32 *)(& rtlphy->iqk_bb_backup),
                                      10U);
      }
    } else {
      {
      _rtl92d_phy_save_adda_registers(hw, (u32 *)(& iqk_bb_reg), (u32 *)(& rtlphy->iqk_bb_backup),
                                      9U);
      }
    }
  } else {
  }
  {
  _rtl92d_phy_path_adda_on(hw, (u32 *)(& adda_reg), 1, (int )is2t);
  _rtl92d_phy_mac_setting_calibration(hw, (u32 *)(& iqk_mac_reg), (u32 *)(& rtlphy->iqk_mac_backup));
  }
  if ((unsigned int )t == 0U) {
    {
    tmp___3 = rtl_get_bbreg(hw, 2080U, 256U);
    rtlphy->rfpi_enable = (unsigned int )((unsigned char )tmp___3) != 0U;
    }
  } else {
  }
  if (! rtlphy->rfpi_enable) {
    {
    _rtl92d_phy_pimode_switch(hw, 1);
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 2048U, 16777216U, 0U);
  rtl_set_bbreg(hw, 3076U, 4294967295U, 60839424U);
  rtl_set_bbreg(hw, 3080U, 4294967295U, 524516U);
  rtl_set_bbreg(hw, 2164U, 4294967295U, 572555264U);
  rtl_set_bbreg(hw, 2188U, 15728640U, 15U);
  rtl_set_bbreg(hw, 2920U, 4294967295U, 257949696U);
  }
  if ((int )is2t) {
    {
    rtl_set_bbreg(hw, 2924U, 4294967295U, 257949696U);
    }
  } else {
  }
  {
  tmp___4 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___4 != 0L) {
    {
    printk("\017rtl8192de: IQK setting!\n");
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 3624U, 4294967295U, 2155872256U);
  rtl_set_bbreg(hw, 3648U, 4294967295U, 268467200U);
  rtl_set_bbreg(hw, 3652U, 4294967295U, 16795648U);
  patha_ok = _rtl92d_phy_patha_iqk_5g_normal(hw, (int )is2t);
  }
  if ((unsigned int )patha_ok == 3U) {
    {
    tmp___5 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      printk("\017rtl8192de: Path A IQK Success!!\n");
      }
    } else {
    }
    {
    tmp___6 = rtl_get_bbreg(hw, 3732U, 4294967295U);
    (*(result + (unsigned long )t))[0] = (long )((tmp___6 & 67043328U) >> 16);
    tmp___7 = rtl_get_bbreg(hw, 3740U, 4294967295U);
    (*(result + (unsigned long )t))[1] = (long )((tmp___7 & 67043328U) >> 16);
    tmp___8 = rtl_get_bbreg(hw, 3748U, 4294967295U);
    (*(result + (unsigned long )t))[2] = (long )((tmp___8 & 67043328U) >> 16);
    tmp___9 = rtl_get_bbreg(hw, 3756U, 4294967295U);
    (*(result + (unsigned long )t))[3] = (long )((tmp___9 & 67043328U) >> 16);
    }
  } else
  if ((unsigned int )patha_ok == 1U) {
    {
    tmp___10 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                                0L);
    }
    if (tmp___10 != 0L) {
      {
      printk("\017rtl8192de: Path A IQK Only  Tx Success!!\n");
      }
    } else {
    }
    {
    tmp___11 = rtl_get_bbreg(hw, 3732U, 4294967295U);
    (*(result + (unsigned long )t))[0] = (long )((tmp___11 & 67043328U) >> 16);
    tmp___12 = rtl_get_bbreg(hw, 3740U, 4294967295U);
    (*(result + (unsigned long )t))[1] = (long )((tmp___12 & 67043328U) >> 16);
    }
  } else {
    {
    tmp___13 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                                0L);
    }
    if (tmp___13 != 0L) {
      {
      printk("\017rtl8192de: Path A IQK Fail!!\n");
      }
    } else {
    }
  }
  if ((int )is2t) {
    {
    _rtl92d_phy_path_adda_on(hw, (u32 *)(& adda_reg), 0, (int )is2t);
    pathb_ok = _rtl92d_phy_pathb_iqk_5g_normal(hw);
    }
    if ((unsigned int )pathb_ok == 3U) {
      {
      tmp___14 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                                  0L);
      }
      if (tmp___14 != 0L) {
        {
        printk("\017rtl8192de: Path B IQK Success!!\n");
        }
      } else {
      }
      {
      tmp___15 = rtl_get_bbreg(hw, 3764U, 4294967295U);
      (*(result + (unsigned long )t))[4] = (long )((tmp___15 & 67043328U) >> 16);
      tmp___16 = rtl_get_bbreg(hw, 3772U, 4294967295U);
      (*(result + (unsigned long )t))[5] = (long )((tmp___16 & 67043328U) >> 16);
      tmp___17 = rtl_get_bbreg(hw, 3780U, 4294967295U);
      (*(result + (unsigned long )t))[6] = (long )((tmp___17 & 67043328U) >> 16);
      tmp___18 = rtl_get_bbreg(hw, 3788U, 4294967295U);
      (*(result + (unsigned long )t))[7] = (long )((tmp___18 & 67043328U) >> 16);
      }
    } else
    if ((unsigned int )pathb_ok == 1U) {
      {
      tmp___19 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                                  0L);
      }
      if (tmp___19 != 0L) {
        {
        printk("\017rtl8192de: Path B Only Tx IQK Success!!\n");
        }
      } else {
      }
      {
      tmp___20 = rtl_get_bbreg(hw, 3764U, 4294967295U);
      (*(result + (unsigned long )t))[4] = (long )((tmp___20 & 67043328U) >> 16);
      tmp___21 = rtl_get_bbreg(hw, 3772U, 4294967295U);
      (*(result + (unsigned long )t))[5] = (long )((tmp___21 & 67043328U) >> 16);
      }
    } else {
      {
      tmp___22 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                                  0L);
      }
      if (tmp___22 != 0L) {
        {
        printk("\017rtl8192de: Path B IQK failed!!\n");
        }
      } else {
      }
    }
  } else {
  }
  {
  tmp___23 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                              0L);
  }
  if (tmp___23 != 0L) {
    {
    printk("\017rtl8192de: IQK:Back to BB mode, load original value!\n");
    }
  } else {
  }
  {
  rtl_set_bbreg(hw, 3624U, 4294967295U, 0U);
  }
  if ((unsigned int )t != 0U) {
    if ((int )is2t) {
      {
      _rtl92d_phy_reload_adda_registers(hw, (u32 *)(& iqk_bb_reg), (u32 *)(& rtlphy->iqk_bb_backup),
                                        10U);
      }
    } else {
      {
      _rtl92d_phy_reload_adda_registers(hw, (u32 *)(& iqk_bb_reg), (u32 *)(& rtlphy->iqk_bb_backup),
                                        9U);
      }
    }
    {
    _rtl92d_phy_reload_mac_registers(hw, (u32 *)(& iqk_mac_reg), (u32 *)(& rtlphy->iqk_mac_backup));
    }
    if (! rtlphy->rfpi_enable) {
      {
      _rtl92d_phy_pimode_switch(hw, 0);
      }
    } else {
    }
    {
    _rtl92d_phy_reload_adda_registers(hw, (u32 *)(& adda_reg), (u32 *)(& rtlphy->adda_backup),
                                      16U);
    }
  } else {
  }
  {
  tmp___24 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                              0L);
  }
  if (tmp___24 != 0L) {
    {
    printk("\017rtl8192de: <==\n");
    }
  } else {
  }
  return;
}
}
static bool _rtl92d_phy_simularity_compare(struct ieee80211_hw *hw , long (*result)[8U] ,
                                           u8 c1 , u8 c2 )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u32 i ;
  u32 j ;
  u32 diff ;
  u32 sim_bitmap ;
  u32 bound ;
  u8 final_candidate[2U] ;
  bool bresult ;
  bool is2t ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & rtlpriv->rtlhal;
  final_candidate[0] = 255U;
  final_candidate[1] = 255U;
  bresult = 1;
  is2t = ((unsigned long )rtlhal->version & 119UL) == 34UL;
  if ((int )is2t) {
    bound = 8U;
  } else {
    bound = 4U;
  }
  sim_bitmap = 0U;
  i = 0U;
  goto ldv_51293;
  ldv_51292:
  diff = (*(result + (unsigned long )c1))[i] > (*(result + (unsigned long )c2))[i] ? (u32 )(*(result + (unsigned long )c1))[i] - (u32 )(*(result + (unsigned long )c2))[i] : (u32 )(*(result + (unsigned long )c2))[i] - (u32 )(*(result + (unsigned long )c1))[i];
  if (diff > 3U) {
    if ((i == 2U || i == 6U) && sim_bitmap == 0U) {
      if ((*(result + (unsigned long )c1))[i] + (*(result + (unsigned long )c1))[i + 1U] == 0L) {
        final_candidate[i / 4U] = c2;
      } else
      if ((*(result + (unsigned long )c2))[i] + (*(result + (unsigned long )c2))[i + 1U] == 0L) {
        final_candidate[i / 4U] = c1;
      } else {
        sim_bitmap = sim_bitmap | (u32 )(1 << (int )i);
      }
    } else {
      sim_bitmap = sim_bitmap | (u32 )(1 << (int )i);
    }
  } else {
  }
  i = i + 1U;
  ldv_51293: ;
  if (i < bound) {
    goto ldv_51292;
  } else {
  }
  if (sim_bitmap == 0U) {
    i = 0U;
    goto ldv_51299;
    ldv_51298: ;
    if ((unsigned int )final_candidate[i] != 255U) {
      j = i * 4U;
      goto ldv_51296;
      ldv_51295:
      (*(result + 3UL))[j] = (*(result + (unsigned long )final_candidate[i]))[j];
      j = j + 1U;
      ldv_51296: ;
      if (j < (i + 1U) * 4U - 2U) {
        goto ldv_51295;
      } else {
      }
      bresult = 0;
    } else {
    }
    i = i + 1U;
    ldv_51299: ;
    if (i < bound / 4U) {
      goto ldv_51298;
    } else {
    }
    return (bresult);
  } else {
  }
  if ((sim_bitmap & 15U) == 0U) {
    i = 0U;
    goto ldv_51302;
    ldv_51301:
    (*(result + 3UL))[i] = (*(result + (unsigned long )c1))[i];
    i = i + 1U;
    ldv_51302: ;
    if (i <= 3U) {
      goto ldv_51301;
    } else {
    }
  } else
  if ((sim_bitmap & 3U) == 0U) {
    i = 0U;
    goto ldv_51305;
    ldv_51304:
    (*(result + 3UL))[i] = (*(result + (unsigned long )c1))[i];
    i = i + 1U;
    ldv_51305: ;
    if (i <= 1U) {
      goto ldv_51304;
    } else {
    }
  } else {
  }
  if ((sim_bitmap & 240U) == 0U && (int )is2t) {
    i = 4U;
    goto ldv_51308;
    ldv_51307:
    (*(result + 3UL))[i] = (*(result + (unsigned long )c1))[i];
    i = i + 1U;
    ldv_51308: ;
    if (i <= 7U) {
      goto ldv_51307;
    } else {
    }
  } else
  if ((sim_bitmap & 48U) == 0U) {
    i = 4U;
    goto ldv_51311;
    ldv_51310:
    (*(result + 3UL))[i] = (*(result + (unsigned long )c1))[i];
    i = i + 1U;
    ldv_51311: ;
    if (i <= 5U) {
      goto ldv_51310;
    } else {
    }
  } else {
  }
  return (0);
}
}
static void _rtl92d_phy_patha_fill_iqk_matrix(struct ieee80211_hw *hw , bool iqk_ok ,
                                              long (*result)[8U] , u8 final_candidate ,
                                              bool txonly )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u32 oldval_0 ;
  u32 val_x ;
  u32 tx0_a ;
  u32 reg ;
  long val_y ;
  long tx0_c ;
  bool is2t ;
  long tmp ;
  u32 tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  u32 tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & rtlpriv->rtlhal;
  is2t = (bool )(((unsigned long )rtlhal->version & 119UL) == 34UL || (unsigned int )rtlhal->macphymode == 1U);
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: Path A IQ Calibration %s !\n", (int )iqk_ok ? (char *)"Success" : (char *)"Failed");
    }
  } else {
  }
  if ((unsigned int )final_candidate == 255U) {
    return;
  } else
  if ((int )iqk_ok) {
    {
    tmp___0 = rtl_get_bbreg(hw, 3200U, 4294967295U);
    oldval_0 = tmp___0 >> 22;
    val_x = (u32 )(*(result + (unsigned long )final_candidate))[0];
    }
    if ((val_x & 512U) != 0U) {
      val_x = val_x | 4294966272U;
    } else {
    }
    {
    tx0_a = val_x * oldval_0 >> 8;
    tmp___1 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      printk("\017rtl8192de: X = 0x%x, tx0_a = 0x%x, oldval_0 0x%x\n", val_x, tx0_a,
             oldval_0);
      }
    } else {
    }
    {
    rtl_set_bbreg(hw, 3200U, 1023U, tx0_a);
    rtl_set_bbreg(hw, 3148U, 16777216U, (val_x * oldval_0 >> 7) & 1U);
    val_y = (*(result + (unsigned long )final_candidate))[1];
    }
    if ((val_y & 512L) != 0L) {
      val_y = val_y | 4294966272L;
    } else {
    }
    if (rtlhal->interfaceindex == 1U && (unsigned int )rtlhal->current_bandtype == 1U) {
      val_y = val_y + 3L;
    } else {
    }
    {
    tx0_c = val_y * (long )oldval_0 >> 8;
    tmp___2 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      printk("\017rtl8192de: Y = 0x%lx, tx0_c = 0x%lx\n", val_y, tx0_c);
      }
    } else {
    }
    {
    rtl_set_bbreg(hw, 3220U, 4026531840U, (u32 )((tx0_c & 960L) >> 6));
    rtl_set_bbreg(hw, 3200U, 4128768U, (u32 )tx0_c & 63U);
    }
    if ((int )is2t) {
      {
      rtl_set_bbreg(hw, 3148U, 67108864U, (u32 )(val_y * (long )oldval_0 >> 7) & 1U);
      }
    } else {
    }
    {
    tmp___4 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___4 != 0L) {
      {
      tmp___3 = rtl_get_bbreg(hw, 3200U, 4294967295U);
      printk("\017rtl8192de: 0xC80 = 0x%x\n", tmp___3);
      }
    } else {
    }
    if ((int )txonly) {
      {
      tmp___5 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                                 0L);
      }
      if (tmp___5 != 0L) {
        {
        printk("\017rtl8192de: only Tx OK\n");
        }
      } else {
      }
      return;
    } else {
    }
    {
    reg = (u32 )(*(result + (unsigned long )final_candidate))[2];
    rtl_set_bbreg(hw, 3092U, 1023U, reg);
    reg = (u32 )(*(result + (unsigned long )final_candidate))[3] & 63U;
    rtl_set_bbreg(hw, 3092U, 64512U, reg);
    reg = (u32 )((*(result + (unsigned long )final_candidate))[3] >> 6) & 15U;
    rtl_set_bbreg(hw, 3232U, 4026531840U, reg);
    }
  } else {
  }
  return;
}
}
static void _rtl92d_phy_pathb_fill_iqk_matrix(struct ieee80211_hw *hw , bool iqk_ok ,
                                              long (*result)[8U] , u8 final_candidate ,
                                              bool txonly )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u32 oldval_1 ;
  u32 val_x ;
  u32 tx1_a ;
  u32 reg ;
  long val_y ;
  long tx1_c ;
  long tmp ;
  u32 tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & rtlpriv->rtlhal;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: Path B IQ Calibration %s !\n", (int )iqk_ok ? (char *)"Success" : (char *)"Failed");
    }
  } else {
  }
  if ((unsigned int )final_candidate == 255U) {
    return;
  } else
  if ((int )iqk_ok) {
    {
    tmp___0 = rtl_get_bbreg(hw, 3208U, 4294967295U);
    oldval_1 = tmp___0 >> 22;
    val_x = (u32 )(*(result + (unsigned long )final_candidate))[4];
    }
    if ((val_x & 512U) != 0U) {
      val_x = val_x | 4294966272U;
    } else {
    }
    {
    tx1_a = val_x * oldval_1 >> 8;
    tmp___1 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      printk("\017rtl8192de: X = 0x%x, tx1_a = 0x%x\n", val_x, tx1_a);
      }
    } else {
    }
    {
    rtl_set_bbreg(hw, 3208U, 1023U, tx1_a);
    rtl_set_bbreg(hw, 3148U, 268435456U, (val_x * oldval_1 >> 7) & 1U);
    val_y = (*(result + (unsigned long )final_candidate))[5];
    }
    if ((val_y & 512L) != 0L) {
      val_y = val_y | 4294966272L;
    } else {
    }
    if ((unsigned int )rtlhal->current_bandtype == 1U) {
      val_y = val_y + 3L;
    } else {
    }
    {
    tx1_c = val_y * (long )oldval_1 >> 8;
    tmp___2 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      printk("\017rtl8192de: Y = 0x%lx, tx1_c = 0x%lx\n", val_y, tx1_c);
      }
    } else {
    }
    {
    rtl_set_bbreg(hw, 3228U, 4026531840U, (u32 )((tx1_c & 960L) >> 6));
    rtl_set_bbreg(hw, 3208U, 4128768U, (u32 )tx1_c & 63U);
    rtl_set_bbreg(hw, 3148U, 1073741824U, (u32 )(val_y * (long )oldval_1 >> 7) & 1U);
    }
    if ((int )txonly) {
      return;
    } else {
    }
    {
    reg = (u32 )(*(result + (unsigned long )final_candidate))[6];
    rtl_set_bbreg(hw, 3100U, 1023U, reg);
    reg = (u32 )(*(result + (unsigned long )final_candidate))[7] & 63U;
    rtl_set_bbreg(hw, 3100U, 64512U, reg);
    reg = (u32 )((*(result + (unsigned long )final_candidate))[7] >> 6) & 15U;
    rtl_set_bbreg(hw, 3192U, 61440U, reg);
    }
  } else {
  }
  return;
}
}
void rtl92d_phy_iq_calibrate(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_hal *rtlhal ;
  long result[4U][8U] ;
  u8 i ;
  u8 final_candidate ;
  u8 indexforchannel ;
  bool patha_ok ;
  bool pathb_ok ;
  long rege94 ;
  long rege9c ;
  long regea4 ;
  long regeac ;
  long regeb4 ;
  long regebc ;
  long regec4 ;
  long regecc ;
  long regtmp ;
  bool is12simular ;
  bool is13simular ;
  bool is23simular ;
  unsigned long flag ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  s32 tmp___4 ;
  s32 tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rtlhal = & rtlpriv->rtlhal;
  regtmp = 0L;
  flag = 0UL;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: IQK:Start!!!channel %d\n", (int )rtlphy->current_channel);
    }
  } else {
  }
  i = 0U;
  goto ldv_51370;
  ldv_51369:
  result[0][(int )i] = 0L;
  result[1][(int )i] = 0L;
  result[2][(int )i] = 0L;
  result[3][(int )i] = 0L;
  i = (u8 )((int )i + 1);
  ldv_51370: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_51369;
  } else {
  }
  {
  final_candidate = 255U;
  patha_ok = 0;
  pathb_ok = 0;
  is12simular = 0;
  is23simular = 0;
  is13simular = 0;
  tmp___0 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\017rtl8192de: IQK !!!currentband %d\n", (unsigned int )rtlhal->current_bandtype);
    }
  } else {
  }
  {
  rtl92d_acquire_cckandrw_pagea_ctl(hw, & flag);
  i = 0U;
  }
  goto ldv_51377;
  ldv_51376: ;
  if ((unsigned int )rtlhal->current_bandtype == 1U) {
    {
    _rtl92d_phy_iq_calibrate_5g_normal(hw, (long (*)[8])(& result), (int )i);
    }
  } else
  if ((unsigned int )rtlhal->current_bandtype == 0U) {
    if (((unsigned long )rtlhal->version & 119UL) == 34UL) {
      {
      _rtl92d_phy_iq_calibrate(hw, (long (*)[8])(& result), (int )i, 1);
      }
    } else {
      {
      _rtl92d_phy_iq_calibrate(hw, (long (*)[8])(& result), (int )i, 0);
      }
    }
  } else {
  }
  if ((unsigned int )i == 1U) {
    {
    is12simular = _rtl92d_phy_simularity_compare(hw, (long (*)[8])(& result), 0, 1);
    }
    if ((int )is12simular) {
      final_candidate = 0U;
      goto ldv_51372;
    } else {
    }
  } else {
  }
  if ((unsigned int )i == 2U) {
    {
    is13simular = _rtl92d_phy_simularity_compare(hw, (long (*)[8])(& result), 0, 2);
    }
    if ((int )is13simular) {
      final_candidate = 0U;
      goto ldv_51372;
    } else {
    }
    {
    is23simular = _rtl92d_phy_simularity_compare(hw, (long (*)[8])(& result), 1, 2);
    }
    if ((int )is23simular) {
      final_candidate = 1U;
    } else {
      i = 0U;
      goto ldv_51374;
      ldv_51373:
      regtmp = regtmp + result[3][(int )i];
      i = (u8 )((int )i + 1);
      ldv_51374: ;
      if ((unsigned int )i <= 7U) {
        goto ldv_51373;
      } else {
      }
      if (regtmp != 0L) {
        final_candidate = 3U;
      } else {
        final_candidate = 255U;
      }
    }
  } else {
  }
  i = (u8 )((int )i + 1);
  ldv_51377: ;
  if ((unsigned int )i <= 2U) {
    goto ldv_51376;
  } else {
  }
  ldv_51372:
  {
  rtl92d_release_cckandrw_pagea_ctl(hw, & flag);
  i = 0U;
  }
  goto ldv_51379;
  ldv_51378:
  {
  rege94 = result[(int )i][0];
  rege9c = result[(int )i][1];
  regea4 = result[(int )i][2];
  regeac = result[(int )i][3];
  regeb4 = result[(int )i][4];
  regebc = result[(int )i][5];
  regec4 = result[(int )i][6];
  regecc = result[(int )i][7];
  tmp___1 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    printk("\017rtl8192de: IQK: rege94=%lx rege9c=%lx regea4=%lx regeac=%lx regeb4=%lx regebc=%lx regec4=%lx regecc=%lx\n",
           rege94, rege9c, regea4, regeac, regeb4, regebc, regec4, regecc);
    }
  } else {
  }
  i = (u8 )((int )i + 1);
  ldv_51379: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_51378;
  } else {
  }
  if ((unsigned int )final_candidate != 255U) {
    {
    rege94 = result[(int )final_candidate][0];
    rtlphy->reg_e94 = (s32 )rege94;
    rege9c = result[(int )final_candidate][1];
    rtlphy->reg_e9c = (s32 )rege9c;
    regea4 = result[(int )final_candidate][2];
    regeac = result[(int )final_candidate][3];
    regeb4 = result[(int )final_candidate][4];
    rtlphy->reg_eb4 = (s32 )regeb4;
    regebc = result[(int )final_candidate][5];
    rtlphy->reg_ebc = (s32 )regebc;
    regec4 = result[(int )final_candidate][6];
    regecc = result[(int )final_candidate][7];
    tmp___2 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      printk("\017rtl8192de: IQK: final_candidate is %x\n", (int )final_candidate);
      }
    } else {
    }
    {
    tmp___3 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___3 != 0L) {
      {
      printk("\017rtl8192de: IQK: rege94=%lx rege9c=%lx regea4=%lx regeac=%lx regeb4=%lx regebc=%lx regec4=%lx regecc=%lx\n",
             rege94, rege9c, regea4, regeac, regeb4, regebc, regec4, regecc);
      }
    } else {
    }
    pathb_ok = 1;
    patha_ok = pathb_ok;
  } else {
    tmp___4 = 256;
    rtlphy->reg_eb4 = tmp___4;
    rtlphy->reg_e94 = tmp___4;
    tmp___5 = 0;
    rtlphy->reg_ebc = tmp___5;
    rtlphy->reg_e9c = tmp___5;
  }
  if (rege94 != 0L) {
    {
    _rtl92d_phy_patha_fill_iqk_matrix(hw, (int )patha_ok, (long (*)[8])(& result),
                                      (int )final_candidate, regea4 == 0L);
    }
  } else {
  }
  if (((unsigned long )rtlhal->version & 119UL) == 34UL) {
    if (regeb4 != 0L) {
      {
      _rtl92d_phy_pathb_fill_iqk_matrix(hw, (int )pathb_ok, (long (*)[8])(& result),
                                        (int )final_candidate, regec4 == 0L);
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )final_candidate != 255U) {
    {
    indexforchannel = rtl92d_get_rightchnlplace_for_iqk((int )rtlphy->current_channel);
    i = 0U;
    }
    goto ldv_51382;
    ldv_51381:
    rtlphy->iqk_matrix[(int )indexforchannel].value[0][(int )i] = result[(int )final_candidate][(int )i];
    i = (u8 )((int )i + 1);
    ldv_51382: ;
    if ((unsigned int )i <= 7U) {
      goto ldv_51381;
    } else {
    }
    {
    rtlphy->iqk_matrix[(int )indexforchannel].iqk_done = 1;
    tmp___8 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 96ULL) != 0ULL,
                               0L);
    }
    if (tmp___8 != 0L) {
      {
      tmp___9 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___9 != 0L) {
        {
        tmp___6 = preempt_count();
        tmp___7 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> IQK OK indexforchannel %d\n", "rtl92d_phy_iq_calibrate",
               (unsigned long )tmp___7 & 2096896UL, ((unsigned long )tmp___6 & 0xffffffffffdfffffUL) != 0UL,
               (int )indexforchannel);
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
void rtl92d_phy_reload_iqk_setting(struct ieee80211_hw *hw , u8 channel )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_hal *rtlhal ;
  u8 indexforchannel ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  long tmp___17 ;
  long tmp___18 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rtlhal = & rtlpriv->rtlhal;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> channel %d\n", "rtl92d_phy_reload_iqk_setting",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             (int )channel);
      }
    } else {
    }
  } else {
  }
  {
  indexforchannel = rtl92d_get_rightchnlplace_for_iqk((int )channel);
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> indexforchannel %d done %d\n", "rtl92d_phy_reload_iqk_setting",
             (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL,
             (int )indexforchannel, (int )rtlphy->iqk_matrix[(int )indexforchannel].iqk_done);
      }
    } else {
    }
  } else {
  }
  if (! rtlhal->load_imrandiqk_setting_for2g || (unsigned int )indexforchannel != 0U) {
    {
    tmp___13 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 64ULL) != 0ULL,
                                0L);
    }
    if (tmp___13 != 0L) {
      {
      tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___14 != 0L) {
        {
        tmp___11 = preempt_count();
        tmp___12 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Just Read IQK Matrix reg for channel:%d....\n",
               "rtl92d_phy_reload_iqk_setting", (unsigned long )tmp___12 & 2096896UL,
               ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL, (int )channel);
        }
      } else {
      }
    } else {
    }
    if ((unsigned long )((long *)(& rtlphy->iqk_matrix[(int )indexforchannel].value)) != (unsigned long )((long *)0L)) {
      {
      _rtl92d_phy_patha_fill_iqk_matrix(hw, 1, (long (*)[8])(& rtlphy->iqk_matrix[(int )indexforchannel].value),
                                        0, rtlphy->iqk_matrix[(int )indexforchannel].value[0][2] == 0L);
      }
    } else {
    }
    if (((unsigned long )rtlhal->version & 119UL) == 34UL) {
      if (rtlphy->iqk_matrix[(int )indexforchannel].value[0][4] != 0L) {
        {
        _rtl92d_phy_pathb_fill_iqk_matrix(hw, 1, (long (*)[8])(& rtlphy->iqk_matrix[(int )indexforchannel].value),
                                          0, rtlphy->iqk_matrix[(int )indexforchannel].value[0][6] == 0L);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  rtlphy->need_iqk = 0;
  tmp___17 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                              0L);
  }
  if (tmp___17 != 0L) {
    {
    tmp___18 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___18 != 0L) {
      {
      tmp___15 = preempt_count();
      tmp___16 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <====\n", "rtl92d_phy_reload_iqk_setting",
             (unsigned long )tmp___16 & 2096896UL, ((unsigned long )tmp___15 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static u32 _rtl92d_phy_get_abs(u32 val1 , u32 val2 )
{
  u32 ret ;
  {
  if (val1 >= val2) {
    ret = val1 - val2;
  } else {
    ret = val2 - val1;
  }
  return (ret);
}
}
static bool _rtl92d_is_legal_5g_channel(struct ieee80211_hw *hw , u8 channel )
{
  int i ;
  u8 channel_5g[45U] ;
  {
  channel_5g[0] = 36U;
  channel_5g[1] = 38U;
  channel_5g[2] = 40U;
  channel_5g[3] = 42U;
  channel_5g[4] = 44U;
  channel_5g[5] = 46U;
  channel_5g[6] = 48U;
  channel_5g[7] = 50U;
  channel_5g[8] = 52U;
  channel_5g[9] = 54U;
  channel_5g[10] = 56U;
  channel_5g[11] = 58U;
  channel_5g[12] = 60U;
  channel_5g[13] = 62U;
  channel_5g[14] = 64U;
  channel_5g[15] = 100U;
  channel_5g[16] = 102U;
  channel_5g[17] = 104U;
  channel_5g[18] = 106U;
  channel_5g[19] = 108U;
  channel_5g[20] = 110U;
  channel_5g[21] = 112U;
  channel_5g[22] = 114U;
  channel_5g[23] = 116U;
  channel_5g[24] = 118U;
  channel_5g[25] = 120U;
  channel_5g[26] = 122U;
  channel_5g[27] = 124U;
  channel_5g[28] = 126U;
  channel_5g[29] = 128U;
  channel_5g[30] = 130U;
  channel_5g[31] = 132U;
  channel_5g[32] = 134U;
  channel_5g[33] = 136U;
  channel_5g[34] = 138U;
  channel_5g[35] = 140U;
  channel_5g[36] = 149U;
  channel_5g[37] = 151U;
  channel_5g[38] = 153U;
  channel_5g[39] = 155U;
  channel_5g[40] = 157U;
  channel_5g[41] = 159U;
  channel_5g[42] = 161U;
  channel_5g[43] = 163U;
  channel_5g[44] = 165U;
  i = 0;
  goto ldv_51406;
  ldv_51405: ;
  if ((int )channel == (int )channel_5g[i]) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_51406: ;
  if ((unsigned int )i <= 44U) {
    goto ldv_51405;
  } else {
  }
  return (0);
}
}
static void _rtl92d_phy_calc_curvindex(struct ieee80211_hw *hw , u32 *targetchnl ,
                                       u32 *curvecount_val , bool is5g , u32 *curveindex )
{
  struct rtl_priv *rtlpriv ;
  u32 smallest_abs_val ;
  u32 u4tmp ;
  u8 i ;
  u8 j ;
  u8 chnl_num ;
  bool tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  smallest_abs_val = 4294967295U;
  chnl_num = (int )is5g ? 221U : 14U;
  i = 0U;
  goto ldv_51426;
  ldv_51425: ;
  if ((int )is5g) {
    {
    tmp = _rtl92d_is_legal_5g_channel(hw, (int )((unsigned int )i + 1U));
    }
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      goto ldv_51421;
    } else {
    }
  } else {
  }
  *(curveindex + (unsigned long )i) = 0U;
  j = 0U;
  goto ldv_51423;
  ldv_51422:
  {
  u4tmp = _rtl92d_phy_get_abs(*(targetchnl + (unsigned long )i), *(curvecount_val + (unsigned long )j));
  }
  if (u4tmp < smallest_abs_val) {
    *(curveindex + (unsigned long )i) = (u32 )j;
    smallest_abs_val = u4tmp;
  } else {
  }
  j = (u8 )((int )j + 1);
  ldv_51423: ;
  if ((int )((signed char )j) >= 0) {
    goto ldv_51422;
  } else {
  }
  {
  smallest_abs_val = 4294967295U;
  tmp___1 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    printk("\017rtl8192de: curveindex[%d] = %x\n", (int )i, *(curveindex + (unsigned long )i));
    }
  } else {
  }
  ldv_51421:
  i = (u8 )((int )i + 1);
  ldv_51426: ;
  if ((int )i < (int )chnl_num) {
    goto ldv_51425;
  } else {
  }
  return;
}
}
static void _rtl92d_phy_reload_lck_setting(struct ieee80211_hw *hw , u8 channel )
{
  struct rtl_priv *rtlpriv ;
  u8 erfpath ;
  u32 u4tmp ;
  u32 u4regvalue ;
  bool bneed_powerdown_radio ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  u32 tmp___7 ;
  long tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  long tmp___11 ;
  long tmp___12 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  erfpath = (u8 )((unsigned int )rtlpriv->rtlhal.current_bandtype != 1U && ((unsigned long )rtlpriv->rtlhal.version & 119UL) == 34UL);
  u4tmp = 0U;
  u4regvalue = 0U;
  bneed_powerdown_radio = 0;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> path %d\n", "_rtl92d_phy_reload_lck_setting",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             (int )erfpath);
      }
    } else {
    }
  } else {
  }
  {
  tmp___3 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___3 != 0L) {
    {
    printk("\017rtl8192de: band type = %d\n", (unsigned int )rtlpriv->rtlhal.current_bandtype);
    }
  } else {
  }
  {
  tmp___4 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___4 != 0L) {
    {
    printk("\017rtl8192de: channel = %d\n", (int )channel);
    }
  } else {
  }
  if ((unsigned int )rtlpriv->rtlhal.current_bandtype == 1U) {
    {
    u4tmp = curveindex_5g[(int )channel + -1];
    tmp___5 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      printk("\017rtl8192de: ver 1 set RF-A, 5G,\t0x28 = 0x%ulx !!\n", u4tmp);
      }
    } else {
    }
    if ((unsigned int )rtlpriv->rtlhal.macphymode == 1U && rtlpriv->rtlhal.interfaceindex == 1U) {
      {
      bneed_powerdown_radio = rtl92d_phy_enable_anotherphy(hw, 0);
      rtlpriv->rtlhal.during_mac1init_radioa = 1;
      }
      if ((int )bneed_powerdown_radio) {
        {
        _rtl92d_phy_enable_rf_env(hw, (int )erfpath, & u4regvalue);
        }
      } else {
      }
    } else {
    }
    {
    rtl_set_rfreg(hw, (enum radio_path )erfpath, 40U, 260096U, u4tmp);
    }
    if ((int )bneed_powerdown_radio) {
      {
      _rtl92d_phy_restore_rf_env(hw, (int )erfpath, & u4regvalue);
      }
    } else {
    }
    if ((int )rtlpriv->rtlhal.during_mac1init_radioa) {
      {
      rtl92d_phy_powerdown_anotherphy(hw, 0);
      }
    } else {
    }
  } else
  if ((unsigned int )rtlpriv->rtlhal.current_bandtype == 0U) {
    {
    u4tmp = curveindex_2g[(int )channel + -1];
    tmp___6 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___6 != 0L) {
      {
      printk("\017rtl8192de: ver 3 set RF-B, 2G, 0x28 = 0x%ulx !!\n", u4tmp);
      }
    } else {
    }
    if ((unsigned int )rtlpriv->rtlhal.macphymode == 1U && rtlpriv->rtlhal.interfaceindex == 0U) {
      {
      bneed_powerdown_radio = rtl92d_phy_enable_anotherphy(hw, 1);
      rtlpriv->rtlhal.during_mac0init_radiob = 1;
      }
      if ((int )bneed_powerdown_radio) {
        {
        _rtl92d_phy_enable_rf_env(hw, (int )erfpath, & u4regvalue);
        }
      } else {
      }
    } else {
    }
    {
    rtl_set_rfreg(hw, (enum radio_path )erfpath, 40U, 260096U, u4tmp);
    tmp___8 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___8 != 0L) {
      {
      tmp___7 = rtl_get_rfreg(hw, (enum radio_path )erfpath, 40U, 260096U);
      printk("\017rtl8192de: ver 3 set RF-B, 2G, 0x28 = 0x%ulx !!\n", tmp___7);
      }
    } else {
    }
    if ((int )bneed_powerdown_radio) {
      {
      _rtl92d_phy_restore_rf_env(hw, (int )erfpath, & u4regvalue);
      }
    } else {
    }
    if ((int )rtlpriv->rtlhal.during_mac0init_radiob) {
      {
      rtl92d_phy_powerdown_anotherphy(hw, 1);
      }
    } else {
    }
  } else {
  }
  {
  tmp___11 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                              0L);
  }
  if (tmp___11 != 0L) {
    {
    tmp___12 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___12 != 0L) {
      {
      tmp___9 = preempt_count();
      tmp___10 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <====\n", "_rtl92d_phy_reload_lck_setting",
             (unsigned long )tmp___10 & 2096896UL, ((unsigned long )tmp___9 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void _rtl92d_phy_lc_calibrate_sw(struct ieee80211_hw *hw , bool is2t )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  struct rtl_pci *rtlpci ;
  u8 tmpreg ;
  u8 index ;
  u8 rf_mode[2U] ;
  u8 path ;
  u8 i ;
  u32 u4tmp ;
  u32 offset ;
  u32 curvecount_val[128U] ;
  unsigned int tmp ;
  u16 timeout ;
  u16 timecount ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  u32 readval ;
  u32 readval2 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & rtlpriv->rtlhal;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  path = (int )is2t ? 2U : 1U;
  curvecount_val[0] = 0U;
  tmp = 1U;
  {
  while (1) {
    while_continue: ;
    if (tmp >= 128U) {
      goto while_break;
    } else {
    }
    curvecount_val[tmp] = 0U;
    tmp = tmp + 1U;
  }
  while_break: ;
  }
  {
  timeout = 800U;
  timecount = 0U;
  tmpreg = rtl_read_byte(rtlpriv, 3331U);
  }
  if (((int )tmpreg & 112) != 0) {
    {
    rtl_write_byte(rtlpriv, 3331U, (int )tmpreg & 143);
    }
  } else {
    {
    rtl_write_byte(rtlpriv, 1314U, 255);
    }
  }
  {
  rtl_set_bbreg(hw, 2188U, 15728640U, 15U);
  index = 0U;
  }
  goto ldv_51468;
  ldv_51467:
  {
  offset = (unsigned int )index == 0U ? 3152U : 3160U;
  rf_mode[(int )index] = rtl_read_byte(rtlpriv, offset);
  rtl_set_rfreg(hw, (enum radio_path )index, 0U, 1048575U, 65536U);
  }
  if ((int )rtlpci->init_ready) {
    {
    rtl_set_rfreg(hw, (enum radio_path )index, 43U, 131072U, 0U);
    rtl_set_rfreg(hw, (enum radio_path )index, 24U, 32768U, 1U);
    }
  } else {
  }
  {
  u4tmp = rtl_get_rfreg(hw, (enum radio_path )index, 42U, 1048575U);
  }
  goto ldv_51460;
  ldv_51459:
  __ms = 50UL;
  goto ldv_51457;
  ldv_51456:
  {
  __const_udelay(4295000UL);
  }
  ldv_51457:
  tmp___0 = __ms;
  __ms = __ms - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_51456;
  } else {
  }
  {
  timecount = (unsigned int )timecount + 50U;
  u4tmp = rtl_get_rfreg(hw, (enum radio_path )index, 42U, 1048575U);
  }
  ldv_51460: ;
  if (((unsigned long )u4tmp & 2048UL) == 0UL && (int )timecount <= (int )timeout) {
    goto ldv_51459;
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    printk("\017rtl8192de: PHY_LCK finish delay for %d ms=2\n", (int )timecount);
    }
  } else {
  }
  {
  u4tmp = rtl_get_rfreg(hw, (enum radio_path )index, 40U, 1048575U);
  }
  if ((unsigned int )index == 0U && rtlhal->interfaceindex == 0U) {
    {
    tmp___2 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      printk("\017rtl8192de: path-A / 5G LCK\n");
      }
    } else {
    }
  } else {
    {
    tmp___3 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                               0L);
    }
    if (tmp___3 != 0L) {
      {
      printk("\017rtl8192de: path-B / 2.4G LCK\n");
      }
    } else {
    }
  }
  {
  memset((void *)(& curvecount_val), 0, 128UL);
  rtl_set_rfreg(hw, (enum radio_path )index, 24U, 32768U, 0U);
  tmp___4 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___4 != 0L) {
    {
    printk("\017rtl8192de: set RF 0x18[15] = 0\n");
    }
  } else {
  }
  i = 0U;
  goto ldv_51465;
  ldv_51464:
  {
  readval = 0U;
  readval2 = 0U;
  rtl_set_rfreg(hw, (enum radio_path )index, 63U, 127U, (u32 )i);
  rtl_set_rfreg(hw, (enum radio_path )index, 77U, 1048575U, 0U);
  readval = rtl_get_rfreg(hw, (enum radio_path )index, 79U, 1048575U);
  curvecount_val[(int )i * 2 + 1] = (readval & 1048544U) >> 5;
  readval2 = rtl_get_rfreg(hw, (enum radio_path )index, 80U, 1047552U);
  curvecount_val[(int )i * 2] = ((readval & 31U) << 10) | readval2;
  i = (u8 )((int )i + 1);
  }
  ldv_51465: ;
  if ((unsigned int )i <= 63U) {
    goto ldv_51464;
  } else {
  }
  if ((unsigned int )index == 0U && rtlhal->interfaceindex == 0U) {
    {
    _rtl92d_phy_calc_curvindex(hw, (u32 *)(& targetchnl_5g), (u32 *)(& curvecount_val),
                               1, (u32 *)(& curveindex_5g));
    }
  } else {
    {
    _rtl92d_phy_calc_curvindex(hw, (u32 *)(& targetchnl_2g), (u32 *)(& curvecount_val),
                               0, (u32 *)(& curveindex_2g));
    }
  }
  {
  rtl_set_rfreg(hw, (enum radio_path )index, 43U, 131072U, 1U);
  index = (u8 )((int )index + 1);
  }
  ldv_51468: ;
  if ((int )index < (int )path) {
    goto ldv_51467;
  } else {
  }
  index = 0U;
  goto ldv_51471;
  ldv_51470:
  {
  offset = (unsigned int )index == 0U ? 3152U : 3160U;
  rtl_write_byte(rtlpriv, offset, 80);
  rtl_write_byte(rtlpriv, offset, (int )rf_mode[(int )index]);
  index = (u8 )((int )index + 1);
  }
  ldv_51471: ;
  if ((int )index < (int )path) {
    goto ldv_51470;
  } else {
  }
  if (((int )tmpreg & 112) != 0) {
    {
    rtl_write_byte(rtlpriv, 3331U, (int )tmpreg);
    }
  } else {
    {
    rtl_write_byte(rtlpriv, 1314U, 0);
    }
  }
  {
  rtl_set_bbreg(hw, 2188U, 15728640U, 0U);
  _rtl92d_phy_reload_lck_setting(hw, (int )rtlpriv->phy.current_channel);
  }
  return;
}
}
static void _rtl92d_phy_lc_calibrate(struct ieee80211_hw *hw , bool is2t )
{
  struct rtl_priv *rtlpriv ;
  long tmp ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: cosa PHY_LCK ver=2\n");
    }
  } else {
  }
  {
  _rtl92d_phy_lc_calibrate_sw(hw, (int )is2t);
  }
  return;
}
}
void rtl92d_phy_lc_calibrate(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_hal *rtlhal ;
  u32 timeout ;
  u32 timecount ;
  long tmp ;
  long tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rtlhal = & rtlpriv->rtlhal;
  timeout = 2000U;
  timecount = 0U;
  goto ldv_51487;
  ldv_51486:
  {
  __const_udelay(214750UL);
  timecount = timecount + 50U;
  }
  ldv_51487: ;
  if ((int )rtlpriv->mac80211.act_scanning && timecount < timeout) {
    goto ldv_51486;
  } else {
  }
  {
  rtlphy->lck_inprogress = 1U;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: LCK:Start!!! currentband %x delay %d ms\n", (unsigned int )rtlhal->current_bandtype,
           timecount);
    }
  } else {
  }
  if (((unsigned long )rtlhal->version & 119UL) == 34UL) {
    {
    _rtl92d_phy_lc_calibrate(hw, 1);
    }
  } else {
    {
    _rtl92d_phy_lc_calibrate(hw, 0);
    }
  }
  {
  rtlphy->lck_inprogress = 0U;
  tmp___0 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[17] & 4UL) != 0UL,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\017rtl8192de: LCK:Finish!!!\n");
    }
  } else {
  }
  return;
}
}
void rtl92d_phy_ap_calibrate(struct ieee80211_hw *hw , char delta )
{
  {
  return;
}
}
static bool _rtl92d_phy_set_sw_chnl_cmdarray(struct swchnlcmd *cmdtable , u32 cmdtableidx ,
                                             u32 cmdtablesz , enum swchnlcmd_id cmdid ,
                                             u32 para1 , u32 para2 , u32 msdelay )
{
  struct swchnlcmd *pcmd ;
  {
  if ((unsigned long )cmdtable == (unsigned long )((struct swchnlcmd *)0)) {
    {
    printk("\017rtl8192de:%s(): cmdtable cannot be NULL\n", "_rtl92d_phy_set_sw_chnl_cmdarray");
    }
    return (0);
  } else {
  }
  if (cmdtableidx >= cmdtablesz) {
    return (0);
  } else {
  }
  pcmd = cmdtable + (unsigned long )cmdtableidx;
  pcmd->cmdid = cmdid;
  pcmd->para1 = para1;
  pcmd->para2 = para2;
  pcmd->msdelay = msdelay;
  return (1);
}
}
void rtl92d_phy_reset_iqk_result(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  u8 i ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> settings regs %d default regs %d\n", "rtl92d_phy_reset_iqk_result",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             46, 8);
      }
    } else {
    }
  } else {
  }
  i = 0U;
  goto ldv_51512;
  ldv_51511:
  rtlphy->iqk_matrix[(int )i].value[0][0] = 256L;
  rtlphy->iqk_matrix[(int )i].value[0][2] = 256L;
  rtlphy->iqk_matrix[(int )i].value[0][4] = 256L;
  rtlphy->iqk_matrix[(int )i].value[0][6] = 256L;
  rtlphy->iqk_matrix[(int )i].value[0][1] = 0L;
  rtlphy->iqk_matrix[(int )i].value[0][3] = 0L;
  rtlphy->iqk_matrix[(int )i].value[0][5] = 0L;
  rtlphy->iqk_matrix[(int )i].value[0][7] = 0L;
  rtlphy->iqk_matrix[(int )i].iqk_done = 0;
  i = (u8 )((int )i + 1);
  ldv_51512: ;
  if ((unsigned int )i <= 45U) {
    goto ldv_51511;
  } else {
  }
  return;
}
}
static bool _rtl92d_phy_sw_chnl_step_by_step(struct ieee80211_hw *hw , u8 channel ,
                                             u8 *stage , u8 *step , u32 *delay )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct swchnlcmd precommoncmd[16U] ;
  u32 precommoncmdcnt ;
  struct swchnlcmd postcommoncmd[16U] ;
  u32 postcommoncmdcnt ;
  struct swchnlcmd rfdependcmd[16U] ;
  u32 rfdependcmdcnt ;
  struct swchnlcmd *currentcmd ;
  u8 rfpath ;
  u8 num_total_rfpath ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  currentcmd = (struct swchnlcmd *)0;
  num_total_rfpath = rtlphy->num_total_rfpath;
  precommoncmdcnt = 0U;
  tmp = precommoncmdcnt;
  precommoncmdcnt = precommoncmdcnt + 1U;
  _rtl92d_phy_set_sw_chnl_cmdarray((struct swchnlcmd *)(& precommoncmd), tmp, 16U,
                                   1, 0U, 0U, 0U);
  tmp___0 = precommoncmdcnt;
  precommoncmdcnt = precommoncmdcnt + 1U;
  _rtl92d_phy_set_sw_chnl_cmdarray((struct swchnlcmd *)(& precommoncmd), tmp___0,
                                   16U, 0, 0U, 0U, 0U);
  postcommoncmdcnt = 0U;
  tmp___1 = postcommoncmdcnt;
  postcommoncmdcnt = postcommoncmdcnt + 1U;
  _rtl92d_phy_set_sw_chnl_cmdarray((struct swchnlcmd *)(& postcommoncmd), tmp___1,
                                   16U, 0, 0U, 0U, 0U);
  rfdependcmdcnt = 0U;
  tmp___2 = rfdependcmdcnt;
  rfdependcmdcnt = rfdependcmdcnt + 1U;
  _rtl92d_phy_set_sw_chnl_cmdarray((struct swchnlcmd *)(& rfdependcmd), tmp___2, 16U,
                                   6, 24U, (u32 )channel, 0U);
  tmp___3 = rfdependcmdcnt;
  rfdependcmdcnt = rfdependcmdcnt + 1U;
  _rtl92d_phy_set_sw_chnl_cmdarray((struct swchnlcmd *)(& rfdependcmd), tmp___3, 16U,
                                   0, 0U, 0U, 0U);
  }
  ldv_51549: ;
  {
  if ((int )*stage == 0) {
    goto case_0;
  } else {
  }
  if ((int )*stage == 1) {
    goto case_1;
  } else {
  }
  if ((int )*stage == 2) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_0:
  currentcmd = (struct swchnlcmd *)(& precommoncmd) + (unsigned long )*step;
  goto ldv_51533;
  case_1:
  currentcmd = (struct swchnlcmd *)(& rfdependcmd) + (unsigned long )*step;
  goto ldv_51533;
  case_2:
  currentcmd = (struct swchnlcmd *)(& postcommoncmd) + (unsigned long )*step;
  goto ldv_51533;
  switch_break: ;
  }
  ldv_51533: ;
  if ((unsigned int )currentcmd->cmdid == 0U) {
    if ((unsigned int )*stage == 2U) {
      return (1);
    } else {
      *stage = (u8 )((int )*stage + 1);
      *step = 0U;
      goto ldv_51536;
    }
  } else {
  }
  {
  if ((unsigned int )currentcmd->cmdid == 1U) {
    goto case_1___0;
  } else {
  }
  if ((unsigned int )currentcmd->cmdid == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )currentcmd->cmdid == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )currentcmd->cmdid == 5U) {
    goto case_5;
  } else {
  }
  if ((unsigned int )currentcmd->cmdid == 6U) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_1___0:
  {
  rtl92d_phy_set_txpower_level(hw, (int )channel);
  }
  goto ldv_51538;
  case_3:
  {
  rtl_write_dword(rtlpriv, currentcmd->para1, currentcmd->para2);
  }
  goto ldv_51538;
  case_4:
  {
  rtl_write_word(rtlpriv, currentcmd->para1, (int )((unsigned short )currentcmd->para2));
  }
  goto ldv_51538;
  case_5:
  {
  rtl_write_byte(rtlpriv, currentcmd->para1, (int )((unsigned char )currentcmd->para2));
  }
  goto ldv_51538;
  case_6:
  rfpath = 0U;
  goto ldv_51544;
  ldv_51543:
  rtlphy->rfreg_chnlval[(int )rfpath] = (rtlphy->rfreg_chnlval[(int )rfpath] & 4294967040U) | currentcmd->para2;
  if ((unsigned int )rtlpriv->rtlhal.current_bandtype == 1U) {
    if (currentcmd->para2 > 99U) {
      rtlphy->rfreg_chnlval[(int )rfpath] = rtlphy->rfreg_chnlval[(int )rfpath] | 262144U;
    } else {
      rtlphy->rfreg_chnlval[(int )rfpath] = rtlphy->rfreg_chnlval[(int )rfpath] & 4294705151U;
    }
    rtlphy->rfreg_chnlval[(int )rfpath] = rtlphy->rfreg_chnlval[(int )rfpath] | 65792U;
  } else {
    rtlphy->rfreg_chnlval[(int )rfpath] = rtlphy->rfreg_chnlval[(int )rfpath] & 4294639359U;
  }
  {
  rtl_set_rfreg(hw, (enum radio_path )rfpath, currentcmd->para1, 1048575U, rtlphy->rfreg_chnlval[(int )rfpath]);
  _rtl92d_phy_reload_imr_setting(hw, (int )channel, (int )rfpath);
  rfpath = (u8 )((int )rfpath + 1);
  }
  ldv_51544: ;
  if ((int )rfpath < (int )num_total_rfpath) {
    goto ldv_51543;
  } else {
  }
  {
  _rtl92d_phy_switch_rf_setting(hw, (int )channel);
  rtl92d_phy_reload_iqk_setting(hw, (int )channel);
  }
  goto ldv_51538;
  switch_default:
  {
  tmp___6 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                             0L);
  }
  if (tmp___6 != 0L) {
    {
    tmp___7 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___7 != 0L) {
      {
      tmp___4 = preempt_count();
      tmp___5 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> switch case not processed\n", "_rtl92d_phy_sw_chnl_step_by_step",
             (unsigned long )tmp___5 & 2096896UL, ((unsigned long )tmp___4 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_51538;
  switch_break___0: ;
  }
  ldv_51538: ;
  goto ldv_51548;
  ldv_51536: ;
  goto ldv_51549;
  ldv_51548:
  *delay = currentcmd->msdelay;
  *step = (u8 )((int )*step + 1);
  return (0);
}
}
u8 rtl92d_phy_sw_chnl(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_hal *rtlhal ;
  u32 delay ;
  u32 timeout ;
  u32 timecount ;
  u8 channel ;
  u32 ret_value ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  unsigned long __ms ;
  unsigned long tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  unsigned long __ms___0 ;
  unsigned long tmp___9 ;
  bool tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  timeout = 1000U;
  timecount = 0U;
  channel = rtlphy->current_channel;
  if ((unsigned int )rtlphy->sw_chnl_inprogress != 0U) {
    return (0U);
  } else {
  }
  if ((unsigned int )rtlphy->set_bwmode_inprogress != 0U) {
    return (0U);
  } else {
  }
  {
  tmp___3 = is_hal_stop(rtlhal);
  }
  if ((int )tmp___3) {
    {
    tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 268435456ULL) != 0ULL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp = preempt_count();
        tmp___0 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> sw_chnl_inprogress false driver sleep or unload\n",
               "rtl92d_phy_sw_chnl", (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    return (0U);
  } else {
  }
  goto ldv_51567;
  ldv_51566:
  __ms = 50UL;
  goto ldv_51564;
  ldv_51563:
  {
  __const_udelay(4295000UL);
  }
  ldv_51564:
  tmp___4 = __ms;
  __ms = __ms - 1UL;
  if (tmp___4 != 0UL) {
    goto ldv_51563;
  } else {
  }
  timecount = timecount + 50U;
  ldv_51567: ;
  if ((unsigned int )rtlphy->lck_inprogress != 0U && timecount < timeout) {
    goto ldv_51566;
  } else {
  }
  if ((unsigned int )rtlhal->macphymode == 0U && (unsigned int )rtlhal->bandset == 2U) {
    {
    ret_value = rtl_get_bbreg(hw, 2168U, 4294967295U);
    }
    if ((unsigned int )rtlphy->current_channel > 14U && ((unsigned long )ret_value & 1UL) == 0UL) {
      {
      rtl92d_phy_switch_wirelessband(hw, 1);
      }
    } else
    if ((unsigned int )rtlphy->current_channel <= 14U && (int )ret_value & 1) {
      {
      rtl92d_phy_switch_wirelessband(hw, 0);
      }
    } else {
    }
  } else {
  }
  {
  if ((unsigned int )rtlhal->current_bandtype == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )rtlhal->current_bandtype == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_1: ;
  if ((unsigned int )channel <= 14U) {
    return (0U);
  } else {
  }
  if ((unsigned int )channel <= 14U) {
    {
    printk("\017rtl8192de:%s(): 5G but channel<=14\n", "rtl92d_phy_sw_chnl");
    }
  } else {
  }
  goto ldv_51570;
  case_0: ;
  if ((unsigned int )channel > 14U) {
    return (0U);
  } else {
  }
  if ((unsigned int )channel > 14U) {
    {
    printk("\017rtl8192de:%s(): 2G but channel>14\n", "rtl92d_phy_sw_chnl");
    }
  } else {
  }
  goto ldv_51570;
  switch_default:
  {
  printk("\017rtl8192de:%s(): Invalid WirelessMode(%#x)!!\n", "rtl92d_phy_sw_chnl",
         (int )rtlpriv->mac80211.mode);
  }
  goto ldv_51570;
  switch_break: ;
  }
  ldv_51570:
  rtlphy->sw_chnl_inprogress = 1U;
  if ((unsigned int )channel == 0U) {
    channel = 1U;
  } else {
  }
  {
  rtlphy->sw_chnl_stage = 0U;
  rtlphy->sw_chnl_step = 0U;
  tmp___7 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 64ULL) != 0ULL,
                             0L);
  }
  if (tmp___7 != 0L) {
    {
    tmp___8 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___8 != 0L) {
      {
      tmp___5 = preempt_count();
      tmp___6 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> switch to channel%d\n", "rtl92d_phy_sw_chnl",
             (unsigned long )tmp___6 & 2096896UL, ((unsigned long )tmp___5 & 0xffffffffffdfffffUL) != 0UL,
             (int )rtlphy->current_channel);
      }
    } else {
    }
  } else {
  }
  ldv_51579: ;
  if ((unsigned int )rtlphy->sw_chnl_inprogress == 0U) {
    goto ldv_51573;
  } else {
  }
  {
  tmp___10 = _rtl92d_phy_sw_chnl_step_by_step(hw, (int )rtlphy->current_channel, & rtlphy->sw_chnl_stage,
                                              & rtlphy->sw_chnl_step, & delay);
  }
  if (tmp___10) {
    tmp___11 = 0;
  } else {
    tmp___11 = 1;
  }
  if (tmp___11) {
    if (delay != 0U) {
      __ms___0 = (unsigned long )delay;
      goto ldv_51576;
      ldv_51575:
      {
      __const_udelay(4295000UL);
      }
      ldv_51576:
      tmp___9 = __ms___0;
      __ms___0 = __ms___0 - 1UL;
      if (tmp___9 != 0UL) {
        goto ldv_51575;
      } else {
      }
    } else {
      goto ldv_51578;
    }
  } else {
    rtlphy->sw_chnl_inprogress = 0U;
  }
  goto ldv_51573;
  ldv_51578: ;
  goto ldv_51579;
  ldv_51573:
  {
  tmp___14 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 64ULL) != 0ULL,
                              0L);
  }
  if (tmp___14 != 0L) {
    {
    tmp___15 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___15 != 0L) {
      {
      tmp___12 = preempt_count();
      tmp___13 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <==\n", "rtl92d_phy_sw_chnl", (unsigned long )tmp___13 & 2096896UL,
             ((unsigned long )tmp___12 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  rtlphy->sw_chnl_inprogress = 0U;
  return (1U);
}
}
static void rtl92d_phy_set_io(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct dig_t *de_digtable ;
  struct rtl_phy *rtlphy ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  de_digtable = & rtlpriv->dm_digtable;
  rtlphy = & rtlpriv->phy;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> --->Cmd(%#x), set_io_inprogress(%d)\n",
             "rtl92d_phy_set_io", (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             (unsigned int )rtlphy->current_io_type, (int )rtlphy->set_io_inprogress);
      }
    } else {
    }
  } else {
  }
  {
  if ((unsigned int )rtlphy->current_io_type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )rtlphy->current_io_type == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_1:
  {
  de_digtable->cur_igvalue = (u32 )rtlphy->initgain_backup.xaagccore1;
  rtl92d_dm_write_dig(hw);
  rtl92d_phy_set_txpower_level(hw, (int )rtlphy->current_channel);
  }
  goto ldv_51588;
  case_0:
  {
  rtlphy->initgain_backup.xaagccore1 = (u8 )de_digtable->cur_igvalue;
  de_digtable->cur_igvalue = 55U;
  rtl92d_dm_write_dig(hw);
  }
  goto ldv_51588;
  switch_default:
  {
  tmp___5 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> switch case not processed\n", "rtl92d_phy_set_io",
             (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_51588;
  switch_break: ;
  }
  ldv_51588:
  {
  rtlphy->set_io_inprogress = 0U;
  tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                             0L);
  }
  if (tmp___9 != 0L) {
    {
    tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___7 = preempt_count();
      tmp___8 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <---(%#x)\n", "rtl92d_phy_set_io", (unsigned long )tmp___8 & 2096896UL,
             ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL, (unsigned int )rtlphy->current_io_type);
      }
    } else {
    }
  } else {
  }
  return;
}
}
bool rtl92d_phy_set_io_cmd(struct ieee80211_hw *hw , enum io_type iotype )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  bool postprocessing ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  long tmp___17 ;
  long tmp___18 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  postprocessing = 0;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> -->IO Cmd(%#x), set_io_inprogress(%d)\n",
             "rtl92d_phy_set_io_cmd", (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             (unsigned int )iotype, (int )rtlphy->set_io_inprogress);
      }
    } else {
    }
  } else {
  }
  {
  if ((unsigned int )iotype == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )iotype == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> [IO CMD] Resume DM after scan\n", "rtl92d_phy_set_io_cmd",
             (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  postprocessing = 1;
  goto ldv_51600;
  case_0:
  {
  tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                             0L);
  }
  if (tmp___9 != 0L) {
    {
    tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___7 = preempt_count();
      tmp___8 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> [IO CMD] Pause DM before scan\n", "rtl92d_phy_set_io_cmd",
             (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  postprocessing = 1;
  goto ldv_51600;
  switch_default:
  {
  tmp___13 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                              0L);
  }
  if (tmp___13 != 0L) {
    {
    tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___14 != 0L) {
      {
      tmp___11 = preempt_count();
      tmp___12 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> switch case not processed\n", "rtl92d_phy_set_io_cmd",
             (unsigned long )tmp___12 & 2096896UL, ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  goto ldv_51600;
  switch_break: ;
  }
  ldv_51600: ;
  if ((int )postprocessing && (unsigned int )rtlphy->set_io_inprogress == 0U) {
    rtlphy->set_io_inprogress = 1U;
    rtlphy->current_io_type = iotype;
  } else {
    return (0);
  }
  {
  rtl92d_phy_set_io(hw);
  tmp___17 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                              0L);
  }
  if (tmp___17 != 0L) {
    {
    tmp___18 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___18 != 0L) {
      {
      tmp___15 = preempt_count();
      tmp___16 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <--IO Type(%#x)\n", "rtl92d_phy_set_io_cmd",
             (unsigned long )tmp___16 & 2096896UL, ((unsigned long )tmp___15 & 0xffffffffffdfffffUL) != 0UL,
             (unsigned int )iotype);
      }
    } else {
    }
  } else {
  }
  return (1);
}
}
static void _rtl92d_phy_set_rfon(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  if ((unsigned int )rtlpriv->rtlhal.macphymode == 0U) {
    {
    rtl_write_byte(rtlpriv, 17U, 43);
    }
  } else {
  }
  {
  rtl_write_byte(rtlpriv, 2U, 227);
  rtl_write_byte(rtlpriv, 1536U, 0);
  rtl_write_byte(rtlpriv, 2U, 226);
  rtl_write_byte(rtlpriv, 2U, 227);
  rtl_write_byte(rtlpriv, 1314U, 0);
  }
  return;
}
}
static void _rtl92d_phy_set_rfsleep(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  u32 u4btmp ;
  u8 delay ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  delay = 5U;
  rtl_write_byte(rtlpriv, 1314U, 255);
  rtl_set_rfreg(hw, 0, 0U, 1048575U, 0U);
  rtl_write_byte(rtlpriv, 1536U, 64);
  u4btmp = rtl_get_rfreg(hw, 0, 0U, 1048575U);
  }
  goto ldv_51614;
  ldv_51613:
  {
  rtl_write_byte(rtlpriv, 1536U, 0);
  rtl_set_rfreg(hw, 0, 0U, 1048575U, 0U);
  rtl_write_byte(rtlpriv, 1536U, 64);
  u4btmp = rtl_get_rfreg(hw, 0, 0U, 1048575U);
  delay = (u8 )((int )delay - 1);
  }
  ldv_51614: ;
  if (u4btmp != 0U && (unsigned int )delay != 0U) {
    goto ldv_51613;
  } else {
  }
  if ((unsigned int )delay == 0U) {
    {
    rtl_write_byte(rtlpriv, 1536U, 0);
    rtl_write_byte(rtlpriv, 2U, 226);
    rtl_write_byte(rtlpriv, 2U, 227);
    rtl_write_byte(rtlpriv, 1314U, 0);
    tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 65536ULL) != 0ULL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp = preempt_count();
        tmp___0 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Fail !!! Switch RF timeout\n", "_rtl92d_phy_set_rfsleep",
               (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  {
  rtl_write_byte(rtlpriv, 2U, 226);
  }
  if ((unsigned int )rtlpriv->rtlhal.macphymode == 0U) {
    {
    rtl_write_byte(rtlpriv, 17U, 34);
    }
  } else {
  }
  return;
}
}
bool rtl92d_phy_set_rf_power_state(struct ieee80211_hw *hw , enum rf_pwrstate rfpwr_state )
{
  bool bresult ;
  struct rtl_priv *rtlpriv ;
  struct rtl_pci_priv *pcipriv ;
  struct rtl_mac *mac ;
  struct rtl_ps_ctl *ppsc ;
  struct rtl_pci *rtlpci ;
  u8 i ;
  u8 queue_id ;
  struct rtl8192_tx_ring *ring ;
  bool rtstatus ;
  u32 InitializeCount ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  unsigned int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  __u32 tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  long tmp___19 ;
  long tmp___20 ;
  __u32 tmp___21 ;
  __u32 tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  long tmp___25 ;
  long tmp___26 ;
  unsigned int tmp___27 ;
  int tmp___28 ;
  int tmp___29 ;
  long tmp___30 ;
  long tmp___31 ;
  unsigned int tmp___32 ;
  int tmp___33 ;
  int tmp___34 ;
  long tmp___35 ;
  long tmp___36 ;
  int tmp___37 ;
  int tmp___38 ;
  long tmp___39 ;
  long tmp___40 ;
  {
  bresult = 1;
  rtlpriv = (struct rtl_priv *)hw->priv;
  pcipriv = (struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv);
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  ppsc = & ((struct rtl_priv *)hw->priv)->psc;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  ring = (struct rtl8192_tx_ring *)0;
  if ((unsigned int )rfpwr_state == (unsigned int )ppsc->rfpwr_state) {
    return (0);
  } else {
  }
  {
  if ((unsigned int )rfpwr_state == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )rfpwr_state == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )rfpwr_state == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0: ;
  if ((unsigned int )ppsc->rfpwr_state == 2U && ((unsigned long )ppsc->cur_ps_level & 8UL) != 0UL) {
    InitializeCount = 0U;
    ldv_51634:
    {
    InitializeCount = InitializeCount + 1U;
    tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                               0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp = preempt_count();
        tmp___0 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> IPS Set eRf nic enable\n", "rtl92d_phy_set_rf_power_state",
               (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    {
    rtstatus = rtl_ps_enable_nic(hw);
    }
    if (! rtstatus && InitializeCount <= 9U) {
      goto ldv_51634;
    } else {
    }
    ppsc->cur_ps_level = ppsc->cur_ps_level & 4294967287U;
  } else {
    {
    tmp___6 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 65536ULL) != 0ULL,
                               0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___7 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
      }
      if (tmp___7 != 0L) {
        {
        tmp___3 = jiffies_to_msecs((unsigned long )jiffies - ppsc->last_sleep_jiffies);
        tmp___4 = preempt_count();
        tmp___5 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> awake, sleeped:%d ms state_inap:%x\n",
               "rtl92d_phy_set_rf_power_state", (unsigned long )tmp___5 & 2096896UL,
               ((unsigned long )tmp___4 & 0xffffffffffdfffffUL) != 0UL, tmp___3, (int )rtlpriv->psc.state_inap);
        }
      } else {
      }
    } else {
    }
    {
    ppsc->last_awake_jiffies = jiffies;
    _rtl92d_phy_set_rfon(hw);
    }
  }
  if ((unsigned int )mac->link_state == 2U) {
    {
    (*(((rtlpriv->cfg)->ops)->led_control))(hw, 2);
    }
  } else {
    {
    (*(((rtlpriv->cfg)->ops)->led_control))(hw, 3);
    }
  }
  goto ldv_51636;
  case_2: ;
  if (((unsigned long )ppsc->reg_rfps_level & 8UL) != 0UL) {
    {
    tmp___10 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                                0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___11 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
      }
      if (tmp___11 != 0L) {
        {
        tmp___8 = preempt_count();
        tmp___9 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> IPS Set eRf nic disable\n", "rtl92d_phy_set_rf_power_state",
               (unsigned long )tmp___9 & 2096896UL, ((unsigned long )tmp___8 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    {
    rtl_ps_disable_nic(hw);
    ppsc->cur_ps_level = ppsc->cur_ps_level | 8U;
    }
  } else
  if (ppsc->rfoff_reason == 268435456U) {
    {
    (*(((rtlpriv->cfg)->ops)->led_control))(hw, 3);
    }
  } else {
    {
    (*(((rtlpriv->cfg)->ops)->led_control))(hw, 7);
    }
  }
  goto ldv_51636;
  case_1: ;
  if ((unsigned int )ppsc->rfpwr_state == 2U) {
    return (0);
  } else {
  }
  queue_id = 0U;
  i = 0U;
  goto ldv_51639;
  ldv_51641:
  {
  ring = (struct rtl8192_tx_ring *)(& pcipriv->dev.tx_ring) + (unsigned long )queue_id;
  tmp___21 = skb_queue_len((struct sk_buff_head const *)(& ring->queue));
  }
  if (tmp___21 == 0U || (unsigned int )queue_id == 4U) {
    queue_id = (u8 )((int )queue_id + 1);
    goto ldv_51639;
  } else
  if ((rtlpci->pdev)->current_state != 0) {
    {
    tmp___14 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 65536ULL) != 0ULL,
                                0L);
    }
    if (tmp___14 != 0L) {
      {
      tmp___15 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___15 != 0L) {
        {
        tmp___12 = preempt_count();
        tmp___13 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> eRf Off/Sleep: %d times TcbBusyQueue[%d] !=0 but lower power state!\n",
               "rtl92d_phy_set_rf_power_state", (unsigned long )tmp___13 & 2096896UL,
               ((unsigned long )tmp___12 & 0xffffffffffdfffffUL) != 0UL, (int )i + 1,
               (int )queue_id);
        }
      } else {
      }
    } else {
    }
    goto ldv_51640;
  } else {
    {
    tmp___19 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                                0L);
    }
    if (tmp___19 != 0L) {
      {
      tmp___20 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 1, 0L);
      }
      if (tmp___20 != 0L) {
        {
        tmp___16 = skb_queue_len((struct sk_buff_head const *)(& ring->queue));
        tmp___17 = preempt_count();
        tmp___18 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> eRf Off/Sleep: %d times TcbBusyQueue[%d] =%d before doze!\n",
               "rtl92d_phy_set_rf_power_state", (unsigned long )tmp___18 & 2096896UL,
               ((unsigned long )tmp___17 & 0xffffffffffdfffffUL) != 0UL, (int )i + 1,
               (int )queue_id, tmp___16);
        }
      } else {
      }
    } else {
    }
    {
    __const_udelay(42950UL);
    i = (u8 )((int )i + 1);
    }
  }
  if ((unsigned int )i > 63U) {
    {
    tmp___25 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                                0L);
    }
    if (tmp___25 != 0L) {
      {
      tmp___26 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 1, 0L);
      }
      if (tmp___26 != 0L) {
        {
        tmp___22 = skb_queue_len((struct sk_buff_head const *)(& ring->queue));
        tmp___23 = preempt_count();
        tmp___24 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> ERFOFF: %d times TcbBusyQueue[%d] = %d !\n",
               "rtl92d_phy_set_rf_power_state", (unsigned long )tmp___24 & 2096896UL,
               ((unsigned long )tmp___23 & 0xffffffffffdfffffUL) != 0UL, 64, (int )queue_id,
               tmp___22);
        }
      } else {
      }
    } else {
    }
    goto ldv_51640;
  } else {
  }
  ldv_51639: ;
  if ((unsigned int )queue_id <= 8U) {
    goto ldv_51641;
  } else {
  }
  ldv_51640:
  {
  tmp___30 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 65536ULL) != 0ULL,
                              0L);
  }
  if (tmp___30 != 0L) {
    {
    tmp___31 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
    }
    if (tmp___31 != 0L) {
      {
      tmp___27 = jiffies_to_msecs((unsigned long )jiffies - ppsc->last_awake_jiffies);
      tmp___28 = preempt_count();
      tmp___29 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> Set rfsleep awaked:%d ms\n", "rtl92d_phy_set_rf_power_state",
             (unsigned long )tmp___29 & 2096896UL, ((unsigned long )tmp___28 & 0xffffffffffdfffffUL) != 0UL,
             tmp___27);
      }
    } else {
    }
  } else {
  }
  {
  tmp___35 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 65536ULL) != 0ULL,
                              0L);
  }
  if (tmp___35 != 0L) {
    {
    tmp___36 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
    }
    if (tmp___36 != 0L) {
      {
      tmp___32 = jiffies_to_msecs((unsigned long )jiffies - ppsc->last_awake_jiffies);
      tmp___33 = preempt_count();
      tmp___34 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> sleep awaked:%d ms state_inap:%x\n", "rtl92d_phy_set_rf_power_state",
             (unsigned long )tmp___34 & 2096896UL, ((unsigned long )tmp___33 & 0xffffffffffdfffffUL) != 0UL,
             tmp___32, (int )rtlpriv->psc.state_inap);
      }
    } else {
    }
  } else {
  }
  {
  ppsc->last_sleep_jiffies = jiffies;
  _rtl92d_phy_set_rfsleep(hw);
  }
  goto ldv_51636;
  switch_default:
  {
  tmp___39 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                              0L);
  }
  if (tmp___39 != 0L) {
    {
    tmp___40 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___40 != 0L) {
      {
      tmp___37 = preempt_count();
      tmp___38 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> switch case not processed\n", "rtl92d_phy_set_rf_power_state",
             (unsigned long )tmp___38 & 2096896UL, ((unsigned long )tmp___37 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  bresult = 0;
  goto ldv_51636;
  switch_break: ;
  }
  ldv_51636: ;
  if ((int )bresult) {
    ppsc->rfpwr_state = rfpwr_state;
  } else {
  }
  return (bresult);
}
}
void rtl92d_phy_config_macphymode(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 offset ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  offset = 248U;
  {
  if ((unsigned int )rtlhal->macphymode == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )rtlhal->macphymode == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )rtlhal->macphymode == 2U) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_1:
  {
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> MacPhyMode: DUALMAC_DUALPHY\n", "rtl92d_phy_config_macphymode",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  {
  rtl_write_byte(rtlpriv, (u32 )offset, 243);
  }
  goto ldv_51651;
  case_0:
  {
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> MacPhyMode: SINGLEMAC_SINGLEPHY\n", "rtl92d_phy_config_macphymode",
             (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  {
  rtl_write_byte(rtlpriv, (u32 )offset, 244);
  }
  goto ldv_51651;
  case_2:
  {
  tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___9 != 0L) {
    {
    tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___7 = preempt_count();
      tmp___8 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> MacPhyMode: DUALMAC_SINGLEPHY\n", "rtl92d_phy_config_macphymode",
             (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  {
  rtl_write_byte(rtlpriv, (u32 )offset, 241);
  }
  goto ldv_51651;
  switch_break: ;
  }
  ldv_51651: ;
  return;
}
}
void rtl92d_phy_config_macphymode_info(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  struct rtl_phy *rtlphy ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  rtlphy = & rtlpriv->phy;
  {
  if ((unsigned int )rtlhal->macphymode == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )rtlhal->macphymode == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )rtlhal->macphymode == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_2:
  rtlphy->rf_type = 2U;
  rtlhal->version = rtlhal->version | 32U;
  rtlhal->bandset = 2;
  rtlhal->current_bandtype = 0;
  goto ldv_51661;
  case_0:
  rtlphy->rf_type = 2U;
  rtlhal->version = rtlhal->version | 32U;
  rtlhal->bandset = 2;
  rtlhal->current_bandtype = 0;
  goto ldv_51661;
  case_1:
  rtlphy->rf_type = 0U;
  rtlhal->version = rtlhal->version & 4294967183U;
  if (rtlhal->interfaceindex == 0U) {
    rtlhal->bandset = 1;
    rtlhal->current_bandtype = 1;
  } else {
    rtlhal->bandset = 0;
    rtlhal->current_bandtype = 0;
  }
  goto ldv_51661;
  switch_default: ;
  goto ldv_51661;
  switch_break: ;
  }
  ldv_51661: ;
  return;
}
}
u8 rtl92d_get_chnlgroup_fromarray(u8 chnl )
{
  u8 group ;
  u8 channel_info[59U] ;
  {
  channel_info[0] = 1U;
  channel_info[1] = 2U;
  channel_info[2] = 3U;
  channel_info[3] = 4U;
  channel_info[4] = 5U;
  channel_info[5] = 6U;
  channel_info[6] = 7U;
  channel_info[7] = 8U;
  channel_info[8] = 9U;
  channel_info[9] = 10U;
  channel_info[10] = 11U;
  channel_info[11] = 12U;
  channel_info[12] = 13U;
  channel_info[13] = 14U;
  channel_info[14] = 36U;
  channel_info[15] = 38U;
  channel_info[16] = 40U;
  channel_info[17] = 42U;
  channel_info[18] = 44U;
  channel_info[19] = 46U;
  channel_info[20] = 48U;
  channel_info[21] = 50U;
  channel_info[22] = 52U;
  channel_info[23] = 54U;
  channel_info[24] = 56U;
  channel_info[25] = 58U;
  channel_info[26] = 60U;
  channel_info[27] = 62U;
  channel_info[28] = 64U;
  channel_info[29] = 100U;
  channel_info[30] = 102U;
  channel_info[31] = 104U;
  channel_info[32] = 106U;
  channel_info[33] = 108U;
  channel_info[34] = 110U;
  channel_info[35] = 112U;
  channel_info[36] = 114U;
  channel_info[37] = 116U;
  channel_info[38] = 118U;
  channel_info[39] = 120U;
  channel_info[40] = 122U;
  channel_info[41] = 124U;
  channel_info[42] = 126U;
  channel_info[43] = 128U;
  channel_info[44] = 130U;
  channel_info[45] = 132U;
  channel_info[46] = 134U;
  channel_info[47] = 136U;
  channel_info[48] = 138U;
  channel_info[49] = 140U;
  channel_info[50] = 149U;
  channel_info[51] = 151U;
  channel_info[52] = 153U;
  channel_info[53] = 155U;
  channel_info[54] = 157U;
  channel_info[55] = 159U;
  channel_info[56] = 161U;
  channel_info[57] = 163U;
  channel_info[58] = 165U;
  if ((unsigned int )channel_info[(int )chnl] <= 3U) {
    group = 0U;
  } else
  if ((unsigned int )channel_info[(int )chnl] <= 9U) {
    group = 1U;
  } else
  if ((unsigned int )channel_info[(int )chnl] <= 14U) {
    group = 2U;
  } else
  if ((unsigned int )channel_info[(int )chnl] <= 44U) {
    group = 3U;
  } else
  if ((unsigned int )channel_info[(int )chnl] <= 54U) {
    group = 4U;
  } else
  if ((unsigned int )channel_info[(int )chnl] <= 64U) {
    group = 5U;
  } else
  if ((unsigned int )channel_info[(int )chnl] <= 112U) {
    group = 6U;
  } else
  if ((unsigned int )channel_info[(int )chnl] <= 126U) {
    group = 7U;
  } else
  if ((unsigned int )channel_info[(int )chnl] <= 140U) {
    group = 8U;
  } else
  if ((unsigned int )channel_info[(int )chnl] <= 153U) {
    group = 9U;
  } else
  if ((unsigned int )channel_info[(int )chnl] <= 159U) {
    group = 10U;
  } else {
    group = 11U;
  }
  return (group);
}
}
void rtl92d_phy_set_poweron(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  unsigned long flags ;
  u8 value8 ;
  u16 i ;
  u32 mac_reg ;
  raw_spinlock_t *tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  mac_reg = rtlhal->interfaceindex == 0U ? 129U : 83U;
  if ((unsigned int )rtlhal->current_bandtype == 0U) {
    {
    value8 = rtl_read_byte(rtlpriv, mac_reg);
    value8 = (u8 )((unsigned int )value8 | 2U);
    rtl_write_byte(rtlpriv, mac_reg, (int )value8);
    }
  } else {
    {
    value8 = rtl_read_byte(rtlpriv, mac_reg);
    value8 = (unsigned int )value8 & 253U;
    rtl_write_byte(rtlpriv, mac_reg, (int )value8);
    }
  }
  if ((unsigned int )rtlhal->macphymode == 0U) {
    {
    value8 = rtl_read_byte(rtlpriv, 129U);
    rtl_write_byte(rtlpriv, 129U, (int )((unsigned int )value8 | 128U));
    }
  } else {
    {
    tmp = spinlock_check(& globalmutex_power);
    flags = _raw_spin_lock_irqsave(tmp);
    }
    if (rtlhal->interfaceindex == 0U) {
      {
      value8 = rtl_read_byte(rtlpriv, 129U);
      rtl_write_byte(rtlpriv, 129U, (int )((unsigned int )value8 | 128U));
      }
    } else {
      {
      value8 = rtl_read_byte(rtlpriv, 83U);
      rtl_write_byte(rtlpriv, 83U, (int )((unsigned int )value8 | 1U));
      }
    }
    {
    value8 = rtl_read_byte(rtlpriv, 23U);
    spin_unlock_irqrestore(& globalmutex_power, flags);
    i = 0U;
    }
    goto ldv_51687;
    ldv_51686: ;
    if ((int )((signed char )value8) >= 0) {
      goto ldv_51682;
    } else {
      {
      __const_udelay(2147500UL);
      tmp___0 = spinlock_check(& globalmutex_power);
      flags = _raw_spin_lock_irqsave(tmp___0);
      value8 = rtl_read_byte(rtlpriv, 23U);
      spin_unlock_irqrestore(& globalmutex_power, flags);
      }
    }
    i = (u16 )((int )i + 1);
    ldv_51687: ;
    if ((unsigned int )i <= 199U) {
      goto ldv_51686;
    } else {
    }
    ldv_51682: ;
    if ((unsigned int )i == 200U) {
      {
      printk("\017rtl8192de:%s(): Another mac power off over time\n", "rtl92d_phy_set_poweron");
      }
    } else {
    }
  }
  return;
}
}
void rtl92d_phy_config_maccoexist_rfpage(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  {
  if ((unsigned int )rtlpriv->rtlhal.macphymode == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )rtlpriv->rtlhal.macphymode == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )rtlpriv->rtlhal.macphymode == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_1:
  {
  rtl_write_byte(rtlpriv, 1520U, 0);
  rtl_write_byte(rtlpriv, 1548U, 8);
  rtl_write_word(rtlpriv, 278U, 5119);
  }
  goto ldv_51694;
  case_2:
  {
  rtl_write_byte(rtlpriv, 1520U, 248);
  rtl_write_byte(rtlpriv, 1548U, 8);
  rtl_write_word(rtlpriv, 278U, 5119);
  }
  goto ldv_51694;
  case_0:
  {
  rtl_write_byte(rtlpriv, 1520U, 0);
  rtl_write_byte(rtlpriv, 1548U, 16);
  rtl_write_word(rtlpriv, 278U, 10239);
  }
  goto ldv_51694;
  switch_default: ;
  goto ldv_51694;
  switch_break: ;
  }
  ldv_51694: ;
  return;
}
}
void rtl92d_update_bbrf_configuration(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  struct rtl_phy *rtlphy ;
  struct rtl_efuse *rtlefuse ;
  u8 rfpath ;
  u8 i ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  rtlphy = & rtlpriv->phy;
  rtlefuse = & ((struct rtl_priv *)hw->priv)->efuse;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> ==>\n", "rtl92d_update_bbrf_configuration",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )rtlhal->current_bandtype == 0U) {
    {
    rtl_set_bbreg(hw, 2168U, 1U, 0U);
    rtl_set_bbreg(hw, 2168U, 32768U, 0U);
    }
    if ((unsigned int )rtlhal->macphymode != 1U) {
      {
      rtl_set_bbreg(hw, 2168U, 65536U, 0U);
      rtl_set_bbreg(hw, 2168U, 2147483648U, 0U);
      }
    } else {
    }
    {
    rtl_set_bbreg(hw, 3192U, 192U, 0U);
    rtl_set_bbreg(hw, 3372U, 24576U, 0U);
    rtl_set_bbreg(hw, 2864U, 15728640U, 10U);
    rtl_set_bbreg(hw, 3200U, 4294967295U, 1073742080U);
    rtl_set_bbreg(hw, 3208U, 4294967295U, 1073742080U);
    }
    if ((unsigned int )rtlhal->macphymode == 1U) {
      {
      rtl_set_bbreg(hw, 2160U, 1120U, ((u32 )(((unsigned long )rtlefuse->eeprom_c9 & 8UL) >> 3) | ((u32 )rtlefuse->eeprom_c9 & 2U)) | (((u32 )rtlefuse->eeprom_cc & 2U) << 4U));
      rtl_set_bbreg(hw, 2144U, 1120U, ((u32 )(((unsigned long )rtlefuse->eeprom_c9 & 4UL) >> 2) | (((u32 )rtlefuse->eeprom_c9 & 1U) << 1U)) | (((u32 )rtlefuse->eeprom_cc & 1U) << 5U));
      rtl_set_bbreg(hw, 2168U, 32768U, 0U);
      }
    } else {
      {
      rtl_set_bbreg(hw, 2160U, 73401440U, (((((u32 )(((unsigned long )rtlefuse->eeprom_c9 & 8UL) >> 3) | ((u32 )rtlefuse->eeprom_c9 & 2U)) | (((u32 )rtlefuse->eeprom_cc & 2U) << 4U)) | (((u32 )rtlefuse->eeprom_c9 & 128U) << 9U)) | (((u32 )rtlefuse->eeprom_c9 & 32U) << 12U)) | (((u32 )rtlefuse->eeprom_cc & 8U) << 18U));
      rtl_set_bbreg(hw, 2144U, 1120U, ((u32 )(((unsigned long )rtlefuse->eeprom_c9 & 4UL) >> 2) | (((u32 )rtlefuse->eeprom_c9 & 1U) << 1U)) | (((u32 )rtlefuse->eeprom_cc & 1U) << 5U));
      rtl_set_bbreg(hw, 2148U, 1120U, ((u32 )(((unsigned long )rtlefuse->eeprom_c9 & 64UL) >> 6) | (u32 )(((unsigned long )rtlefuse->eeprom_c9 & 16UL) >> 3)) | (((u32 )rtlefuse->eeprom_cc & 4U) << 3U));
      rtl_set_bbreg(hw, 2168U, 2147516416U, 0U);
      }
    }
  } else {
    {
    rtl_set_bbreg(hw, 2168U, 1U, 1U);
    rtl_set_bbreg(hw, 2168U, 32768U, 1U);
    }
    if ((unsigned int )rtlhal->macphymode != 1U) {
      {
      rtl_set_bbreg(hw, 2168U, 65536U, 1U);
      rtl_set_bbreg(hw, 2168U, 2147483648U, 1U);
      }
    } else {
    }
    {
    rtl_set_bbreg(hw, 3192U, 192U, 1U);
    rtl_set_bbreg(hw, 3372U, 24576U, 1U);
    rtl_set_bbreg(hw, 2864U, 15728640U, 0U);
    }
    if ((unsigned int )rtlefuse->internal_pa_5g[0] != 0U) {
      {
      rtl_set_bbreg(hw, 3200U, 4294967295U, 759169205U);
      }
    } else {
      {
      rtl_set_bbreg(hw, 3200U, 4294967295U, 536871040U);
      }
    }
    if ((unsigned int )rtlefuse->internal_pa_5g[1] != 0U) {
      {
      rtl_set_bbreg(hw, 3208U, 4294967295U, 759169205U);
      }
    } else {
      {
      rtl_set_bbreg(hw, 3208U, 4294967295U, 536871040U);
      }
    }
    if ((unsigned int )rtlhal->macphymode == 1U) {
      {
      rtl_set_bbreg(hw, 2160U, 1120U, (u32 )rtlefuse->eeprom_cc & 32U);
      rtl_set_bbreg(hw, 2144U, 1024U, (u32 )(((unsigned long )rtlefuse->eeprom_cc & 16UL) >> 4));
      rtl_set_bbreg(hw, 2168U, 32768U, (u32 )(((unsigned long )rtlefuse->eeprom_cc & 16UL) >> 4));
      }
    } else {
      {
      rtl_set_bbreg(hw, 2160U, 73401440U, ((u32 )rtlefuse->eeprom_cc & 32U) | (((u32 )rtlefuse->eeprom_cc & 128U) << 14U));
      rtl_set_bbreg(hw, 2144U, 1024U, (u32 )(((unsigned long )rtlefuse->eeprom_cc & 16UL) >> 4));
      rtl_set_bbreg(hw, 2148U, 1024U, (u32 )(((unsigned long )rtlefuse->eeprom_cc & 64UL) >> 6));
      rtl_set_bbreg(hw, 2168U, 2147516416U, (u32 )(((unsigned long )rtlefuse->eeprom_cc & 16UL) >> 4) | (((u32 )rtlefuse->eeprom_cc & 64U) << 10U));
      }
    }
  }
  {
  rtl_set_bbreg(hw, 3092U, 4294967295U, 1073742080U);
  rtl_set_bbreg(hw, 3100U, 4294967295U, 1073742080U);
  rtl_set_bbreg(hw, 3220U, 4026531840U, 0U);
  rtl_set_bbreg(hw, 3148U, 1426063360U, 0U);
  rtl_set_bbreg(hw, 3228U, 4026531840U, 0U);
  rtl_set_bbreg(hw, 3232U, 4026531840U, 0U);
  rtl_set_bbreg(hw, 3192U, 61440U, 0U);
  rfpath = 0U;
  }
  goto ldv_51709;
  ldv_51708: ;
  if ((unsigned int )rtlhal->current_bandtype == 0U) {
    {
    rtl_set_rfreg(hw, (enum radio_path )rfpath, 24U, 327936U, 0U);
    rtl_set_rfreg(hw, (enum radio_path )rfpath, 11U, 114688U, 7U);
    }
  } else {
    {
    rtl_set_rfreg(hw, (enum radio_path )rfpath, 24U, 327936U, 257U);
    }
  }
  rfpath = (u8 )((int )rfpath + 1);
  ldv_51709: ;
  if ((int )rfpath < (int )rtlphy->num_total_rfpath) {
    goto ldv_51708;
  } else {
  }
  if ((unsigned int )rtlphy->rf_type == 0U) {
    {
    rtl_set_bbreg(hw, 3076U, 255U, 17U);
    rtl_set_bbreg(hw, 3332U, 15U, 1U);
    }
    if (rtlhal->interfaceindex == 0U) {
      {
      rtl_set_bbreg(hw, 2184U, 12288U, 3U);
      }
    } else {
      {
      rtl92d_phy_enable_anotherphy(hw, 0);
      tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                                 0L);
      }
      if (tmp___5 != 0L) {
        {
        tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
        }
        if (tmp___6 != 0L) {
          {
          tmp___3 = preempt_count();
          tmp___4 = preempt_count();
          printk("\017rtl8192de:%s():<%lx-%x> MAC1 use DBI to update 0x888\n", "rtl92d_update_bbrf_configuration",
                 (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
          }
        } else {
        }
      } else {
      }
      {
      tmp___7 = rtl92de_read_dword_dbi(hw, 2184, 8);
      rtl92de_write_dword_dbi(hw, 2184, tmp___7 | 12288U, 8);
      rtl92d_phy_powerdown_anotherphy(hw, 0);
      }
    }
  } else {
    {
    rtl_set_bbreg(hw, 3076U, 255U, 51U);
    rtl_set_bbreg(hw, 3332U, 15U, 3U);
    rtl_set_bbreg(hw, 2184U, 12288U, 0U);
    }
  }
  rfpath = 0U;
  goto ldv_51712;
  ldv_51711:
  {
  rtlphy->rfreg_chnlval[(int )rfpath] = rtl_get_rfreg(hw, (enum radio_path )rfpath,
                                                      24U, 1048575U);
  rtlphy->reg_rf3c[(int )rfpath] = rtl_get_rfreg(hw, (enum radio_path )rfpath, 60U,
                                                 1048575U);
  rfpath = (u8 )((int )rfpath + 1);
  }
  ldv_51712: ;
  if ((int )rfpath < (int )rtlphy->num_total_rfpath) {
    goto ldv_51711;
  } else {
  }
  i = 0U;
  goto ldv_51715;
  ldv_51714:
  {
  tmp___10 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                              0L);
  }
  if (tmp___10 != 0L) {
    {
    tmp___11 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___11 != 0L) {
      {
      tmp___8 = preempt_count();
      tmp___9 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> RF 0x18 = 0x%x\n", "rtl92d_update_bbrf_configuration",
             (unsigned long )tmp___9 & 2096896UL, ((unsigned long )tmp___8 & 0xffffffffffdfffffUL) != 0UL,
             rtlphy->rfreg_chnlval[(int )i]);
      }
    } else {
    }
  } else {
  }
  i = (u8 )((int )i + 1);
  ldv_51715: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_51714;
  } else {
  }
  {
  tmp___14 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                              0L);
  }
  if (tmp___14 != 0L) {
    {
    tmp___15 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___15 != 0L) {
      {
      tmp___12 = preempt_count();
      tmp___13 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <==\n", "rtl92d_update_bbrf_configuration",
             (unsigned long )tmp___13 & 2096896UL, ((unsigned long )tmp___12 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
bool rtl92d_phy_check_poweroff(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 u1btmp ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & ((struct rtl_priv *)hw->priv)->rtlhal;
  if ((unsigned int )rtlhal->macphymode == 0U) {
    {
    u1btmp = rtl_read_byte(rtlpriv, 129U);
    rtl_write_byte(rtlpriv, 129U, (int )u1btmp & 127);
    }
    return (1);
  } else {
  }
  {
  tmp = spinlock_check(& globalmutex_power);
  flags = _raw_spin_lock_irqsave(tmp);
  }
  if (rtlhal->interfaceindex == 0U) {
    {
    u1btmp = rtl_read_byte(rtlpriv, 129U);
    rtl_write_byte(rtlpriv, 129U, (int )u1btmp & 127);
    u1btmp = rtl_read_byte(rtlpriv, 83U);
    u1btmp = (unsigned int )u1btmp & 1U;
    }
  } else {
    {
    u1btmp = rtl_read_byte(rtlpriv, 83U);
    rtl_write_byte(rtlpriv, 83U, (int )u1btmp & 254);
    u1btmp = rtl_read_byte(rtlpriv, 129U);
    u1btmp = (unsigned int )u1btmp & 128U;
    }
  }
  if ((unsigned int )u1btmp != 0U) {
    {
    spin_unlock_irqrestore(& globalmutex_power, flags);
    }
    return (0);
  } else {
  }
  {
  u1btmp = rtl_read_byte(rtlpriv, 23U);
  u1btmp = (u8 )((unsigned int )u1btmp | 128U);
  rtl_write_byte(rtlpriv, 23U, (int )u1btmp);
  spin_unlock_irqrestore(& globalmutex_power, flags);
  }
  return (1);
}
}
void rtl92d_phy_rf6052_set_bandwidth(struct ieee80211_hw *hw , u8 bandwidth )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  u8 rfpath ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  {
  if ((int )bandwidth == 0) {
    goto case_0;
  } else {
  }
  if ((int )bandwidth == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0:
  rfpath = 0U;
  goto ldv_50505;
  ldv_50504:
  {
  rtlphy->rfreg_chnlval[(int )rfpath] = (rtlphy->rfreg_chnlval[(int )rfpath] & 4294964223U) | 1024U;
  rtl_set_rfreg(hw, (enum radio_path )rfpath, 24U, 3072U, 1U);
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> 20M RF 0x18 = 0x%x\n", "rtl92d_phy_rf6052_set_bandwidth",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             rtlphy->rfreg_chnlval[(int )rfpath]);
      }
    } else {
    }
  } else {
  }
  rfpath = (u8 )((int )rfpath + 1);
  ldv_50505: ;
  if ((int )rfpath < (int )rtlphy->num_total_rfpath) {
    goto ldv_50504;
  } else {
  }
  goto ldv_50507;
  case_1:
  rfpath = 0U;
  goto ldv_50510;
  ldv_50509:
  {
  rtlphy->rfreg_chnlval[(int )rfpath] = rtlphy->rfreg_chnlval[(int )rfpath] & 4294964223U;
  rtl_set_rfreg(hw, (enum radio_path )rfpath, 24U, 3072U, 0U);
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> 40M RF 0x18 = 0x%x\n", "rtl92d_phy_rf6052_set_bandwidth",
             (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL,
             rtlphy->rfreg_chnlval[(int )rfpath]);
      }
    } else {
    }
  } else {
  }
  rfpath = (u8 )((int )rfpath + 1);
  ldv_50510: ;
  if ((int )rfpath < (int )rtlphy->num_total_rfpath) {
    goto ldv_50509;
  } else {
  }
  goto ldv_50507;
  switch_default:
  {
  tmp___9 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                             0L);
  }
  if (tmp___9 != 0L) {
    {
    tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___7 = preempt_count();
      tmp___8 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> unknown bandwidth: %#X\n", "rtl92d_phy_rf6052_set_bandwidth",
             (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL,
             (int )bandwidth);
      }
    } else {
    }
  } else {
  }
  goto ldv_50507;
  switch_break: ;
  }
  ldv_50507: ;
  return;
}
}
void rtl92d_phy_rf6052_set_cck_txpower(struct ieee80211_hw *hw , u8 *ppowerlevel )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_mac *mac ;
  struct rtl_efuse *rtlefuse ;
  u32 tx_agc[2U] ;
  u32 tmpval ;
  bool turbo_scanoff ;
  u8 idx1 ;
  u8 idx2 ;
  u8 *ptr ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  rtlefuse = & ((struct rtl_priv *)hw->priv)->efuse;
  tx_agc[0] = 0U;
  tx_agc[1] = 0U;
  turbo_scanoff = 0;
  if ((unsigned int )rtlefuse->eeprom_regulatory != 0U) {
    turbo_scanoff = 1;
  } else {
  }
  if ((int )mac->act_scanning) {
    tx_agc[0] = 1061109567U;
    tx_agc[1] = 1061109567U;
    if ((int )turbo_scanoff) {
      idx1 = 0U;
      goto ldv_50528;
      ldv_50527:
      tx_agc[(int )idx1] = (u32 )((((int )*(ppowerlevel + (unsigned long )idx1) | ((int )*(ppowerlevel + (unsigned long )idx1) << 8)) | ((int )*(ppowerlevel + (unsigned long )idx1) << 16)) | ((int )*(ppowerlevel + (unsigned long )idx1) << 24));
      idx1 = (u8 )((int )idx1 + 1);
      ldv_50528: ;
      if ((unsigned int )idx1 <= 1U) {
        goto ldv_50527;
      } else {
      }
    } else {
    }
  } else {
    idx1 = 0U;
    goto ldv_50531;
    ldv_50530:
    tx_agc[(int )idx1] = (u32 )((((int )*(ppowerlevel + (unsigned long )idx1) | ((int )*(ppowerlevel + (unsigned long )idx1) << 8)) | ((int )*(ppowerlevel + (unsigned long )idx1) << 16)) | ((int )*(ppowerlevel + (unsigned long )idx1) << 24));
    idx1 = (u8 )((int )idx1 + 1);
    ldv_50531: ;
    if ((unsigned int )idx1 <= 1U) {
      goto ldv_50530;
    } else {
    }
    if ((unsigned int )rtlefuse->eeprom_regulatory == 0U) {
      tmpval = rtlphy->mcs_offset[0][6] + (rtlphy->mcs_offset[0][7] << 8);
      tx_agc[0] = tx_agc[0] + tmpval;
      tmpval = rtlphy->mcs_offset[0][14] + (rtlphy->mcs_offset[0][15] << 24);
      tx_agc[1] = tx_agc[1] + tmpval;
    } else {
    }
  }
  idx1 = 0U;
  goto ldv_50537;
  ldv_50536:
  ptr = (u8 *)(& tx_agc) + (unsigned long )idx1;
  idx2 = 0U;
  goto ldv_50534;
  ldv_50533: ;
  if ((unsigned int )*ptr > 63U) {
    *ptr = 63U;
  } else {
  }
  ptr = ptr + 1;
  idx2 = (u8 )((int )idx2 + 1);
  ldv_50534: ;
  if ((unsigned int )idx2 <= 3U) {
    goto ldv_50533;
  } else {
  }
  idx1 = (u8 )((int )idx1 + 1);
  ldv_50537: ;
  if ((unsigned int )idx1 <= 1U) {
    goto ldv_50536;
  } else {
  }
  {
  tmpval = tx_agc[0] & 255U;
  rtl_set_bbreg(hw, 3592U, 65280U, tmpval);
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[9] & 256UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: CCK PWR 1M (rf-A) = 0x%x (reg 0x%x)\n", tmpval, 3592);
    }
  } else {
  }
  {
  tmpval = tx_agc[0] >> 8;
  rtl_set_bbreg(hw, 2156U, 4294967040U, tmpval);
  tmp___0 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[9] & 256UL) != 0UL,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\017rtl8192de: CCK PWR 2~11M (rf-A) = 0x%x (reg 0x%x)\n", tmpval, 2156);
    }
  } else {
  }
  {
  tmpval = tx_agc[1] >> 24;
  rtl_set_bbreg(hw, 2156U, 255U, tmpval);
  tmp___1 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[9] & 256UL) != 0UL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    printk("\017rtl8192de: CCK PWR 11M (rf-B) = 0x%x (reg 0x%x)\n", tmpval, 2156);
    }
  } else {
  }
  {
  tmpval = tx_agc[1] & 16777215U;
  rtl_set_bbreg(hw, 2104U, 4294967040U, tmpval);
  tmp___2 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[9] & 256UL) != 0UL,
                             0L);
  }
  if (tmp___2 != 0L) {
    {
    printk("\017rtl8192de: CCK PWR 1~5.5M (rf-B) = 0x%x (reg 0x%x)\n", tmpval, 2104);
    }
  } else {
  }
  return;
}
}
static void _rtl92d_phy_get_power_base(struct ieee80211_hw *hw , u8 *ppowerlevel ,
                                       u8 channel , u32 *ofdmbase , u32 *mcsbase )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_efuse *rtlefuse ;
  u32 powerbase0 ;
  u32 powerbase1 ;
  u8 legacy_pwrdiff ;
  u8 ht20_pwrdiff ;
  u8 i ;
  u8 powerlevel[2U] ;
  long tmp ;
  long tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rtlefuse = & ((struct rtl_priv *)hw->priv)->efuse;
  i = 0U;
  goto ldv_50556;
  ldv_50555:
  {
  powerlevel[(int )i] = *(ppowerlevel + (unsigned long )i);
  legacy_pwrdiff = rtlefuse->txpwr_legacyhtdiff[(int )i][(int )channel + -1];
  powerbase0 = (u32 )((int )powerlevel[(int )i] + (int )legacy_pwrdiff);
  powerbase0 = (((powerbase0 << 24) | (powerbase0 << 16)) | (powerbase0 << 8)) | powerbase0;
  *(ofdmbase + (unsigned long )i) = powerbase0;
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[9] & 256UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de:  [OFDM power base index rf(%c) = 0x%x]\n", (unsigned int )i == 0U ? 65 : 66,
           *(ofdmbase + (unsigned long )i));
    }
  } else {
  }
  i = (u8 )((int )i + 1);
  ldv_50556: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_50555;
  } else {
  }
  i = 0U;
  goto ldv_50559;
  ldv_50558: ;
  if ((unsigned int )rtlphy->current_chan_bw == 0U) {
    ht20_pwrdiff = (u8 )rtlefuse->txpwr_ht20diff[(int )i][(int )channel + -1];
    powerlevel[(int )i] = (int )powerlevel[(int )i] + (int )ht20_pwrdiff;
  } else {
  }
  {
  powerbase1 = (u32 )powerlevel[(int )i];
  powerbase1 = (((powerbase1 << 24) | (powerbase1 << 16)) | (powerbase1 << 8)) | powerbase1;
  *(mcsbase + (unsigned long )i) = powerbase1;
  tmp___0 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[9] & 256UL) != 0UL,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\017rtl8192de:  [MCS power base index rf(%c) = 0x%x]\n", (unsigned int )i == 0U ? 65 : 66,
           *(mcsbase + (unsigned long )i));
    }
  } else {
  }
  i = (u8 )((int )i + 1);
  ldv_50559: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_50558;
  } else {
  }
  return;
}
}
static u8 _rtl92d_phy_get_chnlgroup_bypg(u8 chnlindex )
{
  u8 group ;
  u8 channel_info[59U] ;
  {
  channel_info[0] = 1U;
  channel_info[1] = 2U;
  channel_info[2] = 3U;
  channel_info[3] = 4U;
  channel_info[4] = 5U;
  channel_info[5] = 6U;
  channel_info[6] = 7U;
  channel_info[7] = 8U;
  channel_info[8] = 9U;
  channel_info[9] = 10U;
  channel_info[10] = 11U;
  channel_info[11] = 12U;
  channel_info[12] = 13U;
  channel_info[13] = 14U;
  channel_info[14] = 36U;
  channel_info[15] = 38U;
  channel_info[16] = 40U;
  channel_info[17] = 42U;
  channel_info[18] = 44U;
  channel_info[19] = 46U;
  channel_info[20] = 48U;
  channel_info[21] = 50U;
  channel_info[22] = 52U;
  channel_info[23] = 54U;
  channel_info[24] = 56U;
  channel_info[25] = 58U;
  channel_info[26] = 60U;
  channel_info[27] = 62U;
  channel_info[28] = 64U;
  channel_info[29] = 100U;
  channel_info[30] = 102U;
  channel_info[31] = 104U;
  channel_info[32] = 106U;
  channel_info[33] = 108U;
  channel_info[34] = 110U;
  channel_info[35] = 112U;
  channel_info[36] = 114U;
  channel_info[37] = 116U;
  channel_info[38] = 118U;
  channel_info[39] = 120U;
  channel_info[40] = 122U;
  channel_info[41] = 124U;
  channel_info[42] = 126U;
  channel_info[43] = 128U;
  channel_info[44] = 130U;
  channel_info[45] = 132U;
  channel_info[46] = 134U;
  channel_info[47] = 136U;
  channel_info[48] = 138U;
  channel_info[49] = 140U;
  channel_info[50] = 149U;
  channel_info[51] = 151U;
  channel_info[52] = 153U;
  channel_info[53] = 155U;
  channel_info[54] = 157U;
  channel_info[55] = 159U;
  channel_info[56] = 161U;
  channel_info[57] = 163U;
  channel_info[58] = 165U;
  if ((unsigned int )channel_info[(int )chnlindex] <= 3U) {
    group = 0U;
  } else
  if ((unsigned int )channel_info[(int )chnlindex] <= 9U) {
    group = 1U;
  } else
  if ((unsigned int )channel_info[(int )chnlindex] <= 14U) {
    group = 2U;
  } else
  if ((unsigned int )channel_info[(int )chnlindex] <= 64U) {
    group = 6U;
  } else
  if ((unsigned int )channel_info[(int )chnlindex] <= 140U) {
    group = 7U;
  } else {
    group = 8U;
  }
  return (group);
}
}
static void _rtl92d_get_txpower_writeval_by_regulatory(struct ieee80211_hw *hw , u8 channel ,
                                                       u8 index , u32 *powerbase0 ,
                                                       u32 *powerbase1 , u32 *p_outwriteval )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_efuse *rtlefuse ;
  u8 i ;
  u8 chnlgroup ;
  u8 pwr_diff_limit[4U] ;
  u32 writeval ;
  u32 customer_limit ;
  u32 rf ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rtlefuse = & ((struct rtl_priv *)hw->priv)->efuse;
  chnlgroup = 0U;
  writeval = 0U;
  rf = 0U;
  goto ldv_50593;
  ldv_50592: ;
  {
  if ((int )rtlefuse->eeprom_regulatory == 0) {
    goto case_0;
  } else {
  }
  if ((int )rtlefuse->eeprom_regulatory == 1) {
    goto case_1;
  } else {
  }
  if ((int )rtlefuse->eeprom_regulatory == 2) {
    goto case_2;
  } else {
  }
  if ((int )rtlefuse->eeprom_regulatory == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0:
  {
  chnlgroup = 0U;
  writeval = rtlphy->mcs_offset[(int )chnlgroup][(int )index + (rf != 0U ? 8 : 0)] + ((unsigned int )index <= 1U ? *(powerbase0 + (unsigned long )rf) : *(powerbase1 + (unsigned long )rf));
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[9] & 256UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: RTK better performance, writeval(%c) = 0x%x\n", rf == 0U ? 65 : 66,
           writeval);
    }
  } else {
  }
  goto ldv_50584;
  case_1: ;
  if ((unsigned int )rtlphy->pwrgroup_cnt == 1U) {
    chnlgroup = 0U;
  } else {
  }
  if ((unsigned int )rtlphy->pwrgroup_cnt > 12U) {
    {
    chnlgroup = _rtl92d_phy_get_chnlgroup_bypg((int )((unsigned int )channel + 255U));
    }
    if ((unsigned int )rtlphy->current_chan_bw == 0U) {
      chnlgroup = (u8 )((int )chnlgroup + 1);
    } else {
      chnlgroup = (unsigned int )chnlgroup + 4U;
    }
    {
    writeval = rtlphy->mcs_offset[(int )chnlgroup][(int )index + (rf != 0U ? 8 : 0)] + ((unsigned int )index <= 1U ? *(powerbase0 + (unsigned long )rf) : *(powerbase1 + (unsigned long )rf));
    tmp___0 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[9] & 256UL) != 0UL,
                               0L);
    }
    if (tmp___0 != 0L) {
      {
      printk("\017rtl8192de: Realtek regulatory, 20MHz, writeval(%c) = 0x%x\n", rf == 0U ? 65 : 66,
             writeval);
      }
    } else {
    }
  } else {
  }
  goto ldv_50584;
  case_2:
  {
  writeval = (unsigned int )index <= 1U ? *(powerbase0 + (unsigned long )rf) : *(powerbase1 + (unsigned long )rf);
  tmp___1 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[9] & 256UL) != 0UL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    printk("\017rtl8192de: Better regulatory, writeval(%c) = 0x%x\n", rf == 0U ? 65 : 66,
           writeval);
    }
  } else {
  }
  goto ldv_50584;
  case_3:
  chnlgroup = 0U;
  if ((unsigned int )rtlphy->current_chan_bw == 1U) {
    {
    tmp___2 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[9] & 256UL) != 0UL,
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      printk("\017rtl8192de: customer\'s limit, 40MHz rf(%c) = 0x%x\n", rf == 0U ? 65 : 66,
             (int )rtlefuse->pwrgroup_ht40[rf][(int )channel + -1]);
      }
    } else {
    }
  } else {
    {
    tmp___3 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[9] & 256UL) != 0UL,
                               0L);
    }
    if (tmp___3 != 0L) {
      {
      printk("\017rtl8192de: customer\'s limit, 20MHz rf(%c) = 0x%x\n", rf == 0U ? 65 : 66,
             (int )rtlefuse->pwrgroup_ht20[rf][(int )channel + -1]);
      }
    } else {
    }
  }
  i = 0U;
  goto ldv_50589;
  ldv_50588:
  pwr_diff_limit[(int )i] = (unsigned char )((rtlphy->mcs_offset[(int )chnlgroup][(int )index + (rf != 0U ? 8 : 0)] & (u32 )(127 << (int )i * 8)) >> (int )i * 8);
  if ((unsigned int )rtlphy->current_chan_bw == 1U) {
    if ((int )pwr_diff_limit[(int )i] > (int )rtlefuse->pwrgroup_ht40[rf][(int )channel + -1]) {
      pwr_diff_limit[(int )i] = rtlefuse->pwrgroup_ht40[rf][(int )channel + -1];
    } else {
    }
  } else
  if ((int )pwr_diff_limit[(int )i] > (int )rtlefuse->pwrgroup_ht20[rf][(int )channel + -1]) {
    pwr_diff_limit[(int )i] = rtlefuse->pwrgroup_ht20[rf][(int )channel + -1];
  } else {
  }
  i = (u8 )((int )i + 1);
  ldv_50589: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_50588;
  } else {
  }
  {
  customer_limit = (u32 )(((((int )pwr_diff_limit[3] << 24) | ((int )pwr_diff_limit[2] << 16)) | ((int )pwr_diff_limit[1] << 8)) | (int )pwr_diff_limit[0]);
  tmp___4 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[9] & 256UL) != 0UL,
                             0L);
  }
  if (tmp___4 != 0L) {
    {
    printk("\017rtl8192de: Customer\'s limit rf(%c) = 0x%x\n", rf == 0U ? 65 : 66,
           customer_limit);
    }
  } else {
  }
  {
  writeval = customer_limit + ((unsigned int )index <= 1U ? *(powerbase0 + (unsigned long )rf) : *(powerbase1 + (unsigned long )rf));
  tmp___5 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[9] & 256UL) != 0UL,
                             0L);
  }
  if (tmp___5 != 0L) {
    {
    printk("\017rtl8192de: Customer, writeval rf(%c)= 0x%x\n", rf == 0U ? 65 : 66,
           writeval);
    }
  } else {
  }
  goto ldv_50584;
  switch_default:
  {
  chnlgroup = 0U;
  writeval = rtlphy->mcs_offset[(int )chnlgroup][(int )index + (rf != 0U ? 8 : 0)] + ((unsigned int )index <= 1U ? *(powerbase0 + (unsigned long )rf) : *(powerbase1 + (unsigned long )rf));
  tmp___6 = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[9] & 256UL) != 0UL,
                             0L);
  }
  if (tmp___6 != 0L) {
    {
    printk("\017rtl8192de: RTK better performance, writeval rf(%c) = 0x%x\n", rf == 0U ? 65 : 66,
           writeval);
    }
  } else {
  }
  goto ldv_50584;
  switch_break: ;
  }
  ldv_50584:
  *(p_outwriteval + (unsigned long )rf) = writeval;
  rf = rf + 1U;
  ldv_50593: ;
  if (rf <= 1U) {
    goto ldv_50592;
  } else {
  }
  return;
}
}
static void _rtl92d_write_ofdm_power_reg(struct ieee80211_hw *hw , u8 index , u32 *pvalue )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  u16 regoffset_a[6U] ;
  u16 regoffset_b[6U] ;
  u8 i ;
  u8 rf ;
  u8 pwr_val[4U] ;
  u32 writeval ;
  u16 regoffset ;
  long tmp ;
  u8 tmp___0 ;
  u8 tmp___1 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  regoffset_a[0] = 3584U;
  regoffset_a[1] = 3588U;
  regoffset_a[2] = 3600U;
  regoffset_a[3] = 3604U;
  regoffset_a[4] = 3608U;
  regoffset_a[5] = 3612U;
  regoffset_b[0] = 2096U;
  regoffset_b[1] = 2100U;
  regoffset_b[2] = 2108U;
  regoffset_b[3] = 2120U;
  regoffset_b[4] = 2124U;
  regoffset_b[5] = 2152U;
  rf = 0U;
  goto ldv_50616;
  ldv_50615:
  writeval = *(pvalue + (unsigned long )rf);
  i = 0U;
  goto ldv_50610;
  ldv_50609:
  pwr_val[(int )i] = (unsigned char )((writeval & (u32 )(127 << (int )i * 8)) >> (int )i * 8);
  if ((unsigned int )pwr_val[(int )i] > 63U) {
    pwr_val[(int )i] = 63U;
  } else {
  }
  i = (u8 )((int )i + 1);
  ldv_50610: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_50609;
  } else {
  }
  writeval = (u32 )(((((int )pwr_val[3] << 24) | ((int )pwr_val[2] << 16)) | ((int )pwr_val[1] << 8)) | (int )pwr_val[0]);
  if ((unsigned int )rf == 0U) {
    regoffset = regoffset_a[(int )index];
  } else {
    regoffset = regoffset_b[(int )index];
  }
  {
  rtl_set_bbreg(hw, (u32 )regoffset, 4294967295U, writeval);
  tmp = ldv__builtin_expect(((unsigned long )rtlpriv->dbg.dbgp_type[9] & 256UL) != 0UL,
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\017rtl8192de: Set 0x%x = %08x\n", (int )regoffset, writeval);
    }
  } else {
  }
  {
  tmp___0 = get_rf_type(rtlphy);
  }
  if ((unsigned int )tmp___0 == 2U && ((unsigned int )regoffset == 3612U || (unsigned int )regoffset == 2152U)) {
    goto _L;
  } else {
    {
    tmp___1 = get_rf_type(rtlphy);
    }
    if ((unsigned int )tmp___1 != 2U && ((unsigned int )regoffset == 3604U || (unsigned int )regoffset == 2120U)) {
      _L:
      writeval = (u32 )pwr_val[3];
      if ((unsigned int )regoffset == 3612U || (unsigned int )regoffset == 3604U) {
        regoffset = 3216U;
      } else {
      }
      if ((unsigned int )regoffset == 2152U || (unsigned int )regoffset == 2120U) {
        regoffset = 3224U;
      } else {
      }
      i = 0U;
      goto ldv_50613;
      ldv_50612: ;
      if ((unsigned int )i != 2U) {
        writeval = writeval > 8U ? writeval - 8U : 0U;
      } else {
        writeval = writeval > 6U ? writeval - 6U : 0U;
      }
      {
      rtl_write_byte(rtlpriv, (unsigned int )((int )regoffset + (int )i), (int )((unsigned char )writeval));
      i = (u8 )((int )i + 1);
      }
      ldv_50613: ;
      if ((unsigned int )i <= 2U) {
        goto ldv_50612;
      } else {
      }
    } else {
    }
  }
  rf = (u8 )((int )rf + 1);
  ldv_50616: ;
  if ((unsigned int )rf <= 1U) {
    goto ldv_50615;
  } else {
  }
  return;
}
}
void rtl92d_phy_rf6052_set_ofdm_txpower(struct ieee80211_hw *hw , u8 *ppowerlevel ,
                                        u8 channel )
{
  u32 writeval[2U] ;
  u32 powerbase0[2U] ;
  u32 powerbase1[2U] ;
  u8 index ;
  {
  {
  _rtl92d_phy_get_power_base(hw, ppowerlevel, (int )channel, (u32 *)(& powerbase0),
                             (u32 *)(& powerbase1));
  index = 0U;
  }
  goto ldv_50628;
  ldv_50627:
  {
  _rtl92d_get_txpower_writeval_by_regulatory(hw, (int )channel, (int )index, (u32 *)(& powerbase0),
                                             (u32 *)(& powerbase1), (u32 *)(& writeval));
  _rtl92d_write_ofdm_power_reg(hw, (int )index, (u32 *)(& writeval));
  index = (u8 )((int )index + 1);
  }
  ldv_50628: ;
  if ((unsigned int )index <= 5U) {
    goto ldv_50627;
  } else {
  }
  return;
}
}
bool rtl92d_phy_enable_anotherphy(struct ieee80211_hw *hw , bool bmac0 )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 u1btmp ;
  u8 direct ;
  u8 mac_reg ;
  u8 mac_on_bit ;
  bool bresult ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & rtlpriv->rtlhal;
  direct = (int )bmac0 ? 12U : 8U;
  mac_reg = (int )bmac0 ? 83U : 129U;
  mac_on_bit = (int )bmac0 ? 1U : 128U;
  bresult = 1;
  rtlhal->during_mac0init_radiob = 0;
  rtlhal->during_mac1init_radioa = 0;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> ===>\n", "rtl92d_phy_enable_anotherphy",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  {
  u1btmp = rtl_read_byte(rtlpriv, (u32 )mac_reg);
  }
  if ((unsigned int )((int )u1btmp & (int )mac_on_bit) == 0U) {
    {
    tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> enable BB & RF\n", "rtl92d_phy_enable_anotherphy",
               (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    {
    tmp___7 = rtl92de_read_dword_dbi(hw, 0, (int )direct);
    rtl92de_write_dword_dbi(hw, 0, tmp___7 | 537067520U, (int )direct);
    }
  } else {
    bresult = 0;
  }
  {
  tmp___10 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                              0L);
  }
  if (tmp___10 != 0L) {
    {
    tmp___11 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___11 != 0L) {
      {
      tmp___8 = preempt_count();
      tmp___9 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <===\n", "rtl92d_phy_enable_anotherphy",
             (unsigned long )tmp___9 & 2096896UL, ((unsigned long )tmp___8 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return (bresult);
}
}
void rtl92d_phy_powerdown_anotherphy(struct ieee80211_hw *hw , bool bmac0 )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 u1btmp ;
  u8 direct ;
  u8 mac_reg ;
  u8 mac_on_bit ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlhal = & rtlpriv->rtlhal;
  direct = (int )bmac0 ? 12U : 8U;
  mac_reg = (int )bmac0 ? 83U : 129U;
  mac_on_bit = (int )bmac0 ? 1U : 128U;
  rtlhal->during_mac0init_radiob = 0;
  rtlhal->during_mac1init_radioa = 0;
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> ====>\n", "rtl92d_phy_powerdown_anotherphy",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  {
  u1btmp = rtl_read_byte(rtlpriv, (u32 )mac_reg);
  }
  if ((unsigned int )((int )u1btmp & (int )mac_on_bit) == 0U) {
    {
    tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___3 = preempt_count();
        tmp___4 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> power down\n", "rtl92d_phy_powerdown_anotherphy",
               (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    {
    rtl92de_write_dword_dbi(hw, 2112, 0U, (int )direct);
    }
  } else {
  }
  {
  tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 1048576ULL) != 0ULL,
                             0L);
  }
  if (tmp___9 != 0L) {
    {
    tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___7 = preempt_count();
      tmp___8 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <====\n", "rtl92d_phy_powerdown_anotherphy",
             (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
bool rtl92d_phy_rf6052_config(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  bool rtstatus ;
  struct rtl_hal *rtlhal ;
  u32 u4_regvalue ;
  u8 rfpath ;
  struct bb_reg_def *pphyreg ;
  bool mac1_initradioa_first ;
  bool mac0_initradiob_first ;
  bool need_pwrdown_radioa ;
  bool need_pwrdown_radiob ;
  bool true_bpath ;
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rtstatus = 1;
  rtlhal = & rtlpriv->rtlhal;
  u4_regvalue = 0U;
  mac1_initradioa_first = 0;
  mac0_initradiob_first = 0;
  need_pwrdown_radioa = 0;
  need_pwrdown_radiob = 0;
  true_bpath = 0;
  if ((unsigned int )rtlphy->rf_type == 0U) {
    rtlphy->num_total_rfpath = 1U;
  } else {
    rtlphy->num_total_rfpath = 2U;
  }
  if ((unsigned int )rtlhal->macphymode == 1U) {
    if ((unsigned int )rtlhal->current_bandtype == 0U && rtlhal->interfaceindex == 0U) {
      {
      tmp = rtl92d_phy_enable_anotherphy(hw, 1);
      }
      if ((int )tmp) {
        rtlphy->num_total_rfpath = 2U;
        mac0_initradiob_first = 1;
      } else {
        return (rtstatus);
      }
    } else
    if ((unsigned int )rtlhal->current_bandtype == 1U && rtlhal->interfaceindex == 1U) {
      {
      tmp___0 = rtl92d_phy_enable_anotherphy(hw, 0);
      }
      if ((int )tmp___0) {
        rtlphy->num_total_rfpath = 2U;
        mac1_initradioa_first = 1;
      } else {
        return (rtstatus);
      }
    } else
    if (rtlhal->interfaceindex == 1U) {
      true_bpath = 1;
    } else {
    }
  } else {
  }
  rfpath = 0U;
  goto ldv_50686;
  ldv_50685: ;
  if ((int )mac1_initradioa_first) {
    if ((unsigned int )rfpath == 0U) {
      rtlhal->during_mac1init_radioa = 1;
      need_pwrdown_radioa = 1;
    } else
    if ((unsigned int )rfpath == 1U) {
      rtlhal->during_mac1init_radioa = 0;
      mac1_initradioa_first = 0;
      rfpath = 0U;
      true_bpath = 1;
      rtlphy->num_total_rfpath = 1U;
    } else {
    }
  } else
  if ((int )mac0_initradiob_first) {
    if ((unsigned int )rfpath == 0U) {
      rtlhal->during_mac0init_radiob = 0;
    } else {
    }
    if ((unsigned int )rfpath == 1U) {
      rtlhal->during_mac0init_radiob = 1;
      mac0_initradiob_first = 0;
      need_pwrdown_radiob = 1;
      rfpath = 0U;
      true_bpath = 1;
      rtlphy->num_total_rfpath = 1U;
    } else {
    }
  } else {
  }
  pphyreg = (struct bb_reg_def *)(& rtlphy->phyreg_def) + (unsigned long )rfpath;
  {
  if ((int )rfpath == 0) {
    goto case_0;
  } else {
  }
  if ((int )rfpath == 2) {
    goto case_2;
  } else {
  }
  if ((int )rfpath == 1) {
    goto case_1;
  } else {
  }
  if ((int )rfpath == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_0: ;
  case_2:
  {
  u4_regvalue = rtl_get_bbreg(hw, pphyreg->rfintfs, 16U);
  }
  goto ldv_50670;
  case_1: ;
  case_3:
  {
  u4_regvalue = rtl_get_bbreg(hw, pphyreg->rfintfs, 1048576U);
  }
  goto ldv_50670;
  switch_break: ;
  }
  ldv_50670:
  {
  rtl_set_bbreg(hw, pphyreg->rfintfe, 1048576U, 1U);
  __const_udelay(4295UL);
  rtl_set_bbreg(hw, pphyreg->rfintfo, 16U, 1U);
  __const_udelay(4295UL);
  rtl_set_bbreg(hw, pphyreg->rfhssi_para2, 1024U, 0U);
  __const_udelay(4295UL);
  rtl_set_bbreg(hw, pphyreg->rfhssi_para2, 2048U, 0U);
  __const_udelay(4295UL);
  }
  {
  if ((int )rfpath == 0) {
    goto case_0___0;
  } else {
  }
  if ((int )rfpath == 1) {
    goto case_1___0;
  } else {
  }
  if ((int )rfpath == 2) {
    goto case_2___0;
  } else {
  }
  if ((int )rfpath == 3) {
    goto case_3___0;
  } else {
  }
  goto switch_break___0;
  case_0___0: ;
  if ((int )true_bpath) {
    {
    rtstatus = rtl92d_phy_config_rf_with_headerfile(hw, 1, (enum radio_path )rfpath);
    }
  } else {
    {
    rtstatus = rtl92d_phy_config_rf_with_headerfile(hw, 0, (enum radio_path )rfpath);
    }
  }
  goto ldv_50674;
  case_1___0:
  {
  rtstatus = rtl92d_phy_config_rf_with_headerfile(hw, 1, (enum radio_path )rfpath);
  }
  goto ldv_50674;
  case_2___0: ;
  goto ldv_50674;
  case_3___0: ;
  goto ldv_50674;
  switch_break___0: ;
  }
  ldv_50674: ;
  {
  if ((int )rfpath == 0) {
    goto case_0___1;
  } else {
  }
  if ((int )rfpath == 2) {
    goto case_2___1;
  } else {
  }
  if ((int )rfpath == 1) {
    goto case_1___1;
  } else {
  }
  if ((int )rfpath == 3) {
    goto case_3___1;
  } else {
  }
  goto switch_break___1;
  case_0___1: ;
  case_2___1:
  {
  rtl_set_bbreg(hw, pphyreg->rfintfs, 16U, u4_regvalue);
  }
  goto ldv_50680;
  case_1___1: ;
  case_3___1:
  {
  rtl_set_bbreg(hw, pphyreg->rfintfs, 1048576U, u4_regvalue);
  }
  goto ldv_50680;
  switch_break___1: ;
  }
  ldv_50680: ;
  if (! rtstatus) {
    {
    tmp___3 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                               0L);
    }
    if (tmp___3 != 0L) {
      {
      tmp___4 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
      }
      if (tmp___4 != 0L) {
        {
        tmp___1 = preempt_count();
        tmp___2 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> Radio[%d] Fail!!", "rtl92d_phy_rf6052_config",
               (unsigned long )tmp___2 & 2096896UL, ((unsigned long )tmp___1 & 0xffffffffffdfffffUL) != 0UL,
               (int )rfpath);
        }
      } else {
      }
    } else {
    }
    goto phy_rf_cfg_fail;
  } else {
  }
  rfpath = (u8 )((int )rfpath + 1);
  ldv_50686: ;
  if ((int )rfpath < (int )rtlphy->num_total_rfpath) {
    goto ldv_50685;
  } else {
  }
  if ((int )need_pwrdown_radioa) {
    {
    rtl92d_phy_powerdown_anotherphy(hw, 0);
    }
  } else
  if ((int )need_pwrdown_radiob) {
    {
    rtl92d_phy_powerdown_anotherphy(hw, 1);
    }
  } else {
  }
  {
  tmp___7 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  }
  if (tmp___7 != 0L) {
    {
    tmp___8 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___8 != 0L) {
      {
      tmp___5 = preempt_count();
      tmp___6 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> <---\n", "rtl92d_phy_rf6052_config", (unsigned long )tmp___6 & 2096896UL,
             ((unsigned long )tmp___5 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return (rtstatus);
  phy_rf_cfg_fail: ;
  return (rtstatus);
}
}
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
void ldv_check_return_value_probe(int retval ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_24(int ldv_func_arg1 ) ;
static int ldv_ldv_post_probe_25(int ldv_func_arg1 ) ;
int ldv_filter_err_code(int ret_val ) ;
void ldv_check_final_state(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void *external_allocated_data(void) ;
extern struct module __this_module ;
__inline static int preempt_count___5(void)
{
  int pfo_ret__ ;
  {
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
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6046;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6046;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6046;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6046;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6046: ;
  return (pfo_ret__ & 2147483647);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void *vzalloc(unsigned long ) ;
extern void vfree(void const * ) ;
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
  __raw_spin_lock_init(& list->lock.__annonCompField20.rlock, "&(&list->lock)->rlock",
                       & __key);
  __skb_queue_head_init(list);
  }
  return;
}
}
extern void skb_queue_purge(struct sk_buff_head * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_22(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_23(struct pci_driver *ldv_func_arg1 ) ;
extern void rtnl_lock(void) ;
extern void rtnl_unlock(void) ;
extern int request_firmware_nowait(struct module * , bool , char const * , struct device * ,
                                   gfp_t , void * , void (*)(struct firmware const * ,
                                                              void * ) ) ;
extern void rtl_fw_cb(struct firmware const * , void * ) ;
extern int rtl_pci_probe(struct pci_dev * , struct pci_device_id const * ) ;
extern void rtl_pci_disconnect(struct pci_dev * ) ;
extern int rtl_pci_suspend(struct device * ) ;
extern int rtl_pci_resume(struct device * ) ;
extern void rtl_phy_scan_operation_backup(struct ieee80211_hw * , u8 ) ;
spinlock_t globalmutex_power ;
spinlock_t globalmutex_for_fwdownload ;
spinlock_t globalmutex_for_power_and_efuse ;
void rtl92de_tx_fill_desc(struct ieee80211_hw *hw , struct ieee80211_hdr *hdr , u8 *pdesc_tx ,
                          struct ieee80211_tx_info *info , struct ieee80211_sta *sta ,
                          struct sk_buff *skb , u8 hw_queue , struct rtl_tcb_desc *ptcb_desc ) ;
bool rtl92de_rx_query_desc(struct ieee80211_hw *hw , struct rtl_stats *stats , struct ieee80211_rx_status *rx_status ,
                           u8 *p_desc , struct sk_buff *skb ) ;
void rtl92de_set_desc(u8 *pdesc , bool istx , u8 desc_name , u8 *val ) ;
u32 rtl92de_get_desc(u8 *p_desc , bool istx , u8 desc_name ) ;
void rtl92de_tx_polling(struct ieee80211_hw *hw , u8 hw_queue ) ;
void rtl92de_tx_fill_cmddesc(struct ieee80211_hw *hw , u8 *pdesc , bool firstseg ,
                             bool lastseg , struct sk_buff *skb ) ;
static void rtl92d_init_aspm_vars(struct ieee80211_hw *hw )
{
  struct rtl_pci *rtlpci ;
  {
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  rtlpci->const_amdpci_aspm = 0U;
  rtlpci->const_pci_aspm = 3U;
  rtlpci->const_devicepci_aspm_setting = 3U;
  rtlpci->const_hostpci_aspm_setting = 2U;
  rtlpci->const_hwsw_rfoff_d3 = 0U;
  rtlpci->const_support_pciaspm = 1U;
  return;
}
}
static int rtl92d_init_sw_vars(struct ieee80211_hw *hw )
{
  int err ;
  u8 tid ;
  struct rtl_priv *rtlpriv ;
  struct rtl_pci *rtlpci ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  rtlpriv->dm.dm_initialgain_enable = 1;
  rtlpriv->dm.dm_flag = 0U;
  rtlpriv->dm.disable_framebursting = 0;
  rtlpriv->dm.thermalvalue = 0U;
  rtlpriv->dm.useramask = 1;
  if ((unsigned int )rtlpriv->rtlhal.current_bandtype == 1U) {
    rtlpriv->phy.current_channel = 36U;
  } else {
    rtlpriv->phy.current_channel = 1U;
  }
  if ((unsigned int )rtlpriv->rtlhal.macphymode != 0U) {
    rtlpriv->rtlhal.disable_amsdu_8k = 1;
    rtlpci->rxbuffersize = 4096U;
  } else {
  }
  rtlpci->transmit_config = 12800U;
  rtlpci->receive_config = 4026559246U;
  rtlpci->irq_mask[0] = 7007U;
  rtlpci->irq_mask[1] = 768U;
  rtlpriv->dbg.global_debuglevel = ((rtlpriv->cfg)->mod_params)->debug;
  rtlpriv->psc.inactiveps = ((rtlpriv->cfg)->mod_params)->inactiveps;
  rtlpriv->psc.swctrl_lps = ((rtlpriv->cfg)->mod_params)->swctrl_lps;
  rtlpriv->psc.fwctrl_lps = ((rtlpriv->cfg)->mod_params)->fwctrl_lps;
  if (! rtlpriv->psc.inactiveps) {
    {
    printk("\016rtl8192de: Power Save off (module option)\n");
    }
  } else {
  }
  if (! rtlpriv->psc.fwctrl_lps) {
    {
    printk("\016rtl8192de: FW Power Save off (module option)\n");
    }
  } else {
  }
  {
  rtlpriv->psc.reg_fwctrl_lps = 3U;
  rtlpriv->psc.reg_max_lps_awakeintvl = 5U;
  rtl92d_init_aspm_vars(hw);
  }
  if ((unsigned int )rtlpriv->psc.reg_fwctrl_lps == 1U) {
    rtlpriv->psc.fwctrl_psmode = 1U;
  } else
  if ((unsigned int )rtlpriv->psc.reg_fwctrl_lps == 2U) {
    rtlpriv->psc.fwctrl_psmode = 2U;
  } else
  if ((unsigned int )rtlpriv->psc.reg_fwctrl_lps == 3U) {
    rtlpriv->psc.fwctrl_psmode = 3U;
  } else {
  }
  rtlpriv->rtlhal.earlymode_enable = 0;
  tid = 0U;
  goto ldv_51731;
  ldv_51730:
  {
  skb_queue_head_init((struct sk_buff_head *)(& rtlpriv->mac80211.skb_waitq) + (unsigned long )tid);
  tid = (u8 )((int )tid + 1);
  }
  ldv_51731: ;
  if ((unsigned int )tid <= 7U) {
    goto ldv_51730;
  } else {
  }
  {
  tmp = vzalloc(32768UL);
  rtlpriv->rtlhal.pfirmware = (u8 *)tmp;
  }
  if ((unsigned long )rtlpriv->rtlhal.pfirmware == (unsigned long )((u8 *)0U)) {
    {
    tmp___2 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp___3 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___3 != 0L) {
        {
        tmp___0 = preempt_count___5();
        tmp___1 = preempt_count___5();
        printk("\017rtl8192de:%s():<%lx-%x> Can\'t alloc buffer for fw\n", "rtl92d_init_sw_vars",
               (unsigned long )tmp___1 & 2096896UL, ((unsigned long )tmp___0 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    return (1);
  } else {
  }
  {
  rtlpriv->max_fw_size = 32768;
  printk("\016rtl8192de: Driver for Realtek RTL8192DE WLAN interface\n");
  printk("\016rtl8192de: Loading firmware file %s\n", (rtlpriv->cfg)->fw_name);
  err = request_firmware_nowait(& __this_module, 1, (char const *)(rtlpriv->cfg)->fw_name,
                                rtlpriv->io.dev, 208U, (void *)hw, & rtl_fw_cb);
  }
  if (err != 0) {
    {
    tmp___6 = ldv__builtin_expect((long )((int )rtlpriv->dbg.global_debugcomponents) & 1L,
                               0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___7 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel >= 0, 0L);
      }
      if (tmp___7 != 0L) {
        {
        tmp___4 = preempt_count___5();
        tmp___5 = preempt_count___5();
        printk("\017rtl8192de:%s():<%lx-%x> Failed to request firmware!\n", "rtl92d_init_sw_vars",
               (unsigned long )tmp___5 & 2096896UL, ((unsigned long )tmp___4 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    return (1);
  } else {
  }
  return (0);
}
}
static void rtl92d_deinit_sw_vars(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  u8 tid ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  if ((unsigned long )rtlpriv->rtlhal.pfirmware != (unsigned long )((u8 *)0U)) {
    {
    vfree((void const *)rtlpriv->rtlhal.pfirmware);
    rtlpriv->rtlhal.pfirmware = (u8 *)0U;
    }
  } else {
  }
  tid = 0U;
  goto ldv_51740;
  ldv_51739:
  {
  skb_queue_purge((struct sk_buff_head *)(& rtlpriv->mac80211.skb_waitq) + (unsigned long )tid);
  tid = (u8 )((int )tid + 1);
  }
  ldv_51740: ;
  if ((unsigned int )tid <= 7U) {
    goto ldv_51739;
  } else {
  }
  return;
}
}
static struct rtl_hal_ops rtl8192de_hal_ops =
     {& rtl92d_init_sw_vars, & rtl92d_deinit_sw_vars, 0, & rtl92de_read_eeprom_info,
    & rtl92de_interrupt_recognized, & rtl92de_hw_init, & rtl92de_card_disable, & rtl92de_suspend,
    & rtl92de_resume, & rtl92de_enable_interrupt, & rtl92de_disable_interrupt, & rtl92de_set_network_type,
    & rtl92de_set_check_bssid, & rtl92d_phy_set_bw_mode, & rtl92d_phy_sw_chnl, & rtl92de_set_qos,
    & rtl92de_set_beacon_related_registers, & rtl92de_set_beacon_interval, & rtl92de_update_interrupt_mask,
    & rtl92de_get_hw_reg, & rtl92de_set_hw_reg, & rtl92de_update_hal_rate_tbl, 0,
    & rtl92de_tx_fill_desc, 0, & rtl92de_tx_fill_cmddesc, 0, & rtl92de_rx_query_desc,
    & rtl92de_update_channel_access_setting, & rtl92de_gpio_radio_on_off_checking,
    & rtl92d_dm_watchdog, & rtl_phy_scan_operation_backup, & rtl92d_phy_set_rf_power_state,
    & rtl92de_led_control, & rtl92de_set_desc, & rtl92de_get_desc, & rtl92de_tx_polling,
    & rtl92de_enable_hw_security_config, & rtl92de_set_key, & rtl92de_init_sw_leds,
    0, & rtl92d_phy_query_bb_reg, & rtl92d_phy_set_bb_reg, & rtl92d_phy_query_rf_reg,
    & rtl92d_phy_set_rf_reg, 0, & rtl92d_linked_set_reg, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0};
static struct rtl_mod_params rtl92de_mod_params = {0, 0, 1, 1, 0};
static struct rtl_hal_cfg rtl92de_hal_cfg =
     {2U, 1, (char *)"rtl8192de", (char *)"rtlwifi/rtl8192defw.bin", 0, & rtl8192de_hal_ops,
    & rtl92de_mod_params, 0, {0U, 2U, 8U, 4U, 8U, 256U, 4096U, 1U, 52U, 48U, 0U, 48U,
                              32768U, 4096U, 32U, 0U, 256U, 32U, 512U, 0U, 0U, 1648U,
                              1652U, 1656U, 1660U, 1664U, 0U, 1U, 2U, 4U, 5U, 2147483648U,
                              1073741824U, 536870912U, 268435456U, 134217728U, 67108864U,
                              33554432U, 16777216U, 8388608U, 4194304U, 2097152U,
                              1048576U, 524288U, 262144U, 131072U, 65536U, 32768U,
                              16384U, 8192U, 4096U, 2048U, 1024U, 512U, 256U, 0U,
                              128U, 64U, 32U, 16U, 8U, 4U, 2U, 1U, 8352U, 0U, 0U,
                              1U, 2U, 3U, 4U, 5U, 6U, 7U, 8U, 9U, 10U, 11U, 19U, 27U}};
static struct pci_device_id rtl92de_pci_ids[3U] = { {4332U, 33171U, 4294967295U, 4294967295U, 0U, 0U, (unsigned long )(& rtl92de_hal_cfg)},
        {4332U,
      43U, 4294967295U, 4294967295U, 0U, 0U, (unsigned long )(& rtl92de_hal_cfg)}};
struct pci_device_id const __mod_pci_device_table ;
static struct dev_pm_ops const rtlwifi_pm_ops =
     {0, 0, & rtl_pci_suspend, & rtl_pci_resume, & rtl_pci_suspend, & rtl_pci_resume,
    & rtl_pci_suspend, & rtl_pci_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0};
static struct pci_driver rtl92de_driver =
     {{0, 0}, "rtl8192de", (struct pci_device_id const *)(& rtl92de_pci_ids), & rtl_pci_probe,
    & rtl_pci_disconnect, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0,
                                                0, 0, 0, 0, & rtlwifi_pm_ops, 0},
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}};
static int rtl92de_module_init(void)
{
  int ret ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  {
  {
  ret = 0;
  spinlock_check(& globalmutex_power);
  __raw_spin_lock_init(& globalmutex_power.__annonCompField20.rlock, "&(&globalmutex_power)->rlock",
                       & __key);
  spinlock_check(& globalmutex_for_fwdownload);
  __raw_spin_lock_init(& globalmutex_for_fwdownload.__annonCompField20.rlock, "&(&globalmutex_for_fwdownload)->rlock",
                       & __key___0);
  spinlock_check(& globalmutex_for_power_and_efuse);
  __raw_spin_lock_init(& globalmutex_for_power_and_efuse.__annonCompField20.rlock,
                       "&(&globalmutex_for_power_and_efuse)->rlock", & __key___1);
  ret = ldv___pci_register_driver_22(& rtl92de_driver, & __this_module, "rtl8192de");
  }
  if (ret != 0) {
    {
    printk("\017rtl8192de:%s(): No device found\n", "rtl92de_module_init");
    }
  } else {
  }
  return (ret);
}
}
static void rtl92de_module_exit(void)
{
  {
  {
  ldv_pci_unregister_driver_23(& rtl92de_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_rtl92de_module_exit_6_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_rtl92de_module_init_6_11(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
void ldv_allocate_external_0(void) ;
void ldv_dispatch_deregister_4_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_ieee80211_instance_1_6_4(void) ;
void ldv_dispatch_deregister_platform_instance_6_6_5(void) ;
void ldv_dispatch_pm_deregister_3_5(void) ;
void ldv_dispatch_pm_register_3_6(void) ;
void ldv_dispatch_register_5_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_ieee80211_instance_1_6_6(void) ;
void ldv_dispatch_register_platform_instance_6_6_7(void) ;
void ldv_entry_EMGentry_6(void *arg0 ) ;
int main(void) ;
void ldv_ieee80211_ieee80211_instance_0(void *arg0 ) ;
void ldv_ieee80211_instance_callback_0_10(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_18(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_19(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_20(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_21(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_22(void (*arg0)(struct ieee80211_hw * , unsigned char * ,
                                                       _Bool , _Bool , struct sk_buff * ) ,
                                          struct ieee80211_hw *arg1 , unsigned char *arg2 ,
                                          _Bool arg3 , _Bool arg4 , struct sk_buff *arg5 ) ;
void ldv_ieee80211_instance_callback_0_25(void (*arg0)(struct ieee80211_hw * , struct ieee80211_hdr * ,
                                                       unsigned char * , struct ieee80211_tx_info * ,
                                                       struct ieee80211_sta * , struct sk_buff * ,
                                                       unsigned char , struct rtl_tcb_desc * ) ,
                                          struct ieee80211_hw *arg1 , struct ieee80211_hdr *arg2 ,
                                          unsigned char *arg3 , struct ieee80211_tx_info *arg4 ,
                                          struct ieee80211_sta *arg5 , struct sk_buff *arg6 ,
                                          unsigned char arg7 , struct rtl_tcb_desc *arg8 ) ;
void ldv_ieee80211_instance_callback_0_28(unsigned int (*arg0)(struct ieee80211_hw * ,
                                                               unsigned int , unsigned int ) ,
                                          struct ieee80211_hw *arg1 , unsigned int arg2 ,
                                          unsigned int arg3 ) ;
void ldv_ieee80211_instance_callback_0_31(unsigned int (*arg0)(unsigned char * , _Bool ,
                                                               unsigned char ) ,
                                          unsigned char *arg1 , _Bool arg2 , unsigned char arg3 ) ;
void ldv_ieee80211_instance_callback_0_34(void (*arg0)(struct ieee80211_hw * , unsigned char ,
                                                       unsigned char * ) , struct ieee80211_hw *arg1 ,
                                          unsigned char arg2 , unsigned char *arg3 ) ;
void ldv_ieee80211_instance_callback_0_37(unsigned int (*arg0)(struct ieee80211_hw * ,
                                                               enum radio_path ,
                                                               unsigned int , unsigned int ) ,
                                          struct ieee80211_hw *arg1 , enum radio_path arg2 ,
                                          unsigned int arg3 , unsigned int arg4 ) ;
void ldv_ieee80211_instance_callback_0_40(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_41(int (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_42(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_43(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_44(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_45(int (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_46(void (*arg0)(struct ieee80211_hw * , unsigned int * ,
                                                       unsigned int * ) , struct ieee80211_hw *arg1 ,
                                          unsigned int *arg2 , unsigned int *arg3 ) ;
void ldv_ieee80211_instance_callback_0_49(void (*arg0)(struct ieee80211_hw * , enum led_ctl_mode ) ,
                                          struct ieee80211_hw *arg1 , enum led_ctl_mode arg2 ) ;
void ldv_ieee80211_instance_callback_0_50(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_51(_Bool (*arg0)(struct ieee80211_hw * , struct rtl_stats * ,
                                                        struct ieee80211_rx_status * ,
                                                        unsigned char * , struct sk_buff * ) ,
                                          struct ieee80211_hw *arg1 , struct rtl_stats *arg2 ,
                                          struct ieee80211_rx_status *arg3 , unsigned char *arg4 ,
                                          struct sk_buff *arg5 ) ;
void ldv_ieee80211_instance_callback_0_54(_Bool (*arg0)(struct ieee80211_hw * , unsigned char * ) ,
                                          struct ieee80211_hw *arg1 , unsigned char *arg2 ) ;
void ldv_ieee80211_instance_callback_0_57(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_58(void (*arg0)(struct ieee80211_hw * , unsigned char ) ,
                                          struct ieee80211_hw *arg1 , unsigned char arg2 ) ;
void ldv_ieee80211_instance_callback_0_61(void (*arg0)(struct ieee80211_hw * , unsigned int ,
                                                       unsigned int , unsigned int ) ,
                                          struct ieee80211_hw *arg1 , unsigned int arg2 ,
                                          unsigned int arg3 , unsigned int arg4 ) ;
void ldv_ieee80211_instance_callback_0_64(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_65(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_66(void (*arg0)(struct ieee80211_hw * , enum nl80211_channel_type ) ,
                                          struct ieee80211_hw *arg1 , enum nl80211_channel_type arg2 ) ;
void ldv_ieee80211_instance_callback_0_67(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_68(void (*arg0)(struct ieee80211_hw * , _Bool ) ,
                                          struct ieee80211_hw *arg1 , _Bool arg2 ) ;
void ldv_ieee80211_instance_callback_0_71(void (*arg0)(unsigned char * , _Bool ,
                                                       unsigned char , unsigned char * ) ,
                                          unsigned char *arg1 , _Bool arg2 , unsigned char arg3 ,
                                          unsigned char *arg4 ) ;
void ldv_ieee80211_instance_callback_0_74(void (*arg0)(struct ieee80211_hw * , unsigned char ,
                                                       unsigned char * ) , struct ieee80211_hw *arg1 ,
                                          unsigned char arg2 , unsigned char *arg3 ) ;
void ldv_ieee80211_instance_callback_0_77(void (*arg0)(struct ieee80211_hw * , unsigned int ,
                                                       unsigned char * , _Bool ,
                                                       unsigned char , _Bool , _Bool ) ,
                                          struct ieee80211_hw *arg1 , unsigned int arg2 ,
                                          unsigned char *arg3 , _Bool arg4 , unsigned char arg5 ,
                                          _Bool arg6 , _Bool arg7 ) ;
void ldv_ieee80211_instance_callback_0_80(int (*arg0)(struct ieee80211_hw * , enum nl80211_iftype ) ,
                                          struct ieee80211_hw *arg1 , enum nl80211_iftype arg2 ) ;
void ldv_ieee80211_instance_callback_0_81(void (*arg0)(struct ieee80211_hw * , int ) ,
                                          struct ieee80211_hw *arg1 , int arg2 ) ;
void ldv_ieee80211_instance_callback_0_84(_Bool (*arg0)(struct ieee80211_hw * , enum rf_pwrstate ) ,
                                          struct ieee80211_hw *arg1 , enum rf_pwrstate arg2 ) ;
void ldv_ieee80211_instance_callback_0_85(void (*arg0)(struct ieee80211_hw * , enum radio_path ,
                                                       unsigned int , unsigned int ,
                                                       unsigned int ) , struct ieee80211_hw *arg1 ,
                                          enum radio_path arg2 , unsigned int arg3 ,
                                          unsigned int arg4 , unsigned int arg5 ) ;
void ldv_ieee80211_instance_callback_0_88(unsigned char (*arg0)(struct ieee80211_hw * ) ,
                                          struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_callback_0_89(void (*arg0)(struct ieee80211_hw * , unsigned char ) ,
                                          struct ieee80211_hw *arg1 , unsigned char arg2 ) ;
void ldv_ieee80211_instance_callback_0_92(void (*arg0)(struct ieee80211_hw * , unsigned int ,
                                                       unsigned int ) , struct ieee80211_hw *arg1 ,
                                          unsigned int arg2 , unsigned int arg3 ) ;
void ldv_ieee80211_instance_callback_0_95(void (*arg0)(struct ieee80211_hw * , struct ieee80211_sta * ,
                                                       unsigned char ) , struct ieee80211_hw *arg1 ,
                                          struct ieee80211_sta *arg2 , unsigned char arg3 ) ;
void ldv_ieee80211_instance_resume_0_12(int (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
int ldv_ieee80211_instance_start_0_6(int (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_ieee80211_instance_stop_0_8(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 ) ;
void ldv_initialize_external_data(void) ;
int ldv_pci_instance_probe_1_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_1_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_1_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_1_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_1_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_1_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_1_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_1(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_platform_instance_probe_3_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_instance_release_3_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
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
void ldv_pm_platform_instance_3(void *arg0 ) ;
void ldv_pm_pm_ops_instance_2(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
int ldv_switch_2(void) ;
int ldv_switch_3(void) ;
int ldv_switch_4(void) ;
void ldv_switch_automaton_state_0_1(void) ;
void ldv_switch_automaton_state_0_15(void) ;
void ldv_switch_automaton_state_1_11(void) ;
void ldv_switch_automaton_state_1_20(void) ;
void ldv_switch_automaton_state_2_1(void) ;
void ldv_switch_automaton_state_2_29(void) ;
void ldv_switch_automaton_state_3_17(void) ;
void ldv_switch_automaton_state_3_8(void) ;
void (*ldv_0_callback_deinit_sw_vars)(struct ieee80211_hw * ) ;
void (*ldv_0_callback_disable_interrupt)(struct ieee80211_hw * ) ;
void (*ldv_0_callback_dm_watchdog)(struct ieee80211_hw * ) ;
void (*ldv_0_callback_enable_hw_sec)(struct ieee80211_hw * ) ;
void (*ldv_0_callback_enable_interrupt)(struct ieee80211_hw * ) ;
void (*ldv_0_callback_fill_tx_cmddesc)(struct ieee80211_hw * , unsigned char * , _Bool ,
                                       _Bool , struct sk_buff * ) ;
void (*ldv_0_callback_fill_tx_desc)(struct ieee80211_hw * , struct ieee80211_hdr * ,
                                    unsigned char * , struct ieee80211_tx_info * ,
                                    struct ieee80211_sta * , struct sk_buff * , unsigned char ,
                                    struct rtl_tcb_desc * ) ;
unsigned int (*ldv_0_callback_get_bbreg)(struct ieee80211_hw * , unsigned int , unsigned int ) ;
unsigned int (*ldv_0_callback_get_desc)(unsigned char * , _Bool , unsigned char ) ;
void (*ldv_0_callback_get_hw_reg)(struct ieee80211_hw * , unsigned char , unsigned char * ) ;
unsigned int (*ldv_0_callback_get_rfreg)(struct ieee80211_hw * , enum radio_path ,
                                         unsigned int , unsigned int ) ;
void (*ldv_0_callback_hw_disable)(struct ieee80211_hw * ) ;
int (*ldv_0_callback_hw_init)(struct ieee80211_hw * ) ;
void (*ldv_0_callback_hw_resume)(struct ieee80211_hw * ) ;
void (*ldv_0_callback_hw_suspend)(struct ieee80211_hw * ) ;
void (*ldv_0_callback_init_sw_leds)(struct ieee80211_hw * ) ;
int (*ldv_0_callback_init_sw_vars)(struct ieee80211_hw * ) ;
void (*ldv_0_callback_interrupt_recognized)(struct ieee80211_hw * , unsigned int * ,
                                            unsigned int * ) ;
void (*ldv_0_callback_led_control)(struct ieee80211_hw * , enum led_ctl_mode ) ;
void (*ldv_0_callback_linked_set_reg)(struct ieee80211_hw * ) ;
_Bool (*ldv_0_callback_query_rx_desc)(struct ieee80211_hw * , struct rtl_stats * ,
                                      struct ieee80211_rx_status * , unsigned char * ,
                                      struct sk_buff * ) ;
_Bool (*ldv_0_callback_radio_onoff_checking)(struct ieee80211_hw * , unsigned char * ) ;
void (*ldv_0_callback_read_eeprom_info)(struct ieee80211_hw * ) ;
void (*ldv_0_callback_scan_operation_backup)(struct ieee80211_hw * , unsigned char ) ;
void (*ldv_0_callback_set_bbreg)(struct ieee80211_hw * , unsigned int , unsigned int ,
                                 unsigned int ) ;
void (*ldv_0_callback_set_bcn_intv)(struct ieee80211_hw * ) ;
void (*ldv_0_callback_set_bcn_reg)(struct ieee80211_hw * ) ;
void (*ldv_0_callback_set_bw_mode)(struct ieee80211_hw * , enum nl80211_channel_type ) ;
void (*ldv_0_callback_set_channel_access)(struct ieee80211_hw * ) ;
void (*ldv_0_callback_set_chk_bssid)(struct ieee80211_hw * , _Bool ) ;
void (*ldv_0_callback_set_desc)(unsigned char * , _Bool , unsigned char , unsigned char * ) ;
void (*ldv_0_callback_set_hw_reg)(struct ieee80211_hw * , unsigned char , unsigned char * ) ;
void (*ldv_0_callback_set_key)(struct ieee80211_hw * , unsigned int , unsigned char * ,
                               _Bool , unsigned char , _Bool , _Bool ) ;
int (*ldv_0_callback_set_network_type)(struct ieee80211_hw * , enum nl80211_iftype ) ;
void (*ldv_0_callback_set_qos)(struct ieee80211_hw * , int ) ;
_Bool (*ldv_0_callback_set_rf_power_state)(struct ieee80211_hw * , enum rf_pwrstate ) ;
void (*ldv_0_callback_set_rfreg)(struct ieee80211_hw * , enum radio_path , unsigned int ,
                                 unsigned int , unsigned int ) ;
unsigned char (*ldv_0_callback_switch_channel)(struct ieee80211_hw * ) ;
void (*ldv_0_callback_tx_polling)(struct ieee80211_hw * , unsigned char ) ;
void (*ldv_0_callback_update_interrupt_mask)(struct ieee80211_hw * , unsigned int ,
                                             unsigned int ) ;
void (*ldv_0_callback_update_rate_tbl)(struct ieee80211_hw * , struct ieee80211_sta * ,
                                       unsigned char ) ;
struct ieee80211_ops *ldv_0_container_ieee80211_ops ;
unsigned char *ldv_0_ldv_param_22_1_default ;
_Bool ldv_0_ldv_param_22_2_default ;
_Bool ldv_0_ldv_param_22_3_default ;
unsigned char *ldv_0_ldv_param_25_2_default ;
unsigned char ldv_0_ldv_param_25_6_default ;
unsigned int ldv_0_ldv_param_28_1_default ;
unsigned int ldv_0_ldv_param_28_2_default ;
unsigned char *ldv_0_ldv_param_31_0_default ;
_Bool ldv_0_ldv_param_31_1_default ;
unsigned char ldv_0_ldv_param_31_2_default ;
unsigned char ldv_0_ldv_param_34_1_default ;
unsigned char *ldv_0_ldv_param_34_2_default ;
unsigned int ldv_0_ldv_param_37_2_default ;
unsigned int ldv_0_ldv_param_37_3_default ;
unsigned int *ldv_0_ldv_param_46_1_default ;
unsigned int *ldv_0_ldv_param_46_2_default ;
unsigned char *ldv_0_ldv_param_51_3_default ;
unsigned char *ldv_0_ldv_param_54_1_default ;
unsigned char ldv_0_ldv_param_58_1_default ;
unsigned int ldv_0_ldv_param_61_1_default ;
unsigned int ldv_0_ldv_param_61_2_default ;
unsigned int ldv_0_ldv_param_61_3_default ;
_Bool ldv_0_ldv_param_68_1_default ;
unsigned char *ldv_0_ldv_param_71_0_default ;
_Bool ldv_0_ldv_param_71_1_default ;
unsigned char ldv_0_ldv_param_71_2_default ;
unsigned char *ldv_0_ldv_param_71_3_default ;
unsigned char ldv_0_ldv_param_74_1_default ;
unsigned char *ldv_0_ldv_param_74_2_default ;
unsigned int ldv_0_ldv_param_77_1_default ;
unsigned char *ldv_0_ldv_param_77_2_default ;
_Bool ldv_0_ldv_param_77_3_default ;
unsigned char ldv_0_ldv_param_77_4_default ;
_Bool ldv_0_ldv_param_77_5_default ;
_Bool ldv_0_ldv_param_77_6_default ;
int ldv_0_ldv_param_81_1_default ;
unsigned int ldv_0_ldv_param_85_2_default ;
unsigned int ldv_0_ldv_param_85_3_default ;
unsigned int ldv_0_ldv_param_85_4_default ;
unsigned char ldv_0_ldv_param_89_1_default ;
unsigned int ldv_0_ldv_param_92_1_default ;
unsigned int ldv_0_ldv_param_92_2_default ;
unsigned char ldv_0_ldv_param_95_2_default ;
enum led_ctl_mode ldv_0_resource_enum_led_ctl_mode ;
enum nl80211_channel_type ldv_0_resource_enum_nl80211_channel_type ;
enum nl80211_iftype ldv_0_resource_enum_nl80211_iftype ;
enum radio_path ldv_0_resource_enum_radio_path ;
enum rf_pwrstate ldv_0_resource_enum_rf_pwrstate ;
struct ieee80211_hw *ldv_0_resource_ieee80211_hw ;
struct ieee80211_hdr *ldv_0_resource_struct_ieee80211_hdr_ptr ;
struct ieee80211_rx_status *ldv_0_resource_struct_ieee80211_rx_status_ptr ;
struct ieee80211_sta *ldv_0_resource_struct_ieee80211_sta_ptr ;
struct ieee80211_tx_info *ldv_0_resource_struct_ieee80211_tx_info_ptr ;
struct rtl_stats *ldv_0_resource_struct_rtl_stats_ptr ;
struct rtl_tcb_desc *ldv_0_resource_struct_rtl_tcb_desc_ptr ;
struct sk_buff *ldv_0_resource_struct_sk_buff_ptr ;
int ldv_0_ret_default ;
struct pci_driver *ldv_1_container_pci_driver ;
struct pci_dev *ldv_1_resource_dev ;
struct pm_message ldv_1_resource_pm_message ;
struct pci_device_id *ldv_1_resource_struct_pci_device_id_ptr ;
int ldv_1_ret_default ;
struct device *ldv_2_device_device ;
struct dev_pm_ops *ldv_2_pm_ops_dev_pm_ops ;
struct platform_driver *ldv_3_container_platform_driver ;
struct platform_device *ldv_3_ldv_param_14_0_default ;
struct platform_device *ldv_3_ldv_param_3_0_default ;
int ldv_3_probed_default ;
void (*ldv_6_exit_rtl92de_module_exit_default)(void) ;
int (*ldv_6_init_rtl92de_module_init_default)(void) ;
int ldv_6_ret_default ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
int ldv_statevar_6 ;
void (*ldv_0_callback_deinit_sw_vars)(struct ieee80211_hw * ) = & rtl92d_deinit_sw_vars;
void (*ldv_0_callback_disable_interrupt)(struct ieee80211_hw * ) = & rtl92de_disable_interrupt;
void (*ldv_0_callback_dm_watchdog)(struct ieee80211_hw * ) = & rtl92d_dm_watchdog;
void (*ldv_0_callback_enable_hw_sec)(struct ieee80211_hw * ) = & rtl92de_enable_hw_security_config;
void (*ldv_0_callback_enable_interrupt)(struct ieee80211_hw * ) = & rtl92de_enable_interrupt;
void (*ldv_0_callback_fill_tx_cmddesc)(struct ieee80211_hw * , unsigned char * , _Bool ,
                                       _Bool , struct sk_buff * ) = & rtl92de_tx_fill_cmddesc;
void (*ldv_0_callback_fill_tx_desc)(struct ieee80211_hw * , struct ieee80211_hdr * ,
                                    unsigned char * , struct ieee80211_tx_info * ,
                                    struct ieee80211_sta * , struct sk_buff * , unsigned char ,
                                    struct rtl_tcb_desc * ) = & rtl92de_tx_fill_desc;
unsigned int (*ldv_0_callback_get_bbreg)(struct ieee80211_hw * , unsigned int , unsigned int ) = & rtl92d_phy_query_bb_reg;
unsigned int (*ldv_0_callback_get_desc)(unsigned char * , _Bool , unsigned char ) = & rtl92de_get_desc;
void (*ldv_0_callback_get_hw_reg)(struct ieee80211_hw * , unsigned char , unsigned char * ) = & rtl92de_get_hw_reg;
unsigned int (*ldv_0_callback_get_rfreg)(struct ieee80211_hw * , enum radio_path ,
                                         unsigned int , unsigned int ) = & rtl92d_phy_query_rf_reg;
void (*ldv_0_callback_hw_disable)(struct ieee80211_hw * ) = & rtl92de_card_disable;
int (*ldv_0_callback_hw_init)(struct ieee80211_hw * ) = & rtl92de_hw_init;
void (*ldv_0_callback_hw_resume)(struct ieee80211_hw * ) = & rtl92de_resume;
void (*ldv_0_callback_hw_suspend)(struct ieee80211_hw * ) = & rtl92de_suspend;
void (*ldv_0_callback_init_sw_leds)(struct ieee80211_hw * ) = & rtl92de_init_sw_leds;
int (*ldv_0_callback_init_sw_vars)(struct ieee80211_hw * ) = & rtl92d_init_sw_vars;
void (*ldv_0_callback_interrupt_recognized)(struct ieee80211_hw * , unsigned int * ,
                                            unsigned int * ) = & rtl92de_interrupt_recognized;
void (*ldv_0_callback_led_control)(struct ieee80211_hw * , enum led_ctl_mode ) = & rtl92de_led_control;
void (*ldv_0_callback_linked_set_reg)(struct ieee80211_hw * ) = & rtl92d_linked_set_reg;
_Bool (*ldv_0_callback_query_rx_desc)(struct ieee80211_hw * , struct rtl_stats * ,
                                      struct ieee80211_rx_status * , unsigned char * ,
                                      struct sk_buff * ) = & rtl92de_rx_query_desc;
_Bool (*ldv_0_callback_radio_onoff_checking)(struct ieee80211_hw * , unsigned char * ) = & rtl92de_gpio_radio_on_off_checking;
void (*ldv_0_callback_read_eeprom_info)(struct ieee80211_hw * ) = & rtl92de_read_eeprom_info;
void (*ldv_0_callback_scan_operation_backup)(struct ieee80211_hw * , unsigned char ) = & rtl_phy_scan_operation_backup;
void (*ldv_0_callback_set_bbreg)(struct ieee80211_hw * , unsigned int , unsigned int ,
                                 unsigned int ) = & rtl92d_phy_set_bb_reg;
void (*ldv_0_callback_set_bcn_intv)(struct ieee80211_hw * ) = & rtl92de_set_beacon_interval;
void (*ldv_0_callback_set_bcn_reg)(struct ieee80211_hw * ) = & rtl92de_set_beacon_related_registers;
void (*ldv_0_callback_set_bw_mode)(struct ieee80211_hw * , enum nl80211_channel_type ) = & rtl92d_phy_set_bw_mode;
void (*ldv_0_callback_set_channel_access)(struct ieee80211_hw * ) = & rtl92de_update_channel_access_setting;
void (*ldv_0_callback_set_chk_bssid)(struct ieee80211_hw * , _Bool ) = & rtl92de_set_check_bssid;
void (*ldv_0_callback_set_desc)(unsigned char * , _Bool , unsigned char , unsigned char * ) = & rtl92de_set_desc;
void (*ldv_0_callback_set_hw_reg)(struct ieee80211_hw * , unsigned char , unsigned char * ) = & rtl92de_set_hw_reg;
void (*ldv_0_callback_set_key)(struct ieee80211_hw * , unsigned int , unsigned char * ,
                               _Bool , unsigned char , _Bool , _Bool ) = & rtl92de_set_key;
int (*ldv_0_callback_set_network_type)(struct ieee80211_hw * , enum nl80211_iftype ) = & rtl92de_set_network_type;
void (*ldv_0_callback_set_qos)(struct ieee80211_hw * , int ) = & rtl92de_set_qos;
_Bool (*ldv_0_callback_set_rf_power_state)(struct ieee80211_hw * , enum rf_pwrstate ) = & rtl92d_phy_set_rf_power_state;
void (*ldv_0_callback_set_rfreg)(struct ieee80211_hw * , enum radio_path , unsigned int ,
                                 unsigned int , unsigned int ) = & rtl92d_phy_set_rf_reg;
unsigned char (*ldv_0_callback_switch_channel)(struct ieee80211_hw * ) = & rtl92d_phy_sw_chnl;
void (*ldv_0_callback_tx_polling)(struct ieee80211_hw * , unsigned char ) = & rtl92de_tx_polling;
void (*ldv_0_callback_update_interrupt_mask)(struct ieee80211_hw * , unsigned int ,
                                             unsigned int ) = & rtl92de_update_interrupt_mask;
void (*ldv_0_callback_update_rate_tbl)(struct ieee80211_hw * , struct ieee80211_sta * ,
                                       unsigned char ) = & rtl92de_update_hal_rate_tbl;
void (*ldv_6_exit_rtl92de_module_exit_default)(void) = & rtl92de_module_exit;
int (*ldv_6_init_rtl92de_module_init_default)(void) = & rtl92de_module_init;
void ldv_EMGentry_exit_rtl92de_module_exit_6_2(void (*arg0)(void) )
{
  {
  {
  rtl92de_module_exit();
  }
  return;
}
}
int ldv_EMGentry_init_rtl92de_module_init_6_11(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = rtl92de_module_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_5_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_5_pci_driver_pci_driver = arg1;
    ldv_assume(ldv_statevar_1 == 20);
    ldv_dispatch_register_5_2(ldv_5_pci_driver_pci_driver);
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
  void *tmp___22 ;
  void *tmp___23 ;
  void *tmp___24 ;
  {
  {
  tmp = external_allocated_data();
  ldv_0_container_ieee80211_ops = (struct ieee80211_ops *)tmp;
  tmp___0 = external_allocated_data();
  ldv_0_ldv_param_22_1_default = (unsigned char *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_0_ldv_param_25_2_default = (unsigned char *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_0_ldv_param_31_0_default = (unsigned char *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_0_ldv_param_34_2_default = (unsigned char *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_0_ldv_param_46_1_default = (unsigned int *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_0_ldv_param_46_2_default = (unsigned int *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_0_ldv_param_51_3_default = (unsigned char *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_0_ldv_param_54_1_default = (unsigned char *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_0_ldv_param_71_0_default = (unsigned char *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_0_ldv_param_71_3_default = (unsigned char *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_0_ldv_param_74_2_default = (unsigned char *)tmp___10;
  tmp___11 = external_allocated_data();
  ldv_0_ldv_param_77_2_default = (unsigned char *)tmp___11;
  tmp___12 = external_allocated_data();
  ldv_0_resource_ieee80211_hw = (struct ieee80211_hw *)tmp___12;
  tmp___13 = external_allocated_data();
  ldv_0_resource_struct_ieee80211_hdr_ptr = (struct ieee80211_hdr *)tmp___13;
  tmp___14 = external_allocated_data();
  ldv_0_resource_struct_ieee80211_rx_status_ptr = (struct ieee80211_rx_status *)tmp___14;
  tmp___15 = external_allocated_data();
  ldv_0_resource_struct_ieee80211_sta_ptr = (struct ieee80211_sta *)tmp___15;
  tmp___16 = external_allocated_data();
  ldv_0_resource_struct_ieee80211_tx_info_ptr = (struct ieee80211_tx_info *)tmp___16;
  tmp___17 = external_allocated_data();
  ldv_0_resource_struct_rtl_stats_ptr = (struct rtl_stats *)tmp___17;
  tmp___18 = external_allocated_data();
  ldv_0_resource_struct_rtl_tcb_desc_ptr = (struct rtl_tcb_desc *)tmp___18;
  tmp___19 = external_allocated_data();
  ldv_0_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___19;
  tmp___20 = external_allocated_data();
  ldv_1_resource_dev = (struct pci_dev *)tmp___20;
  tmp___21 = external_allocated_data();
  ldv_2_device_device = (struct device *)tmp___21;
  tmp___22 = external_allocated_data();
  ldv_3_container_platform_driver = (struct platform_driver *)tmp___22;
  tmp___23 = external_allocated_data();
  ldv_3_ldv_param_14_0_default = (struct platform_device *)tmp___23;
  tmp___24 = external_allocated_data();
  ldv_3_ldv_param_3_0_default = (struct platform_device *)tmp___24;
  }
  return;
}
}
void ldv_dispatch_deregister_4_1(struct pci_driver *arg0 )
{
  {
  {
  ldv_1_container_pci_driver = arg0;
  ldv_switch_automaton_state_1_11();
  }
  return;
}
}
void ldv_dispatch_deregister_ieee80211_instance_1_6_4(void)
{
  {
  {
  ldv_switch_automaton_state_0_1();
  }
  return;
}
}
void ldv_dispatch_deregister_platform_instance_6_6_5(void)
{
  {
  {
  ldv_switch_automaton_state_3_8();
  }
  return;
}
}
void ldv_dispatch_pm_deregister_3_5(void)
{
  {
  {
  ldv_switch_automaton_state_2_1();
  }
  return;
}
}
void ldv_dispatch_pm_register_3_6(void)
{
  {
  {
  ldv_switch_automaton_state_2_29();
  }
  return;
}
}
void ldv_dispatch_register_5_2(struct pci_driver *arg0 )
{
  {
  {
  ldv_1_container_pci_driver = arg0;
  ldv_switch_automaton_state_1_20();
  }
  return;
}
}
void ldv_dispatch_register_ieee80211_instance_1_6_6(void)
{
  {
  {
  ldv_switch_automaton_state_0_15();
  }
  return;
}
}
void ldv_dispatch_register_platform_instance_6_6_7(void)
{
  {
  {
  ldv_switch_automaton_state_3_17();
  }
  return;
}
}
void ldv_entry_EMGentry_6(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_6 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_6 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_6 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_6 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_6 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_6 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_6 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_6 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_6 == 11) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_1 == 12);
  ldv_EMGentry_exit_rtl92de_module_exit_6_2(ldv_6_exit_rtl92de_module_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_6 = 11;
  }
  goto ldv_52743;
  case_3:
  {
  ldv_assume(ldv_statevar_1 == 12);
  ldv_EMGentry_exit_rtl92de_module_exit_6_2(ldv_6_exit_rtl92de_module_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_6 = 11;
  }
  goto ldv_52743;
  case_4:
  {
  ldv_assume(ldv_statevar_0 == 1);
  ldv_dispatch_deregister_ieee80211_instance_1_6_4();
  ldv_statevar_6 = 2;
  }
  goto ldv_52743;
  case_5:
  {
  ldv_assume(ldv_statevar_3 == 9);
  ldv_dispatch_deregister_platform_instance_6_6_5();
  ldv_statevar_6 = 4;
  }
  goto ldv_52743;
  case_6:
  {
  ldv_assume(ldv_statevar_0 == 15);
  ldv_dispatch_register_ieee80211_instance_1_6_6();
  ldv_statevar_6 = 5;
  }
  goto ldv_52743;
  case_7:
  {
  ldv_assume(ldv_statevar_3 == 17);
  ldv_dispatch_register_platform_instance_6_6_7();
  ldv_statevar_6 = 6;
  }
  goto ldv_52743;
  case_8:
  {
  ldv_assume(ldv_6_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_6 = 3;
  } else {
    ldv_statevar_6 = 7;
  }
  goto ldv_52743;
  case_10:
  {
  ldv_assume(ldv_6_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_6 = 11;
  }
  goto ldv_52743;
  case_11:
  {
  ldv_assume(ldv_statevar_1 == 20);
  ldv_6_ret_default = ldv_EMGentry_init_rtl92de_module_init_6_11(ldv_6_init_rtl92de_module_init_default);
  ldv_6_ret_default = ldv_post_init(ldv_6_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_6 = 8;
  } else {
    ldv_statevar_6 = 10;
  }
  goto ldv_52743;
  switch_default: ;
  switch_break: ;
  }
  ldv_52743: ;
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
  ldv_statevar_6 = 11;
  ldv_statevar_0 = 15;
  ldv_1_ret_default = 1;
  ldv_statevar_1 = 20;
  ldv_statevar_2 = 29;
  ldv_3_probed_default = 1;
  ldv_statevar_3 = 17;
  }
  ldv_52762:
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
  ldv_entry_EMGentry_6((void *)0);
  }
  goto ldv_52756;
  case_1:
  {
  ldv_ieee80211_ieee80211_instance_0((void *)0);
  }
  goto ldv_52756;
  case_2:
  {
  ldv_pci_pci_instance_1((void *)0);
  }
  goto ldv_52756;
  case_3:
  {
  ldv_pm_pm_ops_instance_2((void *)0);
  }
  goto ldv_52756;
  case_4:
  {
  ldv_pm_platform_instance_3((void *)0);
  }
  goto ldv_52756;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_52756: ;
  goto ldv_52762;
}
}
void ldv_ieee80211_ieee80211_instance_0(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
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
  {
  {
  if (ldv_statevar_0 == 1) {
    goto case_1;
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
  if (ldv_statevar_0 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_0 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_0 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_0 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_0 == 10) {
    goto case_10;
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
  if (ldv_statevar_0 == 13) {
    goto case_13;
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
  if (ldv_statevar_0 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_0 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_0 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_0 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_0 == 26) {
    goto case_26;
  } else {
  }
  if (ldv_statevar_0 == 29) {
    goto case_29;
  } else {
  }
  if (ldv_statevar_0 == 32) {
    goto case_32;
  } else {
  }
  if (ldv_statevar_0 == 35) {
    goto case_35;
  } else {
  }
  if (ldv_statevar_0 == 38) {
    goto case_38;
  } else {
  }
  if (ldv_statevar_0 == 40) {
    goto case_40;
  } else {
  }
  if (ldv_statevar_0 == 41) {
    goto case_41;
  } else {
  }
  if (ldv_statevar_0 == 42) {
    goto case_42;
  } else {
  }
  if (ldv_statevar_0 == 43) {
    goto case_43;
  } else {
  }
  if (ldv_statevar_0 == 44) {
    goto case_44;
  } else {
  }
  if (ldv_statevar_0 == 45) {
    goto case_45;
  } else {
  }
  if (ldv_statevar_0 == 47) {
    goto case_47;
  } else {
  }
  if (ldv_statevar_0 == 49) {
    goto case_49;
  } else {
  }
  if (ldv_statevar_0 == 50) {
    goto case_50;
  } else {
  }
  if (ldv_statevar_0 == 52) {
    goto case_52;
  } else {
  }
  if (ldv_statevar_0 == 55) {
    goto case_55;
  } else {
  }
  if (ldv_statevar_0 == 57) {
    goto case_57;
  } else {
  }
  if (ldv_statevar_0 == 59) {
    goto case_59;
  } else {
  }
  if (ldv_statevar_0 == 62) {
    goto case_62;
  } else {
  }
  if (ldv_statevar_0 == 64) {
    goto case_64;
  } else {
  }
  if (ldv_statevar_0 == 65) {
    goto case_65;
  } else {
  }
  if (ldv_statevar_0 == 66) {
    goto case_66;
  } else {
  }
  if (ldv_statevar_0 == 67) {
    goto case_67;
  } else {
  }
  if (ldv_statevar_0 == 69) {
    goto case_69;
  } else {
  }
  if (ldv_statevar_0 == 72) {
    goto case_72;
  } else {
  }
  if (ldv_statevar_0 == 75) {
    goto case_75;
  } else {
  }
  if (ldv_statevar_0 == 78) {
    goto case_78;
  } else {
  }
  if (ldv_statevar_0 == 80) {
    goto case_80;
  } else {
  }
  if (ldv_statevar_0 == 82) {
    goto case_82;
  } else {
  }
  if (ldv_statevar_0 == 84) {
    goto case_84;
  } else {
  }
  if (ldv_statevar_0 == 86) {
    goto case_86;
  } else {
  }
  if (ldv_statevar_0 == 88) {
    goto case_88;
  } else {
  }
  if (ldv_statevar_0 == 90) {
    goto case_90;
  } else {
  }
  if (ldv_statevar_0 == 93) {
    goto case_93;
  } else {
  }
  if (ldv_statevar_0 == 96) {
    goto case_96;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_52767;
  case_3:
  {
  ldv_assume(ldv_0_ret_default != 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_0 = 1;
  } else {
    ldv_statevar_0 = 6;
  }
  goto ldv_52767;
  case_5:
  {
  ldv_assume(ldv_0_ret_default == 0);
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_52767;
  case_6:
  {
  rtnl_lock();
  }
  if ((unsigned long )ldv_0_container_ieee80211_ops->start != (unsigned long )((int (*)(struct ieee80211_hw * ))0)) {
    {
    ldv_0_ret_default = ldv_ieee80211_instance_start_0_6(ldv_0_container_ieee80211_ops->start,
                                                         ldv_0_resource_ieee80211_hw);
    }
  } else {
  }
  {
  ldv_0_ret_default = ldv_filter_err_code(ldv_0_ret_default);
  rtnl_unlock();
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_0 = 3;
  } else {
    ldv_statevar_0 = 5;
  }
  goto ldv_52767;
  case_7:
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_0 = 1;
  } else {
    ldv_statevar_0 = 6;
  }
  goto ldv_52767;
  case_8:
  {
  rtnl_lock();
  }
  if ((unsigned long )ldv_0_container_ieee80211_ops->stop != (unsigned long )((void (*)(struct ieee80211_hw * ))0)) {
    {
    ldv_ieee80211_instance_stop_0_8(ldv_0_container_ieee80211_ops->stop, ldv_0_resource_ieee80211_hw);
    }
  } else {
  }
  {
  rtnl_unlock();
  ldv_statevar_0 = 7;
  }
  goto ldv_52767;
  case_9:
  {
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_52767;
  case_10:
  {
  ldv_ieee80211_instance_callback_0_10(ldv_0_callback_deinit_sw_vars, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_11:
  {
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_52767;
  case_12: ;
  if ((unsigned long )ldv_0_container_ieee80211_ops->resume != (unsigned long )((int (*)(struct ieee80211_hw * ))0)) {
    {
    ldv_ieee80211_instance_resume_0_12(ldv_0_container_ieee80211_ops->resume, ldv_0_resource_ieee80211_hw);
    }
  } else {
  }
  ldv_statevar_0 = 11;
  goto ldv_52767;
  case_13:
  ldv_statevar_0 = 12;
  goto ldv_52767;
  case_14:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    ldv_statevar_0 = 1;
  } else {
    ldv_statevar_0 = 6;
  }
  goto ldv_52767;
  case_15: ;
  goto ldv_52767;
  case_18:
  {
  ldv_ieee80211_instance_callback_0_18(ldv_0_callback_disable_interrupt, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_19:
  {
  ldv_ieee80211_instance_callback_0_19(ldv_0_callback_dm_watchdog, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_20:
  {
  ldv_ieee80211_instance_callback_0_20(ldv_0_callback_enable_hw_sec, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_21:
  {
  ldv_ieee80211_instance_callback_0_21(ldv_0_callback_enable_interrupt, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_23:
  {
  tmp___3 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_22_1_default = (unsigned char *)tmp___3;
  ldv_ieee80211_instance_callback_0_22(ldv_0_callback_fill_tx_cmddesc, ldv_0_resource_ieee80211_hw,
                                       ldv_0_ldv_param_22_1_default, (int )ldv_0_ldv_param_22_2_default,
                                       (int )ldv_0_ldv_param_22_3_default, ldv_0_resource_struct_sk_buff_ptr);
  ldv_free((void *)ldv_0_ldv_param_22_1_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_26:
  {
  tmp___4 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_25_2_default = (unsigned char *)tmp___4;
  ldv_ieee80211_instance_callback_0_25(ldv_0_callback_fill_tx_desc, ldv_0_resource_ieee80211_hw,
                                       ldv_0_resource_struct_ieee80211_hdr_ptr, ldv_0_ldv_param_25_2_default,
                                       ldv_0_resource_struct_ieee80211_tx_info_ptr,
                                       ldv_0_resource_struct_ieee80211_sta_ptr, ldv_0_resource_struct_sk_buff_ptr,
                                       (int )ldv_0_ldv_param_25_6_default, ldv_0_resource_struct_rtl_tcb_desc_ptr);
  ldv_free((void *)ldv_0_ldv_param_25_2_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_29:
  {
  ldv_ieee80211_instance_callback_0_28(ldv_0_callback_get_bbreg, ldv_0_resource_ieee80211_hw,
                                       ldv_0_ldv_param_28_1_default, ldv_0_ldv_param_28_2_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_32:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_31_0_default = (unsigned char *)tmp___5;
  ldv_ieee80211_instance_callback_0_31(ldv_0_callback_get_desc, ldv_0_ldv_param_31_0_default,
                                       (int )ldv_0_ldv_param_31_1_default, (int )ldv_0_ldv_param_31_2_default);
  ldv_free((void *)ldv_0_ldv_param_31_0_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_35:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_34_2_default = (unsigned char *)tmp___6;
  ldv_ieee80211_instance_callback_0_34(ldv_0_callback_get_hw_reg, ldv_0_resource_ieee80211_hw,
                                       (int )ldv_0_ldv_param_34_1_default, ldv_0_ldv_param_34_2_default);
  ldv_free((void *)ldv_0_ldv_param_34_2_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_38:
  {
  ldv_ieee80211_instance_callback_0_37(ldv_0_callback_get_rfreg, ldv_0_resource_ieee80211_hw,
                                       ldv_0_resource_enum_radio_path, ldv_0_ldv_param_37_2_default,
                                       ldv_0_ldv_param_37_3_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_40:
  {
  ldv_ieee80211_instance_callback_0_40(ldv_0_callback_hw_disable, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_41:
  {
  ldv_ieee80211_instance_callback_0_41(ldv_0_callback_hw_init, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_42:
  {
  ldv_ieee80211_instance_callback_0_42(ldv_0_callback_hw_resume, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_43:
  {
  ldv_ieee80211_instance_callback_0_43(ldv_0_callback_hw_suspend, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_44:
  {
  ldv_ieee80211_instance_callback_0_44(ldv_0_callback_init_sw_leds, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_45:
  {
  ldv_ieee80211_instance_callback_0_45(ldv_0_callback_init_sw_vars, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_47:
  {
  tmp___7 = ldv_xmalloc(4UL);
  ldv_0_ldv_param_46_1_default = (unsigned int *)tmp___7;
  tmp___8 = ldv_xmalloc(4UL);
  ldv_0_ldv_param_46_2_default = (unsigned int *)tmp___8;
  ldv_ieee80211_instance_callback_0_46(ldv_0_callback_interrupt_recognized, ldv_0_resource_ieee80211_hw,
                                       ldv_0_ldv_param_46_1_default, ldv_0_ldv_param_46_2_default);
  ldv_free((void *)ldv_0_ldv_param_46_1_default);
  ldv_free((void *)ldv_0_ldv_param_46_2_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_49:
  {
  ldv_ieee80211_instance_callback_0_49(ldv_0_callback_led_control, ldv_0_resource_ieee80211_hw,
                                       ldv_0_resource_enum_led_ctl_mode);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_50:
  {
  ldv_ieee80211_instance_callback_0_50(ldv_0_callback_linked_set_reg, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_52:
  {
  tmp___9 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_51_3_default = (unsigned char *)tmp___9;
  ldv_ieee80211_instance_callback_0_51(ldv_0_callback_query_rx_desc, ldv_0_resource_ieee80211_hw,
                                       ldv_0_resource_struct_rtl_stats_ptr, ldv_0_resource_struct_ieee80211_rx_status_ptr,
                                       ldv_0_ldv_param_51_3_default, ldv_0_resource_struct_sk_buff_ptr);
  ldv_free((void *)ldv_0_ldv_param_51_3_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_55:
  {
  tmp___10 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_54_1_default = (unsigned char *)tmp___10;
  ldv_ieee80211_instance_callback_0_54(ldv_0_callback_radio_onoff_checking, ldv_0_resource_ieee80211_hw,
                                       ldv_0_ldv_param_54_1_default);
  ldv_free((void *)ldv_0_ldv_param_54_1_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_57:
  {
  ldv_ieee80211_instance_callback_0_57(ldv_0_callback_read_eeprom_info, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_59:
  {
  ldv_ieee80211_instance_callback_0_58(ldv_0_callback_scan_operation_backup, ldv_0_resource_ieee80211_hw,
                                       (int )ldv_0_ldv_param_58_1_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_62:
  {
  ldv_ieee80211_instance_callback_0_61(ldv_0_callback_set_bbreg, ldv_0_resource_ieee80211_hw,
                                       ldv_0_ldv_param_61_1_default, ldv_0_ldv_param_61_2_default,
                                       ldv_0_ldv_param_61_3_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_64:
  {
  ldv_ieee80211_instance_callback_0_64(ldv_0_callback_set_bcn_intv, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_65:
  {
  ldv_ieee80211_instance_callback_0_65(ldv_0_callback_set_bcn_reg, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_66:
  {
  ldv_ieee80211_instance_callback_0_66(ldv_0_callback_set_bw_mode, ldv_0_resource_ieee80211_hw,
                                       ldv_0_resource_enum_nl80211_channel_type);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_67:
  {
  ldv_ieee80211_instance_callback_0_67(ldv_0_callback_set_channel_access, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_69:
  {
  ldv_ieee80211_instance_callback_0_68(ldv_0_callback_set_chk_bssid, ldv_0_resource_ieee80211_hw,
                                       (int )ldv_0_ldv_param_68_1_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_72:
  {
  tmp___11 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_71_0_default = (unsigned char *)tmp___11;
  tmp___12 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_71_3_default = (unsigned char *)tmp___12;
  ldv_ieee80211_instance_callback_0_71(ldv_0_callback_set_desc, ldv_0_ldv_param_71_0_default,
                                       (int )ldv_0_ldv_param_71_1_default, (int )ldv_0_ldv_param_71_2_default,
                                       ldv_0_ldv_param_71_3_default);
  ldv_free((void *)ldv_0_ldv_param_71_0_default);
  ldv_free((void *)ldv_0_ldv_param_71_3_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_75:
  {
  tmp___13 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_74_2_default = (unsigned char *)tmp___13;
  ldv_ieee80211_instance_callback_0_74(ldv_0_callback_set_hw_reg, ldv_0_resource_ieee80211_hw,
                                       (int )ldv_0_ldv_param_74_1_default, ldv_0_ldv_param_74_2_default);
  ldv_free((void *)ldv_0_ldv_param_74_2_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_78:
  {
  tmp___14 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_77_2_default = (unsigned char *)tmp___14;
  ldv_ieee80211_instance_callback_0_77(ldv_0_callback_set_key, ldv_0_resource_ieee80211_hw,
                                       ldv_0_ldv_param_77_1_default, ldv_0_ldv_param_77_2_default,
                                       (int )ldv_0_ldv_param_77_3_default, (int )ldv_0_ldv_param_77_4_default,
                                       (int )ldv_0_ldv_param_77_5_default, (int )ldv_0_ldv_param_77_6_default);
  ldv_free((void *)ldv_0_ldv_param_77_2_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_80:
  {
  ldv_ieee80211_instance_callback_0_80(ldv_0_callback_set_network_type, ldv_0_resource_ieee80211_hw,
                                       ldv_0_resource_enum_nl80211_iftype);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_82:
  {
  ldv_ieee80211_instance_callback_0_81(ldv_0_callback_set_qos, ldv_0_resource_ieee80211_hw,
                                       ldv_0_ldv_param_81_1_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_84:
  {
  ldv_ieee80211_instance_callback_0_84(ldv_0_callback_set_rf_power_state, ldv_0_resource_ieee80211_hw,
                                       ldv_0_resource_enum_rf_pwrstate);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_86:
  {
  ldv_ieee80211_instance_callback_0_85(ldv_0_callback_set_rfreg, ldv_0_resource_ieee80211_hw,
                                       ldv_0_resource_enum_radio_path, ldv_0_ldv_param_85_2_default,
                                       ldv_0_ldv_param_85_3_default, ldv_0_ldv_param_85_4_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_88:
  {
  ldv_ieee80211_instance_callback_0_88(ldv_0_callback_switch_channel, ldv_0_resource_ieee80211_hw);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_90:
  {
  ldv_ieee80211_instance_callback_0_89(ldv_0_callback_tx_polling, ldv_0_resource_ieee80211_hw,
                                       (int )ldv_0_ldv_param_89_1_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_93:
  {
  ldv_ieee80211_instance_callback_0_92(ldv_0_callback_update_interrupt_mask, ldv_0_resource_ieee80211_hw,
                                       ldv_0_ldv_param_92_1_default, ldv_0_ldv_param_92_2_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  case_96:
  {
  ldv_ieee80211_instance_callback_0_95(ldv_0_callback_update_rate_tbl, ldv_0_resource_ieee80211_hw,
                                       ldv_0_resource_struct_ieee80211_sta_ptr, (int )ldv_0_ldv_param_95_2_default);
  ldv_statevar_0 = 9;
  }
  goto ldv_52767;
  switch_default: ;
  switch_break: ;
  }
  ldv_52767: ;
  return;
}
}
void ldv_ieee80211_instance_callback_0_10(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92d_deinit_sw_vars(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_18(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92de_disable_interrupt(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_19(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92d_dm_watchdog(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_20(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92de_enable_hw_security_config(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_21(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92de_enable_interrupt(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_22(void (*arg0)(struct ieee80211_hw * , unsigned char * ,
                                                       _Bool , _Bool , struct sk_buff * ) ,
                                          struct ieee80211_hw *arg1 , unsigned char *arg2 ,
                                          _Bool arg3 , _Bool arg4 , struct sk_buff *arg5 )
{
  {
  {
  rtl92de_tx_fill_cmddesc(arg1, arg2, (int )arg3, (int )arg4, arg5);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_25(void (*arg0)(struct ieee80211_hw * , struct ieee80211_hdr * ,
                                                       unsigned char * , struct ieee80211_tx_info * ,
                                                       struct ieee80211_sta * , struct sk_buff * ,
                                                       unsigned char , struct rtl_tcb_desc * ) ,
                                          struct ieee80211_hw *arg1 , struct ieee80211_hdr *arg2 ,
                                          unsigned char *arg3 , struct ieee80211_tx_info *arg4 ,
                                          struct ieee80211_sta *arg5 , struct sk_buff *arg6 ,
                                          unsigned char arg7 , struct rtl_tcb_desc *arg8 )
{
  {
  {
  rtl92de_tx_fill_desc(arg1, arg2, arg3, arg4, arg5, arg6, (int )arg7, arg8);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_28(unsigned int (*arg0)(struct ieee80211_hw * ,
                                                               unsigned int , unsigned int ) ,
                                          struct ieee80211_hw *arg1 , unsigned int arg2 ,
                                          unsigned int arg3 )
{
  {
  {
  rtl92d_phy_query_bb_reg(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_31(unsigned int (*arg0)(unsigned char * , _Bool ,
                                                               unsigned char ) ,
                                          unsigned char *arg1 , _Bool arg2 , unsigned char arg3 )
{
  {
  {
  rtl92de_get_desc(arg1, (int )arg2, (int )arg3);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_34(void (*arg0)(struct ieee80211_hw * , unsigned char ,
                                                       unsigned char * ) , struct ieee80211_hw *arg1 ,
                                          unsigned char arg2 , unsigned char *arg3 )
{
  {
  {
  rtl92de_get_hw_reg(arg1, (int )arg2, arg3);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_37(unsigned int (*arg0)(struct ieee80211_hw * ,
                                                               enum radio_path ,
                                                               unsigned int , unsigned int ) ,
                                          struct ieee80211_hw *arg1 , enum radio_path arg2 ,
                                          unsigned int arg3 , unsigned int arg4 )
{
  {
  {
  rtl92d_phy_query_rf_reg(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_40(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92de_card_disable(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_41(int (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92de_hw_init(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_42(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92de_resume(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_43(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92de_suspend(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_44(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92de_init_sw_leds(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_45(int (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92d_init_sw_vars(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_46(void (*arg0)(struct ieee80211_hw * , unsigned int * ,
                                                       unsigned int * ) , struct ieee80211_hw *arg1 ,
                                          unsigned int *arg2 , unsigned int *arg3 )
{
  {
  {
  rtl92de_interrupt_recognized(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_49(void (*arg0)(struct ieee80211_hw * , enum led_ctl_mode ) ,
                                          struct ieee80211_hw *arg1 , enum led_ctl_mode arg2 )
{
  {
  {
  rtl92de_led_control(arg1, arg2);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_50(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92d_linked_set_reg(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_51(_Bool (*arg0)(struct ieee80211_hw * , struct rtl_stats * ,
                                                        struct ieee80211_rx_status * ,
                                                        unsigned char * , struct sk_buff * ) ,
                                          struct ieee80211_hw *arg1 , struct rtl_stats *arg2 ,
                                          struct ieee80211_rx_status *arg3 , unsigned char *arg4 ,
                                          struct sk_buff *arg5 )
{
  {
  {
  rtl92de_rx_query_desc(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_54(_Bool (*arg0)(struct ieee80211_hw * , unsigned char * ) ,
                                          struct ieee80211_hw *arg1 , unsigned char *arg2 )
{
  {
  {
  rtl92de_gpio_radio_on_off_checking(arg1, arg2);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_57(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92de_read_eeprom_info(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_58(void (*arg0)(struct ieee80211_hw * , unsigned char ) ,
                                          struct ieee80211_hw *arg1 , unsigned char arg2 )
{
  {
  {
  rtl_phy_scan_operation_backup(arg1, (int )arg2);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_61(void (*arg0)(struct ieee80211_hw * , unsigned int ,
                                                       unsigned int , unsigned int ) ,
                                          struct ieee80211_hw *arg1 , unsigned int arg2 ,
                                          unsigned int arg3 , unsigned int arg4 )
{
  {
  {
  rtl92d_phy_set_bb_reg(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_64(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92de_set_beacon_interval(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_65(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92de_set_beacon_related_registers(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_66(void (*arg0)(struct ieee80211_hw * , enum nl80211_channel_type ) ,
                                          struct ieee80211_hw *arg1 , enum nl80211_channel_type arg2 )
{
  {
  {
  rtl92d_phy_set_bw_mode(arg1, arg2);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_67(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92de_update_channel_access_setting(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_68(void (*arg0)(struct ieee80211_hw * , _Bool ) ,
                                          struct ieee80211_hw *arg1 , _Bool arg2 )
{
  {
  {
  rtl92de_set_check_bssid(arg1, (int )arg2);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_71(void (*arg0)(unsigned char * , _Bool ,
                                                       unsigned char , unsigned char * ) ,
                                          unsigned char *arg1 , _Bool arg2 , unsigned char arg3 ,
                                          unsigned char *arg4 )
{
  {
  {
  rtl92de_set_desc(arg1, (int )arg2, (int )arg3, arg4);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_74(void (*arg0)(struct ieee80211_hw * , unsigned char ,
                                                       unsigned char * ) , struct ieee80211_hw *arg1 ,
                                          unsigned char arg2 , unsigned char *arg3 )
{
  {
  {
  rtl92de_set_hw_reg(arg1, (int )arg2, arg3);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_77(void (*arg0)(struct ieee80211_hw * , unsigned int ,
                                                       unsigned char * , _Bool ,
                                                       unsigned char , _Bool , _Bool ) ,
                                          struct ieee80211_hw *arg1 , unsigned int arg2 ,
                                          unsigned char *arg3 , _Bool arg4 , unsigned char arg5 ,
                                          _Bool arg6 , _Bool arg7 )
{
  {
  {
  rtl92de_set_key(arg1, arg2, arg3, (int )arg4, (int )arg5, (int )arg6, (int )arg7);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_80(int (*arg0)(struct ieee80211_hw * , enum nl80211_iftype ) ,
                                          struct ieee80211_hw *arg1 , enum nl80211_iftype arg2 )
{
  {
  {
  rtl92de_set_network_type(arg1, arg2);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_81(void (*arg0)(struct ieee80211_hw * , int ) ,
                                          struct ieee80211_hw *arg1 , int arg2 )
{
  {
  {
  rtl92de_set_qos(arg1, arg2);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_84(_Bool (*arg0)(struct ieee80211_hw * , enum rf_pwrstate ) ,
                                          struct ieee80211_hw *arg1 , enum rf_pwrstate arg2 )
{
  {
  {
  rtl92d_phy_set_rf_power_state(arg1, arg2);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_85(void (*arg0)(struct ieee80211_hw * , enum radio_path ,
                                                       unsigned int , unsigned int ,
                                                       unsigned int ) , struct ieee80211_hw *arg1 ,
                                          enum radio_path arg2 , unsigned int arg3 ,
                                          unsigned int arg4 , unsigned int arg5 )
{
  {
  {
  rtl92d_phy_set_rf_reg(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_88(unsigned char (*arg0)(struct ieee80211_hw * ) ,
                                          struct ieee80211_hw *arg1 )
{
  {
  {
  rtl92d_phy_sw_chnl(arg1);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_89(void (*arg0)(struct ieee80211_hw * , unsigned char ) ,
                                          struct ieee80211_hw *arg1 , unsigned char arg2 )
{
  {
  {
  rtl92de_tx_polling(arg1, (int )arg2);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_92(void (*arg0)(struct ieee80211_hw * , unsigned int ,
                                                       unsigned int ) , struct ieee80211_hw *arg1 ,
                                          unsigned int arg2 , unsigned int arg3 )
{
  {
  {
  rtl92de_update_interrupt_mask(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_ieee80211_instance_callback_0_95(void (*arg0)(struct ieee80211_hw * , struct ieee80211_sta * ,
                                                       unsigned char ) , struct ieee80211_hw *arg1 ,
                                          struct ieee80211_sta *arg2 , unsigned char arg3 )
{
  {
  {
  rtl92de_update_hal_rate_tbl(arg1, arg2, (int )arg3);
  }
  return;
}
}
void ldv_ieee80211_instance_resume_0_12(int (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_ieee80211_instance_start_0_6(int (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1);
  }
  return (tmp);
}
}
void ldv_ieee80211_instance_stop_0_8(void (*arg0)(struct ieee80211_hw * ) , struct ieee80211_hw *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
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
int ldv_pci_instance_probe_1_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = rtl_pci_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_1_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  rtl_pci_disconnect(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_1_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_1_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_1_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_1_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
int ldv_pci_instance_suspend_late_1_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
void ldv_pci_pci_instance_1(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
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
  if (ldv_statevar_1 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_1 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_1 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_1 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_1 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_1 == 12) {
    goto case_12;
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
  if (ldv_statevar_1 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_1 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_1 == 20) {
    goto case_20;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_1 = 12;
  } else {
    ldv_statevar_1 = 17;
  }
  goto ldv_53202;
  case_2:
  {
  ldv_pci_instance_release_1_2(ldv_1_container_pci_driver->remove, ldv_1_resource_dev);
  ldv_statevar_1 = 1;
  }
  goto ldv_53202;
  case_3: ;
  if ((unsigned long )ldv_1_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_1_3(ldv_1_container_pci_driver->shutdown, ldv_1_resource_dev);
    }
  } else {
  }
  ldv_statevar_1 = 2;
  goto ldv_53202;
  case_4:
  {
  ldv_statevar_1 = ldv_switch_1();
  }
  goto ldv_53202;
  case_5: ;
  if ((unsigned long )ldv_1_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_1_5(ldv_1_container_pci_driver->resume, ldv_1_resource_dev);
    }
  } else {
  }
  ldv_statevar_1 = 4;
  goto ldv_53202;
  case_6: ;
  if ((unsigned long )ldv_1_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_1_6(ldv_1_container_pci_driver->resume_early, ldv_1_resource_dev);
    }
  } else {
  }
  ldv_statevar_1 = 5;
  goto ldv_53202;
  case_7: ;
  if ((unsigned long )ldv_1_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_1_ret_default = ldv_pci_instance_suspend_late_1_7(ldv_1_container_pci_driver->suspend_late,
                                                          ldv_1_resource_dev, ldv_1_resource_pm_message);
    }
  } else {
  }
  {
  ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
  ldv_statevar_1 = 6;
  }
  goto ldv_53202;
  case_8: ;
  if ((unsigned long )ldv_1_container_pci_driver->suspend != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                       pm_message_t ))0)) {
    {
    ldv_1_ret_default = ldv_pci_instance_suspend_1_8(ldv_1_container_pci_driver->suspend,
                                                     ldv_1_resource_dev, ldv_1_resource_pm_message);
    }
  } else {
  }
  {
  ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
  ldv_statevar_1 = 7;
  }
  goto ldv_53202;
  case_9:
  {
  ldv_statevar_1 = ldv_switch_1();
  }
  goto ldv_53202;
  case_10:
  ldv_statevar_1 = 9;
  goto ldv_53202;
  case_12:
  {
  ldv_free((void *)ldv_1_resource_dev);
  ldv_free((void *)ldv_1_resource_struct_pci_device_id_ptr);
  ldv_1_ret_default = 1;
  ldv_statevar_1 = 20;
  }
  goto ldv_53202;
  case_14:
  {
  ldv_assume(ldv_1_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_1 = 12;
  } else {
    ldv_statevar_1 = 17;
  }
  goto ldv_53202;
  case_16:
  {
  ldv_assume(ldv_1_ret_default == 0);
  ldv_statevar_1 = ldv_switch_1();
  }
  goto ldv_53202;
  case_17:
  {
  ldv_pre_probe();
  ldv_1_ret_default = ldv_pci_instance_probe_1_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_1_container_pci_driver->probe,
                                                  ldv_1_resource_dev, ldv_1_resource_struct_pci_device_id_ptr);
  ldv_1_ret_default = ldv_ldv_post_probe_24(ldv_1_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_1 = 14;
  } else {
    ldv_statevar_1 = 16;
  }
  goto ldv_53202;
  case_19:
  {
  tmp___2 = ldv_xmalloc(2936UL);
  ldv_1_resource_dev = (struct pci_dev *)tmp___2;
  tmp___3 = ldv_xmalloc(32UL);
  ldv_1_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___3;
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
    ldv_statevar_1 = 12;
  } else {
    ldv_statevar_1 = 17;
  }
  goto ldv_53202;
  case_20: ;
  goto ldv_53202;
  switch_default: ;
  switch_break: ;
  }
  ldv_53202: ;
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_4_pci_driver_pci_driver ;
  {
  {
  ldv_4_pci_driver_pci_driver = arg1;
  ldv_assume(ldv_statevar_1 == 12);
  ldv_dispatch_deregister_4_1(ldv_4_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_platform_instance_probe_3_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1);
  }
  return (tmp);
}
}
void ldv_platform_instance_release_3_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  {
  {
  (*arg0)(arg1);
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
  rtl_pci_suspend(arg1);
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
  rtl_pci_suspend(arg1);
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
  rtl_pci_resume(arg1);
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
  rtl_pci_resume(arg1);
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
  rtl_pci_suspend(arg1);
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
  rtl_pci_resume(arg1);
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
void ldv_pm_platform_instance_3(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  {
  if (ldv_statevar_3 == 1) {
    goto case_1;
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
  if (ldv_statevar_3 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_3 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_3 == 13) {
    goto case_13;
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
  if (ldv_statevar_3 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_3 == 22) {
    goto case_22;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_3 = 9;
  } else {
    ldv_statevar_3 = 22;
  }
  goto ldv_53353;
  case_4:
  {
  ldv_statevar_3 = ldv_switch_4();
  }
  goto ldv_53353;
  case_5:
  {
  ldv_assume(ldv_statevar_2 == 1);
  ldv_dispatch_pm_deregister_3_5();
  ldv_statevar_3 = 4;
  }
  goto ldv_53353;
  case_6:
  {
  ldv_assume(ldv_statevar_2 == 29);
  ldv_dispatch_pm_register_3_6();
  ldv_statevar_3 = 5;
  }
  goto ldv_53353;
  case_7:
  ldv_statevar_3 = 4;
  goto ldv_53353;
  case_9:
  ldv_3_probed_default = 1;
  ldv_statevar_3 = 17;
  goto ldv_53353;
  case_11:
  {
  ldv_assume(ldv_3_probed_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_3 = 9;
  } else {
    ldv_statevar_3 = 22;
  }
  goto ldv_53353;
  case_13:
  {
  ldv_assume(ldv_3_probed_default == 0);
  ldv_statevar_3 = ldv_switch_4();
  }
  goto ldv_53353;
  case_16:
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_3 = 9;
  } else {
    ldv_statevar_3 = 22;
  }
  goto ldv_53353;
  case_17: ;
  goto ldv_53353;
  case_20:
  {
  tmp___2 = ldv_xmalloc(1432UL);
  ldv_3_ldv_param_3_0_default = (struct platform_device *)tmp___2;
  }
  if ((unsigned long )ldv_3_container_platform_driver->remove != (unsigned long )((int (*)(struct platform_device * ))0)) {
    {
    ldv_platform_instance_release_3_3(ldv_3_container_platform_driver->remove, ldv_3_ldv_param_3_0_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_3_ldv_param_3_0_default);
  ldv_3_probed_default = 1;
  ldv_statevar_3 = 1;
  }
  goto ldv_53353;
  case_22:
  {
  tmp___3 = ldv_xmalloc(1432UL);
  ldv_3_ldv_param_14_0_default = (struct platform_device *)tmp___3;
  ldv_pre_probe();
  }
  if ((unsigned long )ldv_3_container_platform_driver->probe != (unsigned long )((int (*)(struct platform_device * ))0)) {
    {
    ldv_3_probed_default = ldv_platform_instance_probe_3_14(ldv_3_container_platform_driver->probe,
                                                            ldv_3_ldv_param_14_0_default);
    }
  } else {
  }
  {
  ldv_3_probed_default = ldv_ldv_post_probe_25(ldv_3_probed_default);
  ldv_free((void *)ldv_3_ldv_param_14_0_default);
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
    ldv_statevar_3 = 11;
  } else {
    ldv_statevar_3 = 13;
  }
  goto ldv_53353;
  switch_default: ;
  switch_break: ;
  }
  ldv_53353: ;
  return;
}
}
void ldv_pm_pm_ops_instance_2(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
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
  if (ldv_statevar_2 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_2 == 12) {
    goto case_12;
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
  if (ldv_statevar_2 == 15) {
    goto case_15;
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
  if (ldv_statevar_2 == 18) {
    goto case_18;
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
  if (ldv_statevar_2 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_2 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_2 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_2 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_2 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_2 == 26) {
    goto case_26;
  } else {
  }
  if (ldv_statevar_2 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_2 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_2 == 29) {
    goto case_29;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53370;
  case_2:
  {
  ldv_statevar_2 = ldv_switch_2();
  }
  goto ldv_53370;
  case_3: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->complete != (unsigned long )((void (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_complete_2_3(ldv_2_pm_ops_dev_pm_ops->complete, ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 2;
  goto ldv_53370;
  case_4:
  {
  ldv_pm_ops_instance_restore_2_4(ldv_2_pm_ops_dev_pm_ops->restore, ldv_2_device_device);
  ldv_statevar_2 = 3;
  }
  goto ldv_53370;
  case_5: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->restore_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_restore_noirq_2_5(ldv_2_pm_ops_dev_pm_ops->restore_noirq,
                                          ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 4;
  goto ldv_53370;
  case_6: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->poweroff_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_poweroff_noirq_2_6(ldv_2_pm_ops_dev_pm_ops->poweroff_noirq,
                                           ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 5;
  goto ldv_53370;
  case_7: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->restore_early != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_restore_early_2_7(ldv_2_pm_ops_dev_pm_ops->restore_early,
                                          ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 4;
  goto ldv_53370;
  case_8: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->poweroff_late != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_poweroff_late_2_8(ldv_2_pm_ops_dev_pm_ops->poweroff_late,
                                          ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 7;
  goto ldv_53370;
  case_9:
  {
  ldv_pm_ops_instance_poweroff_2_9(ldv_2_pm_ops_dev_pm_ops->poweroff, ldv_2_device_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_2 = 6;
  } else {
    ldv_statevar_2 = 8;
  }
  goto ldv_53370;
  case_10:
  {
  ldv_pm_ops_instance_thaw_2_10(ldv_2_pm_ops_dev_pm_ops->thaw, ldv_2_device_device);
  ldv_statevar_2 = 3;
  }
  goto ldv_53370;
  case_11: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->thaw_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_thaw_noirq_2_11(ldv_2_pm_ops_dev_pm_ops->thaw_noirq, ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 10;
  goto ldv_53370;
  case_12: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->freeze_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_freeze_noirq_2_12(ldv_2_pm_ops_dev_pm_ops->freeze_noirq, ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 11;
  goto ldv_53370;
  case_13: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->thaw_early != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_thaw_early_2_13(ldv_2_pm_ops_dev_pm_ops->thaw_early, ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 10;
  goto ldv_53370;
  case_14: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->freeze_late != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_freeze_late_2_14(ldv_2_pm_ops_dev_pm_ops->freeze_late, ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 13;
  goto ldv_53370;
  case_15:
  {
  ldv_pm_ops_instance_freeze_2_15(ldv_2_pm_ops_dev_pm_ops->freeze, ldv_2_device_device);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_2 = 12;
  } else {
    ldv_statevar_2 = 14;
  }
  goto ldv_53370;
  case_16:
  {
  ldv_pm_ops_instance_resume_2_16(ldv_2_pm_ops_dev_pm_ops->resume, ldv_2_device_device);
  ldv_statevar_2 = 3;
  }
  goto ldv_53370;
  case_17: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->resume_early != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_resume_early_2_17(ldv_2_pm_ops_dev_pm_ops->resume_early, ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 16;
  goto ldv_53370;
  case_18: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->suspend_late != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_suspend_late_2_18(ldv_2_pm_ops_dev_pm_ops->suspend_late, ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 17;
  goto ldv_53370;
  case_19: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->resume_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_resume_noirq_2_19(ldv_2_pm_ops_dev_pm_ops->resume_noirq, ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 16;
  goto ldv_53370;
  case_20: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->suspend_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_suspend_noirq_2_20(ldv_2_pm_ops_dev_pm_ops->suspend_noirq,
                                           ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 19;
  goto ldv_53370;
  case_21:
  {
  ldv_pm_ops_instance_suspend_2_21(ldv_2_pm_ops_dev_pm_ops->suspend, ldv_2_device_device);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_2 = 18;
  } else {
    ldv_statevar_2 = 20;
  }
  goto ldv_53370;
  case_22: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->prepare != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_prepare_2_22(ldv_2_pm_ops_dev_pm_ops->prepare, ldv_2_device_device);
    }
  } else {
  }
  {
  ldv_statevar_2 = ldv_switch_3();
  }
  goto ldv_53370;
  case_23:
  {
  ldv_statevar_2 = ldv_switch_2();
  }
  goto ldv_53370;
  case_24: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->runtime_resume != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_resume_2_24(ldv_2_pm_ops_dev_pm_ops->runtime_resume,
                                            ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 23;
  goto ldv_53370;
  case_25: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->runtime_suspend != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_suspend_2_25(ldv_2_pm_ops_dev_pm_ops->runtime_suspend,
                                             ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 24;
  goto ldv_53370;
  case_26:
  {
  ldv_statevar_2 = ldv_switch_2();
  }
  goto ldv_53370;
  case_27: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->runtime_idle != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_idle_2_27(ldv_2_pm_ops_dev_pm_ops->runtime_idle, ldv_2_device_device);
    }
  } else {
  }
  ldv_statevar_2 = 26;
  goto ldv_53370;
  case_28:
  {
  ldv_statevar_2 = ldv_switch_2();
  }
  goto ldv_53370;
  case_29: ;
  goto ldv_53370;
  switch_default: ;
  switch_break: ;
  }
  ldv_53370: ;
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
  if (tmp == 38) {
    goto case_38;
  } else {
  }
  if (tmp == 39) {
    goto case_39;
  } else {
  }
  if (tmp == 40) {
    goto case_40;
  } else {
  }
  if (tmp == 41) {
    goto case_41;
  } else {
  }
  if (tmp == 42) {
    goto case_42;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (8);
  case_1: ;
  return (10);
  case_2: ;
  return (13);
  case_3: ;
  return (18);
  case_4: ;
  return (19);
  case_5: ;
  return (20);
  case_6: ;
  return (21);
  case_7: ;
  return (23);
  case_8: ;
  return (26);
  case_9: ;
  return (29);
  case_10: ;
  return (32);
  case_11: ;
  return (35);
  case_12: ;
  return (38);
  case_13: ;
  return (40);
  case_14: ;
  return (41);
  case_15: ;
  return (42);
  case_16: ;
  return (43);
  case_17: ;
  return (44);
  case_18: ;
  return (45);
  case_19: ;
  return (47);
  case_20: ;
  return (49);
  case_21: ;
  return (50);
  case_22: ;
  return (52);
  case_23: ;
  return (55);
  case_24: ;
  return (57);
  case_25: ;
  return (59);
  case_26: ;
  return (62);
  case_27: ;
  return (64);
  case_28: ;
  return (65);
  case_29: ;
  return (66);
  case_30: ;
  return (67);
  case_31: ;
  return (69);
  case_32: ;
  return (72);
  case_33: ;
  return (75);
  case_34: ;
  return (78);
  case_35: ;
  return (80);
  case_36: ;
  return (82);
  case_37: ;
  return (84);
  case_38: ;
  return (86);
  case_39: ;
  return (88);
  case_40: ;
  return (90);
  case_41: ;
  return (93);
  case_42: ;
  return (96);
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
  return (6);
  case_1: ;
  return (7);
  case_2: ;
  return (20);
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
  ldv_statevar_0 = 15;
  return;
}
}
void ldv_switch_automaton_state_0_15(void)
{
  {
  ldv_statevar_0 = 14;
  return;
}
}
void ldv_switch_automaton_state_1_11(void)
{
  {
  ldv_1_ret_default = 1;
  ldv_statevar_1 = 20;
  return;
}
}
void ldv_switch_automaton_state_1_20(void)
{
  {
  ldv_statevar_1 = 19;
  return;
}
}
void ldv_switch_automaton_state_2_1(void)
{
  {
  ldv_statevar_2 = 29;
  return;
}
}
void ldv_switch_automaton_state_2_29(void)
{
  {
  ldv_statevar_2 = 28;
  return;
}
}
void ldv_switch_automaton_state_3_17(void)
{
  {
  ldv_statevar_3 = 16;
  return;
}
}
void ldv_switch_automaton_state_3_8(void)
{
  {
  ldv_3_probed_default = 1;
  ldv_statevar_3 = 17;
  return;
}
}
static int ldv___pci_register_driver_22(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
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
static void ldv_pci_unregister_driver_23(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_probe_24(int ldv_func_arg1 )
{
  int tmp ;
  {
  {
  ldv_check_return_value_probe(ldv_func_arg1);
  tmp = ldv_post_probe(ldv_func_arg1);
  }
  return (tmp);
}
}
static int ldv_ldv_post_probe_25(int ldv_func_arg1 )
{
  int tmp ;
  {
  {
  ldv_check_return_value_probe(ldv_func_arg1);
  tmp = ldv_post_probe(ldv_func_arg1);
  }
  return (tmp);
}
}
u32 rtl8192de_phy_reg_2tarray[380U] =
  { 36U, 1146893U, 40U, 16767875U,
        20U, 143370581U, 16U, 1224878851U,
        2048U, 2147745794U, 2052U, 3U,
        2056U, 64512U, 2060U, 10U,
        2064U, 2154849160U, 2068U, 34356496U,
        2072U, 35652485U, 2076U, 0U,
        2080U, 16777472U, 2084U, 3735556U,
        2088U, 16777472U, 2092U, 3735556U,
        2096U, 656877351U, 2100U, 656877351U,
        2104U, 656877351U, 2108U, 656877351U,
        2112U, 65536U, 2116U, 65536U,
        2120U, 656877351U, 2124U, 656877351U,
        2128U, 0U, 2132U, 0U,
        2136U, 1452955290U, 2140U, 203105700U,
        2144U, 1726349872U, 2148U, 102695216U,
        2152U, 656877351U, 2156U, 657140523U,
        2160U, 117442304U, 2164U, 572030976U,
        2168U, 134744072U, 2172U, 32760U,
        2176U, 3221762160U, 2180U, 3285U,
        2184U, 0U, 2188U, 3422552256U,
        2192U, 2048U, 2196U, 4294967294U,
        2200U, 1076895760U, 2204U, 7364688U,
        2304U, 0U, 2308U, 35U,
        2312U, 0U, 2316U, 2165445395U,
        2560U, 13649864U, 2564U, 2164195340U,
        2568U, 2357428992U, 2572U, 778572303U,
        2576U, 2499853176U, 2580U, 286539816U,
        2584U, 8917271U, 2588U, 2299793152U,
        2592U, 437977088U, 2596U, 151917335U,
        2600U, 516U, 2604U, 13828096U,
        2672U, 270515968U, 2676U, 7U,
        3072U, 1074208064U, 3076U, 60839475U,
        3080U, 1048804U, 3084U, 1819044972U,
        3088U, 142606336U, 3092U, 1073742080U,
        3096U, 142606336U, 3100U, 1073742080U,
        3104U, 0U, 3108U, 0U,
        3112U, 0U, 3116U, 0U,
        3120U, 1776921668U, 3124U, 1184256719U,
        3128U, 1232689556U, 3132U, 177706776U,
        3136U, 528236607U, 3140U, 65719U,
        3144U, 3959554311U, 3148U, 8323967U,
        3152U, 1767126048U, 3156U, 1136394398U,
        3160U, 1767126048U, 3164U, 1128005800U,
        3168U, 0U, 3172U, 1360430219U,
        3176U, 1203768319U, 3180U, 54U,
        3184U, 746520589U, 3188U, 92672219U,
        3192U, 31U, 3196U, 1085888018U,
        3200U, 1073742080U, 3204U, 552992768U,
        3208U, 1073742080U, 3212U, 551550976U,
        3216U, 1185824U, 3220U, 7U,
        3224U, 1185824U, 3228U, 32639U,
        3232U, 0U, 3236U, 128U,
        3240U, 0U, 3244U, 0U,
        3248U, 0U, 3252U, 0U,
        3256U, 0U, 3260U, 671088640U,
        3264U, 0U, 3268U, 0U,
        3272U, 0U, 3276U, 0U,
        3280U, 0U, 3284U, 0U,
        3288U, 1689329184U, 3292U, 3900077363U,
        3296U, 2236962U, 3300U, 0U,
        3304U, 929317634U, 3308U, 798479372U,
        3328U, 526144U, 3332U, 132099U,
        3336U, 36991U, 3340U, 536936961U,
        3344U, 2690855731U, 3348U, 859028547U,
        3352U, 2056215403U, 3372U, 3432487285U,
        3376U, 0U, 3380U, 2153808900U,
        3384U, 0U, 3388U, 160403U,
        3392U, 0U, 3396U, 0U,
        3400U, 0U, 3404U, 0U,
        3408U, 1681331210U, 3412U, 0U,
        3416U, 0U, 3420U, 805511268U,
        3424U, 1179901544U, 3428U, 72452668U,
        3432U, 8449U, 3436U, 706747414U,
        3440U, 403846702U, 3444U, 841753120U,
        3448U, 932900U, 3584U, 707406378U,
        3588U, 707406378U, 3592U, 59779626U,
        3600U, 707406378U, 3604U, 707406378U,
        3608U, 707406378U, 3612U, 707406378U,
        3624U, 0U, 3632U, 268491807U,
        3636U, 268471327U, 3640U, 34865410U,
        3644U, 1746273474U, 3648U, 16808960U,
        3652U, 16795648U, 3656U, 4211081216U,
        3660U, 10449U, 3664U, 268491807U,
        3668U, 268471327U, 3672U, 34865410U,
        3676U, 672533765U, 3680U, 16U,
        3688U, 1779108U, 3692U, 1675306404U,
        3696U, 1675306404U, 3700U, 202534308U,
        3704U, 202534308U, 3708U, 202534308U,
        3712U, 202534308U, 3716U, 1675306404U,
        3720U, 202534308U, 3724U, 1675306404U,
        3792U, 1675306404U, 3796U, 1675306404U,
        3800U, 1675306404U, 3804U, 1779108U,
        3808U, 1779108U, 3820U, 1876632996U,
        3860U, 3U, 3868U, 100U,
        3916U, 4U, 3840U, 768U};
u32 rtl8192de_phy_reg_array_pg[624U] =
  { 3584U, 4294967295U, 118033420U, 3588U,
        4294967295U, 16909317U, 3592U, 65280U,
        0U, 2156U, 4294967040U, 0U,
        3600U, 4294967295U, 185338894U, 3604U,
        4294967295U, 16975110U, 3608U, 4294967295U,
        185339150U, 3612U, 4294967295U, 16975113U,
        2096U, 4294967295U, 118033420U, 2100U,
        4294967295U, 16909317U, 2104U, 4294967040U,
        0U, 2156U, 255U, 0U,
        2108U, 4294967295U, 185338894U, 2120U,
        4294967295U, 16975110U, 2124U, 4294967295U,
        185339150U, 2152U, 4294967295U, 16975113U,
        3584U, 4294967295U, 0U, 3588U,
        4294967295U, 0U, 3592U, 65280U,
        0U, 2156U, 4294967040U, 0U,
        3600U, 4294967295U, 0U, 3604U,
        4294967295U, 0U, 3608U, 4294967295U,
        0U, 3612U, 4294967295U, 0U,
        2096U, 4294967295U, 0U, 2100U,
        4294967295U, 0U, 2104U, 4294967040U,
        0U, 2156U, 255U, 0U,
        2108U, 4294967295U, 0U, 2120U,
        4294967295U, 0U, 2124U, 4294967295U,
        0U, 2152U, 4294967295U, 0U,
        3584U, 4294967295U, 67372036U, 3588U,
        4294967295U, 131588U, 3592U, 65280U,
        0U, 2156U, 4294967040U, 0U,
        3600U, 4294967295U, 101058054U, 3604U,
        4294967295U, 132102U, 3608U, 4294967295U,
        0U, 3612U, 4294967295U, 0U,
        2096U, 4294967295U, 67372036U, 2100U,
        4294967295U, 131588U, 2104U, 4294967040U,
        0U, 2156U, 255U, 0U,
        2108U, 4294967295U, 101058054U, 2120U,
        4294967295U, 132102U, 2124U, 4294967295U,
        0U, 2152U, 4294967295U, 0U,
        3584U, 4294967295U, 0U, 3588U,
        4294967295U, 0U, 3592U, 65280U,
        0U, 2156U, 4294967040U, 0U,
        3600U, 4294967295U, 0U, 3604U,
        4294967295U, 0U, 3608U, 4294967295U,
        0U, 3612U, 4294967295U, 0U,
        2096U, 4294967295U, 0U, 2100U,
        4294967295U, 0U, 2104U, 4294967040U,
        0U, 2156U, 255U, 0U,
        2108U, 4294967295U, 0U, 2120U,
        4294967295U, 0U, 2124U, 4294967295U,
        0U, 2152U, 4294967295U, 0U,
        3584U, 4294967295U, 0U, 3588U,
        4294967295U, 0U, 3592U, 65280U,
        0U, 2156U, 4294967040U, 0U,
        3600U, 4294967295U, 0U, 3604U,
        4294967295U, 0U, 3608U, 4294967295U,
        0U, 3612U, 4294967295U, 0U,
        2096U, 4294967295U, 0U, 2100U,
        4294967295U, 0U, 2104U, 4294967040U,
        0U, 2156U, 255U, 0U,
        2108U, 4294967295U, 0U, 2120U,
        4294967295U, 0U, 2124U, 4294967295U,
        0U, 2152U, 4294967295U, 0U,
        3584U, 4294967295U, 67372036U, 3588U,
        4294967295U, 131588U, 3592U, 65280U,
        0U, 2156U, 4294967040U, 0U,
        3600U, 4294967295U, 0U, 3604U,
        4294967295U, 0U, 3608U, 4294967295U,
        0U, 3612U, 4294967295U, 0U,
        2096U, 4294967295U, 67372036U, 2100U,
        4294967295U, 131588U, 2104U, 4294967040U,
        0U, 2156U, 255U, 0U,
        2108U, 4294967295U, 0U, 2120U,
        4294967295U, 0U, 2124U, 4294967295U,
        0U, 2152U, 4294967295U, 0U,
        3584U, 4294967295U, 0U, 3588U,
        4294967295U, 0U, 3592U, 65280U,
        0U, 2156U, 4294967040U, 0U,
        3600U, 4294967295U, 0U, 3604U,
        4294967295U, 0U, 3608U, 4294967295U,
        0U, 3612U, 4294967295U, 0U,
        2096U, 4294967295U, 0U, 2100U,
        4294967295U, 0U, 2104U, 4294967040U,
        0U, 2156U, 255U, 0U,
        2108U, 4294967295U, 0U, 2120U,
        4294967295U, 0U, 2124U, 4294967295U,
        0U, 2152U, 4294967295U, 0U,
        3584U, 4294967295U, 67372036U, 3588U,
        4294967295U, 131588U, 3592U, 65280U,
        0U, 2156U, 4294967040U, 0U,
        3600U, 4294967295U, 134744072U, 3604U,
        4294967295U, 263176U, 3608U, 4294967295U,
        0U, 3612U, 4294967295U, 0U,
        2096U, 4294967295U, 67372036U, 2100U,
        4294967295U, 131588U, 2104U, 4294967040U,
        0U, 2156U, 255U, 0U,
        2108U, 4294967295U, 134744072U, 2120U,
        4294967295U, 263176U, 2124U, 4294967295U,
        0U, 2152U, 4294967295U, 0U,
        3584U, 4294967295U, 67372036U, 3588U,
        4294967295U, 131588U, 3592U, 65280U,
        0U, 2156U, 4294967040U, 0U,
        3600U, 4294967295U, 134744072U, 3604U,
        4294967295U, 263176U, 3608U, 4294967295U,
        0U, 3612U, 4294967295U, 0U,
        2096U, 4294967295U, 67372036U, 2100U,
        4294967295U, 131588U, 2104U, 4294967040U,
        0U, 2156U, 255U, 0U,
        2108U, 4294967295U, 134744072U, 2120U,
        4294967295U, 263176U, 2124U, 4294967295U,
        0U, 2152U, 4294967295U, 0U,
        3584U, 4294967295U, 67372036U, 3588U,
        4294967295U, 131588U, 3592U, 65280U,
        0U, 2156U, 4294967040U, 0U,
        3600U, 4294967295U, 134744072U, 3604U,
        4294967295U, 263176U, 3608U, 4294967295U,
        0U, 3612U, 4294967295U, 0U,
        2096U, 4294967295U, 67372036U, 2100U,
        4294967295U, 131588U, 2104U, 4294967040U,
        0U, 2156U, 255U, 0U,
        2108U, 4294967295U, 134744072U, 2120U,
        4294967295U, 263176U, 2124U, 4294967295U,
        0U, 2152U, 4294967295U, 0U,
        3584U, 4294967295U, 67372036U, 3588U,
        4294967295U, 131588U, 3592U, 65280U,
        0U, 2156U, 4294967040U, 0U,
        3600U, 4294967295U, 134744072U, 3604U,
        4294967295U, 263176U, 3608U, 4294967295U,
        0U, 3612U, 4294967295U, 0U,
        2096U, 4294967295U, 67372036U, 2100U,
        4294967295U, 131588U, 2104U, 4294967040U,
        0U, 2156U, 255U, 0U,
        2108U, 4294967295U, 134744072U, 2120U,
        4294967295U, 263176U, 2124U, 4294967295U,
        0U, 2152U, 4294967295U, 0U,
        3584U, 4294967295U, 67372036U, 3588U,
        4294967295U, 131588U, 3592U, 65280U,
        0U, 2156U, 4294967040U, 0U,
        3600U, 4294967295U, 134744072U, 3604U,
        4294967295U, 263176U, 3608U, 4294967295U,
        0U, 3612U, 4294967295U, 0U,
        2096U, 4294967295U, 67372036U, 2100U,
        4294967295U, 131588U, 2104U, 4294967040U,
        0U, 2156U, 255U, 0U,
        2108U, 4294967295U, 134744072U, 2120U,
        4294967295U, 263176U, 2124U, 4294967295U,
        0U, 2152U, 4294967295U, 0U,
        3584U, 4294967295U, 67372036U, 3588U,
        4294967295U, 131588U, 3592U, 65280U,
        0U, 2156U, 4294967040U, 0U,
        3600U, 4294967295U, 134744072U, 3604U,
        4294967295U, 263176U, 3608U, 4294967295U,
        0U, 3612U, 4294967295U, 0U,
        2096U, 4294967295U, 67372036U, 2100U,
        4294967295U, 131588U, 2104U, 4294967040U,
        0U, 2156U, 255U, 0U,
        2108U, 4294967295U, 134744072U, 2120U,
        4294967295U, 263176U, 2124U, 4294967295U,
        0U, 2152U, 4294967295U, 0U};
u32 rtl8192de_radioa_2tarray[378U] =
  { 0U, 196608U, 1U, 196608U,
        2U, 0U, 3U, 101475U,
        4U, 101475U, 8U, 540672U,
        11U, 114688U, 14U, 101479U,
        15U, 2129U, 20U, 136256U,
        24U, 95524U, 25U, 0U,
        29U, 660112U, 35U, 5464U,
        26U, 199321U, 27U, 264960U,
        28U, 1033017U, 58U, 677867U,
        59U, 131072U, 60U, 1045588U,
        32U, 43602U, 33U, 344064U,
        64U, 43602U, 65U, 81920U,
        37U, 525246U, 38U, 1033784U,
        39U, 490520U, 40U, 910449U,
        41U, 880912U, 42U, 576260U,
        43U, 266891U, 44U, 6208U,
        67U, 148559U, 68U, 110000U,
        69U, 353383U, 70U, 563500U,
        71U, 17708U, 72U, 1023043U,
        73U, 11788U, 74U, 345835U,
        75U, 562796U, 76U, 56809U,
        24U, 29697U, 0U, 458752U,
        18U, 901120U, 18U, 589824U,
        18U, 331776U, 18U, 73728U,
        19U, 165815U, 19U, 149419U,
        19U, 133023U, 19U, 116627U,
        19U, 99227U, 19U, 82834U,
        19U, 65946U, 19U, 49553U,
        19U, 33172U, 19U, 16544U,
        19U, 24U, 21U, 62500U,
        21U, 324644U, 21U, 586788U,
        22U, 922416U, 22U, 660272U,
        22U, 398128U, 22U, 135984U,
        24U, 95524U, 0U, 458752U,
        18U, 847872U, 18U, 770048U,
        18U, 491520U, 18U, 0U,
        19U, 165820U, 19U, 149424U,
        19U, 132020U, 19U, 115624U,
        19U, 98740U, 19U, 82344U,
        19U, 65712U, 19U, 49316U,
        19U, 45100U, 19U, 16416U,
        19U, 20U, 21U, 62659U,
        21U, 324803U, 21U, 586947U,
        22U, 919647U, 22U, 657503U,
        22U, 395359U, 22U, 133215U,
        24U, 226596U, 0U, 458752U,
        18U, 847872U, 18U, 770048U,
        18U, 491520U, 18U, 0U,
        19U, 165820U, 19U, 149424U,
        19U, 132020U, 19U, 115624U,
        19U, 98740U, 19U, 82344U,
        19U, 65712U, 19U, 49316U,
        19U, 45100U, 19U, 16416U,
        19U, 20U, 21U, 62659U,
        21U, 324803U, 21U, 586947U,
        22U, 919647U, 22U, 657503U,
        22U, 395359U, 22U, 133215U,
        24U, 357736U, 0U, 458752U,
        18U, 847872U, 18U, 770048U,
        18U, 491520U, 18U, 0U,
        19U, 165820U, 19U, 149424U,
        19U, 132020U, 19U, 115624U,
        19U, 98740U, 19U, 82344U,
        19U, 65712U, 19U, 49316U,
        19U, 45100U, 19U, 16416U,
        19U, 20U, 21U, 62659U,
        21U, 324803U, 21U, 586947U,
        22U, 919647U, 22U, 657503U,
        22U, 395359U, 22U, 133215U,
        48U, 280335U, 49U, 282608U,
        50U, 112U, 51U, 906368U,
        52U, 1047232U, 53U, 753856U,
        54U, 487424U, 55U, 413682U,
        56U, 947809U, 57U, 3728U,
        0U, 196608U, 24U, 62465U,
        254U, 0U, 254U, 0U,
        30U, 557065U, 31U, 524291U,
        254U, 0U, 30U, 557057U,
        31U, 524288U, 254U, 0U,
        24U, 619812U, 254U, 0U,
        254U, 0U, 254U, 0U,
        254U, 0U, 43U, 266889U,
        254U, 0U, 45U, 436906U,
        46U, 740609U, 45U, 524288U,
        46U, 19714U, 45U, 611669U,
        46U, 347395U, 45U, 699050U,
        46U, 740612U, 45U, 786432U,
        46U, 19717U, 45U, 873813U,
        46U, 347398U, 45U, 961194U,
        46U, 740615U, 45U, 0U,
        46U, 20744U, 45U, 87381U,
        46U, 348425U, 45U, 174762U,
        46U, 741642U, 45U, 262144U,
        46U, 20747U, 45U, 349525U,
        46U, 348428U};
u32 rtl8192de_radiob_2tarray[384U] =
  { 0U, 196608U, 1U, 196608U,
        2U, 0U, 3U, 101475U,
        4U, 101475U, 8U, 540672U,
        11U, 114688U, 14U, 101479U,
        15U, 2129U, 20U, 136256U,
        24U, 29697U, 25U, 96U,
        29U, 660112U, 35U, 5464U,
        26U, 199321U, 27U, 264960U,
        28U, 1033017U, 58U, 677867U,
        59U, 131072U, 60U, 1045588U,
        32U, 43602U, 33U, 344064U,
        64U, 43602U, 65U, 81920U,
        37U, 525246U, 38U, 1033784U,
        39U, 490520U, 40U, 859185U,
        41U, 880912U, 42U, 715524U,
        43U, 266891U, 44U, 6208U,
        67U, 148559U, 68U, 110000U,
        69U, 353383U, 70U, 563500U,
        71U, 17708U, 72U, 1023043U,
        73U, 11788U, 74U, 345835U,
        75U, 562796U, 76U, 56809U,
        24U, 29697U, 0U, 458752U,
        18U, 901120U, 18U, 589824U,
        18U, 331776U, 18U, 73728U,
        19U, 165815U, 19U, 149419U,
        19U, 133023U, 19U, 116627U,
        19U, 99227U, 19U, 82834U,
        19U, 65946U, 19U, 49553U,
        19U, 33172U, 19U, 16544U,
        19U, 24U, 21U, 62500U,
        21U, 324644U, 21U, 586788U,
        22U, 922416U, 22U, 660272U,
        22U, 398128U, 22U, 135984U,
        24U, 95524U, 0U, 458752U,
        18U, 847872U, 18U, 770048U,
        18U, 491520U, 18U, 0U,
        19U, 165820U, 19U, 149424U,
        19U, 132020U, 19U, 115624U,
        19U, 98740U, 19U, 82344U,
        19U, 65712U, 19U, 49316U,
        19U, 45100U, 19U, 16416U,
        19U, 20U, 21U, 62659U,
        21U, 324803U, 21U, 586947U,
        22U, 919647U, 22U, 657503U,
        22U, 395359U, 22U, 133215U,
        24U, 226596U, 0U, 458752U,
        18U, 847872U, 18U, 770048U,
        18U, 491520U, 18U, 0U,
        19U, 165820U, 19U, 149424U,
        19U, 132020U, 19U, 115624U,
        19U, 98740U, 19U, 82344U,
        19U, 65712U, 19U, 49316U,
        19U, 45100U, 19U, 16416U,
        19U, 20U, 21U, 62659U,
        21U, 324803U, 21U, 586947U,
        22U, 919647U, 22U, 657503U,
        22U, 395359U, 22U, 133215U,
        24U, 357668U, 0U, 458752U,
        18U, 847872U, 18U, 770048U,
        18U, 491520U, 18U, 0U,
        19U, 165820U, 19U, 149424U,
        19U, 132020U, 19U, 115624U,
        19U, 98740U, 19U, 82344U,
        19U, 65712U, 19U, 49316U,
        19U, 45100U, 19U, 16416U,
        19U, 20U, 21U, 62659U,
        21U, 324803U, 21U, 586947U,
        22U, 919647U, 22U, 657503U,
        22U, 395359U, 22U, 133215U,
        48U, 280335U, 49U, 282608U,
        50U, 112U, 51U, 906368U,
        52U, 1047232U, 53U, 753856U,
        54U, 487424U, 55U, 413682U,
        56U, 947809U, 57U, 3728U,
        0U, 196608U, 24U, 62465U,
        254U, 0U, 254U, 0U,
        30U, 557065U, 31U, 524291U,
        254U, 0U, 30U, 557057U,
        31U, 524288U, 254U, 0U,
        24U, 553985U, 254U, 0U,
        254U, 0U, 254U, 0U,
        43U, 266889U, 254U, 0U,
        45U, 419430U, 46U, 409601U,
        45U, 594193U, 46U, 81922U,
        45U, 768955U, 46U, 737283U,
        45U, 943718U, 46U, 409604U,
        45U, 559240U, 46U, 540677U,
        45U, 646621U, 46U, 868358U,
        45U, 734003U, 46U, 212999U,
        45U, 297096U, 46U, 541704U,
        45U, 768955U, 46U, 738313U,
        45U, 943718U, 46U, 410634U,
        45U, 69905U, 46U, 83979U,
        45U, 244667U, 46U, 739340U,
        45U, 419430U, 46U, 411661U,
        45U, 838860U, 46U, 804878U};
u32 rtl8192de_radioa_2t_int_paarray[378U] =
  { 0U, 196608U, 1U, 196608U,
        2U, 0U, 3U, 101475U,
        4U, 101475U, 8U, 540672U,
        11U, 114688U, 14U, 101479U,
        15U, 2129U, 20U, 136256U,
        24U, 95524U, 25U, 0U,
        29U, 660112U, 35U, 5464U,
        26U, 199321U, 27U, 264960U,
        28U, 1033017U, 58U, 677867U,
        59U, 131072U, 60U, 1045588U,
        32U, 43602U, 33U, 344064U,
        64U, 43602U, 65U, 81920U,
        37U, 525246U, 38U, 1033784U,
        39U, 490520U, 40U, 910449U,
        41U, 880912U, 42U, 584452U,
        43U, 266891U, 44U, 6208U,
        67U, 148559U, 68U, 110000U,
        69U, 353383U, 70U, 563500U,
        71U, 17708U, 72U, 787523U,
        73U, 1840U, 74U, 331535U,
        75U, 562926U, 76U, 56814U,
        24U, 29697U, 0U, 458752U,
        18U, 901120U, 18U, 589824U,
        18U, 331776U, 18U, 73728U,
        19U, 165815U, 19U, 149419U,
        19U, 133023U, 19U, 116627U,
        19U, 99227U, 19U, 82834U,
        19U, 65946U, 19U, 49553U,
        19U, 33172U, 19U, 16544U,
        19U, 24U, 21U, 62500U,
        21U, 324644U, 21U, 586788U,
        22U, 922416U, 22U, 660272U,
        22U, 398128U, 22U, 135984U,
        24U, 95524U, 0U, 458752U,
        18U, 847872U, 18U, 770048U,
        18U, 491520U, 18U, 0U,
        19U, 165823U, 19U, 149427U,
        19U, 133031U, 19U, 116635U,
        19U, 99231U, 19U, 82835U,
        19U, 66457U, 19U, 50061U,
        19U, 33177U, 19U, 16781U,
        19U, 153U, 21U, 62613U,
        21U, 324757U, 21U, 586901U,
        22U, 923764U, 22U, 661620U,
        22U, 399476U, 22U, 137332U,
        24U, 226660U, 0U, 458752U,
        18U, 847872U, 18U, 770048U,
        18U, 491520U, 18U, 0U,
        19U, 165823U, 19U, 149427U,
        19U, 133031U, 19U, 116635U,
        19U, 99231U, 19U, 82835U,
        19U, 66457U, 19U, 50061U,
        19U, 33177U, 19U, 16781U,
        19U, 153U, 21U, 62613U,
        21U, 324757U, 21U, 586901U,
        22U, 923764U, 22U, 661620U,
        22U, 399476U, 22U, 137332U,
        24U, 357781U, 0U, 458752U,
        18U, 847872U, 18U, 770048U,
        18U, 491520U, 18U, 0U,
        19U, 165823U, 19U, 149427U,
        19U, 133031U, 19U, 116635U,
        19U, 99231U, 19U, 82835U,
        19U, 66457U, 19U, 50061U,
        19U, 33177U, 19U, 16781U,
        19U, 153U, 21U, 62613U,
        21U, 324757U, 21U, 586901U,
        22U, 923764U, 22U, 661620U,
        22U, 399476U, 22U, 137332U,
        48U, 280335U, 49U, 282608U,
        50U, 112U, 51U, 906368U,
        52U, 1047232U, 53U, 753856U,
        54U, 487424U, 55U, 413682U,
        56U, 947809U, 57U, 3728U,
        0U, 196608U, 24U, 62465U,
        254U, 0U, 254U, 0U,
        30U, 557065U, 31U, 524291U,
        254U, 0U, 30U, 557057U,
        31U, 524288U, 254U, 0U,
        24U, 619812U, 254U, 0U,
        254U, 0U, 254U, 0U,
        254U, 0U, 43U, 266889U,
        254U, 0U, 45U, 436906U,
        46U, 740609U, 45U, 524288U,
        46U, 19714U, 45U, 611669U,
        46U, 347395U, 45U, 699050U,
        46U, 740612U, 45U, 786432U,
        46U, 19717U, 45U, 873813U,
        46U, 347398U, 45U, 961194U,
        46U, 740615U, 45U, 0U,
        46U, 20744U, 45U, 87381U,
        46U, 348425U, 45U, 174762U,
        46U, 741642U, 45U, 262144U,
        46U, 20747U, 45U, 349525U,
        46U, 348428U};
u32 rtl8192de_radiob_2t_int_paarray[384U] =
  { 0U, 196608U, 1U, 196608U,
        2U, 0U, 3U, 101475U,
        4U, 101475U, 8U, 540672U,
        11U, 114688U, 14U, 101479U,
        15U, 2129U, 20U, 136256U,
        24U, 29697U, 25U, 96U,
        29U, 660112U, 35U, 5464U,
        26U, 199321U, 27U, 264960U,
        28U, 1033017U, 58U, 677867U,
        59U, 131072U, 60U, 1045588U,
        32U, 43602U, 33U, 344064U,
        64U, 43602U, 65U, 81920U,
        37U, 525246U, 38U, 1033784U,
        39U, 490520U, 40U, 859185U,
        41U, 880912U, 42U, 715524U,
        43U, 266891U, 44U, 6208U,
        67U, 148559U, 68U, 110000U,
        69U, 353383U, 70U, 563500U,
        71U, 17708U, 72U, 787523U,
        73U, 1840U, 74U, 331535U,
        75U, 562926U, 76U, 56814U,
        24U, 29697U, 0U, 458752U,
        18U, 901120U, 18U, 589824U,
        18U, 331776U, 18U, 73728U,
        19U, 165815U, 19U, 149419U,
        19U, 133023U, 19U, 116627U,
        19U, 99227U, 19U, 82834U,
        19U, 65946U, 19U, 49553U,
        19U, 33172U, 19U, 16544U,
        19U, 24U, 21U, 62500U,
        21U, 324644U, 21U, 586788U,
        22U, 922416U, 22U, 660272U,
        22U, 398128U, 22U, 135984U,
        24U, 95524U, 0U, 458752U,
        18U, 847872U, 18U, 770048U,
        18U, 491520U, 18U, 0U,
        19U, 165823U, 19U, 149427U,
        19U, 133031U, 19U, 116635U,
        19U, 99231U, 19U, 82835U,
        19U, 66457U, 19U, 50061U,
        19U, 33177U, 19U, 16781U,
        19U, 153U, 21U, 62613U,
        21U, 324757U, 21U, 586901U,
        22U, 923764U, 22U, 661620U,
        22U, 399476U, 22U, 137332U,
        24U, 226660U, 0U, 458752U,
        18U, 847872U, 18U, 770048U,
        18U, 491520U, 18U, 0U,
        19U, 165823U, 19U, 149427U,
        19U, 133031U, 19U, 116635U,
        19U, 99231U, 19U, 82835U,
        19U, 66457U, 19U, 50061U,
        19U, 33177U, 19U, 16781U,
        19U, 153U, 21U, 62613U,
        21U, 324757U, 21U, 586901U,
        22U, 923764U, 22U, 661620U,
        22U, 399476U, 22U, 137332U,
        24U, 357781U, 0U, 458752U,
        18U, 847872U, 18U, 770048U,
        18U, 491520U, 18U, 0U,
        19U, 165823U, 19U, 149427U,
        19U, 133031U, 19U, 116635U,
        19U, 99231U, 19U, 82835U,
        19U, 66457U, 19U, 50061U,
        19U, 33177U, 19U, 16781U,
        19U, 153U, 21U, 62613U,
        21U, 324757U, 21U, 586901U,
        22U, 923764U, 22U, 661620U,
        22U, 399476U, 22U, 137332U,
        48U, 280335U, 49U, 282608U,
        50U, 112U, 51U, 906368U,
        52U, 1047232U, 53U, 753856U,
        54U, 487424U, 55U, 413682U,
        56U, 947809U, 57U, 3728U,
        0U, 196608U, 24U, 62465U,
        254U, 0U, 254U, 0U,
        30U, 557065U, 31U, 524291U,
        254U, 0U, 30U, 557057U,
        31U, 524288U, 254U, 0U,
        24U, 553985U, 254U, 0U,
        254U, 0U, 254U, 0U,
        43U, 266889U, 254U, 0U,
        45U, 419430U, 46U, 409601U,
        45U, 594193U, 46U, 81922U,
        45U, 768955U, 46U, 737283U,
        45U, 943718U, 46U, 409604U,
        45U, 559240U, 46U, 540677U,
        45U, 646621U, 46U, 868358U,
        45U, 734003U, 46U, 212999U,
        45U, 297096U, 46U, 541704U,
        45U, 768955U, 46U, 738313U,
        45U, 943718U, 46U, 410634U,
        45U, 69905U, 46U, 83979U,
        45U, 244667U, 46U, 739340U,
        45U, 419430U, 46U, 411661U,
        45U, 838860U, 46U, 804878U};
u32 rtl8192de_mac_2tarray[160U] =
  { 1056U, 128U, 1059U, 0U,
        1072U, 0U, 1073U, 0U,
        1074U, 0U, 1075U, 1U,
        1076U, 4U, 1077U, 5U,
        1078U, 6U, 1079U, 7U,
        1080U, 0U, 1081U, 0U,
        1082U, 0U, 1083U, 1U,
        1084U, 4U, 1085U, 5U,
        1086U, 6U, 1087U, 7U,
        1088U, 80U, 1089U, 1U,
        1090U, 0U, 1092U, 21U,
        1093U, 240U, 1094U, 15U,
        1095U, 0U, 1122U, 8U,
        1123U, 3U, 1224U, 255U,
        1225U, 8U, 1228U, 255U,
        1229U, 255U, 1230U, 1U,
        1280U, 38U, 1281U, 162U,
        1282U, 47U, 1283U, 0U,
        1284U, 40U, 1285U, 163U,
        1286U, 94U, 1287U, 0U,
        1288U, 43U, 1289U, 164U,
        1290U, 94U, 1291U, 0U,
        1292U, 79U, 1293U, 164U,
        1294U, 0U, 1295U, 0U,
        1298U, 28U, 1300U, 10U,
        1301U, 16U, 1302U, 10U,
        1303U, 16U, 1306U, 22U,
        1316U, 15U, 1317U, 79U,
        1350U, 64U, 1351U, 0U,
        1360U, 16U, 1361U, 16U,
        1369U, 2U, 1370U, 2U,
        1373U, 255U, 1541U, 48U,
        1544U, 14U, 1545U, 42U,
        1618U, 32U, 1596U, 10U,
        1597U, 10U, 1598U, 14U,
        1599U, 14U, 1646U, 5U,
        1792U, 33U, 1793U, 67U,
        1794U, 101U, 1795U, 135U,
        1800U, 33U, 1801U, 67U,
        1802U, 101U, 1803U, 135U};
u32 rtl8192de_agctab_array[386U] =
  { 3192U, 2063597569U, 3192U, 2063663105U,
        3192U, 2063728641U, 3192U, 2063794177U,
        3192U, 2063859713U, 3192U, 2063925249U,
        3192U, 2063990785U, 3192U, 2047279105U,
        3192U, 2030567425U, 3192U, 2013855745U,
        3192U, 1997144065U, 3192U, 1980432385U,
        3192U, 1963720705U, 3192U, 1947009025U,
        3192U, 1930297345U, 3192U, 1913585665U,
        3192U, 1896873985U, 3192U, 1880162305U,
        3192U, 1863450625U, 3192U, 1846738945U,
        3192U, 1830027265U, 3192U, 1813315585U,
        3192U, 1796603905U, 3192U, 1779892225U,
        3192U, 1763180545U, 3192U, 1746468865U,
        3192U, 1729757185U, 3192U, 1713045505U,
        3192U, 1696333825U, 3192U, 1679622145U,
        3192U, 1662910465U, 3192U, 1646198785U,
        3192U, 1629487105U, 3192U, 1612775425U,
        3192U, 1226964993U, 3192U, 1210253313U,
        3192U, 1193541633U, 3192U, 1176829953U,
        3192U, 1160118273U, 3192U, 1143406593U,
        3192U, 1126694913U, 3192U, 1109983233U,
        3192U, 1093271553U, 3192U, 1076559873U,
        3192U, 640417793U, 3192U, 623706113U,
        3192U, 606994433U, 3192U, 590282753U,
        3192U, 573571073U, 3192U, 556859393U,
        3192U, 540147713U, 3192U, 104005633U,
        3192U, 87293953U, 3192U, 70582273U,
        3192U, 53870593U, 3192U, 37158913U,
        3192U, 20447233U, 3192U, 3735553U,
        3192U, 3801089U, 3192U, 3866625U,
        3192U, 3932161U, 3192U, 3997697U,
        3192U, 4063233U, 3192U, 4128769U,
        3192U, 2067791873U, 3192U, 2067857409U,
        3192U, 2051145729U, 3192U, 2034434049U,
        3192U, 2017722369U, 3192U, 2001010689U,
        3192U, 1984299009U, 3192U, 1967587329U,
        3192U, 1950875649U, 3192U, 1934163969U,
        3192U, 1917452289U, 3192U, 1900740609U,
        3192U, 1884028929U, 3192U, 1867317249U,
        3192U, 1850605569U, 3192U, 1833893889U,
        3192U, 1817182209U, 3192U, 1800470529U,
        3192U, 1783758849U, 3192U, 1767047169U,
        3192U, 1750335489U, 3192U, 1733623809U,
        3192U, 1716912129U, 3192U, 1700200449U,
        3192U, 1683488769U, 3192U, 1666777089U,
        3192U, 1650065409U, 3192U, 1633353729U,
        3192U, 1616642049U, 3192U, 1214054401U,
        3192U, 1197342721U, 3192U, 1180631041U,
        3192U, 1163919361U, 3192U, 1147207681U,
        3192U, 1130496001U, 3192U, 1113784321U,
        3192U, 1097072641U, 3192U, 1080360961U,
        3192U, 660996097U, 3192U, 644284417U,
        3192U, 627572737U, 3192U, 610861057U,
        3192U, 594149377U, 3192U, 577437697U,
        3192U, 560726017U, 3192U, 544014337U,
        3192U, 544079873U, 3192U, 544145409U,
        3192U, 544210945U, 3192U, 544276481U,
        3192U, 544342017U, 3192U, 544407553U,
        3192U, 544473089U, 3192U, 544538625U,
        3192U, 544604161U, 3192U, 544669697U,
        3192U, 544735233U, 3192U, 544800769U,
        3192U, 544866305U, 3192U, 544931841U,
        3192U, 544997377U, 3192U, 545062913U,
        3192U, 545128449U, 3192U, 545193985U,
        3192U, 939524098U, 3192U, 939589634U,
        3192U, 939655170U, 3192U, 939720706U,
        3192U, 939786242U, 3192U, 939851778U,
        3192U, 939917314U, 3192U, 939982850U,
        3192U, 940048386U, 3192U, 1007222786U,
        3192U, 1040842754U, 3192U, 1074462722U,
        3192U, 1141637122U, 3192U, 1208811522U,
        3192U, 1275985922U, 3192U, 1343160322U,
        3192U, 1376780290U, 3192U, 1443954690U,
        3192U, 1511129090U, 3192U, 1578303490U,
        3192U, 1611923458U, 3192U, 1611988994U,
        3192U, 1612054530U, 3192U, 1645674498U,
        3192U, 1645740034U, 3192U, 1645805570U,
        3192U, 1645871106U, 3192U, 1645936642U,
        3192U, 1646002178U, 3192U, 1646067714U,
        3192U, 1646133250U, 3192U, 1646198786U,
        3192U, 838860868U, 3192U, 838926404U,
        3192U, 838991940U, 3192U, 839057476U,
        3192U, 839123012U, 3192U, 839188548U,
        3192U, 839254084U, 3192U, 839319620U,
        3192U, 839385156U, 3192U, 873005124U,
        3192U, 889847876U, 3192U, 906690628U,
        3192U, 923533380U, 3192U, 940376132U,
        3192U, 957218884U, 3192U, 974061636U,
        3192U, 1041236036U, 3192U, 1108410436U,
        3192U, 1142030404U, 3192U, 1175650372U,
        3192U, 1242824772U, 3192U, 1309999172U,
        3192U, 1343619140U, 3192U, 1427570756U,
        3192U, 1511522372U, 3192U, 1578696772U,
        3192U, 1679425604U, 3192U, 1847263300U,
        3192U, 1847328836U, 3192U, 1847394372U,
        3192U, 1847459908U, 3192U, 1847525444U,
        3192U, 1847525376U};
u32 rtl8192de_agctab_5garray[194U] =
  { 3192U, 2063597569U, 3192U, 2063663105U,
        3192U, 2046951425U, 3192U, 2030239745U,
        3192U, 2013528065U, 3192U, 1996816385U,
        3192U, 1980104705U, 3192U, 1963393025U,
        3192U, 1946681345U, 3192U, 1929969665U,
        3192U, 1913257985U, 3192U, 1896546305U,
        3192U, 1879834625U, 3192U, 1863122945U,
        3192U, 1846411265U, 3192U, 1829699585U,
        3192U, 1812987905U, 3192U, 1796276225U,
        3192U, 1779564545U, 3192U, 1762852865U,
        3192U, 1746141185U, 3192U, 1729429505U,
        3192U, 1712717825U, 3192U, 1696006145U,
        3192U, 1679294465U, 3192U, 1662582785U,
        3192U, 1645871105U, 3192U, 1629159425U,
        3192U, 1612447745U, 3192U, 1209860097U,
        3192U, 1193148417U, 3192U, 1176436737U,
        3192U, 1159725057U, 3192U, 1143013377U,
        3192U, 1126301697U, 3192U, 1109590017U,
        3192U, 1092878337U, 3192U, 1076166657U,
        3192U, 656801793U, 3192U, 640090113U,
        3192U, 623378433U, 3192U, 606666753U,
        3192U, 589955073U, 3192U, 573243393U,
        3192U, 556531713U, 3192U, 539820033U,
        3192U, 539885569U, 3192U, 539951105U,
        3192U, 540016641U, 3192U, 540082177U,
        3192U, 540147713U, 3192U, 540213249U,
        3192U, 540278785U, 3192U, 540344321U,
        3192U, 540409857U, 3192U, 540475393U,
        3192U, 540540929U, 3192U, 540606465U,
        3192U, 540672001U, 3192U, 540737537U,
        3192U, 540803073U, 3192U, 540868609U,
        3192U, 540934145U, 3192U, 540999681U,
        3192U, 838860868U, 3192U, 838926404U,
        3192U, 838991940U, 3192U, 839057476U,
        3192U, 839123012U, 3192U, 839188548U,
        3192U, 839254084U, 3192U, 839319620U,
        3192U, 839385156U, 3192U, 873005124U,
        3192U, 889847876U, 3192U, 906690628U,
        3192U, 923533380U, 3192U, 940376132U,
        3192U, 957218884U, 3192U, 974061636U,
        3192U, 1041236036U, 3192U, 1108410436U,
        3192U, 1142030404U, 3192U, 1175650372U,
        3192U, 1242824772U, 3192U, 1309999172U,
        3192U, 1343619140U, 3192U, 1427570756U,
        3192U, 1511522372U, 3192U, 1578696772U,
        3192U, 1679425604U, 3192U, 1847263300U,
        3192U, 1847328836U, 3192U, 1847394372U,
        3192U, 1847459908U, 3192U, 1847525444U,
        3192U, 1847525376U};
u32 rtl8192de_agctab_2garray[194U] =
  { 3192U, 2063597569U, 3192U, 2063663105U,
        3192U, 2063728641U, 3192U, 2063794177U,
        3192U, 2063859713U, 3192U, 2063925249U,
        3192U, 2063990785U, 3192U, 2047279105U,
        3192U, 2030567425U, 3192U, 2013855745U,
        3192U, 1997144065U, 3192U, 1980432385U,
        3192U, 1963720705U, 3192U, 1947009025U,
        3192U, 1930297345U, 3192U, 1913585665U,
        3192U, 1896873985U, 3192U, 1880162305U,
        3192U, 1863450625U, 3192U, 1846738945U,
        3192U, 1830027265U, 3192U, 1813315585U,
        3192U, 1796603905U, 3192U, 1779892225U,
        3192U, 1763180545U, 3192U, 1746468865U,
        3192U, 1729757185U, 3192U, 1713045505U,
        3192U, 1696333825U, 3192U, 1679622145U,
        3192U, 1662910465U, 3192U, 1646198785U,
        3192U, 1629487105U, 3192U, 1612775425U,
        3192U, 1226964993U, 3192U, 1210253313U,
        3192U, 1193541633U, 3192U, 1176829953U,
        3192U, 1160118273U, 3192U, 1143406593U,
        3192U, 1126694913U, 3192U, 1109983233U,
        3192U, 1093271553U, 3192U, 1076559873U,
        3192U, 640417793U, 3192U, 623706113U,
        3192U, 606994433U, 3192U, 590282753U,
        3192U, 573571073U, 3192U, 556859393U,
        3192U, 540147713U, 3192U, 104005633U,
        3192U, 87293953U, 3192U, 70582273U,
        3192U, 53870593U, 3192U, 37158913U,
        3192U, 20447233U, 3192U, 3735553U,
        3192U, 3801089U, 3192U, 3866625U,
        3192U, 3932161U, 3192U, 3997697U,
        3192U, 4063233U, 3192U, 4128769U,
        3192U, 939524098U, 3192U, 939589634U,
        3192U, 939655170U, 3192U, 939720706U,
        3192U, 939786242U, 3192U, 939851778U,
        3192U, 939917314U, 3192U, 939982850U,
        3192U, 940048386U, 3192U, 1007222786U,
        3192U, 1040842754U, 3192U, 1074462722U,
        3192U, 1141637122U, 3192U, 1208811522U,
        3192U, 1275985922U, 3192U, 1343160322U,
        3192U, 1376780290U, 3192U, 1443954690U,
        3192U, 1511129090U, 3192U, 1578303490U,
        3192U, 1611923458U, 3192U, 1611988994U,
        3192U, 1612054530U, 3192U, 1645674498U,
        3192U, 1645740034U, 3192U, 1645805570U,
        3192U, 1645871106U, 3192U, 1645936642U,
        3192U, 1646002178U, 3192U, 1646067714U,
        3192U, 1646133250U, 3192U, 1646198786U,
        3192U, 1847525376U};
extern unsigned long __phys_addr(unsigned long ) ;
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
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
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
extern unsigned char *skb_push(struct sk_buff * , unsigned int ) ;
__inline static int ieee80211_is_mgmt(__le16 fc )
{
  {
  return (((int )fc & 12) == 0);
}
}
__inline static int ieee80211_is_ctl(__le16 fc )
{
  {
  return (((int )fc & 12) == 4);
}
}
__inline static int ieee80211_is_data_qos(__le16 fc )
{
  {
  return (((int )fc & 140) == 136);
}
}
__inline static int ieee80211_is_beacon(__le16 fc )
{
  {
  return (((int )fc & 252) == 128);
}
}
__inline static int ieee80211_is_nullfunc(__le16 fc )
{
  {
  return (((int )fc & 252) == 72);
}
}
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
__inline static bool ether_addr_equal(u8 const *addr1 , u8 const *addr2 )
{
  u32 fold ;
  {
  fold = ((unsigned int )*((u32 const *)addr1) ^ (unsigned int )*((u32 const *)addr2)) | (unsigned int )((int )((unsigned short )*((u16 const *)addr1 + 4U)) ^ (int )((unsigned short )*((u16 const *)addr2 + 4U)));
  return (fold == 0U);
}
}
__inline static struct ieee80211_hdr *rtl_get_hdr(struct sk_buff *skb )
{
  {
  return ((struct ieee80211_hdr *)skb->data);
}
}
__inline static __le16 rtl_get_fc(struct sk_buff *skb )
{
  struct ieee80211_hdr *tmp ;
  {
  {
  tmp = rtl_get_hdr(skb);
  }
  return (tmp->frame_control);
}
}
extern void rtl_get_tcb_desc(struct ieee80211_hw * , struct ieee80211_tx_info * ,
                             struct ieee80211_sta * , struct sk_buff * , struct rtl_tcb_desc * ) ;
extern int rtlwifi_rate_mapping(struct ieee80211_hw * , bool , u8 , bool ) ;
static u8 _rtl92de_map_hwqueue_to_fwqueue(struct sk_buff *skb , u8 hw_queue )
{
  __le16 fc ;
  __le16 tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = rtl_get_fc(skb);
  fc = tmp;
  tmp___0 = ieee80211_is_beacon((int )fc);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  }
  if (tmp___1 != 0L) {
    return (16U);
  } else {
  }
  {
  tmp___2 = ieee80211_is_mgmt((int )fc);
  }
  if (tmp___2 != 0) {
    return (18U);
  } else {
  }
  return ((u8 )skb->priority);
}
}
static u8 _rtl92d_query_rxpwrpercentage(char antpower )
{
  {
  if ((unsigned int )((unsigned char )antpower) - 157U > 118U) {
    return (0U);
  } else
  if ((int )((signed char )antpower) >= 0) {
    return (100U);
  } else {
    return ((unsigned int )((u8 )antpower) + 100U);
  }
}
}
static u8 _rtl92d_evm_db_to_percentage(char value )
{
  char ret_val ;
  {
  ret_val = value;
  if ((int )((signed char )ret_val) >= 0) {
    ret_val = 0;
  } else {
  }
  if ((int )((signed char )ret_val) < -32) {
    ret_val = -33;
  } else {
  }
  ret_val = (char )(- ((int )((unsigned char )ret_val)));
  ret_val = (char )((unsigned int )((unsigned char )ret_val) * 3U);
  if ((int )((signed char )ret_val) == 99) {
    ret_val = 100;
  } else {
  }
  return ((u8 )ret_val);
}
}
static long _rtl92de_translate_todbm(struct ieee80211_hw *hw , u8 signal_strength_index )
{
  long signal_power ;
  {
  signal_power = (long )(((int )signal_strength_index + 1) >> 1);
  signal_power = signal_power + -95L;
  return (signal_power);
}
}
static long _rtl92de_signal_scale_mapping(struct ieee80211_hw *hw , long currsig )
{
  long retsig ;
  {
  if ((unsigned long )currsig - 61UL <= 39UL) {
    retsig = (currsig + -60L) / 4L + 90L;
  } else
  if ((unsigned long )currsig - 41UL <= 19UL) {
    retsig = (currsig + -40L) / 2L + 78L;
  } else
  if ((unsigned long )currsig - 31UL <= 9UL) {
    retsig = currsig + 36L;
  } else
  if ((unsigned long )currsig - 21UL <= 9UL) {
    retsig = currsig + 34L;
  } else
  if ((unsigned long )currsig - 5UL <= 15UL) {
    retsig = ((currsig + -5L) * 2L) / 3L + 42L;
  } else
  if (currsig == 4L) {
    retsig = 36L;
  } else
  if (currsig == 3L) {
    retsig = 27L;
  } else
  if (currsig == 2L) {
    retsig = 18L;
  } else
  if (currsig == 1L) {
    retsig = 9L;
  } else {
    retsig = currsig;
  }
  return (retsig);
}
}
static void _rtl92de_query_rxphystatus(struct ieee80211_hw *hw , struct rtl_stats *pstats ,
                                       struct rx_desc_92d *pdesc , struct rx_fwinfo_92d *p_drvinfo ,
                                       bool packet_match_bssid , bool packet_toself ,
                                       bool packet_beacon )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_ps_ctl *ppsc ;
  struct phy_sts_cck_8192d *cck_buf ;
  s8 rx_pwr_all ;
  s8 rx_pwr[4U] ;
  u8 rf_rx_num ;
  u8 evm ;
  u8 pwdb_all ;
  u8 i ;
  u8 max_spatial_stream ;
  u32 rssi ;
  u32 total_rssi ;
  bool is_cck_rate ;
  u8 report ;
  u8 cck_highpwr ;
  u32 tmp ;
  u8 cck_agc_rpt ;
  u8 cck_agc_rpt___0 ;
  u8 sq ;
  u8 tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  ppsc = & rtlpriv->psc;
  rf_rx_num = 0U;
  total_rssi = 0U;
  is_cck_rate = (unsigned int )*((unsigned char *)pdesc + 12UL) <= 3U;
  pstats->packet_matchbssid = packet_match_bssid;
  pstats->packet_toself = packet_toself;
  pstats->packet_beacon = packet_beacon;
  pstats->is_cck = is_cck_rate;
  pstats->rx_mimo_sig_qual[0] = -1;
  pstats->rx_mimo_sig_qual[1] = -1;
  if ((int )is_cck_rate) {
    cck_buf = (struct phy_sts_cck_8192d *)p_drvinfo;
    if ((unsigned int )ppsc->rfpwr_state == 0U) {
      {
      tmp = rtl_get_bbreg(hw, 2084U, 512U);
      cck_highpwr = (unsigned char )tmp;
      }
    } else {
      cck_highpwr = 0U;
    }
    if ((unsigned int )cck_highpwr == 0U) {
      cck_agc_rpt = cck_buf->cck_agc_rpt;
      report = (unsigned int )cck_buf->cck_agc_rpt & 192U;
      report = (u8 )((int )report >> 6);
      {
      if ((int )report == 3) {
        goto case_3;
      } else {
      }
      if ((int )report == 2) {
        goto case_2;
      } else {
      }
      if ((int )report == 1) {
        goto case_1;
      } else {
      }
      if ((int )report == 0) {
        goto case_0;
      } else {
      }
      goto switch_break;
      case_3:
      rx_pwr_all = (s8 )(210U - ((unsigned int )cck_agc_rpt & 62U));
      goto ldv_50809;
      case_2:
      rx_pwr_all = (s8 )(230U - ((unsigned int )cck_agc_rpt & 62U));
      goto ldv_50809;
      case_1:
      rx_pwr_all = (s8 )(244U - ((unsigned int )cck_agc_rpt & 62U));
      goto ldv_50809;
      case_0:
      rx_pwr_all = (s8 )(16U - ((unsigned int )cck_agc_rpt & 62U));
      goto ldv_50809;
      switch_break: ;
      }
      ldv_50809: ;
    } else {
      cck_agc_rpt___0 = cck_buf->cck_agc_rpt;
      report = (unsigned int )p_drvinfo->cfosho[0] & 96U;
      report = (u8 )((int )report >> 5);
      {
      if ((int )report == 3) {
        goto case_3___0;
      } else {
      }
      if ((int )report == 2) {
        goto case_2___0;
      } else {
      }
      if ((int )report == 1) {
        goto case_1___0;
      } else {
      }
      if ((int )report == 0) {
        goto case_0___0;
      } else {
      }
      goto switch_break___0;
      case_3___0:
      rx_pwr_all = (s8 )(210U - (((unsigned int )cck_agc_rpt___0 & 31U) << 1U));
      goto ldv_50815;
      case_2___0:
      rx_pwr_all = (s8 )(230U - (((unsigned int )cck_agc_rpt___0 & 31U) << 1U));
      goto ldv_50815;
      case_1___0:
      rx_pwr_all = (s8 )(244U - (((unsigned int )cck_agc_rpt___0 & 31U) << 1U));
      goto ldv_50815;
      case_0___0:
      rx_pwr_all = (s8 )(16U - (((unsigned int )cck_agc_rpt___0 & 31U) << 1U));
      goto ldv_50815;
      switch_break___0: ;
      }
      ldv_50815: ;
    }
    {
    pwdb_all = _rtl92d_query_rxpwrpercentage((int )rx_pwr_all);
    pwdb_all = (unsigned int )pwdb_all + 6U;
    }
    if ((unsigned int )pwdb_all > 100U) {
      pwdb_all = 100U;
    } else {
    }
    if ((unsigned int )pwdb_all - 35U <= 7U) {
      pwdb_all = (unsigned int )pwdb_all + 254U;
    } else
    if ((unsigned int )pwdb_all - 27U <= 7U) {
      pwdb_all = (unsigned int )pwdb_all + 250U;
    } else
    if ((unsigned int )pwdb_all - 15U <= 11U) {
      pwdb_all = (unsigned int )pwdb_all + 248U;
    } else
    if ((unsigned int )pwdb_all - 5U <= 9U) {
      pwdb_all = (unsigned int )pwdb_all + 252U;
    } else {
    }
    pstats->rx_pwdb_all = (u32 )pwdb_all;
    pstats->recvsignalpower = (s32 )rx_pwr_all;
    if ((int )packet_match_bssid) {
      if (pstats->rx_pwdb_all > 40U) {
        sq = 100U;
      } else {
        sq = cck_buf->sq_rpt;
        if ((unsigned int )sq > 64U) {
          sq = 0U;
        } else
        if ((unsigned int )sq <= 19U) {
          sq = 100U;
        } else {
          sq = (u8 )(((int )sq * -100 + 6400) / 44);
        }
      }
      pstats->signalquality = sq;
      pstats->rx_mimo_sig_qual[0] = (s8 )sq;
      pstats->rx_mimo_sig_qual[1] = -1;
    } else {
    }
  } else {
    rtlpriv->dm.rfpath_rxenable[0] = 1;
    rtlpriv->dm.rfpath_rxenable[1] = 1;
    i = 0U;
    goto ldv_50821;
    ldv_50820: ;
    if ((int )rtlpriv->dm.rfpath_rxenable[(int )i]) {
      rf_rx_num = (u8 )((int )rf_rx_num + 1);
    } else {
    }
    {
    rx_pwr[(int )i] = (s8 )((unsigned int )((unsigned char )(((int )p_drvinfo->gain_trsw[(int )i] & 63) + -55)) * 2U);
    tmp___0 = _rtl92d_query_rxpwrpercentage((int )rx_pwr[(int )i]);
    rssi = (u32 )tmp___0;
    total_rssi = total_rssi + rssi;
    rtlpriv->stats.rx_snr_db[(int )i] = (long )((int )((signed char )p_drvinfo->rxsnr[(int )i]) / 2);
    }
    if ((int )packet_match_bssid) {
      pstats->rx_mimo_signalstrength[(int )i] = (unsigned char )rssi;
    } else {
    }
    i = (u8 )((int )i + 1);
    ldv_50821: ;
    if ((unsigned int )i <= 1U) {
      goto ldv_50820;
    } else {
    }
    {
    rx_pwr_all = (s8 )((unsigned int )((int )p_drvinfo->pwdb_all >> 1) + 150U);
    pwdb_all = _rtl92d_query_rxpwrpercentage((int )rx_pwr_all);
    pstats->rx_pwdb_all = (u32 )pwdb_all;
    pstats->rxpower = rx_pwr_all;
    pstats->recvsignalpower = (s32 )rx_pwr_all;
    }
    if (((unsigned int )*((unsigned char *)pdesc + 12UL) != 0U && (int )pdesc->rxmcs > 19) && (int )pdesc->rxmcs <= 27) {
      max_spatial_stream = 2U;
    } else {
      max_spatial_stream = 1U;
    }
    i = 0U;
    goto ldv_50824;
    ldv_50823:
    {
    evm = _rtl92d_evm_db_to_percentage((int )p_drvinfo->rxevm[(int )i]);
    }
    if ((int )packet_match_bssid) {
      if ((unsigned int )i == 0U) {
        pstats->signalquality = evm;
      } else {
      }
      pstats->rx_mimo_sig_qual[(int )i] = (s8 )evm;
    } else {
    }
    i = (u8 )((int )i + 1);
    ldv_50824: ;
    if ((int )i < (int )max_spatial_stream) {
      goto ldv_50823;
    } else {
    }
  }
  if ((int )is_cck_rate) {
    {
    tmp___1 = _rtl92de_signal_scale_mapping(hw, (long )pwdb_all);
    pstats->signalstrength = (unsigned char )tmp___1;
    }
  } else
  if ((unsigned int )rf_rx_num != 0U) {
    {
    total_rssi = total_rssi / (u32 )rf_rx_num;
    tmp___2 = _rtl92de_signal_scale_mapping(hw, (long )total_rssi);
    pstats->signalstrength = (unsigned char )tmp___2;
    }
  } else {
  }
  return;
}
}
static void rtl92d_loop_over_paths(struct ieee80211_hw *hw , struct rtl_stats *pstats )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  u8 rfpath ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlphy = & rtlpriv->phy;
  rfpath = 0U;
  goto ldv_50834;
  ldv_50833: ;
  if ((unsigned int )rtlpriv->stats.rx_rssi_percentage[(int )rfpath] == 0U) {
    rtlpriv->stats.rx_rssi_percentage[(int )rfpath] = pstats->rx_mimo_signalstrength[(int )rfpath];
  } else {
  }
  if ((int )pstats->rx_mimo_signalstrength[(int )rfpath] > (int )rtlpriv->stats.rx_rssi_percentage[(int )rfpath]) {
    rtlpriv->stats.rx_rssi_percentage[(int )rfpath] = (u8 )(((int )rtlpriv->stats.rx_rssi_percentage[(int )rfpath] * 19 + (int )pstats->rx_mimo_signalstrength[(int )rfpath]) / 20);
    rtlpriv->stats.rx_rssi_percentage[(int )rfpath] = (unsigned int )rtlpriv->stats.rx_rssi_percentage[(int )rfpath] + 1U;
  } else {
    rtlpriv->stats.rx_rssi_percentage[(int )rfpath] = (u8 )(((int )rtlpriv->stats.rx_rssi_percentage[(int )rfpath] * 19 + (int )pstats->rx_mimo_signalstrength[(int )rfpath]) / 20);
  }
  rfpath = (u8 )((int )rfpath + 1);
  ldv_50834: ;
  if ((int )rfpath < (int )rtlphy->num_total_rfpath) {
    goto ldv_50833;
  } else {
  }
  return;
}
}
static void _rtl92de_process_ui_rssi(struct ieee80211_hw *hw , struct rtl_stats *pstats )
{
  struct rtl_priv *rtlpriv ;
  u32 last_rssi ;
  u32 tmpval ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  if ((int )pstats->packet_toself || (int )pstats->packet_beacon) {
    rtlpriv->stats.rssi_calculate_cnt = rtlpriv->stats.rssi_calculate_cnt + 1U;
    tmp = rtlpriv->stats.ui_rssi.total_num;
    rtlpriv->stats.ui_rssi.total_num = rtlpriv->stats.ui_rssi.total_num + 1U;
    if (tmp > 99U) {
      rtlpriv->stats.ui_rssi.total_num = 100U;
      last_rssi = rtlpriv->stats.ui_rssi.elements[rtlpriv->stats.ui_rssi.index];
      rtlpriv->stats.ui_rssi.total_val = rtlpriv->stats.ui_rssi.total_val - last_rssi;
    } else {
    }
    rtlpriv->stats.ui_rssi.total_val = rtlpriv->stats.ui_rssi.total_val + (u32 )pstats->signalstrength;
    tmp___0 = rtlpriv->stats.ui_rssi.index;
    rtlpriv->stats.ui_rssi.index = rtlpriv->stats.ui_rssi.index + 1U;
    rtlpriv->stats.ui_rssi.elements[tmp___0] = (u32 )pstats->signalstrength;
    if (rtlpriv->stats.ui_rssi.index > 99U) {
      rtlpriv->stats.ui_rssi.index = 0U;
    } else {
    }
    {
    tmpval = rtlpriv->stats.ui_rssi.total_val / rtlpriv->stats.ui_rssi.total_num;
    rtlpriv->stats.signal_strength = _rtl92de_translate_todbm(hw, (int )((unsigned char )tmpval));
    pstats->rssi = (s8 )rtlpriv->stats.signal_strength;
    }
  } else {
  }
  if (! pstats->is_cck && (int )pstats->packet_toself) {
    {
    rtl92d_loop_over_paths(hw, pstats);
    }
  } else {
  }
  return;
}
}
static void _rtl92de_update_rxsignalstatistics(struct ieee80211_hw *hw , struct rtl_stats *pstats )
{
  struct rtl_priv *rtlpriv ;
  int weighting ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  weighting = 0;
  if (rtlpriv->stats.recv_signal_power == 0L) {
    rtlpriv->stats.recv_signal_power = (long )pstats->recvsignalpower;
  } else {
  }
  if ((long )pstats->recvsignalpower > rtlpriv->stats.recv_signal_power) {
    weighting = 5;
  } else
  if ((long )pstats->recvsignalpower < rtlpriv->stats.recv_signal_power) {
    weighting = -5;
  } else {
  }
  rtlpriv->stats.recv_signal_power = ((rtlpriv->stats.recv_signal_power * 5L + (long )pstats->recvsignalpower) + (long )weighting) / 6L;
  return;
}
}
static void _rtl92de_process_pwdb(struct ieee80211_hw *hw , struct rtl_stats *pstats )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_mac *mac ;
  long undec_sm_pwdb ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  if ((unsigned int )mac->opmode == 1U || (unsigned int )mac->opmode == 3U) {
    return;
  } else {
    undec_sm_pwdb = rtlpriv->dm.undec_sm_pwdb;
  }
  if ((int )pstats->packet_toself || (int )pstats->packet_beacon) {
    if (undec_sm_pwdb < 0L) {
      undec_sm_pwdb = (long )pstats->rx_pwdb_all;
    } else {
    }
    if (pstats->rx_pwdb_all > (u32 )undec_sm_pwdb) {
      undec_sm_pwdb = (undec_sm_pwdb * 19L + (long )pstats->rx_pwdb_all) / 20L;
      undec_sm_pwdb = undec_sm_pwdb + 1L;
    } else {
      undec_sm_pwdb = (undec_sm_pwdb * 19L + (long )pstats->rx_pwdb_all) / 20L;
    }
    {
    rtlpriv->dm.undec_sm_pwdb = undec_sm_pwdb;
    _rtl92de_update_rxsignalstatistics(hw, pstats);
    }
  } else {
  }
  return;
}
}
static void rtl92d_loop_over_streams(struct ieee80211_hw *hw , struct rtl_stats *pstats )
{
  struct rtl_priv *rtlpriv ;
  int stream ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  stream = 0;
  goto ldv_50863;
  ldv_50862: ;
  if ((int )pstats->rx_mimo_sig_qual[stream] != -1) {
    if ((unsigned int )rtlpriv->stats.rx_evm_percentage[stream] == 0U) {
      rtlpriv->stats.rx_evm_percentage[stream] = (u8 )pstats->rx_mimo_sig_qual[stream];
    } else {
    }
    rtlpriv->stats.rx_evm_percentage[stream] = (u8 )(((int )rtlpriv->stats.rx_evm_percentage[stream] * 19 + (int )pstats->rx_mimo_sig_qual[stream]) / 20);
  } else {
  }
  stream = stream + 1;
  ldv_50863: ;
  if (stream <= 1) {
    goto ldv_50862;
  } else {
  }
  return;
}
}
static void _rtl92de_process_ui_link_quality(struct ieee80211_hw *hw , struct rtl_stats *pstats )
{
  struct rtl_priv *rtlpriv ;
  u32 last_evm ;
  u32 tmpval ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  if ((unsigned int )pstats->signalquality == 0U) {
    return;
  } else {
  }
  if ((int )pstats->packet_toself || (int )pstats->packet_beacon) {
    tmp = rtlpriv->stats.ui_link_quality.total_num;
    rtlpriv->stats.ui_link_quality.total_num = rtlpriv->stats.ui_link_quality.total_num + 1U;
    if (tmp > 19U) {
      rtlpriv->stats.ui_link_quality.total_num = 20U;
      last_evm = rtlpriv->stats.ui_link_quality.elements[rtlpriv->stats.ui_link_quality.index];
      rtlpriv->stats.ui_link_quality.total_val = rtlpriv->stats.ui_link_quality.total_val - last_evm;
    } else {
    }
    rtlpriv->stats.ui_link_quality.total_val = rtlpriv->stats.ui_link_quality.total_val + (u32 )pstats->signalquality;
    tmp___0 = rtlpriv->stats.ui_link_quality.index;
    rtlpriv->stats.ui_link_quality.index = rtlpriv->stats.ui_link_quality.index + 1U;
    rtlpriv->stats.ui_link_quality.elements[tmp___0] = (u32 )pstats->signalquality;
    if (rtlpriv->stats.ui_link_quality.index > 19U) {
      rtlpriv->stats.ui_link_quality.index = 0U;
    } else {
    }
    {
    tmpval = rtlpriv->stats.ui_link_quality.total_val / rtlpriv->stats.ui_link_quality.total_num;
    rtlpriv->stats.signal_quality = (long )tmpval;
    rtlpriv->stats.last_sigstrength_inpercent = (long )tmpval;
    rtl92d_loop_over_streams(hw, pstats);
    }
  } else {
  }
  return;
}
}
static void _rtl92de_process_phyinfo(struct ieee80211_hw *hw , u8 *buffer , struct rtl_stats *pcurrent_stats )
{
  {
  if (! pcurrent_stats->packet_matchbssid && ! pcurrent_stats->packet_beacon) {
    return;
  } else {
  }
  {
  _rtl92de_process_ui_rssi(hw, pcurrent_stats);
  _rtl92de_process_pwdb(hw, pcurrent_stats);
  _rtl92de_process_ui_link_quality(hw, pcurrent_stats);
  }
  return;
}
}
static void _rtl92de_translate_rx_signal_stuff(struct ieee80211_hw *hw , struct sk_buff *skb ,
                                               struct rtl_stats *pstats , struct rx_desc_92d *pdesc ,
                                               struct rx_fwinfo_92d *p_drvinfo )
{
  struct rtl_mac *mac ;
  struct rtl_efuse *rtlefuse ;
  struct ieee80211_hdr *hdr ;
  u8 *tmp_buf ;
  u8 *praddr ;
  u16 type ;
  u16 cfc ;
  __le16 fc ;
  bool packet_matchbssid ;
  bool packet_toself ;
  bool packet_beacon ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  rtlefuse = & ((struct rtl_priv *)hw->priv)->efuse;
  packet_beacon = 0;
  tmp_buf = skb->data + ((unsigned long )pstats->rx_drvinfo_size + (unsigned long )pstats->rx_bufshift);
  hdr = (struct ieee80211_hdr *)tmp_buf;
  fc = hdr->frame_control;
  cfc = fc;
  type = (unsigned int )fc & 12U;
  praddr = (u8 *)(& hdr->addr1);
  if ((unsigned int )type != 4U) {
    {
    tmp = ether_addr_equal((u8 const *)(& mac->bssid), (u8 const *)(((int )cfc & 256) != 0 ? & hdr->addr1 : (((int )cfc & 512) != 0 ? & hdr->addr2 : & hdr->addr3)));
    }
    if ((int )tmp) {
      if ((unsigned int )*((unsigned char *)pstats + 58UL) == 0U) {
        tmp___0 = 1;
      } else {
        tmp___0 = 0;
      }
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  packet_matchbssid = (bool )tmp___0;
  if ((int )packet_matchbssid) {
    {
    tmp___1 = ether_addr_equal((u8 const *)praddr, (u8 const *)(& rtlefuse->dev_addr));
    }
    if ((int )tmp___1) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  {
  packet_toself = (bool )tmp___2;
  tmp___3 = ieee80211_is_beacon((int )fc);
  }
  if (tmp___3 != 0) {
    packet_beacon = 1;
  } else {
  }
  {
  _rtl92de_query_rxphystatus(hw, pstats, pdesc, p_drvinfo, (int )packet_matchbssid,
                             (int )packet_toself, (int )packet_beacon);
  _rtl92de_process_phyinfo(hw, tmp_buf, pstats);
  }
  return;
}
}
bool rtl92de_rx_query_desc(struct ieee80211_hw *hw , struct rtl_stats *stats , struct ieee80211_rx_status *rx_status ,
                           u8 *p_desc , struct sk_buff *skb )
{
  struct rx_fwinfo_92d *p_drvinfo ;
  struct rx_desc_92d *pdesc ;
  u32 phystatus ;
  int tmp ;
  {
  pdesc = (struct rx_desc_92d *)p_desc;
  phystatus = (*((__le32 *)pdesc) >> 26) & 1U;
  stats->length = (unsigned int )((unsigned short )*((__le32 *)pdesc)) & 16383U;
  stats->rx_drvinfo_size = ((unsigned int )((u8 )(*((__le32 *)pdesc) >> 16)) & 15U) * 8U;
  stats->rx_bufshift = (unsigned int )((unsigned char )(*((__le32 *)pdesc) >> 24)) & 3U;
  stats->icv = (unsigned int )((unsigned char )(*((__le32 *)pdesc) >> 15)) & 1U;
  stats->crc = (unsigned int )((unsigned char )(*((__le32 *)pdesc) >> 14)) & 1U;
  stats->hwerror = (int )((unsigned char )stats->crc) | (int )((unsigned char )stats->icv);
  stats->decrypted = (*((__le32 *)pdesc) & 134217728U) == 0U;
  stats->rate = (unsigned int )((unsigned char )*((__le32 *)pdesc + 12U)) & 63U;
  stats->shortpreamble = (unsigned int )((unsigned char )(*((__le32 *)pdesc + 12U) >> 8)) & 1U;
  stats->isampdu = (*((__le32 *)pdesc + 4U) & 16384U) != 0U;
  stats->isfirst_ampdu = (*((__le32 *)pdesc + 4U) & 49152U) == 49152U;
  stats->timestamp_low = *((__le32 *)pdesc + 20U);
  stats->rx_is40Mhzpacket = (*((__le32 *)pdesc + 12U) & 512U) != 0U;
  rx_status->freq = (hw->conf.chandef.chan)->center_freq;
  rx_status->band = (u8 )(hw->conf.chandef.chan)->band;
  if ((*((__le32 *)pdesc) & 16384U) != 0U) {
    rx_status->flag = rx_status->flag | 32U;
  } else {
  }
  if ((*((__le32 *)pdesc) & 134217728U) == 0U) {
    rx_status->flag = rx_status->flag | 2U;
  } else {
  }
  if ((*((__le32 *)pdesc + 12U) & 512U) != 0U) {
    rx_status->flag = rx_status->flag | 1024U;
  } else {
  }
  if ((*((__le32 *)pdesc + 12U) & 64U) != 0U) {
    rx_status->flag = rx_status->flag | 512U;
  } else {
  }
  rx_status->flag = rx_status->flag | 128U;
  if ((unsigned int )*((unsigned char *)stats + 58UL) != 0U) {
    rx_status->flag = rx_status->flag | 2U;
  } else {
  }
  {
  tmp = rtlwifi_rate_mapping(hw, (*((__le32 *)pdesc + 12U) & 64U) != 0U, (int )((unsigned char )*((__le32 *)pdesc + 12U)) & 63,
                             (*((__le32 *)pdesc + 4U) & 16384U) != 0U);
  rx_status->rate_idx = (u8 )tmp;
  rx_status->mactime = (u64 )*((__le32 *)pdesc + 20U);
  }
  if (phystatus != 0U) {
    {
    p_drvinfo = (struct rx_fwinfo_92d *)skb->data + (unsigned long )stats->rx_bufshift;
    _rtl92de_translate_rx_signal_stuff(hw, skb, stats, pdesc, p_drvinfo);
    }
  } else {
  }
  rx_status->signal = (s8 )((unsigned int )((unsigned char )stats->recvsignalpower) + 10U);
  return (1);
}
}
static void _rtl92de_insert_emcontent(struct rtl_tcb_desc *ptcb_desc , u8 *virtualaddress )
{
  {
  {
  memset((void *)virtualaddress, 0, 8UL);
  *((__le32 *)virtualaddress) = (*((__le32 *)virtualaddress) & 4294967288U) | ((__le32 )ptcb_desc->empkt_num & 7U);
  *((__le32 *)virtualaddress) = (*((__le32 *)virtualaddress) & 4294901775U) | ((ptcb_desc->empkt_len[0] << 4) & 65535U);
  *((__le32 *)virtualaddress) = (*((__le32 *)virtualaddress) & 4026597375U) | ((ptcb_desc->empkt_len[1] & 4095U) << 16);
  *((__le32 *)virtualaddress) = (*((__le32 *)virtualaddress) & 268435455U) | (ptcb_desc->empkt_len[2] << 28);
  *((__le32 *)virtualaddress + 4U) = (*((__le32 *)virtualaddress + 4U) & 4294967040U) | ((ptcb_desc->empkt_len[2] >> 4) & 255U);
  *((__le32 *)virtualaddress + 4U) = (*((__le32 *)virtualaddress + 4U) & 4293918975U) | ((ptcb_desc->empkt_len[3] & 4095U) << 8);
  *((__le32 *)virtualaddress + 4U) = (*((__le32 *)virtualaddress + 4U) & 1048575U) | (ptcb_desc->empkt_len[4] << 20);
  }
  return;
}
}
void rtl92de_tx_fill_desc(struct ieee80211_hw *hw , struct ieee80211_hdr *hdr , u8 *pdesc_tx ,
                          struct ieee80211_tx_info *info , struct ieee80211_sta *sta ,
                          struct sk_buff *skb , u8 hw_queue , struct rtl_tcb_desc *ptcb_desc )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_mac *mac ;
  struct rtl_pci *rtlpci ;
  struct rtl_hal *rtlhal ;
  struct rtl_ps_ctl *ppsc ;
  u8 *pdesc ;
  u16 seq_number ;
  __le16 fc ;
  unsigned int buf_len ;
  unsigned int skb_len ;
  u8 fw_qsel ;
  u8 tmp ;
  bool firstseg ;
  bool lastseg ;
  dma_addr_t mapping ;
  u8 bw_40 ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  size_t __min1 ;
  size_t __min2 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  u8 ampdu_density ;
  struct ieee80211_key_conf *keyconf ;
  int tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  long tmp___20 ;
  long tmp___21 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  rtlhal = & rtlpriv->rtlhal;
  ppsc = & ((struct rtl_priv *)hw->priv)->psc;
  pdesc = pdesc_tx;
  fc = hdr->frame_control;
  buf_len = 0U;
  skb_len = skb->len;
  tmp = _rtl92de_map_hwqueue_to_fwqueue(skb, (int )hw_queue);
  fw_qsel = tmp;
  firstseg = ((int )hdr->seq_ctrl & 15) == 0;
  lastseg = ((int )hdr->frame_control & 1024) == 0;
  bw_40 = 0U;
  }
  if ((unsigned int )mac->opmode == 2U) {
    bw_40 = mac->bw_40;
  } else
  if ((unsigned int )mac->opmode == 3U || (unsigned int )mac->opmode == 1U) {
    if ((unsigned long )sta != (unsigned long )((struct ieee80211_sta *)0)) {
      bw_40 = (unsigned int )sta->bandwidth != 0U;
    } else {
    }
  } else {
  }
  {
  seq_number = (u16 )((int )hdr->seq_ctrl >> 4);
  rtl_get_tcb_desc(hw, info, sta, skb, ptcb_desc);
  }
  if ((int )rtlhal->earlymode_enable) {
    {
    skb_push(skb, 8U);
    memset((void *)skb->data, 0, 8UL);
    }
  } else {
  }
  {
  buf_len = skb->len;
  mapping = pci_map_single(rtlpci->pdev, (void *)skb->data, (size_t )skb->len, 1);
  tmp___4 = pci_dma_mapping_error(rtlpci->pdev, mapping);
  }
  if (tmp___4 != 0) {
    {
    tmp___2 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 16ULL) != 0ULL,
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp___3 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
      }
      if (tmp___3 != 0L) {
        {
        tmp___0 = preempt_count();
        tmp___1 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> DMA mapping error", "rtl92de_tx_fill_desc",
               (unsigned long )tmp___1 & 2096896UL, ((unsigned long )tmp___0 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  {
  __min1 = 64UL;
  __min2 = 40UL;
  memset((void *)pdesc, 0, __min1 < __min2 ? __min1 : __min2);
  tmp___5 = ieee80211_is_nullfunc((int )fc);
  }
  if (tmp___5 != 0) {
    firstseg = 1;
    lastseg = 1;
  } else {
    {
    tmp___6 = ieee80211_is_ctl((int )fc);
    }
    if (tmp___6 != 0) {
      firstseg = 1;
      lastseg = 1;
    } else {
    }
  }
  if ((int )firstseg) {
    if ((int )rtlhal->earlymode_enable) {
      *((__le32 *)pdesc + 4U) = (*((__le32 *)pdesc + 4U) & 67108863U) | 67108864U;
      *((__le32 *)pdesc) = (*((__le32 *)pdesc) & 4278255615U) | 2621440U;
      if ((unsigned int )ptcb_desc->empkt_num != 0U) {
        {
        tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 16ULL) != 0ULL,
                                   0L);
        }
        if (tmp___9 != 0L) {
          {
          tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
          }
          if (tmp___10 != 0L) {
            {
            tmp___7 = preempt_count();
            tmp___8 = preempt_count();
            printk("\017rtl8192de:%s():<%lx-%x> Insert 8 byte.pTcb->EMPktNum:%d\n",
                   "rtl92de_tx_fill_desc", (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL,
                   (int )ptcb_desc->empkt_num);
            }
          } else {
          }
        } else {
        }
        {
        _rtl92de_insert_emcontent(ptcb_desc, skb->data);
        }
      } else {
      }
    } else {
      *((__le32 *)pdesc) = (*((__le32 *)pdesc) & 4278255615U) | 2097152U;
    }
    if ((unsigned int )rtlhal->current_bandtype == 1U) {
      if ((unsigned int )ptcb_desc->hw_rate <= 3U) {
        ptcb_desc->hw_rate = 4U;
      } else {
      }
    } else {
    }
    *((__le32 *)pdesc + 20U) = (*((__le32 *)pdesc + 20U) & 4294967232U) | ((__le32 )ptcb_desc->hw_rate & 63U);
    if ((unsigned int )*((unsigned char *)ptcb_desc + 3UL) != 0U) {
      *((__le32 *)pdesc + 20U) = *((__le32 *)pdesc + 20U) | 64U;
    } else {
    }
    if ((unsigned int )rtlhal->macphymode == 1U && (unsigned int )ptcb_desc->hw_rate == 19U) {
      *((__le32 *)pdesc + 20U) = *((__le32 *)pdesc + 20U) | 64U;
    } else {
    }
    if ((info->flags & 64U) != 0U) {
      *((__le32 *)pdesc + 4U) = *((__le32 *)pdesc + 4U) | 32U;
      *((__le32 *)pdesc + 24U) = (*((__le32 *)pdesc + 24U) & 4294903807U) | 40960U;
    } else {
    }
    *((__le32 *)pdesc + 12U) = (*((__le32 *)pdesc + 12U) & 4026597375U) | (((unsigned int )seq_number & 4095U) << 16);
    *((__le32 *)pdesc + 16U) = (*((__le32 *)pdesc + 16U) & 4294963199U) | ((unsigned int )*((unsigned char *)ptcb_desc + 0UL) == 16U ? 4096U : 0U);
    *((__le32 *)pdesc + 16U) = (*((__le32 *)pdesc + 16U) & 4294959103U) | ((unsigned int )*((unsigned char *)ptcb_desc + 0UL) != 0U ? 8192U : 0U);
    *((__le32 *)pdesc + 16U) = (*((__le32 *)pdesc + 16U) & 4294965247U) | ((unsigned int )*((unsigned char *)ptcb_desc + 0UL) != 0U ? 2048U : 0U);
    *((__le32 *)pdesc + 16U) = (*((__le32 *)pdesc + 16U) & 1073741823U) | ((unsigned int )*((unsigned char *)ptcb_desc + 0UL) != 0U ? 1073741824U : 0U);
    if ((unsigned int )rtlhal->current_bandtype == 1U) {
      if ((unsigned int )ptcb_desc->rts_rate <= 3U) {
        ptcb_desc->rts_rate = 4U;
      } else {
      }
    } else {
    }
    *((__le32 *)pdesc + 16U) = (*((__le32 *)pdesc + 16U) & 4294967264U) | ((__le32 )ptcb_desc->rts_rate & 31U);
    *((__le32 *)pdesc + 16U) = *((__le32 *)pdesc + 16U) & 4160749567U;
    *((__le32 *)pdesc + 16U) = (*((__le32 *)pdesc + 16U) & 3489660927U) | ((unsigned int )ptcb_desc->rts_sc << 28);
    *((__le32 *)pdesc + 16U) = (*((__le32 *)pdesc + 16U) & 4227858431U) | ((unsigned int )ptcb_desc->rts_rate <= 11U ? ((unsigned int )*((unsigned char *)ptcb_desc + 0UL) != 0U ? 67108864U : 0U) : ((unsigned int )*((unsigned char *)ptcb_desc + 0UL) != 0U ? 67108864U : 0U));
    if ((unsigned int )bw_40 != 0U) {
      if ((unsigned int )*((unsigned char *)ptcb_desc + 0UL) != 0U) {
        *((__le32 *)pdesc + 16U) = *((__le32 *)pdesc + 16U) | 33554432U;
        *((__le32 *)pdesc + 16U) = *((__le32 *)pdesc + 16U) | 3145728U;
      } else {
        *((__le32 *)pdesc + 16U) = *((__le32 *)pdesc + 16U) & 4261412863U;
        *((__le32 *)pdesc + 16U) = (*((__le32 *)pdesc + 16U) & 4291821567U) | (((unsigned int )mac->cur_40_prime_sc & 3U) << 20);
      }
    } else {
      *((__le32 *)pdesc + 16U) = *((__le32 *)pdesc + 16U) & 4261412863U;
      *((__le32 *)pdesc + 16U) = *((__le32 *)pdesc + 16U) & 4291821567U;
    }
    *((__le32 *)pdesc) = *((__le32 *)pdesc) & 4026531839U;
    *((__le32 *)pdesc) = (*((__le32 *)pdesc) & 4294901760U) | (__le32 )((unsigned short )skb_len);
    if ((unsigned long )sta != (unsigned long )((struct ieee80211_sta *)0)) {
      ampdu_density = sta->ht_cap.ampdu_density;
      *((__le32 *)pdesc + 8U) = (*((__le32 *)pdesc + 8U) & 4287627263U) | (((unsigned int )ampdu_density & 7U) << 20);
    } else {
    }
    if ((unsigned long )info->__annonCompField79.control.hw_key != (unsigned long )((struct ieee80211_key_conf *)0)) {
      keyconf = info->__annonCompField79.control.hw_key;
      {
      if (keyconf->cipher == 1027073U) {
        goto case_1027073;
      } else {
      }
      if (keyconf->cipher == 1027077U) {
        goto case_1027077;
      } else {
      }
      if (keyconf->cipher == 1027074U) {
        goto case_1027074;
      } else {
      }
      if (keyconf->cipher == 1027076U) {
        goto case_1027076;
      } else {
      }
      goto switch_default;
      case_1027073: ;
      case_1027077: ;
      case_1027074:
      *((__le32 *)pdesc + 4U) = (*((__le32 *)pdesc + 4U) & 4282384383U) | 4194304U;
      goto ldv_50943;
      case_1027076:
      *((__le32 *)pdesc + 4U) = *((__le32 *)pdesc + 4U) | 12582912U;
      goto ldv_50943;
      switch_default:
      *((__le32 *)pdesc + 4U) = *((__le32 *)pdesc + 4U) & 4282384383U;
      goto ldv_50943;
      switch_break: ;
      }
      ldv_50943: ;
    } else {
    }
    *((__le32 *)pdesc + 12U) = *((__le32 *)pdesc + 12U) & 268435455U;
    *((__le32 *)pdesc + 4U) = (*((__le32 *)pdesc + 4U) & 4294959359U) | (((unsigned int )fw_qsel & 31U) << 8);
    *((__le32 *)pdesc + 20U) = *((__le32 *)pdesc + 20U) | 7936U;
    *((__le32 *)pdesc + 20U) = *((__le32 *)pdesc + 20U) | 122880U;
    *((__le32 *)pdesc + 16U) = (*((__le32 *)pdesc + 16U) & 4294966271U) | ((unsigned int )*((unsigned char *)ptcb_desc + 3UL) != 0U ? 1024U : 0U);
    *((__le32 *)pdesc + 16U) = (*((__le32 *)pdesc + 16U) & 4294967039U) | ((unsigned int )*((unsigned char *)ptcb_desc + 3UL) != 0U ? 256U : 0U);
    if ((unsigned int )*((unsigned char *)ptcb_desc + 3UL) == 0U) {
      *((__le32 *)pdesc + 16U) = (*((__le32 *)pdesc + 16U) & 4294967264U) | 8U;
    } else {
    }
    {
    tmp___15 = ieee80211_is_data_qos((int )fc);
    }
    if (tmp___15 != 0) {
      if ((int )mac->rdg_en) {
        {
        tmp___13 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 16ULL) != 0ULL,
                                    0L);
        }
        if (tmp___13 != 0L) {
          {
          tmp___14 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
          }
          if (tmp___14 != 0L) {
            {
            tmp___11 = preempt_count();
            tmp___12 = preempt_count();
            printk("\017rtl8192de:%s():<%lx-%x> Enable RDG function\n", "rtl92de_tx_fill_desc",
                   (unsigned long )tmp___12 & 2096896UL, ((unsigned long )tmp___11 & 0xffffffffffdfffffUL) != 0UL);
            }
          } else {
          }
        } else {
        }
        *((__le32 *)pdesc + 4U) = *((__le32 *)pdesc + 4U) | 128U;
        *((__le32 *)pdesc) = *((__le32 *)pdesc) | 33554432U;
      } else {
      }
    } else {
    }
  } else {
  }
  *((__le32 *)pdesc) = (*((__le32 *)pdesc) & 4160749567U) | ((int )firstseg ? 134217728U : 0U);
  *((__le32 *)pdesc) = (*((__le32 *)pdesc) & 4227858431U) | ((int )lastseg ? 67108864U : 0U);
  *((__le32 *)pdesc + 28U) = (*((__le32 *)pdesc + 28U) & 4294901760U) | (__le32 )((unsigned short )buf_len);
  *((__le32 *)pdesc + 32U) = (__le32 )mapping;
  if ((int )rtlpriv->dm.useramask) {
    *((__le32 *)pdesc + 4U) = (*((__le32 *)pdesc + 4U) & 4293984255U) | (((unsigned int )ptcb_desc->ratr_index & 15U) << 16);
    *((__le32 *)pdesc + 4U) = (*((__le32 *)pdesc + 4U) & 4294967264U) | ((__le32 )ptcb_desc->mac_id & 31U);
  } else {
    *((__le32 *)pdesc + 4U) = (*((__le32 *)pdesc + 4U) & 4293984255U) | (((unsigned int )((int )ptcb_desc->ratr_index + 12) & 15U) << 16);
    *((__le32 *)pdesc + 4U) = (*((__le32 *)pdesc + 4U) & 4294967264U) | ((__le32 )ptcb_desc->ratr_index & 31U);
  }
  {
  tmp___16 = ieee80211_is_data_qos((int )fc);
  }
  if (tmp___16 != 0) {
    *((__le32 *)pdesc + 16U) = *((__le32 *)pdesc + 16U) | 64U;
  } else {
  }
  {
  tmp___17 = ieee80211_is_data_qos((int )fc);
  }
  if (tmp___17 == 0 && (int )ppsc->fwctrl_lps) {
    *((__le32 *)pdesc + 16U) = *((__le32 *)pdesc + 16U) | 128U;
    *((__le32 *)pdesc + 12U) = (*((__le32 *)pdesc + 12U) & 268435455U) | 2147483648U;
  } else {
  }
  {
  *((__le32 *)pdesc + 8U) = (*((__le32 *)pdesc + 8U) & 4294836223U) | ((unsigned int )(! lastseg) << 17);
  tmp___20 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 16ULL) != 0ULL,
                              0L);
  }
  if (tmp___20 != 0L) {
    {
    tmp___21 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
    }
    if (tmp___21 != 0L) {
      {
      tmp___18 = preempt_count();
      tmp___19 = preempt_count();
      printk("\017rtl8192de:%s():<%lx-%x> \n", "rtl92de_tx_fill_desc", (unsigned long )tmp___19 & 2096896UL,
             ((unsigned long )tmp___18 & 0xffffffffffdfffffUL) != 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
void rtl92de_tx_fill_cmddesc(struct ieee80211_hw *hw , u8 *pdesc , bool firstseg ,
                             bool lastseg , struct sk_buff *skb )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_pci *rtlpci ;
  struct rtl_ps_ctl *ppsc ;
  struct rtl_hal *rtlhal ;
  u8 fw_queue ;
  dma_addr_t mapping ;
  dma_addr_t tmp ;
  struct ieee80211_hdr *hdr ;
  __le16 fc ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  size_t __min1 ;
  size_t __min2 ;
  int tmp___5 ;
  struct task_struct *tmp___6 ;
  struct task_struct *tmp___7 ;
  struct _ddebug descriptor ;
  long tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  rtlpci = & ((struct rtl_pci_priv *)(& ((struct rtl_priv *)hw->priv)->priv))->dev;
  ppsc = & rtlpriv->psc;
  rtlhal = & rtlpriv->rtlhal;
  fw_queue = 16U;
  tmp = pci_map_single(rtlpci->pdev, (void *)skb->data, (size_t )skb->len, 1);
  mapping = tmp;
  hdr = (struct ieee80211_hdr *)skb->data;
  fc = hdr->frame_control;
  tmp___4 = pci_dma_mapping_error(rtlpci->pdev, mapping);
  }
  if (tmp___4 != 0) {
    {
    tmp___2 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 16ULL) != 0ULL,
                               0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp___3 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 4, 0L);
      }
      if (tmp___3 != 0L) {
        {
        tmp___0 = preempt_count();
        tmp___1 = preempt_count();
        printk("\017rtl8192de:%s():<%lx-%x> DMA mapping error", "rtl92de_tx_fill_cmddesc",
               (unsigned long )tmp___1 & 2096896UL, ((unsigned long )tmp___0 & 0xffffffffffdfffffUL) != 0UL);
        }
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  {
  __min1 = 64UL;
  __min2 = 40UL;
  memset((void *)pdesc, 0, __min1 < __min2 ? __min1 : __min2);
  }
  if ((int )firstseg) {
    *((__le32 *)pdesc) = (*((__le32 *)pdesc) & 4278255615U) | 2097152U;
  } else {
  }
  if ((unsigned int )rtlhal->current_bandtype == 1U) {
    *((__le32 *)pdesc + 20U) = (*((__le32 *)pdesc + 20U) & 4294967232U) | 4U;
  } else {
    *((__le32 *)pdesc + 20U) = *((__le32 *)pdesc + 20U) & 4294967232U;
  }
  {
  *((__le32 *)pdesc + 12U) = *((__le32 *)pdesc + 12U) & 4026597375U;
  *((__le32 *)pdesc) = *((__le32 *)pdesc) & 4026531839U;
  *((__le32 *)pdesc + 4U) = (*((__le32 *)pdesc + 4U) & 4294959359U) | (((unsigned int )fw_queue & 31U) << 8);
  *((__le32 *)pdesc) = *((__le32 *)pdesc) | 134217728U;
  *((__le32 *)pdesc) = *((__le32 *)pdesc) | 67108864U;
  *((__le32 *)pdesc + 28U) = (*((__le32 *)pdesc + 28U) & 4294901760U) | (__le32 )((unsigned short )skb->len);
  *((__le32 *)pdesc + 32U) = (__le32 )mapping;
  *((__le32 *)pdesc + 4U) = (*((__le32 *)pdesc + 4U) & 4293984255U) | 458752U;
  *((__le32 *)pdesc + 4U) = *((__le32 *)pdesc + 4U) & 4294967264U;
  *((__le32 *)pdesc) = (*((__le32 *)pdesc) & 4294901760U) | (__le32 )((unsigned short )skb->len);
  *((__le32 *)pdesc) = *((__le32 *)pdesc) | 134217728U;
  *((__le32 *)pdesc) = *((__le32 *)pdesc) | 67108864U;
  *((__le32 *)pdesc) = (*((__le32 *)pdesc) & 4278255615U) | 2097152U;
  *((__le32 *)pdesc + 16U) = *((__le32 *)pdesc + 16U) | 256U;
  tmp___5 = ieee80211_is_data_qos((int )fc);
  }
  if (tmp___5 == 0 && (int )ppsc->fwctrl_lps) {
    *((__le32 *)pdesc + 16U) = *((__le32 *)pdesc + 16U) | 128U;
    *((__le32 *)pdesc + 12U) = (*((__le32 *)pdesc + 12U) & 268435455U) | 2147483648U;
  } else {
  }
  {
  tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 8388608ULL) != 0ULL,
                             0L);
  }
  if (tmp___9 != 0L) {
    {
    tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 3, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___6 = get_current();
      tmp___7 = get_current();
      printk("\017%s: In process \"%s\" (pid %i): %s\n", (char *)"rtl8192de", (char *)(& tmp___7->comm),
             tmp___6->pid, (char *)"H2C Tx Cmd Content");
      descriptor.modname = "rtl8192de";
      descriptor.function = "rtl92de_tx_fill_cmddesc";
      descriptor.filename = "drivers/net/wireless/rtlwifi/rtl8192de/trx.c";
      descriptor.format = "";
      descriptor.lineno = 784U;
      descriptor.flags = 0U;
      tmp___8 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp___8 != 0L) {
        {
        print_hex_dump("\017", "", 0, 16, 1, (void const *)pdesc, 64UL, 1);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  *((__le32 *)pdesc) = *((__le32 *)pdesc) | 2147483648U;
  return;
}
}
void rtl92de_set_desc(u8 *pdesc , bool istx , u8 desc_name , u8 *val )
{
  {
  if ((int )istx) {
    {
    if ((int )desc_name == 0) {
      goto case_0;
    } else {
    }
    if ((int )desc_name == 2) {
      goto case_2;
    } else {
    }
    goto switch_default;
    case_0:
    __asm__ volatile ("sfence": : : "memory");
    *((__le32 *)pdesc) = *((__le32 *)pdesc) | 2147483648U;
    goto ldv_50973;
    case_2:
    *((__le32 *)pdesc + 40U) = *((u32 *)val);
    goto ldv_50973;
    switch_default:
    {
    printk("\017rtl8192de:%s(): ERR txdesc :%d not process\n", "rtl92de_set_desc",
           (int )desc_name);
    }
    goto ldv_50973;
    switch_break: ;
    }
    ldv_50973: ;
  } else {
    {
    if ((int )desc_name == 1) {
      goto case_1;
    } else {
    }
    if ((int )desc_name == 4) {
      goto case_4;
    } else {
    }
    if ((int )desc_name == 5) {
      goto case_5;
    } else {
    }
    if ((int )desc_name == 6) {
      goto case_6;
    } else {
    }
    goto switch_default___0;
    case_1:
    __asm__ volatile ("sfence": : : "memory");
    *((__le32 *)pdesc) = *((__le32 *)pdesc) | 2147483648U;
    goto ldv_50978;
    case_4:
    *((__le32 *)pdesc + 24U) = *((u32 *)val);
    goto ldv_50978;
    case_5:
    *((__le32 *)pdesc) = (*((__le32 *)pdesc) & 4294950912U) | (*((u32 *)val) & 16383U);
    goto ldv_50978;
    case_6:
    *((__le32 *)pdesc) = *((__le32 *)pdesc) | 1073741824U;
    goto ldv_50978;
    switch_default___0:
    {
    printk("\017rtl8192de:%s(): ERR rxdesc :%d not process\n", "rtl92de_set_desc",
           (int )desc_name);
    }
    goto ldv_50978;
    switch_break___0: ;
    }
    ldv_50978: ;
  }
  return;
}
}
u32 rtl92de_get_desc(u8 *p_desc , bool istx , u8 desc_name )
{
  u32 ret ;
  struct rx_desc_92c *pdesc ;
  {
  ret = 0U;
  if ((int )istx) {
    {
    if ((int )desc_name == 0) {
      goto case_0;
    } else {
    }
    if ((int )desc_name == 3) {
      goto case_3;
    } else {
    }
    goto switch_default;
    case_0:
    ret = *((__le32 *)p_desc) >> 31;
    goto ldv_50990;
    case_3:
    ret = *((__le32 *)p_desc + 32U);
    goto ldv_50990;
    switch_default:
    {
    printk("\017rtl8192de:%s(): ERR txdesc :%d not process\n", "rtl92de_get_desc",
           (int )desc_name);
    }
    goto ldv_50990;
    switch_break: ;
    }
    ldv_50990: ;
  } else {
    pdesc = (struct rx_desc_92c *)p_desc;
    {
    if ((int )desc_name == 0) {
      goto case_0___0;
    } else {
    }
    if ((int )desc_name == 5) {
      goto case_5;
    } else {
    }
    goto switch_default___0;
    case_0___0:
    ret = *((__le32 *)pdesc) >> 31;
    goto ldv_50997;
    case_5:
    ret = *((__le32 *)pdesc) & 16383U;
    goto ldv_50997;
    switch_default___0:
    {
    printk("\017rtl8192de:%s(): ERR rxdesc :%d not process\n", "rtl92de_get_desc",
           (int )desc_name);
    }
    goto ldv_50997;
    switch_break___0: ;
    }
    ldv_50997: ;
  }
  return (ret);
}
}
void rtl92de_tx_polling(struct ieee80211_hw *hw , u8 hw_queue )
{
  struct rtl_priv *rtlpriv ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  if ((unsigned int )hw_queue == 4U) {
    {
    rtl_write_word(rtlpriv, 768U, 16);
    }
  } else {
    {
    rtl_write_word(rtlpriv, 768U, (int )((u16 )(1UL << (int )hw_queue)));
    }
  }
  return;
}
}
void ldv_atomic_add(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return;
}
}
void ldv_atomic_sub(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  return;
}
}
int ldv_atomic_sub_and_test(int i , atomic_t *v )
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
void ldv_atomic_inc(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  return;
}
}
void ldv_atomic_dec(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  return;
}
}
int ldv_atomic_dec_and_test(atomic_t *v )
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
int ldv_atomic_inc_and_test(atomic_t *v )
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
int ldv_atomic_add_return(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter);
}
}
int ldv_atomic_add_negative(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter < 0);
}
}
int ldv_atomic_inc_short(short *v )
{
  {
  *v = (short )((unsigned int )((unsigned short )*v) + 1U);
  return ((int )*v);
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
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_usb_dev__probe_failed(int expr ) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr ) ;
ldv_map LDV_USB_DEV_REF_COUNTS ;
struct usb_device *ldv_usb_get_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    LDV_USB_DEV_REF_COUNTS = LDV_USB_DEV_REF_COUNTS != 0 ? LDV_USB_DEV_REF_COUNTS + 1 : 1;
  } else {
  }
  return (dev);
}
}
void ldv_usb_put_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    {
    ldv_assert_linux_usb_dev__unincremented_counter_decrement(LDV_USB_DEV_REF_COUNTS != 0);
    ldv_assert_linux_usb_dev__less_initial_decrement(LDV_USB_DEV_REF_COUNTS > 0);
    }
    if (LDV_USB_DEV_REF_COUNTS > 1) {
      LDV_USB_DEV_REF_COUNTS = LDV_USB_DEV_REF_COUNTS + -1;
    } else {
      LDV_USB_DEV_REF_COUNTS = 0;
    }
  } else {
  }
  return;
}
}
void ldv_check_return_value_probe(int retval )
{
  {
  if (retval != 0) {
    {
    ldv_assert_linux_usb_dev__probe_failed(LDV_USB_DEV_REF_COUNTS == 0);
    }
  } else {
  }
  return;
}
}
void ldv_initialize(void)
{
  {
  LDV_USB_DEV_REF_COUNTS = 0;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_dev__more_initial_at_exit(LDV_USB_DEV_REF_COUNTS == 0);
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
void *ldv_malloc(size_t size ) ;
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
extern void __VERIFIER_error(void) ;
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
void __const_udelay(unsigned long arg0) {
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
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
void kfree_skb(struct sk_buff *arg0) {
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
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
void print_hex_dump(const char *arg0, const char *arg1, int arg2, int arg3, int arg4, const void *arg5, size_t arg6, bool arg7) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_firmware_nowait(struct module *arg0, bool arg1, const char *arg2, struct device *arg3, gfp_t arg4, void *arg5, void (*arg6)(const struct firmware *, void *)) {
  return __VERIFIER_nondet_int();
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 rtl_cam_add_one_entry(struct ieee80211_hw *arg0, u8 *arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5, u8 *arg6) {
  return __VERIFIER_nondet_uchar();
}
void rtl_cam_del_entry(struct ieee80211_hw *arg0, u8 *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int rtl_cam_delete_one_entry(struct ieee80211_hw *arg0, u8 *arg1, u32 arg2) {
  return __VERIFIER_nondet_int();
}
void rtl_cam_empty_entry(struct ieee80211_hw *arg0, u8 arg1) {
  return;
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 rtl_cam_get_free_entry(struct ieee80211_hw *arg0, u8 *arg1) {
  return __VERIFIER_nondet_uchar();
}
void rtl_cam_mark_invalid(struct ieee80211_hw *arg0, u8 arg1) {
  return;
}
void rtl_cam_reset_all_entry(struct ieee80211_hw *arg0) {
  return;
}
void rtl_efuse_shadow_map_update(struct ieee80211_hw *arg0) {
  return;
}
void rtl_get_tcb_desc(struct ieee80211_hw *arg0, struct ieee80211_tx_info *arg1, struct ieee80211_sta *arg2, struct sk_buff *arg3, struct rtl_tcb_desc *arg4) {
  return;
}
void rtl_pci_disconnect(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int rtl_pci_probe(struct pci_dev *arg0, const struct pci_device_id *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int rtl_pci_resume(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int rtl_pci_suspend(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void rtl_phy_scan_operation_backup(struct ieee80211_hw *arg0, u8 arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool rtl_ps_disable_nic(struct ieee80211_hw *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rtl_ps_enable_nic(struct ieee80211_hw *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int rtlwifi_rate_mapping(struct ieee80211_hw *arg0, bool arg1, u8 arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
void rtnl_lock() {
  return;
}
void rtnl_unlock() {
  return;
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
void synchronize_irq(unsigned int arg0) {
  return;
}
void vfree(const void *arg0) {
  return;
}
void *external_alloc(void);
void *vzalloc(unsigned long arg0) {
  return (void *)external_alloc();
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
