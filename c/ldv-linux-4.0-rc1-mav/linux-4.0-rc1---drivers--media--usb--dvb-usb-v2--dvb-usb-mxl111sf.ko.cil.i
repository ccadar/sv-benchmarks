typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
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
struct class;
struct urb;
struct device;
struct completion;
struct usb_device;
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
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
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
typedef unsigned long kernel_ulong_t;
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 bInterfaceNumber ;
   kernel_ulong_t driver_info ;
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
struct input_device_id {
   kernel_ulong_t flags ;
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
   kernel_ulong_t evbit[1U] ;
   kernel_ulong_t keybit[12U] ;
   kernel_ulong_t relbit[1U] ;
   kernel_ulong_t absbit[1U] ;
   kernel_ulong_t mscbit[1U] ;
   kernel_ulong_t ledbit[1U] ;
   kernel_ulong_t sndbit[1U] ;
   kernel_ulong_t ffbit[2U] ;
   kernel_ulong_t swbit[1U] ;
   kernel_ulong_t driver_info ;
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
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_33 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_34 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_35 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_32 {
   struct __anonstruct_futex_33 futex ;
   struct __anonstruct_nanosleep_34 nanosleep ;
   struct __anonstruct_poll_35 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_32 __annonCompField19 ;
};
struct vm_area_struct;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
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
struct __anonstruct_seqlock_t_112 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_112 seqlock_t;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
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
struct __anonstruct_nodemask_t_113 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_113 nodemask_t;
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
struct __anonstruct_mm_context_t_114 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_114 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct bio_vec;
struct notifier_block;
struct device_node;
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
struct ctl_table;
struct proc_dir_entry;
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
struct kref {
   atomic_t refcount ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
union __anonunion____missing_field_name_145 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_145 __annonCompField33 ;
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
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_146 __annonCompField34 ;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_150 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_149 {
   struct __anonstruct____missing_field_name_150 __annonCompField35 ;
};
struct lockref {
   union __anonunion____missing_field_name_149 __annonCompField36 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_152 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_151 {
   struct __anonstruct____missing_field_name_152 __annonCompField37 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_151 __annonCompField38 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_153 {
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
   union __anonunion_d_u_153 d_u ;
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
struct mem_cgroup;
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
struct __anonstruct____missing_field_name_155 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_154 {
   struct __anonstruct____missing_field_name_155 __annonCompField39 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_154 __annonCompField40 ;
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
struct iovec;
struct nameidata;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
struct swap_info_struct;
struct iov_iter;
struct vm_fault;
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
struct __anonstruct_kprojid_t_158 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_158 kprojid_t;
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
union __anonunion____missing_field_name_159 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_159 __annonCompField42 ;
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
struct address_space;
struct writeback_control;
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
union __anonunion____missing_field_name_162 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_163 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_164 {
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
   union __anonunion____missing_field_name_162 __annonCompField43 ;
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
   union __anonunion____missing_field_name_163 __annonCompField44 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_164 __annonCompField45 ;
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
union __anonunion_f_u_165 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_165 f_u ;
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
struct __anonstruct_afs_167 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_166 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_167 afs ;
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
   union __anonunion_fl_u_166 fl_u ;
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
struct plist_head {
   struct list_head node_list ;
};
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
struct __anonstruct____missing_field_name_173 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_174 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_172 {
   struct __anonstruct____missing_field_name_173 __annonCompField48 ;
   struct __anonstruct____missing_field_name_174 __annonCompField49 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_172 __annonCompField50 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_175 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_177 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_181 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_180 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_181 __annonCompField53 ;
   int units ;
};
struct __anonstruct____missing_field_name_179 {
   union __anonunion____missing_field_name_180 __annonCompField54 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_178 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_179 __annonCompField55 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_176 {
   union __anonunion____missing_field_name_177 __annonCompField52 ;
   union __anonunion____missing_field_name_178 __annonCompField56 ;
};
struct __anonstruct____missing_field_name_183 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_184 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_182 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_183 __annonCompField58 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_184 __annonCompField59 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_185 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_175 __annonCompField51 ;
   struct __anonstruct____missing_field_name_176 __annonCompField57 ;
   union __anonunion____missing_field_name_182 __annonCompField60 ;
   union __anonunion____missing_field_name_185 __annonCompField61 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_186 {
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
   struct __anonstruct_shared_186 shared ;
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
struct __anonstruct_sigset_t_188 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_188 sigset_t;
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
struct __anonstruct__kill_190 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_191 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_192 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_193 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_195 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_194 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_195 _addr_bnd ;
};
struct __anonstruct__sigpoll_196 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_197 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_189 {
   int _pad[28U] ;
   struct __anonstruct__kill_190 _kill ;
   struct __anonstruct__timer_191 _timer ;
   struct __anonstruct__rt_192 _rt ;
   struct __anonstruct__sigchld_193 _sigchld ;
   struct __anonstruct__sigfault_194 _sigfault ;
   struct __anonstruct__sigpoll_196 _sigpoll ;
   struct __anonstruct__sigsys_197 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_189 _sifields ;
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
struct __anonstruct____missing_field_name_201 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_200 {
   struct __anonstruct____missing_field_name_201 __annonCompField62 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_200 __annonCompField63 ;
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
union __anonunion____missing_field_name_202 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_203 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_205 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_204 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_205 __annonCompField66 ;
};
union __anonunion_type_data_206 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_208 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_207 {
   union __anonunion_payload_208 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_202 __annonCompField64 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_203 __annonCompField65 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_204 __annonCompField67 ;
   union __anonunion_type_data_206 type_data ;
   union __anonunion____missing_field_name_207 __annonCompField68 ;
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
struct usb_driver;
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
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface * , struct usb_device_id const * ) ;
   void (*disconnect)(struct usb_interface * ) ;
   int (*unlocked_ioctl)(struct usb_interface * , unsigned int , void * ) ;
   int (*suspend)(struct usb_interface * , pm_message_t ) ;
   int (*resume)(struct usb_interface * ) ;
   int (*reset_resume)(struct usb_interface * ) ;
   int (*pre_reset)(struct usb_interface * ) ;
   int (*post_reset)(struct usb_interface * ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned char no_dynamic_id : 1 ;
   unsigned char supports_autosuspend : 1 ;
   unsigned char disable_hub_initiated_lpm : 1 ;
   unsigned char soft_unbind : 1 ;
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
struct scatterlist;
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
enum i2c_slave_event;
enum i2c_slave_event;
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
   int (*slave_cb)(struct i2c_client * , enum i2c_slave_event , u8 * ) ;
};
enum i2c_slave_event {
    I2C_SLAVE_REQ_READ_START = 0,
    I2C_SLAVE_REQ_READ_END = 1,
    I2C_SLAVE_REQ_WRITE_START = 2,
    I2C_SLAVE_REQ_WRITE_END = 3,
    I2C_SLAVE_STOP = 4
} ;
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
   int (*reg_slave)(struct i2c_client * ) ;
   int (*unreg_slave)(struct i2c_client * ) ;
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
struct input_id {
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
};
struct input_absinfo {
   __s32 value ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 fuzz ;
   __s32 flat ;
   __s32 resolution ;
};
struct input_keymap_entry {
   __u8 flags ;
   __u8 len ;
   __u16 index ;
   __u32 keycode ;
   __u8 scancode[32U] ;
};
struct ff_replay {
   __u16 length ;
   __u16 delay ;
};
struct ff_trigger {
   __u16 button ;
   __u16 interval ;
};
struct ff_envelope {
   __u16 attack_length ;
   __u16 attack_level ;
   __u16 fade_length ;
   __u16 fade_level ;
};
struct ff_constant_effect {
   __s16 level ;
   struct ff_envelope envelope ;
};
struct ff_ramp_effect {
   __s16 start_level ;
   __s16 end_level ;
   struct ff_envelope envelope ;
};
struct ff_condition_effect {
   __u16 right_saturation ;
   __u16 left_saturation ;
   __s16 right_coeff ;
   __s16 left_coeff ;
   __u16 deadband ;
   __s16 center ;
};
struct ff_periodic_effect {
   __u16 waveform ;
   __u16 period ;
   __s16 magnitude ;
   __s16 offset ;
   __u16 phase ;
   struct ff_envelope envelope ;
   __u32 custom_len ;
   __s16 *custom_data ;
};
struct ff_rumble_effect {
   __u16 strong_magnitude ;
   __u16 weak_magnitude ;
};
union __anonunion_u_211 {
   struct ff_constant_effect constant ;
   struct ff_ramp_effect ramp ;
   struct ff_periodic_effect periodic ;
   struct ff_condition_effect condition[2U] ;
   struct ff_rumble_effect rumble ;
};
struct ff_effect {
   __u16 type ;
   __s16 id ;
   __u16 direction ;
   struct ff_trigger trigger ;
   struct ff_replay replay ;
   union __anonunion_u_211 u ;
};
struct input_value {
   __u16 type ;
   __u16 code ;
   __s32 value ;
};
struct ff_device;
struct input_mt;
struct input_handle;
struct input_dev {
   char const *name ;
   char const *phys ;
   char const *uniq ;
   struct input_id id ;
   unsigned long propbit[1U] ;
   unsigned long evbit[1U] ;
   unsigned long keybit[12U] ;
   unsigned long relbit[1U] ;
   unsigned long absbit[1U] ;
   unsigned long mscbit[1U] ;
   unsigned long ledbit[1U] ;
   unsigned long sndbit[1U] ;
   unsigned long ffbit[2U] ;
   unsigned long swbit[1U] ;
   unsigned int hint_events_per_packet ;
   unsigned int keycodemax ;
   unsigned int keycodesize ;
   void *keycode ;
   int (*setkeycode)(struct input_dev * , struct input_keymap_entry const * , unsigned int * ) ;
   int (*getkeycode)(struct input_dev * , struct input_keymap_entry * ) ;
   struct ff_device *ff ;
   unsigned int repeat_key ;
   struct timer_list timer ;
   int rep[2U] ;
   struct input_mt *mt ;
   struct input_absinfo *absinfo ;
   unsigned long key[12U] ;
   unsigned long led[1U] ;
   unsigned long snd[1U] ;
   unsigned long sw[1U] ;
   int (*open)(struct input_dev * ) ;
   void (*close)(struct input_dev * ) ;
   int (*flush)(struct input_dev * , struct file * ) ;
   int (*event)(struct input_dev * , unsigned int , unsigned int , int ) ;
   struct input_handle *grab ;
   spinlock_t event_lock ;
   struct mutex mutex ;
   unsigned int users ;
   bool going_away ;
   struct device dev ;
   struct list_head h_list ;
   struct list_head node ;
   unsigned int num_vals ;
   unsigned int max_vals ;
   struct input_value *vals ;
   bool devres_managed ;
};
struct input_handler {
   void *private ;
   void (*event)(struct input_handle * , unsigned int , unsigned int , int ) ;
   void (*events)(struct input_handle * , struct input_value const * , unsigned int ) ;
   bool (*filter)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*match)(struct input_handler * , struct input_dev * ) ;
   int (*connect)(struct input_handler * , struct input_dev * , struct input_device_id const * ) ;
   void (*disconnect)(struct input_handle * ) ;
   void (*start)(struct input_handle * ) ;
   bool legacy_minors ;
   int minor ;
   char const *name ;
   struct input_device_id const *id_table ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handle {
   void *private ;
   int open ;
   char const *name ;
   struct input_dev *dev ;
   struct input_handler *handler ;
   struct list_head d_node ;
   struct list_head h_node ;
};
struct ff_device {
   int (*upload)(struct input_dev * , struct ff_effect * , struct ff_effect * ) ;
   int (*erase)(struct input_dev * , int ) ;
   int (*playback)(struct input_dev * , int , int ) ;
   void (*set_gain)(struct input_dev * , u16 ) ;
   void (*set_autocenter)(struct input_dev * , u16 ) ;
   void (*destroy)(struct ff_device * ) ;
   void *private ;
   unsigned long ffbit[2U] ;
   struct mutex mutex ;
   int max_effects ;
   struct ff_effect *effects ;
   struct file *effect_owners[] ;
};
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
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
enum rc_type {
    RC_TYPE_UNKNOWN = 0,
    RC_TYPE_OTHER = 1,
    RC_TYPE_LIRC = 2,
    RC_TYPE_RC5 = 3,
    RC_TYPE_RC5X = 4,
    RC_TYPE_RC5_SZ = 5,
    RC_TYPE_JVC = 6,
    RC_TYPE_SONY12 = 7,
    RC_TYPE_SONY15 = 8,
    RC_TYPE_SONY20 = 9,
    RC_TYPE_NEC = 10,
    RC_TYPE_SANYO = 11,
    RC_TYPE_MCE_KBD = 12,
    RC_TYPE_RC6_0 = 13,
    RC_TYPE_RC6_6A_20 = 14,
    RC_TYPE_RC6_6A_24 = 15,
    RC_TYPE_RC6_6A_32 = 16,
    RC_TYPE_RC6_MCE = 17,
    RC_TYPE_SHARP = 18,
    RC_TYPE_XMP = 19
} ;
struct rc_map_table {
   u32 scancode ;
   u32 keycode ;
};
struct rc_map {
   struct rc_map_table *scan ;
   unsigned int size ;
   unsigned int len ;
   unsigned int alloc ;
   enum rc_type rc_type ;
   char const *name ;
   spinlock_t lock ;
};
enum rc_driver_type {
    RC_DRIVER_SCANCODE = 0,
    RC_DRIVER_IR_RAW = 1
} ;
struct rc_scancode_filter {
   u32 data ;
   u32 mask ;
};
struct ir_raw_event_ctrl;
struct rc_dev {
   struct device dev ;
   struct attribute_group const *sysfs_groups[5U] ;
   char const *input_name ;
   char const *input_phys ;
   struct input_id input_id ;
   char *driver_name ;
   char const *map_name ;
   struct rc_map rc_map ;
   struct mutex lock ;
   unsigned long devno ;
   struct ir_raw_event_ctrl *raw ;
   struct input_dev *input_dev ;
   enum rc_driver_type driver_type ;
   bool idle ;
   u64 allowed_protocols ;
   u64 enabled_protocols ;
   u64 allowed_wakeup_protocols ;
   u64 enabled_wakeup_protocols ;
   struct rc_scancode_filter scancode_filter ;
   struct rc_scancode_filter scancode_wakeup_filter ;
   u32 scancode_mask ;
   u32 users ;
   void *priv ;
   spinlock_t keylock ;
   bool keypressed ;
   unsigned long keyup_jiffies ;
   struct timer_list timer_keyup ;
   u32 last_keycode ;
   enum rc_type last_protocol ;
   u32 last_scancode ;
   u8 last_toggle ;
   u32 timeout ;
   u32 min_timeout ;
   u32 max_timeout ;
   u32 rx_resolution ;
   u32 tx_resolution ;
   int (*change_protocol)(struct rc_dev * , u64 * ) ;
   int (*change_wakeup_protocol)(struct rc_dev * , u64 * ) ;
   int (*open)(struct rc_dev * ) ;
   void (*close)(struct rc_dev * ) ;
   int (*s_tx_mask)(struct rc_dev * , u32 ) ;
   int (*s_tx_carrier)(struct rc_dev * , u32 ) ;
   int (*s_tx_duty_cycle)(struct rc_dev * , u32 ) ;
   int (*s_rx_carrier_range)(struct rc_dev * , u32 , u32 ) ;
   int (*tx_ir)(struct rc_dev * , unsigned int * , unsigned int ) ;
   void (*s_idle)(struct rc_dev * , bool ) ;
   int (*s_learning_mode)(struct rc_dev * , int ) ;
   int (*s_carrier_report)(struct rc_dev * , int ) ;
   int (*s_filter)(struct rc_dev * , struct rc_scancode_filter * ) ;
   int (*s_wakeup_filter)(struct rc_dev * , struct rc_scancode_filter * ) ;
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
union __anonunion____missing_field_name_221 {
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
   union __anonunion____missing_field_name_221 __annonCompField75 ;
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
enum fe_type {
    FE_QPSK = 0,
    FE_QAM = 1,
    FE_OFDM = 2,
    FE_ATSC = 3
} ;
typedef enum fe_type fe_type_t;
enum fe_caps {
    FE_IS_STUPID = 0,
    FE_CAN_INVERSION_AUTO = 1,
    FE_CAN_FEC_1_2 = 2,
    FE_CAN_FEC_2_3 = 4,
    FE_CAN_FEC_3_4 = 8,
    FE_CAN_FEC_4_5 = 16,
    FE_CAN_FEC_5_6 = 32,
    FE_CAN_FEC_6_7 = 64,
    FE_CAN_FEC_7_8 = 128,
    FE_CAN_FEC_8_9 = 256,
    FE_CAN_FEC_AUTO = 512,
    FE_CAN_QPSK = 1024,
    FE_CAN_QAM_16 = 2048,
    FE_CAN_QAM_32 = 4096,
    FE_CAN_QAM_64 = 8192,
    FE_CAN_QAM_128 = 16384,
    FE_CAN_QAM_256 = 32768,
    FE_CAN_QAM_AUTO = 65536,
    FE_CAN_TRANSMISSION_MODE_AUTO = 131072,
    FE_CAN_BANDWIDTH_AUTO = 262144,
    FE_CAN_GUARD_INTERVAL_AUTO = 524288,
    FE_CAN_HIERARCHY_AUTO = 1048576,
    FE_CAN_8VSB = 2097152,
    FE_CAN_16VSB = 4194304,
    FE_HAS_EXTENDED_CAPS = 8388608,
    FE_CAN_MULTISTREAM = 67108864,
    FE_CAN_TURBO_FEC = 134217728,
    FE_CAN_2G_MODULATION = 268435456,
    FE_NEEDS_BENDING = 536870912,
    FE_CAN_RECOVER = 1073741824,
    FE_CAN_MUTE_TS = 2147483648U
} ;
typedef enum fe_caps fe_caps_t;
struct dvb_frontend_info {
   char name[128U] ;
   fe_type_t type ;
   __u32 frequency_min ;
   __u32 frequency_max ;
   __u32 frequency_stepsize ;
   __u32 frequency_tolerance ;
   __u32 symbol_rate_min ;
   __u32 symbol_rate_max ;
   __u32 symbol_rate_tolerance ;
   __u32 notifier_delay ;
   fe_caps_t caps ;
};
struct dvb_diseqc_master_cmd {
   __u8 msg[6U] ;
   __u8 msg_len ;
};
struct dvb_diseqc_slave_reply {
   __u8 msg[4U] ;
   __u8 msg_len ;
   int timeout ;
};
enum fe_sec_voltage {
    SEC_VOLTAGE_13 = 0,
    SEC_VOLTAGE_18 = 1,
    SEC_VOLTAGE_OFF = 2
} ;
typedef enum fe_sec_voltage fe_sec_voltage_t;
enum fe_sec_tone_mode {
    SEC_TONE_ON = 0,
    SEC_TONE_OFF = 1
} ;
typedef enum fe_sec_tone_mode fe_sec_tone_mode_t;
enum fe_sec_mini_cmd {
    SEC_MINI_A = 0,
    SEC_MINI_B = 1
} ;
typedef enum fe_sec_mini_cmd fe_sec_mini_cmd_t;
enum fe_status {
    FE_HAS_SIGNAL = 1,
    FE_HAS_CARRIER = 2,
    FE_HAS_VITERBI = 4,
    FE_HAS_SYNC = 8,
    FE_HAS_LOCK = 16,
    FE_TIMEDOUT = 32,
    FE_REINIT = 64
} ;
typedef enum fe_status fe_status_t;
enum fe_spectral_inversion {
    INVERSION_OFF = 0,
    INVERSION_ON = 1,
    INVERSION_AUTO = 2
} ;
typedef enum fe_spectral_inversion fe_spectral_inversion_t;
enum fe_code_rate {
    FEC_NONE = 0,
    FEC_1_2 = 1,
    FEC_2_3 = 2,
    FEC_3_4 = 3,
    FEC_4_5 = 4,
    FEC_5_6 = 5,
    FEC_6_7 = 6,
    FEC_7_8 = 7,
    FEC_8_9 = 8,
    FEC_AUTO = 9,
    FEC_3_5 = 10,
    FEC_9_10 = 11,
    FEC_2_5 = 12
} ;
typedef enum fe_code_rate fe_code_rate_t;
enum fe_modulation {
    QPSK = 0,
    QAM_16 = 1,
    QAM_32 = 2,
    QAM_64 = 3,
    QAM_128 = 4,
    QAM_256 = 5,
    QAM_AUTO = 6,
    VSB_8 = 7,
    VSB_16 = 8,
    PSK_8 = 9,
    APSK_16 = 10,
    APSK_32 = 11,
    DQPSK = 12,
    QAM_4_NR = 13
} ;
typedef enum fe_modulation fe_modulation_t;
enum fe_transmit_mode {
    TRANSMISSION_MODE_2K = 0,
    TRANSMISSION_MODE_8K = 1,
    TRANSMISSION_MODE_AUTO = 2,
    TRANSMISSION_MODE_4K = 3,
    TRANSMISSION_MODE_1K = 4,
    TRANSMISSION_MODE_16K = 5,
    TRANSMISSION_MODE_32K = 6,
    TRANSMISSION_MODE_C1 = 7,
    TRANSMISSION_MODE_C3780 = 8
} ;
typedef enum fe_transmit_mode fe_transmit_mode_t;
enum fe_guard_interval {
    GUARD_INTERVAL_1_32 = 0,
    GUARD_INTERVAL_1_16 = 1,
    GUARD_INTERVAL_1_8 = 2,
    GUARD_INTERVAL_1_4 = 3,
    GUARD_INTERVAL_AUTO = 4,
    GUARD_INTERVAL_1_128 = 5,
    GUARD_INTERVAL_19_128 = 6,
    GUARD_INTERVAL_19_256 = 7,
    GUARD_INTERVAL_PN420 = 8,
    GUARD_INTERVAL_PN595 = 9,
    GUARD_INTERVAL_PN945 = 10
} ;
typedef enum fe_guard_interval fe_guard_interval_t;
enum fe_hierarchy {
    HIERARCHY_NONE = 0,
    HIERARCHY_1 = 1,
    HIERARCHY_2 = 2,
    HIERARCHY_4 = 3,
    HIERARCHY_AUTO = 4
} ;
typedef enum fe_hierarchy fe_hierarchy_t;
enum fe_interleaving {
    INTERLEAVING_NONE = 0,
    INTERLEAVING_AUTO = 1,
    INTERLEAVING_240 = 2,
    INTERLEAVING_720 = 3
} ;
enum fe_pilot {
    PILOT_ON = 0,
    PILOT_OFF = 1,
    PILOT_AUTO = 2
} ;
typedef enum fe_pilot fe_pilot_t;
enum fe_rolloff {
    ROLLOFF_35 = 0,
    ROLLOFF_20 = 1,
    ROLLOFF_25 = 2,
    ROLLOFF_AUTO = 3
} ;
typedef enum fe_rolloff fe_rolloff_t;
enum fe_delivery_system {
    SYS_UNDEFINED = 0,
    SYS_DVBC_ANNEX_A = 1,
    SYS_DVBC_ANNEX_B = 2,
    SYS_DVBT = 3,
    SYS_DSS = 4,
    SYS_DVBS = 5,
    SYS_DVBS2 = 6,
    SYS_DVBH = 7,
    SYS_ISDBT = 8,
    SYS_ISDBS = 9,
    SYS_ISDBC = 10,
    SYS_ATSC = 11,
    SYS_ATSCMH = 12,
    SYS_DTMB = 13,
    SYS_CMMB = 14,
    SYS_DAB = 15,
    SYS_DVBT2 = 16,
    SYS_TURBO = 17,
    SYS_DVBC_ANNEX_C = 18
} ;
typedef enum fe_delivery_system fe_delivery_system_t;
union __anonunion____missing_field_name_224 {
   __u64 uvalue ;
   __s64 svalue ;
};
struct dtv_stats {
   __u8 scale ;
   union __anonunion____missing_field_name_224 __annonCompField78 ;
};
struct dtv_fe_stats {
   __u8 len ;
   struct dtv_stats stat[4U] ;
};
struct __anonstruct_buffer_226 {
   __u8 data[32U] ;
   __u32 len ;
   __u32 reserved1[3U] ;
   void *reserved2 ;
};
union __anonunion_u_225 {
   __u32 data ;
   struct dtv_fe_stats st ;
   struct __anonstruct_buffer_226 buffer ;
};
struct dtv_property {
   __u32 cmd ;
   __u32 reserved[3U] ;
   union __anonunion_u_225 u ;
   int result ;
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
struct dvb_frontend;
struct dvb_device;
struct dvb_adapter {
   int num ;
   struct list_head list_head ;
   struct list_head device_list ;
   char const *name ;
   u8 proposed_mac[6U] ;
   void *priv ;
   struct device *device ;
   struct module *module ;
   int mfe_shared ;
   struct dvb_device *mfe_dvbdev ;
   struct mutex mfe_lock ;
};
struct dvb_device {
   struct list_head list_head ;
   struct file_operations const *fops ;
   struct dvb_adapter *adapter ;
   int type ;
   int minor ;
   u32 id ;
   int readers ;
   int writers ;
   int users ;
   wait_queue_head_t wait_queue ;
   int (*kernel_ioctl)(struct file * , unsigned int , void * ) ;
   void *priv ;
};
struct dvb_frontend_tune_settings {
   int min_delay_ms ;
   int step_size ;
   int max_drift ;
};
struct dvb_tuner_info {
   char name[128U] ;
   u32 frequency_min ;
   u32 frequency_max ;
   u32 frequency_step ;
   u32 bandwidth_min ;
   u32 bandwidth_max ;
   u32 bandwidth_step ;
};
struct analog_parameters {
   unsigned int frequency ;
   unsigned int mode ;
   unsigned int audmode ;
   u64 std ;
};
enum tuner_param {
    DVBFE_TUNER_FREQUENCY = 1,
    DVBFE_TUNER_TUNERSTEP = 2,
    DVBFE_TUNER_IFFREQ = 4,
    DVBFE_TUNER_BANDWIDTH = 8,
    DVBFE_TUNER_REFCLOCK = 16,
    DVBFE_TUNER_IQSENSE = 32,
    DVBFE_TUNER_DUMMY = (-0x7FFFFFFF-1)
} ;
enum dvbfe_algo {
    DVBFE_ALGO_HW = 1,
    DVBFE_ALGO_SW = 2,
    DVBFE_ALGO_CUSTOM = 4,
    DVBFE_ALGO_RECOVERY = (-0x7FFFFFFF-1)
} ;
struct tuner_state {
   u32 frequency ;
   u32 tunerstep ;
   u32 ifreq ;
   u32 bandwidth ;
   u32 iqsense ;
   u32 refclock ;
};
enum dvbfe_search {
    DVBFE_ALGO_SEARCH_SUCCESS = 1,
    DVBFE_ALGO_SEARCH_ASLEEP = 2,
    DVBFE_ALGO_SEARCH_FAILED = 4,
    DVBFE_ALGO_SEARCH_INVALID = 8,
    DVBFE_ALGO_SEARCH_AGAIN = 16,
    DVBFE_ALGO_SEARCH_ERROR = (-0x7FFFFFFF-1)
} ;
struct dvb_tuner_ops {
   struct dvb_tuner_info info ;
   int (*release)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*suspend)(struct dvb_frontend * ) ;
   int (*resume)(struct dvb_frontend * ) ;
   int (*set_params)(struct dvb_frontend * ) ;
   int (*set_analog_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*calc_regs)(struct dvb_frontend * , u8 * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
   int (*get_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_bandwidth)(struct dvb_frontend * , u32 * ) ;
   int (*get_if_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_status)(struct dvb_frontend * , u32 * ) ;
   int (*get_rf_strength)(struct dvb_frontend * , u16 * ) ;
   int (*get_afc)(struct dvb_frontend * , s32 * ) ;
   int (*set_frequency)(struct dvb_frontend * , u32 ) ;
   int (*set_bandwidth)(struct dvb_frontend * , u32 ) ;
   int (*set_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
   int (*get_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
};
struct analog_demod_info {
   char *name ;
};
struct analog_demod_ops {
   struct analog_demod_info info ;
   void (*set_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*has_signal)(struct dvb_frontend * , u16 * ) ;
   int (*get_afc)(struct dvb_frontend * , s32 * ) ;
   void (*tuner_status)(struct dvb_frontend * ) ;
   void (*standby)(struct dvb_frontend * ) ;
   void (*release)(struct dvb_frontend * ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
};
struct dtv_frontend_properties;
struct dvb_frontend_ops {
   struct dvb_frontend_info info ;
   u8 delsys[8U] ;
   void (*release)(struct dvb_frontend * ) ;
   void (*release_sec)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*write)(struct dvb_frontend * , u8 const * , int ) ;
   int (*tune)(struct dvb_frontend * , bool , unsigned int , unsigned int * , fe_status_t * ) ;
   enum dvbfe_algo (*get_frontend_algo)(struct dvb_frontend * ) ;
   int (*set_frontend)(struct dvb_frontend * ) ;
   int (*get_tune_settings)(struct dvb_frontend * , struct dvb_frontend_tune_settings * ) ;
   int (*get_frontend)(struct dvb_frontend * ) ;
   int (*read_status)(struct dvb_frontend * , fe_status_t * ) ;
   int (*read_ber)(struct dvb_frontend * , u32 * ) ;
   int (*read_signal_strength)(struct dvb_frontend * , u16 * ) ;
   int (*read_snr)(struct dvb_frontend * , u16 * ) ;
   int (*read_ucblocks)(struct dvb_frontend * , u32 * ) ;
   int (*diseqc_reset_overload)(struct dvb_frontend * ) ;
   int (*diseqc_send_master_cmd)(struct dvb_frontend * , struct dvb_diseqc_master_cmd * ) ;
   int (*diseqc_recv_slave_reply)(struct dvb_frontend * , struct dvb_diseqc_slave_reply * ) ;
   int (*diseqc_send_burst)(struct dvb_frontend * , fe_sec_mini_cmd_t ) ;
   int (*set_tone)(struct dvb_frontend * , fe_sec_tone_mode_t ) ;
   int (*set_voltage)(struct dvb_frontend * , fe_sec_voltage_t ) ;
   int (*enable_high_lnb_voltage)(struct dvb_frontend * , long ) ;
   int (*dishnetwork_send_legacy_command)(struct dvb_frontend * , unsigned long ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*ts_bus_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_lna)(struct dvb_frontend * ) ;
   enum dvbfe_search (*search)(struct dvb_frontend * ) ;
   struct dvb_tuner_ops tuner_ops ;
   struct analog_demod_ops analog_ops ;
   int (*set_property)(struct dvb_frontend * , struct dtv_property * ) ;
   int (*get_property)(struct dvb_frontend * , struct dtv_property * ) ;
};
struct __anonstruct_layer_228 {
   u8 segment_count ;
   fe_code_rate_t fec ;
   fe_modulation_t modulation ;
   u8 interleaving ;
};
struct dtv_frontend_properties {
   u32 state ;
   u32 frequency ;
   fe_modulation_t modulation ;
   fe_sec_voltage_t voltage ;
   fe_sec_tone_mode_t sectone ;
   fe_spectral_inversion_t inversion ;
   fe_code_rate_t fec_inner ;
   fe_transmit_mode_t transmission_mode ;
   u32 bandwidth_hz ;
   fe_guard_interval_t guard_interval ;
   fe_hierarchy_t hierarchy ;
   u32 symbol_rate ;
   fe_code_rate_t code_rate_HP ;
   fe_code_rate_t code_rate_LP ;
   fe_pilot_t pilot ;
   fe_rolloff_t rolloff ;
   fe_delivery_system_t delivery_system ;
   enum fe_interleaving interleaving ;
   u8 isdbt_partial_reception ;
   u8 isdbt_sb_mode ;
   u8 isdbt_sb_subchannel ;
   u32 isdbt_sb_segment_idx ;
   u32 isdbt_sb_segment_count ;
   u8 isdbt_layer_enabled ;
   struct __anonstruct_layer_228 layer[3U] ;
   u32 stream_id ;
   u8 atscmh_fic_ver ;
   u8 atscmh_parade_id ;
   u8 atscmh_nog ;
   u8 atscmh_tnog ;
   u8 atscmh_sgn ;
   u8 atscmh_prc ;
   u8 atscmh_rs_frame_mode ;
   u8 atscmh_rs_frame_ensemble ;
   u8 atscmh_rs_code_mode_pri ;
   u8 atscmh_rs_code_mode_sec ;
   u8 atscmh_sccc_block_mode ;
   u8 atscmh_sccc_code_mode_a ;
   u8 atscmh_sccc_code_mode_b ;
   u8 atscmh_sccc_code_mode_c ;
   u8 atscmh_sccc_code_mode_d ;
   u32 lna ;
   struct dtv_fe_stats strength ;
   struct dtv_fe_stats cnr ;
   struct dtv_fe_stats pre_bit_error ;
   struct dtv_fe_stats pre_bit_count ;
   struct dtv_fe_stats post_bit_error ;
   struct dtv_fe_stats post_bit_count ;
   struct dtv_fe_stats block_error ;
   struct dtv_fe_stats block_count ;
};
struct dvb_frontend {
   struct dvb_frontend_ops ops ;
   struct dvb_adapter *dvb ;
   void *demodulator_priv ;
   void *tuner_priv ;
   void *frontend_priv ;
   void *sec_priv ;
   void *analog_demod_priv ;
   struct dtv_frontend_properties dtv_property_cache ;
   int (*callback)(void * , int , int , int ) ;
   int id ;
   unsigned int exit ;
};
enum ldv_25271 {
    DMX_OUT_DECODER = 0,
    DMX_OUT_TAP = 1,
    DMX_OUT_TS_TAP = 2,
    DMX_OUT_TSDEMUX_TAP = 3
} ;
typedef enum ldv_25271 dmx_output_t;
enum ldv_25273 {
    DMX_IN_FRONTEND = 0,
    DMX_IN_DVR = 1
} ;
typedef enum ldv_25273 dmx_input_t;
enum dmx_ts_pes {
    DMX_PES_AUDIO0 = 0,
    DMX_PES_VIDEO0 = 1,
    DMX_PES_TELETEXT0 = 2,
    DMX_PES_SUBTITLE0 = 3,
    DMX_PES_PCR0 = 4,
    DMX_PES_AUDIO1 = 5,
    DMX_PES_VIDEO1 = 6,
    DMX_PES_TELETEXT1 = 7,
    DMX_PES_SUBTITLE1 = 8,
    DMX_PES_PCR1 = 9,
    DMX_PES_AUDIO2 = 10,
    DMX_PES_VIDEO2 = 11,
    DMX_PES_TELETEXT2 = 12,
    DMX_PES_SUBTITLE2 = 13,
    DMX_PES_PCR2 = 14,
    DMX_PES_AUDIO3 = 15,
    DMX_PES_VIDEO3 = 16,
    DMX_PES_TELETEXT3 = 17,
    DMX_PES_SUBTITLE3 = 18,
    DMX_PES_PCR3 = 19,
    DMX_PES_OTHER = 20
} ;
typedef enum dmx_ts_pes dmx_pes_type_t;
struct dmx_filter {
   __u8 filter[16U] ;
   __u8 mask[16U] ;
   __u8 mode[16U] ;
};
typedef struct dmx_filter dmx_filter_t;
struct dmx_sct_filter_params {
   __u16 pid ;
   dmx_filter_t filter ;
   __u32 timeout ;
   __u32 flags ;
};
struct dmx_pes_filter_params {
   __u16 pid ;
   dmx_input_t input ;
   dmx_output_t output ;
   dmx_pes_type_t pes_type ;
   __u32 flags ;
};
struct dmx_caps {
   __u32 caps ;
   int num_decoders ;
};
enum ldv_25289 {
    DMX_SOURCE_FRONT0 = 0,
    DMX_SOURCE_FRONT1 = 1,
    DMX_SOURCE_FRONT2 = 2,
    DMX_SOURCE_FRONT3 = 3,
    DMX_SOURCE_DVR0 = 16,
    DMX_SOURCE_DVR1 = 17,
    DMX_SOURCE_DVR2 = 18,
    DMX_SOURCE_DVR3 = 19
} ;
typedef enum ldv_25289 dmx_source_t;
enum dmx_success {
    DMX_OK = 0,
    DMX_LENGTH_ERROR = 1,
    DMX_OVERRUN_ERROR = 2,
    DMX_CRC_ERROR = 3,
    DMX_FRAME_ERROR = 4,
    DMX_FIFO_ERROR = 5,
    DMX_MISSED_ERROR = 6
} ;
struct dmx_demux;
struct dmx_ts_feed {
   int is_filtering ;
   struct dmx_demux *parent ;
   void *priv ;
   int (*set)(struct dmx_ts_feed * , u16 , int , enum dmx_ts_pes , size_t , struct timespec ) ;
   int (*start_filtering)(struct dmx_ts_feed * ) ;
   int (*stop_filtering)(struct dmx_ts_feed * ) ;
};
struct dmx_section_feed;
struct dmx_section_filter {
   u8 filter_value[18U] ;
   u8 filter_mask[18U] ;
   u8 filter_mode[18U] ;
   struct dmx_section_feed *parent ;
   void *priv ;
};
struct dmx_section_feed {
   int is_filtering ;
   struct dmx_demux *parent ;
   void *priv ;
   int check_crc ;
   u32 crc_val ;
   u8 *secbuf ;
   u8 secbuf_base[4284U] ;
   u16 secbufp ;
   u16 seclen ;
   u16 tsfeedp ;
   int (*set)(struct dmx_section_feed * , u16 , size_t , int ) ;
   int (*allocate_filter)(struct dmx_section_feed * , struct dmx_section_filter ** ) ;
   int (*release_filter)(struct dmx_section_feed * , struct dmx_section_filter * ) ;
   int (*start_filtering)(struct dmx_section_feed * ) ;
   int (*stop_filtering)(struct dmx_section_feed * ) ;
};
enum dmx_frontend_source {
    DMX_MEMORY_FE = 0,
    DMX_FRONTEND_0 = 1,
    DMX_FRONTEND_1 = 2,
    DMX_FRONTEND_2 = 3,
    DMX_FRONTEND_3 = 4,
    DMX_STREAM_0 = 5,
    DMX_STREAM_1 = 6,
    DMX_STREAM_2 = 7,
    DMX_STREAM_3 = 8
} ;
struct dmx_frontend {
   struct list_head connectivity_list ;
   enum dmx_frontend_source source ;
};
struct dmx_demux {
   u32 capabilities ;
   struct dmx_frontend *frontend ;
   void *priv ;
   int (*open)(struct dmx_demux * ) ;
   int (*close)(struct dmx_demux * ) ;
   int (*write)(struct dmx_demux * , char const * , size_t ) ;
   int (*allocate_ts_feed)(struct dmx_demux * , struct dmx_ts_feed ** , int (*)(u8 const * ,
                                                                                size_t ,
                                                                                u8 const * ,
                                                                                size_t ,
                                                                                struct dmx_ts_feed * ,
                                                                                enum dmx_success ) ) ;
   int (*release_ts_feed)(struct dmx_demux * , struct dmx_ts_feed * ) ;
   int (*allocate_section_feed)(struct dmx_demux * , struct dmx_section_feed ** ,
                                int (*)(u8 const * , size_t , u8 const * , size_t ,
                                        struct dmx_section_filter * , enum dmx_success ) ) ;
   int (*release_section_feed)(struct dmx_demux * , struct dmx_section_feed * ) ;
   int (*add_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   int (*remove_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   struct list_head *(*get_frontends)(struct dmx_demux * ) ;
   int (*connect_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   int (*disconnect_frontend)(struct dmx_demux * ) ;
   int (*get_pes_pids)(struct dmx_demux * , u16 * ) ;
   int (*get_caps)(struct dmx_demux * , struct dmx_caps * ) ;
   int (*set_source)(struct dmx_demux * , dmx_source_t const * ) ;
   int (*get_stc)(struct dmx_demux * , unsigned int , u64 * , unsigned int * ) ;
};
struct dvb_demux_feed;
struct dvb_demux_filter {
   struct dmx_section_filter filter ;
   u8 maskandmode[18U] ;
   u8 maskandnotmode[18U] ;
   int doneq ;
   struct dvb_demux_filter *next ;
   struct dvb_demux_feed *feed ;
   int index ;
   int state ;
   int type ;
   u16 hw_handle ;
   struct timer_list timer ;
};
union __anonunion_feed_229 {
   struct dmx_ts_feed ts ;
   struct dmx_section_feed sec ;
};
union __anonunion_cb_230 {
   int (*ts)(u8 const * , size_t , u8 const * , size_t , struct dmx_ts_feed * ,
             enum dmx_success ) ;
   int (*sec)(u8 const * , size_t , u8 const * , size_t , struct dmx_section_filter * ,
              enum dmx_success ) ;
};
struct dvb_demux;
struct dvb_demux_feed {
   union __anonunion_feed_229 feed ;
   union __anonunion_cb_230 cb ;
   struct dvb_demux *demux ;
   void *priv ;
   int type ;
   int state ;
   u16 pid ;
   u8 *buffer ;
   int buffer_size ;
   struct timespec timeout ;
   struct dvb_demux_filter *filter ;
   int ts_type ;
   enum dmx_ts_pes pes_type ;
   int cc ;
   int pusi_seen ;
   u16 peslen ;
   struct list_head list_head ;
   unsigned int index ;
};
struct dvb_demux {
   struct dmx_demux dmx ;
   void *priv ;
   int filternum ;
   int feednum ;
   int (*start_feed)(struct dvb_demux_feed * ) ;
   int (*stop_feed)(struct dvb_demux_feed * ) ;
   int (*write_to_decoder)(struct dvb_demux_feed * , u8 const * , size_t ) ;
   u32 (*check_crc32)(struct dvb_demux_feed * , u8 const * , size_t ) ;
   void (*memcopy)(struct dvb_demux_feed * , u8 * , u8 const * , size_t ) ;
   int users ;
   struct dvb_demux_filter *filter ;
   struct dvb_demux_feed *feed ;
   struct list_head frontend_list ;
   struct dvb_demux_feed *pesfilter[20U] ;
   u16 pids[20U] ;
   int playing ;
   int recording ;
   struct list_head feed_list ;
   u8 tsbuf[204U] ;
   int tsbufp ;
   struct mutex mutex ;
   spinlock_t lock ;
   uint8_t *cnt_storage ;
   struct timespec speed_last_time ;
   uint32_t speed_pkts_cnt ;
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
union __anonunion_data_231 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_231 data ;
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
union __anonunion____missing_field_name_232 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_232 __annonCompField79 ;
   unsigned long nr_segs ;
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
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct __anonstruct_sync_serial_settings_234 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_234 sync_serial_settings;
struct __anonstruct_te1_settings_235 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_235 te1_settings;
struct __anonstruct_raw_hdlc_proto_236 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_236 raw_hdlc_proto;
struct __anonstruct_fr_proto_237 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_237 fr_proto;
struct __anonstruct_fr_proto_pvc_238 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_238 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_239 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_239 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_240 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_240 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_241 {
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
   union __anonunion_ifs_ifsu_241 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_242 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_243 {
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
   union __anonunion_ifr_ifrn_242 ifr_ifrn ;
   union __anonunion_ifr_ifru_243 ifr_ifru ;
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
struct __anonstruct____missing_field_name_262 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_261 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_262 __annonCompField81 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_261 __annonCompField82 ;
};
union __anonunion____missing_field_name_265 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_264 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_265 __annonCompField83 ;
};
union __anonunion____missing_field_name_263 {
   struct __anonstruct____missing_field_name_264 __annonCompField84 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_267 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_266 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_267 __annonCompField86 ;
};
union __anonunion____missing_field_name_268 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_269 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_270 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_263 __annonCompField85 ;
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
   union __anonunion____missing_field_name_266 __annonCompField87 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_268 __annonCompField88 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_269 __annonCompField89 ;
   union __anonunion____missing_field_name_270 __annonCompField90 ;
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
enum ldv_29181 {
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
typedef enum ldv_29181 phy_interface_t;
enum ldv_29234 {
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
   enum ldv_29234 state ;
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
struct __anonstruct_adj_list_282 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_283 {
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
union __anonunion____missing_field_name_284 {
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
   struct __anonstruct_adj_list_282 adj_list ;
   struct __anonstruct_all_adj_list_283 all_adj_list ;
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
   union __anonunion____missing_field_name_284 __annonCompField93 ;
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
struct ipv4_devconf {
   void *sysctl ;
   int data[28U] ;
   unsigned long state[1U] ;
};
struct in_ifaddr;
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
struct dvb_net {
   struct dvb_device *dvbdev ;
   struct net_device *device[10U] ;
   int state[10U] ;
   unsigned char exit : 1 ;
   struct dmx_demux *demux ;
   struct mutex ioctl_mutex ;
};
struct dvb_ringbuffer {
   u8 *data ;
   ssize_t size ;
   ssize_t pread ;
   ssize_t pwrite ;
   int error ;
   wait_queue_head_t queue ;
   spinlock_t lock ;
};
enum dmxdev_type {
    DMXDEV_TYPE_NONE = 0,
    DMXDEV_TYPE_SEC = 1,
    DMXDEV_TYPE_PES = 2
} ;
enum dmxdev_state {
    DMXDEV_STATE_FREE = 0,
    DMXDEV_STATE_ALLOCATED = 1,
    DMXDEV_STATE_SET = 2,
    DMXDEV_STATE_GO = 3,
    DMXDEV_STATE_DONE = 4,
    DMXDEV_STATE_TIMEDOUT = 5
} ;
union __anonunion_filter_288 {
   struct dmx_section_filter *sec ;
};
union __anonunion_feed_289 {
   struct list_head ts ;
   struct dmx_section_feed *sec ;
};
union __anonunion_params_290 {
   struct dmx_sct_filter_params sec ;
   struct dmx_pes_filter_params pes ;
};
struct dmxdev;
struct dmxdev_filter {
   union __anonunion_filter_288 filter ;
   union __anonunion_feed_289 feed ;
   union __anonunion_params_290 params ;
   enum dmxdev_type type ;
   enum dmxdev_state state ;
   struct dmxdev *dev ;
   struct dvb_ringbuffer buffer ;
   struct mutex mutex ;
   struct timer_list timer ;
   int todo ;
   u8 secheader[3U] ;
};
struct dmxdev {
   struct dvb_device *dvbdev ;
   struct dvb_device *dvr_dvbdev ;
   struct dmxdev_filter *filter ;
   struct dmx_demux *demux ;
   int filternum ;
   int capabilities ;
   unsigned char exit : 1 ;
   struct dmx_frontend *dvr_orig_fe ;
   struct dvb_ringbuffer dvr_buffer ;
   struct mutex mutex ;
   spinlock_t lock ;
};
struct dvb_usb_device;
struct dvb_usb_adapter;
struct dvb_usb_device_properties;
struct dvb_usb_driver_info {
   char const *name ;
   char const *rc_map ;
   struct dvb_usb_device_properties const *props ;
};
struct dvb_usb_rc {
   char const *map_name ;
   u64 allowed_protos ;
   int (*change_protocol)(struct rc_dev * , u64 * ) ;
   int (*query)(struct dvb_usb_device * ) ;
   unsigned int interval ;
   enum rc_driver_type driver_type ;
   bool bulk_mode ;
};
struct __anonstruct_bulk_292 {
   unsigned int buffersize ;
};
struct __anonstruct_isoc_293 {
   int framesperurb ;
   int framesize ;
   int interval ;
};
union __anonunion_u_291 {
   struct __anonstruct_bulk_292 bulk ;
   struct __anonstruct_isoc_293 isoc ;
};
struct usb_data_stream_properties {
   u8 type ;
   u8 count ;
   u8 endpoint ;
   union __anonunion_u_291 u ;
};
struct dvb_usb_adapter_properties {
   u8 caps ;
   u8 pid_filter_count ;
   int (*pid_filter_ctrl)(struct dvb_usb_adapter * , int ) ;
   int (*pid_filter)(struct dvb_usb_adapter * , int , u16 , int ) ;
   struct usb_data_stream_properties stream ;
};
struct dvb_usb_device_properties {
   char const *driver_name ;
   struct module *owner ;
   short *adapter_nr ;
   u8 bInterfaceNumber ;
   unsigned int size_of_priv ;
   u8 generic_bulk_ctrl_endpoint ;
   u8 generic_bulk_ctrl_endpoint_response ;
   unsigned int generic_bulk_ctrl_delay ;
   int (*identify_state)(struct dvb_usb_device * , char const ** ) ;
   char const *firmware ;
   int (*download_firmware)(struct dvb_usb_device * , struct firmware const * ) ;
   struct i2c_algorithm *i2c_algo ;
   unsigned int num_adapters ;
   int (*get_adapter_count)(struct dvb_usb_device * ) ;
   struct dvb_usb_adapter_properties adapter[2U] ;
   int (*power_ctrl)(struct dvb_usb_device * , int ) ;
   int (*read_config)(struct dvb_usb_device * ) ;
   int (*read_mac_address)(struct dvb_usb_adapter * , u8 * ) ;
   int (*frontend_attach)(struct dvb_usb_adapter * ) ;
   int (*frontend_detach)(struct dvb_usb_adapter * ) ;
   int (*tuner_attach)(struct dvb_usb_adapter * ) ;
   int (*tuner_detach)(struct dvb_usb_adapter * ) ;
   int (*frontend_ctrl)(struct dvb_frontend * , int ) ;
   int (*streaming_ctrl)(struct dvb_frontend * , int ) ;
   int (*init)(struct dvb_usb_device * ) ;
   void (*exit)(struct dvb_usb_device * ) ;
   int (*get_rc_config)(struct dvb_usb_device * , struct dvb_usb_rc * ) ;
   int (*get_stream_config)(struct dvb_frontend * , u8 * , struct usb_data_stream_properties * ) ;
};
struct usb_data_stream {
   struct usb_device *udev ;
   struct usb_data_stream_properties props ;
   u8 state ;
   void (*complete)(struct usb_data_stream * , u8 * , size_t ) ;
   struct urb *urb_list[10U] ;
   int buf_num ;
   unsigned long buf_size ;
   u8 *buf_list[10U] ;
   dma_addr_t dma_addr[10U] ;
   int urbs_initialized ;
   int urbs_submitted ;
   void *user_priv ;
};
struct dvb_usb_adapter {
   struct dvb_usb_adapter_properties const *props ;
   struct usb_data_stream stream ;
   u8 id ;
   u8 ts_type ;
   bool suspend_resume_active ;
   bool pid_filtering ;
   u8 feed_count ;
   u8 max_feed_count ;
   s8 active_fe ;
   unsigned long state_bits ;
   struct dvb_adapter dvb_adap ;
   struct dmxdev dmxdev ;
   struct dvb_demux demux ;
   struct dvb_net dvb_net ;
   struct dvb_frontend *fe[3U] ;
   int (*fe_init[3U])(struct dvb_frontend * ) ;
   int (*fe_sleep[3U])(struct dvb_frontend * ) ;
};
struct dvb_usb_device {
   struct dvb_usb_device_properties const *props ;
   char const *name ;
   char const *rc_map ;
   bool rc_polling_active ;
   struct usb_interface *intf ;
   struct usb_device *udev ;
   struct dvb_usb_rc rc ;
   int powered ;
   struct mutex usb_mutex ;
   struct mutex i2c_mutex ;
   struct i2c_adapter i2c_adap ;
   struct dvb_usb_adapter adapter[2U] ;
   struct rc_dev *rc_dev ;
   char rc_phys[64U] ;
   struct delayed_work rc_query_work ;
   void *priv ;
};
struct tveeprom {
   u32 has_radio ;
   u32 has_ir ;
   u32 has_MAC_address ;
   u32 tuner_type ;
   u32 tuner_formats ;
   u32 tuner_hauppauge_model ;
   u32 tuner2_type ;
   u32 tuner2_formats ;
   u32 tuner2_hauppauge_model ;
   u32 digitizer ;
   u32 digitizer_formats ;
   u32 audio_processor ;
   u32 decoder_processor ;
   u32 model ;
   u32 revision ;
   u32 serial_number ;
   char rev_str[5U] ;
   u8 MAC_address[6U] ;
};
enum mxl111sf_gpio_port_expander {
    mxl111sf_gpio_hw = 0,
    mxl111sf_PCA9534 = 1
} ;
struct mxl111sf_adap_state {
   int alt_mode ;
   int gpio_mode ;
   int device_mode ;
   int ep6_clockphase ;
   int (*fe_init)(struct dvb_frontend * ) ;
   int (*fe_sleep)(struct dvb_frontend * ) ;
};
struct mxl111sf_state {
   struct dvb_usb_device *d ;
   enum mxl111sf_gpio_port_expander gpio_port_expander ;
   u8 port_expander_addr ;
   u8 chip_id ;
   u8 chip_ver ;
   u8 chip_rev ;
   int device_mode ;
   int alt_mode ;
   int gpio_mode ;
   struct tveeprom tv ;
   struct mutex fe_lock ;
   u8 num_frontends ;
   struct mxl111sf_adap_state adap_state[3U] ;
};
struct mxl111sf_reg_ctrl_info {
   u8 addr ;
   u8 mask ;
   u8 data ;
};
enum mxl111sf_mux_config {
    PIN_MUX_DEFAULT = 0,
    PIN_MUX_TS_OUT_PARALLEL = 1,
    PIN_MUX_TS_OUT_SERIAL = 2,
    PIN_MUX_GPIO_MODE = 3,
    PIN_MUX_TS_SERIAL_IN_MODE_0 = 4,
    PIN_MUX_TS_SERIAL_IN_MODE_1 = 5,
    PIN_MUX_TS_SPI_IN_MODE_0 = 6,
    PIN_MUX_TS_SPI_IN_MODE_1 = 7,
    PIN_MUX_TS_PARALLEL_IN = 8,
    PIN_MUX_BT656_I2S_MODE = 9
} ;
struct mxl111sf_demod_config {
   int (*read_reg)(struct mxl111sf_state * , u8 , u8 * ) ;
   int (*write_reg)(struct mxl111sf_state * , u8 , u8 ) ;
   int (*program_regs)(struct mxl111sf_state * , struct mxl111sf_reg_ctrl_info * ) ;
};
enum mxl_if_freq {
    MXL_IF_4_0 = 1,
    MXL_IF_4_5 = 2,
    MXL_IF_4_57 = 3,
    MXL_IF_5_0 = 4,
    MXL_IF_5_38 = 5,
    MXL_IF_6_0 = 6,
    MXL_IF_6_28 = 7,
    MXL_IF_7_2 = 8,
    MXL_IF_35_25 = 9,
    MXL_IF_36 = 10,
    MXL_IF_36_15 = 11,
    MXL_IF_44 = 12
} ;
struct mxl111sf_tuner_config {
   enum mxl_if_freq if_freq ;
   unsigned char invert_spectrum : 1 ;
   int (*read_reg)(struct mxl111sf_state * , u8 , u8 * ) ;
   int (*write_reg)(struct mxl111sf_state * , u8 , u8 ) ;
   int (*program_regs)(struct mxl111sf_state * , struct mxl111sf_reg_ctrl_info * ) ;
   int (*top_master_ctrl)(struct mxl111sf_state * , int ) ;
   int (*ant_hunt)(struct dvb_frontend * ) ;
};
enum lgdt3305_mpeg_mode {
    LGDT3305_MPEG_PARALLEL = 0,
    LGDT3305_MPEG_SERIAL = 1
} ;
enum lgdt3305_tp_clock_edge {
    LGDT3305_TPCLK_RISING_EDGE = 0,
    LGDT3305_TPCLK_FALLING_EDGE = 1
} ;
enum lgdt3305_tp_clock_mode {
    LGDT3305_TPCLK_GATED = 0,
    LGDT3305_TPCLK_FIXED = 1
} ;
enum lgdt3305_tp_valid_polarity {
    LGDT3305_TP_VALID_LOW = 0,
    LGDT3305_TP_VALID_HIGH = 1
} ;
enum lgdt_demod_chip_type {
    LGDT3305 = 0,
    LGDT3304 = 1
} ;
struct lgdt3305_config {
   u8 i2c_addr ;
   u16 qam_if_khz ;
   u16 vsb_if_khz ;
   u16 usref_8vsb ;
   u16 usref_qam64 ;
   u16 usref_qam256 ;
   unsigned char deny_i2c_rptr : 1 ;
   unsigned char spectral_inversion : 1 ;
   unsigned char rf_agc_loop : 1 ;
   enum lgdt3305_mpeg_mode mpeg_mode ;
   enum lgdt3305_tp_clock_edge tpclk_edge ;
   enum lgdt3305_tp_clock_mode tpclk_mode ;
   enum lgdt3305_tp_valid_polarity tpvalid_polarity ;
   enum lgdt_demod_chip_type demod_chip ;
};
enum lg_chip_type {
    LG2160 = 0,
    LG2161 = 1
} ;
enum lg2160_spi_clock {
    LG2160_SPI_3_125_MHZ = 0,
    LG2160_SPI_6_25_MHZ = 1,
    LG2160_SPI_12_5_MHZ = 2
} ;
struct lg2160_config {
   u8 i2c_addr ;
   u16 if_khz ;
   unsigned char deny_i2c_rptr : 1 ;
   unsigned char spectral_inversion : 1 ;
   unsigned int output_if ;
   enum lg2160_spi_clock spi_clock ;
   enum lg_chip_type lg_chip ;
};
struct ldv_struct_EMGentry_11 {
   int signal_pending ;
};
struct ldv_struct_usb_instance_7 {
   struct usb_driver *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___1;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
struct mxl_gpio_cfg {
   u8 pin ;
   u8 dir ;
   u8 val ;
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
long ldv__builtin_expect(long exp , long c ) ;
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
void ldv_linux_net_register_check_return_value_probe(int retval ) ;
void ldv_linux_net_rtnetlink_check_final_state(void) ;
void ldv_linux_net_sock_check_final_state(void) ;
void ldv_linux_usb_coherent_check_final_state(void) ;
void *ldv_linux_usb_gadget_create_class(void) ;
int ldv_linux_usb_gadget_register_class(void) ;
void ldv_linux_usb_gadget_check_final_state(void) ;
void ldv_linux_usb_register_reset_error_counter(void) ;
void ldv_linux_usb_register_check_return_value_probe(int retval ) ;
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
static void ldv_ldv_initialize_128(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_125(int ldv_func_arg1 ) ;
extern void ldv_pre_probe(void) ;
static void ldv_ldv_pre_probe_129(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_130(int retval ) ;
int ldv_pre_usb_register_driver(void) ;
static void ldv_ldv_check_final_state_126(void) ;
static void ldv_ldv_check_final_state_127(void) ;
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
static void ldv_mutex_lock_121(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_fe_lock_of_mxl111sf_state(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_fe_lock_of_mxl111sf_state(struct mutex *lock ) ;
extern struct module __this_module ;
extern int printk(char const * , ...) ;
extern void __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void msleep(unsigned int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_122(struct mutex *ldv_func_arg1 ) ;
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
static int ldv_usb_register_driver_123(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                       char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
static void ldv_usb_deregister_124(struct usb_driver *ldv_func_arg1 ) ;
extern int usb_set_interface(struct usb_device * , int , int ) ;
extern int __request_module(bool , char const * , ...) ;
extern void *__symbol_get(char const * ) ;
extern void __symbol_put(char const * ) ;
extern int dvb_usbv2_probe(struct usb_interface * , struct usb_device_id const * ) ;
extern void dvb_usbv2_disconnect(struct usb_interface * ) ;
extern int dvb_usbv2_suspend(struct usb_interface * , pm_message_t ) ;
extern int dvb_usbv2_resume(struct usb_interface * ) ;
extern int dvb_usbv2_generic_rw(struct dvb_usb_device * , u8 * , u16 , u8 * , u16 ) ;
extern int dvb_usbv2_generic_write(struct dvb_usb_device * , u8 * , u16 ) ;
extern void tveeprom_hauppauge_analog(struct i2c_client * , struct tveeprom * , unsigned char * ) ;
extern int tveeprom_read(struct i2c_client * , unsigned char * , int ) ;
int mxl111sf_read_reg(struct mxl111sf_state *state , u8 addr , u8 *data ) ;
int mxl111sf_write_reg(struct mxl111sf_state *state , u8 addr , u8 data ) ;
int mxl111sf_write_reg_mask(struct mxl111sf_state *state , u8 addr , u8 mask , u8 data ) ;
int mxl111sf_ctrl_program_regs(struct mxl111sf_state *state , struct mxl111sf_reg_ctrl_info *ctrl_reg_info ) ;
int mxl111sf_ctrl_msg(struct dvb_usb_device *d , u8 cmd , u8 *wbuf , int wlen , u8 *rbuf ,
                      int rlen ) ;
int dvb_usb_mxl111sf_debug ;
int mxl1x1sf_soft_reset(struct mxl111sf_state *state ) ;
int mxl1x1sf_set_device_mode(struct mxl111sf_state *state , int mode ) ;
int mxl1x1sf_top_master_ctrl(struct mxl111sf_state *state , int onoff ) ;
int mxl111sf_init_tuner_demod(struct mxl111sf_state *state ) ;
int mxl111sf_enable_usb_output(struct mxl111sf_state *state ) ;
int mxl111sf_config_mpeg_in(struct mxl111sf_state *state , unsigned int parallel_serial ,
                            unsigned int msb_lsb_1st , unsigned int clock_phase ,
                            unsigned int mpeg_valid_pol , unsigned int mpeg_sync_pol ) ;
int mxl111sf_config_i2s(struct mxl111sf_state *state , u8 msb_start_pos , u8 data_width ) ;
int mxl111sf_init_i2s_port(struct mxl111sf_state *state , u8 sample_size ) ;
int mxl111sf_disable_i2s_port(struct mxl111sf_state *state ) ;
int mxl111sf_config_spi(struct mxl111sf_state *state , int onoff ) ;
int mxl111sf_idac_config(struct mxl111sf_state *state , u8 control_mode , u8 current_setting ,
                         u8 current_value , u8 hysteresis_value ) ;
int mxl111sf_i2c_xfer(struct i2c_adapter *adap , struct i2c_msg *msg , int num ) ;
int mxl111sf_init_port_expander(struct mxl111sf_state *state ) ;
int mxl111sf_gpio_mode_switch(struct mxl111sf_state *state , unsigned int mode ) ;
int mxl111sf_config_pin_mux_modes(struct mxl111sf_state *state , enum mxl111sf_mux_config pin_mux_config ) ;
static int dvb_usb_mxl111sf_isoc ;
static int dvb_usb_mxl111sf_spi ;
static int dvb_usb_mxl111sf_rfswitch = 1;
static short adapter_nr[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
int mxl111sf_ctrl_msg(struct dvb_usb_device *d , u8 cmd , u8 *wbuf , int wlen , u8 *rbuf ,
                      int rlen )
{
  int wo ;
  int ret ;
  u8 sndbuf[64U] ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int __ret ;
  {
  wo = (unsigned long )rbuf == (unsigned long )((u8 *)0U) || rlen == 0;
  if ((unsigned int )(wlen + 1) > 64U) {
    {
    printk("\f%s: len=%d is too big!\n", "mxl111sf_ctrl_msg", wlen);
    }
    return (-95);
  } else {
  }
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_ctrl_msg";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s(wlen = %d, rlen = %d)\n";
  descriptor.lineno = 70U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s(wlen = %d, rlen = %d)\n", "mxl111sf_ctrl_msg",
                       wlen, rlen);
    }
  } else {
  }
  {
  memset((void *)(& sndbuf), 0, (size_t )(wlen + 1));
  sndbuf[0] = cmd;
  memcpy((void *)(& sndbuf) + 1U, (void const *)wbuf, (size_t )wlen);
  }
  if (wo != 0) {
    {
    tmp___0 = dvb_usbv2_generic_write(d, (u8 *)(& sndbuf), (int )((unsigned int )((u16 )wlen) + 1U));
    ret = tmp___0;
    }
  } else {
    {
    tmp___1 = dvb_usbv2_generic_rw(d, (u8 *)(& sndbuf), (int )((unsigned int )((u16 )wlen) + 1U),
                                   rbuf, (int )((u16 )rlen));
    ret = tmp___1;
    }
  }
  __ret = ret < 0;
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_ctrl_msg", ret, 79);
    }
  } else {
  }
  return (ret);
}
}
int mxl111sf_read_reg(struct mxl111sf_state *state , u8 addr , u8 *data )
{
  u8 buf[2U] ;
  int ret ;
  int __ret ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  ret = mxl111sf_ctrl_msg(state->d, 170, & addr, 1, (u8 *)(& buf), 2);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_read_reg", ret, 95);
    }
  } else {
  }
  if (__ret != 0) {
    if (dvb_usb_mxl111sf_debug != 0) {
      {
      printk("\017%s: error reading reg: 0x%02x\n", "mxl111sf_read_reg", (int )addr);
      }
    } else {
    }
    goto fail;
  } else {
  }
  if ((int )buf[0] == (int )addr) {
    *data = buf[1];
  } else {
    {
    printk("\vinvalid response reading reg: 0x%02x != 0x%02x, 0x%02x", (int )addr,
           (int )buf[0], (int )buf[1]);
    ret = -22;
    }
  }
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_read_reg";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "R: (0x%02x, 0x%02x)\n";
  descriptor.lineno = 108U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "R: (0x%02x, 0x%02x)\n", (int )addr, (int )buf[1]);
    }
  } else {
  }
  fail: ;
  return (ret);
}
}
int mxl111sf_write_reg(struct mxl111sf_state *state , u8 addr , u8 data )
{
  u8 buf[2U] ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  int __ret ;
  {
  {
  buf[0] = addr;
  buf[1] = data;
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_write_reg";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "W: (0x%02x, 0x%02x)\n";
  descriptor.lineno = 118U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "W: (0x%02x, 0x%02x)\n", (int )addr, (int )data);
    }
  } else {
  }
  {
  ret = mxl111sf_ctrl_msg(state->d, 85, (u8 *)(& buf), 2, (u8 *)0U, 0);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_write_reg", ret, 121);
    }
  } else {
  }
  if (__ret != 0) {
    {
    printk("\verror writing reg: 0x%02x, val: 0x%02x", (int )addr, (int )data);
    }
  } else {
  }
  return (ret);
}
}
int mxl111sf_write_reg_mask(struct mxl111sf_state *state , u8 addr , u8 mask , u8 data )
{
  int ret ;
  u8 val ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  {
  val = 0U;
  if ((unsigned int )mask != 255U) {
    {
    ret = mxl111sf_read_reg(state, (int )addr, & val);
    __ret = ret < 0;
    }
    if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_write_reg_mask", ret, 138);
      }
    } else {
    }
    if (__ret != 0) {
      {
      printk("\verror writing addr: 0x%02x, mask: 0x%02x, data: 0x%02x, retrying...",
             (int )addr, (int )mask, (int )data);
      }
    } else {
    }
    {
    ret = mxl111sf_read_reg(state, (int )addr, & val);
    __ret___0 = ret < 0;
    }
    if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_write_reg_mask", ret, 144);
      }
    } else {
    }
    if (__ret___0 != 0) {
      goto fail;
    } else {
    }
  } else {
  }
  {
  val = (u8 )((int )((signed char )val) & ~ ((int )((signed char )mask)));
  val = (u8 )((int )val | (int )data);
  ret = mxl111sf_write_reg(state, (int )addr, (int )val);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_write_reg_mask", ret, 151);
    }
  } else {
  }
  fail: ;
  return (ret);
}
}
int mxl111sf_ctrl_program_regs(struct mxl111sf_state *state , struct mxl111sf_reg_ctrl_info *ctrl_reg_info )
{
  int i ;
  int ret ;
  int __ret ;
  {
  ret = 0;
  i = 0;
  goto ldv_49880;
  ldv_49879:
  {
  ret = mxl111sf_write_reg_mask(state, (int )(ctrl_reg_info + (unsigned long )i)->addr,
                                (int )(ctrl_reg_info + (unsigned long )i)->mask, (int )(ctrl_reg_info + (unsigned long )i)->data);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_ctrl_program_regs", ret, 171);
    }
  } else {
  }
  if (__ret != 0) {
    {
    printk("\vfailed on reg #%d (0x%02x)", i, (int )(ctrl_reg_info + (unsigned long )i)->addr);
    }
    goto ldv_49878;
  } else {
  }
  i = i + 1;
  ldv_49880: ;
  if ((unsigned int )(((int )(ctrl_reg_info + (unsigned long )i)->addr | (int )(ctrl_reg_info + (unsigned long )i)->mask) | (int )(ctrl_reg_info + (unsigned long )i)->data) != 0U) {
    goto ldv_49879;
  } else {
  }
  ldv_49878: ;
  return (ret);
}
}
static int mxl1x1sf_get_chip_info(struct mxl111sf_state *state )
{
  int ret ;
  u8 id ;
  u8 ver ;
  char *mxl_chip ;
  char *mxl_rev ;
  int __ret ;
  int __ret___0 ;
  {
  if ((unsigned int )state->chip_id != 0U && (unsigned int )state->chip_ver != 0U) {
    return (0);
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 252, & id);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl1x1sf_get_chip_info", ret, 192);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  state->chip_id = id;
  ret = mxl111sf_read_reg(state, 250, & ver);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl1x1sf_get_chip_info", ret, 197);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  state->chip_ver = ver;
  {
  if ((int )id == 97) {
    goto case_97;
  } else {
  }
  if ((int )id == 99) {
    goto case_99;
  } else {
  }
  goto switch_default;
  case_97:
  mxl_chip = (char *)"MxL101SF";
  goto ldv_49896;
  case_99:
  mxl_chip = (char *)"MxL111SF";
  goto ldv_49896;
  switch_default:
  mxl_chip = (char *)"UNKNOWN MxL1X1";
  goto ldv_49896;
  switch_break: ;
  }
  ldv_49896: ;
  {
  if ((int )ver == 54) {
    goto case_54;
  } else {
  }
  if ((int )ver == 8) {
    goto case_8;
  } else {
  }
  if ((int )ver == 24) {
    goto case_24;
  } else {
  }
  goto switch_default___0;
  case_54:
  state->chip_rev = 1U;
  mxl_rev = (char *)"v6";
  goto ldv_49900;
  case_8:
  state->chip_rev = 2U;
  mxl_rev = (char *)"v8_100";
  goto ldv_49900;
  case_24:
  state->chip_rev = 3U;
  mxl_rev = (char *)"v8_200";
  goto ldv_49900;
  switch_default___0:
  state->chip_rev = 0U;
  mxl_rev = (char *)"UNKNOWN REVISION";
  goto ldv_49900;
  switch_break___0: ;
  }
  ldv_49900:
  {
  printk("\016%s detected, %s (0x%x)", mxl_chip, mxl_rev, (int )ver);
  }
  fail: ;
  return (ret);
}
}
static int mxl111sf_adap_fe_init(struct dvb_frontend *fe )
{
  struct dvb_usb_device *d ;
  struct dvb_usb_adapter const *__mptr ;
  struct mxl111sf_state *state ;
  struct dvb_usb_adapter const *__mptr___0 ;
  struct mxl111sf_adap_state *adap_state ;
  int err ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  int __ret___3 ;
  int __ret___4 ;
  int __ret___5 ;
  int __ret___6 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct dvb_usb_adapter const *)(fe->dvb)->priv;
  d = (struct dvb_usb_device *)__mptr + - ((unsigned long )((struct dvb_usb_adapter *)(fe->dvb)->priv)->id * 2400UL + 2344UL);
  __mptr___0 = (struct dvb_usb_adapter const *)(fe->dvb)->priv;
  state = (struct mxl111sf_state *)((struct dvb_usb_device *)__mptr___0 + - ((unsigned long )((struct dvb_usb_adapter *)(fe->dvb)->priv)->id * 2400UL + 2344UL))->priv;
  adap_state = (struct mxl111sf_adap_state *)(& state->adap_state) + (unsigned long )fe->id;
  if ((unsigned int )state->chip_id == 0U) {
    if (dvb_usb_mxl111sf_debug != 0) {
      {
      printk("\017%s: driver not yet initialized, exit.\n", "mxl111sf_adap_fe_init");
      }
    } else {
    }
    goto fail;
  } else {
  }
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_adap_fe_init";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 275U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s()\n", "mxl111sf_adap_fe_init");
    }
  } else {
  }
  {
  ldv_mutex_lock_121(& state->fe_lock);
  state->alt_mode = adap_state->alt_mode;
  tmp___0 = usb_set_interface(d->udev, 0, state->alt_mode);
  }
  if (tmp___0 < 0) {
    {
    printk("\vset interface failed");
    }
  } else {
  }
  {
  err = mxl1x1sf_soft_reset(state);
  __ret = err < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_adap_fe_init", err, 285);
    }
  } else {
  }
  {
  err = mxl111sf_init_tuner_demod(state);
  __ret___0 = err < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_adap_fe_init", err, 287);
    }
  } else {
  }
  {
  err = mxl1x1sf_set_device_mode(state, adap_state->device_mode);
  __ret___1 = err < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_adap_fe_init", err, 290);
    }
  } else {
  }
  {
  mxl111sf_enable_usb_output(state);
  __ret___2 = err < 0;
  }
  if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_adap_fe_init", err, 292);
    }
  } else {
  }
  {
  mxl1x1sf_top_master_ctrl(state, 1);
  __ret___3 = err < 0;
  }
  if (__ret___3 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_adap_fe_init", err, 294);
    }
  } else {
  }
  if (adap_state->gpio_mode != 0 && (unsigned int )state->chip_rev > 1U) {
    {
    mxl111sf_config_pin_mux_modes(state, 7);
    __ret___4 = err < 0;
    }
    if (__ret___4 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_adap_fe_init", err, 300);
      }
    } else {
    }
  } else {
  }
  {
  err = mxl111sf_init_port_expander(state);
  __ret___6 = err < 0;
  }
  if (__ret___6 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_adap_fe_init", err, 303);
    }
  } else {
  }
  if (__ret___6 == 0) {
    {
    state->gpio_mode = adap_state->gpio_mode;
    err = mxl111sf_gpio_mode_switch(state, (unsigned int )state->gpio_mode);
    __ret___5 = err < 0;
    }
    if (__ret___5 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_adap_fe_init", err, 306);
      }
    } else {
    }
    {
    msleep(100U);
    }
  } else {
  }
  if ((unsigned long )adap_state->fe_init != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
    {
    tmp___1 = (*(adap_state->fe_init))(fe);
    tmp___2 = tmp___1;
    }
  } else {
    tmp___2 = 0;
  }
  return (tmp___2);
  fail: ;
  return (-19);
}
}
static int mxl111sf_adap_fe_sleep(struct dvb_frontend *fe )
{
  struct mxl111sf_state *state ;
  struct dvb_usb_adapter const *__mptr ;
  struct mxl111sf_adap_state *adap_state ;
  int err ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  __mptr = (struct dvb_usb_adapter const *)(fe->dvb)->priv;
  state = (struct mxl111sf_state *)((struct dvb_usb_device *)__mptr + - ((unsigned long )((struct dvb_usb_adapter *)(fe->dvb)->priv)->id * 2400UL + 2344UL))->priv;
  adap_state = (struct mxl111sf_adap_state *)(& state->adap_state) + (unsigned long )fe->id;
  if ((unsigned int )state->chip_id == 0U) {
    if (dvb_usb_mxl111sf_debug != 0) {
      {
      printk("\017%s: driver not yet initialized, exit.\n", "mxl111sf_adap_fe_sleep");
      }
    } else {
    }
    goto fail;
  } else {
  }
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_adap_fe_sleep";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 331U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s()\n", "mxl111sf_adap_fe_sleep");
    }
  } else {
  }
  if ((unsigned long )adap_state->fe_sleep != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
    {
    tmp___0 = (*(adap_state->fe_sleep))(fe);
    err = tmp___0;
    }
  } else {
    err = 0;
  }
  {
  ldv_mutex_unlock_122(& state->fe_lock);
  }
  return (err);
  fail: ;
  return (-19);
}
}
static int mxl111sf_ep6_streaming_ctrl(struct dvb_frontend *fe , int onoff )
{
  struct mxl111sf_state *state ;
  struct dvb_usb_adapter const *__mptr ;
  struct mxl111sf_adap_state *adap_state ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  int __ret ;
  int __ret___0 ;
  {
  {
  __mptr = (struct dvb_usb_adapter const *)(fe->dvb)->priv;
  state = (struct mxl111sf_state *)((struct dvb_usb_device *)__mptr + - ((unsigned long )((struct dvb_usb_adapter *)(fe->dvb)->priv)->id * 2400UL + 2344UL))->priv;
  adap_state = (struct mxl111sf_adap_state *)(& state->adap_state) + (unsigned long )fe->id;
  ret = 0;
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_ep6_streaming_ctrl";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s(%d)\n";
  descriptor.lineno = 349U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s(%d)\n", "mxl111sf_ep6_streaming_ctrl", onoff);
    }
  } else {
  }
  if (onoff != 0) {
    {
    ret = mxl111sf_enable_usb_output(state);
    __ret = ret < 0;
    }
    if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_ep6_streaming_ctrl", ret, 353);
      }
    } else {
    }
    {
    ret = mxl111sf_config_mpeg_in(state, 1U, 1U, (unsigned int )adap_state->ep6_clockphase,
                                  0U, 0U);
    __ret___0 = ret < 0;
    }
    if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_ep6_streaming_ctrl", ret, 357);
      }
    } else {
    }
  } else {
  }
  return (ret);
}
}
static int mxl111sf_ep5_streaming_ctrl(struct dvb_frontend *fe , int onoff )
{
  struct mxl111sf_state *state ;
  struct dvb_usb_adapter const *__mptr ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  int __ret___3 ;
  {
  {
  __mptr = (struct dvb_usb_adapter const *)(fe->dvb)->priv;
  state = (struct mxl111sf_state *)((struct dvb_usb_device *)__mptr + - ((unsigned long )((struct dvb_usb_adapter *)(fe->dvb)->priv)->id * 2400UL + 2344UL))->priv;
  ret = 0;
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_ep5_streaming_ctrl";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s(%d)\n";
  descriptor.lineno = 373U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s(%d)\n", "mxl111sf_ep5_streaming_ctrl", onoff);
    }
  } else {
  }
  if (onoff != 0) {
    {
    ret = mxl111sf_enable_usb_output(state);
    __ret = ret < 0;
    }
    if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_ep5_streaming_ctrl", ret, 377);
      }
    } else {
    }
    {
    ret = mxl111sf_init_i2s_port(state, 200);
    __ret___0 = ret < 0;
    }
    if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_ep5_streaming_ctrl", ret, 380);
      }
    } else {
    }
    {
    ret = mxl111sf_config_i2s(state, 0, 15);
    __ret___1 = ret < 0;
    }
    if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_ep5_streaming_ctrl", ret, 382);
      }
    } else {
    }
  } else {
    {
    ret = mxl111sf_disable_i2s_port(state);
    __ret___2 = ret < 0;
    }
    if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_ep5_streaming_ctrl", ret, 385);
      }
    } else {
    }
  }
  if ((unsigned int )state->chip_rev > 1U) {
    {
    ret = mxl111sf_config_spi(state, onoff);
    }
  } else {
  }
  __ret___3 = ret < 0;
  if (__ret___3 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_ep5_streaming_ctrl", ret, 389);
    }
  } else {
  }
  return (ret);
}
}
static int mxl111sf_ep4_streaming_ctrl(struct dvb_frontend *fe , int onoff )
{
  struct mxl111sf_state *state ;
  struct dvb_usb_adapter const *__mptr ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  int __ret ;
  {
  {
  __mptr = (struct dvb_usb_adapter const *)(fe->dvb)->priv;
  state = (struct mxl111sf_state *)((struct dvb_usb_device *)__mptr + - ((unsigned long )((struct dvb_usb_adapter *)(fe->dvb)->priv)->id * 2400UL + 2344UL))->priv;
  ret = 0;
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_ep4_streaming_ctrl";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s(%d)\n";
  descriptor.lineno = 399U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s(%d)\n", "mxl111sf_ep4_streaming_ctrl", onoff);
    }
  } else {
  }
  if (onoff != 0) {
    {
    ret = mxl111sf_enable_usb_output(state);
    __ret = ret < 0;
    }
    if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_ep4_streaming_ctrl", ret, 403);
      }
    } else {
    }
  } else {
  }
  return (ret);
}
}
static struct lgdt3305_config hauppauge_lgdt3305_config =
     {89U, 6000U, 6000U, (unsigned short)0, (unsigned short)0, (unsigned short)0, 1U,
    0U, (unsigned char)0, 1, 0, 0, 1, 0};
static int mxl111sf_lgdt3305_frontend_attach(struct dvb_usb_adapter *adap , u8 fe_id )
{
  struct dvb_usb_device *d ;
  struct dvb_usb_adapter const *__mptr ;
  struct mxl111sf_state *state ;
  struct mxl111sf_adap_state *adap_state ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  int __ret___3 ;
  int __ret___4 ;
  int __ret___5 ;
  void *__r ;
  struct dvb_frontend *(*__a)(struct lgdt3305_config const * , struct i2c_adapter * ) ;
  void *tmp___2 ;
  struct dvb_frontend *(*tmp___3)(struct lgdt3305_config const * , struct i2c_adapter * ) ;
  void *tmp___4 ;
  struct dvb_frontend *tmp___5 ;
  {
  {
  __mptr = (struct dvb_usb_adapter const *)adap;
  d = (struct dvb_usb_device *)__mptr + - ((unsigned long )adap->id * 2400UL + 2344UL);
  state = (struct mxl111sf_state *)d->priv;
  adap_state = (struct mxl111sf_adap_state *)(& state->adap_state) + (unsigned long )fe_id;
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_lgdt3305_frontend_attach";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 429U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s()\n", "mxl111sf_lgdt3305_frontend_attach");
    }
  } else {
  }
  {
  state->d = d;
  adap_state->alt_mode = dvb_usb_mxl111sf_isoc != 0 ? 2 : 1;
  state->alt_mode = adap_state->alt_mode;
  tmp___0 = usb_set_interface(d->udev, 0, state->alt_mode);
  }
  if (tmp___0 < 0) {
    {
    printk("\vset interface failed");
    }
  } else {
  }
  {
  state->gpio_mode = 2;
  adap_state->gpio_mode = state->gpio_mode;
  adap_state->device_mode = 0;
  adap_state->ep6_clockphase = 1;
  ret = mxl1x1sf_soft_reset(state);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lgdt3305_frontend_attach", ret,
           445);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_init_tuner_demod(state);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lgdt3305_frontend_attach", ret,
           448);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl1x1sf_set_device_mode(state, adap_state->device_mode);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lgdt3305_frontend_attach", ret,
           452);
    }
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_enable_usb_output(state);
  __ret___2 = ret < 0;
  }
  if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lgdt3305_frontend_attach", ret,
           456);
    }
  } else {
  }
  if (__ret___2 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl1x1sf_top_master_ctrl(state, 1);
  __ret___3 = ret < 0;
  }
  if (__ret___3 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lgdt3305_frontend_attach", ret,
           459);
    }
  } else {
  }
  if (__ret___3 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_init_port_expander(state);
  __ret___4 = ret < 0;
  }
  if (__ret___4 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lgdt3305_frontend_attach", ret,
           463);
    }
  } else {
  }
  if (__ret___4 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_gpio_mode_switch(state, (unsigned int )state->gpio_mode);
  __ret___5 = ret < 0;
  }
  if (__ret___5 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lgdt3305_frontend_attach", ret,
           466);
    }
  } else {
  }
  if (__ret___5 != 0) {
    goto fail;
  } else {
  }
  {
  __r = (void *)0;
  tmp___4 = __symbol_get("lgdt3305_attach");
  tmp___3 = (unsigned long )((struct dvb_frontend *(*)(struct lgdt3305_config const * ,
                                                       struct i2c_adapter * ))tmp___4) != (unsigned long )((struct dvb_frontend *(*)(struct lgdt3305_config const * ,
                                                                                                                                     struct i2c_adapter * ))0);
  }
  if (tmp___3) {
  } else {
    {
    __request_module(1, "symbol:lgdt3305_attach");
    tmp___2 = __symbol_get("lgdt3305_attach");
    tmp___3 = (struct dvb_frontend *(*)(struct lgdt3305_config const * , struct i2c_adapter * ))tmp___2;
    }
  }
  __a = tmp___3;
  if ((unsigned long )__a != (unsigned long )((struct dvb_frontend *(*)(struct lgdt3305_config const * ,
                                                                        struct i2c_adapter * ))0)) {
    {
    tmp___5 = (*__a)((struct lgdt3305_config const *)(& hauppauge_lgdt3305_config),
                     & d->i2c_adap);
    __r = (void *)tmp___5;
    }
    if ((unsigned long )__r == (unsigned long )((void *)0)) {
      {
      __symbol_put("lgdt3305_attach");
      }
    } else {
    }
  } else {
    {
    printk("\vDVB: Unable to find symbol lgdt3305_attach()\n");
    }
  }
  adap->fe[(int )fe_id] = (struct dvb_frontend *)__r;
  if ((unsigned long )adap->fe[(int )fe_id] != (unsigned long )((struct dvb_frontend *)0)) {
    state->num_frontends = (u8 )((int )state->num_frontends + 1);
    adap_state->fe_init = (adap->fe[(int )fe_id])->ops.init;
    (adap->fe[(int )fe_id])->ops.init = & mxl111sf_adap_fe_init;
    adap_state->fe_sleep = (adap->fe[(int )fe_id])->ops.sleep;
    (adap->fe[(int )fe_id])->ops.sleep = & mxl111sf_adap_fe_sleep;
    return (0);
  } else {
  }
  ret = -5;
  fail: ;
  return (ret);
}
}
static struct lg2160_config hauppauge_lg2160_config = {14U, 6000U, 1U, 0U, 0U, 0, 0};
static int mxl111sf_lg2160_frontend_attach(struct dvb_usb_adapter *adap , u8 fe_id )
{
  struct dvb_usb_device *d ;
  struct dvb_usb_adapter const *__mptr ;
  struct mxl111sf_state *state ;
  struct mxl111sf_adap_state *adap_state ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  int __ret___3 ;
  int __ret___4 ;
  int __ret___5 ;
  int ___ret ;
  int __ret___6 ;
  int __ret___7 ;
  int __ret___8 ;
  void *__r ;
  struct dvb_frontend *(*__a)(struct lg2160_config const * , struct i2c_adapter * ) ;
  void *tmp___2 ;
  struct dvb_frontend *(*tmp___3)(struct lg2160_config const * , struct i2c_adapter * ) ;
  void *tmp___4 ;
  struct dvb_frontend *tmp___5 ;
  {
  {
  __mptr = (struct dvb_usb_adapter const *)adap;
  d = (struct dvb_usb_device *)__mptr + - ((unsigned long )adap->id * 2400UL + 2344UL);
  state = (struct mxl111sf_state *)d->priv;
  adap_state = (struct mxl111sf_adap_state *)(& state->adap_state) + (unsigned long )fe_id;
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_lg2160_frontend_attach";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 500U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s()\n", "mxl111sf_lg2160_frontend_attach");
    }
  } else {
  }
  {
  state->d = d;
  adap_state->alt_mode = dvb_usb_mxl111sf_isoc != 0 ? 2 : 1;
  state->alt_mode = adap_state->alt_mode;
  tmp___0 = usb_set_interface(d->udev, 0, state->alt_mode);
  }
  if (tmp___0 < 0) {
    {
    printk("\vset interface failed");
    }
  } else {
  }
  {
  state->gpio_mode = 1;
  adap_state->gpio_mode = state->gpio_mode;
  adap_state->device_mode = 0;
  adap_state->ep6_clockphase = 1;
  ret = mxl1x1sf_soft_reset(state);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2160_frontend_attach", ret,
           516);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_init_tuner_demod(state);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2160_frontend_attach", ret,
           519);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl1x1sf_set_device_mode(state, adap_state->device_mode);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2160_frontend_attach", ret,
           523);
    }
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_enable_usb_output(state);
  __ret___2 = ret < 0;
  }
  if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2160_frontend_attach", ret,
           527);
    }
  } else {
  }
  if (__ret___2 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl1x1sf_top_master_ctrl(state, 1);
  __ret___3 = ret < 0;
  }
  if (__ret___3 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2160_frontend_attach", ret,
           530);
    }
  } else {
  }
  if (__ret___3 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_init_port_expander(state);
  __ret___4 = ret < 0;
  }
  if (__ret___4 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2160_frontend_attach", ret,
           534);
    }
  } else {
  }
  if (__ret___4 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_gpio_mode_switch(state, (unsigned int )state->gpio_mode);
  __ret___5 = ret < 0;
  }
  if (__ret___5 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2160_frontend_attach", ret,
           537);
    }
  } else {
  }
  if (__ret___5 != 0) {
    goto fail;
  } else {
  }
  {
  ___ret = mxl1x1sf_get_chip_info(state);
  __ret___7 = ___ret < 0;
  }
  if (__ret___7 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2160_frontend_attach", ___ret,
           540);
    }
  } else {
  }
  if (__ret___7 != 0) {
    if (dvb_usb_mxl111sf_debug != 0) {
      {
      printk("\017%s: failed to get chip info on first probe attempt\n", "mxl111sf_lg2160_frontend_attach");
      }
    } else {
    }
    {
    ___ret = mxl1x1sf_get_chip_info(state);
    __ret___6 = ___ret < 0;
    }
    if (__ret___6 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_lg2160_frontend_attach", ___ret,
             540);
      }
    } else {
    }
    if (__ret___6 != 0) {
      {
      printk("\vfailed to get chip info during probe");
      }
    } else
    if (dvb_usb_mxl111sf_debug != 0) {
      {
      printk("\017%s: probe needed a retry in order to succeed.\n", "mxl111sf_lg2160_frontend_attach");
      }
    } else {
    }
  } else {
  }
  ret = ___ret;
  __ret___8 = ret < 0;
  if (__ret___8 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2160_frontend_attach", ret,
           541);
    }
  } else {
  }
  if (__ret___8 != 0) {
    goto fail;
  } else {
  }
  {
  __r = (void *)0;
  tmp___4 = __symbol_get("lg2160_attach");
  tmp___3 = (unsigned long )((struct dvb_frontend *(*)(struct lg2160_config const * ,
                                                       struct i2c_adapter * ))tmp___4) != (unsigned long )((struct dvb_frontend *(*)(struct lg2160_config const * ,
                                                                                                                                     struct i2c_adapter * ))0);
  }
  if (tmp___3) {
  } else {
    {
    __request_module(1, "symbol:lg2160_attach");
    tmp___2 = __symbol_get("lg2160_attach");
    tmp___3 = (struct dvb_frontend *(*)(struct lg2160_config const * , struct i2c_adapter * ))tmp___2;
    }
  }
  __a = tmp___3;
  if ((unsigned long )__a != (unsigned long )((struct dvb_frontend *(*)(struct lg2160_config const * ,
                                                                        struct i2c_adapter * ))0)) {
    {
    tmp___5 = (*__a)((struct lg2160_config const *)(& hauppauge_lg2160_config),
                     & d->i2c_adap);
    __r = (void *)tmp___5;
    }
    if ((unsigned long )__r == (unsigned long )((void *)0)) {
      {
      __symbol_put("lg2160_attach");
      }
    } else {
    }
  } else {
    {
    printk("\vDVB: Unable to find symbol lg2160_attach()\n");
    }
  }
  adap->fe[(int )fe_id] = (struct dvb_frontend *)__r;
  if ((unsigned long )adap->fe[(int )fe_id] != (unsigned long )((struct dvb_frontend *)0)) {
    state->num_frontends = (u8 )((int )state->num_frontends + 1);
    adap_state->fe_init = (adap->fe[(int )fe_id])->ops.init;
    (adap->fe[(int )fe_id])->ops.init = & mxl111sf_adap_fe_init;
    adap_state->fe_sleep = (adap->fe[(int )fe_id])->ops.sleep;
    (adap->fe[(int )fe_id])->ops.sleep = & mxl111sf_adap_fe_sleep;
    return (0);
  } else {
  }
  ret = -5;
  fail: ;
  return (ret);
}
}
static struct lg2160_config hauppauge_lg2161_1019_config = {14U, 6000U, 1U, 0U, 2U, 0, 1};
static struct lg2160_config hauppauge_lg2161_1040_config = {14U, 6000U, 1U, 0U, 4U, 0, 1};
static int mxl111sf_lg2161_frontend_attach(struct dvb_usb_adapter *adap , u8 fe_id )
{
  struct dvb_usb_device *d ;
  struct dvb_usb_adapter const *__mptr ;
  struct mxl111sf_state *state ;
  struct mxl111sf_adap_state *adap_state ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  int __ret___3 ;
  int __ret___4 ;
  int __ret___5 ;
  int ___ret ;
  int __ret___6 ;
  int __ret___7 ;
  int __ret___8 ;
  void *__r ;
  struct dvb_frontend *(*__a)(struct lg2160_config const * , struct i2c_adapter * ) ;
  void *tmp___2 ;
  struct dvb_frontend *(*tmp___3)(struct lg2160_config const * , struct i2c_adapter * ) ;
  void *tmp___4 ;
  struct dvb_frontend *tmp___5 ;
  {
  {
  __mptr = (struct dvb_usb_adapter const *)adap;
  d = (struct dvb_usb_device *)__mptr + - ((unsigned long )adap->id * 2400UL + 2344UL);
  state = (struct mxl111sf_state *)d->priv;
  adap_state = (struct mxl111sf_adap_state *)(& state->adap_state) + (unsigned long )fe_id;
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_lg2161_frontend_attach";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 585U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s()\n", "mxl111sf_lg2161_frontend_attach");
    }
  } else {
  }
  {
  state->d = d;
  adap_state->alt_mode = dvb_usb_mxl111sf_isoc != 0 ? 2 : 1;
  state->alt_mode = adap_state->alt_mode;
  tmp___0 = usb_set_interface(d->udev, 0, state->alt_mode);
  }
  if (tmp___0 < 0) {
    {
    printk("\vset interface failed");
    }
  } else {
  }
  {
  state->gpio_mode = 1;
  adap_state->gpio_mode = state->gpio_mode;
  adap_state->device_mode = 0;
  adap_state->ep6_clockphase = 1;
  ret = mxl1x1sf_soft_reset(state);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_frontend_attach", ret,
           601);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_init_tuner_demod(state);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_frontend_attach", ret,
           604);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl1x1sf_set_device_mode(state, adap_state->device_mode);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_frontend_attach", ret,
           608);
    }
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_enable_usb_output(state);
  __ret___2 = ret < 0;
  }
  if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_frontend_attach", ret,
           612);
    }
  } else {
  }
  if (__ret___2 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl1x1sf_top_master_ctrl(state, 1);
  __ret___3 = ret < 0;
  }
  if (__ret___3 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_frontend_attach", ret,
           615);
    }
  } else {
  }
  if (__ret___3 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_init_port_expander(state);
  __ret___4 = ret < 0;
  }
  if (__ret___4 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_frontend_attach", ret,
           619);
    }
  } else {
  }
  if (__ret___4 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_gpio_mode_switch(state, (unsigned int )state->gpio_mode);
  __ret___5 = ret < 0;
  }
  if (__ret___5 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_frontend_attach", ret,
           622);
    }
  } else {
  }
  if (__ret___5 != 0) {
    goto fail;
  } else {
  }
  {
  ___ret = mxl1x1sf_get_chip_info(state);
  __ret___7 = ___ret < 0;
  }
  if (__ret___7 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_frontend_attach", ___ret,
           625);
    }
  } else {
  }
  if (__ret___7 != 0) {
    if (dvb_usb_mxl111sf_debug != 0) {
      {
      printk("\017%s: failed to get chip info on first probe attempt\n", "mxl111sf_lg2161_frontend_attach");
      }
    } else {
    }
    {
    ___ret = mxl1x1sf_get_chip_info(state);
    __ret___6 = ___ret < 0;
    }
    if (__ret___6 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_frontend_attach", ___ret,
             625);
      }
    } else {
    }
    if (__ret___6 != 0) {
      {
      printk("\vfailed to get chip info during probe");
      }
    } else
    if (dvb_usb_mxl111sf_debug != 0) {
      {
      printk("\017%s: probe needed a retry in order to succeed.\n", "mxl111sf_lg2161_frontend_attach");
      }
    } else {
    }
  } else {
  }
  ret = ___ret;
  __ret___8 = ret < 0;
  if (__ret___8 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_frontend_attach", ret,
           626);
    }
  } else {
  }
  if (__ret___8 != 0) {
    goto fail;
  } else {
  }
  {
  __r = (void *)0;
  tmp___4 = __symbol_get("lg2160_attach");
  tmp___3 = (unsigned long )((struct dvb_frontend *(*)(struct lg2160_config const * ,
                                                       struct i2c_adapter * ))tmp___4) != (unsigned long )((struct dvb_frontend *(*)(struct lg2160_config const * ,
                                                                                                                                     struct i2c_adapter * ))0);
  }
  if (tmp___3) {
  } else {
    {
    __request_module(1, "symbol:lg2160_attach");
    tmp___2 = __symbol_get("lg2160_attach");
    tmp___3 = (struct dvb_frontend *(*)(struct lg2160_config const * , struct i2c_adapter * ))tmp___2;
    }
  }
  __a = tmp___3;
  if ((unsigned long )__a != (unsigned long )((struct dvb_frontend *(*)(struct lg2160_config const * ,
                                                                        struct i2c_adapter * ))0)) {
    {
    tmp___5 = (*__a)((struct lg2160_config const *)((unsigned int )state->chip_rev == 3U ? & hauppauge_lg2161_1040_config : & hauppauge_lg2161_1019_config),
                     & d->i2c_adap);
    __r = (void *)tmp___5;
    }
    if ((unsigned long )__r == (unsigned long )((void *)0)) {
      {
      __symbol_put("lg2160_attach");
      }
    } else {
    }
  } else {
    {
    printk("\vDVB: Unable to find symbol lg2160_attach()\n");
    }
  }
  adap->fe[(int )fe_id] = (struct dvb_frontend *)__r;
  if ((unsigned long )adap->fe[(int )fe_id] != (unsigned long )((struct dvb_frontend *)0)) {
    state->num_frontends = (u8 )((int )state->num_frontends + 1);
    adap_state->fe_init = (adap->fe[(int )fe_id])->ops.init;
    (adap->fe[(int )fe_id])->ops.init = & mxl111sf_adap_fe_init;
    adap_state->fe_sleep = (adap->fe[(int )fe_id])->ops.sleep;
    (adap->fe[(int )fe_id])->ops.sleep = & mxl111sf_adap_fe_sleep;
    return (0);
  } else {
  }
  ret = -5;
  fail: ;
  return (ret);
}
}
static struct lg2160_config hauppauge_lg2161_1019_ep6_config = {14U, 6000U, 1U, 0U, 1U, 0, 1};
static struct lg2160_config hauppauge_lg2161_1040_ep6_config = {14U, 6000U, 1U, 0U, 7U, 0, 1};
static int mxl111sf_lg2161_ep6_frontend_attach(struct dvb_usb_adapter *adap , u8 fe_id )
{
  struct dvb_usb_device *d ;
  struct dvb_usb_adapter const *__mptr ;
  struct mxl111sf_state *state ;
  struct mxl111sf_adap_state *adap_state ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  int __ret___3 ;
  int __ret___4 ;
  int __ret___5 ;
  int ___ret ;
  int __ret___6 ;
  int __ret___7 ;
  int __ret___8 ;
  void *__r ;
  struct dvb_frontend *(*__a)(struct lg2160_config const * , struct i2c_adapter * ) ;
  void *tmp___2 ;
  struct dvb_frontend *(*tmp___3)(struct lg2160_config const * , struct i2c_adapter * ) ;
  void *tmp___4 ;
  struct dvb_frontend *tmp___5 ;
  {
  {
  __mptr = (struct dvb_usb_adapter const *)adap;
  d = (struct dvb_usb_device *)__mptr + - ((unsigned long )adap->id * 2400UL + 2344UL);
  state = (struct mxl111sf_state *)d->priv;
  adap_state = (struct mxl111sf_adap_state *)(& state->adap_state) + (unsigned long )fe_id;
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_lg2161_ep6_frontend_attach";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 672U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s()\n", "mxl111sf_lg2161_ep6_frontend_attach");
    }
  } else {
  }
  {
  state->d = d;
  adap_state->alt_mode = dvb_usb_mxl111sf_isoc != 0 ? 2 : 1;
  state->alt_mode = adap_state->alt_mode;
  tmp___0 = usb_set_interface(d->udev, 0, state->alt_mode);
  }
  if (tmp___0 < 0) {
    {
    printk("\vset interface failed");
    }
  } else {
  }
  {
  state->gpio_mode = 1;
  adap_state->gpio_mode = state->gpio_mode;
  adap_state->device_mode = 0;
  adap_state->ep6_clockphase = 0;
  ret = mxl1x1sf_soft_reset(state);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_ep6_frontend_attach", ret,
           688);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_init_tuner_demod(state);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_ep6_frontend_attach", ret,
           691);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl1x1sf_set_device_mode(state, adap_state->device_mode);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_ep6_frontend_attach", ret,
           695);
    }
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_enable_usb_output(state);
  __ret___2 = ret < 0;
  }
  if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_ep6_frontend_attach", ret,
           699);
    }
  } else {
  }
  if (__ret___2 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl1x1sf_top_master_ctrl(state, 1);
  __ret___3 = ret < 0;
  }
  if (__ret___3 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_ep6_frontend_attach", ret,
           702);
    }
  } else {
  }
  if (__ret___3 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_init_port_expander(state);
  __ret___4 = ret < 0;
  }
  if (__ret___4 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_ep6_frontend_attach", ret,
           706);
    }
  } else {
  }
  if (__ret___4 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_gpio_mode_switch(state, (unsigned int )state->gpio_mode);
  __ret___5 = ret < 0;
  }
  if (__ret___5 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_ep6_frontend_attach", ret,
           709);
    }
  } else {
  }
  if (__ret___5 != 0) {
    goto fail;
  } else {
  }
  {
  ___ret = mxl1x1sf_get_chip_info(state);
  __ret___7 = ___ret < 0;
  }
  if (__ret___7 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_ep6_frontend_attach", ___ret,
           712);
    }
  } else {
  }
  if (__ret___7 != 0) {
    if (dvb_usb_mxl111sf_debug != 0) {
      {
      printk("\017%s: failed to get chip info on first probe attempt\n", "mxl111sf_lg2161_ep6_frontend_attach");
      }
    } else {
    }
    {
    ___ret = mxl1x1sf_get_chip_info(state);
    __ret___6 = ___ret < 0;
    }
    if (__ret___6 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_ep6_frontend_attach",
             ___ret, 712);
      }
    } else {
    }
    if (__ret___6 != 0) {
      {
      printk("\vfailed to get chip info during probe");
      }
    } else
    if (dvb_usb_mxl111sf_debug != 0) {
      {
      printk("\017%s: probe needed a retry in order to succeed.\n", "mxl111sf_lg2161_ep6_frontend_attach");
      }
    } else {
    }
  } else {
  }
  ret = ___ret;
  __ret___8 = ret < 0;
  if (__ret___8 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_lg2161_ep6_frontend_attach", ret,
           713);
    }
  } else {
  }
  if (__ret___8 != 0) {
    goto fail;
  } else {
  }
  {
  __r = (void *)0;
  tmp___4 = __symbol_get("lg2160_attach");
  tmp___3 = (unsigned long )((struct dvb_frontend *(*)(struct lg2160_config const * ,
                                                       struct i2c_adapter * ))tmp___4) != (unsigned long )((struct dvb_frontend *(*)(struct lg2160_config const * ,
                                                                                                                                     struct i2c_adapter * ))0);
  }
  if (tmp___3) {
  } else {
    {
    __request_module(1, "symbol:lg2160_attach");
    tmp___2 = __symbol_get("lg2160_attach");
    tmp___3 = (struct dvb_frontend *(*)(struct lg2160_config const * , struct i2c_adapter * ))tmp___2;
    }
  }
  __a = tmp___3;
  if ((unsigned long )__a != (unsigned long )((struct dvb_frontend *(*)(struct lg2160_config const * ,
                                                                        struct i2c_adapter * ))0)) {
    {
    tmp___5 = (*__a)((struct lg2160_config const *)((unsigned int )state->chip_rev == 3U ? & hauppauge_lg2161_1040_ep6_config : & hauppauge_lg2161_1019_ep6_config),
                     & d->i2c_adap);
    __r = (void *)tmp___5;
    }
    if ((unsigned long )__r == (unsigned long )((void *)0)) {
      {
      __symbol_put("lg2160_attach");
      }
    } else {
    }
  } else {
    {
    printk("\vDVB: Unable to find symbol lg2160_attach()\n");
    }
  }
  adap->fe[(int )fe_id] = (struct dvb_frontend *)__r;
  if ((unsigned long )adap->fe[(int )fe_id] != (unsigned long )((struct dvb_frontend *)0)) {
    state->num_frontends = (u8 )((int )state->num_frontends + 1);
    adap_state->fe_init = (adap->fe[(int )fe_id])->ops.init;
    (adap->fe[(int )fe_id])->ops.init = & mxl111sf_adap_fe_init;
    adap_state->fe_sleep = (adap->fe[(int )fe_id])->ops.sleep;
    (adap->fe[(int )fe_id])->ops.sleep = & mxl111sf_adap_fe_sleep;
    return (0);
  } else {
  }
  ret = -5;
  fail: ;
  return (ret);
}
}
static struct mxl111sf_demod_config mxl_demod_config = {& mxl111sf_read_reg, & mxl111sf_write_reg, & mxl111sf_ctrl_program_regs};
static int mxl111sf_attach_demod(struct dvb_usb_adapter *adap , u8 fe_id )
{
  struct dvb_usb_device *d ;
  struct dvb_usb_adapter const *__mptr ;
  struct mxl111sf_state *state ;
  struct mxl111sf_adap_state *adap_state ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  int __ret___3 ;
  void *__r ;
  struct dvb_frontend *(*__a)(struct mxl111sf_state * , struct mxl111sf_demod_config * ) ;
  void *tmp___2 ;
  struct dvb_frontend *(*tmp___3)(struct mxl111sf_state * , struct mxl111sf_demod_config * ) ;
  void *tmp___4 ;
  struct dvb_frontend *tmp___5 ;
  {
  {
  __mptr = (struct dvb_usb_adapter const *)adap;
  d = (struct dvb_usb_device *)__mptr + - ((unsigned long )adap->id * 2400UL + 2344UL);
  state = (struct mxl111sf_state *)d->priv;
  adap_state = (struct mxl111sf_adap_state *)(& state->adap_state) + (unsigned long )fe_id;
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_attach_demod";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 747U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s()\n", "mxl111sf_attach_demod");
    }
  } else {
  }
  {
  state->d = d;
  adap_state->alt_mode = dvb_usb_mxl111sf_isoc != 0 ? 1 : 2;
  state->alt_mode = adap_state->alt_mode;
  tmp___0 = usb_set_interface(d->udev, 0, state->alt_mode);
  }
  if (tmp___0 < 0) {
    {
    printk("\vset interface failed");
    }
  } else {
  }
  {
  state->gpio_mode = 0;
  adap_state->gpio_mode = state->gpio_mode;
  adap_state->device_mode = 1;
  adap_state->ep6_clockphase = 1;
  ret = mxl1x1sf_soft_reset(state);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_attach_demod", ret, 763);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_init_tuner_demod(state);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_attach_demod", ret, 766);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl1x1sf_set_device_mode(state, adap_state->device_mode);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_attach_demod", ret, 770);
    }
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_enable_usb_output(state);
  __ret___2 = ret < 0;
  }
  if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_attach_demod", ret, 774);
    }
  } else {
  }
  if (__ret___2 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl1x1sf_top_master_ctrl(state, 1);
  __ret___3 = ret < 0;
  }
  if (__ret___3 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_attach_demod", ret, 777);
    }
  } else {
  }
  if (__ret___3 != 0) {
    goto fail;
  } else {
  }
  {
  mxl111sf_init_port_expander(state);
  __r = (void *)0;
  tmp___4 = __symbol_get("mxl111sf_demod_attach");
  tmp___3 = (unsigned long )((struct dvb_frontend *(*)(struct mxl111sf_state * , struct mxl111sf_demod_config * ))tmp___4) != (unsigned long )((struct dvb_frontend *(*)(struct mxl111sf_state * ,
                                                                                                                                                                         struct mxl111sf_demod_config * ))0);
  }
  if (tmp___3) {
  } else {
    {
    __request_module(1, "symbol:mxl111sf_demod_attach");
    tmp___2 = __symbol_get("mxl111sf_demod_attach");
    tmp___3 = (struct dvb_frontend *(*)(struct mxl111sf_state * , struct mxl111sf_demod_config * ))tmp___2;
    }
  }
  __a = tmp___3;
  if ((unsigned long )__a != (unsigned long )((struct dvb_frontend *(*)(struct mxl111sf_state * ,
                                                                        struct mxl111sf_demod_config * ))0)) {
    {
    tmp___5 = (*__a)(state, & mxl_demod_config);
    __r = (void *)tmp___5;
    }
    if ((unsigned long )__r == (unsigned long )((void *)0)) {
      {
      __symbol_put("mxl111sf_demod_attach");
      }
    } else {
    }
  } else {
    {
    printk("\vDVB: Unable to find symbol mxl111sf_demod_attach()\n");
    }
  }
  adap->fe[(int )fe_id] = (struct dvb_frontend *)__r;
  if ((unsigned long )adap->fe[(int )fe_id] != (unsigned long )((struct dvb_frontend *)0)) {
    state->num_frontends = (u8 )((int )state->num_frontends + 1);
    adap_state->fe_init = (adap->fe[(int )fe_id])->ops.init;
    (adap->fe[(int )fe_id])->ops.init = & mxl111sf_adap_fe_init;
    adap_state->fe_sleep = (adap->fe[(int )fe_id])->ops.sleep;
    (adap->fe[(int )fe_id])->ops.sleep = & mxl111sf_adap_fe_sleep;
    return (0);
  } else {
  }
  ret = -5;
  fail: ;
  return (ret);
}
}
__inline static int mxl111sf_set_ant_path(struct mxl111sf_state *state , int antpath )
{
  int tmp ;
  {
  {
  tmp = mxl111sf_idac_config(state, 1, 1, antpath == 2 ? 63 : 0, 0);
  }
  return (tmp);
}
}
static int mxl111sf_ant_hunt(struct dvb_frontend *fe )
{
  struct mxl111sf_state *state ;
  struct dvb_usb_adapter const *__mptr ;
  int antctrl ;
  u16 rxPwrA ;
  u16 rxPwr0 ;
  u16 rxPwr1 ;
  u16 rxPwr2 ;
  {
  {
  __mptr = (struct dvb_usb_adapter const *)(fe->dvb)->priv;
  state = (struct mxl111sf_state *)((struct dvb_usb_device *)__mptr + - ((unsigned long )((struct dvb_usb_adapter *)(fe->dvb)->priv)->id * 2400UL + 2344UL))->priv;
  antctrl = dvb_usb_mxl111sf_rfswitch;
  mxl111sf_set_ant_path(state, antctrl != 0 ? antctrl : 1);
  }
  if (antctrl == 0) {
    {
    (*(fe->ops.tuner_ops.get_rf_strength))(fe, & rxPwrA);
    mxl111sf_set_ant_path(state, 1);
    msleep(90U);
    (*(fe->ops.tuner_ops.get_rf_strength))(fe, & rxPwr0);
    mxl111sf_set_ant_path(state, 1);
    msleep(90U);
    (*(fe->ops.tuner_ops.get_rf_strength))(fe, & rxPwr1);
    mxl111sf_set_ant_path(state, 2);
    msleep(90U);
    (*(fe->ops.tuner_ops.get_rf_strength))(fe, & rxPwr2);
    }
    if ((int )rxPwr1 >= (int )rxPwr2) {
      {
      mxl111sf_set_ant_path(state, 1);
      printk("\v%s(%d) FINAL input set to %s rxPwr:%d|%d|%d|%d\n", "mxl111sf_ant_hunt",
             848, (char *)"EXTERNAL", (int )rxPwrA, (int )rxPwr0, (int )rxPwr1, (int )rxPwr2);
      }
    } else {
      {
      printk("\v%s(%d) FINAL input set to %s rxPwr:%d|%d|%d|%d\n", "mxl111sf_ant_hunt",
             852, (char *)"INTERNAL", (int )rxPwrA, (int )rxPwr0, (int )rxPwr1, (int )rxPwr2);
      }
    }
  } else {
  }
  return (0);
}
}
static struct mxl111sf_tuner_config mxl_tuner_config = {6, 0U, & mxl111sf_read_reg, & mxl111sf_write_reg, & mxl111sf_ctrl_program_regs,
    & mxl1x1sf_top_master_ctrl, & mxl111sf_ant_hunt};
static int mxl111sf_attach_tuner(struct dvb_usb_adapter *adap )
{
  struct mxl111sf_state *state ;
  struct dvb_usb_adapter const *__mptr ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  void *__r ;
  struct dvb_frontend *(*__a)(struct dvb_frontend * , struct mxl111sf_state * , struct mxl111sf_tuner_config * ) ;
  void *tmp___1 ;
  struct dvb_frontend *(*tmp___2)(struct dvb_frontend * , struct mxl111sf_state * ,
                                  struct mxl111sf_tuner_config * ) ;
  void *tmp___3 ;
  struct dvb_frontend *tmp___4 ;
  {
  {
  __mptr = (struct dvb_usb_adapter const *)adap;
  state = (struct mxl111sf_state *)((struct dvb_usb_device *)__mptr + - ((unsigned long )adap->id * 2400UL + 2344UL))->priv;
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_attach_tuner";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 873U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s()\n", "mxl111sf_attach_tuner");
    }
  } else {
  }
  i = 0;
  goto ldv_50199;
  ldv_50198:
  {
  __r = (void *)0;
  tmp___3 = __symbol_get("mxl111sf_tuner_attach");
  tmp___2 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct mxl111sf_state * ,
                                                       struct mxl111sf_tuner_config * ))tmp___3) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                               struct mxl111sf_state * ,
                                                                                                                                               struct mxl111sf_tuner_config * ))0);
  }
  if (tmp___2) {
  } else {
    {
    __request_module(1, "symbol:mxl111sf_tuner_attach");
    tmp___1 = __symbol_get("mxl111sf_tuner_attach");
    tmp___2 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct mxl111sf_state * ,
                                        struct mxl111sf_tuner_config * ))tmp___1;
    }
  }
  __a = tmp___2;
  if ((unsigned long )__a != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                        struct mxl111sf_state * ,
                                                                        struct mxl111sf_tuner_config * ))0)) {
    {
    tmp___4 = (*__a)(adap->fe[i], state, & mxl_tuner_config);
    __r = (void *)tmp___4;
    }
    if ((unsigned long )__r == (unsigned long )((void *)0)) {
      {
      __symbol_put("mxl111sf_tuner_attach");
      }
    } else {
    }
  } else {
    {
    printk("\vDVB: Unable to find symbol mxl111sf_tuner_attach()\n");
    }
  }
  if ((unsigned long )__r == (unsigned long )((void *)0)) {
    return (-5);
  } else {
  }
  (adap->fe[i])->ops.read_signal_strength = (adap->fe[i])->ops.tuner_ops.get_rf_strength;
  i = i + 1;
  ldv_50199: ;
  if (i < (int )state->num_frontends) {
    goto ldv_50198;
  } else {
  }
  return (0);
}
}
static u32 mxl111sf_i2c_func(struct i2c_adapter *adapter )
{
  {
  return (1U);
}
}
static struct i2c_algorithm mxl111sf_i2c_algo = {& mxl111sf_i2c_xfer, 0, & mxl111sf_i2c_func, 0, 0};
static int mxl111sf_init(struct dvb_usb_device *d )
{
  struct mxl111sf_state *state ;
  int ret ;
  u8 eeprom[256U] ;
  struct i2c_client c ;
  int ___ret ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  struct lock_class_key __key ;
  int __ret___2 ;
  {
  {
  state = (struct mxl111sf_state *)d->priv;
  ___ret = mxl1x1sf_get_chip_info(state);
  __ret___0 = ___ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_init", ___ret, 905);
    }
  } else {
  }
  if (__ret___0 != 0) {
    if (dvb_usb_mxl111sf_debug != 0) {
      {
      printk("\017%s: failed to get chip info on first probe attempt\n", "mxl111sf_init");
      }
    } else {
    }
    {
    ___ret = mxl1x1sf_get_chip_info(state);
    __ret = ___ret < 0;
    }
    if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_init", ___ret, 905);
      }
    } else {
    }
    if (__ret != 0) {
      {
      printk("\vfailed to get chip info during probe");
      }
    } else
    if (dvb_usb_mxl111sf_debug != 0) {
      {
      printk("\017%s: probe needed a retry in order to succeed.\n", "mxl111sf_init");
      }
    } else {
    }
  } else {
  }
  ret = ___ret;
  __ret___1 = ret < 0;
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_init", ret, 906);
    }
  } else {
  }
  if (__ret___1 != 0) {
    {
    printk("\vfailed to get chip info during probe");
    }
  } else {
  }
  {
  __mutex_init(& state->fe_lock, "&state->fe_lock", & __key);
  }
  if ((unsigned int )state->chip_rev > 1U) {
    {
    mxl111sf_config_pin_mux_modes(state, 7);
    }
  } else {
  }
  {
  c.adapter = & d->i2c_adap;
  c.addr = 80U;
  ret = tveeprom_read(& c, (unsigned char *)(& eeprom), 256);
  __ret___2 = ret < 0;
  }
  if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_init", ret, 918);
    }
  } else {
  }
  if (__ret___2 != 0) {
    return (0);
  } else {
  }
  {
  tveeprom_hauppauge_analog(& c, & state->tv, (unsigned int )eeprom[160] == 132U ? (unsigned char *)(& eeprom) + 160U : (unsigned char *)(& eeprom) + 128U);
  }
  return (0);
}
}
static int mxl111sf_frontend_attach_dvbt(struct dvb_usb_adapter *adap )
{
  int tmp ;
  {
  {
  tmp = mxl111sf_attach_demod(adap, 0);
  }
  return (tmp);
}
}
static int mxl111sf_frontend_attach_atsc(struct dvb_usb_adapter *adap )
{
  int tmp ;
  {
  {
  tmp = mxl111sf_lgdt3305_frontend_attach(adap, 0);
  }
  return (tmp);
}
}
static int mxl111sf_frontend_attach_mh(struct dvb_usb_adapter *adap )
{
  int tmp ;
  {
  {
  tmp = mxl111sf_lg2160_frontend_attach(adap, 0);
  }
  return (tmp);
}
}
static int mxl111sf_frontend_attach_atsc_mh(struct dvb_usb_adapter *adap )
{
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_frontend_attach_atsc_mh";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 955U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s\n", "mxl111sf_frontend_attach_atsc_mh");
    }
  } else {
  }
  {
  ret = mxl111sf_lgdt3305_frontend_attach(adap, 0);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = mxl111sf_attach_demod(adap, 1);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = mxl111sf_lg2160_frontend_attach(adap, 2);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (ret);
}
}
static int mxl111sf_frontend_attach_mercury(struct dvb_usb_adapter *adap )
{
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_frontend_attach_mercury";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 975U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s\n", "mxl111sf_frontend_attach_mercury");
    }
  } else {
  }
  {
  ret = mxl111sf_lgdt3305_frontend_attach(adap, 0);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = mxl111sf_attach_demod(adap, 1);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = mxl111sf_lg2161_ep6_frontend_attach(adap, 2);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (ret);
}
}
static int mxl111sf_frontend_attach_mercury_mh(struct dvb_usb_adapter *adap )
{
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_frontend_attach_mercury_mh";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 995U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s\n", "mxl111sf_frontend_attach_mercury_mh");
    }
  } else {
  }
  {
  ret = mxl111sf_attach_demod(adap, 0);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (dvb_usb_mxl111sf_spi != 0) {
    {
    ret = mxl111sf_lg2161_frontend_attach(adap, 1);
    }
  } else {
    {
    ret = mxl111sf_lg2161_ep6_frontend_attach(adap, 1);
    }
  }
  return (ret);
}
}
static void mxl111sf_stream_config_bulk(struct usb_data_stream_properties *stream ,
                                        u8 endpoint )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_stream_config_bulk";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s: endpoint=%d size=8192\n";
  descriptor.lineno = 1011U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s: endpoint=%d size=8192\n", "mxl111sf_stream_config_bulk",
                       (int )endpoint);
    }
  } else {
  }
  stream->type = 1U;
  stream->count = 5U;
  stream->endpoint = endpoint;
  stream->u.bulk.buffersize = 8192U;
  return;
}
}
static void mxl111sf_stream_config_isoc(struct usb_data_stream_properties *stream ,
                                        u8 endpoint , int framesperurb , int framesize )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_stream_config_isoc";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s: endpoint=%d size=%d\n";
  descriptor.lineno = 1022U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s: endpoint=%d size=%d\n", "mxl111sf_stream_config_isoc",
                       (int )endpoint, framesperurb * framesize);
    }
  } else {
  }
  stream->type = 2U;
  stream->count = 5U;
  stream->endpoint = endpoint;
  stream->u.isoc.framesperurb = framesperurb;
  stream->u.isoc.framesize = framesize;
  stream->u.isoc.interval = 1;
  return;
}
}
static int mxl111sf_get_stream_config_dvbt(struct dvb_frontend *fe , u8 *ts_type ,
                                           struct usb_data_stream_properties *stream )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_get_stream_config_dvbt";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s: fe=%d\n";
  descriptor.lineno = 1040U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s: fe=%d\n", "mxl111sf_get_stream_config_dvbt",
                       fe->id);
    }
  } else {
  }
  *ts_type = 0U;
  if (dvb_usb_mxl111sf_isoc != 0) {
    {
    mxl111sf_stream_config_isoc(stream, 4, 96, 564);
    }
  } else {
    {
    mxl111sf_stream_config_bulk(stream, 4);
    }
  }
  return (0);
}
}
static struct dvb_usb_device_properties mxl111sf_props_dvbt =
     {"dvb_usb_mxl111sf", & __this_module, (short *)(& adapter_nr), (unsigned char)0,
    368U, 2U, 129U, 0U, 0, 0, 0, & mxl111sf_i2c_algo, 1U, 0, {{(unsigned char)0, (unsigned char)0,
                                                               0, 0, {2U, 5U, 6U,
                                                                      {.isoc = {24,
                                                                                3072,
                                                                                1}}}}},
    0, 0, 0, & mxl111sf_frontend_attach_dvbt, 0, & mxl111sf_attach_tuner, 0, 0, & mxl111sf_ep4_streaming_ctrl,
    & mxl111sf_init, 0, 0, & mxl111sf_get_stream_config_dvbt};
static int mxl111sf_get_stream_config_atsc(struct dvb_frontend *fe , u8 *ts_type ,
                                           struct usb_data_stream_properties *stream )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_get_stream_config_atsc";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s: fe=%d\n";
  descriptor.lineno = 1081U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s: fe=%d\n", "mxl111sf_get_stream_config_atsc",
                       fe->id);
    }
  } else {
  }
  *ts_type = 0U;
  if (dvb_usb_mxl111sf_isoc != 0) {
    {
    mxl111sf_stream_config_isoc(stream, 6, 24, 3072);
    }
  } else {
    {
    mxl111sf_stream_config_bulk(stream, 6);
    }
  }
  return (0);
}
}
static struct dvb_usb_device_properties mxl111sf_props_atsc =
     {"dvb_usb_mxl111sf", & __this_module, (short *)(& adapter_nr), (unsigned char)0,
    368U, 2U, 129U, 0U, 0, 0, 0, & mxl111sf_i2c_algo, 1U, 0, {{(unsigned char)0, (unsigned char)0,
                                                               0, 0, {2U, 5U, 6U,
                                                                      {.isoc = {24,
                                                                                3072,
                                                                                1}}}}},
    0, 0, 0, & mxl111sf_frontend_attach_atsc, 0, & mxl111sf_attach_tuner, 0, 0, & mxl111sf_ep6_streaming_ctrl,
    & mxl111sf_init, 0, 0, & mxl111sf_get_stream_config_atsc};
static int mxl111sf_get_stream_config_mh(struct dvb_frontend *fe , u8 *ts_type , struct usb_data_stream_properties *stream )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_get_stream_config_mh";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s: fe=%d\n";
  descriptor.lineno = 1122U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s: fe=%d\n", "mxl111sf_get_stream_config_mh",
                       fe->id);
    }
  } else {
  }
  *ts_type = 2U;
  if (dvb_usb_mxl111sf_isoc != 0) {
    {
    mxl111sf_stream_config_isoc(stream, 5, 96, 200);
    }
  } else {
    {
    mxl111sf_stream_config_bulk(stream, 5);
    }
  }
  return (0);
}
}
static struct dvb_usb_device_properties mxl111sf_props_mh =
     {"dvb_usb_mxl111sf", & __this_module, (short *)(& adapter_nr), (unsigned char)0,
    368U, 2U, 129U, 0U, 0, 0, 0, & mxl111sf_i2c_algo, 1U, 0, {{(unsigned char)0, (unsigned char)0,
                                                               0, 0, {2U, 5U, 6U,
                                                                      {.isoc = {24,
                                                                                3072,
                                                                                1}}}}},
    0, 0, 0, & mxl111sf_frontend_attach_mh, 0, & mxl111sf_attach_tuner, 0, 0, & mxl111sf_ep5_streaming_ctrl,
    & mxl111sf_init, 0, 0, & mxl111sf_get_stream_config_mh};
static int mxl111sf_get_stream_config_atsc_mh(struct dvb_frontend *fe , u8 *ts_type ,
                                              struct usb_data_stream_properties *stream )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_get_stream_config_atsc_mh";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s: fe=%d\n";
  descriptor.lineno = 1163U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s: fe=%d\n", "mxl111sf_get_stream_config_atsc_mh",
                       fe->id);
    }
  } else {
  }
  if (fe->id == 0) {
    *ts_type = 0U;
    if (dvb_usb_mxl111sf_isoc != 0) {
      {
      mxl111sf_stream_config_isoc(stream, 6, 24, 3072);
      }
    } else {
      {
      mxl111sf_stream_config_bulk(stream, 6);
      }
    }
  } else
  if (fe->id == 1) {
    *ts_type = 0U;
    if (dvb_usb_mxl111sf_isoc != 0) {
      {
      mxl111sf_stream_config_isoc(stream, 4, 96, 564);
      }
    } else {
      {
      mxl111sf_stream_config_bulk(stream, 4);
      }
    }
  } else
  if (fe->id == 2) {
    *ts_type = 2U;
    if (dvb_usb_mxl111sf_isoc != 0) {
      {
      mxl111sf_stream_config_isoc(stream, 5, 96, 200);
      }
    } else {
      {
      mxl111sf_stream_config_bulk(stream, 5);
      }
    }
  } else {
  }
  return (0);
}
}
static int mxl111sf_streaming_ctrl_atsc_mh(struct dvb_frontend *fe , int onoff )
{
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_streaming_ctrl_atsc_mh";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s: fe=%d onoff=%d\n";
  descriptor.lineno = 1189U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s: fe=%d onoff=%d\n", "mxl111sf_streaming_ctrl_atsc_mh",
                       fe->id, onoff);
    }
  } else {
  }
  if (fe->id == 0) {
    {
    tmp___0 = mxl111sf_ep6_streaming_ctrl(fe, onoff);
    }
    return (tmp___0);
  } else
  if (fe->id == 1) {
    {
    tmp___1 = mxl111sf_ep4_streaming_ctrl(fe, onoff);
    }
    return (tmp___1);
  } else
  if (fe->id == 2) {
    {
    tmp___2 = mxl111sf_ep5_streaming_ctrl(fe, onoff);
    }
    return (tmp___2);
  } else {
  }
  return (0);
}
}
static struct dvb_usb_device_properties mxl111sf_props_atsc_mh =
     {"dvb_usb_mxl111sf", & __this_module, (short *)(& adapter_nr), (unsigned char)0,
    368U, 2U, 129U, 0U, 0, 0, 0, & mxl111sf_i2c_algo, 1U, 0, {{(unsigned char)0, (unsigned char)0,
                                                               0, 0, {2U, 5U, 6U,
                                                                      {.isoc = {24,
                                                                                3072,
                                                                                1}}}}},
    0, 0, 0, & mxl111sf_frontend_attach_atsc_mh, 0, & mxl111sf_attach_tuner, 0, 0,
    & mxl111sf_streaming_ctrl_atsc_mh, & mxl111sf_init, 0, 0, & mxl111sf_get_stream_config_atsc_mh};
static int mxl111sf_get_stream_config_mercury(struct dvb_frontend *fe , u8 *ts_type ,
                                              struct usb_data_stream_properties *stream )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_get_stream_config_mercury";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s: fe=%d\n";
  descriptor.lineno = 1233U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s: fe=%d\n", "mxl111sf_get_stream_config_mercury",
                       fe->id);
    }
  } else {
  }
  if (fe->id == 0) {
    *ts_type = 0U;
    if (dvb_usb_mxl111sf_isoc != 0) {
      {
      mxl111sf_stream_config_isoc(stream, 6, 24, 3072);
      }
    } else {
      {
      mxl111sf_stream_config_bulk(stream, 6);
      }
    }
  } else
  if (fe->id == 1) {
    *ts_type = 0U;
    if (dvb_usb_mxl111sf_isoc != 0) {
      {
      mxl111sf_stream_config_isoc(stream, 4, 96, 564);
      }
    } else {
      {
      mxl111sf_stream_config_bulk(stream, 4);
      }
    }
  } else
  if (fe->id == 2 && dvb_usb_mxl111sf_spi != 0) {
    *ts_type = 2U;
    if (dvb_usb_mxl111sf_isoc != 0) {
      {
      mxl111sf_stream_config_isoc(stream, 5, 96, 200);
      }
    } else {
      {
      mxl111sf_stream_config_bulk(stream, 5);
      }
    }
  } else
  if (fe->id == 2 && dvb_usb_mxl111sf_spi == 0) {
    *ts_type = 2U;
    if (dvb_usb_mxl111sf_isoc != 0) {
      {
      mxl111sf_stream_config_isoc(stream, 6, 24, 3072);
      }
    } else {
      {
      mxl111sf_stream_config_bulk(stream, 6);
      }
    }
  } else {
  }
  return (0);
}
}
static int mxl111sf_streaming_ctrl_mercury(struct dvb_frontend *fe , int onoff )
{
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_streaming_ctrl_mercury";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s: fe=%d onoff=%d\n";
  descriptor.lineno = 1265U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s: fe=%d onoff=%d\n", "mxl111sf_streaming_ctrl_mercury",
                       fe->id, onoff);
    }
  } else {
  }
  if (fe->id == 0) {
    {
    tmp___0 = mxl111sf_ep6_streaming_ctrl(fe, onoff);
    }
    return (tmp___0);
  } else
  if (fe->id == 1) {
    {
    tmp___1 = mxl111sf_ep4_streaming_ctrl(fe, onoff);
    }
    return (tmp___1);
  } else
  if (fe->id == 2 && dvb_usb_mxl111sf_spi != 0) {
    {
    tmp___2 = mxl111sf_ep5_streaming_ctrl(fe, onoff);
    }
    return (tmp___2);
  } else
  if (fe->id == 2 && dvb_usb_mxl111sf_spi == 0) {
    {
    tmp___3 = mxl111sf_ep6_streaming_ctrl(fe, onoff);
    }
    return (tmp___3);
  } else {
  }
  return (0);
}
}
static struct dvb_usb_device_properties mxl111sf_props_mercury =
     {"dvb_usb_mxl111sf", & __this_module, (short *)(& adapter_nr), (unsigned char)0,
    368U, 2U, 129U, 0U, 0, 0, 0, & mxl111sf_i2c_algo, 1U, 0, {{(unsigned char)0, (unsigned char)0,
                                                               0, 0, {2U, 5U, 6U,
                                                                      {.isoc = {24,
                                                                                3072,
                                                                                1}}}}},
    0, 0, 0, & mxl111sf_frontend_attach_mercury, 0, & mxl111sf_attach_tuner, 0, 0,
    & mxl111sf_streaming_ctrl_mercury, & mxl111sf_init, 0, 0, & mxl111sf_get_stream_config_mercury};
static int mxl111sf_get_stream_config_mercury_mh(struct dvb_frontend *fe , u8 *ts_type ,
                                                 struct usb_data_stream_properties *stream )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_get_stream_config_mercury_mh";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s: fe=%d\n";
  descriptor.lineno = 1311U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s: fe=%d\n", "mxl111sf_get_stream_config_mercury_mh",
                       fe->id);
    }
  } else {
  }
  if (fe->id == 0) {
    *ts_type = 0U;
    if (dvb_usb_mxl111sf_isoc != 0) {
      {
      mxl111sf_stream_config_isoc(stream, 4, 96, 564);
      }
    } else {
      {
      mxl111sf_stream_config_bulk(stream, 4);
      }
    }
  } else
  if (fe->id == 1 && dvb_usb_mxl111sf_spi != 0) {
    *ts_type = 2U;
    if (dvb_usb_mxl111sf_isoc != 0) {
      {
      mxl111sf_stream_config_isoc(stream, 5, 96, 200);
      }
    } else {
      {
      mxl111sf_stream_config_bulk(stream, 5);
      }
    }
  } else
  if (fe->id == 1 && dvb_usb_mxl111sf_spi == 0) {
    *ts_type = 2U;
    if (dvb_usb_mxl111sf_isoc != 0) {
      {
      mxl111sf_stream_config_isoc(stream, 6, 24, 3072);
      }
    } else {
      {
      mxl111sf_stream_config_bulk(stream, 6);
      }
    }
  } else {
  }
  return (0);
}
}
static int mxl111sf_streaming_ctrl_mercury_mh(struct dvb_frontend *fe , int onoff )
{
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  descriptor.modname = "dvb_usb_mxl111sf";
  descriptor.function = "mxl111sf_streaming_ctrl_mercury_mh";
  descriptor.filename = "drivers/media/usb/dvb-usb-v2/mxl111sf.c";
  descriptor.format = "%s: fe=%d onoff=%d\n";
  descriptor.lineno = 1337U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s: fe=%d onoff=%d\n", "mxl111sf_streaming_ctrl_mercury_mh",
                       fe->id, onoff);
    }
  } else {
  }
  if (fe->id == 0) {
    {
    tmp___0 = mxl111sf_ep4_streaming_ctrl(fe, onoff);
    }
    return (tmp___0);
  } else
  if (fe->id == 1 && dvb_usb_mxl111sf_spi != 0) {
    {
    tmp___1 = mxl111sf_ep5_streaming_ctrl(fe, onoff);
    }
    return (tmp___1);
  } else
  if (fe->id == 1 && dvb_usb_mxl111sf_spi == 0) {
    {
    tmp___2 = mxl111sf_ep6_streaming_ctrl(fe, onoff);
    }
    return (tmp___2);
  } else {
  }
  return (0);
}
}
static struct dvb_usb_device_properties mxl111sf_props_mercury_mh =
     {"dvb_usb_mxl111sf", & __this_module, (short *)(& adapter_nr), (unsigned char)0,
    368U, 2U, 129U, 0U, 0, 0, 0, & mxl111sf_i2c_algo, 1U, 0, {{(unsigned char)0, (unsigned char)0,
                                                               0, 0, {2U, 5U, 6U,
                                                                      {.isoc = {24,
                                                                                3072,
                                                                                1}}}}},
    0, 0, 0, & mxl111sf_frontend_attach_mercury_mh, 0, & mxl111sf_attach_tuner, 0,
    0, & mxl111sf_streaming_ctrl_mercury_mh, & mxl111sf_init, 0, 0, & mxl111sf_get_stream_config_mercury_mh};
static struct dvb_usb_driver_info const __constr_expr_0 = {"Hauppauge 126xxx ATSC+", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_atsc_mh)};
static struct dvb_usb_driver_info const __constr_expr_1 = {"Hauppauge 126xxx ATSC", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_atsc)};
static struct dvb_usb_driver_info const __constr_expr_2 = {"HCW 126xxx", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_mh)};
static struct dvb_usb_driver_info const __constr_expr_3 = {"Hauppauge 126xxx ATSC+", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_atsc_mh)};
static struct dvb_usb_driver_info const __constr_expr_4 = {"Hauppauge 126xxx DVBT", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_dvbt)};
static struct dvb_usb_driver_info const __constr_expr_5 = {"Hauppauge 126xxx ATSC", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_atsc)};
static struct dvb_usb_driver_info const __constr_expr_6 = {"HCW 126xxx", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_mh)};
static struct dvb_usb_driver_info const __constr_expr_7 = {"Hauppauge 126xxx ATSC+", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_atsc_mh)};
static struct dvb_usb_driver_info const __constr_expr_8 = {"Hauppauge 126xxx DVBT", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_dvbt)};
static struct dvb_usb_driver_info const __constr_expr_9 = {"Hauppauge 126xxx ATSC+", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_atsc_mh)};
static struct dvb_usb_driver_info const __constr_expr_10 = {"Hauppauge 126xxx ATSC+", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_atsc_mh)};
static struct dvb_usb_driver_info const __constr_expr_11 = {"Hauppauge 117xxx ATSC+", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_atsc_mh)};
static struct dvb_usb_driver_info const __constr_expr_12 = {"Hauppauge 126xxx ATSC", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_atsc)};
static struct dvb_usb_driver_info const __constr_expr_13 = {"HCW 117xxx", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_mh)};
static struct dvb_usb_driver_info const __constr_expr_14 = {"Hauppauge 117xxx ATSC+", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_atsc_mh)};
static struct dvb_usb_driver_info const __constr_expr_15 = {"Hauppauge 117xxx DVBT", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_dvbt)};
static struct dvb_usb_driver_info const __constr_expr_16 = {"Hauppauge 117xxx ATSC+", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_atsc_mh)};
static struct dvb_usb_driver_info const __constr_expr_17 = {"Hauppauge 117xxx ATSC+", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_atsc_mh)};
static struct dvb_usb_driver_info const __constr_expr_18 = {"Hauppauge 117xxx DVBT", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_dvbt)};
static struct dvb_usb_driver_info const __constr_expr_19 = {"Hauppauge Mercury", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_mercury)};
static struct dvb_usb_driver_info const __constr_expr_20 = {"Hauppauge 138xxx DVBT", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_dvbt)};
static struct dvb_usb_driver_info const __constr_expr_21 = {"Hauppauge Mercury", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_mercury)};
static struct dvb_usb_driver_info const __constr_expr_22 = {"Hauppauge 138xxx DVBT", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_dvbt)};
static struct dvb_usb_driver_info const __constr_expr_23 = {"Hauppauge Mercury", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_mercury)};
static struct dvb_usb_driver_info const __constr_expr_24 = {"Hauppauge 138xxx DVBT", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_dvbt)};
static struct dvb_usb_driver_info const __constr_expr_25 = {"Hauppauge Mercury", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_mercury)};
static struct dvb_usb_driver_info const __constr_expr_26 = {"Hauppauge 138xxx DVBT", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_dvbt)};
static struct dvb_usb_driver_info const __constr_expr_27 = {"Hauppauge Mercury", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_mercury)};
static struct dvb_usb_driver_info const __constr_expr_28 = {"Hauppauge 126xxx", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_mercury_mh)};
static struct dvb_usb_driver_info const __constr_expr_29 = {"Hauppauge WinTV-Aero-M", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_mercury)};
static struct dvb_usb_driver_info const __constr_expr_30 = {"Hauppauge 126xxx", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_mercury_mh)};
static struct dvb_usb_driver_info const __constr_expr_31 = {"Hauppauge WinTV-Aero-M", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_mercury)};
static struct dvb_usb_driver_info const __constr_expr_32 = {"Hauppauge 117xxx ATSC+", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_atsc_mh)};
static struct dvb_usb_driver_info const __constr_expr_33 = {"Hauppauge 117xxx ATSC+", (char const *)0, (struct dvb_usb_device_properties const *)(& mxl111sf_props_atsc_mh)};
static struct usb_device_id const mxl111sf_id_table[35U] =
  { {3U, 8256U, 50688U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_0)},
        {3U, 8256U, 50689U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_1)},
        {3U, 8256U, 50690U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_2)},
        {3U, 8256U, 50691U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_3)},
        {3U, 8256U, 50692U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_4)},
        {3U, 8256U, 50697U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_5)},
        {3U, 8256U, 50698U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_6)},
        {3U, 8256U, 50699U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_7)},
        {3U, 8256U, 50700U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_8)},
        {3U, 8256U, 50771U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_9)},
        {3U, 8256U, 50779U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_10)},
        {3U, 8256U, 46848U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_11)},
        {3U, 8256U, 46849U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_12)},
        {3U, 8256U, 46850U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_13)},
        {3U, 8256U, 46851U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_14)},
        {3U, 8256U, 46852U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_15)},
        {3U, 8256U, 46931U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_16)},
        {3U, 8256U, 46947U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_17)},
        {3U, 8256U, 46948U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_18)},
        {3U, 8256U, 55379U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_19)},
        {3U, 8256U, 55380U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_20)},
        {3U, 8256U, 55395U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_21)},
        {3U, 8256U, 55396U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_22)},
        {3U, 8256U, 55507U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_23)},
        {3U, 8256U, 55508U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_24)},
        {3U, 8256U, 55523U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_25)},
        {3U, 8256U, 55524U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_26)},
        {3U, 8256U, 55551U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_27)},
        {3U, 8256U, 50706U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_28)},
        {3U, 8256U, 50707U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_29)},
        {3U, 8256U, 50714U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_30)},
        {3U, 8256U, 50715U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_31)},
        {3U, 8256U, 46935U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_32)},
        {3U, 8256U, 46951U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_33)}};
struct usb_device_id const __mod_usb__mxl111sf_id_table_device_table[35U] ;
static struct usb_driver mxl111sf_usb_driver =
     {"dvb_usb_mxl111sf", & dvb_usbv2_probe, & dvb_usbv2_disconnect, 0, & dvb_usbv2_suspend,
    & dvb_usbv2_resume, 0, 0, 0, (struct usb_device_id const *)(& mxl111sf_id_table),
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                 0, 0, 0, 0, 0, 0,
                                                                 0, 0, 0, 0}, 0},
    1U, (unsigned char)0, (unsigned char)0, 1U};
static int mxl111sf_usb_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv_usb_register_driver_123(& mxl111sf_usb_driver, & __this_module, "dvb_usb_mxl111sf");
  }
  return (tmp);
}
}
static void mxl111sf_usb_driver_exit(void)
{
  {
  {
  ldv_usb_deregister_124(& mxl111sf_usb_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_mxl111sf_usb_driver_exit_11_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_mxl111sf_usb_driver_init_11_11(int (*arg0)(void) ) ;
void ldv_dispatch_deregister_9_1(struct usb_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_3_11_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_4_11_5(void) ;
void ldv_dispatch_instance_deregister_8_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_instance_register_8_3(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_10_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_3_11_6(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_4_11_7(void) ;
void ldv_dummy_resourceless_instance_callback_0_11(int (*arg0)(struct dvb_usb_device * ) ,
                                                   struct dvb_usb_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_12(int (*arg0)(struct i2c_adapter * ,
                                                               struct i2c_msg * ,
                                                               int ) , struct i2c_adapter *arg1 ,
                                                   struct i2c_msg *arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_0_15(int (*arg0)(struct dvb_frontend * ,
                                                               int ) , struct dvb_frontend *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_0_18(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                   struct dvb_usb_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_3(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                  struct dvb_usb_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_7(unsigned int (*arg0)(struct i2c_adapter * ) ,
                                                  struct i2c_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_8(int (*arg0)(struct dvb_frontend * ,
                                                              unsigned char * , struct usb_data_stream_properties * ) ,
                                                  struct dvb_frontend *arg1 , unsigned char *arg2 ,
                                                  struct usb_data_stream_properties *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_11(int (*arg0)(struct dvb_usb_device * ) ,
                                                   struct dvb_usb_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_12(int (*arg0)(struct i2c_adapter * ,
                                                               struct i2c_msg * ,
                                                               int ) , struct i2c_adapter *arg1 ,
                                                   struct i2c_msg *arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_15(int (*arg0)(struct dvb_frontend * ,
                                                               int ) , struct dvb_frontend *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_18(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                   struct dvb_usb_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                  struct dvb_usb_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_7(unsigned int (*arg0)(struct i2c_adapter * ) ,
                                                  struct i2c_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_8(int (*arg0)(struct dvb_frontend * ,
                                                              unsigned char * , struct usb_data_stream_properties * ) ,
                                                  struct dvb_frontend *arg1 , unsigned char *arg2 ,
                                                  struct usb_data_stream_properties *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_11(int (*arg0)(struct dvb_usb_device * ) ,
                                                   struct dvb_usb_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_12(int (*arg0)(struct i2c_adapter * ,
                                                               struct i2c_msg * ,
                                                               int ) , struct i2c_adapter *arg1 ,
                                                   struct i2c_msg *arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_15(int (*arg0)(struct dvb_frontend * ,
                                                               int ) , struct dvb_frontend *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_18(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                   struct dvb_usb_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                  struct dvb_usb_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_7(unsigned int (*arg0)(struct i2c_adapter * ) ,
                                                  struct i2c_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_8(int (*arg0)(struct dvb_frontend * ,
                                                              unsigned char * , struct usb_data_stream_properties * ) ,
                                                  struct dvb_frontend *arg1 , unsigned char *arg2 ,
                                                  struct usb_data_stream_properties *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_11(int (*arg0)(struct dvb_usb_device * ) ,
                                                   struct dvb_usb_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_12(int (*arg0)(struct i2c_adapter * ,
                                                               struct i2c_msg * ,
                                                               int ) , struct i2c_adapter *arg1 ,
                                                   struct i2c_msg *arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_15(int (*arg0)(struct dvb_frontend * ,
                                                               int ) , struct dvb_frontend *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_18(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                   struct dvb_usb_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                  struct dvb_usb_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_7(unsigned int (*arg0)(struct i2c_adapter * ) ,
                                                  struct i2c_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_8(int (*arg0)(struct dvb_frontend * ,
                                                              unsigned char * , struct usb_data_stream_properties * ) ,
                                                  struct dvb_frontend *arg1 , unsigned char *arg2 ,
                                                  struct usb_data_stream_properties *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_11(int (*arg0)(struct dvb_usb_device * ) ,
                                                   struct dvb_usb_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_12(int (*arg0)(struct i2c_adapter * ,
                                                               struct i2c_msg * ,
                                                               int ) , struct i2c_adapter *arg1 ,
                                                   struct i2c_msg *arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_15(int (*arg0)(struct dvb_frontend * ,
                                                               int ) , struct dvb_frontend *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_18(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                   struct dvb_usb_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                  struct dvb_usb_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_7(unsigned int (*arg0)(struct i2c_adapter * ) ,
                                                  struct i2c_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_8(int (*arg0)(struct dvb_frontend * ,
                                                              unsigned char * , struct usb_data_stream_properties * ) ,
                                                  struct dvb_frontend *arg1 , unsigned char *arg2 ,
                                                  struct usb_data_stream_properties *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_11(int (*arg0)(struct dvb_usb_device * ) ,
                                                   struct dvb_usb_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_12(int (*arg0)(struct i2c_adapter * ,
                                                               struct i2c_msg * ,
                                                               int ) , struct i2c_adapter *arg1 ,
                                                   struct i2c_msg *arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_15(int (*arg0)(struct dvb_frontend * ,
                                                               int ) , struct dvb_frontend *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_18(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                   struct dvb_usb_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                  struct dvb_usb_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_7(unsigned int (*arg0)(struct i2c_adapter * ) ,
                                                  struct i2c_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_8(int (*arg0)(struct dvb_frontend * ,
                                                              unsigned char * , struct usb_data_stream_properties * ) ,
                                                  struct dvb_frontend *arg1 , unsigned char *arg2 ,
                                                  struct usb_data_stream_properties *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_11(int (*arg0)(struct mxl111sf_state * ,
                                                               int ) , struct mxl111sf_state *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_6_14(int (*arg0)(struct mxl111sf_state * ,
                                                               unsigned char , unsigned char ) ,
                                                   struct mxl111sf_state *arg1 , unsigned char arg2 ,
                                                   unsigned char arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_3(int (*arg0)(struct dvb_frontend * ) ,
                                                  struct dvb_frontend *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_7(int (*arg0)(struct mxl111sf_state * ,
                                                              struct mxl111sf_reg_ctrl_info * ) ,
                                                  struct mxl111sf_state *arg1 , struct mxl111sf_reg_ctrl_info *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_6_8(int (*arg0)(struct mxl111sf_state * ,
                                                              unsigned char , unsigned char * ) ,
                                                  struct mxl111sf_state *arg1 , unsigned char arg2 ,
                                                  unsigned char *arg3 ) ;
void ldv_entry_EMGentry_11(void *arg0 ) ;
int main(void) ;
void ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_0(void *arg0 ) ;
void ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_1(void *arg0 ) ;
void ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_2(void *arg0 ) ;
void ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_3(void *arg0 ) ;
void ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_4(void *arg0 ) ;
void ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_5(void *arg0 ) ;
void ldv_struct_mxl111sf_tuner_config_dummy_resourceless_instance_6(void *arg0 ) ;
void ldv_usb_deregister(void *arg0 , struct usb_driver *arg1 ) ;
void ldv_usb_dummy_factory_8(void *arg0 ) ;
void ldv_usb_instance_post_7_9(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_pre_7_10(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
int ldv_usb_instance_probe_7_13(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 ) ;
void ldv_usb_instance_release_7_4(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_resume_7_7(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_suspend_7_8(int (*arg0)(struct usb_interface * , struct pm_message ) ,
                                  struct usb_interface *arg1 , struct pm_message *arg2 ) ;
int ldv_usb_register_driver(int arg0 , struct usb_driver *arg1 , struct module *arg2 ,
                            char *arg3 ) ;
void ldv_usb_usb_instance_7(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_11 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
struct ldv_thread ldv_thread_8 ;
void ldv_EMGentry_exit_mxl111sf_usb_driver_exit_11_2(void (*arg0)(void) )
{
  {
  {
  mxl111sf_usb_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_mxl111sf_usb_driver_init_11_11(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = mxl111sf_usb_driver_init();
  }
  return (tmp);
}
}
void ldv_dispatch_deregister_9_1(struct usb_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_3_11_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_4_11_5(void)
{
  {
  return;
}
}
void ldv_dispatch_instance_deregister_8_2(struct usb_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_instance_register_8_3(struct usb_driver *arg0 )
{
  struct ldv_struct_usb_instance_7 *cf_arg_7 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_7 = (struct ldv_struct_usb_instance_7 *)tmp;
  cf_arg_7->arg0 = arg0;
  ldv_usb_usb_instance_7((void *)cf_arg_7);
  }
  return;
}
}
void ldv_dispatch_register_10_2(struct usb_driver *arg0 )
{
  struct ldv_struct_usb_instance_7 *cf_arg_8 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_8 = (struct ldv_struct_usb_instance_7 *)tmp;
  cf_arg_8->arg0 = arg0;
  ldv_usb_dummy_factory_8((void *)cf_arg_8);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_3_11_6(void)
{
  struct ldv_struct_EMGentry_11 *cf_arg_0 ;
  struct ldv_struct_EMGentry_11 *cf_arg_1 ;
  struct ldv_struct_EMGentry_11 *cf_arg_2 ;
  struct ldv_struct_EMGentry_11 *cf_arg_3 ;
  struct ldv_struct_EMGentry_11 *cf_arg_4 ;
  struct ldv_struct_EMGentry_11 *cf_arg_5 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_0 = (struct ldv_struct_EMGentry_11 *)tmp;
  ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_0((void *)cf_arg_0);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_1 = (struct ldv_struct_EMGentry_11 *)tmp___0;
  ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_1((void *)cf_arg_1);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_2 = (struct ldv_struct_EMGentry_11 *)tmp___1;
  ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_2((void *)cf_arg_2);
  tmp___2 = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_EMGentry_11 *)tmp___2;
  ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_3((void *)cf_arg_3);
  tmp___3 = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_EMGentry_11 *)tmp___3;
  ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_4((void *)cf_arg_4);
  tmp___4 = ldv_xmalloc(4UL);
  cf_arg_5 = (struct ldv_struct_EMGentry_11 *)tmp___4;
  ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_5((void *)cf_arg_5);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_4_11_7(void)
{
  struct ldv_struct_EMGentry_11 *cf_arg_6 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_6 = (struct ldv_struct_EMGentry_11 *)tmp;
  ldv_struct_mxl111sf_tuner_config_dummy_resourceless_instance_6((void *)cf_arg_6);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_11(int (*arg0)(struct dvb_usb_device * ) ,
                                                   struct dvb_usb_device *arg1 )
{
  {
  {
  mxl111sf_init(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_12(int (*arg0)(struct i2c_adapter * ,
                                                               struct i2c_msg * ,
                                                               int ) , struct i2c_adapter *arg1 ,
                                                   struct i2c_msg *arg2 , int arg3 )
{
  {
  {
  mxl111sf_i2c_xfer(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_15(int (*arg0)(struct dvb_frontend * ,
                                                               int ) , struct dvb_frontend *arg1 ,
                                                   int arg2 )
{
  {
  {
  mxl111sf_ep6_streaming_ctrl(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_18(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                   struct dvb_usb_adapter *arg1 )
{
  {
  {
  mxl111sf_attach_tuner(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_3(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                  struct dvb_usb_adapter *arg1 )
{
  {
  {
  mxl111sf_frontend_attach_atsc(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_7(unsigned int (*arg0)(struct i2c_adapter * ) ,
                                                  struct i2c_adapter *arg1 )
{
  {
  {
  mxl111sf_i2c_func(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_8(int (*arg0)(struct dvb_frontend * ,
                                                              unsigned char * , struct usb_data_stream_properties * ) ,
                                                  struct dvb_frontend *arg1 , unsigned char *arg2 ,
                                                  struct usb_data_stream_properties *arg3 )
{
  {
  {
  mxl111sf_get_stream_config_atsc(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_11(int (*arg0)(struct dvb_usb_device * ) ,
                                                   struct dvb_usb_device *arg1 )
{
  {
  {
  mxl111sf_init(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_12(int (*arg0)(struct i2c_adapter * ,
                                                               struct i2c_msg * ,
                                                               int ) , struct i2c_adapter *arg1 ,
                                                   struct i2c_msg *arg2 , int arg3 )
{
  {
  {
  mxl111sf_i2c_xfer(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_15(int (*arg0)(struct dvb_frontend * ,
                                                               int ) , struct dvb_frontend *arg1 ,
                                                   int arg2 )
{
  {
  {
  mxl111sf_streaming_ctrl_atsc_mh(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_18(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                   struct dvb_usb_adapter *arg1 )
{
  {
  {
  mxl111sf_attach_tuner(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                  struct dvb_usb_adapter *arg1 )
{
  {
  {
  mxl111sf_frontend_attach_atsc_mh(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_7(unsigned int (*arg0)(struct i2c_adapter * ) ,
                                                  struct i2c_adapter *arg1 )
{
  {
  {
  mxl111sf_i2c_func(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_8(int (*arg0)(struct dvb_frontend * ,
                                                              unsigned char * , struct usb_data_stream_properties * ) ,
                                                  struct dvb_frontend *arg1 , unsigned char *arg2 ,
                                                  struct usb_data_stream_properties *arg3 )
{
  {
  {
  mxl111sf_get_stream_config_atsc_mh(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_11(int (*arg0)(struct dvb_usb_device * ) ,
                                                   struct dvb_usb_device *arg1 )
{
  {
  {
  mxl111sf_init(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_12(int (*arg0)(struct i2c_adapter * ,
                                                               struct i2c_msg * ,
                                                               int ) , struct i2c_adapter *arg1 ,
                                                   struct i2c_msg *arg2 , int arg3 )
{
  {
  {
  mxl111sf_i2c_xfer(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_15(int (*arg0)(struct dvb_frontend * ,
                                                               int ) , struct dvb_frontend *arg1 ,
                                                   int arg2 )
{
  {
  {
  mxl111sf_ep4_streaming_ctrl(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_18(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                   struct dvb_usb_adapter *arg1 )
{
  {
  {
  mxl111sf_attach_tuner(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                  struct dvb_usb_adapter *arg1 )
{
  {
  {
  mxl111sf_frontend_attach_dvbt(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_7(unsigned int (*arg0)(struct i2c_adapter * ) ,
                                                  struct i2c_adapter *arg1 )
{
  {
  {
  mxl111sf_i2c_func(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_8(int (*arg0)(struct dvb_frontend * ,
                                                              unsigned char * , struct usb_data_stream_properties * ) ,
                                                  struct dvb_frontend *arg1 , unsigned char *arg2 ,
                                                  struct usb_data_stream_properties *arg3 )
{
  {
  {
  mxl111sf_get_stream_config_dvbt(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_11(int (*arg0)(struct dvb_usb_device * ) ,
                                                   struct dvb_usb_device *arg1 )
{
  {
  {
  mxl111sf_init(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_12(int (*arg0)(struct i2c_adapter * ,
                                                               struct i2c_msg * ,
                                                               int ) , struct i2c_adapter *arg1 ,
                                                   struct i2c_msg *arg2 , int arg3 )
{
  {
  {
  mxl111sf_i2c_xfer(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_15(int (*arg0)(struct dvb_frontend * ,
                                                               int ) , struct dvb_frontend *arg1 ,
                                                   int arg2 )
{
  {
  {
  mxl111sf_streaming_ctrl_mercury(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_18(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                   struct dvb_usb_adapter *arg1 )
{
  {
  {
  mxl111sf_attach_tuner(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                  struct dvb_usb_adapter *arg1 )
{
  {
  {
  mxl111sf_frontend_attach_mercury(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_7(unsigned int (*arg0)(struct i2c_adapter * ) ,
                                                  struct i2c_adapter *arg1 )
{
  {
  {
  mxl111sf_i2c_func(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_8(int (*arg0)(struct dvb_frontend * ,
                                                              unsigned char * , struct usb_data_stream_properties * ) ,
                                                  struct dvb_frontend *arg1 , unsigned char *arg2 ,
                                                  struct usb_data_stream_properties *arg3 )
{
  {
  {
  mxl111sf_get_stream_config_mercury(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_11(int (*arg0)(struct dvb_usb_device * ) ,
                                                   struct dvb_usb_device *arg1 )
{
  {
  {
  mxl111sf_init(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_12(int (*arg0)(struct i2c_adapter * ,
                                                               struct i2c_msg * ,
                                                               int ) , struct i2c_adapter *arg1 ,
                                                   struct i2c_msg *arg2 , int arg3 )
{
  {
  {
  mxl111sf_i2c_xfer(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_15(int (*arg0)(struct dvb_frontend * ,
                                                               int ) , struct dvb_frontend *arg1 ,
                                                   int arg2 )
{
  {
  {
  mxl111sf_streaming_ctrl_mercury_mh(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_18(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                   struct dvb_usb_adapter *arg1 )
{
  {
  {
  mxl111sf_attach_tuner(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                  struct dvb_usb_adapter *arg1 )
{
  {
  {
  mxl111sf_frontend_attach_mercury_mh(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_7(unsigned int (*arg0)(struct i2c_adapter * ) ,
                                                  struct i2c_adapter *arg1 )
{
  {
  {
  mxl111sf_i2c_func(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_8(int (*arg0)(struct dvb_frontend * ,
                                                              unsigned char * , struct usb_data_stream_properties * ) ,
                                                  struct dvb_frontend *arg1 , unsigned char *arg2 ,
                                                  struct usb_data_stream_properties *arg3 )
{
  {
  {
  mxl111sf_get_stream_config_mercury_mh(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_11(int (*arg0)(struct dvb_usb_device * ) ,
                                                   struct dvb_usb_device *arg1 )
{
  {
  {
  mxl111sf_init(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_12(int (*arg0)(struct i2c_adapter * ,
                                                               struct i2c_msg * ,
                                                               int ) , struct i2c_adapter *arg1 ,
                                                   struct i2c_msg *arg2 , int arg3 )
{
  {
  {
  mxl111sf_i2c_xfer(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_15(int (*arg0)(struct dvb_frontend * ,
                                                               int ) , struct dvb_frontend *arg1 ,
                                                   int arg2 )
{
  {
  {
  mxl111sf_streaming_ctrl_mercury_mh(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_18(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                   struct dvb_usb_adapter *arg1 )
{
  {
  {
  mxl111sf_attach_tuner(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct dvb_usb_adapter * ) ,
                                                  struct dvb_usb_adapter *arg1 )
{
  {
  {
  mxl111sf_frontend_attach_mh(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_7(unsigned int (*arg0)(struct i2c_adapter * ) ,
                                                  struct i2c_adapter *arg1 )
{
  {
  {
  mxl111sf_i2c_func(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_8(int (*arg0)(struct dvb_frontend * ,
                                                              unsigned char * , struct usb_data_stream_properties * ) ,
                                                  struct dvb_frontend *arg1 , unsigned char *arg2 ,
                                                  struct usb_data_stream_properties *arg3 )
{
  {
  {
  mxl111sf_get_stream_config_mh(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_11(int (*arg0)(struct mxl111sf_state * ,
                                                               int ) , struct mxl111sf_state *arg1 ,
                                                   int arg2 )
{
  {
  {
  mxl1x1sf_top_master_ctrl(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_14(int (*arg0)(struct mxl111sf_state * ,
                                                               unsigned char , unsigned char ) ,
                                                   struct mxl111sf_state *arg1 , unsigned char arg2 ,
                                                   unsigned char arg3 )
{
  {
  {
  mxl111sf_write_reg(arg1, (int )arg2, (int )arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_3(int (*arg0)(struct dvb_frontend * ) ,
                                                  struct dvb_frontend *arg1 )
{
  {
  {
  mxl111sf_ant_hunt(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_7(int (*arg0)(struct mxl111sf_state * ,
                                                              struct mxl111sf_reg_ctrl_info * ) ,
                                                  struct mxl111sf_state *arg1 , struct mxl111sf_reg_ctrl_info *arg2 )
{
  {
  {
  mxl111sf_ctrl_program_regs(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_8(int (*arg0)(struct mxl111sf_state * ,
                                                              unsigned char , unsigned char * ) ,
                                                  struct mxl111sf_state *arg1 , unsigned char arg2 ,
                                                  unsigned char *arg3 )
{
  {
  {
  mxl111sf_read_reg(arg1, (int )arg2, arg3);
  }
  return;
}
}
void ldv_entry_EMGentry_11(void *arg0 )
{
  void (*ldv_11_exit_mxl111sf_usb_driver_exit_default)(void) ;
  int (*ldv_11_init_mxl111sf_usb_driver_init_default)(void) ;
  int ldv_11_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_11_ret_default = ldv_EMGentry_init_mxl111sf_usb_driver_init_11_11(ldv_11_init_mxl111sf_usb_driver_init_default);
  ldv_11_ret_default = ldv_ldv_post_init_125(ldv_11_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_11_ret_default != 0);
    ldv_ldv_check_final_state_126();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_11_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_dummy_resourceless_instance_4_11_7();
      ldv_dispatch_register_dummy_resourceless_instance_3_11_6();
      ldv_dispatch_deregister_dummy_resourceless_instance_4_11_5();
      ldv_dispatch_deregister_dummy_resourceless_instance_3_11_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_mxl111sf_usb_driver_exit_11_2(ldv_11_exit_mxl111sf_usb_driver_exit_default);
    ldv_ldv_check_final_state_127();
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
  ldv_ldv_initialize_128();
  ldv_entry_EMGentry_11((void *)0);
  }
return 0;
}
}
void ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_0(void *arg0 )
{
  int (*ldv_0_callback_frontend_attach)(struct dvb_usb_adapter * ) ;
  unsigned int (*ldv_0_callback_functionality)(struct i2c_adapter * ) ;
  int (*ldv_0_callback_get_stream_config)(struct dvb_frontend * , unsigned char * ,
                                          struct usb_data_stream_properties * ) ;
  int (*ldv_0_callback_init)(struct dvb_usb_device * ) ;
  int (*ldv_0_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
  int (*ldv_0_callback_streaming_ctrl)(struct dvb_frontend * , int ) ;
  int (*ldv_0_callback_tuner_attach)(struct dvb_usb_adapter * ) ;
  struct dvb_frontend *ldv_0_container_struct_dvb_frontend_ptr ;
  struct dvb_usb_adapter *ldv_0_container_struct_dvb_usb_adapter_ptr ;
  struct dvb_usb_device *ldv_0_container_struct_dvb_usb_device_ptr ;
  struct i2c_adapter *ldv_0_container_struct_i2c_adapter_ptr ;
  struct i2c_msg *ldv_0_container_struct_i2c_msg_ptr ;
  struct usb_data_stream_properties *ldv_0_container_struct_usb_data_stream_properties_ptr ;
  int ldv_0_ldv_param_12_2_default ;
  int ldv_0_ldv_param_15_1_default ;
  unsigned char *ldv_0_ldv_param_8_1_default ;
  int tmp ;
  void *tmp___0 ;
  {
  goto ldv_call_0;
  return;
  ldv_call_0:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_0_18(ldv_0_callback_tuner_attach, ldv_0_container_struct_dvb_usb_adapter_ptr);
  }
  goto ldv_call_0;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_0_15(ldv_0_callback_streaming_ctrl, ldv_0_container_struct_dvb_frontend_ptr,
                                                ldv_0_ldv_param_15_1_default);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_0_12(ldv_0_callback_master_xfer, ldv_0_container_struct_i2c_adapter_ptr,
                                                ldv_0_container_struct_i2c_msg_ptr,
                                                ldv_0_ldv_param_12_2_default);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_0_11(ldv_0_callback_init, ldv_0_container_struct_dvb_usb_device_ptr);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_5:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_8_1_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_0_8(ldv_0_callback_get_stream_config, ldv_0_container_struct_dvb_frontend_ptr,
                                               ldv_0_ldv_param_8_1_default, ldv_0_container_struct_usb_data_stream_properties_ptr);
  ldv_free((void *)ldv_0_ldv_param_8_1_default);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_0_7(ldv_0_callback_functionality, ldv_0_container_struct_i2c_adapter_ptr);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_0_3(ldv_0_callback_frontend_attach, ldv_0_container_struct_dvb_usb_adapter_ptr);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_8: ;
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
void ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_1(void *arg0 )
{
  int (*ldv_1_callback_frontend_attach)(struct dvb_usb_adapter * ) ;
  unsigned int (*ldv_1_callback_functionality)(struct i2c_adapter * ) ;
  int (*ldv_1_callback_get_stream_config)(struct dvb_frontend * , unsigned char * ,
                                          struct usb_data_stream_properties * ) ;
  int (*ldv_1_callback_init)(struct dvb_usb_device * ) ;
  int (*ldv_1_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
  int (*ldv_1_callback_streaming_ctrl)(struct dvb_frontend * , int ) ;
  int (*ldv_1_callback_tuner_attach)(struct dvb_usb_adapter * ) ;
  struct dvb_frontend *ldv_1_container_struct_dvb_frontend_ptr ;
  struct dvb_usb_adapter *ldv_1_container_struct_dvb_usb_adapter_ptr ;
  struct dvb_usb_device *ldv_1_container_struct_dvb_usb_device_ptr ;
  struct i2c_adapter *ldv_1_container_struct_i2c_adapter_ptr ;
  struct i2c_msg *ldv_1_container_struct_i2c_msg_ptr ;
  struct usb_data_stream_properties *ldv_1_container_struct_usb_data_stream_properties_ptr ;
  int ldv_1_ldv_param_12_2_default ;
  int ldv_1_ldv_param_15_1_default ;
  unsigned char *ldv_1_ldv_param_8_1_default ;
  int tmp ;
  void *tmp___0 ;
  {
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_1_18(ldv_1_callback_tuner_attach, ldv_1_container_struct_dvb_usb_adapter_ptr);
  }
  goto ldv_call_1;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_1_15(ldv_1_callback_streaming_ctrl, ldv_1_container_struct_dvb_frontend_ptr,
                                                ldv_1_ldv_param_15_1_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_1_12(ldv_1_callback_master_xfer, ldv_1_container_struct_i2c_adapter_ptr,
                                                ldv_1_container_struct_i2c_msg_ptr,
                                                ldv_1_ldv_param_12_2_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_1_11(ldv_1_callback_init, ldv_1_container_struct_dvb_usb_device_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_5:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_8_1_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_1_8(ldv_1_callback_get_stream_config, ldv_1_container_struct_dvb_frontend_ptr,
                                               ldv_1_ldv_param_8_1_default, ldv_1_container_struct_usb_data_stream_properties_ptr);
  ldv_free((void *)ldv_1_ldv_param_8_1_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_1_7(ldv_1_callback_functionality, ldv_1_container_struct_i2c_adapter_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_frontend_attach, ldv_1_container_struct_dvb_usb_adapter_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_8: ;
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
void ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_2(void *arg0 )
{
  int (*ldv_2_callback_frontend_attach)(struct dvb_usb_adapter * ) ;
  unsigned int (*ldv_2_callback_functionality)(struct i2c_adapter * ) ;
  int (*ldv_2_callback_get_stream_config)(struct dvb_frontend * , unsigned char * ,
                                          struct usb_data_stream_properties * ) ;
  int (*ldv_2_callback_init)(struct dvb_usb_device * ) ;
  int (*ldv_2_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
  int (*ldv_2_callback_streaming_ctrl)(struct dvb_frontend * , int ) ;
  int (*ldv_2_callback_tuner_attach)(struct dvb_usb_adapter * ) ;
  struct dvb_frontend *ldv_2_container_struct_dvb_frontend_ptr ;
  struct dvb_usb_adapter *ldv_2_container_struct_dvb_usb_adapter_ptr ;
  struct dvb_usb_device *ldv_2_container_struct_dvb_usb_device_ptr ;
  struct i2c_adapter *ldv_2_container_struct_i2c_adapter_ptr ;
  struct i2c_msg *ldv_2_container_struct_i2c_msg_ptr ;
  struct usb_data_stream_properties *ldv_2_container_struct_usb_data_stream_properties_ptr ;
  int ldv_2_ldv_param_12_2_default ;
  int ldv_2_ldv_param_15_1_default ;
  unsigned char *ldv_2_ldv_param_8_1_default ;
  int tmp ;
  void *tmp___0 ;
  {
  goto ldv_call_2;
  return;
  ldv_call_2:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_2_18(ldv_2_callback_tuner_attach, ldv_2_container_struct_dvb_usb_adapter_ptr);
  }
  goto ldv_call_2;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_2_15(ldv_2_callback_streaming_ctrl, ldv_2_container_struct_dvb_frontend_ptr,
                                                ldv_2_ldv_param_15_1_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_2_12(ldv_2_callback_master_xfer, ldv_2_container_struct_i2c_adapter_ptr,
                                                ldv_2_container_struct_i2c_msg_ptr,
                                                ldv_2_ldv_param_12_2_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_2_11(ldv_2_callback_init, ldv_2_container_struct_dvb_usb_device_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_5:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_8_1_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_2_8(ldv_2_callback_get_stream_config, ldv_2_container_struct_dvb_frontend_ptr,
                                               ldv_2_ldv_param_8_1_default, ldv_2_container_struct_usb_data_stream_properties_ptr);
  ldv_free((void *)ldv_2_ldv_param_8_1_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_2_7(ldv_2_callback_functionality, ldv_2_container_struct_i2c_adapter_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_2_3(ldv_2_callback_frontend_attach, ldv_2_container_struct_dvb_usb_adapter_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_8: ;
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
void ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_3(void *arg0 )
{
  int (*ldv_3_callback_frontend_attach)(struct dvb_usb_adapter * ) ;
  unsigned int (*ldv_3_callback_functionality)(struct i2c_adapter * ) ;
  int (*ldv_3_callback_get_stream_config)(struct dvb_frontend * , unsigned char * ,
                                          struct usb_data_stream_properties * ) ;
  int (*ldv_3_callback_init)(struct dvb_usb_device * ) ;
  int (*ldv_3_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
  int (*ldv_3_callback_streaming_ctrl)(struct dvb_frontend * , int ) ;
  int (*ldv_3_callback_tuner_attach)(struct dvb_usb_adapter * ) ;
  struct dvb_frontend *ldv_3_container_struct_dvb_frontend_ptr ;
  struct dvb_usb_adapter *ldv_3_container_struct_dvb_usb_adapter_ptr ;
  struct dvb_usb_device *ldv_3_container_struct_dvb_usb_device_ptr ;
  struct i2c_adapter *ldv_3_container_struct_i2c_adapter_ptr ;
  struct i2c_msg *ldv_3_container_struct_i2c_msg_ptr ;
  struct usb_data_stream_properties *ldv_3_container_struct_usb_data_stream_properties_ptr ;
  int ldv_3_ldv_param_12_2_default ;
  int ldv_3_ldv_param_15_1_default ;
  unsigned char *ldv_3_ldv_param_8_1_default ;
  int tmp ;
  void *tmp___0 ;
  {
  goto ldv_call_3;
  return;
  ldv_call_3:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_3_18(ldv_3_callback_tuner_attach, ldv_3_container_struct_dvb_usb_adapter_ptr);
  }
  goto ldv_call_3;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_3_15(ldv_3_callback_streaming_ctrl, ldv_3_container_struct_dvb_frontend_ptr,
                                                ldv_3_ldv_param_15_1_default);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_3_12(ldv_3_callback_master_xfer, ldv_3_container_struct_i2c_adapter_ptr,
                                                ldv_3_container_struct_i2c_msg_ptr,
                                                ldv_3_ldv_param_12_2_default);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_3_11(ldv_3_callback_init, ldv_3_container_struct_dvb_usb_device_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_5:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_8_1_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_3_8(ldv_3_callback_get_stream_config, ldv_3_container_struct_dvb_frontend_ptr,
                                               ldv_3_ldv_param_8_1_default, ldv_3_container_struct_usb_data_stream_properties_ptr);
  ldv_free((void *)ldv_3_ldv_param_8_1_default);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_3_7(ldv_3_callback_functionality, ldv_3_container_struct_i2c_adapter_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_frontend_attach, ldv_3_container_struct_dvb_usb_adapter_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_8: ;
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
void ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_4(void *arg0 )
{
  int (*ldv_4_callback_frontend_attach)(struct dvb_usb_adapter * ) ;
  unsigned int (*ldv_4_callback_functionality)(struct i2c_adapter * ) ;
  int (*ldv_4_callback_get_stream_config)(struct dvb_frontend * , unsigned char * ,
                                          struct usb_data_stream_properties * ) ;
  int (*ldv_4_callback_init)(struct dvb_usb_device * ) ;
  int (*ldv_4_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
  int (*ldv_4_callback_streaming_ctrl)(struct dvb_frontend * , int ) ;
  int (*ldv_4_callback_tuner_attach)(struct dvb_usb_adapter * ) ;
  struct dvb_frontend *ldv_4_container_struct_dvb_frontend_ptr ;
  struct dvb_usb_adapter *ldv_4_container_struct_dvb_usb_adapter_ptr ;
  struct dvb_usb_device *ldv_4_container_struct_dvb_usb_device_ptr ;
  struct i2c_adapter *ldv_4_container_struct_i2c_adapter_ptr ;
  struct i2c_msg *ldv_4_container_struct_i2c_msg_ptr ;
  struct usb_data_stream_properties *ldv_4_container_struct_usb_data_stream_properties_ptr ;
  int ldv_4_ldv_param_12_2_default ;
  int ldv_4_ldv_param_15_1_default ;
  unsigned char *ldv_4_ldv_param_8_1_default ;
  int tmp ;
  void *tmp___0 ;
  {
  goto ldv_call_4;
  return;
  ldv_call_4:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_4_18(ldv_4_callback_tuner_attach, ldv_4_container_struct_dvb_usb_adapter_ptr);
  }
  goto ldv_call_4;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_4_15(ldv_4_callback_streaming_ctrl, ldv_4_container_struct_dvb_frontend_ptr,
                                                ldv_4_ldv_param_15_1_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_4_12(ldv_4_callback_master_xfer, ldv_4_container_struct_i2c_adapter_ptr,
                                                ldv_4_container_struct_i2c_msg_ptr,
                                                ldv_4_ldv_param_12_2_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_4_11(ldv_4_callback_init, ldv_4_container_struct_dvb_usb_device_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_5:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_4_ldv_param_8_1_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_4_8(ldv_4_callback_get_stream_config, ldv_4_container_struct_dvb_frontend_ptr,
                                               ldv_4_ldv_param_8_1_default, ldv_4_container_struct_usb_data_stream_properties_ptr);
  ldv_free((void *)ldv_4_ldv_param_8_1_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_4_7(ldv_4_callback_functionality, ldv_4_container_struct_i2c_adapter_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_frontend_attach, ldv_4_container_struct_dvb_usb_adapter_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_8: ;
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
void ldv_struct_dvb_usb_adapter_properties_dummy_resourceless_instance_5(void *arg0 )
{
  int (*ldv_5_callback_frontend_attach)(struct dvb_usb_adapter * ) ;
  unsigned int (*ldv_5_callback_functionality)(struct i2c_adapter * ) ;
  int (*ldv_5_callback_get_stream_config)(struct dvb_frontend * , unsigned char * ,
                                          struct usb_data_stream_properties * ) ;
  int (*ldv_5_callback_init)(struct dvb_usb_device * ) ;
  int (*ldv_5_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
  int (*ldv_5_callback_streaming_ctrl)(struct dvb_frontend * , int ) ;
  int (*ldv_5_callback_tuner_attach)(struct dvb_usb_adapter * ) ;
  struct dvb_frontend *ldv_5_container_struct_dvb_frontend_ptr ;
  struct dvb_usb_adapter *ldv_5_container_struct_dvb_usb_adapter_ptr ;
  struct dvb_usb_device *ldv_5_container_struct_dvb_usb_device_ptr ;
  struct i2c_adapter *ldv_5_container_struct_i2c_adapter_ptr ;
  struct i2c_msg *ldv_5_container_struct_i2c_msg_ptr ;
  struct usb_data_stream_properties *ldv_5_container_struct_usb_data_stream_properties_ptr ;
  int ldv_5_ldv_param_12_2_default ;
  int ldv_5_ldv_param_15_1_default ;
  unsigned char *ldv_5_ldv_param_8_1_default ;
  int tmp ;
  void *tmp___0 ;
  {
  goto ldv_call_5;
  return;
  ldv_call_5:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_5_18(ldv_5_callback_tuner_attach, ldv_5_container_struct_dvb_usb_adapter_ptr);
  }
  goto ldv_call_5;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_5_15(ldv_5_callback_streaming_ctrl, ldv_5_container_struct_dvb_frontend_ptr,
                                                ldv_5_ldv_param_15_1_default);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_5_12(ldv_5_callback_master_xfer, ldv_5_container_struct_i2c_adapter_ptr,
                                                ldv_5_container_struct_i2c_msg_ptr,
                                                ldv_5_ldv_param_12_2_default);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_5_11(ldv_5_callback_init, ldv_5_container_struct_dvb_usb_device_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_5:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_8_1_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_5_8(ldv_5_callback_get_stream_config, ldv_5_container_struct_dvb_frontend_ptr,
                                               ldv_5_ldv_param_8_1_default, ldv_5_container_struct_usb_data_stream_properties_ptr);
  ldv_free((void *)ldv_5_ldv_param_8_1_default);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_5_7(ldv_5_callback_functionality, ldv_5_container_struct_i2c_adapter_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_frontend_attach, ldv_5_container_struct_dvb_usb_adapter_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_8: ;
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
void ldv_struct_mxl111sf_tuner_config_dummy_resourceless_instance_6(void *arg0 )
{
  int (*ldv_6_callback_ant_hunt)(struct dvb_frontend * ) ;
  int (*ldv_6_callback_program_regs)(struct mxl111sf_state * , struct mxl111sf_reg_ctrl_info * ) ;
  int (*ldv_6_callback_read_reg)(struct mxl111sf_state * , unsigned char , unsigned char * ) ;
  int (*ldv_6_callback_top_master_ctrl)(struct mxl111sf_state * , int ) ;
  int (*ldv_6_callback_write_reg)(struct mxl111sf_state * , unsigned char , unsigned char ) ;
  struct dvb_frontend *ldv_6_container_struct_dvb_frontend_ptr ;
  struct mxl111sf_reg_ctrl_info *ldv_6_container_struct_mxl111sf_reg_ctrl_info_ptr ;
  struct mxl111sf_state *ldv_6_container_struct_mxl111sf_state_ptr ;
  int ldv_6_ldv_param_11_1_default ;
  unsigned char ldv_6_ldv_param_14_1_default ;
  unsigned char ldv_6_ldv_param_14_2_default ;
  unsigned char ldv_6_ldv_param_8_1_default ;
  unsigned char *ldv_6_ldv_param_8_2_default ;
  int tmp ;
  void *tmp___0 ;
  {
  goto ldv_call_6;
  return;
  ldv_call_6:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_6_14(ldv_6_callback_write_reg, ldv_6_container_struct_mxl111sf_state_ptr,
                                                (int )ldv_6_ldv_param_14_1_default,
                                                (int )ldv_6_ldv_param_14_2_default);
  }
  goto ldv_call_6;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_6_11(ldv_6_callback_top_master_ctrl, ldv_6_container_struct_mxl111sf_state_ptr,
                                                ldv_6_ldv_param_11_1_default);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  case_3:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_6_ldv_param_8_2_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_6_8(ldv_6_callback_read_reg, ldv_6_container_struct_mxl111sf_state_ptr,
                                               (int )ldv_6_ldv_param_8_1_default,
                                               ldv_6_ldv_param_8_2_default);
  ldv_free((void *)ldv_6_ldv_param_8_2_default);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_6_7(ldv_6_callback_program_regs, ldv_6_container_struct_mxl111sf_state_ptr,
                                               ldv_6_container_struct_mxl111sf_reg_ctrl_info_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_6_3(ldv_6_callback_ant_hunt, ldv_6_container_struct_dvb_frontend_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_6: ;
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
void ldv_usb_deregister(void *arg0 , struct usb_driver *arg1 )
{
  struct usb_driver *ldv_9_usb_driver_usb_driver ;
  {
  {
  ldv_9_usb_driver_usb_driver = arg1;
  ldv_dispatch_deregister_9_1(ldv_9_usb_driver_usb_driver);
  }
  return;
  return;
}
}
void ldv_usb_dummy_factory_8(void *arg0 )
{
  struct usb_driver *ldv_8_container_usb_driver ;
  struct ldv_struct_usb_instance_7 *data ;
  {
  data = (struct ldv_struct_usb_instance_7 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_usb_instance_7 *)0)) {
    {
    ldv_8_container_usb_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_dispatch_instance_register_8_3(ldv_8_container_usb_driver);
  ldv_dispatch_instance_deregister_8_2(ldv_8_container_usb_driver);
  }
  return;
  return;
}
}
void ldv_usb_instance_post_7_9(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_usb_instance_pre_7_10(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_usb_instance_probe_7_13(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = dvb_usbv2_probe(arg1, (struct usb_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_usb_instance_release_7_4(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  dvb_usbv2_disconnect(arg1);
  }
  return;
}
}
void ldv_usb_instance_resume_7_7(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  dvb_usbv2_resume(arg1);
  }
  return;
}
}
void ldv_usb_instance_suspend_7_8(int (*arg0)(struct usb_interface * , struct pm_message ) ,
                                  struct usb_interface *arg1 , struct pm_message *arg2 )
{
  {
  {
  dvb_usbv2_suspend(arg1, *arg2);
  }
  return;
}
}
int ldv_usb_register_driver(int arg0 , struct usb_driver *arg1 , struct module *arg2 ,
                            char *arg3 )
{
  struct usb_driver *ldv_10_usb_driver_usb_driver ;
  int tmp ;
  {
  {
  arg0 = ldv_pre_usb_register_driver();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_10_usb_driver_usb_driver = arg1;
    ldv_dispatch_register_10_2(ldv_10_usb_driver_usb_driver);
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
void ldv_usb_usb_instance_7(void *arg0 )
{
  struct usb_driver *ldv_7_container_usb_driver ;
  struct usb_device_id *ldv_7_ldv_param_13_1_default ;
  struct pm_message *ldv_7_ldv_param_8_1_default ;
  int ldv_7_probe_retval_default ;
  _Bool ldv_7_reset_flag_default ;
  struct usb_interface *ldv_7_resource_usb_interface ;
  struct usb_device *ldv_7_usb_device_usb_device ;
  struct ldv_struct_usb_instance_7 *data ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  data = (struct ldv_struct_usb_instance_7 *)arg0;
  ldv_7_reset_flag_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_usb_instance_7 *)0)) {
    {
    ldv_7_container_usb_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(1552UL);
  ldv_7_resource_usb_interface = (struct usb_interface *)tmp;
  tmp___0 = ldv_xmalloc(2024UL);
  ldv_7_usb_device_usb_device = (struct usb_device *)tmp___0;
  ldv_7_resource_usb_interface->dev.parent = & ldv_7_usb_device_usb_device->dev;
  tmp___1 = ldv_xmalloc(32UL);
  ldv_7_ldv_param_13_1_default = (struct usb_device_id *)tmp___1;
  ldv_ldv_pre_probe_129();
  ldv_7_probe_retval_default = ldv_usb_instance_probe_7_13((int (*)(struct usb_interface * ,
                                                                    struct usb_device_id * ))ldv_7_container_usb_driver->probe,
                                                           ldv_7_resource_usb_interface,
                                                           ldv_7_ldv_param_13_1_default);
  ldv_7_probe_retval_default = ldv_ldv_post_probe_130(ldv_7_probe_retval_default);
  ldv_free((void *)ldv_7_ldv_param_13_1_default);
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
    {
    ldv_assume(ldv_7_probe_retval_default == 0);
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
    goto switch_default;
    case_1:
    {
    tmp___3 = ldv_xmalloc(4UL);
    ldv_7_ldv_param_8_1_default = (struct pm_message *)tmp___3;
    ldv_usb_instance_suspend_7_8(ldv_7_container_usb_driver->suspend, ldv_7_resource_usb_interface,
                                 ldv_7_ldv_param_8_1_default);
    ldv_free((void *)ldv_7_ldv_param_8_1_default);
    ldv_usb_instance_resume_7_7(ldv_7_container_usb_driver->resume, ldv_7_resource_usb_interface);
    }
    goto ldv_51458;
    case_2: ;
    if ((unsigned long )ldv_7_container_usb_driver->pre_reset != (unsigned long )((int (*)(struct usb_interface * ))0)) {
      {
      ldv_usb_instance_pre_7_10(ldv_7_container_usb_driver->pre_reset, ldv_7_resource_usb_interface);
      }
    } else {
    }
    if ((unsigned long )ldv_7_container_usb_driver->post_reset != (unsigned long )((int (*)(struct usb_interface * ))0)) {
      {
      ldv_usb_instance_post_7_9(ldv_7_container_usb_driver->post_reset, ldv_7_resource_usb_interface);
      }
    } else {
    }
    goto ldv_51458;
    case_3: ;
    goto ldv_51458;
    case_4: ;
    goto ldv_51458;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_51458:
    {
    ldv_usb_instance_release_7_4(ldv_7_container_usb_driver->disconnect, ldv_7_resource_usb_interface);
    }
  } else {
    {
    ldv_assume(ldv_7_probe_retval_default != 0);
    }
  }
  {
  ldv_free((void *)ldv_7_resource_usb_interface);
  ldv_free((void *)ldv_7_usb_device_usb_device);
  }
  return;
  return;
}
}
static void ldv_mutex_lock_121(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_fe_lock_of_mxl111sf_state(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_122(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_fe_lock_of_mxl111sf_state(ldv_func_arg1);
  }
  return;
}
}
static int ldv_usb_register_driver_123(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                       char const *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv_usb_register_driver(ldv_func_res, ldv_func_arg1, ldv_func_arg2, (char *)ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_usb_deregister_124(struct usb_driver *ldv_func_arg1 )
{
  {
  {
  usb_deregister(ldv_func_arg1);
  ldv_usb_deregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_init_125(int ldv_func_arg1 )
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
static void ldv_ldv_check_final_state_126(void)
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
static void ldv_ldv_check_final_state_127(void)
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
static void ldv_ldv_initialize_128(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
static void ldv_ldv_pre_probe_129(void)
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
static int ldv_ldv_post_probe_130(int retval )
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
int mxl111sf_disable_656_port(struct mxl111sf_state *state ) ;
int mxl111sf_init_tuner_demod(struct mxl111sf_state *state )
{
  struct mxl111sf_reg_ctrl_info mxl_111_overwrite_default[21U] ;
  int tmp ;
  {
  mxl_111_overwrite_default[0].addr = 7U;
  mxl_111_overwrite_default[0].mask = 255U;
  mxl_111_overwrite_default[0].data = 12U;
  mxl_111_overwrite_default[1].addr = 88U;
  mxl_111_overwrite_default[1].mask = 255U;
  mxl_111_overwrite_default[1].data = 157U;
  mxl_111_overwrite_default[2].addr = 9U;
  mxl_111_overwrite_default[2].mask = 255U;
  mxl_111_overwrite_default[2].data = 0U;
  mxl_111_overwrite_default[3].addr = 6U;
  mxl_111_overwrite_default[3].mask = 255U;
  mxl_111_overwrite_default[3].data = 6U;
  mxl_111_overwrite_default[4].addr = 200U;
  mxl_111_overwrite_default[4].mask = 255U;
  mxl_111_overwrite_default[4].data = 64U;
  mxl_111_overwrite_default[5].addr = 141U;
  mxl_111_overwrite_default[5].mask = 1U;
  mxl_111_overwrite_default[5].data = 1U;
  mxl_111_overwrite_default[6].addr = 50U;
  mxl_111_overwrite_default[6].mask = 255U;
  mxl_111_overwrite_default[6].data = 172U;
  mxl_111_overwrite_default[7].addr = 66U;
  mxl_111_overwrite_default[7].mask = 255U;
  mxl_111_overwrite_default[7].data = 67U;
  mxl_111_overwrite_default[8].addr = 116U;
  mxl_111_overwrite_default[8].mask = 255U;
  mxl_111_overwrite_default[8].data = 196U;
  mxl_111_overwrite_default[9].addr = 113U;
  mxl_111_overwrite_default[9].mask = 255U;
  mxl_111_overwrite_default[9].data = 230U;
  mxl_111_overwrite_default[10].addr = 131U;
  mxl_111_overwrite_default[10].mask = 255U;
  mxl_111_overwrite_default[10].data = 100U;
  mxl_111_overwrite_default[11].addr = 133U;
  mxl_111_overwrite_default[11].mask = 255U;
  mxl_111_overwrite_default[11].data = 100U;
  mxl_111_overwrite_default[12].addr = 136U;
  mxl_111_overwrite_default[12].mask = 255U;
  mxl_111_overwrite_default[12].data = 240U;
  mxl_111_overwrite_default[13].addr = 111U;
  mxl_111_overwrite_default[13].mask = 240U;
  mxl_111_overwrite_default[13].data = 176U;
  mxl_111_overwrite_default[14].addr = 0U;
  mxl_111_overwrite_default[14].mask = 255U;
  mxl_111_overwrite_default[14].data = 1U;
  mxl_111_overwrite_default[15].addr = 129U;
  mxl_111_overwrite_default[15].mask = 255U;
  mxl_111_overwrite_default[15].data = 17U;
  mxl_111_overwrite_default[16].addr = 244U;
  mxl_111_overwrite_default[16].mask = 255U;
  mxl_111_overwrite_default[16].data = 7U;
  mxl_111_overwrite_default[17].addr = 212U;
  mxl_111_overwrite_default[17].mask = 31U;
  mxl_111_overwrite_default[17].data = 15U;
  mxl_111_overwrite_default[18].addr = 214U;
  mxl_111_overwrite_default[18].mask = 255U;
  mxl_111_overwrite_default[18].data = 12U;
  mxl_111_overwrite_default[19].addr = 0U;
  mxl_111_overwrite_default[19].mask = 255U;
  mxl_111_overwrite_default[19].data = 0U;
  mxl_111_overwrite_default[20].addr = 0U;
  mxl_111_overwrite_default[20].mask = 0U;
  mxl_111_overwrite_default[20].data = 0U;
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: ()\n", "mxl111sf_init_tuner_demod");
    }
  } else {
  }
  {
  tmp = mxl111sf_ctrl_program_regs(state, (struct mxl111sf_reg_ctrl_info *)(& mxl_111_overwrite_default));
  }
  return (tmp);
}
}
int mxl1x1sf_soft_reset(struct mxl111sf_state *state )
{
  int ret ;
  int __ret ;
  int __ret___0 ;
  {
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: ()\n", "mxl1x1sf_soft_reset");
    }
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 255, 0);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl1x1sf_soft_reset", ret, 61);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 2, 1);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl1x1sf_soft_reset", ret, 64);
    }
  } else {
  }
  fail: ;
  return (ret);
}
}
int mxl1x1sf_set_device_mode(struct mxl111sf_state *state , int mode )
{
  int ret ;
  int __ret ;
  int __ret___0 ;
  {
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: (%s)\n", "mxl1x1sf_set_device_mode", mode == 1 ? (char *)"MXL_SOC_MODE" : (char *)"MXL_TUNER_MODE");
    }
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 3, mode == 1);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl1x1sf_set_device_mode", ret, 79);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg_mask(state, 125, 64, mode == 1 ? 0 : 64);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl1x1sf_set_device_mode", ret, 88);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  state->device_mode = mode;
  fail: ;
  return (ret);
}
}
int mxl1x1sf_top_master_ctrl(struct mxl111sf_state *state , int onoff )
{
  int tmp ;
  {
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: (%d)\n", "mxl1x1sf_top_master_ctrl", onoff);
    }
  } else {
  }
  {
  tmp = mxl111sf_write_reg(state, 1, onoff != 0);
  }
  return (tmp);
}
}
int mxl111sf_disable_656_port(struct mxl111sf_state *state )
{
  int tmp ;
  {
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: ()\n", "mxl111sf_disable_656_port");
    }
  } else {
  }
  {
  tmp = mxl111sf_write_reg_mask(state, 18, 4, 0);
  }
  return (tmp);
}
}
int mxl111sf_enable_usb_output(struct mxl111sf_state *state )
{
  int tmp ;
  {
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: ()\n", "mxl111sf_enable_usb_output");
    }
  } else {
  }
  {
  tmp = mxl111sf_write_reg_mask(state, 23, 64, 0);
  }
  return (tmp);
}
}
int mxl111sf_config_mpeg_in(struct mxl111sf_state *state , unsigned int parallel_serial ,
                            unsigned int msb_lsb_1st , unsigned int clock_phase ,
                            unsigned int mpeg_valid_pol , unsigned int mpeg_sync_pol )
{
  int ret ;
  u8 mode ;
  u8 tmp ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  int __ret___3 ;
  int __ret___4 ;
  {
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: (%u,%u,%u,%u,%u)\n", "mxl111sf_config_mpeg_in", parallel_serial,
           msb_lsb_1st, clock_phase, mpeg_valid_pol, mpeg_sync_pol);
    }
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 27, 30);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_mpeg_in", ret, 134);
    }
  } else {
  }
  {
  mxl111sf_read_reg(state, 23, & mode);
  }
  if (clock_phase == 0U) {
    mode = (unsigned int )mode & 223U;
  } else {
    mode = (u8 )((unsigned int )mode | 32U);
  }
  {
  ret = mxl111sf_write_reg(state, 23, (int )mode);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_mpeg_in", ret, 145);
    }
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 24, & mode);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_mpeg_in", ret, 150);
    }
  } else {
  }
  if (parallel_serial == 0U) {
    mode = (unsigned int )mode & 253U;
    mode = (u8 )((unsigned int )mode | 1U);
  } else {
    {
    mode = (unsigned int )mode & 254U;
    mode = (u8 )((unsigned int )mode | 2U);
    ret = mxl111sf_read_reg(state, 25, & tmp);
    __ret___2 = ret < 0;
    }
    if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_config_mpeg_in", ret, 171);
      }
    } else {
    }
    if (msb_lsb_1st == 1U) {
      tmp = (u8 )((unsigned int )tmp | 128U);
    } else {
      tmp = (unsigned int )tmp & 127U;
    }
    {
    ret = mxl111sf_write_reg(state, 25, (int )tmp);
    __ret___3 = ret < 0;
    }
    if (__ret___3 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_config_mpeg_in", ret, 181);
      }
    } else {
    }
  }
  if (mpeg_sync_pol == 0U) {
    mode = (unsigned int )mode & 251U;
  } else {
    mode = (u8 )((unsigned int )mode | 4U);
  }
  if (mpeg_valid_pol == 0U) {
    mode = (unsigned int )mode & 247U;
  } else {
    mode = (u8 )((unsigned int )mode | 8U);
  }
  {
  ret = mxl111sf_write_reg(state, 24, (int )mode);
  __ret___4 = ret < 0;
  }
  if (__ret___4 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_mpeg_in", ret, 197);
    }
  } else {
  }
  return (ret);
}
}
int mxl111sf_init_i2s_port(struct mxl111sf_state *state , u8 sample_size )
{
  struct mxl111sf_reg_ctrl_info init_i2s[7U] ;
  int ret ;
  int __ret ;
  int __ret___0 ;
  {
  init_i2s[0].addr = 27U;
  init_i2s[0].mask = 255U;
  init_i2s[0].data = 30U;
  init_i2s[1].addr = 21U;
  init_i2s[1].mask = 96U;
  init_i2s[1].data = 96U;
  init_i2s[2].addr = 23U;
  init_i2s[2].mask = 224U;
  init_i2s[2].data = 32U;
  init_i2s[3].addr = 0U;
  init_i2s[3].mask = 255U;
  init_i2s[3].data = 2U;
  init_i2s[4].addr = 38U;
  init_i2s[4].mask = 13U;
  init_i2s[4].data = 13U;
  init_i2s[5].addr = 0U;
  init_i2s[5].mask = 255U;
  init_i2s[5].data = 0U;
  init_i2s[6].addr = 0U;
  init_i2s[6].mask = 0U;
  init_i2s[6].data = 0U;
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: (0x%02x)\n", "mxl111sf_init_i2s_port", (int )sample_size);
    }
  } else {
  }
  {
  ret = mxl111sf_ctrl_program_regs(state, (struct mxl111sf_reg_ctrl_info *)(& init_i2s));
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_init_i2s_port", ret, 223);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 22, (int )sample_size);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_init_i2s_port", ret, 227);
    }
  } else {
  }
  fail: ;
  return (ret);
}
}
int mxl111sf_disable_i2s_port(struct mxl111sf_state *state )
{
  struct mxl111sf_reg_ctrl_info disable_i2s[2U] ;
  int tmp ;
  {
  disable_i2s[0].addr = 21U;
  disable_i2s[0].mask = 64U;
  disable_i2s[0].data = 0U;
  disable_i2s[1].addr = 0U;
  disable_i2s[1].mask = 0U;
  disable_i2s[1].data = 0U;
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: ()\n", "mxl111sf_disable_i2s_port");
    }
  } else {
  }
  {
  tmp = mxl111sf_ctrl_program_regs(state, (struct mxl111sf_reg_ctrl_info *)(& disable_i2s));
  }
  return (tmp);
}
}
int mxl111sf_config_i2s(struct mxl111sf_state *state , u8 msb_start_pos , u8 data_width )
{
  int ret ;
  u8 tmp ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  {
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: (0x%02x, 0x%02x)\n", "mxl111sf_config_i2s", (int )msb_start_pos,
           (int )data_width);
    }
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 20, & tmp);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_i2s", ret, 253);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  tmp = (unsigned int )tmp & 224U;
  tmp = (u8 )((int )tmp | (int )msb_start_pos);
  ret = mxl111sf_write_reg(state, 20, (int )tmp);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_i2s", ret, 259);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 21, & tmp);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_i2s", ret, 263);
    }
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  {
  tmp = (unsigned int )tmp & 224U;
  tmp = (u8 )((int )tmp | (int )data_width);
  ret = mxl111sf_write_reg(state, 21, (int )tmp);
  __ret___2 = ret < 0;
  }
  if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_i2s", ret, 269);
    }
  } else {
  }
  fail: ;
  return (ret);
}
}
int mxl111sf_config_spi(struct mxl111sf_state *state , int onoff )
{
  u8 val ;
  int ret ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  {
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: (%d)\n", "mxl111sf_config_spi", onoff);
    }
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 0, 2);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_spi", ret, 282);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 233, & val);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_spi", ret, 286);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  if (onoff != 0) {
    val = (u8 )((unsigned int )val | 4U);
  } else {
    val = (unsigned int )val & 251U;
  }
  {
  ret = mxl111sf_write_reg(state, 233, (int )val);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_spi", ret, 295);
    }
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 0, 0);
  __ret___2 = ret < 0;
  }
  if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_spi", ret, 299);
    }
  } else {
  }
  fail: ;
  return (ret);
}
}
int mxl111sf_idac_config(struct mxl111sf_state *state , u8 control_mode , u8 current_setting ,
                         u8 current_value , u8 hysteresis_value )
{
  int ret ;
  u8 val ;
  int __ret ;
  int __ret___0 ;
  {
  val = current_value;
  if ((unsigned int )control_mode == 1U) {
    val = (u8 )((unsigned int )val | 128U);
    if ((unsigned int )current_setting == 1U) {
      val = (u8 )((unsigned int )val | 64U);
    } else {
      val = (unsigned int )val & 191U;
    }
  } else {
    {
    val = (unsigned int )val & 127U;
    ret = mxl111sf_write_reg(state, 11, (int )hysteresis_value & 63);
    __ret = ret < 0;
    }
    if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_idac_config", ret, 330);
      }
    } else {
    }
  }
  {
  ret = mxl111sf_write_reg(state, 12, (int )val);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_idac_config", ret, 334);
    }
  } else {
  }
  return (ret);
}
}
static int ldv_mutex_lock_interruptible_121(struct mutex *ldv_func_arg1 ) ;
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_i2c_mutex_of_dvb_usb_device(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_i2c_mutex_of_dvb_usb_device(struct mutex *lock ) ;
static void ldv_mutex_unlock_122___0(struct mutex *ldv_func_arg1 ) ;
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void *i2c_get_adapdata(struct i2c_adapter const *dev )
{
  void *tmp ;
  {
  {
  tmp = dev_get_drvdata(& dev->dev);
  }
  return (tmp);
}
}
static int mxl111sf_i2c_bitbang_sendbyte(struct mxl111sf_state *state , u8 byte )
{
  int i ;
  int ret ;
  u8 data ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  int __ret___3 ;
  int __ret___4 ;
  int __ret___5 ;
  int __ret___6 ;
  {
  data = 0U;
  if ((dvb_usb_mxl111sf_debug & 4) != 0) {
    {
    printk("\017%s: (0x%02x)\n", "mxl111sf_i2c_bitbang_sendbyte", (int )byte);
    }
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 47, & data);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_bitbang_sendbyte", ret, 44);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  i = 0;
  goto ldv_49540;
  ldv_49539:
  {
  data = ((int )byte & (128 >> i)) != 0 ? 8U : 0U;
  ret = mxl111sf_write_reg(state, 26, (int )((unsigned int )data | 18U));
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_bitbang_sendbyte", ret, 53);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, (int )((unsigned int )data | 22U));
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_bitbang_sendbyte", ret, 58);
    }
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, (int )((unsigned int )data | 18U));
  __ret___2 = ret < 0;
  }
  if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_bitbang_sendbyte", ret, 63);
    }
  } else {
  }
  if (__ret___2 != 0) {
    goto fail;
  } else {
  }
  i = i + 1;
  ldv_49540: ;
  if (i <= 7) {
    goto ldv_49539;
  } else {
  }
  if (((int )byte & 1) == 0) {
    {
    ret = mxl111sf_write_reg(state, 26, 26);
    __ret___3 = ret < 0;
    }
    if (__ret___3 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_bitbang_sendbyte", ret,
             71);
      }
    } else {
    }
    if (__ret___3 != 0) {
      goto fail;
    } else {
    }
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, 30);
  __ret___4 = ret < 0;
  }
  if (__ret___4 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_bitbang_sendbyte", ret, 78);
    }
  } else {
  }
  if (__ret___4 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 47, & data);
  __ret___5 = ret < 0;
  }
  if (__ret___5 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_bitbang_sendbyte", ret, 82);
    }
  } else {
  }
  if (__ret___5 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, 26);
  __ret___6 = ret < 0;
  }
  if (__ret___6 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_bitbang_sendbyte", ret, 88);
    }
  } else {
  }
  if (__ret___6 != 0) {
    goto fail;
  } else {
  }
  if (((int )data & 4) != 0) {
    ret = -5;
  } else {
  }
  fail: ;
  return (ret);
}
}
static int mxl111sf_i2c_bitbang_recvbyte(struct mxl111sf_state *state , u8 *pbyte )
{
  int i ;
  int ret ;
  u8 byte ;
  u8 data ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  {
  byte = 0U;
  data = 0U;
  if ((dvb_usb_mxl111sf_debug & 4) != 0) {
    {
    printk("\017%s: ()\n", "mxl111sf_i2c_bitbang_recvbyte");
    }
  } else {
  }
  {
  *pbyte = 0U;
  ret = mxl111sf_write_reg(state, 26, 26);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_bitbang_recvbyte", ret, 110);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  i = 0;
  goto ldv_49569;
  ldv_49568:
  {
  ret = mxl111sf_write_reg(state, 26, 30);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_bitbang_recvbyte", ret, 117);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 47, & data);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_bitbang_recvbyte", ret, 121);
    }
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  if (((int )data & 4) != 0) {
    byte = (u8 )((int )((signed char )byte) | (int )((signed char )(128 >> i)));
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, 26);
  __ret___2 = ret < 0;
  }
  if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_bitbang_recvbyte", ret, 129);
    }
  } else {
  }
  if (__ret___2 != 0) {
    goto fail;
  } else {
  }
  i = i + 1;
  ldv_49569: ;
  if (i <= 7) {
    goto ldv_49568;
  } else {
  }
  *pbyte = byte;
  fail: ;
  return (ret);
}
}
static int mxl111sf_i2c_start(struct mxl111sf_state *state )
{
  int ret ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  {
  if ((dvb_usb_mxl111sf_debug & 4) != 0) {
    {
    printk("\017%s: ()\n", "mxl111sf_i2c_start");
    }
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, 30);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_start", ret, 145);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, 22);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_start", ret, 150);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, 18);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_start", ret, 155);
    }
  } else {
  }
  fail: ;
  return (ret);
}
}
static int mxl111sf_i2c_stop(struct mxl111sf_state *state )
{
  int ret ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  {
  if ((dvb_usb_mxl111sf_debug & 4) != 0) {
    {
    printk("\017%s: ()\n", "mxl111sf_i2c_stop");
    }
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, 18);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_stop", ret, 168);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, 22);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_stop", ret, 173);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, 30);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_stop", ret, 178);
    }
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, 28);
  __ret___2 = ret < 0;
  }
  if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_stop", ret, 183);
    }
  } else {
  }
  fail: ;
  return (ret);
}
}
static int mxl111sf_i2c_ack(struct mxl111sf_state *state )
{
  int ret ;
  u8 b ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  {
  b = 0U;
  if ((dvb_usb_mxl111sf_debug & 4) != 0) {
    {
    printk("\017%s: ()\n", "mxl111sf_i2c_ack");
    }
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 47, & b);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_ack", ret, 196);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, 18);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_ack", ret, 201);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, 22);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_ack", ret, 207);
    }
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, 26);
  __ret___2 = ret < 0;
  }
  if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_ack", ret, 212);
    }
  } else {
  }
  fail: ;
  return (ret);
}
}
static int mxl111sf_i2c_nack(struct mxl111sf_state *state )
{
  int ret ;
  int __ret ;
  int __ret___0 ;
  {
  if ((dvb_usb_mxl111sf_debug & 4) != 0) {
    {
    printk("\017%s: ()\n", "mxl111sf_i2c_nack");
    }
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, 30);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_nack", ret, 226);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 26, 26);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_nack", ret, 231);
    }
  } else {
  }
  fail: ;
  return (ret);
}
}
static int mxl111sf_i2c_sw_xfer_msg(struct mxl111sf_state *state , struct i2c_msg *msg )
{
  int i ;
  int ret ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  int __ret___3 ;
  int __ret___4 ;
  int __ret___5 ;
  {
  if ((dvb_usb_mxl111sf_debug & 4) != 0) {
    {
    printk("\017%s: ()\n", "mxl111sf_i2c_sw_xfer_msg");
    }
  } else {
  }
  if ((int )msg->flags & 1) {
    {
    ret = mxl111sf_i2c_start(state);
    __ret = ret < 0;
    }
    if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_sw_xfer_msg", ret, 248);
      }
    } else {
    }
    if (__ret != 0) {
      goto fail;
    } else {
    }
    {
    ret = mxl111sf_i2c_bitbang_sendbyte(state, (int )((u8 )((int )((signed char )((int )msg->addr << 1)) | 1)));
    __ret___0 = ret < 0;
    }
    if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_sw_xfer_msg", ret, 253);
      }
    } else {
    }
    if (__ret___0 != 0) {
      {
      mxl111sf_i2c_stop(state);
      }
      goto fail;
    } else {
    }
    i = 0;
    goto ldv_49637;
    ldv_49636:
    {
    ret = mxl111sf_i2c_bitbang_recvbyte(state, msg->buf + (unsigned long )i);
    __ret___1 = ret < 0;
    }
    if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_sw_xfer_msg", ret, 261);
      }
    } else {
    }
    if (__ret___1 != 0) {
      {
      mxl111sf_i2c_stop(state);
      }
      goto fail;
    } else {
    }
    if (i < (int )msg->len + -1) {
      {
      mxl111sf_i2c_ack(state);
      }
    } else {
    }
    i = i + 1;
    ldv_49637: ;
    if (i < (int )msg->len) {
      goto ldv_49636;
    } else {
    }
    {
    mxl111sf_i2c_nack(state);
    ret = mxl111sf_i2c_stop(state);
    __ret___2 = ret < 0;
    }
    if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_sw_xfer_msg", ret, 273);
      }
    } else {
    }
    if (__ret___2 != 0) {
      goto fail;
    } else {
    }
  } else {
    {
    ret = mxl111sf_i2c_start(state);
    __ret___3 = ret < 0;
    }
    if (__ret___3 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_sw_xfer_msg", ret, 279);
      }
    } else {
    }
    if (__ret___3 != 0) {
      goto fail;
    } else {
    }
    {
    ret = mxl111sf_i2c_bitbang_sendbyte(state, (int )((u8 )((int )msg->addr << 1)));
    __ret___4 = ret < 0;
    }
    if (__ret___4 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_sw_xfer_msg", ret, 284);
      }
    } else {
    }
    if (__ret___4 != 0) {
      {
      mxl111sf_i2c_stop(state);
      }
      goto fail;
    } else {
    }
    i = 0;
    goto ldv_49648;
    ldv_49647:
    {
    ret = mxl111sf_i2c_bitbang_sendbyte(state, (int )*(msg->buf + (unsigned long )i));
    __ret___5 = ret < 0;
    }
    if (__ret___5 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_sw_xfer_msg", ret, 292);
      }
    } else {
    }
    if (__ret___5 != 0) {
      {
      mxl111sf_i2c_stop(state);
      }
      goto fail;
    } else {
    }
    i = i + 1;
    ldv_49648: ;
    if (i < (int )msg->len) {
      goto ldv_49647;
    } else {
    }
    {
    mxl111sf_i2c_stop(state);
    }
  }
  fail: ;
  return (ret);
}
}
static int mxl111sf_i2c_send_data(struct mxl111sf_state *state , u8 index , u8 *wdata )
{
  int ret ;
  int tmp ;
  int __ret ;
  {
  {
  tmp = mxl111sf_ctrl_msg(state->d, (int )*wdata, wdata + 1UL, 25, (u8 *)0U, 0);
  ret = tmp;
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_send_data", ret, 325);
    }
  } else {
  }
  return (ret);
}
}
static int mxl111sf_i2c_get_data(struct mxl111sf_state *state , u8 index , u8 *wdata ,
                                 u8 *rdata )
{
  int ret ;
  int tmp ;
  int __ret ;
  {
  {
  tmp = mxl111sf_ctrl_msg(state->d, (int )*wdata, wdata + 1UL, 25, rdata, 24);
  ret = tmp;
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_get_data", ret, 335);
    }
  } else {
  }
  return (ret);
}
}
static u8 mxl111sf_i2c_check_status(struct mxl111sf_state *state )
{
  u8 status ;
  u8 buf[26U] ;
  {
  status = 0U;
  if ((dvb_usb_mxl111sf_debug & 20) == 20) {
    {
    printk("\017%s: ()\n", "mxl111sf_i2c_check_status");
    }
  } else {
  }
  {
  buf[0] = 221U;
  buf[1] = 0U;
  buf[2] = 16U;
  buf[3] = 0U;
  buf[4] = 0U;
  buf[5] = 254U;
  mxl111sf_i2c_get_data(state, 0, (u8 *)(& buf), (u8 *)(& buf));
  }
  if (((int )buf[1] & 4) != 0) {
    status = 1U;
  } else {
  }
  return (status);
}
}
static u8 mxl111sf_i2c_check_fifo(struct mxl111sf_state *state )
{
  u8 status ;
  u8 buf[26U] ;
  {
  status = 0U;
  if ((dvb_usb_mxl111sf_debug & 4) != 0) {
    {
    printk("\017%s: ()\n", "mxl111sf_i2c_check_fifo");
    }
  } else {
  }
  {
  buf[0] = 221U;
  buf[1] = 0U;
  buf[2] = 48U;
  buf[3] = 0U;
  buf[4] = 0U;
  buf[5] = 16U;
  buf[6] = 0U;
  buf[7] = 0U;
  buf[8] = 254U;
  mxl111sf_i2c_get_data(state, 0, (u8 *)(& buf), (u8 *)(& buf));
  }
  if (((int )buf[1] & 8) != 0) {
    status = 1U;
  } else {
  }
  if (((int )buf[5] & 2) != 0) {
    if ((dvb_usb_mxl111sf_debug & 4) != 0) {
      {
      printk("\017%s: (buf[5] & 0x02) == 0x02\n", "mxl111sf_i2c_check_fifo");
      }
    } else {
    }
  } else {
  }
  return (status);
}
}
static int mxl111sf_i2c_readagain(struct mxl111sf_state *state , u8 count , u8 *rbuf )
{
  u8 i2c_w_data[26U] ;
  u8 i2c_r_data[24U] ;
  u8 i ;
  u8 fifo_status ;
  int status ;
  u8 tmp ;
  u8 tmp___0 ;
  {
  i = 0U;
  fifo_status = 0U;
  status = 0;
  if ((dvb_usb_mxl111sf_debug & 4) != 0) {
    {
    printk("\017%s: read %d bytes\n", "mxl111sf_i2c_readagain", (int )count);
    }
  } else {
  }
  goto ldv_49693;
  ldv_49692:
  {
  fifo_status = mxl111sf_i2c_check_fifo(state);
  }
  ldv_49693: ;
  if ((unsigned int )fifo_status == 0U) {
    tmp = i;
    i = (u8 )((int )i + 1);
    if ((unsigned int )tmp <= 4U) {
      goto ldv_49692;
    } else {
      goto ldv_49694;
    }
  } else {
  }
  ldv_49694:
  i2c_w_data[0] = 221U;
  i2c_w_data[1] = 0U;
  i = 2U;
  goto ldv_49696;
  ldv_49695:
  i2c_w_data[(int )i] = 254U;
  i = (u8 )((int )i + 1);
  ldv_49696: ;
  if ((unsigned int )i <= 25U) {
    goto ldv_49695;
  } else {
  }
  i = 0U;
  goto ldv_49699;
  ldv_49698:
  i2c_w_data[(int )i * 3 + 2] = 12U;
  i2c_w_data[((int )i + 1) * 3] = 0U;
  i2c_w_data[(int )i * 3 + 4] = 0U;
  i = (u8 )((int )i + 1);
  ldv_49699: ;
  if ((int )i < (int )count) {
    goto ldv_49698;
  } else {
  }
  {
  mxl111sf_i2c_get_data(state, 0, (u8 *)(& i2c_w_data), (u8 *)(& i2c_r_data));
  tmp___0 = mxl111sf_i2c_check_status(state);
  }
  if ((unsigned int )tmp___0 == 1U) {
    if ((dvb_usb_mxl111sf_debug & 4) != 0) {
      {
      printk("\017%s: error!\n", "mxl111sf_i2c_readagain");
      }
    } else {
    }
  } else {
    i = 0U;
    goto ldv_49702;
    ldv_49701:
    *(rbuf + (unsigned long )i) = i2c_r_data[(int )i * 3 + 1];
    if ((dvb_usb_mxl111sf_debug & 4) != 0) {
      {
      printk("\017%s: %02x\t %02x\n", "mxl111sf_i2c_readagain", (int )i2c_r_data[(int )i * 3 + 1],
             (int )i2c_r_data[(int )i * 3 + 2]);
      }
    } else {
    }
    i = (u8 )((int )i + 1);
    ldv_49702: ;
    if ((int )i < (int )count) {
      goto ldv_49701;
    } else {
    }
    status = 1;
  }
  return (status);
}
}
static int mxl111sf_i2c_hw_xfer_msg(struct mxl111sf_state *state , struct i2c_msg *msg )
{
  int i ;
  int k ;
  int ret ;
  u16 index ;
  u8 buf[26U] ;
  u8 i2c_r_data[24U] ;
  u16 block_len ;
  u16 left_over_len ;
  u8 rd_status[8U] ;
  u8 ret_status ;
  u8 readbuff[26U] ;
  u8 tmp ;
  u8 tmp___0 ;
  u8 tmp___1 ;
  u8 tmp___2 ;
  u8 tmp___3 ;
  int tmp___4 ;
  u8 tmp___5 ;
  {
  ret = 0;
  index = 0U;
  if ((dvb_usb_mxl111sf_debug & 4) != 0) {
    {
    printk("\017%s: addr: 0x%02x, read buff len: %d, write buff len: %d\n", "mxl111sf_i2c_hw_xfer_msg",
           (int )msg->addr, (int )msg->flags & 1 ? (int )msg->len : 0, ((int )msg->flags & 1) == 0 ? (int )msg->len : 0);
    }
  } else {
  }
  index = 0U;
  goto ldv_49721;
  ldv_49720:
  buf[(int )index] = 254U;
  index = (u16 )((int )index + 1);
  ldv_49721: ;
  if ((unsigned int )index <= 25U) {
    goto ldv_49720;
  } else {
  }
  {
  buf[0] = 153U;
  buf[1] = 0U;
  buf[2] = 48U;
  buf[3] = 128U;
  buf[4] = 0U;
  buf[5] = 48U;
  buf[6] = 129U;
  buf[7] = 0U;
  buf[8] = 20U;
  buf[9] = 255U;
  buf[10] = 0U;
  buf[11] = 36U;
  buf[12] = 247U;
  buf[13] = 0U;
  ret = mxl111sf_i2c_send_data(state, 0, (u8 *)(& buf));
  }
  if (((int )msg->flags & 1) == 0 && (unsigned int )msg->len != 0U) {
    if ((dvb_usb_mxl111sf_debug & 4) != 0) {
      {
      printk("\017%s: %d\t%02x\n", "mxl111sf_i2c_hw_xfer_msg", (int )msg->len, (int )*(msg->buf));
      }
    } else {
    }
    {
    buf[2] = 0U;
    buf[3] = 94U;
    buf[4] = 3U;
    buf[5] = 8U;
    buf[6] = (u8 )msg->addr;
    buf[7] = 0U;
    buf[8] = 254U;
    ret = mxl111sf_i2c_send_data(state, 0, (u8 *)(& buf));
    tmp = mxl111sf_i2c_check_status(state);
    }
    if ((unsigned int )tmp == 1U) {
      if ((dvb_usb_mxl111sf_debug & 4) != 0) {
        {
        printk("\017%s: NACK writing slave address %02x\n", "mxl111sf_i2c_hw_xfer_msg",
               (int )msg->addr);
        }
      } else {
      }
      buf[2] = 0U;
      buf[3] = 78U;
      buf[4] = 3U;
      ret = -5;
      goto exit;
    } else {
    }
    block_len = (u16 )((unsigned int )msg->len / 8U);
    left_over_len = (unsigned int )msg->len & 7U;
    index = 0U;
    if ((dvb_usb_mxl111sf_debug & 4) != 0) {
      {
      printk("\017%s: block_len %d, left_over_len %d\n", "mxl111sf_i2c_hw_xfer_msg",
             (int )block_len, (int )left_over_len);
      }
    } else {
    }
    index = 0U;
    goto ldv_49728;
    ldv_49727:
    i = 0;
    goto ldv_49725;
    ldv_49724:
    buf[i * 3 + 2] = 12U;
    buf[(i + 1) * 3] = *(msg->buf + (unsigned long )((int )index * 8 + i));
    buf[i * 3 + 4] = 0U;
    i = i + 1;
    ldv_49725: ;
    if (i <= 7) {
      goto ldv_49724;
    } else {
    }
    {
    ret = mxl111sf_i2c_send_data(state, 0, (u8 *)(& buf));
    tmp___0 = mxl111sf_i2c_check_status(state);
    }
    if ((unsigned int )tmp___0 == 1U) {
      if ((dvb_usb_mxl111sf_debug & 4) != 0) {
        {
        printk("\017%s: NACK writing slave address %02x\n", "mxl111sf_i2c_hw_xfer_msg",
               (int )msg->addr);
        }
      } else {
      }
      buf[2] = 0U;
      buf[3] = 78U;
      buf[4] = 3U;
      ret = -5;
      goto exit;
    } else {
    }
    index = (u16 )((int )index + 1);
    ldv_49728: ;
    if ((int )index < (int )block_len) {
      goto ldv_49727;
    } else {
    }
    if ((unsigned int )left_over_len != 0U) {
      k = 0;
      goto ldv_49731;
      ldv_49730:
      buf[k] = 254U;
      k = k + 1;
      ldv_49731: ;
      if (k <= 25) {
        goto ldv_49730;
      } else {
      }
      buf[0] = 153U;
      buf[1] = 0U;
      i = 0;
      goto ldv_49734;
      ldv_49733:
      buf[i * 3 + 2] = 12U;
      buf[(i + 1) * 3] = *(msg->buf + (unsigned long )((int )index * 8 + i));
      if ((dvb_usb_mxl111sf_debug & 4) != 0) {
        {
        printk("\017%s: index = %d %d data %d\n", "mxl111sf_i2c_hw_xfer_msg", (int )index,
               i, (int )*(msg->buf + (unsigned long )((int )index * 8 + i)));
        }
      } else {
      }
      buf[i * 3 + 4] = 0U;
      i = i + 1;
      ldv_49734: ;
      if (i < (int )left_over_len) {
        goto ldv_49733;
      } else {
      }
      {
      ret = mxl111sf_i2c_send_data(state, 0, (u8 *)(& buf));
      tmp___1 = mxl111sf_i2c_check_status(state);
      }
      if ((unsigned int )tmp___1 == 1U) {
        if ((dvb_usb_mxl111sf_debug & 4) != 0) {
          {
          printk("\017%s: NACK writing slave address %02x\n", "mxl111sf_i2c_hw_xfer_msg",
                 (int )msg->addr);
          }
        } else {
        }
        buf[2] = 0U;
        buf[3] = 78U;
        buf[4] = 3U;
        ret = -5;
        goto exit;
      } else {
      }
    } else {
    }
    buf[2] = 0U;
    buf[3] = 78U;
    buf[4] = 3U;
  } else {
  }
  if ((int )msg->flags & 1 && (unsigned int )msg->len != 0U) {
    if ((dvb_usb_mxl111sf_debug & 4) != 0) {
      {
      printk("\017%s: read buf len %d\n", "mxl111sf_i2c_hw_xfer_msg", (int )msg->len);
      }
    } else {
    }
    {
    buf[2] = 0U;
    buf[3] = 223U;
    buf[4] = 3U;
    buf[5] = 20U;
    buf[6] = (u8 )msg->len;
    buf[7] = 0U;
    buf[8] = 8U;
    buf[9] = (u8 )msg->addr;
    buf[10] = 0U;
    buf[11] = 254U;
    ret = mxl111sf_i2c_send_data(state, 0, (u8 *)(& buf));
    tmp___2 = mxl111sf_i2c_check_status(state);
    }
    if ((unsigned int )tmp___2 == 1U) {
      if ((dvb_usb_mxl111sf_debug & 4) != 0) {
        {
        printk("\017%s: NACK reading slave address %02x\n", "mxl111sf_i2c_hw_xfer_msg",
               (int )msg->addr);
        }
      } else {
      }
      buf[2] = 0U;
      buf[3] = 199U;
      buf[4] = 3U;
      ret = -5;
      goto exit;
    } else {
    }
    block_len = (u16 )((unsigned int )msg->len / 8U);
    left_over_len = (unsigned int )msg->len & 7U;
    index = 0U;
    if ((dvb_usb_mxl111sf_debug & 4) != 0) {
      {
      printk("\017%s: block_len %d, left_over_len %d\n", "mxl111sf_i2c_hw_xfer_msg",
             (int )block_len, (int )left_over_len);
      }
    } else {
    }
    buf[0] = 221U;
    buf[1] = 0U;
    index = 0U;
    goto ldv_49747;
    ldv_49746:
    i = 0;
    goto ldv_49737;
    ldv_49736:
    buf[i * 3 + 2] = 12U;
    buf[(i + 1) * 3] = 0U;
    buf[i * 3 + 4] = 0U;
    i = i + 1;
    ldv_49737: ;
    if (i <= 7) {
      goto ldv_49736;
    } else {
    }
    {
    ret = mxl111sf_i2c_get_data(state, 0, (u8 *)(& buf), (u8 *)(& i2c_r_data));
    tmp___3 = mxl111sf_i2c_check_status(state);
    }
    if ((unsigned int )tmp___3 == 1U) {
      if ((dvb_usb_mxl111sf_debug & 4) != 0) {
        {
        printk("\017%s: NACK reading slave address %02x\n", "mxl111sf_i2c_hw_xfer_msg",
               (int )msg->addr);
        }
      } else {
      }
      buf[2] = 0U;
      buf[3] = 199U;
      buf[4] = 3U;
      ret = -5;
      goto exit;
    } else {
    }
    i = 0;
    goto ldv_49744;
    ldv_49743:
    rd_status[i] = i2c_r_data[i * 3 + 2];
    if ((unsigned int )rd_status[i] == 4U) {
      if (i <= 6) {
        if ((dvb_usb_mxl111sf_debug & 4) != 0) {
          {
          printk("\017%s: i2c fifo empty! @ %d\n", "mxl111sf_i2c_hw_xfer_msg", i);
          }
        } else {
        }
        {
        *(msg->buf + (unsigned long )((int )index * 8 + i)) = i2c_r_data[i * 3 + 1];
        tmp___4 = mxl111sf_i2c_readagain(state, (int )((unsigned int )(~ ((int )((u8 )i))) + 8U),
                                         (u8 *)(& readbuff));
        ret_status = (u8 )tmp___4;
        }
        if ((unsigned int )ret_status == 1U) {
          k = 0;
          goto ldv_49740;
          ldv_49739:
          *(msg->buf + (unsigned long )((int )index * 8 + ((k + i) + 1))) = readbuff[k];
          if ((dvb_usb_mxl111sf_debug & 4) != 0) {
            {
            printk("\017%s: read data: %02x\t %02x\n", "mxl111sf_i2c_hw_xfer_msg",
                   (int )*(msg->buf + (unsigned long )((int )index * 8 + (k + i))),
                   (int )index * 8 + (k + i));
            }
          } else {
          }
          if ((dvb_usb_mxl111sf_debug & 4) != 0) {
            {
            printk("\017%s: read data: %02x\t %02x\n", "mxl111sf_i2c_hw_xfer_msg",
                   (int )*(msg->buf + (unsigned long )((int )index * 8 + ((k + i) + 1))),
                   (int )readbuff[k]);
            }
          } else {
          }
          k = k + 1;
          ldv_49740: ;
          if (k < ~ i + 8) {
            goto ldv_49739;
          } else {
          }
          goto stop_copy;
        } else
        if ((dvb_usb_mxl111sf_debug & 4) != 0) {
          {
          printk("\017%s: readagain ERROR!\n", "mxl111sf_i2c_hw_xfer_msg");
          }
        } else {
        }
      } else {
        *(msg->buf + (unsigned long )((int )index * 8 + i)) = i2c_r_data[i * 3 + 1];
      }
    } else {
      *(msg->buf + (unsigned long )((int )index * 8 + i)) = i2c_r_data[i * 3 + 1];
    }
    i = i + 1;
    ldv_49744: ;
    if (i <= 7) {
      goto ldv_49743;
    } else {
    }
    stop_copy:
    index = (u16 )((int )index + 1);
    ldv_49747: ;
    if ((int )index < (int )block_len) {
      goto ldv_49746;
    } else {
    }
    if ((unsigned int )left_over_len != 0U) {
      k = 0;
      goto ldv_49750;
      ldv_49749:
      buf[k] = 254U;
      k = k + 1;
      ldv_49750: ;
      if (k <= 25) {
        goto ldv_49749;
      } else {
      }
      buf[0] = 221U;
      buf[1] = 0U;
      i = 0;
      goto ldv_49753;
      ldv_49752:
      buf[i * 3 + 2] = 12U;
      buf[(i + 1) * 3] = 0U;
      buf[i * 3 + 4] = 0U;
      i = i + 1;
      ldv_49753: ;
      if (i < (int )left_over_len) {
        goto ldv_49752;
      } else {
      }
      {
      ret = mxl111sf_i2c_get_data(state, 0, (u8 *)(& buf), (u8 *)(& i2c_r_data));
      tmp___5 = mxl111sf_i2c_check_status(state);
      }
      if ((unsigned int )tmp___5 == 1U) {
        if ((dvb_usb_mxl111sf_debug & 4) != 0) {
          {
          printk("\017%s: NACK reading slave address %02x\n", "mxl111sf_i2c_hw_xfer_msg",
                 (int )msg->addr);
          }
        } else {
        }
        buf[2] = 0U;
        buf[3] = 199U;
        buf[4] = 3U;
        ret = -5;
        goto exit;
      } else {
      }
      i = 0;
      goto ldv_49756;
      ldv_49755:
      *(msg->buf + (unsigned long )((int )block_len * 8 + i)) = i2c_r_data[i * 3 + 1];
      if ((dvb_usb_mxl111sf_debug & 4) != 0) {
        {
        printk("\017%s: read data: %02x\t %02x\n", "mxl111sf_i2c_hw_xfer_msg", (int )i2c_r_data[i * 3 + 1],
               (int )i2c_r_data[i * 3 + 2]);
        }
      } else {
      }
      i = i + 1;
      ldv_49756: ;
      if (i < (int )left_over_len) {
        goto ldv_49755;
      } else {
      }
    } else {
    }
    {
    buf[0] = 153U;
    buf[1] = 0U;
    buf[2] = 0U;
    buf[3] = 23U;
    buf[4] = 3U;
    buf[5] = 254U;
    ret = mxl111sf_i2c_send_data(state, 0, (u8 *)(& buf));
    buf[2] = 0U;
    buf[3] = 199U;
    buf[4] = 3U;
    }
  } else {
  }
  exit:
  {
  buf[0] = 153U;
  buf[1] = 0U;
  buf[5] = 254U;
  mxl111sf_i2c_send_data(state, 0, (u8 *)(& buf));
  buf[2] = 0U;
  buf[3] = 223U;
  buf[4] = 3U;
  buf[5] = 48U;
  buf[6] = 0U;
  buf[7] = 0U;
  buf[8] = 254U;
  mxl111sf_i2c_send_data(state, 0, (u8 *)(& buf));
  buf[2] = 48U;
  buf[3] = 129U;
  buf[4] = 0U;
  buf[5] = 48U;
  buf[6] = 0U;
  buf[7] = 0U;
  buf[8] = 48U;
  buf[9] = 0U;
  buf[10] = 0U;
  buf[11] = 254U;
  mxl111sf_i2c_send_data(state, 0, (u8 *)(& buf));
  }
  return (ret);
}
}
int mxl111sf_i2c_xfer(struct i2c_adapter *adap , struct i2c_msg *msg , int num )
{
  struct dvb_usb_device *d ;
  void *tmp ;
  struct mxl111sf_state *state ;
  int hwi2c ;
  int i ;
  int ret ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int __ret ;
  {
  {
  tmp = i2c_get_adapdata((struct i2c_adapter const *)adap);
  d = (struct dvb_usb_device *)tmp;
  state = (struct mxl111sf_state *)d->priv;
  hwi2c = (unsigned int )state->chip_rev > 1U;
  tmp___0 = ldv_mutex_lock_interruptible_121(& d->i2c_mutex);
  }
  if (tmp___0 < 0) {
    return (-11);
  } else {
  }
  i = 0;
  goto ldv_49773;
  ldv_49772: ;
  if (hwi2c != 0) {
    {
    tmp___1 = mxl111sf_i2c_hw_xfer_msg(state, msg + (unsigned long )i);
    ret = tmp___1;
    }
  } else {
    {
    tmp___2 = mxl111sf_i2c_sw_xfer_msg(state, msg + (unsigned long )i);
    ret = tmp___2;
    }
  }
  __ret = ret < 0;
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_i2c_xfer", ret, 829);
    }
  } else {
  }
  if (__ret != 0) {
    if ((dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\017%s: failed with error %d on i2c transaction %d of %d, %sing %d bytes to/from 0x%02x\n",
             "mxl111sf_i2c_xfer", ret, i + 1, num, (int )(msg + (unsigned long )i)->flags & 1 ? (char *)"read" : (char *)"writ",
             (int )(msg + (unsigned long )i)->len, (int )(msg + (unsigned long )i)->addr);
      }
    } else {
    }
    goto ldv_49771;
  } else {
  }
  i = i + 1;
  ldv_49773: ;
  if (i < num) {
    goto ldv_49772;
  } else {
  }
  ldv_49771:
  {
  ldv_mutex_unlock_122___0(& d->i2c_mutex);
  }
  return (i == num ? num : -121);
}
}
static int ldv_mutex_lock_interruptible_121(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_i2c_mutex_of_dvb_usb_device(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_122___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_i2c_mutex_of_dvb_usb_device(ldv_func_arg1);
  }
  return;
}
}
extern int i2c_transfer(struct i2c_adapter * , struct i2c_msg * , int ) ;
int mxl111sf_set_gpio(struct mxl111sf_state *state , int gpio , int val ) ;
static int mxl111sf_set_gpo_state(struct mxl111sf_state *state , u8 pin , u8 val )
{
  int ret ;
  u8 tmp ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  {
  if ((dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\017%s: (%d, %d)\n", "mxl111sf_set_gpo_state", (int )pin, (int )val);
    }
  } else {
  }
  if ((unsigned int )pin - 1U <= 6U) {
    {
    ret = mxl111sf_read_reg(state, 25, & tmp);
    __ret = ret < 0;
    }
    if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_set_gpo_state", ret, 44);
      }
    } else {
    }
    if (__ret != 0) {
      goto fail;
    } else {
    }
    {
    tmp = (u8 )((int )((signed char )tmp) & ~ ((int )((signed char )(1 << ((int )pin + -1)))));
    tmp = (u8 )((int )((signed char )tmp) | (int )((signed char )((int )val << ((int )pin + -1))));
    ret = mxl111sf_write_reg(state, 25, (int )tmp);
    __ret___0 = ret < 0;
    }
    if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_set_gpo_state", ret, 49);
      }
    } else {
    }
    if (__ret___0 != 0) {
      goto fail;
    } else {
    }
  } else
  if ((unsigned int )pin <= 10U) {
    if ((unsigned int )pin == 0U) {
      pin = (unsigned int )pin + 7U;
    } else {
    }
    {
    ret = mxl111sf_read_reg(state, 48, & tmp);
    __ret___1 = ret < 0;
    }
    if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_set_gpo_state", ret, 55);
      }
    } else {
    }
    if (__ret___1 != 0) {
      goto fail;
    } else {
    }
    {
    tmp = (u8 )((int )((signed char )tmp) & ~ ((int )((signed char )(1 << ((int )pin + -3)))));
    tmp = (u8 )((int )((signed char )tmp) | (int )((signed char )((int )val << ((int )pin + -3))));
    ret = mxl111sf_write_reg(state, 48, (int )tmp);
    __ret___2 = ret < 0;
    }
    if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
      {
      printk("\v%s: error %d on line %d\n", "mxl111sf_set_gpo_state", ret, 60);
      }
    } else {
    }
    if (__ret___2 != 0) {
      goto fail;
    } else {
    }
  } else {
    ret = -22;
  }
  fail: ;
  return (ret);
}
}
static int mxl111sf_get_gpi_state(struct mxl111sf_state *state , u8 pin , u8 *val )
{
  int ret ;
  u8 tmp ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  {
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: (0x%02x)\n", "mxl111sf_get_gpi_state", (int )pin);
    }
  } else {
  }
  *val = 0U;
  {
  if ((int )pin == 0) {
    goto case_0;
  } else {
  }
  if ((int )pin == 1) {
    goto case_1;
  } else {
  }
  if ((int )pin == 2) {
    goto case_2;
  } else {
  }
  if ((int )pin == 3) {
    goto case_3;
  } else {
  }
  if ((int )pin == 4) {
    goto case_4;
  } else {
  }
  if ((int )pin == 5) {
    goto case_5;
  } else {
  }
  if ((int )pin == 6) {
    goto case_6;
  } else {
  }
  if ((int )pin == 7) {
    goto case_7;
  } else {
  }
  if ((int )pin == 8) {
    goto case_8;
  } else {
  }
  if ((int )pin == 9) {
    goto case_9;
  } else {
  }
  if ((int )pin == 10) {
    goto case_10;
  } else {
  }
  goto switch_default;
  case_0: ;
  case_1: ;
  case_2: ;
  case_3:
  {
  ret = mxl111sf_read_reg(state, 35, & tmp);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_get_gpi_state", ret, 83);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  *val = (unsigned int )((u8 )((int )tmp >> ((int )pin + 4))) & 1U;
  goto ldv_49569;
  case_4: ;
  case_5: ;
  case_6: ;
  case_7:
  {
  ret = mxl111sf_read_reg(state, 47, & tmp);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_get_gpi_state", ret, 92);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  *val = (unsigned int )((u8 )((int )tmp >> (int )pin)) & 1U;
  goto ldv_49569;
  case_8: ;
  case_9: ;
  case_10:
  {
  ret = mxl111sf_read_reg(state, 34, & tmp);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_get_gpi_state", ret, 100);
    }
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  *val = (unsigned int )((u8 )((int )tmp >> ((int )pin + -3))) & 1U;
  goto ldv_49569;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_49569: ;
  fail: ;
  return (ret);
}
}
static int mxl111sf_config_gpio_pins(struct mxl111sf_state *state , struct mxl_gpio_cfg *gpio_cfg )
{
  int ret ;
  u8 tmp ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  int __ret___3 ;
  int __ret___4 ;
  int tmp___0 ;
  int tmp___1 ;
  int __ret___5 ;
  {
  if ((dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\017%s: (%d, %d)\n", "mxl111sf_config_gpio_pins", (int )gpio_cfg->pin,
           (int )gpio_cfg->dir);
    }
  } else {
  }
  {
  if ((int )gpio_cfg->pin == 0) {
    goto case_0;
  } else {
  }
  if ((int )gpio_cfg->pin == 1) {
    goto case_1;
  } else {
  }
  if ((int )gpio_cfg->pin == 2) {
    goto case_2;
  } else {
  }
  if ((int )gpio_cfg->pin == 3) {
    goto case_3;
  } else {
  }
  if ((int )gpio_cfg->pin == 4) {
    goto case_4;
  } else {
  }
  if ((int )gpio_cfg->pin == 5) {
    goto case_5;
  } else {
  }
  if ((int )gpio_cfg->pin == 6) {
    goto case_6;
  } else {
  }
  if ((int )gpio_cfg->pin == 7) {
    goto case_7;
  } else {
  }
  if ((int )gpio_cfg->pin == 8) {
    goto case_8;
  } else {
  }
  if ((int )gpio_cfg->pin == 9) {
    goto case_9;
  } else {
  }
  if ((int )gpio_cfg->pin == 10) {
    goto case_10;
  } else {
  }
  goto switch_default;
  case_0: ;
  case_1: ;
  case_2: ;
  case_3:
  {
  ret = mxl111sf_read_reg(state, 132, & tmp);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_gpio_pins", ret, 131);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  tmp = (u8 )((int )((signed char )tmp) & ~ ((int )((signed char )(1 << ((int )gpio_cfg->pin + 4)))));
  tmp = (u8 )((int )((signed char )tmp) | (int )((signed char )((int )gpio_cfg->dir << ((int )gpio_cfg->pin + 4))));
  ret = mxl111sf_write_reg(state, 132, (int )tmp);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_gpio_pins", ret, 136);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  goto ldv_49602;
  case_4: ;
  case_5: ;
  case_6: ;
  case_7:
  {
  ret = mxl111sf_read_reg(state, 137, & tmp);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_gpio_pins", ret, 144);
    }
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  {
  tmp = (u8 )((int )((signed char )tmp) & ~ ((int )((signed char )(1 << (int )gpio_cfg->pin))));
  tmp = (u8 )((int )((signed char )tmp) | (int )((signed char )((int )gpio_cfg->dir << (int )gpio_cfg->pin)));
  ret = mxl111sf_write_reg(state, 137, (int )tmp);
  __ret___2 = ret < 0;
  }
  if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_gpio_pins", ret, 149);
    }
  } else {
  }
  if (__ret___2 != 0) {
    goto fail;
  } else {
  }
  goto ldv_49602;
  case_8: ;
  case_9: ;
  case_10:
  {
  ret = mxl111sf_read_reg(state, 130, & tmp);
  __ret___3 = ret < 0;
  }
  if (__ret___3 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_gpio_pins", ret, 156);
    }
  } else {
  }
  if (__ret___3 != 0) {
    goto fail;
  } else {
  }
  {
  tmp = (u8 )((int )((signed char )tmp) & ~ ((int )((signed char )(1 << ((int )gpio_cfg->pin + -3)))));
  tmp = (u8 )((int )((signed char )tmp) | (int )((signed char )((int )gpio_cfg->dir << ((int )gpio_cfg->pin + -3))));
  ret = mxl111sf_write_reg(state, 130, (int )tmp);
  __ret___4 = ret < 0;
  }
  if (__ret___4 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_gpio_pins", ret, 161);
    }
  } else {
  }
  if (__ret___4 != 0) {
    goto fail;
  } else {
  }
  goto ldv_49602;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_49602: ;
  if ((unsigned int )gpio_cfg->dir == 1U) {
    {
    tmp___0 = mxl111sf_set_gpo_state(state, (int )gpio_cfg->pin, (int )gpio_cfg->val);
    ret = tmp___0;
    }
  } else {
    {
    tmp___1 = mxl111sf_get_gpi_state(state, (int )gpio_cfg->pin, & gpio_cfg->val);
    ret = tmp___1;
    }
  }
  __ret___5 = ret < 0;
  if (__ret___5 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_gpio_pins", ret, 173);
    }
  } else {
  }
  fail: ;
  return (ret);
}
}
static int mxl111sf_hw_do_set_gpio(struct mxl111sf_state *state , int gpio , int direction ,
                                   int val )
{
  struct mxl_gpio_cfg gpio_config ;
  int tmp ;
  {
  gpio_config.pin = (unsigned char )gpio;
  gpio_config.dir = (unsigned char )direction;
  gpio_config.val = (unsigned char )val;
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: (%d, %d, %d)\n", "mxl111sf_hw_do_set_gpio", gpio, direction, val);
    }
  } else {
  }
  {
  tmp = mxl111sf_config_gpio_pins(state, & gpio_config);
  }
  return (tmp);
}
}
int mxl111sf_config_pin_mux_modes(struct mxl111sf_state *state , enum mxl111sf_mux_config pin_mux_config )
{
  u8 r12 ;
  u8 r15 ;
  u8 r17 ;
  u8 r18 ;
  u8 r3D ;
  u8 r82 ;
  u8 r84 ;
  u8 r89 ;
  int ret ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  int __ret___3 ;
  int __ret___4 ;
  int __ret___5 ;
  int __ret___6 ;
  int __ret___7 ;
  int __ret___8 ;
  int __ret___9 ;
  int __ret___10 ;
  int __ret___11 ;
  int __ret___12 ;
  int __ret___13 ;
  int __ret___14 ;
  {
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: (%d)\n", "mxl111sf_config_pin_mux_modes", (unsigned int )pin_mux_config);
    }
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 23, & r17);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 223);
    }
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 24, & r18);
  __ret___0 = ret < 0;
  }
  if (__ret___0 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 226);
    }
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 18, & r12);
  __ret___1 = ret < 0;
  }
  if (__ret___1 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 229);
    }
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 21, & r15);
  __ret___2 = ret < 0;
  }
  if (__ret___2 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 232);
    }
  } else {
  }
  if (__ret___2 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 130, & r82);
  __ret___3 = ret < 0;
  }
  if (__ret___3 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 235);
    }
  } else {
  }
  if (__ret___3 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 132, & r84);
  __ret___4 = ret < 0;
  }
  if (__ret___4 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 238);
    }
  } else {
  }
  if (__ret___4 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 137, & r89);
  __ret___5 = ret < 0;
  }
  if (__ret___5 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 241);
    }
  } else {
  }
  if (__ret___5 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_read_reg(state, 61, & r3D);
  __ret___6 = ret < 0;
  }
  if (__ret___6 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 244);
    }
  } else {
  }
  if (__ret___6 != 0) {
    goto fail;
  } else {
  }
  {
  if ((unsigned int )pin_mux_config == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )pin_mux_config == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )pin_mux_config == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )pin_mux_config == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )pin_mux_config == 5U) {
    goto case_5;
  } else {
  }
  if ((unsigned int )pin_mux_config == 7U) {
    goto case_7;
  } else {
  }
  if ((unsigned int )pin_mux_config == 6U) {
    goto case_6;
  } else {
  }
  if ((unsigned int )pin_mux_config == 8U) {
    goto case_8;
  } else {
  }
  if ((unsigned int )pin_mux_config == 9U) {
    goto case_9;
  } else {
  }
  if ((unsigned int )pin_mux_config == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_1:
  r17 = (u8 )((unsigned int )r17 | 64U);
  r18 = (u8 )((unsigned int )r18 | 1U);
  r18 = (unsigned int )r18 & 253U;
  r3D = (unsigned int )r3D & 127U;
  r12 = (unsigned int )r12 & 251U;
  r15 = (unsigned int )r15 & 191U;
  r3D = (unsigned int )r3D & 239U;
  r82 = (u8 )((unsigned int )r82 | 16U);
  r82 = (u8 )((unsigned int )r82 | 128U);
  r82 = (u8 )((unsigned int )r82 | 64U);
  r82 = (u8 )((unsigned int )r82 | 32U);
  r84 = (u8 )((unsigned int )r84 | 240U);
  r89 = (u8 )((unsigned int )r89 | 240U);
  goto ldv_49661;
  case_2:
  r17 = (u8 )((unsigned int )r17 | 64U);
  r18 = (unsigned int )r18 & 254U;
  r18 = (u8 )((unsigned int )r18 | 2U);
  r3D = (unsigned int )r3D & 127U;
  r12 = (unsigned int )r12 & 251U;
  r15 = (unsigned int )r15 & 191U;
  r3D = (unsigned int )r3D & 239U;
  r82 = (u8 )((unsigned int )r82 | 16U);
  r82 = (u8 )((unsigned int )r82 | 128U);
  r82 = (u8 )((unsigned int )r82 | 64U);
  r82 = (u8 )((unsigned int )r82 | 32U);
  r84 = (u8 )((unsigned int )r84 | 240U);
  r89 = (u8 )((unsigned int )r89 | 240U);
  goto ldv_49661;
  case_3:
  r17 = (unsigned int )r17 & 191U;
  r18 = (unsigned int )r18 & 254U;
  r18 = (unsigned int )r18 & 253U;
  r3D = (unsigned int )r3D & 127U;
  r12 = (unsigned int )r12 & 251U;
  r15 = (unsigned int )r15 & 191U;
  r3D = (unsigned int )r3D & 239U;
  r82 = (unsigned int )r82 & 239U;
  r82 = (unsigned int )r82 & 127U;
  r82 = (unsigned int )r82 & 191U;
  r82 = (unsigned int )r82 & 223U;
  r84 = (unsigned int )r84 & 15U;
  r89 = (unsigned int )r89 & 15U;
  goto ldv_49661;
  case_4:
  r17 = (unsigned int )r17 & 191U;
  r18 = (unsigned int )r18 & 254U;
  r18 = (u8 )((unsigned int )r18 | 2U);
  r3D = (unsigned int )r3D & 127U;
  r12 = (unsigned int )r12 & 251U;
  r15 = (unsigned int )r15 & 191U;
  r3D = (unsigned int )r3D & 239U;
  r82 = (unsigned int )r82 & 239U;
  r82 = (unsigned int )r82 & 127U;
  r82 = (unsigned int )r82 & 191U;
  r82 = (unsigned int )r82 & 223U;
  r84 = (unsigned int )r84 & 15U;
  r89 = (unsigned int )r89 & 15U;
  goto ldv_49661;
  case_5:
  r17 = (unsigned int )r17 & 191U;
  r18 = (unsigned int )r18 & 254U;
  r18 = (u8 )((unsigned int )r18 | 2U);
  r3D = (u8 )((unsigned int )r3D | 128U);
  r12 = (unsigned int )r12 & 251U;
  r15 = (unsigned int )r15 & 191U;
  r3D = (unsigned int )r3D & 239U;
  r82 = (unsigned int )r82 & 239U;
  r82 = (unsigned int )r82 & 127U;
  r82 = (unsigned int )r82 & 191U;
  r82 = (unsigned int )r82 & 223U;
  r84 = (unsigned int )r84 & 15U;
  r89 = (unsigned int )r89 & 15U;
  goto ldv_49661;
  case_7:
  r17 = (unsigned int )r17 & 191U;
  r18 = (unsigned int )r18 & 254U;
  r18 = (u8 )((unsigned int )r18 | 2U);
  r3D = (u8 )((unsigned int )r3D | 128U);
  r12 = (unsigned int )r12 & 251U;
  r15 = (u8 )((unsigned int )r15 | 64U);
  r3D = (u8 )((unsigned int )r3D | 16U);
  r82 = (unsigned int )r82 & 239U;
  r82 = (unsigned int )r82 & 127U;
  r82 = (unsigned int )r82 & 191U;
  r82 = (unsigned int )r82 & 223U;
  r84 = (unsigned int )r84 & 15U;
  r89 = (unsigned int )r89 & 15U;
  goto ldv_49661;
  case_6:
  r17 = (unsigned int )r17 & 191U;
  r18 = (unsigned int )r18 & 254U;
  r18 = (u8 )((unsigned int )r18 | 2U);
  r3D = (unsigned int )r3D & 127U;
  r12 = (unsigned int )r12 & 251U;
  r15 = (u8 )((unsigned int )r15 | 64U);
  r3D = (u8 )((unsigned int )r3D | 16U);
  r82 = (unsigned int )r82 & 239U;
  r82 = (unsigned int )r82 & 127U;
  r82 = (unsigned int )r82 & 191U;
  r82 = (unsigned int )r82 & 223U;
  r84 = (unsigned int )r84 & 15U;
  r89 = (unsigned int )r89 & 15U;
  goto ldv_49661;
  case_8:
  r17 = (unsigned int )r17 & 191U;
  r18 = (u8 )((unsigned int )r18 | 1U);
  r18 = (unsigned int )r18 & 253U;
  r3D = (unsigned int )r3D & 127U;
  r12 = (unsigned int )r12 & 251U;
  r15 = (unsigned int )r15 & 191U;
  r3D = (unsigned int )r3D & 239U;
  r82 = (unsigned int )r82 & 239U;
  r82 = (unsigned int )r82 & 127U;
  r82 = (unsigned int )r82 & 191U;
  r82 = (unsigned int )r82 & 223U;
  r84 = (unsigned int )r84 & 15U;
  r89 = (unsigned int )r89 & 15U;
  goto ldv_49661;
  case_9:
  r17 = (unsigned int )r17 & 191U;
  r18 = (unsigned int )r18 & 254U;
  r18 = (unsigned int )r18 & 253U;
  r3D = (unsigned int )r3D & 127U;
  r12 = (u8 )((unsigned int )r12 | 4U);
  r15 = (u8 )((unsigned int )r15 | 64U);
  r3D = (unsigned int )r3D & 239U;
  r82 = (unsigned int )r82 & 239U;
  r82 = (unsigned int )r82 & 127U;
  r82 = (unsigned int )r82 & 191U;
  r82 = (unsigned int )r82 & 223U;
  r84 = (unsigned int )r84 & 15U;
  r89 = (unsigned int )r89 & 15U;
  goto ldv_49661;
  case_0: ;
  switch_default:
  r17 = (u8 )((unsigned int )r17 | 64U);
  r18 = (unsigned int )r18 & 254U;
  r18 = (unsigned int )r18 & 253U;
  r3D = (unsigned int )r3D & 127U;
  r12 = (unsigned int )r12 & 251U;
  r15 = (unsigned int )r15 & 191U;
  r3D = (unsigned int )r3D & 239U;
  r82 = (unsigned int )r82 & 239U;
  r82 = (unsigned int )r82 & 127U;
  r82 = (unsigned int )r82 & 191U;
  r82 = (unsigned int )r82 & 223U;
  r84 = (unsigned int )r84 & 15U;
  r89 = (unsigned int )r89 & 15U;
  goto ldv_49661;
  switch_break: ;
  }
  ldv_49661:
  {
  ret = mxl111sf_write_reg(state, 23, (int )r17);
  __ret___7 = ret < 0;
  }
  if (__ret___7 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 532);
    }
  } else {
  }
  if (__ret___7 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 24, (int )r18);
  __ret___8 = ret < 0;
  }
  if (__ret___8 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 535);
    }
  } else {
  }
  if (__ret___8 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 18, (int )r12);
  __ret___9 = ret < 0;
  }
  if (__ret___9 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 538);
    }
  } else {
  }
  if (__ret___9 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 21, (int )r15);
  __ret___10 = ret < 0;
  }
  if (__ret___10 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 541);
    }
  } else {
  }
  if (__ret___10 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 130, (int )r82);
  __ret___11 = ret < 0;
  }
  if (__ret___11 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 544);
    }
  } else {
  }
  if (__ret___11 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 132, (int )r84);
  __ret___12 = ret < 0;
  }
  if (__ret___12 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 547);
    }
  } else {
  }
  if (__ret___12 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 137, (int )r89);
  __ret___13 = ret < 0;
  }
  if (__ret___13 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 550);
    }
  } else {
  }
  if (__ret___13 != 0) {
    goto fail;
  } else {
  }
  {
  ret = mxl111sf_write_reg(state, 61, (int )r3D);
  __ret___14 = ret < 0;
  }
  if (__ret___14 != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_config_pin_mux_modes", ret, 553);
    }
  } else {
  }
  if (__ret___14 != 0) {
  } else {
  }
  fail: ;
  return (ret);
}
}
static int mxl111sf_hw_set_gpio(struct mxl111sf_state *state , int gpio , int val )
{
  int tmp ;
  {
  {
  tmp = mxl111sf_hw_do_set_gpio(state, gpio, 1, val);
  }
  return (tmp);
}
}
static int mxl111sf_hw_gpio_initialize(struct mxl111sf_state *state )
{
  u8 gpioval ;
  int i ;
  int ret ;
  int __ret ;
  {
  gpioval = 7U;
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: ()\n", "mxl111sf_hw_gpio_initialize");
    }
  } else {
  }
  i = 3;
  goto ldv_49704;
  ldv_49703:
  {
  ret = mxl111sf_hw_set_gpio(state, i, ((int )gpioval >> i) & 1);
  __ret = ret < 0;
  }
  if (__ret != 0 && (dvb_usb_mxl111sf_debug & 16) != 0) {
    {
    printk("\v%s: error %d on line %d\n", "mxl111sf_hw_gpio_initialize", ret, 575);
    }
  } else {
  }
  if (__ret != 0) {
    goto ldv_49702;
  } else {
  }
  i = i + 1;
  ldv_49704: ;
  if (i <= 7) {
    goto ldv_49703;
  } else {
  }
  ldv_49702: ;
  return (ret);
}
}
static int pca9534_set_gpio(struct mxl111sf_state *state , int gpio , int val )
{
  u8 w[2U] ;
  u8 r ;
  struct i2c_msg msg[2U] ;
  {
  w[0] = 1U;
  w[1] = 0U;
  r = 0U;
  msg[0].addr = 32U;
  msg[0].flags = 0U;
  msg[0].len = 1U;
  msg[0].buf = (__u8 *)(& w);
  msg[1].addr = 32U;
  msg[1].flags = 1U;
  msg[1].len = 1U;
  msg[1].buf = & r;
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: (%d, %d)\n", "pca9534_set_gpio", gpio, val);
    }
  } else {
  }
  {
  i2c_transfer(& (state->d)->i2c_adap, (struct i2c_msg *)(& msg), 2);
  msg[0].len = 2U;
  w[1] = r;
  w[1] = (u8 )((int )((signed char )w[1]) & ~ ((int )((signed char )(1 << gpio))));
  w[1] = (u8 )((int )((signed char )w[1]) | (int )((signed char )((val != 0) << gpio)));
  i2c_transfer(& (state->d)->i2c_adap, (struct i2c_msg *)(& msg), 1);
  }
  return (0);
}
}
static int pca9534_init_port_expander(struct mxl111sf_state *state )
{
  u8 w[2U] ;
  struct i2c_msg msg ;
  {
  w[0] = 1U;
  w[1] = 7U;
  msg.addr = 32U;
  msg.flags = 0U;
  msg.len = 2U;
  msg.buf = (__u8 *)(& w);
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: ()\n", "pca9534_init_port_expander");
    }
  } else {
  }
  {
  i2c_transfer(& (state->d)->i2c_adap, & msg, 1);
  w[0] = 3U;
  w[1] = 0U;
  i2c_transfer(& (state->d)->i2c_adap, & msg, 1);
  }
  return (0);
}
}
int mxl111sf_set_gpio(struct mxl111sf_state *state , int gpio , int val )
{
  int tmp ;
  int tmp___0 ;
  {
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: (%d, %d)\n", "mxl111sf_set_gpio", gpio, val);
    }
  } else {
  }
  {
  if ((unsigned int )state->gpio_port_expander == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )state->gpio_port_expander == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  switch_default:
  {
  printk("\v%s: gpio_port_expander undefined, assuming PCA9534\n", "mxl111sf_set_gpio");
  }
  case_1:
  {
  tmp = pca9534_set_gpio(state, gpio, val);
  }
  return (tmp);
  case_0:
  {
  tmp___0 = mxl111sf_hw_set_gpio(state, gpio, val);
  }
  return (tmp___0);
  switch_break: ;
  }
}
}
static int mxl111sf_probe_port_expander(struct mxl111sf_state *state )
{
  int ret ;
  u8 w ;
  u8 r ;
  struct i2c_msg msg[2U] ;
  {
  w = 1U;
  r = 0U;
  msg[0].addr = (unsigned short)0;
  msg[0].flags = 0U;
  msg[0].len = 1U;
  msg[0].buf = & w;
  msg[1].addr = (unsigned short)0;
  msg[1].flags = 1U;
  msg[1].len = 1U;
  msg[1].buf = & r;
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: ()\n", "mxl111sf_probe_port_expander");
    }
  } else {
  }
  {
  msg[0].addr = 56U;
  msg[1].addr = 56U;
  ret = i2c_transfer(& (state->d)->i2c_adap, (struct i2c_msg *)(& msg), 2);
  }
  if (ret == 2) {
    state->port_expander_addr = (u8 )msg[0].addr;
    state->gpio_port_expander = 1;
    if (dvb_usb_mxl111sf_debug != 0) {
      {
      printk("\017%s: found port expander at 0x%02x\n", "mxl111sf_probe_port_expander",
             (int )state->port_expander_addr);
      }
    } else {
    }
    return (0);
  } else {
  }
  {
  msg[0].addr = 32U;
  msg[1].addr = 32U;
  ret = i2c_transfer(& (state->d)->i2c_adap, (struct i2c_msg *)(& msg), 2);
  }
  if (ret == 2) {
    state->port_expander_addr = (u8 )msg[0].addr;
    state->gpio_port_expander = 1;
    if (dvb_usb_mxl111sf_debug != 0) {
      {
      printk("\017%s: found port expander at 0x%02x\n", "mxl111sf_probe_port_expander",
             (int )state->port_expander_addr);
      }
    } else {
    }
    return (0);
  } else {
  }
  state->port_expander_addr = 255U;
  state->gpio_port_expander = 0;
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: using hardware gpio\n", "mxl111sf_probe_port_expander");
    }
  } else {
  }
  return (0);
}
}
int mxl111sf_init_port_expander(struct mxl111sf_state *state )
{
  int tmp ;
  int tmp___0 ;
  {
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: ()\n", "mxl111sf_init_port_expander");
    }
  } else {
  }
  if ((unsigned int )state->port_expander_addr == 0U) {
    {
    mxl111sf_probe_port_expander(state);
    }
  } else {
  }
  {
  if ((unsigned int )state->gpio_port_expander == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )state->gpio_port_expander == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  switch_default:
  {
  printk("\v%s: gpio_port_expander undefined, assuming PCA9534\n", "mxl111sf_init_port_expander");
  }
  case_1:
  {
  tmp = pca9534_init_port_expander(state);
  }
  return (tmp);
  case_0:
  {
  tmp___0 = mxl111sf_hw_gpio_initialize(state);
  }
  return (tmp___0);
  switch_break: ;
  }
}
}
int mxl111sf_gpio_mode_switch(struct mxl111sf_state *state , unsigned int mode )
{
  {
  if (dvb_usb_mxl111sf_debug != 0) {
    {
    printk("\017%s: (%d)\n", "mxl111sf_gpio_mode_switch", mode);
    }
  } else {
  }
  {
  if (mode == 1U) {
    goto case_1;
  } else {
  }
  if (mode == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_1:
  {
  mxl111sf_set_gpio(state, 4, 0);
  mxl111sf_set_gpio(state, 5, 0);
  msleep(50U);
  mxl111sf_set_gpio(state, 7, 1);
  msleep(50U);
  mxl111sf_set_gpio(state, 6, 1);
  msleep(50U);
  mxl111sf_set_gpio(state, 3, 0);
  }
  goto ldv_49750;
  case_2:
  {
  mxl111sf_set_gpio(state, 6, 0);
  mxl111sf_set_gpio(state, 7, 0);
  msleep(50U);
  mxl111sf_set_gpio(state, 5, 1);
  msleep(50U);
  mxl111sf_set_gpio(state, 4, 1);
  msleep(50U);
  mxl111sf_set_gpio(state, 3, 1);
  }
  goto ldv_49750;
  switch_default:
  {
  mxl111sf_init_port_expander(state);
  }
  goto ldv_49750;
  switch_break: ;
  }
  ldv_49750: ;
  return (0);
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
int ldv_filter_err_code(int ret_val ) ;
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
void *ldv_malloc(size_t size ) ;
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_fe_lock_of_mxl111sf_state ;
void ldv_linux_kernel_locking_mutex_mutex_lock_fe_lock_of_mxl111sf_state(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_fe_lock_of_mxl111sf_state);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_fe_lock_of_mxl111sf_state = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_fe_lock_of_mxl111sf_state(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_fe_lock_of_mxl111sf_state);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_fe_lock_of_mxl111sf_state = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_fe_lock_of_mxl111sf_state(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_fe_lock_of_mxl111sf_state) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_fe_lock_of_mxl111sf_state(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_fe_lock_of_mxl111sf_state);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_fe_lock_of_mxl111sf_state(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_fe_lock_of_mxl111sf_state = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_fe_lock_of_mxl111sf_state(atomic_t *cnt ,
                                                                                       struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_fe_lock_of_mxl111sf_state(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_fe_lock_of_mxl111sf_state(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_fe_lock_of_mxl111sf_state);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_fe_lock_of_mxl111sf_state = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_dvb_usb_device ;
void ldv_linux_kernel_locking_mutex_mutex_lock_i2c_mutex_of_dvb_usb_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_dvb_usb_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_dvb_usb_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_i2c_mutex_of_dvb_usb_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_dvb_usb_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_dvb_usb_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_i2c_mutex_of_dvb_usb_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_dvb_usb_device) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_i2c_mutex_of_dvb_usb_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_dvb_usb_device);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_i2c_mutex_of_dvb_usb_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_dvb_usb_device = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_i2c_mutex_of_dvb_usb_device(atomic_t *cnt ,
                                                                                         struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_i2c_mutex_of_dvb_usb_device(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_i2c_mutex_of_dvb_usb_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_dvb_usb_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_dvb_usb_device = 0;
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
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_fe_lock_of_mxl111sf_state = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_dvb_usb_device = 0;
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
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_fe_lock_of_mxl111sf_state);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_dvb_usb_device);
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
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
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
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2) {
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
void __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *__symbol_get(const char *arg0) {
  return (void *)external_alloc();
}
void __symbol_put(const char *arg0) {
  return;
}
void dvb_usbv2_disconnect(struct usb_interface *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dvb_usbv2_generic_rw(struct dvb_usb_device *arg0, u8 *arg1, u16 arg2, u8 *arg3, u16 arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_usbv2_generic_write(struct dvb_usb_device *arg0, u8 *arg1, u16 arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_usbv2_probe(struct usb_interface *arg0, const struct usb_device_id *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_usbv2_resume(struct usb_interface *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_usbv2_suspend(struct usb_interface *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
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
void ldv_pre_probe() {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void tveeprom_hauppauge_analog(struct i2c_client *arg0, struct tveeprom *arg1, unsigned char *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int tveeprom_read(struct i2c_client *arg0, unsigned char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_set_interface(struct usb_device *arg0, int arg1, int arg2) {
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
