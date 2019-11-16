typedef signed char __s8;
typedef unsigned char __u8;
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
typedef __kernel_long_t __kernel_suseconds_t;
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
typedef __u32 __le32;
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
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
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
struct llist_node;
struct llist_node {
   struct llist_node *next ;
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
struct __anonstruct_nodemask_t_117 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_117 nodemask_t;
struct __anonstruct_mm_context_t_118 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_118 mm_context_t;
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
union __anonunion____missing_field_name_215 {
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
   union __anonunion____missing_field_name_215 __annonCompField70 ;
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
struct v4l2_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
};
enum v4l2_buf_type {
    V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
    V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
    V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
    V4L2_BUF_TYPE_VBI_CAPTURE = 4,
    V4L2_BUF_TYPE_VBI_OUTPUT = 5,
    V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
    V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
    V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = 9,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = 10,
    V4L2_BUF_TYPE_SDR_CAPTURE = 11,
    V4L2_BUF_TYPE_PRIVATE = 128
} ;
enum v4l2_memory {
    V4L2_MEMORY_MMAP = 1,
    V4L2_MEMORY_USERPTR = 2,
    V4L2_MEMORY_OVERLAY = 3,
    V4L2_MEMORY_DMABUF = 4
} ;
enum v4l2_priority {
    V4L2_PRIORITY_UNSET = 0,
    V4L2_PRIORITY_BACKGROUND = 1,
    V4L2_PRIORITY_INTERACTIVE = 2,
    V4L2_PRIORITY_RECORD = 3,
    V4L2_PRIORITY_DEFAULT = 2
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __u32 width ;
   __u32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 device_caps ;
   __u32 reserved[3U] ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
   __u32 flags ;
   __u32 ycbcr_enc ;
   __u32 quantization ;
};
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion____missing_field_name_218 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_218 __annonCompField73 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_219 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_219 __annonCompField74 ;
   __u32 reserved[2U] ;
};
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_220 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_220 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_221 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
   __s32 fd ;
};
struct v4l2_buffer {
   __u32 index ;
   __u32 type ;
   __u32 bytesused ;
   __u32 flags ;
   __u32 field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   __u32 memory ;
   union __anonunion_m_221 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   __u32 field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   __u32 type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   __u32 type ;
   struct v4l2_rect c ;
};
typedef __u64 v4l2_std_id;
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 standards ;
   __u32 flags ;
   __u32 reserved[14U] ;
};
union __anonunion____missing_field_name_223 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_223 __annonCompField75 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 pad ;
   __u32 reserved[2U] ;
   struct v4l2_dv_timings timings ;
};
struct v4l2_bt_timings_cap {
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u64 min_pixelclock ;
   __u64 max_pixelclock ;
   __u32 standards ;
   __u32 capabilities ;
   __u32 reserved[16U] ;
};
union __anonunion____missing_field_name_224 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 pad ;
   __u32 reserved[2U] ;
   union __anonunion____missing_field_name_224 __annonCompField76 ;
};
struct v4l2_input {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 tuner ;
   v4l2_std_id std ;
   __u32 status ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion____missing_field_name_225 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
   __u8 *p_u8 ;
   __u16 *p_u16 ;
   __u32 *p_u32 ;
   void *ptr ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_225 __annonCompField77 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
enum v4l2_ctrl_type {
    V4L2_CTRL_TYPE_INTEGER = 1,
    V4L2_CTRL_TYPE_BOOLEAN = 2,
    V4L2_CTRL_TYPE_MENU = 3,
    V4L2_CTRL_TYPE_BUTTON = 4,
    V4L2_CTRL_TYPE_INTEGER64 = 5,
    V4L2_CTRL_TYPE_CTRL_CLASS = 6,
    V4L2_CTRL_TYPE_STRING = 7,
    V4L2_CTRL_TYPE_BITMASK = 8,
    V4L2_CTRL_TYPE_INTEGER_MENU = 9,
    V4L2_CTRL_COMPOUND_TYPES = 256,
    V4L2_CTRL_TYPE_U8 = 256,
    V4L2_CTRL_TYPE_U16 = 257,
    V4L2_CTRL_TYPE_U32 = 258
} ;
struct v4l2_queryctrl {
   __u32 id ;
   __u32 type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
union __anonunion____missing_field_name_226 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_226 __annonCompField78 ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   __u32 type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_frequency_band {
   __u32 tuner ;
   __u32 type ;
   __u32 index ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 modulation ;
   __u32 reserved[9U] ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
struct v4l2_plane_pix_format {
   __u32 sizeimage ;
   __u16 bytesperline ;
   __u16 reserved[7U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 flags ;
   __u8 ycbcr_enc ;
   __u8 quantization ;
   __u8 reserved[8U] ;
};
struct v4l2_sdr_format {
   __u32 pixelformat ;
   __u32 buffersize ;
   __u8 reserved[24U] ;
};
union __anonunion_fmt_234 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   struct v4l2_sdr_format sdr ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_234 fmt ;
};
union __anonunion_parm_235 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_235 parm ;
};
struct v4l2_event_vsync {
   __u8 field ;
};
union __anonunion____missing_field_name_236 {
   __s32 value ;
   __s64 value64 ;
};
struct v4l2_event_ctrl {
   __u32 changes ;
   __u32 type ;
   union __anonunion____missing_field_name_236 __annonCompField82 ;
   __u32 flags ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
};
struct v4l2_event_frame_sync {
   __u32 frame_sequence ;
};
struct v4l2_event_src_change {
   __u32 changes ;
};
struct v4l2_event_motion_det {
   __u32 flags ;
   __u32 frame_sequence ;
   __u32 region_mask ;
};
union __anonunion_u_237 {
   struct v4l2_event_vsync vsync ;
   struct v4l2_event_ctrl ctrl ;
   struct v4l2_event_frame_sync frame_sync ;
   struct v4l2_event_src_change src_change ;
   struct v4l2_event_motion_det motion_det ;
   __u8 data[64U] ;
};
struct v4l2_event {
   __u32 type ;
   union __anonunion_u_237 u ;
   __u32 pending ;
   __u32 sequence ;
   struct timespec timestamp ;
   __u32 id ;
   __u32 reserved[8U] ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_238 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_238 __annonCompField83 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
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
struct media_pipeline {
};
struct media_pad;
struct media_link {
   struct media_pad *source ;
   struct media_pad *sink ;
   struct media_link *reverse ;
   unsigned long flags ;
};
struct media_entity;
struct media_pad {
   struct media_entity *entity ;
   u16 index ;
   unsigned long flags ;
};
struct media_entity_operations {
   int (*link_setup)(struct media_entity * , struct media_pad const * , struct media_pad const * ,
                     u32 ) ;
   int (*link_validate)(struct media_link * ) ;
};
struct media_device;
struct __anonstruct_v4l_245 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_246 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_247 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_244 {
   struct __anonstruct_v4l_245 v4l ;
   struct __anonstruct_fb_246 fb ;
   struct __anonstruct_alsa_247 alsa ;
   int dvb ;
};
struct media_entity {
   struct list_head list ;
   struct media_device *parent ;
   u32 id ;
   char const *name ;
   u32 type ;
   u32 revision ;
   unsigned long flags ;
   u32 group_id ;
   u16 num_pads ;
   u16 num_links ;
   u16 num_backlinks ;
   u16 max_links ;
   struct media_pad *pads ;
   struct media_link *links ;
   struct media_entity_operations const *ops ;
   int stream_count ;
   int use_count ;
   struct media_pipeline *pipe ;
   union __anonunion_info_244 info ;
};
struct video_device;
struct v4l2_device;
struct v4l2_ctrl_handler;
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct vb2_queue;
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct v4l2_device *v4l2_dev ;
   struct device *dev_parent ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct vb2_queue *queue ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int vfl_dir ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int dev_debug ;
   v4l2_std_id tvnorms ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct v4l2_subdev;
struct v4l2_subdev_ops;
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
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
struct uvc_streaming_control {
   __u16 bmHint ;
   __u8 bFormatIndex ;
   __u8 bFrameIndex ;
   __u32 dwFrameInterval ;
   __u16 wKeyFrameRate ;
   __u16 wPFrameRate ;
   __u16 wCompQuality ;
   __u16 wCompWindowSize ;
   __u16 wDelay ;
   __u32 dwMaxVideoFrameSize ;
   __u32 dwMaxPayloadTransferSize ;
   __u32 dwClockFrequency ;
   __u8 bmFramingInfo ;
   __u8 bPreferedVersion ;
   __u8 bMinVersion ;
   __u8 bMaxVersion ;
};
struct uvc_menu_info {
   __u32 value ;
   __u8 name[32U] ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct media_devnode {
   struct media_file_operations const *fops ;
   struct device dev ;
   struct cdev cdev ;
   struct device *parent ;
   int minor ;
   unsigned long flags ;
   void (*release)(struct media_devnode * ) ;
};
struct media_device {
   struct device *dev ;
   struct media_devnode devnode ;
   char model[32U] ;
   char serial[40U] ;
   char bus_info[32U] ;
   u32 hw_revision ;
   u32 driver_version ;
   u32 entity_id ;
   struct list_head entities ;
   spinlock_t lock ;
   struct mutex graph_mutex ;
   int (*link_notify)(struct media_link * , u32 , unsigned int ) ;
};
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u16 ycbcr_enc ;
   __u16 quantization ;
   __u32 reserved[6U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval {
   __u32 pad ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 width ;
   __u32 height ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_250 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_251 {
   char const *name ;
};
struct __anonstruct_i2c_252 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_253 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_249 {
   struct __anonstruct_of_250 of ;
   struct __anonstruct_device_name_251 device_name ;
   struct __anonstruct_i2c_252 i2c ;
   struct __anonstruct_custom_253 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_249 match ;
   struct list_head list ;
};
struct v4l2_async_notifier {
   unsigned int num_subdevs ;
   struct v4l2_async_subdev **subdevs ;
   struct v4l2_device *v4l2_dev ;
   struct list_head waiting ;
   struct list_head done ;
   struct list_head list ;
   int (*bound)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
   int (*complete)(struct v4l2_async_notifier * ) ;
   void (*unbind)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
};
struct v4l2_m2m_ctx;
struct v4l2_fh {
   struct list_head list ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   enum v4l2_priority prio ;
   wait_queue_head_t wait ;
   struct list_head subscribed ;
   struct list_head available ;
   unsigned int navailable ;
   u32 sequence ;
   struct v4l2_m2m_ctx *m2m_ctx ;
};
enum v4l2_mbus_type {
    V4L2_MBUS_PARALLEL = 0,
    V4L2_MBUS_BT656 = 1,
    V4L2_MBUS_CSI2 = 2
} ;
struct v4l2_mbus_config {
   enum v4l2_mbus_type type ;
   unsigned int flags ;
};
struct v4l2_subdev_fh;
struct tuner_setup;
struct v4l2_mbus_frame_desc;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   long (*compat_ioctl32)(struct v4l2_subdev * , unsigned int , unsigned long ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register const * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency const * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*enum_freq_bands)(struct v4l2_subdev * , struct v4l2_frequency_band * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner const * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator const * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_mbus_frame_desc_entry {
   u16 flags ;
   u32 pixelcode ;
   u32 length ;
};
struct v4l2_mbus_frame_desc {
   struct v4l2_mbus_frame_desc_entry entry[4U] ;
   unsigned short num_entries ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop const * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*enum_framesizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*enum_frameintervals)(struct v4l2_subdev * , struct v4l2_frmivalenum * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*enum_mbus_fmt)(struct v4l2_subdev * , unsigned int , u32 * ) ;
   int (*g_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*try_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*s_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
   int (*s_rx_buffer)(struct v4l2_subdev * , void * , unsigned int * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
   int (*g_skip_frames)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_edid * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
   int (*link_validate)(struct v4l2_subdev * , struct media_link * , struct v4l2_subdev_format * ,
                        struct v4l2_subdev_format * ) ;
   int (*get_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
   int (*set_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
   struct v4l2_subdev_pad_ops const *pad ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
   int (*open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
   int (*close)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
};
struct regulator_bulk_data;
struct v4l2_subdev_platform_data {
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   void *host_priv ;
};
struct v4l2_subdev {
   struct media_entity entity ;
   struct list_head list ;
   struct module *owner ;
   bool owner_v4l2_dev ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
   struct video_device *devnode ;
   struct device *dev ;
   struct list_head async_list ;
   struct v4l2_async_subdev *asd ;
   struct v4l2_async_notifier *notifier ;
   struct v4l2_subdev_platform_data *pdata ;
};
struct __anonstruct_pad_254 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_254 *pad ;
};
struct v4l2_device {
   struct device *dev ;
   struct media_device *mdev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state prio ;
   struct mutex ioctl_lock ;
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
struct v4l2_subscribed_event;
struct v4l2_kevent {
   struct list_head list ;
   struct v4l2_subscribed_event *sev ;
   struct v4l2_event event ;
};
struct v4l2_subscribed_event_ops {
   int (*add)(struct v4l2_subscribed_event * , unsigned int ) ;
   void (*del)(struct v4l2_subscribed_event * ) ;
   void (*replace)(struct v4l2_event * , struct v4l2_event const * ) ;
   void (*merge)(struct v4l2_event const * , struct v4l2_event * ) ;
};
struct v4l2_subscribed_event {
   struct list_head list ;
   u32 type ;
   u32 id ;
   u32 flags ;
   struct v4l2_fh *fh ;
   struct list_head node ;
   struct v4l2_subscribed_event_ops const *ops ;
   unsigned int elems ;
   unsigned int first ;
   unsigned int in_use ;
   struct v4l2_kevent events[] ;
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
struct fence;
struct fence_ops;
struct fence_cb;
struct fence {
   struct kref refcount ;
   struct fence_ops const *ops ;
   struct callback_head rcu ;
   struct list_head cb_list ;
   spinlock_t *lock ;
   unsigned int context ;
   unsigned int seqno ;
   unsigned long flags ;
   ktime_t timestamp ;
   int status ;
};
struct fence_cb {
   struct list_head node ;
   void (*func)(struct fence * , struct fence_cb * ) ;
};
struct fence_ops {
   char const *(*get_driver_name)(struct fence * ) ;
   char const *(*get_timeline_name)(struct fence * ) ;
   bool (*enable_signaling)(struct fence * ) ;
   bool (*signaled)(struct fence * ) ;
   long (*wait)(struct fence * , bool , long ) ;
   void (*release)(struct fence * ) ;
   int (*fill_driver_data)(struct fence * , void * , int ) ;
   void (*fence_value_str)(struct fence * , char * , int ) ;
   void (*timeline_value_str)(struct fence * , char * , int ) ;
};
struct dma_buf;
struct dma_buf_attachment;
struct dma_buf_ops {
   int (*attach)(struct dma_buf * , struct device * , struct dma_buf_attachment * ) ;
   void (*detach)(struct dma_buf * , struct dma_buf_attachment * ) ;
   struct sg_table *(*map_dma_buf)(struct dma_buf_attachment * , enum dma_data_direction ) ;
   void (*unmap_dma_buf)(struct dma_buf_attachment * , struct sg_table * , enum dma_data_direction ) ;
   void (*release)(struct dma_buf * ) ;
   int (*begin_cpu_access)(struct dma_buf * , size_t , size_t , enum dma_data_direction ) ;
   void (*end_cpu_access)(struct dma_buf * , size_t , size_t , enum dma_data_direction ) ;
   void *(*kmap_atomic)(struct dma_buf * , unsigned long ) ;
   void (*kunmap_atomic)(struct dma_buf * , unsigned long , void * ) ;
   void *(*kmap)(struct dma_buf * , unsigned long ) ;
   void (*kunmap)(struct dma_buf * , unsigned long , void * ) ;
   int (*mmap)(struct dma_buf * , struct vm_area_struct * ) ;
   void *(*vmap)(struct dma_buf * ) ;
   void (*vunmap)(struct dma_buf * , void * ) ;
};
struct dma_buf_poll_cb_t {
   struct fence_cb cb ;
   wait_queue_head_t *poll ;
   unsigned long active ;
};
struct reservation_object;
struct dma_buf {
   size_t size ;
   struct file *file ;
   struct list_head attachments ;
   struct dma_buf_ops const *ops ;
   struct mutex lock ;
   unsigned int vmapping_counter ;
   void *vmap_ptr ;
   char const *exp_name ;
   struct list_head list_node ;
   void *priv ;
   struct reservation_object *resv ;
   wait_queue_head_t poll ;
   struct dma_buf_poll_cb_t cb_excl ;
   struct dma_buf_poll_cb_t cb_shared ;
};
struct dma_buf_attachment {
   struct dma_buf *dmabuf ;
   struct device *dev ;
   struct list_head node ;
   void *priv ;
};
struct vb2_fileio_data;
struct vb2_threadio_data;
struct vb2_mem_ops {
   void *(*alloc)(void * , unsigned long , enum dma_data_direction , gfp_t ) ;
   void (*put)(void * ) ;
   struct dma_buf *(*get_dmabuf)(void * , unsigned long ) ;
   void *(*get_userptr)(void * , unsigned long , unsigned long , enum dma_data_direction ) ;
   void (*put_userptr)(void * ) ;
   void (*prepare)(void * ) ;
   void (*finish)(void * ) ;
   void *(*attach_dmabuf)(void * , struct dma_buf * , unsigned long , enum dma_data_direction ) ;
   void (*detach_dmabuf)(void * ) ;
   int (*map_dmabuf)(void * ) ;
   void (*unmap_dmabuf)(void * ) ;
   void *(*vaddr)(void * ) ;
   void *(*cookie)(void * ) ;
   unsigned int (*num_users)(void * ) ;
   int (*mmap)(void * , struct vm_area_struct * ) ;
};
struct vb2_plane {
   void *mem_priv ;
   struct dma_buf *dbuf ;
   unsigned int dbuf_mapped ;
};
enum vb2_buffer_state {
    VB2_BUF_STATE_DEQUEUED = 0,
    VB2_BUF_STATE_PREPARING = 1,
    VB2_BUF_STATE_PREPARED = 2,
    VB2_BUF_STATE_QUEUED = 3,
    VB2_BUF_STATE_ACTIVE = 4,
    VB2_BUF_STATE_DONE = 5,
    VB2_BUF_STATE_ERROR = 6
} ;
struct vb2_buffer {
   struct v4l2_buffer v4l2_buf ;
   struct v4l2_plane v4l2_planes[8U] ;
   struct vb2_queue *vb2_queue ;
   unsigned int num_planes ;
   enum vb2_buffer_state state ;
   struct list_head queued_entry ;
   struct list_head done_entry ;
   struct vb2_plane planes[8U] ;
   u32 cnt_mem_alloc ;
   u32 cnt_mem_put ;
   u32 cnt_mem_get_dmabuf ;
   u32 cnt_mem_get_userptr ;
   u32 cnt_mem_put_userptr ;
   u32 cnt_mem_prepare ;
   u32 cnt_mem_finish ;
   u32 cnt_mem_attach_dmabuf ;
   u32 cnt_mem_detach_dmabuf ;
   u32 cnt_mem_map_dmabuf ;
   u32 cnt_mem_unmap_dmabuf ;
   u32 cnt_mem_vaddr ;
   u32 cnt_mem_cookie ;
   u32 cnt_mem_num_users ;
   u32 cnt_mem_mmap ;
   u32 cnt_buf_init ;
   u32 cnt_buf_prepare ;
   u32 cnt_buf_finish ;
   u32 cnt_buf_cleanup ;
   u32 cnt_buf_queue ;
   u32 cnt_buf_done ;
};
struct vb2_ops {
   int (*queue_setup)(struct vb2_queue * , struct v4l2_format const * , unsigned int * ,
                      unsigned int * , unsigned int * , void ** ) ;
   void (*wait_prepare)(struct vb2_queue * ) ;
   void (*wait_finish)(struct vb2_queue * ) ;
   int (*buf_init)(struct vb2_buffer * ) ;
   int (*buf_prepare)(struct vb2_buffer * ) ;
   void (*buf_finish)(struct vb2_buffer * ) ;
   void (*buf_cleanup)(struct vb2_buffer * ) ;
   int (*start_streaming)(struct vb2_queue * , unsigned int ) ;
   void (*stop_streaming)(struct vb2_queue * ) ;
   void (*buf_queue)(struct vb2_buffer * ) ;
};
struct vb2_queue {
   enum v4l2_buf_type type ;
   unsigned int io_modes ;
   unsigned int io_flags ;
   struct mutex *lock ;
   struct v4l2_fh *owner ;
   struct vb2_ops const *ops ;
   struct vb2_mem_ops const *mem_ops ;
   void *drv_priv ;
   unsigned int buf_struct_size ;
   u32 timestamp_flags ;
   gfp_t gfp_flags ;
   u32 min_buffers_needed ;
   struct mutex mmap_lock ;
   enum v4l2_memory memory ;
   struct vb2_buffer *bufs[32U] ;
   unsigned int num_buffers ;
   struct list_head queued_list ;
   unsigned int queued_count ;
   atomic_t owned_by_drv_count ;
   struct list_head done_list ;
   spinlock_t done_lock ;
   wait_queue_head_t done_wq ;
   void *alloc_ctx[8U] ;
   unsigned int plane_sizes[8U] ;
   unsigned char streaming : 1 ;
   unsigned char start_streaming_called : 1 ;
   unsigned char error : 1 ;
   unsigned char waiting_for_buffers : 1 ;
   struct vb2_fileio_data *fileio ;
   struct vb2_threadio_data *threadio ;
   u32 cnt_queue_setup ;
   u32 cnt_wait_prepare ;
   u32 cnt_wait_finish ;
   u32 cnt_start_streaming ;
   u32 cnt_stop_streaming ;
};
struct uvc_device;
struct uvc_control_info {
   struct list_head mappings ;
   __u8 entity[16U] ;
   __u8 index ;
   __u8 selector ;
   __u16 size ;
   __u32 flags ;
};
struct uvc_control_mapping {
   struct list_head list ;
   struct list_head ev_subs ;
   __u32 id ;
   __u8 name[32U] ;
   __u8 entity[16U] ;
   __u8 selector ;
   __u8 size ;
   __u8 offset ;
   enum v4l2_ctrl_type v4l2_type ;
   __u32 data_type ;
   struct uvc_menu_info *menu_info ;
   __u32 menu_count ;
   __u32 master_id ;
   __s32 master_manual ;
   __u32 slave_ids[2U] ;
   __s32 (*get)(struct uvc_control_mapping * , __u8 , __u8 const * ) ;
   void (*set)(struct uvc_control_mapping * , __s32 , __u8 * ) ;
};
struct uvc_entity;
struct uvc_control {
   struct uvc_entity *entity ;
   struct uvc_control_info info ;
   __u8 index ;
   unsigned char dirty : 1 ;
   unsigned char loaded : 1 ;
   unsigned char modified : 1 ;
   unsigned char cached : 1 ;
   unsigned char initialized : 1 ;
   __u8 *uvc_data ;
};
struct uvc_format_desc {
   char *name ;
   __u8 guid[16U] ;
   __u32 fcc ;
};
struct __anonstruct_camera_256 {
   __u16 wObjectiveFocalLengthMin ;
   __u16 wObjectiveFocalLengthMax ;
   __u16 wOcularFocalLength ;
   __u8 bControlSize ;
   __u8 *bmControls ;
};
struct __anonstruct_media_257 {
   __u8 bControlSize ;
   __u8 *bmControls ;
   __u8 bTransportModeSize ;
   __u8 *bmTransportModes ;
};
struct __anonstruct_output_258 {
};
struct __anonstruct_processing_259 {
   __u16 wMaxMultiplier ;
   __u8 bControlSize ;
   __u8 *bmControls ;
   __u8 bmVideoStandards ;
};
struct __anonstruct_selector_260 {
};
struct __anonstruct_extension_261 {
   __u8 guidExtensionCode[16U] ;
   __u8 bNumControls ;
   __u8 bControlSize ;
   __u8 *bmControls ;
   __u8 *bmControlsType ;
};
union __anonunion____missing_field_name_255 {
   struct __anonstruct_camera_256 camera ;
   struct __anonstruct_media_257 media ;
   struct __anonstruct_output_258 output ;
   struct __anonstruct_processing_259 processing ;
   struct __anonstruct_selector_260 selector ;
   struct __anonstruct_extension_261 extension ;
};
struct uvc_entity {
   struct list_head list ;
   struct list_head chain ;
   unsigned int flags ;
   __u8 id ;
   __u16 type ;
   char name[64U] ;
   struct video_device *vdev ;
   struct v4l2_subdev subdev ;
   unsigned int num_pads ;
   unsigned int num_links ;
   struct media_pad *pads ;
   union __anonunion____missing_field_name_255 __annonCompField85 ;
   __u8 bNrInPins ;
   __u8 *baSourceID ;
   unsigned int ncontrols ;
   struct uvc_control *controls ;
};
struct uvc_frame {
   __u8 bFrameIndex ;
   __u8 bmCapabilities ;
   __u16 wWidth ;
   __u16 wHeight ;
   __u32 dwMinBitRate ;
   __u32 dwMaxBitRate ;
   __u32 dwMaxVideoFrameBufferSize ;
   __u8 bFrameIntervalType ;
   __u32 dwDefaultFrameInterval ;
   __u32 *dwFrameInterval ;
};
struct uvc_format {
   __u8 type ;
   __u8 index ;
   __u8 bpp ;
   __u8 colorspace ;
   __u32 fcc ;
   __u32 flags ;
   char name[32U] ;
   unsigned int nframes ;
   struct uvc_frame *frame ;
};
struct uvc_streaming_header {
   __u8 bNumFormats ;
   __u8 bEndpointAddress ;
   __u8 bTerminalLink ;
   __u8 bControlSize ;
   __u8 *bmaControls ;
   __u8 bmInfo ;
   __u8 bStillCaptureMethod ;
   __u8 bTriggerSupport ;
   __u8 bTriggerUsage ;
};
enum uvc_buffer_state {
    UVC_BUF_STATE_IDLE = 0,
    UVC_BUF_STATE_QUEUED = 1,
    UVC_BUF_STATE_ACTIVE = 2,
    UVC_BUF_STATE_READY = 3,
    UVC_BUF_STATE_DONE = 4,
    UVC_BUF_STATE_ERROR = 5
} ;
struct uvc_buffer {
   struct vb2_buffer buf ;
   struct list_head queue ;
   enum uvc_buffer_state state ;
   unsigned int error ;
   void *mem ;
   unsigned int length ;
   unsigned int bytesused ;
   u32 pts ;
};
struct uvc_video_queue {
   struct vb2_queue queue ;
   struct mutex mutex ;
   unsigned int flags ;
   unsigned int buf_used ;
   spinlock_t irqlock ;
   struct list_head irqqueue ;
};
struct uvc_video_chain {
   struct uvc_device *dev ;
   struct list_head list ;
   struct list_head entities ;
   struct uvc_entity *processing ;
   struct uvc_entity *selector ;
   struct mutex ctrl_mutex ;
   struct v4l2_prio_state prio ;
   u32 caps ;
};
struct uvc_stats_frame {
   unsigned int size ;
   unsigned int first_data ;
   unsigned int nb_packets ;
   unsigned int nb_empty ;
   unsigned int nb_invalid ;
   unsigned int nb_errors ;
   unsigned int nb_pts ;
   unsigned int nb_pts_diffs ;
   unsigned int last_pts_diff ;
   bool has_initial_pts ;
   bool has_early_pts ;
   u32 pts ;
   unsigned int nb_scr ;
   unsigned int nb_scr_diffs ;
   u16 scr_sof ;
   u32 scr_stc ;
};
struct uvc_stats_stream {
   struct timespec start_ts ;
   struct timespec stop_ts ;
   unsigned int nb_frames ;
   unsigned int nb_packets ;
   unsigned int nb_empty ;
   unsigned int nb_invalid ;
   unsigned int nb_errors ;
   unsigned int nb_pts_constant ;
   unsigned int nb_pts_early ;
   unsigned int nb_pts_initial ;
   unsigned int nb_scr_count_ok ;
   unsigned int nb_scr_diffs_ok ;
   unsigned int scr_sof_count ;
   unsigned int scr_sof ;
   unsigned int min_sof ;
   unsigned int max_sof ;
};
struct uvc_clock_sample {
   u32 dev_stc ;
   u16 dev_sof ;
   struct timespec host_ts ;
   u16 host_sof ;
};
struct uvc_clock {
   struct uvc_clock_sample *samples ;
   unsigned int head ;
   unsigned int count ;
   unsigned int size ;
   u16 last_sof ;
   u16 sof_offset ;
   spinlock_t lock ;
};
struct __anonstruct_bulk_262 {
   __u8 header[256U] ;
   unsigned int header_size ;
   int skip_payload ;
   __u32 payload_size ;
   __u32 max_payload_size ;
};
struct __anonstruct_stats_263 {
   struct uvc_stats_frame frame ;
   struct uvc_stats_stream stream ;
};
struct uvc_streaming {
   struct list_head list ;
   struct uvc_device *dev ;
   struct video_device *vdev ;
   struct uvc_video_chain *chain ;
   atomic_t active ;
   struct usb_interface *intf ;
   int intfnum ;
   __u16 maxpsize ;
   struct uvc_streaming_header header ;
   enum v4l2_buf_type type ;
   unsigned int nformats ;
   struct uvc_format *format ;
   struct uvc_streaming_control ctrl ;
   struct uvc_format *def_format ;
   struct uvc_format *cur_format ;
   struct uvc_frame *cur_frame ;
   struct mutex mutex ;
   unsigned char frozen : 1 ;
   struct uvc_video_queue queue ;
   void (*decode)(struct urb * , struct uvc_streaming * , struct uvc_buffer * ) ;
   struct __anonstruct_bulk_262 bulk ;
   struct urb *urb[5U] ;
   char *urb_buffer[5U] ;
   dma_addr_t urb_dma[5U] ;
   unsigned int urb_size ;
   __u32 sequence ;
   __u8 last_fid ;
   struct dentry *debugfs_dir ;
   struct __anonstruct_stats_263 stats ;
   struct uvc_clock clock ;
};
enum uvc_device_state {
    UVC_DEV_DISCONNECTED = 1
} ;
struct input_dev;
struct uvc_device {
   struct usb_device *udev ;
   struct usb_interface *intf ;
   unsigned long warnings ;
   __u32 quirks ;
   int intfnum ;
   char name[32U] ;
   enum uvc_device_state state ;
   struct mutex lock ;
   unsigned int users ;
   atomic_t nmappings ;
   struct media_device mdev ;
   struct v4l2_device vdev ;
   __u16 uvc_version ;
   __u32 clock_frequency ;
   struct list_head entities ;
   struct list_head chains ;
   struct list_head streams ;
   atomic_t nstreams ;
   struct usb_host_endpoint *int_ep ;
   struct urb *int_urb ;
   __u8 *status ;
   struct input_dev *input ;
   char input_phys[64U] ;
};
struct uvc_driver {
   struct usb_driver driver ;
};
struct ldv_struct_EMGentry_12 {
   int signal_pending ;
};
struct ldv_struct_usb_instance_7 {
   struct usb_driver *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___0;
enum hrtimer_restart;
typedef struct poll_table_struct poll_table;
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
struct bio_vec;
struct __large_struct {
   unsigned long buf[100U] ;
};
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct kvec;
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_211 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_211 __annonCompField70 ;
   unsigned long nr_segs ;
};
typedef s32 compat_time_t;
typedef u32 compat_caddr_t;
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
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_exportbuffer {
   __u32 type ;
   __u32 index ;
   __u32 plane ;
   __u32 flags ;
   __s32 fd ;
   __u32 reserved[11U] ;
};
struct __anonstruct_fmt_248 {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct __anonstruct_fmt_248 fmt ;
};
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
};
struct v4l2_output {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 modulator ;
   v4l2_std_id std ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_query_ext_ctrl {
   __u32 id ;
   __u32 type ;
   char name[32U] ;
   __s64 minimum ;
   __s64 maximum ;
   __u64 step ;
   __s64 default_value ;
   __u32 flags ;
   __u32 elem_size ;
   __u32 elems ;
   __u32 nr_of_dims ;
   __u32 dims[4U] ;
   __u32 reserved[32U] ;
};
struct v4l2_hw_freq_seek {
   __u32 tuner ;
   __u32 type ;
   __u32 seek_upward ;
   __u32 wrap_around ;
   __u32 spacing ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 reserved[5U] ;
};
struct v4l2_audio {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx_entry {
   __u64 offset ;
   __u64 pts ;
   __u32 length ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx {
   __u32 entries ;
   __u32 entries_cap ;
   __u32 reserved[4U] ;
   struct v4l2_enc_idx_entry entry[64U] ;
};
struct __anonstruct_raw_254 {
   __u32 data[8U] ;
};
union __anonunion____missing_field_name_253 {
   struct __anonstruct_raw_254 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_253 __annonCompField80 ;
};
struct __anonstruct_stop_256 {
   __u64 pts ;
};
struct __anonstruct_start_257 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_258 {
   __u32 data[16U] ;
};
union __anonunion____missing_field_name_255___0 {
   struct __anonstruct_stop_256 stop ;
   struct __anonstruct_start_257 start ;
   struct __anonstruct_raw_258 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_255___0 __annonCompField81 ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
union v4l2_ctrl_ptr {
   s32 *p_s32 ;
   s64 *p_s64 ;
   u8 *p_u8 ;
   u16 *p_u16 ;
   u32 *p_u32 ;
   char *p_char ;
   void *p ;
};
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
struct v4l2_ctrl_type_ops {
   bool (*equal)(struct v4l2_ctrl const * , u32 , union v4l2_ctrl_ptr , union v4l2_ctrl_ptr ) ;
   void (*init)(struct v4l2_ctrl const * , u32 , union v4l2_ctrl_ptr ) ;
   void (*log)(struct v4l2_ctrl const * ) ;
   int (*validate)(struct v4l2_ctrl const * , u32 , union v4l2_ctrl_ptr ) ;
};
union __anonunion____missing_field_name_275 {
   u64 step ;
   u64 menu_skip_mask ;
};
union __anonunion____missing_field_name_276 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
struct __anonstruct_cur_277 {
   s32 val ;
};
struct v4l2_ctrl {
   struct list_head node ;
   struct list_head ev_subs ;
   struct v4l2_ctrl_handler *handler ;
   struct v4l2_ctrl **cluster ;
   unsigned int ncontrols ;
   unsigned char done : 1 ;
   unsigned char is_new : 1 ;
   unsigned char has_changed : 1 ;
   unsigned char is_private : 1 ;
   unsigned char is_auto : 1 ;
   unsigned char is_int : 1 ;
   unsigned char is_string : 1 ;
   unsigned char is_ptr : 1 ;
   unsigned char is_array : 1 ;
   unsigned char has_volatiles : 1 ;
   unsigned char call_notify : 1 ;
   unsigned char manual_mode_value ;
   struct v4l2_ctrl_ops const *ops ;
   struct v4l2_ctrl_type_ops const *type_ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s64 minimum ;
   s64 maximum ;
   s64 default_value ;
   u32 elems ;
   u32 elem_size ;
   u32 dims[4U] ;
   u32 nr_of_dims ;
   union __anonunion____missing_field_name_275 __annonCompField86 ;
   union __anonunion____missing_field_name_276 __annonCompField87 ;
   unsigned long flags ;
   void *priv ;
   s32 val ;
   struct __anonstruct_cur_277 cur ;
   union v4l2_ctrl_ptr p_new ;
   union v4l2_ctrl_ptr p_cur ;
};
struct v4l2_ctrl_ref {
   struct list_head node ;
   struct v4l2_ctrl_ref *next ;
   struct v4l2_ctrl *ctrl ;
   struct v4l2_ctrl_helper *helper ;
};
struct v4l2_ctrl_handler {
   struct mutex _lock ;
   struct mutex *lock ;
   struct list_head ctrls ;
   struct list_head ctrl_refs ;
   struct v4l2_ctrl_ref *cached ;
   struct v4l2_ctrl_ref **buckets ;
   void (*notify)(struct v4l2_ctrl * , void * ) ;
   void *notify_priv ;
   u16 nr_of_buckets ;
   int error ;
};
struct v4l2_ioctl_ops {
   int (*vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
   int (*vidioc_g_priority)(struct file * , void * , enum v4l2_priority * ) ;
   int (*vidioc_s_priority)(struct file * , void * , enum v4l2_priority ) ;
   int (*vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_sdr_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
   int (*vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_expbuf)(struct file * , void * , struct v4l2_exportbuffer * ) ;
   int (*vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
   int (*vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_overlay)(struct file * , void * , unsigned int ) ;
   int (*vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
   int (*vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer const * ) ;
   int (*vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_g_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_s_std)(struct file * , void * , v4l2_std_id ) ;
   int (*vidioc_querystd)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
   int (*vidioc_g_input)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_input)(struct file * , void * , unsigned int ) ;
   int (*vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
   int (*vidioc_g_output)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_output)(struct file * , void * , unsigned int ) ;
   int (*vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
   int (*vidioc_query_ext_ctrl)(struct file * , void * , struct v4l2_query_ext_ctrl * ) ;
   int (*vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
   int (*vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_s_audio)(struct file * , void * , struct v4l2_audio const * ) ;
   int (*vidioc_enumaudout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_g_audout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_s_audout)(struct file * , void * , struct v4l2_audioout const * ) ;
   int (*vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
   int (*vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator const * ) ;
   int (*vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
   int (*vidioc_g_crop)(struct file * , void * , struct v4l2_crop * ) ;
   int (*vidioc_s_crop)(struct file * , void * , struct v4l2_crop const * ) ;
   int (*vidioc_g_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_s_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_g_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression * ) ;
   int (*vidioc_s_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression const * ) ;
   int (*vidioc_g_enc_index)(struct file * , void * , struct v4l2_enc_idx * ) ;
   int (*vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_try_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner const * ) ;
   int (*vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency const * ) ;
   int (*vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
   int (*vidioc_g_sliced_vbi_cap)(struct file * , void * , struct v4l2_sliced_vbi_cap * ) ;
   int (*vidioc_log_status)(struct file * , void * ) ;
   int (*vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek const * ) ;
   int (*vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register const * ) ;
   int (*vidioc_g_chip_info)(struct file * , void * , struct v4l2_dbg_chip_info * ) ;
   int (*vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
   int (*vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
   int (*vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
   int (*vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
   int (*vidioc_g_edid)(struct file * , void * , struct v4l2_edid * ) ;
   int (*vidioc_s_edid)(struct file * , void * , struct v4l2_edid * ) ;
   int (*vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   int (*vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   long (*vidioc_default)(struct file * , void * , bool , unsigned int , void * ) ;
};
struct uvc_xu_control_mapping {
   __u32 id ;
   __u8 name[32U] ;
   __u8 entity[16U] ;
   __u8 selector ;
   __u8 size ;
   __u8 offset ;
   __u32 v4l2_type ;
   __u32 data_type ;
   struct uvc_menu_info *menu_info ;
   __u32 menu_count ;
   __u32 reserved[4U] ;
};
struct uvc_xu_control_query {
   __u8 unit ;
   __u8 selector ;
   __u8 query ;
   __u16 size ;
   __u8 *data ;
};
enum uvc_handle_state {
    UVC_HANDLE_PASSIVE = 0,
    UVC_HANDLE_ACTIVE = 1
} ;
struct uvc_fh {
   struct v4l2_fh vfh ;
   struct uvc_video_chain *chain ;
   struct uvc_streaming *stream ;
   enum uvc_handle_state state ;
};
struct uvc_xu_control_mapping32 {
   __u32 id ;
   __u8 name[32U] ;
   __u8 entity[16U] ;
   __u8 selector ;
   __u8 size ;
   __u8 offset ;
   __u32 v4l2_type ;
   __u32 data_type ;
   compat_caddr_t menu_info ;
   __u32 menu_count ;
   __u32 reserved[4U] ;
};
struct uvc_xu_control_query32 {
   __u8 unit ;
   __u8 selector ;
   __u8 query ;
   __u16 size ;
   compat_caddr_t data ;
};
union __anonunion_karg_294 {
   struct uvc_xu_control_mapping xmap ;
   struct uvc_xu_control_query xqry ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct uvc_ctrl_fixup {
   struct usb_device_id id ;
   u8 entity ;
   u8 selector ;
   u8 flags ;
};
struct uvc_ctrl_blacklist {
   struct usb_device_id id ;
   u8 index ;
};
typedef short __s16;
enum hrtimer_restart;
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
enum hrtimer_restart;
enum hrtimer_restart;
struct uvc_debugfs_buffer {
   size_t count ;
   char data[1024U] ;
};
enum hrtimer_restart;
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
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
void ldv_linux_usb_dev_atomic_inc(atomic_t *v ) ;
int ldv_linux_usb_dev_atomic_dec_and_test(atomic_t *v ) ;
struct usb_device *ldv_linux_usb_dev_usb_get_dev(struct usb_device *dev ) ;
void ldv_linux_usb_dev_usb_put_dev(struct usb_device *dev ) ;
int ldv_undef_int(void) ;
static void ldv_ldv_initialize_107(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_104(int ldv_func_arg1 ) ;
extern void ldv_pre_probe(void) ;
static void ldv_ldv_pre_probe_108(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_109(int retval ) ;
int ldv_pre_usb_register_driver(void) ;
static void ldv_ldv_check_final_state_105(void) ;
static void ldv_ldv_check_final_state_106(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
void *ldv_malloc_unknown_size(void) ;
extern void ldv_after_alloc(void * ) ;
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
static void ldv_mutex_lock_98(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_100(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_lock_of_uvc_device(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_lock_of_uvc_device(struct mutex *lock ) ;
extern struct module __this_module ;
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static __u32 __le32_to_cpup(__le32 const *p )
{
  {
  return ((__u32 )*p);
}
}
__inline static __u16 __le16_to_cpup(__le16 const *p )
{
  {
  return ((__u16 )*p);
}
}
extern int printk(char const * , ...) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
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
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern size_t strlcat(char * , char const * , __kernel_size_t ) ;
extern int strcasecmp(char const * , char const * ) ;
extern int strncasecmp(char const * , char const * , size_t ) ;
extern void *kmemdup(void const * , size_t , gfp_t ) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v ) ;
__inline static int atomic_dec_and_test(atomic_t *v ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_99(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_101(struct mutex *ldv_func_arg1 ) ;
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) < 0);
}
}
__inline static int usb_endpoint_xfer_int(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 3);
}
}
__inline static int usb_endpoint_is_int_in(struct usb_endpoint_descriptor const *epd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = usb_endpoint_xfer_int(epd);
  }
  if (tmp != 0) {
    {
    tmp___0 = usb_endpoint_dir_in(epd);
    }
    if (tmp___0 != 0) {
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
__inline static void *usb_get_intfdata(struct usb_interface *intf )
{
  void *tmp ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)(& intf->dev));
  }
  return (tmp);
}
}
__inline static void usb_set_intfdata(struct usb_interface *intf , void *data )
{
  {
  {
  dev_set_drvdata(& intf->dev, data);
  }
  return;
}
}
extern struct usb_interface *usb_get_intf(struct usb_interface * ) ;
extern void usb_put_intf(struct usb_interface * ) ;
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)intf->dev.parent;
  return ((struct usb_device *)__mptr + 0xffffffffffffff70UL);
}
}
static struct usb_device *ldv_usb_get_dev_97(struct usb_device *ldv_func_arg1 ) ;
static void ldv_usb_put_dev_96(struct usb_device *ldv_func_arg1 ) ;
extern void usb_enable_autosuspend(struct usb_device * ) ;
extern int usb_driver_claim_interface(struct usb_driver * , struct usb_interface * ,
                                      void * ) ;
extern void usb_driver_release_interface(struct usb_driver * , struct usb_interface * ) ;
extern struct usb_interface *usb_ifnum_to_if(struct usb_device const * , unsigned int ) ;
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
static int ldv_usb_register_driver_102(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                       char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
static void ldv_usb_deregister_103(struct usb_driver *ldv_func_arg1 ) ;
extern int usb_string(struct usb_device * , int , char * , size_t ) ;
extern void kfree(void const * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
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
extern void v4l2_prio_init(struct v4l2_prio_state * ) ;
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device(struct video_device *vdev , int type , int nr )
{
  int tmp ;
  {
  {
  tmp = __video_register_device(vdev, type, nr, 1, (vdev->fops)->owner);
  }
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
extern struct video_device *video_device_alloc(void) ;
extern void video_device_release(struct video_device * ) ;
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  {
  dev_set_drvdata(& vdev->dev, data);
  }
  return;
}
}
__inline static int media_devnode_is_registered(struct media_devnode *mdev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& mdev->flags));
  }
  return (tmp);
}
}
extern int __media_device_register(struct media_device * , struct module * ) ;
extern void media_device_unregister(struct media_device * ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
unsigned int uvc_clock_param ;
unsigned int uvc_no_drop_param ;
unsigned int uvc_trace_param ;
unsigned int uvc_timeout_param ;
struct uvc_driver uvc_driver ;
struct uvc_entity *uvc_entity_by_id(struct uvc_device *dev , int id ) ;
int uvc_queue_init(struct uvc_video_queue *queue , enum v4l2_buf_type type , int drop_corrupted ) ;
int uvc_queue_streamoff(struct uvc_video_queue *queue , enum v4l2_buf_type type ) ;
struct v4l2_ioctl_ops const uvc_ioctl_ops ;
struct v4l2_file_operations const uvc_fops ;
int uvc_mc_register_entities(struct uvc_video_chain *chain ) ;
void uvc_mc_cleanup_entity(struct uvc_entity *entity ) ;
int uvc_video_init(struct uvc_streaming *stream ) ;
int uvc_video_suspend(struct uvc_streaming *stream ) ;
int uvc_video_resume(struct uvc_streaming *stream , int reset ) ;
int uvc_status_init(struct uvc_device *dev ) ;
void uvc_status_cleanup(struct uvc_device *dev ) ;
int uvc_status_start(struct uvc_device *dev , gfp_t flags ) ;
void uvc_status_stop(struct uvc_device *dev ) ;
int uvc_ctrl_init_device(struct uvc_device *dev ) ;
void uvc_ctrl_cleanup_device(struct uvc_device *dev ) ;
int uvc_ctrl_restore_values(struct uvc_device *dev ) ;
void uvc_simplify_fraction(uint32_t *numerator , uint32_t *denominator , unsigned int n_terms ,
                           unsigned int threshold ) ;
uint32_t uvc_fraction_to_interval(uint32_t numerator , uint32_t denominator ) ;
struct usb_host_endpoint *uvc_find_endpoint(struct usb_host_interface *alts , __u8 epaddr ) ;
int uvc_debugfs_init(void) ;
void uvc_debugfs_cleanup(void) ;
int uvc_debugfs_init_stream(struct uvc_streaming *stream ) ;
void uvc_debugfs_cleanup_stream(struct uvc_streaming *stream ) ;
unsigned int uvc_clock_param = 1U;
static unsigned int uvc_quirks_param = 4294967295U;
unsigned int uvc_timeout_param = 5000U;
static struct uvc_format_desc uvc_fmts[21U] =
  { {(char *)"YUV 4:2:2 (YUYV)", {89U, 85U, 89U, 50U, 0U, 0U, 16U, 0U, 128U, 0U,
                                   0U, 170U, 0U, 56U, 155U, 113U}, 1448695129U},
        {(char *)"YUV 4:2:2 (YUYV)", {89U, 85U, 89U, 50U, 0U, 0U, 16U, 0U, 128U, 0U,
                                   0U, 0U, 0U, 56U, 155U, 113U}, 1448695129U},
        {(char *)"YUV 4:2:0 (NV12)", {78U, 86U, 49U, 50U, 0U, 0U, 16U, 0U, 128U, 0U,
                                   0U, 170U, 0U, 56U, 155U, 113U}, 842094158U},
        {(char *)"MJPEG", {77U, 74U, 80U, 71U, 0U, 0U, 16U, 0U, 128U, 0U, 0U, 170U, 0U,
                        56U, 155U, 113U}, 1196444237U},
        {(char *)"YVU 4:2:0 (YV12)", {89U, 86U, 49U, 50U, 0U, 0U, 16U, 0U, 128U, 0U,
                                   0U, 170U, 0U, 56U, 155U, 113U}, 842094169U},
        {(char *)"YUV 4:2:0 (I420)", {73U, 52U, 50U, 48U, 0U, 0U, 16U, 0U, 128U, 0U,
                                   0U, 170U, 0U, 56U, 155U, 113U}, 842093913U},
        {(char *)"YUV 4:2:0 (M420)", {77U, 52U, 50U, 48U, 0U, 0U, 16U, 0U, 128U, 0U,
                                   0U, 170U, 0U, 56U, 155U, 113U}, 808596557U},
        {(char *)"YUV 4:2:2 (UYVY)", {85U, 89U, 86U, 89U, 0U, 0U, 16U, 0U, 128U, 0U,
                                   0U, 170U, 0U, 56U, 155U, 113U}, 1498831189U},
        {(char *)"Greyscale 8-bit (Y800)", {89U, 56U, 48U, 48U, 0U, 0U, 16U, 0U, 128U,
                                         0U, 0U, 170U, 0U, 56U, 155U, 113U}, 1497715271U},
        {(char *)"Greyscale 8-bit (Y8  )",
      {89U, 56U, 32U, 32U, 0U, 0U, 16U, 0U, 128U, 0U, 0U, 170U, 0U, 56U, 155U, 113U},
      1497715271U},
        {(char *)"Greyscale 10-bit (Y10 )", {89U, 49U, 48U, 32U, 0U, 0U, 16U, 0U, 128U,
                                          0U, 0U, 170U, 0U, 56U, 155U, 113U}, 540029273U},
        {(char *)"Greyscale 12-bit (Y12 )",
      {89U, 49U, 50U, 32U, 0U, 0U, 16U, 0U, 128U, 0U, 0U, 170U, 0U, 56U, 155U, 113U},
      540160345U},
        {(char *)"Greyscale 16-bit (Y16 )", {89U, 49U, 54U, 32U, 0U, 0U, 16U, 0U, 128U,
                                          0U, 0U, 170U, 0U, 56U, 155U, 113U}, 540422489U},
        {(char *)"BGGR Bayer (BY8 )",
      {66U, 89U, 56U, 32U, 0U, 0U, 16U, 0U, 128U, 0U, 0U, 170U, 0U, 56U, 155U, 113U},
      825770306U},
        {(char *)"BGGR Bayer (BA81)", {66U, 65U, 56U, 49U, 0U, 0U, 16U, 0U, 128U, 0U,
                                    0U, 170U, 0U, 56U, 155U, 113U}, 825770306U},
        {(char *)"GBRG Bayer (GBRG)", {71U, 66U, 82U, 71U, 0U, 0U, 16U, 0U, 128U, 0U,
                                    0U, 170U, 0U, 56U, 155U, 113U}, 1196573255U},
        {(char *)"GRBG Bayer (GRBG)", {71U, 82U, 66U, 71U, 0U, 0U, 16U, 0U, 128U, 0U,
                                    0U, 170U, 0U, 56U, 155U, 113U}, 1195528775U},
        {(char *)"RGGB Bayer (RGGB)", {82U, 71U, 71U, 66U, 0U, 0U, 16U, 0U, 128U, 0U,
                                    0U, 170U, 0U, 56U, 155U, 113U}, 1111967570U},
        {(char *)"RGB565", {82U, 71U, 66U, 80U, 0U, 0U, 16U, 0U, 128U, 0U, 0U, 170U,
                         0U, 56U, 155U, 113U}, 1346520914U},
        {(char *)"BGR 8:8:8 (BGR3)", {125U, 235U, 54U, 228U, 79U, 82U, 206U, 17U, 159U,
                                   83U, 0U, 32U, 175U, 11U, 167U, 112U}, 861030210U},
        {(char *)"H.264",
      {72U, 50U, 54U, 52U, 0U, 0U, 16U, 0U, 128U, 0U, 0U, 170U, 0U, 56U, 155U, 113U},
      875967048U}};
struct usb_host_endpoint *uvc_find_endpoint(struct usb_host_interface *alts , __u8 epaddr )
{
  struct usb_host_endpoint *ep ;
  unsigned int i ;
  {
  i = 0U;
  goto ldv_36997;
  ldv_36996:
  ep = alts->endpoint + (unsigned long )i;
  if ((int )ep->desc.bEndpointAddress == (int )epaddr) {
    return (ep);
  } else {
  }
  i = i + 1U;
  ldv_36997: ;
  if (i < (unsigned int )alts->desc.bNumEndpoints) {
    goto ldv_36996;
  } else {
  }
  return ((struct usb_host_endpoint *)0);
}
}
static struct uvc_format_desc *uvc_format_by_guid(__u8 const *guid )
{
  unsigned int len ;
  unsigned int i ;
  int tmp ;
  {
  len = 21U;
  i = 0U;
  goto ldv_37007;
  ldv_37006:
  {
  tmp = memcmp((void const *)guid, (void const *)(& uvc_fmts[i].guid), 16UL);
  }
  if (tmp == 0) {
    return ((struct uvc_format_desc *)(& uvc_fmts) + (unsigned long )i);
  } else {
  }
  i = i + 1U;
  ldv_37007: ;
  if (i < len) {
    goto ldv_37006;
  } else {
  }
  return ((struct uvc_format_desc *)0);
}
}
static __u32 uvc_colorspace(__u8 const primaries )
{
  __u8 colorprimaries[6U] ;
  {
  colorprimaries[0] = 0U;
  colorprimaries[1] = 8U;
  colorprimaries[2] = 5U;
  colorprimaries[3] = 6U;
  colorprimaries[4] = 1U;
  colorprimaries[5] = 2U;
  if ((unsigned int )((unsigned char )primaries) <= 5U) {
    return ((__u32 )colorprimaries[(int )primaries]);
  } else {
  }
  return (0U);
}
}
void uvc_simplify_fraction(uint32_t *numerator , uint32_t *denominator , unsigned int n_terms ,
                           unsigned int threshold )
{
  uint32_t *an ;
  uint32_t x ;
  uint32_t y ;
  uint32_t r ;
  unsigned int i ;
  unsigned int n ;
  void *tmp ;
  {
  {
  tmp = kmalloc((unsigned long )n_terms * 4UL, 208U);
  an = (uint32_t *)tmp;
  }
  if ((unsigned long )an == (unsigned long )((uint32_t *)0U)) {
    return;
  } else {
  }
  x = *numerator;
  y = *denominator;
  n = 0U;
  goto ldv_37029;
  ldv_37028:
  *(an + (unsigned long )n) = x / y;
  if (*(an + (unsigned long )n) >= threshold) {
    if (n <= 1U) {
      n = n + 1U;
    } else {
    }
    goto ldv_37027;
  } else {
  }
  r = x - *(an + (unsigned long )n) * y;
  x = y;
  y = r;
  n = n + 1U;
  ldv_37029: ;
  if (n < n_terms && y != 0U) {
    goto ldv_37028;
  } else {
  }
  ldv_37027:
  x = 0U;
  y = 1U;
  i = n;
  goto ldv_37031;
  ldv_37030:
  r = y;
  y = *(an + (unsigned long )(i - 1U)) * y + x;
  x = r;
  i = i - 1U;
  ldv_37031: ;
  if (i != 0U) {
    goto ldv_37030;
  } else {
  }
  {
  *numerator = y;
  *denominator = x;
  kfree((void const *)an);
  }
  return;
}
}
uint32_t uvc_fraction_to_interval(uint32_t numerator , uint32_t denominator )
{
  uint32_t multiplier ;
  {
  if (denominator == 0U || numerator / denominator > 428U) {
    return (4294967295U);
  } else {
  }
  multiplier = 10000000U;
  goto ldv_37039;
  ldv_37038:
  multiplier = multiplier / 2U;
  denominator = denominator / 2U;
  ldv_37039: ;
  if (numerator > 4294967295U / multiplier) {
    goto ldv_37038;
  } else {
  }
  return (denominator != 0U ? (numerator * multiplier) / denominator : 0U);
}
}
struct uvc_entity *uvc_entity_by_id(struct uvc_device *dev , int id )
{
  struct uvc_entity *entity ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)dev->entities.next;
  entity = (struct uvc_entity *)__mptr;
  goto ldv_37051;
  ldv_37050: ;
  if ((int )entity->id == id) {
    return (entity);
  } else {
  }
  __mptr___0 = (struct list_head const *)entity->list.next;
  entity = (struct uvc_entity *)__mptr___0;
  ldv_37051: ;
  if ((unsigned long )(& entity->list) != (unsigned long )(& dev->entities)) {
    goto ldv_37050;
  } else {
  }
  return ((struct uvc_entity *)0);
}
}
static struct uvc_entity *uvc_entity_by_reference(struct uvc_device *dev , int id ,
                                                  struct uvc_entity *entity )
{
  unsigned int i ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  if ((unsigned long )entity == (unsigned long )((struct uvc_entity *)0)) {
    __mptr = (struct list_head const *)(& dev->entities);
    entity = (struct uvc_entity *)__mptr;
  } else {
  }
  __mptr___0 = (struct list_head const *)entity->list.next;
  entity = (struct uvc_entity *)__mptr___0;
  goto ldv_37069;
  ldv_37068:
  i = 0U;
  goto ldv_37066;
  ldv_37065: ;
  if ((int )*(entity->baSourceID + (unsigned long )i) == id) {
    return (entity);
  } else {
  }
  i = i + 1U;
  ldv_37066: ;
  if (i < (unsigned int )entity->bNrInPins) {
    goto ldv_37065;
  } else {
  }
  __mptr___1 = (struct list_head const *)entity->list.next;
  entity = (struct uvc_entity *)__mptr___1;
  ldv_37069: ;
  if ((unsigned long )(& entity->list) != (unsigned long )(& dev->entities)) {
    goto ldv_37068;
  } else {
  }
  return ((struct uvc_entity *)0);
}
}
static struct uvc_streaming *uvc_stream_by_id(struct uvc_device *dev , int id )
{
  struct uvc_streaming *stream ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)dev->streams.next;
  stream = (struct uvc_streaming *)__mptr;
  goto ldv_37081;
  ldv_37080: ;
  if ((int )stream->header.bTerminalLink == id) {
    return (stream);
  } else {
  }
  __mptr___0 = (struct list_head const *)stream->list.next;
  stream = (struct uvc_streaming *)__mptr___0;
  ldv_37081: ;
  if ((unsigned long )(& stream->list) != (unsigned long )(& dev->streams)) {
    goto ldv_37080;
  } else {
  }
  return ((struct uvc_streaming *)0);
}
}
static int uvc_parse_format(struct uvc_device *dev , struct uvc_streaming *streaming ,
                            struct uvc_format *format , __u32 **intervals , unsigned char *buffer ,
                            int buflen )
{
  struct usb_interface *intf ;
  struct usb_host_interface *alts ;
  struct uvc_format_desc *fmtdesc ;
  struct uvc_frame *frame ;
  unsigned char const *start ;
  unsigned int width_multiplier ;
  unsigned int interval ;
  unsigned int i ;
  unsigned int n ;
  __u8 ftype ;
  __u32 *tmp ;
  u16 tmp___0 ;
  __u32 *tmp___1 ;
  __u32 _min1 ;
  __u32 _min2 ;
  __u32 _max1 ;
  __u32 _max2 ;
  __u32 tmp___2 ;
  {
  intf = streaming->intf;
  alts = intf->cur_altsetting;
  start = (unsigned char const *)buffer;
  width_multiplier = 1U;
  format->type = *(buffer + 2UL);
  format->index = *(buffer + 3UL);
  {
  if ((int )*(buffer + 2UL) == 4) {
    goto case_4;
  } else {
  }
  if ((int )*(buffer + 2UL) == 16) {
    goto case_16;
  } else {
  }
  if ((int )*(buffer + 2UL) == 6) {
    goto case_6;
  } else {
  }
  if ((int )*(buffer + 2UL) == 12) {
    goto case_12;
  } else {
  }
  if ((int )*(buffer + 2UL) == 10) {
    goto case_10;
  } else {
  }
  if ((int )*(buffer + 2UL) == 18) {
    goto case_18;
  } else {
  }
  goto switch_default___0;
  case_4: ;
  case_16:
  n = (unsigned int )*(buffer + 2UL) == 4U ? 27U : 28U;
  if ((unsigned int )buflen < n) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videostreaming interface %d FORMAT error\n",
             (dev->udev)->devnum, (int )alts->desc.bInterfaceNumber);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  fmtdesc = uvc_format_by_guid((__u8 const *)buffer + 5U);
  }
  if ((unsigned long )fmtdesc != (unsigned long )((struct uvc_format_desc *)0)) {
    {
    strlcpy((char *)(& format->name), (char const *)fmtdesc->name, 32UL);
    format->fcc = fmtdesc->fcc;
    }
  } else {
    {
    printk("\016uvcvideo: Unknown video format %pUl\n", buffer + 5UL);
    snprintf((char *)(& format->name), 32UL, "%pUl\n", buffer + 5UL);
    format->fcc = 0U;
    }
  }
  format->bpp = *(buffer + 21UL);
  if ((dev->quirks & 2048U) != 0U) {
    if (format->fcc == 1448695129U) {
      {
      strlcpy((char *)(& format->name), "Greyscale 8-bit (Y8  )", 32UL);
      format->fcc = 1497715271U;
      format->bpp = 8U;
      width_multiplier = 2U;
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )*(buffer + 2UL) == 4U) {
    ftype = 5U;
  } else {
    ftype = 17U;
    if ((unsigned int )*(buffer + 27UL) != 0U) {
      format->flags = 1U;
    } else {
    }
  }
  goto ldv_37103;
  case_6: ;
  if (buflen <= 10) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videostreaming interface %d FORMAT error\n",
             (dev->udev)->devnum, (int )alts->desc.bInterfaceNumber);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  strlcpy((char *)(& format->name), "MJPEG", 32UL);
  format->fcc = 1196444237U;
  format->flags = 1U;
  format->bpp = 0U;
  ftype = 7U;
  }
  goto ldv_37103;
  case_12: ;
  if (buflen <= 8) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videostreaming interface %d FORMAT error\n",
             (dev->udev)->devnum, (int )alts->desc.bInterfaceNumber);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  if (((int )*(buffer + 8UL) & 127) == 0) {
    goto case_0;
  } else {
  }
  if (((int )*(buffer + 8UL) & 127) == 1) {
    goto case_1;
  } else {
  }
  if (((int )*(buffer + 8UL) & 127) == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0:
  {
  strlcpy((char *)(& format->name), "SD-DV", 32UL);
  }
  goto ldv_37107;
  case_1:
  {
  strlcpy((char *)(& format->name), "SDL-DV", 32UL);
  }
  goto ldv_37107;
  case_2:
  {
  strlcpy((char *)(& format->name), "HD-DV", 32UL);
  }
  goto ldv_37107;
  switch_default: ;
  if ((uvc_trace_param & 2U) != 0U) {
    {
    printk("\017uvcvideo: device %d videostreaming interface %d: unknown DV format %u\n",
           (dev->udev)->devnum, (int )alts->desc.bInterfaceNumber, (int )*(buffer + 8UL));
    }
  } else {
  }
  return (-22);
  switch_break___0: ;
  }
  ldv_37107:
  {
  strlcat((char *)(& format->name), (int )((signed char )*(buffer + 8UL)) < 0 ? " 60Hz" : " 50Hz",
          32UL);
  format->fcc = 1685288548U;
  format->flags = 3U;
  format->bpp = 0U;
  ftype = 0U;
  frame = format->frame;
  memset((void *)format->frame, 0, 40UL);
  frame->bFrameIntervalType = 1U;
  frame->dwDefaultFrameInterval = 1U;
  frame->dwFrameInterval = *intervals;
  tmp = *intervals;
  *intervals = *intervals + 1;
  *tmp = 1U;
  format->nframes = 1U;
  }
  goto ldv_37103;
  case_10: ;
  case_18: ;
  switch_default___0: ;
  if ((uvc_trace_param & 2U) != 0U) {
    {
    printk("\017uvcvideo: device %d videostreaming interface %d unsupported format %u\n",
           (dev->udev)->devnum, (int )alts->desc.bInterfaceNumber, (int )*(buffer + 2UL));
    }
  } else {
  }
  return (-22);
  switch_break: ;
  }
  ldv_37103: ;
  if ((uvc_trace_param & 2U) != 0U) {
    {
    printk("\017uvcvideo: Found format %s.\n", (char *)(& format->name));
    }
  } else {
  }
  buflen = buflen - (int )*buffer;
  buffer = buffer + (unsigned long )*buffer;
  goto ldv_37127;
  ldv_37126:
  frame = format->frame + (unsigned long )format->nframes;
  if ((unsigned int )ftype != 17U) {
    n = buflen > 25 ? (unsigned int )*(buffer + 25UL) : 0U;
  } else {
    n = buflen > 21 ? (unsigned int )*(buffer + 21UL) : 0U;
  }
  n = n != 0U ? n : 3U;
  if ((unsigned int )buflen < n * 4U + 26U) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videostreaming interface %d FRAME error\n",
             (dev->udev)->devnum, (int )alts->desc.bInterfaceNumber);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  frame->bFrameIndex = *(buffer + 3UL);
  frame->bmCapabilities = *(buffer + 4UL);
  tmp___0 = get_unaligned_le16((void const *)buffer + 5U);
  frame->wWidth = (int )tmp___0 * (int )((__u16 )width_multiplier);
  frame->wHeight = get_unaligned_le16((void const *)buffer + 7U);
  frame->dwMinBitRate = get_unaligned_le32((void const *)buffer + 9U);
  frame->dwMaxBitRate = get_unaligned_le32((void const *)buffer + 13U);
  }
  if ((unsigned int )ftype != 17U) {
    {
    frame->dwMaxVideoFrameBufferSize = get_unaligned_le32((void const *)buffer + 17U);
    frame->dwDefaultFrameInterval = get_unaligned_le32((void const *)buffer + 21U);
    frame->bFrameIntervalType = *(buffer + 25UL);
    }
  } else {
    {
    frame->dwMaxVideoFrameBufferSize = 0U;
    frame->dwDefaultFrameInterval = get_unaligned_le32((void const *)buffer + 17U);
    frame->bFrameIntervalType = *(buffer + 21UL);
    }
  }
  frame->dwFrameInterval = *intervals;
  if ((format->flags & 1U) == 0U) {
    frame->dwMaxVideoFrameBufferSize = (__u32 )((((int )format->bpp * (int )frame->wWidth) * (int )frame->wHeight) / 8);
  } else {
  }
  i = 0U;
  goto ldv_37115;
  ldv_37114:
  {
  interval = get_unaligned_le32((void const *)buffer + (unsigned long )(i * 4U + 26U));
  tmp___1 = *intervals;
  *intervals = *intervals + 1;
  *tmp___1 = interval != 0U ? interval : 1U;
  i = i + 1U;
  }
  ldv_37115: ;
  if (i < n) {
    goto ldv_37114;
  } else {
  }
  n = n - ((unsigned int )frame->bFrameIntervalType != 0U ? 1U : 2U);
  _min1 = *(frame->dwFrameInterval + (unsigned long )n);
  _max1 = *(frame->dwFrameInterval);
  _max2 = frame->dwDefaultFrameInterval;
  _min2 = _max1 > _max2 ? _max1 : _max2;
  frame->dwDefaultFrameInterval = _min1 < _min2 ? _min1 : _min2;
  if ((dev->quirks & 512U) != 0U) {
    frame->bFrameIntervalType = 1U;
    *(frame->dwFrameInterval) = frame->dwDefaultFrameInterval;
  } else {
  }
  if ((uvc_trace_param & 2U) != 0U) {
    {
    printk("\017uvcvideo: - %ux%u (%u.%u fps)\n", (int )frame->wWidth, (int )frame->wHeight,
           10000000U / frame->dwDefaultFrameInterval, (100000000U / frame->dwDefaultFrameInterval) % 10U);
    }
  } else {
  }
  format->nframes = format->nframes + 1U;
  buflen = buflen - (int )*buffer;
  buffer = buffer + (unsigned long )*buffer;
  ldv_37127: ;
  if ((buflen > 2 && (unsigned int )*(buffer + 1UL) == 36U) && (int )*(buffer + 2UL) == (int )ftype) {
    goto ldv_37126;
  } else {
  }
  if ((buflen > 2 && (unsigned int )*(buffer + 1UL) == 36U) && (unsigned int )*(buffer + 2UL) == 3U) {
    buflen = buflen - (int )*buffer;
    buffer = buffer + (unsigned long )*buffer;
  } else {
  }
  if ((buflen > 2 && (unsigned int )*(buffer + 1UL) == 36U) && (unsigned int )*(buffer + 2UL) == 13U) {
    if (buflen <= 5) {
      if ((uvc_trace_param & 2U) != 0U) {
        {
        printk("\017uvcvideo: device %d videostreaming interface %d COLORFORMAT error\n",
               (dev->udev)->devnum, (int )alts->desc.bInterfaceNumber);
        }
      } else {
      }
      return (-22);
    } else {
    }
    {
    tmp___2 = uvc_colorspace((int )*(buffer + 3UL));
    format->colorspace = (__u8 )tmp___2;
    buflen = buflen - (int )*buffer;
    buffer = buffer + (unsigned long )*buffer;
    }
  } else {
  }
  return ((int )((unsigned int )((long )buffer) - (unsigned int )((long )start)));
}
}
static int uvc_parse_streaming(struct uvc_device *dev , struct usb_interface *intf )
{
  struct uvc_streaming *streaming ;
  struct uvc_format *format ;
  struct uvc_frame *frame ;
  struct usb_host_interface *alts ;
  unsigned char *_buffer ;
  unsigned char *buffer ;
  int _buflen ;
  int buflen ;
  unsigned int nformats ;
  unsigned int nframes ;
  unsigned int nintervals ;
  unsigned int size ;
  unsigned int i ;
  unsigned int n ;
  unsigned int p ;
  __u32 *interval ;
  __u16 psize ;
  int ret ;
  int tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct usb_host_endpoint *ep ;
  void *tmp___1 ;
  void *tmp___2 ;
  struct usb_host_endpoint *ep___0 ;
  {
  streaming = (struct uvc_streaming *)0;
  alts = intf->altsetting;
  buffer = alts->extra;
  buflen = alts->extralen;
  nformats = 0U;
  nframes = 0U;
  nintervals = 0U;
  ret = -22;
  if ((unsigned int )(intf->cur_altsetting)->desc.bInterfaceSubClass != 2U) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d interface %d isn\'t a video streaming interface\n",
             (dev->udev)->devnum, (int )(intf->altsetting)->desc.bInterfaceNumber);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  tmp = usb_driver_claim_interface(& uvc_driver.driver, intf, (void *)dev);
  }
  if (tmp != 0) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d interface %d is already claimed\n", (dev->udev)->devnum,
             (int )(intf->altsetting)->desc.bInterfaceNumber);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  tmp___0 = kzalloc(2112UL, 208U);
  streaming = (struct uvc_streaming *)tmp___0;
  }
  if ((unsigned long )streaming == (unsigned long )((struct uvc_streaming *)0)) {
    {
    usb_driver_release_interface(& uvc_driver.driver, intf);
    }
    return (-22);
  } else {
  }
  {
  __mutex_init(& streaming->mutex, "&streaming->mutex", & __key);
  streaming->dev = dev;
  streaming->intf = usb_get_intf(intf);
  streaming->intfnum = (int )(intf->cur_altsetting)->desc.bInterfaceNumber;
  }
  if (buflen == 0) {
    i = 0U;
    goto ldv_37156;
    ldv_37155:
    ep = alts->endpoint + (unsigned long )i;
    if (ep->extralen == 0) {
      goto ldv_37153;
    } else {
    }
    if (ep->extralen > 2 && (unsigned int )*(ep->extra + 1UL) == 36U) {
      if ((uvc_trace_param & 2U) != 0U) {
        {
        printk("\017uvcvideo: trying extra data from endpoint %u.\n", i);
        }
      } else {
      }
      buffer = (alts->endpoint + (unsigned long )i)->extra;
      buflen = (alts->endpoint + (unsigned long )i)->extralen;
      goto ldv_37154;
    } else {
    }
    ldv_37153:
    i = i + 1U;
    ldv_37156: ;
    if (i < (unsigned int )alts->desc.bNumEndpoints) {
      goto ldv_37155;
    } else {
    }
    ldv_37154: ;
  } else {
  }
  goto ldv_37158;
  ldv_37157:
  buflen = buflen - (int )*buffer;
  buffer = buffer + (unsigned long )*buffer;
  ldv_37158: ;
  if (buflen > 2 && (unsigned int )*(buffer + 1UL) != 36U) {
    goto ldv_37157;
  } else {
  }
  if (buflen <= 2) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: no class-specific streaming interface descriptors found.\n");
      }
    } else {
    }
    goto error;
  } else {
  }
  {
  if ((int )*(buffer + 2UL) == 2) {
    goto case_2;
  } else {
  }
  if ((int )*(buffer + 2UL) == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_2:
  streaming->type = 2;
  size = 9U;
  goto ldv_37162;
  case_1:
  streaming->type = 1;
  size = 13U;
  goto ldv_37162;
  switch_default: ;
  if ((uvc_trace_param & 2U) != 0U) {
    {
    printk("\017uvcvideo: device %d videostreaming interface %d HEADER descriptor not found.\n",
           (dev->udev)->devnum, (int )alts->desc.bInterfaceNumber);
    }
  } else {
  }
  goto error;
  switch_break: ;
  }
  ldv_37162:
  p = buflen > 3 ? (unsigned int )*(buffer + 3UL) : 0U;
  n = (unsigned int )buflen >= size ? (unsigned int )*(buffer + (unsigned long )(size - 1U)) : 0U;
  if ((unsigned int )buflen < size + p * n) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videostreaming interface %d HEADER descriptor is invalid.\n",
             (dev->udev)->devnum, (int )alts->desc.bInterfaceNumber);
      }
    } else {
    }
    goto error;
  } else {
  }
  streaming->header.bNumFormats = (__u8 )p;
  streaming->header.bEndpointAddress = *(buffer + 6UL);
  if ((unsigned int )*(buffer + 2UL) == 1U) {
    streaming->header.bmInfo = *(buffer + 7UL);
    streaming->header.bTerminalLink = *(buffer + 8UL);
    streaming->header.bStillCaptureMethod = *(buffer + 9UL);
    streaming->header.bTriggerSupport = *(buffer + 10UL);
    streaming->header.bTriggerUsage = *(buffer + 11UL);
  } else {
    streaming->header.bTerminalLink = *(buffer + 7UL);
  }
  {
  streaming->header.bControlSize = (__u8 )n;
  tmp___1 = kmemdup((void const *)buffer + (unsigned long )size, (size_t )(p * n),
                    208U);
  streaming->header.bmaControls = (__u8 *)tmp___1;
  }
  if ((unsigned long )streaming->header.bmaControls == (unsigned long )((__u8 *)0U)) {
    ret = -12;
    goto error;
  } else {
  }
  buflen = buflen - (int )*buffer;
  buffer = buffer + (unsigned long )*buffer;
  _buffer = buffer;
  _buflen = buflen;
  goto ldv_37176;
  ldv_37175: ;
  {
  if ((int )*(_buffer + 2UL) == 4) {
    goto case_4;
  } else {
  }
  if ((int )*(_buffer + 2UL) == 6) {
    goto case_6;
  } else {
  }
  if ((int )*(_buffer + 2UL) == 16) {
    goto case_16;
  } else {
  }
  if ((int )*(_buffer + 2UL) == 12) {
    goto case_12;
  } else {
  }
  if ((int )*(_buffer + 2UL) == 10) {
    goto case_10;
  } else {
  }
  if ((int )*(_buffer + 2UL) == 18) {
    goto case_18;
  } else {
  }
  if ((int )*(_buffer + 2UL) == 5) {
    goto case_5;
  } else {
  }
  if ((int )*(_buffer + 2UL) == 7) {
    goto case_7;
  } else {
  }
  if ((int )*(_buffer + 2UL) == 17) {
    goto case_17;
  } else {
  }
  goto switch_break___0;
  case_4: ;
  case_6: ;
  case_16:
  nformats = nformats + 1U;
  goto ldv_37168;
  case_12:
  nformats = nformats + 1U;
  nframes = nframes + 1U;
  nintervals = nintervals + 1U;
  goto ldv_37168;
  case_10: ;
  case_18: ;
  if ((uvc_trace_param & 2U) != 0U) {
    {
    printk("\017uvcvideo: device %d videostreaming interface %d FORMAT %u is not supported.\n",
           (dev->udev)->devnum, (int )alts->desc.bInterfaceNumber, (int )*(_buffer + 2UL));
    }
  } else {
  }
  goto ldv_37168;
  case_5: ;
  case_7:
  nframes = nframes + 1U;
  if (_buflen > 25) {
    nintervals = nintervals + ((unsigned int )*(_buffer + 25UL) != 0U ? (unsigned int )*(_buffer + 25UL) : 3U);
  } else {
  }
  goto ldv_37168;
  case_17:
  nframes = nframes + 1U;
  if (_buflen > 21) {
    nintervals = nintervals + ((unsigned int )*(_buffer + 21UL) != 0U ? (unsigned int )*(_buffer + 21UL) : 3U);
  } else {
  }
  goto ldv_37168;
  switch_break___0: ;
  }
  ldv_37168:
  _buflen = _buflen - (int )*_buffer;
  _buffer = _buffer + (unsigned long )*_buffer;
  ldv_37176: ;
  if (_buflen > 2 && (unsigned int )*(_buffer + 1UL) == 36U) {
    goto ldv_37175;
  } else {
  }
  if (nformats == 0U) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videostreaming interface %d has no supported formats defined.\n",
             (dev->udev)->devnum, (int )alts->desc.bInterfaceNumber);
      }
    } else {
    }
    goto error;
  } else {
  }
  {
  size = (nformats * 56U + nframes * 40U) + nintervals * 4U;
  tmp___2 = kzalloc((size_t )size, 208U);
  format = (struct uvc_format *)tmp___2;
  }
  if ((unsigned long )format == (unsigned long )((struct uvc_format *)0)) {
    ret = -12;
    goto error;
  } else {
  }
  frame = (struct uvc_frame *)format + (unsigned long )nformats;
  interval = (__u32 *)frame + (unsigned long )nframes;
  streaming->format = format;
  streaming->nformats = nformats;
  goto ldv_37182;
  ldv_37185: ;
  {
  if ((int )*(buffer + 2UL) == 4) {
    goto case_4___0;
  } else {
  }
  if ((int )*(buffer + 2UL) == 6) {
    goto case_6___0;
  } else {
  }
  if ((int )*(buffer + 2UL) == 12) {
    goto case_12___0;
  } else {
  }
  if ((int )*(buffer + 2UL) == 16) {
    goto case_16___0;
  } else {
  }
  goto switch_default___0;
  case_4___0: ;
  case_6___0: ;
  case_12___0: ;
  case_16___0:
  {
  format->frame = frame;
  ret = uvc_parse_format(dev, streaming, format, & interval, buffer, buflen);
  }
  if (ret < 0) {
    goto error;
  } else {
  }
  frame = frame + (unsigned long )format->nframes;
  format = format + 1;
  buflen = buflen - ret;
  buffer = buffer + (unsigned long )ret;
  goto ldv_37182;
  switch_default___0: ;
  goto ldv_37184;
  switch_break___1: ;
  }
  ldv_37184:
  buflen = buflen - (int )*buffer;
  buffer = buffer + (unsigned long )*buffer;
  ldv_37182: ;
  if (buflen > 2 && (unsigned int )*(buffer + 1UL) == 36U) {
    goto ldv_37185;
  } else {
  }
  if (buflen != 0) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videostreaming interface %d has %u bytes of trailing descriptor garbage.\n",
             (dev->udev)->devnum, (int )alts->desc.bInterfaceNumber, buflen);
      }
    } else {
    }
  } else {
  }
  i = 0U;
  goto ldv_37190;
  ldv_37189:
  {
  alts = intf->altsetting + (unsigned long )i;
  ep___0 = uvc_find_endpoint(alts, (int )streaming->header.bEndpointAddress);
  }
  if ((unsigned long )ep___0 == (unsigned long )((struct usb_host_endpoint *)0)) {
    goto ldv_37188;
  } else {
  }
  psize = ep___0->desc.wMaxPacketSize;
  psize = ((unsigned int )psize & 2047U) * (unsigned int )((__u16 )((((int )psize >> 11) & 3) + 1));
  if ((int )psize > (int )streaming->maxpsize) {
    streaming->maxpsize = psize;
  } else {
  }
  ldv_37188:
  i = i + 1U;
  ldv_37190: ;
  if (i < intf->num_altsetting) {
    goto ldv_37189;
  } else {
  }
  {
  list_add_tail(& streaming->list, & dev->streams);
  }
  return (0);
  error:
  {
  usb_driver_release_interface(& uvc_driver.driver, intf);
  usb_put_intf(intf);
  kfree((void const *)streaming->format);
  kfree((void const *)streaming->header.bmaControls);
  kfree((void const *)streaming);
  }
  return (ret);
}
}
static struct uvc_entity *uvc_alloc_entity(u16 type , u8 id , unsigned int num_pads ,
                                           unsigned int extra_size )
{
  struct uvc_entity *entity ;
  unsigned int num_inputs ;
  unsigned int size ;
  unsigned int i ;
  void *tmp ;
  {
  {
  extra_size = (extra_size + 23U) & 4294967272U;
  num_inputs = (int )((short )type) < 0 ? num_pads : num_pads - 1U;
  size = ((extra_size + num_pads * 24U) + num_inputs) + 504U;
  tmp = kzalloc((size_t )size, 208U);
  entity = (struct uvc_entity *)tmp;
  }
  if ((unsigned long )entity == (unsigned long )((struct uvc_entity *)0)) {
    return ((struct uvc_entity *)0);
  } else {
  }
  entity->id = id;
  entity->type = type;
  entity->num_links = 0U;
  entity->num_pads = num_pads;
  entity->pads = (struct media_pad *)entity + ((unsigned long )extra_size + 1UL);
  i = 0U;
  goto ldv_37203;
  ldv_37202:
  (entity->pads + (unsigned long )i)->flags = 1UL;
  i = i + 1U;
  ldv_37203: ;
  if (i < num_inputs) {
    goto ldv_37202;
  } else {
  }
  if (((int )entity->type & 65280) == 0 || (int )((short )entity->type) >= 0) {
    (entity->pads + (unsigned long )(num_pads - 1U))->flags = 2UL;
  } else {
  }
  entity->bNrInPins = (__u8 )num_inputs;
  entity->baSourceID = (__u8 *)entity->pads + (unsigned long )num_pads;
  return (entity);
}
}
static int uvc_parse_vendor_control(struct uvc_device *dev , unsigned char const *buffer ,
                                    int buflen )
{
  struct usb_device *udev ;
  struct usb_host_interface *alts ;
  struct uvc_entity *unit ;
  unsigned int n ;
  unsigned int p ;
  int handled ;
  {
  udev = dev->udev;
  alts = (dev->intf)->cur_altsetting;
  handled = 0;
  {
  if ((int )(dev->udev)->descriptor.idVendor == 1133) {
    goto case_1133;
  } else {
  }
  goto switch_break;
  case_1133: ;
  if ((unsigned int )((unsigned char )*(buffer + 1UL)) != 65U || (unsigned int )((unsigned char )*(buffer + 2UL)) != 1U) {
    goto ldv_37217;
  } else {
  }
  p = buflen > 21 ? (unsigned int )*(buffer + 21UL) : 0U;
  n = (unsigned int )buflen >= p + 25U ? (unsigned int )*(buffer + (unsigned long )(p + 22U)) : 0U;
  if ((unsigned int )buflen < (p + n * 2U) + 25U) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videocontrol interface %d EXTENSION_UNIT error\n",
             udev->devnum, (int )alts->desc.bInterfaceNumber);
      }
    } else {
    }
    goto ldv_37217;
  } else {
  }
  {
  unit = uvc_alloc_entity(6, (int )*(buffer + 3UL), p + 1U, n * 2U);
  }
  if ((unsigned long )unit == (unsigned long )((struct uvc_entity *)0)) {
    return (-12);
  } else {
  }
  {
  memcpy((void *)(& unit->__annonCompField85.extension.guidExtensionCode), (void const *)buffer + 4U,
           16UL);
  unit->__annonCompField85.extension.bNumControls = *(buffer + 20UL);
  memcpy((void *)unit->baSourceID, (void const *)buffer + 22U, (size_t )p);
  unit->__annonCompField85.extension.bControlSize = *(buffer + (unsigned long )(p + 22U));
  unit->__annonCompField85.extension.bmControls = (__u8 *)unit + 504UL;
  unit->__annonCompField85.extension.bmControlsType = (__u8 *)unit + ((unsigned long )n + 504UL);
  memcpy((void *)unit->__annonCompField85.extension.bmControls, (void const *)buffer + (unsigned long )(p + 23U),
           (size_t )(n * 2U));
  }
  if ((unsigned int )((unsigned char )*(buffer + (unsigned long )((p + n * 2U) + 24U))) != 0U) {
    {
    usb_string(udev, (int )*(buffer + (unsigned long )((p + n * 2U) + 24U)), (char *)(& unit->name),
               64UL);
    }
  } else {
    {
    sprintf((char *)(& unit->name), "Extension %u", (int )*(buffer + 3UL));
    }
  }
  {
  list_add_tail(& unit->list, & dev->entities);
  handled = 1;
  }
  goto ldv_37217;
  switch_break: ;
  }
  ldv_37217: ;
  return (handled);
}
}
static int uvc_parse_standard_control(struct uvc_device *dev , unsigned char const *buffer ,
                                      int buflen )
{
  struct usb_device *udev ;
  struct uvc_entity *unit ;
  struct uvc_entity *term ;
  struct usb_interface *intf ;
  struct usb_host_interface *alts ;
  unsigned int i ;
  unsigned int n ;
  unsigned int p ;
  unsigned int len ;
  __u16 type ;
  {
  udev = dev->udev;
  alts = (dev->intf)->cur_altsetting;
  {
  if ((int )*(buffer + 2UL) == 1) {
    goto case_1;
  } else {
  }
  if ((int )*(buffer + 2UL) == 2) {
    goto case_2;
  } else {
  }
  if ((int )*(buffer + 2UL) == 3) {
    goto case_3;
  } else {
  }
  if ((int )*(buffer + 2UL) == 4) {
    goto case_4;
  } else {
  }
  if ((int )*(buffer + 2UL) == 5) {
    goto case_5;
  } else {
  }
  if ((int )*(buffer + 2UL) == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_1:
  n = buflen > 11 ? (unsigned int )*(buffer + 11UL) : 0U;
  if ((unsigned int )buflen < n + 12U) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videocontrol interface %d HEADER error\n", udev->devnum,
             (int )alts->desc.bInterfaceNumber);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  dev->uvc_version = get_unaligned_le16((void const *)buffer + 3U);
  dev->clock_frequency = get_unaligned_le32((void const *)buffer + 7U);
  i = 0U;
  }
  goto ldv_37236;
  ldv_37235:
  {
  intf = usb_ifnum_to_if((struct usb_device const *)udev, (unsigned int )*(buffer + (unsigned long )(i + 12U)));
  }
  if ((unsigned long )intf == (unsigned long )((struct usb_interface *)0)) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d interface %d doesn\'t exists\n", udev->devnum,
             i);
      }
    } else {
    }
    goto ldv_37234;
  } else {
  }
  {
  uvc_parse_streaming(dev, intf);
  }
  ldv_37234:
  i = i + 1U;
  ldv_37236: ;
  if (i < n) {
    goto ldv_37235;
  } else {
  }
  goto ldv_37238;
  case_2: ;
  if (buflen <= 7) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videocontrol interface %d INPUT_TERMINAL error\n",
             udev->devnum, (int )alts->desc.bInterfaceNumber);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  type = get_unaligned_le16((void const *)buffer + 4U);
  }
  if (((int )type & 65280) == 0) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videocontrol interface %d INPUT_TERMINAL %d has invalid type 0x%04x, skipping\n",
             udev->devnum, (int )alts->desc.bInterfaceNumber, (int )*(buffer + 3UL),
             (int )type);
      }
    } else {
    }
    return (0);
  } else {
  }
  n = 0U;
  p = 0U;
  len = 8U;
  if ((unsigned int )type == 513U) {
    n = buflen > 14 ? (unsigned int )*(buffer + 14UL) : 0U;
    len = 15U;
  } else
  if ((unsigned int )type == 514U) {
    n = buflen > 8 ? (unsigned int )*(buffer + 8UL) : 0U;
    p = (unsigned int )buflen >= n + 10U ? (unsigned int )*(buffer + (unsigned long )(n + 9U)) : 0U;
    len = 10U;
  } else {
  }
  if ((unsigned int )buflen < (len + n) + p) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videocontrol interface %d INPUT_TERMINAL error\n",
             udev->devnum, (int )alts->desc.bInterfaceNumber);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  term = uvc_alloc_entity((int )type, (int )*(buffer + 3UL), 1U, n + p);
  }
  if ((unsigned long )term == (unsigned long )((struct uvc_entity *)0)) {
    return (-12);
  } else {
  }
  if (((int )term->type & 32767) == 513) {
    {
    term->__annonCompField85.camera.bControlSize = (__u8 )n;
    term->__annonCompField85.camera.bmControls = (__u8 *)term + 504UL;
    term->__annonCompField85.camera.wObjectiveFocalLengthMin = get_unaligned_le16((void const *)buffer + 8U);
    term->__annonCompField85.camera.wObjectiveFocalLengthMax = get_unaligned_le16((void const *)buffer + 10U);
    term->__annonCompField85.camera.wOcularFocalLength = get_unaligned_le16((void const *)buffer + 12U);
    memcpy((void *)term->__annonCompField85.camera.bmControls, (void const *)buffer + 15U,
             (size_t )n);
    }
  } else
  if (((int )term->type & 32767) == 514) {
    {
    term->__annonCompField85.media.bControlSize = (__u8 )n;
    term->__annonCompField85.media.bmControls = (__u8 *)term + 504UL;
    term->__annonCompField85.media.bTransportModeSize = (__u8 )p;
    term->__annonCompField85.media.bmTransportModes = (__u8 *)term + ((unsigned long )n + 504UL);
    memcpy((void *)term->__annonCompField85.media.bmControls, (void const *)buffer + 9U,
             (size_t )n);
    memcpy((void *)term->__annonCompField85.media.bmTransportModes, (void const *)buffer + (unsigned long )(n + 10U),
             (size_t )p);
    }
  } else {
  }
  if ((unsigned int )((unsigned char )*(buffer + 7UL)) != 0U) {
    {
    usb_string(udev, (int )*(buffer + 7UL), (char *)(& term->name), 64UL);
    }
  } else
  if (((int )term->type & 32767) == 513) {
    {
    sprintf((char *)(& term->name), "Camera %u", (int )*(buffer + 3UL));
    }
  } else
  if (((int )term->type & 32767) == 514) {
    {
    sprintf((char *)(& term->name), "Media %u", (int )*(buffer + 3UL));
    }
  } else {
    {
    sprintf((char *)(& term->name), "Input %u", (int )*(buffer + 3UL));
    }
  }
  {
  list_add_tail(& term->list, & dev->entities);
  }
  goto ldv_37238;
  case_3: ;
  if (buflen <= 8) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videocontrol interface %d OUTPUT_TERMINAL error\n",
             udev->devnum, (int )alts->desc.bInterfaceNumber);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  type = get_unaligned_le16((void const *)buffer + 4U);
  }
  if (((int )type & 65280) == 0) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videocontrol interface %d OUTPUT_TERMINAL %d has invalid type 0x%04x, skipping\n",
             udev->devnum, (int )alts->desc.bInterfaceNumber, (int )*(buffer + 3UL),
             (int )type);
      }
    } else {
    }
    return (0);
  } else {
  }
  {
  term = uvc_alloc_entity((int )((unsigned int )type | 32768U), (int )*(buffer + 3UL),
                          1U, 0U);
  }
  if ((unsigned long )term == (unsigned long )((struct uvc_entity *)0)) {
    return (-12);
  } else {
  }
  {
  memcpy((void *)term->baSourceID, (void const *)buffer + 7U, 1UL);
  }
  if ((unsigned int )((unsigned char )*(buffer + 8UL)) != 0U) {
    {
    usb_string(udev, (int )*(buffer + 8UL), (char *)(& term->name), 64UL);
    }
  } else {
    {
    sprintf((char *)(& term->name), "Output %u", (int )*(buffer + 3UL));
    }
  }
  {
  list_add_tail(& term->list, & dev->entities);
  }
  goto ldv_37238;
  case_4:
  p = buflen > 4 ? (unsigned int )*(buffer + 4UL) : 0U;
  if (buflen <= 4 || (unsigned int )buflen < p + 6U) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videocontrol interface %d SELECTOR_UNIT error\n",
             udev->devnum, (int )alts->desc.bInterfaceNumber);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  unit = uvc_alloc_entity((int )*(buffer + 2UL), (int )*(buffer + 3UL), p + 1U, 0U);
  }
  if ((unsigned long )unit == (unsigned long )((struct uvc_entity *)0)) {
    return (-12);
  } else {
  }
  {
  memcpy((void *)unit->baSourceID, (void const *)buffer + 5U, (size_t )p);
  }
  if ((unsigned int )((unsigned char )*(buffer + (unsigned long )(p + 5U))) != 0U) {
    {
    usb_string(udev, (int )*(buffer + (unsigned long )(p + 5U)), (char *)(& unit->name),
               64UL);
    }
  } else {
    {
    sprintf((char *)(& unit->name), "Selector %u", (int )*(buffer + 3UL));
    }
  }
  {
  list_add_tail(& unit->list, & dev->entities);
  }
  goto ldv_37238;
  case_5:
  n = buflen > 7 ? (unsigned int )*(buffer + 7UL) : 0U;
  p = (unsigned int )dev->uvc_version > 271U ? 10U : 9U;
  if ((unsigned int )buflen < p + n) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videocontrol interface %d PROCESSING_UNIT error\n",
             udev->devnum, (int )alts->desc.bInterfaceNumber);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  unit = uvc_alloc_entity((int )*(buffer + 2UL), (int )*(buffer + 3UL), 2U, n);
  }
  if ((unsigned long )unit == (unsigned long )((struct uvc_entity *)0)) {
    return (-12);
  } else {
  }
  {
  memcpy((void *)unit->baSourceID, (void const *)buffer + 4U, 1UL);
  unit->__annonCompField85.processing.wMaxMultiplier = get_unaligned_le16((void const *)buffer + 5U);
  unit->__annonCompField85.processing.bControlSize = *(buffer + 7UL);
  unit->__annonCompField85.processing.bmControls = (__u8 *)unit + 504UL;
  memcpy((void *)unit->__annonCompField85.processing.bmControls, (void const *)buffer + 8U,
           (size_t )n);
  }
  if ((unsigned int )dev->uvc_version > 271U) {
    unit->__annonCompField85.processing.bmVideoStandards = *(buffer + (unsigned long )(n + 9U));
  } else {
  }
  if ((unsigned int )((unsigned char )*(buffer + (unsigned long )(n + 8U))) != 0U) {
    {
    usb_string(udev, (int )*(buffer + (unsigned long )(n + 8U)), (char *)(& unit->name),
               64UL);
    }
  } else {
    {
    sprintf((char *)(& unit->name), "Processing %u", (int )*(buffer + 3UL));
    }
  }
  {
  list_add_tail(& unit->list, & dev->entities);
  }
  goto ldv_37238;
  case_6:
  p = buflen > 21 ? (unsigned int )*(buffer + 21UL) : 0U;
  n = (unsigned int )buflen >= p + 24U ? (unsigned int )*(buffer + (unsigned long )(p + 22U)) : 0U;
  if ((unsigned int )buflen < (p + n) + 24U) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: device %d videocontrol interface %d EXTENSION_UNIT error\n",
             udev->devnum, (int )alts->desc.bInterfaceNumber);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  unit = uvc_alloc_entity((int )*(buffer + 2UL), (int )*(buffer + 3UL), p + 1U, n);
  }
  if ((unsigned long )unit == (unsigned long )((struct uvc_entity *)0)) {
    return (-12);
  } else {
  }
  {
  memcpy((void *)(& unit->__annonCompField85.extension.guidExtensionCode), (void const *)buffer + 4U,
           16UL);
  unit->__annonCompField85.extension.bNumControls = *(buffer + 20UL);
  memcpy((void *)unit->baSourceID, (void const *)buffer + 22U, (size_t )p);
  unit->__annonCompField85.extension.bControlSize = *(buffer + (unsigned long )(p + 22U));
  unit->__annonCompField85.extension.bmControls = (__u8 *)unit + 504UL;
  memcpy((void *)unit->__annonCompField85.extension.bmControls, (void const *)buffer + (unsigned long )(p + 23U),
           (size_t )n);
  }
  if ((unsigned int )((unsigned char )*(buffer + (unsigned long )((p + n) + 23U))) != 0U) {
    {
    usb_string(udev, (int )*(buffer + (unsigned long )((p + n) + 23U)), (char *)(& unit->name),
               64UL);
    }
  } else {
    {
    sprintf((char *)(& unit->name), "Extension %u", (int )*(buffer + 3UL));
    }
  }
  {
  list_add_tail(& unit->list, & dev->entities);
  }
  goto ldv_37238;
  switch_default: ;
  if ((uvc_trace_param & 2U) != 0U) {
    {
    printk("\017uvcvideo: Found an unknown CS_INTERFACE descriptor (%u)\n", (int )*(buffer + 2UL));
    }
  } else {
  }
  goto ldv_37238;
  switch_break: ;
  }
  ldv_37238: ;
  return (0);
}
}
static int uvc_parse_control(struct uvc_device *dev )
{
  struct usb_host_interface *alts ;
  unsigned char *buffer ;
  int buflen ;
  int ret ;
  int tmp ;
  struct usb_host_endpoint *ep ;
  struct usb_endpoint_descriptor *desc ;
  int tmp___0 ;
  {
  alts = (dev->intf)->cur_altsetting;
  buffer = alts->extra;
  buflen = alts->extralen;
  goto ldv_37254;
  ldv_37253:
  {
  tmp = uvc_parse_vendor_control(dev, (unsigned char const *)buffer, buflen);
  }
  if (tmp != 0 || (unsigned int )*(buffer + 1UL) != 36U) {
    goto next_descriptor;
  } else {
  }
  {
  ret = uvc_parse_standard_control(dev, (unsigned char const *)buffer, buflen);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  next_descriptor:
  buflen = buflen - (int )*buffer;
  buffer = buffer + (unsigned long )*buffer;
  ldv_37254: ;
  if (buflen > 2) {
    goto ldv_37253;
  } else {
  }
  if ((unsigned int )alts->desc.bNumEndpoints == 1U && (dev->quirks & 8U) == 0U) {
    {
    ep = alts->endpoint;
    desc = & ep->desc;
    tmp___0 = usb_endpoint_is_int_in((struct usb_endpoint_descriptor const *)desc);
    }
    if ((tmp___0 != 0 && (unsigned int )desc->wMaxPacketSize > 7U) && (unsigned int )desc->bInterval != 0U) {
      if ((uvc_trace_param & 2U) != 0U) {
        {
        printk("\017uvcvideo: Found a Status endpoint (addr %02x).\n", (int )desc->bEndpointAddress);
        }
      } else {
      }
      dev->int_ep = ep;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int uvc_scan_chain_entity(struct uvc_video_chain *chain , struct uvc_entity *entity )
{
  {
  {
  if (((int )entity->type & 32767) == 6) {
    goto case_6;
  } else {
  }
  if (((int )entity->type & 32767) == 5) {
    goto case_5;
  } else {
  }
  if (((int )entity->type & 32767) == 4) {
    goto case_4;
  } else {
  }
  if (((int )entity->type & 32767) == 512) {
    goto case_512;
  } else {
  }
  if (((int )entity->type & 32767) == 513) {
    goto case_513;
  } else {
  }
  if (((int )entity->type & 32767) == 514) {
    goto case_514;
  } else {
  }
  if (((int )entity->type & 32767) == 768) {
    goto case_768;
  } else {
  }
  if (((int )entity->type & 32767) == 769) {
    goto case_769;
  } else {
  }
  if (((int )entity->type & 32767) == 770) {
    goto case_770;
  } else {
  }
  if (((int )entity->type & 32767) == 257) {
    goto case_257;
  } else {
  }
  goto switch_default;
  case_6: ;
  if ((int )uvc_trace_param & 1) {
    {
    printk(" <- XU %d", (int )entity->id);
    }
  } else {
  }
  if ((unsigned int )entity->bNrInPins != 1U) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: Extension unit %d has more than 1 input pin.\n", (int )entity->id);
      }
    } else {
    }
    return (-1);
  } else {
  }
  goto ldv_37263;
  case_5: ;
  if ((int )uvc_trace_param & 1) {
    {
    printk(" <- PU %d", (int )entity->id);
    }
  } else {
  }
  if ((unsigned long )chain->processing != (unsigned long )((struct uvc_entity *)0)) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: Found multiple Processing Units in chain.\n");
      }
    } else {
    }
    return (-1);
  } else {
  }
  chain->processing = entity;
  goto ldv_37263;
  case_4: ;
  if ((int )uvc_trace_param & 1) {
    {
    printk(" <- SU %d", (int )entity->id);
    }
  } else {
  }
  if ((unsigned int )entity->bNrInPins == 1U) {
    goto ldv_37263;
  } else {
  }
  if ((unsigned long )chain->selector != (unsigned long )((struct uvc_entity *)0)) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: Found multiple Selector Units in chain.\n");
      }
    } else {
    }
    return (-1);
  } else {
  }
  chain->selector = entity;
  goto ldv_37263;
  case_512: ;
  case_513: ;
  case_514: ;
  if ((int )uvc_trace_param & 1) {
    {
    printk(" <- IT %d\n", (int )entity->id);
    }
  } else {
  }
  goto ldv_37263;
  case_768: ;
  case_769: ;
  case_770: ;
  if ((int )uvc_trace_param & 1) {
    {
    printk(" OT %d", (int )entity->id);
    }
  } else {
  }
  goto ldv_37263;
  case_257: ;
  if (((int )entity->type & 65280) != 0 && (int )((short )entity->type) >= 0) {
    if ((int )uvc_trace_param & 1) {
      {
      printk(" <- IT %d\n", (int )entity->id);
      }
    } else {
    }
  } else
  if ((int )uvc_trace_param & 1) {
    {
    printk(" OT %d", (int )entity->id);
    }
  } else {
  }
  goto ldv_37263;
  switch_default: ;
  if ((uvc_trace_param & 2U) != 0U) {
    {
    printk("\017uvcvideo: Unsupported entity type 0x%04x found in chain.\n", (int )entity->type & 32767);
    }
  } else {
  }
  return (-1);
  switch_break: ;
  }
  ldv_37263:
  {
  list_add_tail(& entity->chain, & chain->entities);
  }
  return (0);
}
}
static int uvc_scan_chain_forward(struct uvc_video_chain *chain , struct uvc_entity *entity ,
                                  struct uvc_entity *prev )
{
  struct uvc_entity *forward ;
  int found ;
  {
  forward = (struct uvc_entity *)0;
  found = 0;
  ldv_37289:
  {
  forward = uvc_entity_by_reference(chain->dev, (int )entity->id, forward);
  }
  if ((unsigned long )forward == (unsigned long )((struct uvc_entity *)0)) {
    goto ldv_37281;
  } else {
  }
  if ((unsigned long )forward == (unsigned long )prev) {
    goto ldv_37282;
  } else {
  }
  {
  if (((int )forward->type & 32767) == 6) {
    goto case_6;
  } else {
  }
  if (((int )forward->type & 32767) == 768) {
    goto case_768;
  } else {
  }
  if (((int )forward->type & 32767) == 769) {
    goto case_769;
  } else {
  }
  if (((int )forward->type & 32767) == 770) {
    goto case_770;
  } else {
  }
  if (((int )forward->type & 32767) == 257) {
    goto case_257;
  } else {
  }
  goto switch_break;
  case_6: ;
  if ((unsigned int )forward->bNrInPins != 1U) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: Extension unit %d has more than 1 input pin.\n", (int )entity->id);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  list_add_tail(& forward->chain, & chain->entities);
  }
  if ((int )uvc_trace_param & 1) {
    if (found == 0) {
      {
      printk(" (->");
      }
    } else {
    }
    {
    printk(" XU %d", (int )forward->id);
    found = 1;
    }
  } else {
  }
  goto ldv_37284;
  case_768: ;
  case_769: ;
  case_770: ;
  case_257: ;
  if (((int )forward->type & 65280) != 0 && (int )((short )forward->type) >= 0) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: Unsupported input terminal %u.\n", (int )forward->id);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  list_add_tail(& forward->chain, & chain->entities);
  }
  if ((int )uvc_trace_param & 1) {
    if (found == 0) {
      {
      printk(" (->");
      }
    } else {
    }
    {
    printk(" OT %d", (int )forward->id);
    found = 1;
    }
  } else {
  }
  goto ldv_37284;
  switch_break: ;
  }
  ldv_37284: ;
  ldv_37282: ;
  goto ldv_37289;
  ldv_37281: ;
  if (found != 0) {
    {
    printk(")");
    }
  } else {
  }
  return (0);
}
}
static int uvc_scan_chain_backward(struct uvc_video_chain *chain , struct uvc_entity **_entity )
{
  struct uvc_entity *entity ;
  struct uvc_entity *term ;
  int id ;
  int i ;
  {
  entity = *_entity;
  id = -22;
  {
  if (((int )entity->type & 32767) == 6) {
    goto case_6;
  } else {
  }
  if (((int )entity->type & 32767) == 5) {
    goto case_5;
  } else {
  }
  if (((int )entity->type & 32767) == 4) {
    goto case_4;
  } else {
  }
  if (((int )entity->type & 32767) == 512) {
    goto case_512;
  } else {
  }
  if (((int )entity->type & 32767) == 513) {
    goto case_513;
  } else {
  }
  if (((int )entity->type & 32767) == 514) {
    goto case_514;
  } else {
  }
  if (((int )entity->type & 32767) == 768) {
    goto case_768;
  } else {
  }
  if (((int )entity->type & 32767) == 769) {
    goto case_769;
  } else {
  }
  if (((int )entity->type & 32767) == 770) {
    goto case_770;
  } else {
  }
  if (((int )entity->type & 32767) == 257) {
    goto case_257;
  } else {
  }
  goto switch_break;
  case_6: ;
  case_5:
  id = (int )*(entity->baSourceID);
  goto ldv_37300;
  case_4: ;
  if ((unsigned int )entity->bNrInPins == 1U) {
    id = (int )*(entity->baSourceID);
    goto ldv_37300;
  } else {
  }
  if ((int )uvc_trace_param & 1) {
    {
    printk(" <- IT");
    }
  } else {
  }
  chain->selector = entity;
  i = 0;
  goto ldv_37303;
  ldv_37302:
  {
  id = (int )*(entity->baSourceID + (unsigned long )i);
  term = uvc_entity_by_id(chain->dev, id);
  }
  if ((unsigned long )term == (unsigned long )((struct uvc_entity *)0) || (((int )term->type & 65280) == 0 || (int )((short )term->type) < 0)) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: Selector unit %d input %d isn\'t connected to an input terminal\n",
             (int )entity->id, i);
      }
    } else {
    }
    return (-1);
  } else {
  }
  if ((int )uvc_trace_param & 1) {
    {
    printk(" %d", (int )term->id);
    }
  } else {
  }
  {
  list_add_tail(& term->chain, & chain->entities);
  uvc_scan_chain_forward(chain, term, entity);
  i = i + 1;
  }
  ldv_37303: ;
  if (i < (int )entity->bNrInPins) {
    goto ldv_37302;
  } else {
  }
  if ((int )uvc_trace_param & 1) {
    {
    printk("\n");
    }
  } else {
  }
  id = 0;
  goto ldv_37300;
  case_512: ;
  case_513: ;
  case_514: ;
  case_768: ;
  case_769: ;
  case_770: ;
  case_257:
  id = ((int )entity->type & 65280) != 0 && (int )((short )entity->type) < 0 ? (int )*(entity->baSourceID) : 0;
  goto ldv_37300;
  switch_break: ;
  }
  ldv_37300: ;
  if (id <= 0) {
    *_entity = (struct uvc_entity *)0;
    return (id);
  } else {
  }
  {
  entity = uvc_entity_by_id(chain->dev, id);
  }
  if ((unsigned long )entity == (unsigned long )((struct uvc_entity *)0)) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: Found reference to unknown entity %d.\n", id);
      }
    } else {
    }
    return (-22);
  } else {
  }
  *_entity = entity;
  return (0);
}
}
static int uvc_scan_chain(struct uvc_video_chain *chain , struct uvc_entity *term )
{
  struct uvc_entity *entity ;
  struct uvc_entity *prev ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((int )uvc_trace_param & 1) {
    {
    printk("\017uvcvideo: Scanning UVC chain:");
    }
  } else {
  }
  entity = term;
  prev = (struct uvc_entity *)0;
  goto ldv_37319;
  ldv_37318: ;
  if ((unsigned long )entity->chain.next != (unsigned long )((struct list_head *)0) || (unsigned long )entity->chain.prev != (unsigned long )((struct list_head *)0)) {
    if ((uvc_trace_param & 2U) != 0U) {
      {
      printk("\017uvcvideo: Found reference to entity %d already in chain.\n", (int )entity->id);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  tmp = uvc_scan_chain_entity(chain, entity);
  }
  if (tmp < 0) {
    return (-22);
  } else {
  }
  {
  tmp___0 = uvc_scan_chain_forward(chain, entity, prev);
  }
  if (tmp___0 < 0) {
    return (-22);
  } else {
  }
  {
  prev = entity;
  tmp___1 = uvc_scan_chain_backward(chain, & entity);
  }
  if (tmp___1 < 0) {
    return (-22);
  } else {
  }
  ldv_37319: ;
  if ((unsigned long )entity != (unsigned long )((struct uvc_entity *)0)) {
    goto ldv_37318;
  } else {
  }
  return (0);
}
}
static unsigned int uvc_print_terms(struct list_head *terms , u16 dir , char *buffer )
{
  struct uvc_entity *term ;
  unsigned int nterms ;
  char *p ;
  struct list_head const *__mptr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr___0 ;
  {
  nterms = 0U;
  p = buffer;
  __mptr = (struct list_head const *)terms->next;
  term = (struct uvc_entity *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_37336;
  ldv_37335: ;
  if (((int )term->type & 65280) == 0 || ((int )term->type & 32768) != (int )dir) {
    goto ldv_37333;
  } else {
  }
  if (nterms != 0U) {
    {
    tmp = sprintf(p, ",");
    p = p + (unsigned long )tmp;
    }
  } else {
  }
  nterms = nterms + 1U;
  if (nterms > 3U) {
    {
    tmp___0 = sprintf(p, "...");
    p = p + (unsigned long )tmp___0;
    }
    goto ldv_37334;
  } else {
  }
  {
  tmp___1 = sprintf(p, "%u", (int )term->id);
  p = p + (unsigned long )tmp___1;
  }
  ldv_37333:
  __mptr___0 = (struct list_head const *)term->chain.next;
  term = (struct uvc_entity *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_37336: ;
  if ((unsigned long )(& term->chain) != (unsigned long )terms) {
    goto ldv_37335;
  } else {
  }
  ldv_37334: ;
  return ((unsigned int )((long )p) - (unsigned int )((long )buffer));
}
}
static char const *uvc_print_chain(struct uvc_video_chain *chain )
{
  char buffer[43U] ;
  char *p ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  {
  p = (char *)(& buffer);
  tmp = uvc_print_terms(& chain->entities, 0, p);
  p = p + (unsigned long )tmp;
  tmp___0 = sprintf(p, " -> ");
  p = p + (unsigned long )tmp___0;
  uvc_print_terms(& chain->entities, 32768, p);
  }
  return ((char const *)(& buffer));
}
}
static int uvc_scan_device(struct uvc_device *dev )
{
  struct uvc_video_chain *chain ;
  struct uvc_entity *term ;
  struct list_head const *__mptr ;
  void *tmp ;
  struct lock_class_key __key ;
  int tmp___0 ;
  char const *tmp___1 ;
  struct list_head const *__mptr___0 ;
  int tmp___2 ;
  {
  __mptr = (struct list_head const *)dev->entities.next;
  term = (struct uvc_entity *)__mptr;
  goto ldv_37354;
  ldv_37353: ;
  if (((int )term->type & 65280) == 0 || (int )((short )term->type) >= 0) {
    goto ldv_37351;
  } else {
  }
  if ((unsigned long )term->chain.next != (unsigned long )((struct list_head *)0) || (unsigned long )term->chain.prev != (unsigned long )((struct list_head *)0)) {
    goto ldv_37351;
  } else {
  }
  {
  tmp = kzalloc(240UL, 208U);
  chain = (struct uvc_video_chain *)tmp;
  }
  if ((unsigned long )chain == (unsigned long )((struct uvc_video_chain *)0)) {
    return (-12);
  } else {
  }
  {
  INIT_LIST_HEAD(& chain->entities);
  __mutex_init(& chain->ctrl_mutex, "&chain->ctrl_mutex", & __key);
  chain->dev = dev;
  v4l2_prio_init(& chain->prio);
  term->flags = term->flags | 1U;
  tmp___0 = uvc_scan_chain(chain, term);
  }
  if (tmp___0 < 0) {
    {
    kfree((void const *)chain);
    }
    goto ldv_37351;
  } else {
  }
  if ((int )uvc_trace_param & 1) {
    {
    tmp___1 = uvc_print_chain(chain);
    printk("\017uvcvideo: Found a valid video chain (%s).\n", tmp___1);
    }
  } else {
  }
  {
  list_add_tail(& chain->list, & dev->chains);
  }
  ldv_37351:
  __mptr___0 = (struct list_head const *)term->list.next;
  term = (struct uvc_entity *)__mptr___0;
  ldv_37354: ;
  if ((unsigned long )(& term->list) != (unsigned long )(& dev->entities)) {
    goto ldv_37353;
  } else {
  }
  {
  tmp___2 = list_empty((struct list_head const *)(& dev->chains));
  }
  if (tmp___2 != 0) {
    {
    printk("\016uvcvideo: No valid video chain found.\n");
    }
    return (-1);
  } else {
  }
  return (0);
}
}
static void uvc_delete(struct uvc_device *dev )
{
  struct list_head *p ;
  struct list_head *n ;
  int tmp ;
  struct uvc_video_chain *chain ;
  struct list_head const *__mptr ;
  struct uvc_entity *entity ;
  struct list_head const *__mptr___0 ;
  struct uvc_streaming *streaming ;
  struct list_head const *__mptr___1 ;
  {
  {
  uvc_status_cleanup(dev);
  uvc_ctrl_cleanup_device(dev);
  usb_put_intf(dev->intf);
  ldv_usb_put_dev_96(dev->udev);
  }
  if ((unsigned long )dev->vdev.dev != (unsigned long )((struct device *)0)) {
    {
    v4l2_device_unregister(& dev->vdev);
    }
  } else {
  }
  {
  tmp = media_devnode_is_registered(& dev->mdev.devnode);
  }
  if (tmp != 0) {
    {
    media_device_unregister(& dev->mdev);
    }
  } else {
  }
  p = dev->chains.next;
  n = p->next;
  goto ldv_37365;
  ldv_37364:
  {
  __mptr = (struct list_head const *)p;
  chain = (struct uvc_video_chain *)__mptr + 0xfffffffffffffff8UL;
  kfree((void const *)chain);
  p = n;
  n = p->next;
  }
  ldv_37365: ;
  if ((unsigned long )p != (unsigned long )(& dev->chains)) {
    goto ldv_37364;
  } else {
  }
  p = dev->entities.next;
  n = p->next;
  goto ldv_37371;
  ldv_37370:
  {
  __mptr___0 = (struct list_head const *)p;
  entity = (struct uvc_entity *)__mptr___0;
  uvc_mc_cleanup_entity(entity);
  }
  if ((unsigned long )entity->vdev != (unsigned long )((struct video_device *)0)) {
    {
    video_device_release(entity->vdev);
    entity->vdev = (struct video_device *)0;
    }
  } else {
  }
  {
  kfree((void const *)entity);
  p = n;
  n = p->next;
  }
  ldv_37371: ;
  if ((unsigned long )p != (unsigned long )(& dev->entities)) {
    goto ldv_37370;
  } else {
  }
  p = dev->streams.next;
  n = p->next;
  goto ldv_37377;
  ldv_37376:
  {
  __mptr___1 = (struct list_head const *)p;
  streaming = (struct uvc_streaming *)__mptr___1;
  usb_driver_release_interface(& uvc_driver.driver, streaming->intf);
  usb_put_intf(streaming->intf);
  kfree((void const *)streaming->format);
  kfree((void const *)streaming->header.bmaControls);
  kfree((void const *)streaming);
  p = n;
  n = p->next;
  }
  ldv_37377: ;
  if ((unsigned long )p != (unsigned long )(& dev->streams)) {
    goto ldv_37376;
  } else {
  }
  {
  kfree((void const *)dev);
  }
  return;
}
}
static void uvc_release(struct video_device *vdev )
{
  struct uvc_streaming *stream ;
  void *tmp ;
  struct uvc_device *dev ;
  int tmp___0 ;
  {
  {
  tmp = video_get_drvdata(vdev);
  stream = (struct uvc_streaming *)tmp;
  dev = stream->dev;
  tmp___0 = atomic_dec_and_test(& dev->nstreams);
  }
  if (tmp___0 != 0) {
    {
    uvc_delete(dev);
    }
  } else {
  }
  return;
}
}
static void uvc_unregister_video(struct uvc_device *dev )
{
  struct uvc_streaming *stream ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  {
  {
  atomic_inc(& dev->nstreams);
  __mptr = (struct list_head const *)dev->streams.next;
  stream = (struct uvc_streaming *)__mptr;
  }
  goto ldv_37394;
  ldv_37393: ;
  if ((unsigned long )stream->vdev == (unsigned long )((struct video_device *)0)) {
    goto ldv_37392;
  } else {
  }
  {
  video_unregister_device(stream->vdev);
  stream->vdev = (struct video_device *)0;
  uvc_debugfs_cleanup_stream(stream);
  }
  ldv_37392:
  __mptr___0 = (struct list_head const *)stream->list.next;
  stream = (struct uvc_streaming *)__mptr___0;
  ldv_37394: ;
  if ((unsigned long )(& stream->list) != (unsigned long )(& dev->streams)) {
    goto ldv_37393;
  } else {
  }
  {
  tmp = atomic_dec_and_test(& dev->nstreams);
  }
  if (tmp != 0) {
    {
    uvc_delete(dev);
    }
  } else {
  }
  return;
}
}
static int uvc_register_video(struct uvc_device *dev , struct uvc_streaming *stream )
{
  struct video_device *vdev ;
  int ret ;
  {
  {
  ret = uvc_queue_init(& stream->queue, stream->type, uvc_no_drop_param == 0U);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  ret = uvc_video_init(stream);
  }
  if (ret < 0) {
    {
    printk("\vuvcvideo: Failed to initialize the device (%d).\n", ret);
    }
    return (ret);
  } else {
  }
  {
  uvc_debugfs_init_stream(stream);
  vdev = video_device_alloc();
  }
  if ((unsigned long )vdev == (unsigned long )((struct video_device *)0)) {
    {
    printk("\vuvcvideo: Failed to allocate video device (%d).\n", ret);
    }
    return (-12);
  } else {
  }
  vdev->v4l2_dev = & dev->vdev;
  vdev->fops = & uvc_fops;
  vdev->ioctl_ops = & uvc_ioctl_ops;
  vdev->release = & uvc_release;
  vdev->prio = & (stream->chain)->prio;
  if ((unsigned int )stream->type == 2U) {
    vdev->vfl_dir = 1;
  } else {
  }
  {
  strlcpy((char *)(& vdev->name), (char const *)(& dev->name), 32UL);
  stream->vdev = vdev;
  video_set_drvdata(vdev, (void *)stream);
  ret = video_register_device(vdev, 0, -1);
  }
  if (ret < 0) {
    {
    printk("\vuvcvideo: Failed to register video device (%d).\n", ret);
    stream->vdev = (struct video_device *)0;
    video_device_release(vdev);
    }
    return (ret);
  } else {
  }
  if ((unsigned int )stream->type == 1U) {
    (stream->chain)->caps = (stream->chain)->caps | 1U;
  } else {
    (stream->chain)->caps = (stream->chain)->caps | 2U;
  }
  {
  atomic_inc(& dev->nstreams);
  }
  return (0);
}
}
static int uvc_register_terms(struct uvc_device *dev , struct uvc_video_chain *chain )
{
  struct uvc_streaming *stream ;
  struct uvc_entity *term ;
  int ret ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)chain->entities.next;
  term = (struct uvc_entity *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_37415;
  ldv_37414: ;
  if (((int )term->type & 32767) != 257) {
    goto ldv_37413;
  } else {
  }
  {
  stream = uvc_stream_by_id(dev, (int )term->id);
  }
  if ((unsigned long )stream == (unsigned long )((struct uvc_streaming *)0)) {
    {
    printk("\016uvcvideo: No streaming interface found for terminal %u.", (int )term->id);
    }
    goto ldv_37413;
  } else {
  }
  {
  stream->chain = chain;
  ret = uvc_register_video(dev, stream);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  term->vdev = stream->vdev;
  ldv_37413:
  __mptr___0 = (struct list_head const *)term->chain.next;
  term = (struct uvc_entity *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_37415: ;
  if ((unsigned long )(& term->chain) != (unsigned long )(& chain->entities)) {
    goto ldv_37414;
  } else {
  }
  return (0);
}
}
static int uvc_register_chains(struct uvc_device *dev )
{
  struct uvc_video_chain *chain ;
  int ret ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)dev->chains.next;
  chain = (struct uvc_video_chain *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_37427;
  ldv_37426:
  {
  ret = uvc_register_terms(dev, chain);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = uvc_mc_register_entities(chain);
  }
  if (ret < 0) {
    {
    printk("\016uvcvideo: Failed to register entites (%d).\n", ret);
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)chain->list.next;
  chain = (struct uvc_video_chain *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_37427: ;
  if ((unsigned long )(& chain->list) != (unsigned long )(& dev->chains)) {
    goto ldv_37426;
  } else {
  }
  return (0);
}
}
static int uvc_probe(struct usb_interface *intf , struct usb_device_id const *id )
{
  struct usb_device *udev ;
  struct usb_device *tmp ;
  struct uvc_device *dev ;
  int ret ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  {
  tmp = interface_to_usbdev(intf);
  udev = tmp;
  }
  if ((unsigned int )((unsigned short )id->idVendor) != 0U && (unsigned int )((unsigned short )id->idProduct) != 0U) {
    if ((int )uvc_trace_param & 1) {
      {
      printk("\017uvcvideo: Probing known UVC device %s (%04x:%04x)\n", (char *)(& udev->devpath),
             (int )id->idVendor, (int )id->idProduct);
      }
    } else {
    }
  } else
  if ((int )uvc_trace_param & 1) {
    {
    printk("\017uvcvideo: Probing generic UVC device %s\n", (char *)(& udev->devpath));
    }
  } else {
  }
  {
  tmp___0 = kzalloc(2920UL, 208U);
  dev = (struct uvc_device *)tmp___0;
  }
  if ((unsigned long )dev == (unsigned long )((struct uvc_device *)0)) {
    return (-12);
  } else {
  }
  {
  INIT_LIST_HEAD(& dev->entities);
  INIT_LIST_HEAD(& dev->chains);
  INIT_LIST_HEAD(& dev->streams);
  atomic_set(& dev->nstreams, 0);
  atomic_set(& dev->nmappings, 0);
  __mutex_init(& dev->lock, "&dev->lock", & __key);
  dev->udev = ldv_usb_get_dev_97(udev);
  dev->intf = usb_get_intf(intf);
  dev->intfnum = (int )(intf->cur_altsetting)->desc.bInterfaceNumber;
  dev->quirks = uvc_quirks_param == 4294967295U ? (__u32 )id->driver_info : uvc_quirks_param;
  }
  if ((unsigned long )udev->product != (unsigned long )((char *)0)) {
    {
    strlcpy((char *)(& dev->name), (char const *)udev->product, 32UL);
    }
  } else {
    {
    snprintf((char *)(& dev->name), 32UL, "UVC Camera (%04x:%04x)", (int )udev->descriptor.idVendor,
             (int )udev->descriptor.idProduct);
    }
  }
  {
  tmp___1 = uvc_parse_control(dev);
  }
  if (tmp___1 < 0) {
    if ((int )uvc_trace_param & 1) {
      {
      printk("\017uvcvideo: Unable to parse UVC descriptors.\n");
      }
    } else {
    }
    goto error;
  } else {
  }
  {
  printk("\016uvcvideo: Found UVC %u.%02x device %s (%04x:%04x)\n", (int )dev->uvc_version >> 8,
         (int )dev->uvc_version & 255, (unsigned long )udev->product != (unsigned long )((char *)0) ? udev->product : (char *)"<unnamed>",
         (int )udev->descriptor.idVendor, (int )udev->descriptor.idProduct);
  }
  if ((unsigned long )dev->quirks != (unsigned long )id->driver_info) {
    {
    printk("\016uvcvideo: Forcing device quirks to 0x%x by module parameter for testing purpose.\n",
           dev->quirks);
    printk("\016uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.\n");
    }
  } else {
  }
  {
  dev->mdev.dev = & intf->dev;
  strlcpy((char *)(& dev->mdev.model), (char const *)(& dev->name), 32UL);
  }
  if ((unsigned long )udev->serial != (unsigned long )((char *)0)) {
    {
    strlcpy((char *)(& dev->mdev.serial), (char const *)udev->serial, 40UL);
    }
  } else {
  }
  {
  strcpy((char *)(& dev->mdev.bus_info), (char const *)(& udev->devpath));
  dev->mdev.hw_revision = (u32 )udev->descriptor.bcdDevice;
  dev->mdev.driver_version = 262144U;
  tmp___2 = __media_device_register(& dev->mdev, & __this_module);
  }
  if (tmp___2 < 0) {
    goto error;
  } else {
  }
  {
  dev->vdev.mdev = & dev->mdev;
  tmp___3 = v4l2_device_register(& intf->dev, & dev->vdev);
  }
  if (tmp___3 < 0) {
    goto error;
  } else {
  }
  {
  tmp___4 = uvc_ctrl_init_device(dev);
  }
  if (tmp___4 < 0) {
    goto error;
  } else {
  }
  {
  tmp___5 = uvc_scan_device(dev);
  }
  if (tmp___5 < 0) {
    goto error;
  } else {
  }
  {
  tmp___6 = uvc_register_chains(dev);
  }
  if (tmp___6 < 0) {
    goto error;
  } else {
  }
  {
  usb_set_intfdata(intf, (void *)dev);
  ret = uvc_status_init(dev);
  }
  if (ret < 0) {
    {
    printk("\016uvcvideo: Unable to initialize the status endpoint (%d), status interrupt will not be supported.\n",
           ret);
    }
  } else {
  }
  if ((int )uvc_trace_param & 1) {
    {
    printk("\017uvcvideo: UVC device initialized.\n");
    }
  } else {
  }
  {
  usb_enable_autosuspend(udev);
  }
  return (0);
  error:
  {
  uvc_unregister_video(dev);
  }
  return (-19);
}
}
static void uvc_disconnect(struct usb_interface *intf )
{
  struct uvc_device *dev ;
  void *tmp ;
  {
  {
  tmp = usb_get_intfdata(intf);
  dev = (struct uvc_device *)tmp;
  usb_set_intfdata(intf, (void *)0);
  }
  if ((unsigned int )(intf->cur_altsetting)->desc.bInterfaceSubClass == 2U) {
    return;
  } else {
  }
  {
  dev->state = (enum uvc_device_state )((unsigned int )dev->state | 1U);
  uvc_unregister_video(dev);
  }
  return;
}
}
static int uvc_suspend(struct usb_interface *intf , pm_message_t message )
{
  struct uvc_device *dev ;
  void *tmp ;
  struct uvc_streaming *stream ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  {
  tmp = usb_get_intfdata(intf);
  dev = (struct uvc_device *)tmp;
  }
  if ((uvc_trace_param & 256U) != 0U) {
    {
    printk("\017uvcvideo: Suspending interface %u\n", (int )(intf->cur_altsetting)->desc.bInterfaceNumber);
    }
  } else {
  }
  if ((unsigned int )(intf->cur_altsetting)->desc.bInterfaceSubClass == 1U) {
    {
    ldv_mutex_lock_98(& dev->lock);
    }
    if (dev->users != 0U) {
      {
      uvc_status_stop(dev);
      }
    } else {
    }
    {
    ldv_mutex_unlock_99(& dev->lock);
    }
    return (0);
  } else {
  }
  __mptr = (struct list_head const *)dev->streams.next;
  stream = (struct uvc_streaming *)__mptr;
  goto ldv_37453;
  ldv_37452: ;
  if ((unsigned long )stream->intf == (unsigned long )intf) {
    {
    tmp___0 = uvc_video_suspend(stream);
    }
    return (tmp___0);
  } else {
  }
  __mptr___0 = (struct list_head const *)stream->list.next;
  stream = (struct uvc_streaming *)__mptr___0;
  ldv_37453: ;
  if ((unsigned long )(& stream->list) != (unsigned long )(& dev->streams)) {
    goto ldv_37452;
  } else {
  }
  if ((uvc_trace_param & 256U) != 0U) {
    {
    printk("\017uvcvideo: Suspend: video streaming USB interface mismatch.\n");
    }
  } else {
  }
  return (-22);
}
}
static int __uvc_resume(struct usb_interface *intf , int reset )
{
  struct uvc_device *dev ;
  void *tmp ;
  struct uvc_streaming *stream ;
  int ret ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  tmp = usb_get_intfdata(intf);
  dev = (struct uvc_device *)tmp;
  ret = 0;
  }
  if ((uvc_trace_param & 256U) != 0U) {
    {
    printk("\017uvcvideo: Resuming interface %u\n", (int )(intf->cur_altsetting)->desc.bInterfaceNumber);
    }
  } else {
  }
  if ((unsigned int )(intf->cur_altsetting)->desc.bInterfaceSubClass == 1U) {
    if (reset != 0) {
      {
      ret = uvc_ctrl_restore_values(dev);
      }
      if (ret < 0) {
        return (ret);
      } else {
      }
    } else {
    }
    {
    ldv_mutex_lock_100(& dev->lock);
    }
    if (dev->users != 0U) {
      {
      ret = uvc_status_start(dev, 16U);
      }
    } else {
    }
    {
    ldv_mutex_unlock_101(& dev->lock);
    }
    return (ret);
  } else {
  }
  __mptr = (struct list_head const *)dev->streams.next;
  stream = (struct uvc_streaming *)__mptr;
  goto ldv_37467;
  ldv_37466: ;
  if ((unsigned long )stream->intf == (unsigned long )intf) {
    {
    ret = uvc_video_resume(stream, reset);
    }
    if (ret < 0) {
      {
      uvc_queue_streamoff(& stream->queue, stream->queue.queue.type);
      }
    } else {
    }
    return (ret);
  } else {
  }
  __mptr___0 = (struct list_head const *)stream->list.next;
  stream = (struct uvc_streaming *)__mptr___0;
  ldv_37467: ;
  if ((unsigned long )(& stream->list) != (unsigned long )(& dev->streams)) {
    goto ldv_37466;
  } else {
  }
  if ((uvc_trace_param & 256U) != 0U) {
    {
    printk("\017uvcvideo: Resume: video streaming USB interface mismatch.\n");
    }
  } else {
  }
  return (-22);
}
}
static int uvc_resume(struct usb_interface *intf )
{
  int tmp ;
  {
  {
  tmp = __uvc_resume(intf, 0);
  }
  return (tmp);
}
}
static int uvc_reset_resume(struct usb_interface *intf )
{
  int tmp ;
  {
  {
  tmp = __uvc_resume(intf, 1);
  }
  return (tmp);
}
}
static int uvc_clock_param_get(char *buffer , struct kernel_param *kp )
{
  int tmp ;
  int tmp___0 ;
  {
  if (uvc_clock_param == 1U) {
    {
    tmp = sprintf(buffer, "CLOCK_MONOTONIC");
    }
    return (tmp);
  } else {
    {
    tmp___0 = sprintf(buffer, "CLOCK_REALTIME");
    }
    return (tmp___0);
  }
}
}
static int uvc_clock_param_set(char const *val , struct kernel_param *kp )
{
  size_t tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp___0 = strlen("clock_");
  tmp___1 = strncasecmp(val, "clock_", tmp___0);
  }
  if (tmp___1 == 0) {
    {
    tmp = strlen("clock_");
    val = val + tmp;
    }
  } else {
  }
  {
  tmp___3 = strcasecmp(val, "monotonic");
  }
  if (tmp___3 == 0) {
    uvc_clock_param = 1U;
  } else {
    {
    tmp___2 = strcasecmp(val, "realtime");
    }
    if (tmp___2 == 0) {
      uvc_clock_param = 0U;
    } else {
      return (-22);
    }
  }
  return (0);
}
}
static struct usb_device_id uvc_ids[50U] =
  { {899U, 1046U, 43290U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 2UL},
        {899U, 1112U, 28782U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 2UL},
        {899U, 1118U, 248U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 2UL},
        {899U, 1118U, 1825U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 256UL},
        {899U, 1118U, 1827U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 2UL},
        {899U, 1133U, 2241U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 255U, 1U, 0U, (unsigned char)0, 0UL},
        {899U, 1133U, 2242U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 255U, 1U, 0U, (unsigned char)0, 0UL},
        {899U, 1133U, 2243U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 255U, 1U, 0U, (unsigned char)0, 0UL},
        {899U, 1133U, 2245U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 255U, 1U, 0U, (unsigned char)0, 0UL},
        {899U, 1133U, 2246U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 255U, 1U, 0U, (unsigned char)0, 0UL},
        {899U, 1133U, 2247U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 255U, 1U, 0U, (unsigned char)0, 0UL},
        {899U, 1133U, 2093U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 1024UL},
        {899U, 1266U, 45169U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 512UL},
        {899U, 1423U, 14368U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 2UL},
        {899U, 1449U, 9792U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 256UL},
        {899U, 1449U, 9793U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 256UL},
        {899U, 1449U, 9795U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 256UL},
        {899U, 1449U, 9802U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 256UL},
        {899U, 1449U, 30320U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 256UL},
        {899U, 1452U, 34049U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 10UL},
        {899U, 1480U, 1027U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 128UL},
        {899U, 1507U, 1285U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 16UL},
        {899U, 1784U, 12300U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 128UL},
        {899U, 2760U, 13101U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 128UL},
        {899U, 2760U, 13328U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 128UL},
        {899U, 2760U, 13344U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 128UL},
        {899U, 3027U, 1365U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 2UL},
        {899U, 3725U, 4U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 258UL},
        {899U, 5075U, 20739U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 16UL},
        {899U, 5421U, 784U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 2UL},
        {899U, 5967U, 21010U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 16UL},
        {899U, 5967U, 22833U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 16UL},
        {899U, 5967U, 35346U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 16UL},
        {899U, 5967U, 35377U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 16UL},
        {899U, 5967U, 35379U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 16UL},
        {899U, 5967U, 35380U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 16UL},
        {899U, 6108U, 514U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 16UL},
        {899U, 6127U, 18443U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 16UL},
        {899U, 6257U, 774U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 6UL},
        {899U, 6349U, 51966U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 4UL},
        {899U, 6380U, 12680U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 2UL},
        {899U, 6380U, 12936U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 2UL},
        {899U, 6380U, 12944U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 256UL},
        {899U, 6558U, 33026U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 255U, 1U, 0U, (unsigned char)0, 0UL},
        {907U, 6571U, 4096U, (unsigned short)0, 294U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 1UL},
        {899U, 6971U, 10577U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 2UL},
        {899U, 7247U, 12288U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 34UL},
        {899U, 10291U, 513U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0, 2048UL},
        {896U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 14U, 1U, 0U, (unsigned char)0,
      0UL}};
struct usb_device_id const __mod_usb__uvc_ids_device_table[50U] ;
struct uvc_driver uvc_driver = {{"uvcvideo", & uvc_probe, & uvc_disconnect, 0, & uvc_suspend, & uvc_resume, & uvc_reset_resume,
     0, 0, (struct usb_device_id const *)(& uvc_ids), {{{{{{0U}}, 0U, 0U, 0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                                         {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                    0, 0, 0, 0, 0,
                                                                    0, 0, 0, 0, 0},
                                                                   0}, (unsigned char)0,
     1U, (unsigned char)0, (unsigned char)0}};
static int uvc_init(void)
{
  int ret ;
  {
  {
  uvc_debugfs_init();
  ret = ldv_usb_register_driver_102(& uvc_driver.driver, & __this_module, "uvcvideo");
  }
  if (ret < 0) {
    {
    uvc_debugfs_cleanup();
    }
    return (ret);
  } else {
  }
  {
  printk("\016USB Video Class driver (1.1.1)\n");
  }
  return (0);
}
}
static void uvc_cleanup(void)
{
  {
  {
  ldv_usb_deregister_103(& uvc_driver.driver);
  uvc_debugfs_cleanup();
  }
  return;
}
}
void ldv_EMGentry_exit_uvc_cleanup_12_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_uvc_init_12_21(int (*arg0)(void) ) ;
void ldv_dispatch_deregister_10_1(struct usb_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_4_12_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_5_12_5(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_6_12_6(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_7_12_7(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_8_12_8(void) ;
void ldv_dispatch_deregister_file_operations_instance_3_12_9(void) ;
void ldv_dispatch_deregister_io_instance_11_12_10(void) ;
void ldv_dispatch_instance_deregister_8_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_instance_register_8_3(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_11_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_4_12_11(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_5_12_12(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_6_12_13(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_7_12_14(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_8_12_15(void) ;
void ldv_dispatch_register_file_operations_instance_3_12_16(void) ;
void ldv_dispatch_register_io_instance_11_12_17(void) ;
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(char * , struct kernel_param * ) ,
                                                  char *arg1 , struct kernel_param *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_9(int (*arg0)(char * , struct kernel_param * ) ,
                                                  char *arg1 , struct kernel_param *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct uvc_control_mapping * ,
                                                              unsigned char , unsigned char * ) ,
                                                  struct uvc_control_mapping *arg1 ,
                                                  unsigned char arg2 , unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_9(void (*arg0)(struct uvc_control_mapping * ,
                                                               int , unsigned char * ) ,
                                                  struct uvc_control_mapping *arg1 ,
                                                  int arg2 , unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct uvc_control_mapping * ,
                                                              unsigned char , unsigned char * ) ,
                                                  struct uvc_control_mapping *arg1 ,
                                                  unsigned char arg2 , unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_9(void (*arg0)(struct uvc_control_mapping * ,
                                                               int , unsigned char * ) ,
                                                  struct uvc_control_mapping *arg1 ,
                                                  int arg2 , unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_11(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_14(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_fmtdesc * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_fmtdesc *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_15(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_fmtdesc * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_fmtdesc *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_16(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_frmivalenum * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_frmivalenum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_17(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_frmsizeenum * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_frmsizeenum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_18(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_input * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_input *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_19(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_control * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_control *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_20(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_ext_controls * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_ext_controls *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_21(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_22(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_23(int (*arg0)(struct file * , void * ,
                                                               unsigned int * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   unsigned int *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_26(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_streamparm * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_streamparm *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_27(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_create_buffers * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_create_buffers *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_30(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_33(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_capability * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_capability *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_34(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_queryctrl * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_queryctrl *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_35(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_querymenu * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_querymenu *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_36(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_requestbuffers * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_requestbuffers *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_37(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_control * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_control *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_38(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_ext_controls * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_ext_controls *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_39(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_40(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_41(int (*arg0)(struct file * , void * ,
                                                               unsigned int ) , struct file *arg1 ,
                                                   void *arg2 , unsigned int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_44(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_streamparm * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_streamparm *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_45(int (*arg0)(struct file * , void * ,
                                                               enum v4l2_buf_type ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   enum v4l2_buf_type arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_46(int (*arg0)(struct file * , void * ,
                                                               enum v4l2_buf_type ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   enum v4l2_buf_type arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_47(int (*arg0)(struct v4l2_fh * ,
                                                               struct v4l2_event_subscription * ) ,
                                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_48(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_ext_controls * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_ext_controls *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_49(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_50(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_51(int (*arg0)(struct v4l2_fh * ,
                                                               struct v4l2_event_subscription * ) ,
                                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_7(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_cropcap * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_cropcap *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_8(long (*arg0)(struct file * , void * ,
                                                               _Bool , unsigned int ,
                                                               void * ) , struct file *arg1 ,
                                                  void *arg2 , _Bool arg3 , unsigned int arg4 ,
                                                  void *arg5 ) ;
void ldv_dummy_resourceless_instance_callback_5_10(void (*arg0)(struct v4l2_event * ,
                                                                struct v4l2_event * ) ,
                                                   struct v4l2_event *arg1 , struct v4l2_event *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_13(void (*arg0)(struct v4l2_event * ,
                                                                struct v4l2_event * ) ,
                                                   struct v4l2_event *arg1 , struct v4l2_event *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct v4l2_subscribed_event * ,
                                                              unsigned int ) , struct v4l2_subscribed_event *arg1 ,
                                                  unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_9(void (*arg0)(struct v4l2_subscribed_event * ) ,
                                                  struct v4l2_subscribed_event *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_12(int (*arg0)(struct vb2_queue * ,
                                                               unsigned int ) , struct vb2_queue *arg1 ,
                                                   unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_6_15(void (*arg0)(struct vb2_queue * ) ,
                                                   struct vb2_queue *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_16(void (*arg0)(struct vb2_queue * ) ,
                                                   struct vb2_queue *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_17(void (*arg0)(struct vb2_queue * ) ,
                                                   struct vb2_queue *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_3(void (*arg0)(struct vb2_buffer * ) ,
                                                  struct vb2_buffer *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_7(int (*arg0)(struct vb2_buffer * ) ,
                                                  struct vb2_buffer *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_8(void (*arg0)(struct vb2_buffer * ) ,
                                                  struct vb2_buffer *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_9(int (*arg0)(struct vb2_queue * ,
                                                              struct v4l2_format * ,
                                                              unsigned int * , unsigned int * ,
                                                              unsigned int * , void ** ) ,
                                                  struct vb2_queue *arg1 , struct v4l2_format *arg2 ,
                                                  unsigned int *arg3 , unsigned int *arg4 ,
                                                  unsigned int *arg5 , void **arg6 ) ;
void ldv_entry_EMGentry_12(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_struct_kernel_param_ops_dummy_resourceless_instance_1(void *arg0 ) ;
void ldv_struct_uvc_menu_info_dummy_resourceless_instance_2(void *arg0 ) ;
void ldv_struct_uvc_menu_info_dummy_resourceless_instance_3(void *arg0 ) ;
void ldv_struct_v4l2_ioctl_ops_dummy_resourceless_instance_4(void *arg0 ) ;
void ldv_struct_v4l2_subscribed_event_ops_dummy_resourceless_instance_5(void *arg0 ) ;
void ldv_struct_vb2_ops_dummy_resourceless_instance_6(void *arg0 ) ;
void ldv_usb_deregister(void *arg0 , struct usb_driver *arg1 ) ;
void ldv_usb_dummy_factory_8(void *arg0 ) ;
void ldv_usb_instance_callback_7_6(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
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
void ldv_v4l2_file_operations_io_instance_9(void *arg0 ) ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_12 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
struct ldv_thread ldv_thread_8 ;
void ldv_EMGentry_exit_uvc_cleanup_12_2(void (*arg0)(void) )
{
  {
  {
  uvc_cleanup();
  }
  return;
}
}
int ldv_EMGentry_init_uvc_init_12_21(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = uvc_init();
  }
  return (tmp);
}
}
void ldv_dispatch_deregister_10_1(struct usb_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_4_12_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_5_12_5(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_6_12_6(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_7_12_7(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_8_12_8(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_file_operations_instance_3_12_9(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_io_instance_11_12_10(void)
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
void ldv_dispatch_register_11_2(struct usb_driver *arg0 )
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
void ldv_dispatch_register_dummy_resourceless_instance_4_12_11(void)
{
  struct ldv_struct_EMGentry_12 *cf_arg_1 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_1 = (struct ldv_struct_EMGentry_12 *)tmp;
  ldv_struct_kernel_param_ops_dummy_resourceless_instance_1((void *)cf_arg_1);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_5_12_12(void)
{
  struct ldv_struct_EMGentry_12 *cf_arg_2 ;
  struct ldv_struct_EMGentry_12 *cf_arg_3 ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_2 = (struct ldv_struct_EMGentry_12 *)tmp;
  ldv_struct_uvc_menu_info_dummy_resourceless_instance_2((void *)cf_arg_2);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_EMGentry_12 *)tmp___0;
  ldv_struct_uvc_menu_info_dummy_resourceless_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_6_12_13(void)
{
  struct ldv_struct_EMGentry_12 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_EMGentry_12 *)tmp;
  ldv_struct_v4l2_ioctl_ops_dummy_resourceless_instance_4((void *)cf_arg_4);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_7_12_14(void)
{
  struct ldv_struct_EMGentry_12 *cf_arg_5 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_5 = (struct ldv_struct_EMGentry_12 *)tmp;
  ldv_struct_v4l2_subscribed_event_ops_dummy_resourceless_instance_5((void *)cf_arg_5);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_8_12_15(void)
{
  struct ldv_struct_EMGentry_12 *cf_arg_6 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_6 = (struct ldv_struct_EMGentry_12 *)tmp;
  ldv_struct_vb2_ops_dummy_resourceless_instance_6((void *)cf_arg_6);
  }
  return;
}
}
void ldv_dispatch_register_file_operations_instance_3_12_16(void)
{
  struct ldv_struct_EMGentry_12 *cf_arg_0 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_0 = (struct ldv_struct_EMGentry_12 *)tmp;
  ldv_file_operations_file_operations_instance_0((void *)cf_arg_0);
  }
  return;
}
}
void ldv_dispatch_register_io_instance_11_12_17(void)
{
  struct ldv_struct_EMGentry_12 *cf_arg_9 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_9 = (struct ldv_struct_EMGentry_12 *)tmp;
  ldv_v4l2_file_operations_io_instance_9((void *)cf_arg_9);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(char * , struct kernel_param * ) ,
                                                  char *arg1 , struct kernel_param *arg2 )
{
  {
  {
  uvc_clock_param_get(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_9(int (*arg0)(char * , struct kernel_param * ) ,
                                                  char *arg1 , struct kernel_param *arg2 )
{
  {
  {
  uvc_clock_param_set((char const *)arg1, arg2);
  }
  return;
}
}
void ldv_entry_EMGentry_12(void *arg0 )
{
  void (*ldv_12_exit_uvc_cleanup_default)(void) ;
  int (*ldv_12_init_uvc_init_default)(void) ;
  int ldv_12_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_12_ret_default = ldv_EMGentry_init_uvc_init_12_21(ldv_12_init_uvc_init_default);
  ldv_12_ret_default = ldv_ldv_post_init_104(ldv_12_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_12_ret_default != 0);
    ldv_ldv_check_final_state_105();
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
      ldv_dispatch_register_io_instance_11_12_17();
      ldv_dispatch_register_file_operations_instance_3_12_16();
      ldv_dispatch_register_dummy_resourceless_instance_8_12_15();
      ldv_dispatch_register_dummy_resourceless_instance_7_12_14();
      ldv_dispatch_register_dummy_resourceless_instance_6_12_13();
      ldv_dispatch_register_dummy_resourceless_instance_5_12_12();
      ldv_dispatch_register_dummy_resourceless_instance_4_12_11();
      ldv_dispatch_deregister_io_instance_11_12_10();
      ldv_dispatch_deregister_file_operations_instance_3_12_9();
      ldv_dispatch_deregister_dummy_resourceless_instance_8_12_8();
      ldv_dispatch_deregister_dummy_resourceless_instance_7_12_7();
      ldv_dispatch_deregister_dummy_resourceless_instance_6_12_6();
      ldv_dispatch_deregister_dummy_resourceless_instance_5_12_5();
      ldv_dispatch_deregister_dummy_resourceless_instance_4_12_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_uvc_cleanup_12_2(ldv_12_exit_uvc_cleanup_default);
    ldv_ldv_check_final_state_106();
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
  ldv_ldv_initialize_107();
  ldv_entry_EMGentry_12((void *)0);
  }
return 0;
}
}
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
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
void ldv_struct_kernel_param_ops_dummy_resourceless_instance_1(void *arg0 )
{
  int (*ldv_1_callback_get)(char * , struct kernel_param * ) ;
  int (*ldv_1_callback_set)(char * , struct kernel_param * ) ;
  struct kernel_param *ldv_1_container_struct_kernel_param ;
  char *ldv_1_ldv_param_3_0_default ;
  char *ldv_1_ldv_param_9_0_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_1;
  return;
  ldv_call_1:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_1_ldv_param_3_0_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_1_ldv_param_9_0_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_1_9(ldv_1_callback_set, ldv_1_ldv_param_9_0_default,
                                                   ldv_1_container_struct_kernel_param);
      ldv_free((void *)ldv_1_ldv_param_9_0_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_get, ldv_1_ldv_param_3_0_default,
                                                   ldv_1_container_struct_kernel_param);
      }
    }
    {
    ldv_free((void *)ldv_1_ldv_param_3_0_default);
    }
    goto ldv_call_1;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_uvc_menu_info_dummy_resourceless_instance_2(void *arg0 )
{
  int (*ldv_2_callback_get)(struct uvc_control_mapping * , unsigned char , unsigned char * ) ;
  void (*ldv_2_callback_set)(struct uvc_control_mapping * , int , unsigned char * ) ;
  struct uvc_control_mapping *ldv_2_container_struct_uvc_control_mapping ;
  unsigned char ldv_2_ldv_param_3_1_default ;
  unsigned char *ldv_2_ldv_param_3_2_default ;
  int ldv_2_ldv_param_9_1_default ;
  unsigned char *ldv_2_ldv_param_9_2_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_2;
  return;
  ldv_call_2:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_2_ldv_param_3_2_default = (unsigned char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_2_ldv_param_9_2_default = (unsigned char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_2_9(ldv_2_callback_set, ldv_2_container_struct_uvc_control_mapping,
                                                   ldv_2_ldv_param_9_1_default, ldv_2_ldv_param_9_2_default);
      ldv_free((void *)ldv_2_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_2_3(ldv_2_callback_get, ldv_2_container_struct_uvc_control_mapping,
                                                   (int )ldv_2_ldv_param_3_1_default,
                                                   ldv_2_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_2_ldv_param_3_2_default);
    }
    goto ldv_call_2;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_uvc_menu_info_dummy_resourceless_instance_3(void *arg0 )
{
  int (*ldv_3_callback_get)(struct uvc_control_mapping * , unsigned char , unsigned char * ) ;
  void (*ldv_3_callback_set)(struct uvc_control_mapping * , int , unsigned char * ) ;
  struct uvc_control_mapping *ldv_3_container_struct_uvc_control_mapping ;
  unsigned char ldv_3_ldv_param_3_1_default ;
  unsigned char *ldv_3_ldv_param_3_2_default ;
  int ldv_3_ldv_param_9_1_default ;
  unsigned char *ldv_3_ldv_param_9_2_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_3;
  return;
  ldv_call_3:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_3_ldv_param_3_2_default = (unsigned char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_3_ldv_param_9_2_default = (unsigned char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_3_9(ldv_3_callback_set, ldv_3_container_struct_uvc_control_mapping,
                                                   ldv_3_ldv_param_9_1_default, ldv_3_ldv_param_9_2_default);
      ldv_free((void *)ldv_3_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_get, ldv_3_container_struct_uvc_control_mapping,
                                                   (int )ldv_3_ldv_param_3_1_default,
                                                   ldv_3_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_3_ldv_param_3_2_default);
    }
    goto ldv_call_3;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_v4l2_ioctl_ops_dummy_resourceless_instance_4(void *arg0 )
{
  int (*ldv_4_callback_vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
  int (*ldv_4_callback_vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
  long (*ldv_4_callback_vidioc_default)(struct file * , void * , _Bool , unsigned int ,
                                        void * ) ;
  int (*ldv_4_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
  int (*ldv_4_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
  int (*ldv_4_callback_vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
  int (*ldv_4_callback_vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
  int (*ldv_4_callback_vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
  int (*ldv_4_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
  int (*ldv_4_callback_vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
  int (*ldv_4_callback_vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
  int (*ldv_4_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
  int (*ldv_4_callback_vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
  int (*ldv_4_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) ;
  int (*ldv_4_callback_vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
  int (*ldv_4_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
  int (*ldv_4_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
  int (*ldv_4_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
  int (*ldv_4_callback_vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
  int (*ldv_4_callback_vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
  int (*ldv_4_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
  int (*ldv_4_callback_vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
  int (*ldv_4_callback_vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
  int (*ldv_4_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
  int (*ldv_4_callback_vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
  int (*ldv_4_callback_vidioc_s_input)(struct file * , void * , unsigned int ) ;
  int (*ldv_4_callback_vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
  int (*ldv_4_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
  int (*ldv_4_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
  int (*ldv_4_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
  int (*ldv_4_callback_vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
  int (*ldv_4_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
  int (*ldv_4_callback_vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
  int (*ldv_4_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
  enum v4l2_buf_type ldv_4_container_enum_v4l2_buf_type ;
  struct file *ldv_4_container_struct_file_ptr ;
  struct v4l2_buffer *ldv_4_container_struct_v4l2_buffer_ptr ;
  struct v4l2_capability *ldv_4_container_struct_v4l2_capability_ptr ;
  struct v4l2_control *ldv_4_container_struct_v4l2_control_ptr ;
  struct v4l2_create_buffers *ldv_4_container_struct_v4l2_create_buffers_ptr ;
  struct v4l2_cropcap *ldv_4_container_struct_v4l2_cropcap_ptr ;
  struct v4l2_event_subscription *ldv_4_container_struct_v4l2_event_subscription_ptr ;
  struct v4l2_ext_controls *ldv_4_container_struct_v4l2_ext_controls_ptr ;
  struct v4l2_fh *ldv_4_container_struct_v4l2_fh_ptr ;
  struct v4l2_fmtdesc *ldv_4_container_struct_v4l2_fmtdesc_ptr ;
  struct v4l2_format *ldv_4_container_struct_v4l2_format_ptr ;
  struct v4l2_frmivalenum *ldv_4_container_struct_v4l2_frmivalenum_ptr ;
  struct v4l2_frmsizeenum *ldv_4_container_struct_v4l2_frmsizeenum_ptr ;
  struct v4l2_input *ldv_4_container_struct_v4l2_input_ptr ;
  struct v4l2_queryctrl *ldv_4_container_struct_v4l2_queryctrl_ptr ;
  struct v4l2_querymenu *ldv_4_container_struct_v4l2_querymenu_ptr ;
  struct v4l2_requestbuffers *ldv_4_container_struct_v4l2_requestbuffers_ptr ;
  struct v4l2_streamparm *ldv_4_container_struct_v4l2_streamparm_ptr ;
  struct v4l2_buffer *ldv_4_ldv_param_11_2_default ;
  unsigned int *ldv_4_ldv_param_23_2_default ;
  struct v4l2_buffer *ldv_4_ldv_param_27_2_default ;
  struct v4l2_buffer *ldv_4_ldv_param_30_2_default ;
  unsigned int ldv_4_ldv_param_41_2_default ;
  _Bool ldv_4_ldv_param_8_2_default ;
  unsigned int ldv_4_ldv_param_8_3_default ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_4_51(ldv_4_callback_vidioc_unsubscribe_event,
                                                ldv_4_container_struct_v4l2_fh_ptr,
                                                ldv_4_container_struct_v4l2_event_subscription_ptr);
  }
  goto ldv_call_4;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_4_50(ldv_4_callback_vidioc_try_fmt_vid_out,
                                                ldv_4_container_struct_file_ptr, (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_format_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_4_49(ldv_4_callback_vidioc_try_fmt_vid_cap,
                                                ldv_4_container_struct_file_ptr, (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_format_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_4_48(ldv_4_callback_vidioc_try_ext_ctrls,
                                                ldv_4_container_struct_file_ptr, (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_ext_controls_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_4_47(ldv_4_callback_vidioc_subscribe_event,
                                                ldv_4_container_struct_v4l2_fh_ptr,
                                                ldv_4_container_struct_v4l2_event_subscription_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_4_46(ldv_4_callback_vidioc_streamon, ldv_4_container_struct_file_ptr,
                                                (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_enum_v4l2_buf_type);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_4_45(ldv_4_callback_vidioc_streamoff, ldv_4_container_struct_file_ptr,
                                                (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_enum_v4l2_buf_type);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_4_44(ldv_4_callback_vidioc_s_parm, ldv_4_container_struct_file_ptr,
                                                (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_streamparm_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_4_41(ldv_4_callback_vidioc_s_input, ldv_4_container_struct_file_ptr,
                                                (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_ldv_param_41_2_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_4_40(ldv_4_callback_vidioc_s_fmt_vid_out,
                                                ldv_4_container_struct_file_ptr, (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_format_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_4_39(ldv_4_callback_vidioc_s_fmt_vid_cap,
                                                ldv_4_container_struct_file_ptr, (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_format_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_4_38(ldv_4_callback_vidioc_s_ext_ctrls,
                                                ldv_4_container_struct_file_ptr, (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_ext_controls_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_4_37(ldv_4_callback_vidioc_s_ctrl, ldv_4_container_struct_file_ptr,
                                                (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_control_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_4_36(ldv_4_callback_vidioc_reqbufs, ldv_4_container_struct_file_ptr,
                                                (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_requestbuffers_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_15:
  {
  ldv_dummy_resourceless_instance_callback_4_35(ldv_4_callback_vidioc_querymenu, ldv_4_container_struct_file_ptr,
                                                (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_querymenu_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_4_34(ldv_4_callback_vidioc_queryctrl, ldv_4_container_struct_file_ptr,
                                                (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_queryctrl_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_17:
  {
  ldv_dummy_resourceless_instance_callback_4_33(ldv_4_callback_vidioc_querycap, ldv_4_container_struct_file_ptr,
                                                (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_capability_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_18:
  {
  tmp___0 = ldv_xmalloc(88UL);
  ldv_4_ldv_param_30_2_default = (struct v4l2_buffer *)tmp___0;
  ldv_dummy_resourceless_instance_callback_4_30(ldv_4_callback_vidioc_querybuf, ldv_4_container_struct_file_ptr,
                                                (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_ldv_param_30_2_default);
  ldv_free((void *)ldv_4_ldv_param_30_2_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_19:
  {
  tmp___1 = ldv_xmalloc(88UL);
  ldv_4_ldv_param_27_2_default = (struct v4l2_buffer *)tmp___1;
  ldv_dummy_resourceless_instance_callback_4_27(ldv_4_callback_vidioc_qbuf, ldv_4_container_struct_file_ptr,
                                                (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_ldv_param_27_2_default);
  ldv_free((void *)ldv_4_ldv_param_27_2_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_20:
  {
  ldv_dummy_resourceless_instance_callback_4_26(ldv_4_callback_vidioc_g_parm, ldv_4_container_struct_file_ptr,
                                                (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_streamparm_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_21:
  {
  tmp___2 = ldv_xmalloc(4UL);
  ldv_4_ldv_param_23_2_default = (unsigned int *)tmp___2;
  ldv_dummy_resourceless_instance_callback_4_23(ldv_4_callback_vidioc_g_input, ldv_4_container_struct_file_ptr,
                                                (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_ldv_param_23_2_default);
  ldv_free((void *)ldv_4_ldv_param_23_2_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_22:
  {
  ldv_dummy_resourceless_instance_callback_4_22(ldv_4_callback_vidioc_g_fmt_vid_out,
                                                ldv_4_container_struct_file_ptr, (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_format_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_23:
  {
  ldv_dummy_resourceless_instance_callback_4_21(ldv_4_callback_vidioc_g_fmt_vid_cap,
                                                ldv_4_container_struct_file_ptr, (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_format_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_24:
  {
  ldv_dummy_resourceless_instance_callback_4_20(ldv_4_callback_vidioc_g_ext_ctrls,
                                                ldv_4_container_struct_file_ptr, (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_ext_controls_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_25:
  {
  ldv_dummy_resourceless_instance_callback_4_19(ldv_4_callback_vidioc_g_ctrl, ldv_4_container_struct_file_ptr,
                                                (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_control_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_26:
  {
  ldv_dummy_resourceless_instance_callback_4_18(ldv_4_callback_vidioc_enum_input,
                                                ldv_4_container_struct_file_ptr, (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_input_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_27:
  {
  ldv_dummy_resourceless_instance_callback_4_17(ldv_4_callback_vidioc_enum_framesizes,
                                                ldv_4_container_struct_file_ptr, (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_frmsizeenum_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_28:
  {
  ldv_dummy_resourceless_instance_callback_4_16(ldv_4_callback_vidioc_enum_frameintervals,
                                                ldv_4_container_struct_file_ptr, (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_frmivalenum_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_29:
  {
  ldv_dummy_resourceless_instance_callback_4_15(ldv_4_callback_vidioc_enum_fmt_vid_out,
                                                ldv_4_container_struct_file_ptr, (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_fmtdesc_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_30:
  {
  ldv_dummy_resourceless_instance_callback_4_14(ldv_4_callback_vidioc_enum_fmt_vid_cap,
                                                ldv_4_container_struct_file_ptr, (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_container_struct_v4l2_fmtdesc_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_31:
  {
  tmp___3 = ldv_xmalloc(88UL);
  ldv_4_ldv_param_11_2_default = (struct v4l2_buffer *)tmp___3;
  ldv_dummy_resourceless_instance_callback_4_11(ldv_4_callback_vidioc_dqbuf, ldv_4_container_struct_file_ptr,
                                                (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                                ldv_4_ldv_param_11_2_default);
  ldv_free((void *)ldv_4_ldv_param_11_2_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_32:
  {
  ldv_dummy_resourceless_instance_callback_4_8(ldv_4_callback_vidioc_default, ldv_4_container_struct_file_ptr,
                                               (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                               (int )ldv_4_ldv_param_8_2_default,
                                               ldv_4_ldv_param_8_3_default, (void *)ldv_4_container_struct_v4l2_capability_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_33:
  {
  ldv_dummy_resourceless_instance_callback_4_7(ldv_4_callback_vidioc_cropcap, ldv_4_container_struct_file_ptr,
                                               (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                               ldv_4_container_struct_v4l2_cropcap_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_34:
  {
  ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_vidioc_create_bufs,
                                               ldv_4_container_struct_file_ptr, (void *)ldv_4_container_struct_v4l2_buffer_ptr,
                                               ldv_4_container_struct_v4l2_create_buffers_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_35: ;
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
void ldv_struct_v4l2_subscribed_event_ops_dummy_resourceless_instance_5(void *arg0 )
{
  int (*ldv_5_callback_add)(struct v4l2_subscribed_event * , unsigned int ) ;
  void (*ldv_5_callback_del)(struct v4l2_subscribed_event * ) ;
  void (*ldv_5_callback_merge)(struct v4l2_event * , struct v4l2_event * ) ;
  void (*ldv_5_callback_replace)(struct v4l2_event * , struct v4l2_event * ) ;
  struct v4l2_event *ldv_5_container_struct_v4l2_event_ptr ;
  struct v4l2_subscribed_event *ldv_5_container_struct_v4l2_subscribed_event_ptr ;
  struct v4l2_event *ldv_5_ldv_param_10_1_default ;
  struct v4l2_event *ldv_5_ldv_param_13_1_default ;
  unsigned int ldv_5_ldv_param_3_1_default ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_5;
  return;
  ldv_call_5:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
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
    goto switch_default;
    case_1:
    {
    tmp___0 = ldv_xmalloc(136UL);
    ldv_5_ldv_param_13_1_default = (struct v4l2_event *)tmp___0;
    ldv_dummy_resourceless_instance_callback_5_13(ldv_5_callback_replace, ldv_5_container_struct_v4l2_event_ptr,
                                                  ldv_5_ldv_param_13_1_default);
    ldv_free((void *)ldv_5_ldv_param_13_1_default);
    }
    goto ldv_38492;
    case_2:
    {
    tmp___1 = ldv_xmalloc(136UL);
    ldv_5_ldv_param_10_1_default = (struct v4l2_event *)tmp___1;
    ldv_dummy_resourceless_instance_callback_5_10(ldv_5_callback_merge, ldv_5_container_struct_v4l2_event_ptr,
                                                  ldv_5_ldv_param_10_1_default);
    ldv_free((void *)ldv_5_ldv_param_10_1_default);
    }
    goto ldv_38492;
    case_3:
    {
    ldv_dummy_resourceless_instance_callback_5_9(ldv_5_callback_del, ldv_5_container_struct_v4l2_subscribed_event_ptr);
    }
    goto ldv_38492;
    case_4:
    {
    ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_add, ldv_5_container_struct_v4l2_subscribed_event_ptr,
                                                 ldv_5_ldv_param_3_1_default);
    }
    goto ldv_38492;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_38492: ;
    goto ldv_call_5;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_vb2_ops_dummy_resourceless_instance_6(void *arg0 )
{
  void (*ldv_6_callback_buf_finish)(struct vb2_buffer * ) ;
  int (*ldv_6_callback_buf_prepare)(struct vb2_buffer * ) ;
  void (*ldv_6_callback_buf_queue)(struct vb2_buffer * ) ;
  int (*ldv_6_callback_queue_setup)(struct vb2_queue * , struct v4l2_format * , unsigned int * ,
                                    unsigned int * , unsigned int * , void ** ) ;
  int (*ldv_6_callback_start_streaming)(struct vb2_queue * , unsigned int ) ;
  void (*ldv_6_callback_stop_streaming)(struct vb2_queue * ) ;
  void (*ldv_6_callback_wait_finish)(struct vb2_queue * ) ;
  void (*ldv_6_callback_wait_prepare)(struct vb2_queue * ) ;
  struct v4l2_format *ldv_6_container_struct_v4l2_format_ptr ;
  struct vb2_buffer *ldv_6_container_struct_vb2_buffer_ptr ;
  struct vb2_queue *ldv_6_container_struct_vb2_queue_ptr ;
  void **ldv_6_container_void_ptr_ptr ;
  unsigned int ldv_6_ldv_param_12_1_default ;
  unsigned int *ldv_6_ldv_param_9_3_default ;
  unsigned int *ldv_6_ldv_param_9_4_default ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_6_17(ldv_6_callback_wait_prepare, ldv_6_container_struct_vb2_queue_ptr);
  }
  goto ldv_call_6;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_6_16(ldv_6_callback_wait_finish, ldv_6_container_struct_vb2_queue_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_6_15(ldv_6_callback_stop_streaming, ldv_6_container_struct_vb2_queue_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_6_12(ldv_6_callback_start_streaming, ldv_6_container_struct_vb2_queue_ptr,
                                                ldv_6_ldv_param_12_1_default);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_5:
  {
  tmp___0 = ldv_xmalloc(4UL);
  ldv_6_ldv_param_9_3_default = (unsigned int *)tmp___0;
  tmp___1 = ldv_xmalloc(4UL);
  ldv_6_ldv_param_9_4_default = (unsigned int *)tmp___1;
  ldv_dummy_resourceless_instance_callback_6_9(ldv_6_callback_queue_setup, ldv_6_container_struct_vb2_queue_ptr,
                                               ldv_6_container_struct_v4l2_format_ptr,
                                               (unsigned int *)ldv_6_container_void_ptr_ptr,
                                               ldv_6_ldv_param_9_3_default, ldv_6_ldv_param_9_4_default,
                                               (void **)ldv_6_container_struct_vb2_buffer_ptr);
  ldv_free((void *)ldv_6_ldv_param_9_3_default);
  ldv_free((void *)ldv_6_ldv_param_9_4_default);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_6_8(ldv_6_callback_buf_queue, ldv_6_container_struct_vb2_buffer_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_6_7(ldv_6_callback_buf_prepare, ldv_6_container_struct_vb2_buffer_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_6_3(ldv_6_callback_buf_finish, ldv_6_container_struct_vb2_buffer_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_9: ;
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
  struct usb_driver *ldv_10_usb_driver_usb_driver ;
  {
  {
  ldv_10_usb_driver_usb_driver = arg1;
  ldv_dispatch_deregister_10_1(ldv_10_usb_driver_usb_driver);
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
void ldv_usb_instance_callback_7_6(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  uvc_reset_resume(arg1);
  }
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
  tmp = uvc_probe(arg1, (struct usb_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_usb_instance_release_7_4(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  uvc_disconnect(arg1);
  }
  return;
}
}
void ldv_usb_instance_resume_7_7(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  uvc_resume(arg1);
  }
  return;
}
}
void ldv_usb_instance_suspend_7_8(int (*arg0)(struct usb_interface * , struct pm_message ) ,
                                  struct usb_interface *arg1 , struct pm_message *arg2 )
{
  {
  {
  uvc_suspend(arg1, *arg2);
  }
  return;
}
}
int ldv_usb_register_driver(int arg0 , struct usb_driver *arg1 , struct module *arg2 ,
                            char *arg3 )
{
  struct usb_driver *ldv_11_usb_driver_usb_driver ;
  int tmp ;
  {
  {
  arg0 = ldv_pre_usb_register_driver();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_11_usb_driver_usb_driver = arg1;
    ldv_dispatch_register_11_2(ldv_11_usb_driver_usb_driver);
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
  int (*ldv_7_callback_reset_resume)(struct usb_interface * ) ;
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
  ldv_ldv_pre_probe_108();
  ldv_7_probe_retval_default = ldv_usb_instance_probe_7_13((int (*)(struct usb_interface * ,
                                                                    struct usb_device_id * ))ldv_7_container_usb_driver->probe,
                                                           ldv_7_resource_usb_interface,
                                                           ldv_7_ldv_param_13_1_default);
  ldv_7_probe_retval_default = ldv_ldv_post_probe_109(ldv_7_probe_retval_default);
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
    goto ldv_38610;
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
    goto ldv_38610;
    case_3:
    {
    ldv_usb_instance_callback_7_6(ldv_7_callback_reset_resume, ldv_7_resource_usb_interface);
    }
    goto ldv_38610;
    case_4: ;
    goto ldv_38610;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_38610:
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
__inline static void atomic_inc(atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_inc(v);
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
static void ldv_usb_put_dev_96(struct usb_device *ldv_func_arg1 )
{
  {
  {
  ldv_linux_usb_dev_usb_put_dev(ldv_func_arg1);
  }
  return;
}
}
static struct usb_device *ldv_usb_get_dev_97(struct usb_device *ldv_func_arg1 )
{
  struct usb_device *tmp ;
  {
  {
  tmp = ldv_linux_usb_dev_usb_get_dev(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_98(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_lock_of_uvc_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_99(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_lock_of_uvc_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_100(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_lock_of_uvc_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_101(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_lock_of_uvc_device(ldv_func_arg1);
  }
  return;
}
}
static int ldv_usb_register_driver_102(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                       char const *ldv_func_arg3 )
{
  ldv_func_ret_type___0 ldv_func_res ;
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
static void ldv_usb_deregister_103(struct usb_driver *ldv_func_arg1 )
{
  {
  {
  usb_deregister(ldv_func_arg1);
  ldv_usb_deregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_init_104(int ldv_func_arg1 )
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
static void ldv_ldv_check_final_state_105(void)
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
static void ldv_ldv_check_final_state_106(void)
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
static void ldv_ldv_initialize_107(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
static void ldv_ldv_pre_probe_108(void)
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
static int ldv_ldv_post_probe_109(int retval )
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
long ldv__builtin_expect(long exp , long c ) ;
static void ldv_mutex_lock_102(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_108(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_110(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_112(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_114(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_116(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_118(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_120(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_122(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_video_queue(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_video_queue(struct mutex *lock ) ;
extern void list_del(struct list_head * ) ;
extern void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t * ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_98(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_124(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_126(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_irqlock_of_uvc_video_queue(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_irqlock_of_uvc_video_queue(void) ;
static void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_109(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_111(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_115(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_117(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_121(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_123(struct mutex *ldv_func_arg1 ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
extern void *vb2_plane_vaddr(struct vb2_buffer * , unsigned int ) ;
extern void vb2_buffer_done(struct vb2_buffer * , enum vb2_buffer_state ) ;
extern int vb2_querybuf(struct vb2_queue * , struct v4l2_buffer * ) ;
extern int vb2_reqbufs(struct vb2_queue * , struct v4l2_requestbuffers * ) ;
extern int vb2_create_bufs(struct vb2_queue * , struct v4l2_create_buffers * ) ;
extern int vb2_queue_init(struct vb2_queue * ) ;
extern void vb2_queue_release(struct vb2_queue * ) ;
extern int vb2_qbuf(struct vb2_queue * , struct v4l2_buffer * ) ;
extern int vb2_dqbuf(struct vb2_queue * , struct v4l2_buffer * , bool ) ;
extern int vb2_streamon(struct vb2_queue * , enum v4l2_buf_type ) ;
extern int vb2_streamoff(struct vb2_queue * , enum v4l2_buf_type ) ;
extern int vb2_mmap(struct vb2_queue * , struct vm_area_struct * ) ;
extern unsigned int vb2_poll(struct vb2_queue * , struct file * , poll_table * ) ;
__inline static bool vb2_is_busy(struct vb2_queue *q )
{
  {
  return (q->num_buffers != 0U);
}
}
__inline static void *vb2_get_drv_priv(struct vb2_queue *q )
{
  {
  return (q->drv_priv);
}
}
__inline static void vb2_set_plane_payload(struct vb2_buffer *vb , unsigned int plane_no ,
                                           unsigned long size )
{
  {
  if (plane_no < vb->num_planes) {
    vb->v4l2_planes[plane_no].bytesused = (__u32 )size;
  } else {
  }
  return;
}
}
__inline static unsigned long vb2_get_plane_payload(struct vb2_buffer *vb , unsigned int plane_no )
{
  {
  if (plane_no < vb->num_planes) {
    return ((unsigned long )vb->v4l2_planes[plane_no].bytesused);
  } else {
  }
  return (0UL);
}
}
__inline static unsigned long vb2_plane_size(struct vb2_buffer *vb , unsigned int plane_no )
{
  {
  if (plane_no < vb->num_planes) {
    return ((unsigned long )vb->v4l2_planes[plane_no].length);
  } else {
  }
  return (0UL);
}
}
extern void vb2_ops_wait_prepare(struct vb2_queue * ) ;
extern void vb2_ops_wait_finish(struct vb2_queue * ) ;
extern struct vb2_mem_ops const vb2_vmalloc_memops ;
void uvc_queue_release(struct uvc_video_queue *queue ) ;
int uvc_request_buffers(struct uvc_video_queue *queue , struct v4l2_requestbuffers *rb ) ;
int uvc_query_buffer(struct uvc_video_queue *queue , struct v4l2_buffer *buf ) ;
int uvc_create_buffers(struct uvc_video_queue *queue , struct v4l2_create_buffers *cb ) ;
int uvc_queue_buffer(struct uvc_video_queue *queue , struct v4l2_buffer *buf ) ;
int uvc_dequeue_buffer(struct uvc_video_queue *queue , struct v4l2_buffer *buf , int nonblocking ) ;
int uvc_queue_streamon(struct uvc_video_queue *queue , enum v4l2_buf_type type ) ;
void uvc_queue_cancel(struct uvc_video_queue *queue , int disconnect ) ;
struct uvc_buffer *uvc_queue_next_buffer(struct uvc_video_queue *queue , struct uvc_buffer *buf ) ;
int uvc_queue_mmap(struct uvc_video_queue *queue , struct vm_area_struct *vma ) ;
unsigned int uvc_queue_poll(struct uvc_video_queue *queue , struct file *file , poll_table *wait ) ;
int uvc_queue_allocated(struct uvc_video_queue *queue ) ;
int uvc_video_enable(struct uvc_streaming *stream , int enable ) ;
void uvc_video_clock_update(struct uvc_streaming *stream , struct v4l2_buffer *v4l2_buf ,
                            struct uvc_buffer *buf ) ;
__inline static struct uvc_streaming *uvc_queue_to_stream(struct uvc_video_queue *queue )
{
  struct uvc_video_queue const *__mptr ;
  {
  __mptr = (struct uvc_video_queue const *)queue;
  return ((struct uvc_streaming *)__mptr + 0xfffffffffffffeb0UL);
}
}
static void uvc_queue_return_buffers(struct uvc_video_queue *queue , enum uvc_buffer_state state )
{
  enum vb2_buffer_state vb2_state ;
  struct uvc_buffer *buf ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  vb2_state = (unsigned int )state == 5U ? 6 : 3;
  goto ldv_37043;
  ldv_37042:
  {
  __mptr = (struct list_head const *)queue->irqqueue.next;
  buf = (struct uvc_buffer *)__mptr + 0xfffffffffffffc60UL;
  list_del(& buf->queue);
  buf->state = state;
  vb2_buffer_done(& buf->buf, vb2_state);
  }
  ldv_37043:
  {
  tmp = list_empty((struct list_head const *)(& queue->irqqueue));
  }
  if (tmp == 0) {
    goto ldv_37042;
  } else {
  }
  return;
}
}
static int uvc_queue_setup(struct vb2_queue *vq , struct v4l2_format const *fmt ,
                           unsigned int *nbuffers , unsigned int *nplanes , unsigned int *sizes ,
                           void **alloc_ctxs )
{
  struct uvc_video_queue *queue ;
  void *tmp ;
  struct uvc_streaming *stream ;
  struct uvc_streaming *tmp___0 ;
  {
  {
  tmp = vb2_get_drv_priv(vq);
  queue = (struct uvc_video_queue *)tmp;
  tmp___0 = uvc_queue_to_stream(queue);
  stream = tmp___0;
  }
  if ((unsigned long )fmt != (unsigned long )((struct v4l2_format const *)0) && (unsigned int )fmt->fmt.pix.sizeimage < stream->ctrl.dwMaxVideoFrameSize) {
    return (-22);
  } else {
  }
  *nplanes = 1U;
  *sizes = (unsigned long )fmt != (unsigned long )((struct v4l2_format const *)0) ? fmt->fmt.pix.sizeimage : (unsigned int const )stream->ctrl.dwMaxVideoFrameSize;
  return (0);
}
}
static int uvc_buffer_prepare(struct vb2_buffer *vb )
{
  struct uvc_video_queue *queue ;
  void *tmp ;
  struct uvc_buffer *buf ;
  struct vb2_buffer const *__mptr ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  long tmp___2 ;
  unsigned long tmp___3 ;
  unsigned long tmp___4 ;
  {
  {
  tmp = vb2_get_drv_priv(vb->vb2_queue);
  queue = (struct uvc_video_queue *)tmp;
  __mptr = (struct vb2_buffer const *)vb;
  buf = (struct uvc_buffer *)__mptr;
  }
  if (vb->v4l2_buf.type == 2U) {
    {
    tmp___0 = vb2_get_plane_payload(vb, 0U);
    tmp___1 = vb2_plane_size(vb, 0U);
    }
    if (tmp___0 > tmp___1) {
      if ((uvc_trace_param & 16U) != 0U) {
        {
        printk("\017uvcvideo: [E] Bytes used out of bounds.\n");
        }
      } else {
      }
      return (-22);
    } else {
    }
  } else {
  }
  {
  tmp___2 = ldv__builtin_expect((long )((int )queue->flags) & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    return (-19);
  } else {
  }
  {
  buf->state = 1;
  buf->error = 0U;
  buf->mem = vb2_plane_vaddr(vb, 0U);
  tmp___3 = vb2_plane_size(vb, 0U);
  buf->length = (unsigned int )tmp___3;
  }
  if (vb->v4l2_buf.type == 1U) {
    buf->bytesused = 0U;
  } else {
    {
    tmp___4 = vb2_get_plane_payload(vb, 0U);
    buf->bytesused = (unsigned int )tmp___4;
    }
  }
  return (0);
}
}
static void uvc_buffer_queue(struct vb2_buffer *vb )
{
  struct uvc_video_queue *queue ;
  void *tmp ;
  struct uvc_buffer *buf ;
  struct vb2_buffer const *__mptr ;
  unsigned long flags ;
  long tmp___0 ;
  {
  {
  tmp = vb2_get_drv_priv(vb->vb2_queue);
  queue = (struct uvc_video_queue *)tmp;
  __mptr = (struct vb2_buffer const *)vb;
  buf = (struct uvc_buffer *)__mptr;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96(& queue->irqlock);
  tmp___0 = ldv__builtin_expect((queue->flags & 1U) == 0U, 1L);
  }
  if (tmp___0 != 0L) {
    {
    list_add_tail(& buf->queue, & queue->irqqueue);
    }
  } else {
    {
    buf->state = 5;
    vb2_buffer_done(& buf->buf, 6);
    }
  }
  {
  ldv_spin_unlock_irqrestore_97(& queue->irqlock, flags);
  }
  return;
}
}
static void uvc_buffer_finish(struct vb2_buffer *vb )
{
  struct uvc_video_queue *queue ;
  void *tmp ;
  struct uvc_streaming *stream ;
  struct uvc_streaming *tmp___0 ;
  struct uvc_buffer *buf ;
  struct vb2_buffer const *__mptr ;
  {
  {
  tmp = vb2_get_drv_priv(vb->vb2_queue);
  queue = (struct uvc_video_queue *)tmp;
  tmp___0 = uvc_queue_to_stream(queue);
  stream = tmp___0;
  __mptr = (struct vb2_buffer const *)vb;
  buf = (struct uvc_buffer *)__mptr;
  }
  if ((unsigned int )vb->state == 5U) {
    {
    uvc_video_clock_update(stream, & vb->v4l2_buf, buf);
    }
  } else {
  }
  return;
}
}
static int uvc_start_streaming(struct vb2_queue *vq , unsigned int count )
{
  struct uvc_video_queue *queue ;
  void *tmp ;
  struct uvc_streaming *stream ;
  struct uvc_streaming *tmp___0 ;
  unsigned long flags ;
  int ret ;
  {
  {
  tmp = vb2_get_drv_priv(vq);
  queue = (struct uvc_video_queue *)tmp;
  tmp___0 = uvc_queue_to_stream(queue);
  stream = tmp___0;
  queue->buf_used = 0U;
  ret = uvc_video_enable(stream, 1);
  }
  if (ret == 0) {
    return (0);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_98(& queue->irqlock);
  uvc_queue_return_buffers(queue, 1);
  ldv_spin_unlock_irqrestore_97(& queue->irqlock, flags);
  }
  return (ret);
}
}
static void uvc_stop_streaming(struct vb2_queue *vq )
{
  struct uvc_video_queue *queue ;
  void *tmp ;
  struct uvc_streaming *stream ;
  struct uvc_streaming *tmp___0 ;
  unsigned long flags ;
  {
  {
  tmp = vb2_get_drv_priv(vq);
  queue = (struct uvc_video_queue *)tmp;
  tmp___0 = uvc_queue_to_stream(queue);
  stream = tmp___0;
  uvc_video_enable(stream, 0);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100(& queue->irqlock);
  uvc_queue_return_buffers(queue, 5);
  ldv_spin_unlock_irqrestore_97(& queue->irqlock, flags);
  }
  return;
}
}
static struct vb2_ops uvc_queue_qops =
     {& uvc_queue_setup, & vb2_ops_wait_prepare, & vb2_ops_wait_finish, 0, & uvc_buffer_prepare,
    & uvc_buffer_finish, 0, & uvc_start_streaming, & uvc_stop_streaming, & uvc_buffer_queue};
int uvc_queue_init(struct uvc_video_queue *queue , enum v4l2_buf_type type , int drop_corrupted )
{
  int ret ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  {
  queue->queue.type = type;
  queue->queue.io_modes = 19U;
  queue->queue.drv_priv = (void *)queue;
  queue->queue.buf_struct_size = 976U;
  queue->queue.ops = (struct vb2_ops const *)(& uvc_queue_qops);
  queue->queue.mem_ops = & vb2_vmalloc_memops;
  queue->queue.timestamp_flags = 73728U;
  queue->queue.lock = & queue->mutex;
  ret = vb2_queue_init(& queue->queue);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  __mutex_init(& queue->mutex, "&queue->mutex", & __key);
  spinlock_check(& queue->irqlock);
  __raw_spin_lock_init(& queue->irqlock.__annonCompField18.rlock, "&(&queue->irqlock)->rlock",
                       & __key___0);
  INIT_LIST_HEAD(& queue->irqqueue);
  queue->flags = drop_corrupted != 0 ? 2U : 0U;
  }
  return (0);
}
}
void uvc_queue_release(struct uvc_video_queue *queue )
{
  {
  {
  ldv_mutex_lock_102(& queue->mutex);
  vb2_queue_release(& queue->queue);
  ldv_mutex_unlock_103(& queue->mutex);
  }
  return;
}
}
int uvc_request_buffers(struct uvc_video_queue *queue , struct v4l2_requestbuffers *rb )
{
  int ret ;
  {
  {
  ldv_mutex_lock_104(& queue->mutex);
  ret = vb2_reqbufs(& queue->queue, rb);
  ldv_mutex_unlock_105(& queue->mutex);
  }
  return (ret != 0 ? ret : (int )rb->count);
}
}
int uvc_query_buffer(struct uvc_video_queue *queue , struct v4l2_buffer *buf )
{
  int ret ;
  {
  {
  ldv_mutex_lock_106(& queue->mutex);
  ret = vb2_querybuf(& queue->queue, buf);
  ldv_mutex_unlock_107(& queue->mutex);
  }
  return (ret);
}
}
int uvc_create_buffers(struct uvc_video_queue *queue , struct v4l2_create_buffers *cb )
{
  int ret ;
  {
  {
  ldv_mutex_lock_108(& queue->mutex);
  ret = vb2_create_bufs(& queue->queue, cb);
  ldv_mutex_unlock_109(& queue->mutex);
  }
  return (ret);
}
}
int uvc_queue_buffer(struct uvc_video_queue *queue , struct v4l2_buffer *buf )
{
  int ret ;
  {
  {
  ldv_mutex_lock_110(& queue->mutex);
  ret = vb2_qbuf(& queue->queue, buf);
  ldv_mutex_unlock_111(& queue->mutex);
  }
  return (ret);
}
}
int uvc_dequeue_buffer(struct uvc_video_queue *queue , struct v4l2_buffer *buf , int nonblocking )
{
  int ret ;
  {
  {
  ldv_mutex_lock_112(& queue->mutex);
  ret = vb2_dqbuf(& queue->queue, buf, nonblocking != 0);
  ldv_mutex_unlock_113(& queue->mutex);
  }
  return (ret);
}
}
int uvc_queue_streamon(struct uvc_video_queue *queue , enum v4l2_buf_type type )
{
  int ret ;
  {
  {
  ldv_mutex_lock_114(& queue->mutex);
  ret = vb2_streamon(& queue->queue, type);
  ldv_mutex_unlock_115(& queue->mutex);
  }
  return (ret);
}
}
int uvc_queue_streamoff(struct uvc_video_queue *queue , enum v4l2_buf_type type )
{
  int ret ;
  {
  {
  ldv_mutex_lock_116(& queue->mutex);
  ret = vb2_streamoff(& queue->queue, type);
  ldv_mutex_unlock_117(& queue->mutex);
  }
  return (ret);
}
}
int uvc_queue_mmap(struct uvc_video_queue *queue , struct vm_area_struct *vma )
{
  int ret ;
  {
  {
  ldv_mutex_lock_118(& queue->mutex);
  ret = vb2_mmap(& queue->queue, vma);
  ldv_mutex_unlock_119(& queue->mutex);
  }
  return (ret);
}
}
unsigned int uvc_queue_poll(struct uvc_video_queue *queue , struct file *file , poll_table *wait )
{
  unsigned int ret ;
  {
  {
  ldv_mutex_lock_120(& queue->mutex);
  ret = vb2_poll(& queue->queue, file, wait);
  ldv_mutex_unlock_121(& queue->mutex);
  }
  return (ret);
}
}
int uvc_queue_allocated(struct uvc_video_queue *queue )
{
  int allocated ;
  bool tmp ;
  {
  {
  ldv_mutex_lock_122(& queue->mutex);
  tmp = vb2_is_busy(& queue->queue);
  allocated = (int )tmp;
  ldv_mutex_unlock_123(& queue->mutex);
  }
  return (allocated);
}
}
void uvc_queue_cancel(struct uvc_video_queue *queue , int disconnect )
{
  unsigned long flags ;
  {
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_124(& queue->irqlock);
  uvc_queue_return_buffers(queue, 5);
  }
  if (disconnect != 0) {
    queue->flags = queue->flags | 1U;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& queue->irqlock, flags);
  }
  return;
}
}
struct uvc_buffer *uvc_queue_next_buffer(struct uvc_video_queue *queue , struct uvc_buffer *buf )
{
  struct uvc_buffer *nextbuf ;
  unsigned long flags ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  if ((queue->flags & 2U) != 0U && buf->error != 0U) {
    {
    buf->error = 0U;
    buf->state = 1;
    buf->bytesused = 0U;
    vb2_set_plane_payload(& buf->buf, 0U, 0UL);
    }
    return (buf);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_126(& queue->irqlock);
  list_del(& buf->queue);
  tmp = list_empty((struct list_head const *)(& queue->irqqueue));
  }
  if (tmp == 0) {
    __mptr = (struct list_head const *)queue->irqqueue.next;
    nextbuf = (struct uvc_buffer *)__mptr + 0xfffffffffffffc60UL;
  } else {
    nextbuf = (struct uvc_buffer *)0;
  }
  {
  ldv_spin_unlock_irqrestore_97(& queue->irqlock, flags);
  buf->state = buf->error != 0U ? 6 : 4;
  vb2_set_plane_payload(& buf->buf, 0U, (unsigned long )buf->bytesused);
  vb2_buffer_done(& buf->buf, 5);
  }
  return (nextbuf);
}
}
void ldv_dummy_resourceless_instance_callback_6_12(int (*arg0)(struct vb2_queue * ,
                                                               unsigned int ) , struct vb2_queue *arg1 ,
                                                   unsigned int arg2 )
{
  {
  {
  uvc_start_streaming(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_15(void (*arg0)(struct vb2_queue * ) ,
                                                   struct vb2_queue *arg1 )
{
  {
  {
  uvc_stop_streaming(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_16(void (*arg0)(struct vb2_queue * ) ,
                                                   struct vb2_queue *arg1 )
{
  {
  {
  vb2_ops_wait_finish(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_17(void (*arg0)(struct vb2_queue * ) ,
                                                   struct vb2_queue *arg1 )
{
  {
  {
  vb2_ops_wait_prepare(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_3(void (*arg0)(struct vb2_buffer * ) ,
                                                  struct vb2_buffer *arg1 )
{
  {
  {
  uvc_buffer_finish(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_7(int (*arg0)(struct vb2_buffer * ) ,
                                                  struct vb2_buffer *arg1 )
{
  {
  {
  uvc_buffer_prepare(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_8(void (*arg0)(struct vb2_buffer * ) ,
                                                  struct vb2_buffer *arg1 )
{
  {
  {
  uvc_buffer_queue(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_9(int (*arg0)(struct vb2_queue * ,
                                                              struct v4l2_format * ,
                                                              unsigned int * , unsigned int * ,
                                                              unsigned int * , void ** ) ,
                                                  struct vb2_queue *arg1 , struct v4l2_format *arg2 ,
                                                  unsigned int *arg3 , unsigned int *arg4 ,
                                                  unsigned int *arg5 , void **arg6 )
{
  {
  {
  uvc_queue_setup(arg1, (struct v4l2_format const *)arg2, arg3, arg4, arg5, arg6);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irqlock_of_uvc_video_queue();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_irqlock_of_uvc_video_queue();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_98(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irqlock_of_uvc_video_queue();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irqlock_of_uvc_video_queue();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_102(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_108(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_109(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_110(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_111(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_112(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_114(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_115(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_116(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_117(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_118(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_120(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_121(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_122(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_123(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_video_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_124(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irqlock_of_uvc_video_queue();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_126(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irqlock_of_uvc_video_queue();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
void ldv_linux_usb_dev_atomic_dec(atomic_t *v ) ;
int ldv_linux_usb_dev_atomic_add_return(int i , atomic_t *v ) ;
int ldv_filter_err_code(int ret_val ) ;
static void ldv_mutex_lock_98___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_100___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_102___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_104___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_106___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_110___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_113(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_115(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_117(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_119(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_121(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_streaming(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_streaming(struct mutex *lock ) ;
extern void might_fault(void) ;
extern void __bad_percpu_size(void) ;
__inline static void atomic_dec(atomic_t *v ) ;
__inline static int atomic_add_return(int i , atomic_t *v ) ;
static void ldv_mutex_unlock_99___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_101___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_103___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_105___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_107___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_109___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_111___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_112(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_116(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_118(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_120(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_122(struct mutex *ldv_func_arg1 ) ;
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
  goto ldv_7178;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7178;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7178;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7178;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7178:
  ti = (struct thread_info *)(pfo_ret__ - 32728UL);
  return (ti);
}
}
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
extern int __get_user_bad(void) ;
extern void __put_user_bad(void) ;
extern unsigned long __clear_user(void * , unsigned long ) ;
extern unsigned long copy_user_enhanced_fast_string(void * , void const * , unsigned int ) ;
extern unsigned long copy_user_generic_string(void * , void const * , unsigned int ) ;
extern unsigned long copy_user_generic_unrolled(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_user_generic(void *to , void const *from , unsigned int len )
{
  unsigned int ret ;
  {
  __asm__ volatile ("661:\n\tcall %P4\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 3*32+16)\n .byte 662b-661b\n .byte 6641f-6631f\n .long 661b - .\n .long 6632f - .\n .word ( 9*32+ 9)\n .byte 662b-661b\n .byte 6642f-6632f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n .byte 0xff + (6642f-6632f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\tcall %P5\n6641:\n\t6632:\n\tcall %P6\n6642:\n\t.popsection": "=a" (ret),
                       "=D" (to), "=S" (from), "=d" (len): [old] "i" (& copy_user_generic_unrolled),
                       [new1] "i" (& copy_user_generic_string), [new2] "i" (& copy_user_enhanced_fast_string),
                       "1" (to), "2" (from), "3" (len): "memory", "rcx", "r8", "r9",
                       "r10", "r11");
  return ((unsigned long )ret);
}
}
extern unsigned long copy_in_user(void * , void const * , unsigned int ) ;
__inline static int __copy_from_user_nocheck(void *dst , void const *src , unsigned int size )
{
  int ret ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  {
  {
  ret = 0;
  tmp = copy_user_generic(dst, src, size);
  }
  return ((int )tmp);
  {
  if (size == 1U) {
    goto case_1;
  } else {
  }
  if (size == 2U) {
    goto case_2;
  } else {
  }
  if (size == 4U) {
    goto case_4;
  } else {
  }
  if (size == 8U) {
    goto case_8;
  } else {
  }
  if (size == 10U) {
    goto case_10;
  } else {
  }
  if (size == 16U) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=q" (*((u8 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (1), "0" (ret));
  return (ret);
  case_2:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (2), "0" (ret));
  return (ret);
  case_4:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u32 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (4), "0" (ret));
  return (ret);
  case_8:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (8), "0" (ret));
  return (ret);
  case_10:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (2), "0" (ret));
  return (ret);
  case_16:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (8), "0" (ret));
  return (ret);
  switch_default:
  {
  tmp___2 = copy_user_generic(dst, src, size);
  }
  return ((int )tmp___2);
  switch_break: ;
  }
}
}
__inline static int __copy_from_user(void *dst , void const *src , unsigned int size )
{
  int tmp ;
  {
  {
  might_fault();
  tmp = __copy_from_user_nocheck(dst, src, size);
  }
  return (tmp);
}
}
__inline static int __copy_to_user_nocheck(void *dst , void const *src , unsigned int size )
{
  int ret ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  {
  {
  ret = 0;
  tmp = copy_user_generic(dst, src, size);
  }
  return ((int )tmp);
  {
  if (size == 1U) {
    goto case_1;
  } else {
  }
  if (size == 2U) {
    goto case_2;
  } else {
  }
  if (size == 4U) {
    goto case_4;
  } else {
  }
  if (size == 8U) {
    goto case_8;
  } else {
  }
  if (size == 10U) {
    goto case_10;
  } else {
  }
  if (size == 16U) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "iq" (*((u8 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (1), "0" (ret));
  return (ret);
  case_2:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (2), "0" (ret));
  return (ret);
  case_4:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u32 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (4), "0" (ret));
  return (ret);
  case_8:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (8), "0" (ret));
  return (ret);
  case_10:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src + 4UL)),
                       "m" (*((struct __large_struct *)dst + 4U)), "i" (2), "0" (ret));
  return (ret);
  case_16:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src + 1UL)),
                       "m" (*((struct __large_struct *)dst + 1U)), "i" (8), "0" (ret));
  return (ret);
  switch_default:
  {
  tmp___2 = copy_user_generic(dst, src, size);
  }
  return ((int )tmp___2);
  switch_break: ;
  }
}
}
__inline static int __copy_to_user(void *dst , void const *src , unsigned int size )
{
  int tmp ;
  {
  {
  might_fault();
  tmp = __copy_to_user_nocheck(dst, src, size);
  }
  return (tmp);
}
}
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
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
extern int usb_autopm_get_interface(struct usb_interface * ) ;
extern void usb_autopm_put_interface(struct usb_interface * ) ;
__inline static int usb_make_path(struct usb_device *dev , char *buf , size_t size )
{
  int actual ;
  {
  {
  actual = snprintf(buf, size, "usb-%s-%s", (dev->bus)->bus_name, (char *)(& dev->devpath));
  }
  return (actual < (int )size ? actual : -1);
}
}
__inline static void *compat_ptr(compat_uptr_t uptr )
{
  {
  return ((void *)((unsigned long )uptr));
}
}
extern void *compat_alloc_user_space(unsigned long ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern struct video_device *video_devdata(struct file * ) ;
__inline static void *video_drvdata(struct file *file )
{
  struct video_device *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  }
  return (tmp___0);
}
}
extern int v4l2_event_subscribe(struct v4l2_fh * , struct v4l2_event_subscription const * ,
                                unsigned int , struct v4l2_subscribed_event_ops const * ) ;
extern int v4l2_event_unsubscribe(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
extern void v4l2_fh_init(struct v4l2_fh * , struct video_device * ) ;
extern void v4l2_fh_add(struct v4l2_fh * ) ;
extern void v4l2_fh_del(struct v4l2_fh * ) ;
extern void v4l2_fh_exit(struct v4l2_fh * ) ;
__inline static bool vb2_is_streaming(struct vb2_queue *q )
{
  {
  return ((int )q->streaming != 0);
}
}
__inline static int uvc_queue_streaming(struct uvc_video_queue *queue )
{
  bool tmp ;
  {
  {
  tmp = vb2_is_streaming(& queue->queue);
  }
  return ((int )tmp);
}
}
int uvc_probe_video(struct uvc_streaming *stream , struct uvc_streaming_control *probe ) ;
int uvc_query_ctrl(struct uvc_device *dev , __u8 query , __u8 unit , __u8 intfnum ,
                   __u8 cs , void *data , __u16 size ) ;
struct v4l2_subscribed_event_ops const uvc_ctrl_sub_ev_ops ;
int uvc_query_v4l2_ctrl(struct uvc_video_chain *chain , struct v4l2_queryctrl *v4l2_ctrl ) ;
int uvc_query_v4l2_menu(struct uvc_video_chain *chain , struct v4l2_querymenu *query_menu ) ;
int uvc_ctrl_add_mapping(struct uvc_video_chain *chain , struct uvc_control_mapping const *mapping ) ;
int uvc_ctrl_begin(struct uvc_video_chain *chain ) ;
int __uvc_ctrl_commit(struct uvc_fh *handle , int rollback , struct v4l2_ext_control const *xctrls ,
                      unsigned int xctrls_count ) ;
__inline static int uvc_ctrl_commit(struct uvc_fh *handle , struct v4l2_ext_control const *xctrls ,
                                    unsigned int xctrls_count )
{
  int tmp ;
  {
  {
  tmp = __uvc_ctrl_commit(handle, 0, xctrls, xctrls_count);
  }
  return (tmp);
}
}
__inline static int uvc_ctrl_rollback(struct uvc_fh *handle )
{
  int tmp ;
  {
  {
  tmp = __uvc_ctrl_commit(handle, 1, (struct v4l2_ext_control const *)0, 0U);
  }
  return (tmp);
}
}
int uvc_ctrl_get(struct uvc_video_chain *chain , struct v4l2_ext_control *xctrl ) ;
int uvc_ctrl_set(struct uvc_video_chain *chain , struct v4l2_ext_control *xctrl ) ;
int uvc_xu_ctrl_query(struct uvc_video_chain *chain , struct uvc_xu_control_query *xqry ) ;
static int uvc_ioctl_ctrl_map(struct uvc_video_chain *chain , struct uvc_xu_control_mapping *xmap )
{
  struct uvc_control_mapping *map ;
  unsigned int size ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  unsigned long tmp___1 ;
  {
  {
  tmp = kzalloc(144UL, 208U);
  map = (struct uvc_control_mapping *)tmp;
  }
  if ((unsigned long )map == (unsigned long )((struct uvc_control_mapping *)0)) {
    return (-12);
  } else {
  }
  {
  map->id = xmap->id;
  memcpy((void *)(& map->name), (void const *)(& xmap->name), 32UL);
  memcpy((void *)(& map->entity), (void const *)(& xmap->entity), 16UL);
  map->selector = xmap->selector;
  map->size = xmap->size;
  map->offset = xmap->offset;
  map->v4l2_type = (enum v4l2_ctrl_type )xmap->v4l2_type;
  map->data_type = xmap->data_type;
  }
  {
  if (xmap->v4l2_type == 1U) {
    goto case_1;
  } else {
  }
  if (xmap->v4l2_type == 2U) {
    goto case_2;
  } else {
  }
  if (xmap->v4l2_type == 4U) {
    goto case_4;
  } else {
  }
  if (xmap->v4l2_type == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_2: ;
  case_4: ;
  goto ldv_39257;
  case_3: ;
  if (xmap->menu_count - 1U > 31U) {
    ret = -22;
    goto done;
  } else {
  }
  {
  size = xmap->menu_count * 36U;
  tmp___0 = kmalloc((size_t )size, 208U);
  map->menu_info = (struct uvc_menu_info *)tmp___0;
  }
  if ((unsigned long )map->menu_info == (unsigned long )((struct uvc_menu_info *)0)) {
    ret = -12;
    goto done;
  } else {
  }
  {
  tmp___1 = copy_from_user((void *)map->menu_info, (void const *)xmap->menu_info,
                           (unsigned long )size);
  }
  if (tmp___1 != 0UL) {
    ret = -14;
    goto done;
  } else {
  }
  map->menu_count = xmap->menu_count;
  goto ldv_39257;
  switch_default: ;
  if ((uvc_trace_param & 4U) != 0U) {
    {
    printk("\017uvcvideo: Unsupported V4L2 control type %u.\n", xmap->v4l2_type);
    }
  } else {
  }
  ret = -25;
  goto done;
  switch_break: ;
  }
  ldv_39257:
  {
  ret = uvc_ctrl_add_mapping(chain, (struct uvc_control_mapping const *)map);
  }
  done:
  {
  kfree((void const *)map->menu_info);
  kfree((void const *)map);
  }
  return (ret);
}
}
static __u32 uvc_try_frame_interval(struct uvc_frame *frame , __u32 interval )
{
  unsigned int i ;
  __u32 best ;
  __u32 dist ;
  __u32 min ;
  __u32 max ;
  __u32 step ;
  {
  if ((unsigned int )frame->bFrameIntervalType != 0U) {
    best = 4294967295U;
    i = 0U;
    goto ldv_39270;
    ldv_39269:
    dist = interval > *(frame->dwFrameInterval + (unsigned long )i) ? interval - *(frame->dwFrameInterval + (unsigned long )i) : *(frame->dwFrameInterval + (unsigned long )i) - interval;
    if (dist > best) {
      goto ldv_39268;
    } else {
    }
    best = dist;
    i = i + 1U;
    ldv_39270: ;
    if (i < (unsigned int )frame->bFrameIntervalType) {
      goto ldv_39269;
    } else {
    }
    ldv_39268:
    interval = *(frame->dwFrameInterval + (unsigned long )(i - 1U));
  } else {
    min = *(frame->dwFrameInterval);
    max = *(frame->dwFrameInterval + 1UL);
    step = *(frame->dwFrameInterval + 2UL);
    interval = min + (((interval - min) + step / 2U) / step) * step;
    if (interval > max) {
      interval = max;
    } else {
    }
  }
  return (interval);
}
}
static int uvc_v4l2_try_format(struct uvc_streaming *stream , struct v4l2_format *fmt ,
                               struct uvc_streaming_control *probe , struct uvc_format **uvc_format ,
                               struct uvc_frame **uvc_frame )
{
  struct uvc_format *format ;
  struct uvc_frame *frame ;
  __u16 rw ;
  __u16 rh ;
  unsigned int d ;
  unsigned int maxd ;
  unsigned int i ;
  __u32 interval ;
  int ret ;
  __u8 *fcc ;
  __u16 w ;
  __u16 h ;
  __u16 _min1 ;
  __u16 _min2 ;
  __u16 _min1___0 ;
  __u16 _min2___0 ;
  {
  format = (struct uvc_format *)0;
  frame = (struct uvc_frame *)0;
  ret = 0;
  if (fmt->type != (__u32 )stream->type) {
    return (-22);
  } else {
  }
  fcc = (__u8 *)(& fmt->fmt.pix.pixelformat);
  if ((uvc_trace_param & 8U) != 0U) {
    {
    printk("\017uvcvideo: Trying format 0x%08x (%c%c%c%c): %ux%u.\n", fmt->fmt.pix.pixelformat,
           (int )*fcc, (int )*(fcc + 1UL), (int )*(fcc + 2UL), (int )*(fcc + 3UL),
           fmt->fmt.pix.width, fmt->fmt.pix.height);
    }
  } else {
  }
  i = 0U;
  goto ldv_39293;
  ldv_39292:
  format = stream->format + (unsigned long )i;
  if (format->fcc == fmt->fmt.pix.pixelformat) {
    goto ldv_39291;
  } else {
  }
  i = i + 1U;
  ldv_39293: ;
  if (i < stream->nformats) {
    goto ldv_39292;
  } else {
  }
  ldv_39291: ;
  if (i == stream->nformats) {
    format = stream->def_format;
    fmt->fmt.pix.pixelformat = format->fcc;
  } else {
  }
  rw = (__u16 )fmt->fmt.pix.width;
  rh = (__u16 )fmt->fmt.pix.height;
  maxd = 4294967295U;
  i = 0U;
  goto ldv_39304;
  ldv_39303:
  w = (format->frame + (unsigned long )i)->wWidth;
  h = (format->frame + (unsigned long )i)->wHeight;
  _min1 = w;
  _min2 = rw;
  _min1___0 = h;
  _min2___0 = rh;
  d = (unsigned int )(((int )_min1 < (int )_min2 ? _min1 : _min2) * ((int )_min1___0 < (int )_min2___0 ? _min1___0 : _min2___0));
  d = (unsigned int )((int )w * (int )h + (int )rw * (int )rh) - d * 2U;
  if (d < maxd) {
    maxd = d;
    frame = format->frame + (unsigned long )i;
  } else {
  }
  if (maxd == 0U) {
    goto ldv_39302;
  } else {
  }
  i = i + 1U;
  ldv_39304: ;
  if (i < format->nframes) {
    goto ldv_39303;
  } else {
  }
  ldv_39302: ;
  if ((unsigned long )frame == (unsigned long )((struct uvc_frame *)0)) {
    if ((uvc_trace_param & 8U) != 0U) {
      {
      printk("\017uvcvideo: Unsupported size %ux%u.\n", fmt->fmt.pix.width, fmt->fmt.pix.height);
      }
    } else {
    }
    return (-22);
  } else {
  }
  interval = frame->dwDefaultFrameInterval;
  if ((uvc_trace_param & 8U) != 0U) {
    {
    printk("\017uvcvideo: Using default frame interval %u.%u us (%u.%u fps).\n", interval / 10U,
           interval % 10U, 10000000U / interval, (100000000U / interval) % 10U);
    }
  } else {
  }
  {
  memset((void *)probe, 0, 34UL);
  probe->bmHint = 1U;
  probe->bFormatIndex = format->index;
  probe->bFrameIndex = frame->bFrameIndex;
  probe->dwFrameInterval = uvc_try_frame_interval(frame, interval);
  ldv_mutex_lock_98___0(& stream->mutex);
  }
  if (((stream->dev)->quirks & 4U) != 0U) {
    probe->dwMaxVideoFrameSize = stream->ctrl.dwMaxVideoFrameSize;
  } else {
  }
  {
  ret = uvc_probe_video(stream, probe);
  ldv_mutex_unlock_99___0(& stream->mutex);
  }
  if (ret < 0) {
    goto done;
  } else {
  }
  fmt->fmt.pix.width = (__u32 )frame->wWidth;
  fmt->fmt.pix.height = (__u32 )frame->wHeight;
  fmt->fmt.pix.field = 1U;
  fmt->fmt.pix.bytesperline = (__u32 )(((int )format->bpp * (int )frame->wWidth) / 8);
  fmt->fmt.pix.sizeimage = probe->dwMaxVideoFrameSize;
  fmt->fmt.pix.colorspace = (__u32 )format->colorspace;
  fmt->fmt.pix.priv = 0U;
  if ((unsigned long )uvc_format != (unsigned long )((struct uvc_format **)0)) {
    *uvc_format = format;
  } else {
  }
  if ((unsigned long )uvc_frame != (unsigned long )((struct uvc_frame **)0)) {
    *uvc_frame = frame;
  } else {
  }
  done: ;
  return (ret);
}
}
static int uvc_v4l2_get_format(struct uvc_streaming *stream , struct v4l2_format *fmt )
{
  struct uvc_format *format ;
  struct uvc_frame *frame ;
  int ret ;
  {
  ret = 0;
  if (fmt->type != (__u32 )stream->type) {
    return (-22);
  } else {
  }
  {
  ldv_mutex_lock_100___0(& stream->mutex);
  format = stream->cur_format;
  frame = stream->cur_frame;
  }
  if ((unsigned long )format == (unsigned long )((struct uvc_format *)0) || (unsigned long )frame == (unsigned long )((struct uvc_frame *)0)) {
    ret = -22;
    goto done;
  } else {
  }
  fmt->fmt.pix.pixelformat = format->fcc;
  fmt->fmt.pix.width = (__u32 )frame->wWidth;
  fmt->fmt.pix.height = (__u32 )frame->wHeight;
  fmt->fmt.pix.field = 1U;
  fmt->fmt.pix.bytesperline = (__u32 )(((int )format->bpp * (int )frame->wWidth) / 8);
  fmt->fmt.pix.sizeimage = stream->ctrl.dwMaxVideoFrameSize;
  fmt->fmt.pix.colorspace = (__u32 )format->colorspace;
  fmt->fmt.pix.priv = 0U;
  done:
  {
  ldv_mutex_unlock_101___0(& stream->mutex);
  }
  return (ret);
}
}
static int uvc_v4l2_set_format(struct uvc_streaming *stream , struct v4l2_format *fmt )
{
  struct uvc_streaming_control probe ;
  struct uvc_format *format ;
  struct uvc_frame *frame ;
  int ret ;
  int tmp ;
  {
  if (fmt->type != (__u32 )stream->type) {
    return (-22);
  } else {
  }
  {
  ret = uvc_v4l2_try_format(stream, fmt, & probe, & format, & frame);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ldv_mutex_lock_102___0(& stream->mutex);
  tmp = uvc_queue_allocated(& stream->queue);
  }
  if (tmp != 0) {
    ret = -16;
    goto done;
  } else {
  }
  stream->ctrl = probe;
  stream->cur_format = format;
  stream->cur_frame = frame;
  done:
  {
  ldv_mutex_unlock_103___0(& stream->mutex);
  }
  return (ret);
}
}
static int uvc_v4l2_get_streamparm(struct uvc_streaming *stream , struct v4l2_streamparm *parm )
{
  uint32_t numerator ;
  uint32_t denominator ;
  {
  if (parm->type != (__u32 )stream->type) {
    return (-22);
  } else {
  }
  {
  ldv_mutex_lock_104___0(& stream->mutex);
  numerator = stream->ctrl.dwFrameInterval;
  ldv_mutex_unlock_105___0(& stream->mutex);
  denominator = 10000000U;
  uvc_simplify_fraction(& numerator, & denominator, 8U, 333U);
  memset((void *)parm, 0, 204UL);
  parm->type = (__u32 )stream->type;
  }
  if ((unsigned int )stream->type == 1U) {
    parm->parm.capture.capability = 4096U;
    parm->parm.capture.capturemode = 0U;
    parm->parm.capture.timeperframe.numerator = numerator;
    parm->parm.capture.timeperframe.denominator = denominator;
    parm->parm.capture.extendedmode = 0U;
    parm->parm.capture.readbuffers = 0U;
  } else {
    parm->parm.output.capability = 4096U;
    parm->parm.output.outputmode = 0U;
    parm->parm.output.timeperframe.numerator = numerator;
    parm->parm.output.timeperframe.denominator = denominator;
  }
  return (0);
}
}
static int uvc_v4l2_set_streamparm(struct uvc_streaming *stream , struct v4l2_streamparm *parm )
{
  struct uvc_streaming_control probe ;
  struct v4l2_fract timeperframe ;
  uint32_t interval ;
  int ret ;
  int tmp ;
  {
  if (parm->type != (__u32 )stream->type) {
    return (-22);
  } else {
  }
  if (parm->type == 1U) {
    timeperframe = parm->parm.capture.timeperframe;
  } else {
    timeperframe = parm->parm.output.timeperframe;
  }
  {
  interval = uvc_fraction_to_interval(timeperframe.numerator, timeperframe.denominator);
  }
  if ((uvc_trace_param & 8U) != 0U) {
    {
    printk("\017uvcvideo: Setting frame interval to %u/%u (%u).\n", timeperframe.numerator,
           timeperframe.denominator, interval);
    }
  } else {
  }
  {
  ldv_mutex_lock_106___0(& stream->mutex);
  tmp = uvc_queue_streaming(& stream->queue);
  }
  if (tmp != 0) {
    {
    ldv_mutex_unlock_107___0(& stream->mutex);
    }
    return (-16);
  } else {
  }
  {
  probe = stream->ctrl;
  probe.dwFrameInterval = uvc_try_frame_interval(stream->cur_frame, interval);
  ret = uvc_probe_video(stream, & probe);
  }
  if (ret < 0) {
    {
    ldv_mutex_unlock_108(& stream->mutex);
    }
    return (ret);
  } else {
  }
  {
  stream->ctrl = probe;
  ldv_mutex_unlock_109___0(& stream->mutex);
  timeperframe.numerator = probe.dwFrameInterval;
  timeperframe.denominator = 10000000U;
  uvc_simplify_fraction(& timeperframe.numerator, & timeperframe.denominator, 8U,
                        333U);
  }
  if (parm->type == 1U) {
    parm->parm.capture.timeperframe = timeperframe;
  } else {
    parm->parm.output.timeperframe = timeperframe;
  }
  return (0);
}
}
static int uvc_acquire_privileges(struct uvc_fh *handle )
{
  int tmp ;
  {
  if ((unsigned int )handle->state == 1U) {
    return (0);
  } else {
  }
  {
  tmp = atomic_add_return(1, & (handle->stream)->active);
  }
  if (tmp != 1) {
    {
    atomic_dec(& (handle->stream)->active);
    }
    return (-16);
  } else {
  }
  handle->state = 1;
  return (0);
}
}
static void uvc_dismiss_privileges(struct uvc_fh *handle )
{
  {
  if ((unsigned int )handle->state == 1U) {
    {
    atomic_dec(& (handle->stream)->active);
    }
  } else {
  }
  handle->state = 0;
  return;
}
}
static int uvc_has_privileges(struct uvc_fh *handle )
{
  {
  return ((unsigned int )handle->state == 1U);
}
}
static int uvc_v4l2_open(struct file *file )
{
  struct uvc_streaming *stream ;
  struct uvc_fh *handle ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  {
  ret = 0;
  if ((uvc_trace_param & 32U) != 0U) {
    {
    printk("\017uvcvideo: uvc_v4l2_open\n");
    }
  } else {
  }
  {
  tmp = video_drvdata(file);
  stream = (struct uvc_streaming *)tmp;
  }
  if ((int )(stream->dev)->state & 1) {
    return (-19);
  } else {
  }
  {
  ret = usb_autopm_get_interface((stream->dev)->intf);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  tmp___0 = kzalloc(200UL, 208U);
  handle = (struct uvc_fh *)tmp___0;
  }
  if ((unsigned long )handle == (unsigned long )((struct uvc_fh *)0)) {
    {
    usb_autopm_put_interface((stream->dev)->intf);
    }
    return (-12);
  } else {
  }
  {
  ldv_mutex_lock_110___0(& (stream->dev)->lock);
  }
  if ((stream->dev)->users == 0U) {
    {
    ret = uvc_status_start(stream->dev, 208U);
    }
    if (ret < 0) {
      {
      ldv_mutex_unlock_111___0(& (stream->dev)->lock);
      usb_autopm_put_interface((stream->dev)->intf);
      kfree((void const *)handle);
      }
      return (ret);
    } else {
    }
  } else {
  }
  {
  (stream->dev)->users = (stream->dev)->users + 1U;
  ldv_mutex_unlock_112(& (stream->dev)->lock);
  v4l2_fh_init(& handle->vfh, stream->vdev);
  v4l2_fh_add(& handle->vfh);
  handle->chain = stream->chain;
  handle->stream = stream;
  handle->state = 0;
  file->private_data = (void *)handle;
  }
  return (0);
}
}
static int uvc_v4l2_release(struct file *file )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int tmp ;
  {
  handle = (struct uvc_fh *)file->private_data;
  stream = handle->stream;
  if ((uvc_trace_param & 32U) != 0U) {
    {
    printk("\017uvcvideo: uvc_v4l2_release\n");
    }
  } else {
  }
  {
  tmp = uvc_has_privileges(handle);
  }
  if (tmp != 0) {
    {
    uvc_queue_release(& stream->queue);
    }
  } else {
  }
  {
  uvc_dismiss_privileges(handle);
  v4l2_fh_del(& handle->vfh);
  v4l2_fh_exit(& handle->vfh);
  kfree((void const *)handle);
  file->private_data = (void *)0;
  ldv_mutex_lock_113(& (stream->dev)->lock);
  (stream->dev)->users = (stream->dev)->users - 1U;
  }
  if ((stream->dev)->users == 0U) {
    {
    uvc_status_stop(stream->dev);
    }
  } else {
  }
  {
  ldv_mutex_unlock_114(& (stream->dev)->lock);
  usb_autopm_put_interface((stream->dev)->intf);
  }
  return (0);
}
}
static int uvc_ioctl_querycap(struct file *file , void *fh , struct v4l2_capability *cap )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct uvc_fh *handle ;
  struct uvc_video_chain *chain ;
  struct uvc_streaming *stream ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  handle = (struct uvc_fh *)file->private_data;
  chain = handle->chain;
  stream = handle->stream;
  strlcpy((char *)(& cap->driver), "uvcvideo", 16UL);
  strlcpy((char *)(& cap->card), (char const *)(& vdev->name), 32UL);
  usb_make_path((stream->dev)->udev, (char *)(& cap->bus_info), 32UL);
  cap->capabilities = chain->caps | 2214592512U;
  }
  if ((unsigned int )stream->type == 1U) {
    cap->device_caps = 67108865U;
  } else {
    cap->device_caps = 67108866U;
  }
  return (0);
}
}
static int uvc_ioctl_enum_fmt(struct uvc_streaming *stream , struct v4l2_fmtdesc *fmt )
{
  struct uvc_format *format ;
  enum v4l2_buf_type type ;
  __u32 index ;
  {
  type = fmt->type;
  index = fmt->index;
  if (fmt->type != (__u32 )stream->type || fmt->index >= stream->nformats) {
    return (-22);
  } else {
  }
  {
  memset((void *)fmt, 0, 64UL);
  fmt->index = index;
  fmt->type = (__u32 )type;
  format = stream->format + (unsigned long )fmt->index;
  fmt->flags = 0U;
  }
  if ((int )format->flags & 1) {
    fmt->flags = fmt->flags | 1U;
  } else {
  }
  {
  strlcpy((char *)(& fmt->description), (char const *)(& format->name), 32UL);
  fmt->description[31UL] = 0U;
  fmt->pixelformat = format->fcc;
  }
  return (0);
}
}
static int uvc_ioctl_enum_fmt_vid_cap(struct file *file , void *fh , struct v4l2_fmtdesc *fmt )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  tmp = uvc_ioctl_enum_fmt(stream, fmt);
  }
  return (tmp);
}
}
static int uvc_ioctl_enum_fmt_vid_out(struct file *file , void *fh , struct v4l2_fmtdesc *fmt )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  tmp = uvc_ioctl_enum_fmt(stream, fmt);
  }
  return (tmp);
}
}
static int uvc_ioctl_g_fmt_vid_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  tmp = uvc_v4l2_get_format(stream, fmt);
  }
  return (tmp);
}
}
static int uvc_ioctl_g_fmt_vid_out(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  tmp = uvc_v4l2_get_format(stream, fmt);
  }
  return (tmp);
}
}
static int uvc_ioctl_s_fmt_vid_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int ret ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  ret = uvc_acquire_privileges(handle);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  tmp = uvc_v4l2_set_format(stream, fmt);
  }
  return (tmp);
}
}
static int uvc_ioctl_s_fmt_vid_out(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int ret ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  ret = uvc_acquire_privileges(handle);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  tmp = uvc_v4l2_set_format(stream, fmt);
  }
  return (tmp);
}
}
static int uvc_ioctl_try_fmt_vid_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  struct uvc_streaming_control probe ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  tmp = uvc_v4l2_try_format(stream, fmt, & probe, (struct uvc_format **)0, (struct uvc_frame **)0);
  }
  return (tmp);
}
}
static int uvc_ioctl_try_fmt_vid_out(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  struct uvc_streaming_control probe ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  tmp = uvc_v4l2_try_format(stream, fmt, & probe, (struct uvc_format **)0, (struct uvc_frame **)0);
  }
  return (tmp);
}
}
static int uvc_ioctl_reqbufs(struct file *file , void *fh , struct v4l2_requestbuffers *rb )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int ret ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  ret = uvc_acquire_privileges(handle);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ldv_mutex_lock_115(& stream->mutex);
  ret = uvc_request_buffers(& stream->queue, rb);
  ldv_mutex_unlock_116(& stream->mutex);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (ret == 0) {
    {
    uvc_dismiss_privileges(handle);
    }
  } else {
  }
  return (0);
}
}
static int uvc_ioctl_querybuf(struct file *file , void *fh , struct v4l2_buffer *buf )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int tmp ;
  int tmp___0 ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  tmp = uvc_has_privileges(handle);
  }
  if (tmp == 0) {
    return (-16);
  } else {
  }
  {
  tmp___0 = uvc_query_buffer(& stream->queue, buf);
  }
  return (tmp___0);
}
}
static int uvc_ioctl_qbuf(struct file *file , void *fh , struct v4l2_buffer *buf )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int tmp ;
  int tmp___0 ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  tmp = uvc_has_privileges(handle);
  }
  if (tmp == 0) {
    return (-16);
  } else {
  }
  {
  tmp___0 = uvc_queue_buffer(& stream->queue, buf);
  }
  return (tmp___0);
}
}
static int uvc_ioctl_dqbuf(struct file *file , void *fh , struct v4l2_buffer *buf )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int tmp ;
  int tmp___0 ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  tmp = uvc_has_privileges(handle);
  }
  if (tmp == 0) {
    return (-16);
  } else {
  }
  {
  tmp___0 = uvc_dequeue_buffer(& stream->queue, buf, (int )file->f_flags & 2048);
  }
  return (tmp___0);
}
}
static int uvc_ioctl_create_bufs(struct file *file , void *fh , struct v4l2_create_buffers *cb )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int ret ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  ret = uvc_acquire_privileges(handle);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  tmp = uvc_create_buffers(& stream->queue, cb);
  }
  return (tmp);
}
}
static int uvc_ioctl_streamon(struct file *file , void *fh , enum v4l2_buf_type type )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int ret ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  tmp = uvc_has_privileges(handle);
  }
  if (tmp == 0) {
    return (-16);
  } else {
  }
  {
  ldv_mutex_lock_117(& stream->mutex);
  ret = uvc_queue_streamon(& stream->queue, type);
  ldv_mutex_unlock_118(& stream->mutex);
  }
  return (ret);
}
}
static int uvc_ioctl_streamoff(struct file *file , void *fh , enum v4l2_buf_type type )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  tmp = uvc_has_privileges(handle);
  }
  if (tmp == 0) {
    return (-16);
  } else {
  }
  {
  ldv_mutex_lock_119(& stream->mutex);
  uvc_queue_streamoff(& stream->queue, type);
  ldv_mutex_unlock_120(& stream->mutex);
  }
  return (0);
}
}
static int uvc_ioctl_enum_input(struct file *file , void *fh , struct v4l2_input *input )
{
  struct uvc_fh *handle ;
  struct uvc_video_chain *chain ;
  struct uvc_entity const *selector ;
  struct uvc_entity *iterm ;
  u32 index ;
  int pin ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  handle = (struct uvc_fh *)fh;
  chain = handle->chain;
  selector = (struct uvc_entity const *)chain->selector;
  iterm = (struct uvc_entity *)0;
  index = input->index;
  pin = 0;
  if ((unsigned long )selector == (unsigned long )((struct uvc_entity const *)0) || ((chain->dev)->quirks & 32U) != 0U) {
    if (index != 0U) {
      return (-22);
    } else {
    }
    __mptr = (struct list_head const *)chain->entities.next;
    iterm = (struct uvc_entity *)__mptr + 0xfffffffffffffff0UL;
    goto ldv_39502;
    ldv_39501: ;
    if (((int )iterm->type & 65280) != 0 && (int )((short )iterm->type) >= 0) {
      goto ldv_39500;
    } else {
    }
    __mptr___0 = (struct list_head const *)iterm->chain.next;
    iterm = (struct uvc_entity *)__mptr___0 + 0xfffffffffffffff0UL;
    ldv_39502: ;
    if ((unsigned long )(& iterm->chain) != (unsigned long )(& chain->entities)) {
      goto ldv_39501;
    } else {
    }
    ldv_39500:
    pin = (int )iterm->id;
  } else
  if (index < (u32 )selector->bNrInPins) {
    pin = (int )*(selector->baSourceID + (unsigned long )index);
    __mptr___1 = (struct list_head const *)chain->entities.next;
    iterm = (struct uvc_entity *)__mptr___1 + 0xfffffffffffffff0UL;
    goto ldv_39510;
    ldv_39509: ;
    if (((int )iterm->type & 65280) == 0 || (int )((short )iterm->type) < 0) {
      goto ldv_39507;
    } else {
    }
    if ((int )iterm->id == pin) {
      goto ldv_39508;
    } else {
    }
    ldv_39507:
    __mptr___2 = (struct list_head const *)iterm->chain.next;
    iterm = (struct uvc_entity *)__mptr___2 + 0xfffffffffffffff0UL;
    ldv_39510: ;
    if ((unsigned long )(& iterm->chain) != (unsigned long )(& chain->entities)) {
      goto ldv_39509;
    } else {
    }
    ldv_39508: ;
  } else {
  }
  if ((unsigned long )iterm == (unsigned long )((struct uvc_entity *)0) || (int )iterm->id != pin) {
    return (-22);
  } else {
  }
  {
  memset((void *)input, 0, 80UL);
  input->index = index;
  strlcpy((char *)(& input->name), (char const *)(& iterm->name), 32UL);
  }
  if (((int )iterm->type & 32767) == 513) {
    input->type = 2U;
  } else {
  }
  return (0);
}
}
static int uvc_ioctl_g_input(struct file *file , void *fh , unsigned int *input )
{
  struct uvc_fh *handle ;
  struct uvc_video_chain *chain ;
  int ret ;
  u8 i ;
  {
  handle = (struct uvc_fh *)fh;
  chain = handle->chain;
  if ((unsigned long )chain->selector == (unsigned long )((struct uvc_entity *)0) || ((chain->dev)->quirks & 32U) != 0U) {
    *input = 0U;
    return (0);
  } else {
  }
  {
  ret = uvc_query_ctrl(chain->dev, 129, (int )(chain->selector)->id, (int )((__u8 )(chain->dev)->intfnum),
                       1, (void *)(& i), 1);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  *input = (unsigned int )((int )i + -1);
  return (0);
}
}
static int uvc_ioctl_s_input(struct file *file , void *fh , unsigned int input )
{
  struct uvc_fh *handle ;
  struct uvc_video_chain *chain ;
  int ret ;
  u32 i ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  chain = handle->chain;
  ret = uvc_acquire_privileges(handle);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if ((unsigned long )chain->selector == (unsigned long )((struct uvc_entity *)0) || ((chain->dev)->quirks & 32U) != 0U) {
    if (input != 0U) {
      return (-22);
    } else {
    }
    return (0);
  } else {
  }
  if (input >= (unsigned int )(chain->selector)->bNrInPins) {
    return (-22);
  } else {
  }
  {
  i = input + 1U;
  tmp = uvc_query_ctrl(chain->dev, 1, (int )(chain->selector)->id, (int )((__u8 )(chain->dev)->intfnum),
                       1, (void *)(& i), 1);
  }
  return (tmp);
}
}
static int uvc_ioctl_queryctrl(struct file *file , void *fh , struct v4l2_queryctrl *qc )
{
  struct uvc_fh *handle ;
  struct uvc_video_chain *chain ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  chain = handle->chain;
  tmp = uvc_query_v4l2_ctrl(chain, qc);
  }
  return (tmp);
}
}
static int uvc_ioctl_g_ctrl(struct file *file , void *fh , struct v4l2_control *ctrl )
{
  struct uvc_fh *handle ;
  struct uvc_video_chain *chain ;
  struct v4l2_ext_control xctrl ;
  int ret ;
  {
  {
  handle = (struct uvc_fh *)fh;
  chain = handle->chain;
  memset((void *)(& xctrl), 0, 20UL);
  xctrl.id = ctrl->id;
  ret = uvc_ctrl_begin(chain);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = uvc_ctrl_get(chain, & xctrl);
  uvc_ctrl_rollback(handle);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  ctrl->value = xctrl.__annonCompField77.value;
  return (0);
}
}
static int uvc_ioctl_s_ctrl(struct file *file , void *fh , struct v4l2_control *ctrl )
{
  struct uvc_fh *handle ;
  struct uvc_video_chain *chain ;
  struct v4l2_ext_control xctrl ;
  int ret ;
  {
  {
  handle = (struct uvc_fh *)fh;
  chain = handle->chain;
  memset((void *)(& xctrl), 0, 20UL);
  xctrl.id = ctrl->id;
  xctrl.__annonCompField77.value = ctrl->value;
  ret = uvc_ctrl_begin(chain);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = uvc_ctrl_set(chain, & xctrl);
  }
  if (ret < 0) {
    {
    uvc_ctrl_rollback(handle);
    }
    return (ret);
  } else {
  }
  {
  ret = uvc_ctrl_commit(handle, (struct v4l2_ext_control const *)(& xctrl), 1U);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  ctrl->value = xctrl.__annonCompField77.value;
  return (0);
}
}
static int uvc_ioctl_g_ext_ctrls(struct file *file , void *fh , struct v4l2_ext_controls *ctrls )
{
  struct uvc_fh *handle ;
  struct uvc_video_chain *chain ;
  struct v4l2_ext_control *ctrl ;
  unsigned int i ;
  int ret ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  chain = handle->chain;
  ctrl = ctrls->controls;
  ret = uvc_ctrl_begin(chain);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  i = 0U;
  goto ldv_39565;
  ldv_39564:
  {
  ret = uvc_ctrl_get(chain, ctrl);
  }
  if (ret < 0) {
    {
    uvc_ctrl_rollback(handle);
    ctrls->error_idx = i;
    }
    return (ret);
  } else {
  }
  ctrl = ctrl + 1;
  i = i + 1U;
  ldv_39565: ;
  if (i < ctrls->count) {
    goto ldv_39564;
  } else {
  }
  {
  ctrls->error_idx = 0U;
  tmp = uvc_ctrl_rollback(handle);
  }
  return (tmp);
}
}
static int uvc_ioctl_s_try_ext_ctrls(struct uvc_fh *handle , struct v4l2_ext_controls *ctrls ,
                                     bool commit )
{
  struct v4l2_ext_control *ctrl ;
  struct uvc_video_chain *chain ;
  unsigned int i ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ctrl = ctrls->controls;
  chain = handle->chain;
  ret = uvc_ctrl_begin(chain);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  i = 0U;
  goto ldv_39577;
  ldv_39576:
  {
  ret = uvc_ctrl_set(chain, ctrl);
  }
  if (ret < 0) {
    {
    uvc_ctrl_rollback(handle);
    ctrls->error_idx = (int )commit ? ctrls->count : i;
    }
    return (ret);
  } else {
  }
  ctrl = ctrl + 1;
  i = i + 1U;
  ldv_39577: ;
  if (i < ctrls->count) {
    goto ldv_39576;
  } else {
  }
  ctrls->error_idx = 0U;
  if ((int )commit) {
    {
    tmp = uvc_ctrl_commit(handle, (struct v4l2_ext_control const *)ctrls->controls,
                          ctrls->count);
    }
    return (tmp);
  } else {
    {
    tmp___0 = uvc_ctrl_rollback(handle);
    }
    return (tmp___0);
  }
}
}
static int uvc_ioctl_s_ext_ctrls(struct file *file , void *fh , struct v4l2_ext_controls *ctrls )
{
  struct uvc_fh *handle ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  tmp = uvc_ioctl_s_try_ext_ctrls(handle, ctrls, 1);
  }
  return (tmp);
}
}
static int uvc_ioctl_try_ext_ctrls(struct file *file , void *fh , struct v4l2_ext_controls *ctrls )
{
  struct uvc_fh *handle ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  tmp = uvc_ioctl_s_try_ext_ctrls(handle, ctrls, 0);
  }
  return (tmp);
}
}
static int uvc_ioctl_querymenu(struct file *file , void *fh , struct v4l2_querymenu *qm )
{
  struct uvc_fh *handle ;
  struct uvc_video_chain *chain ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  chain = handle->chain;
  tmp = uvc_query_v4l2_menu(chain, qm);
  }
  return (tmp);
}
}
static int uvc_ioctl_cropcap(struct file *file , void *fh , struct v4l2_cropcap *ccap )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  if (ccap->type != (__u32 )stream->type) {
    return (-22);
  } else {
  }
  {
  ccap->bounds.left = 0;
  ccap->bounds.top = 0;
  ldv_mutex_lock_121(& stream->mutex);
  ccap->bounds.width = (__u32 )(stream->cur_frame)->wWidth;
  ccap->bounds.height = (__u32 )(stream->cur_frame)->wHeight;
  ldv_mutex_unlock_122(& stream->mutex);
  ccap->defrect = ccap->bounds;
  ccap->pixelaspect.numerator = 1U;
  ccap->pixelaspect.denominator = 1U;
  }
  return (0);
}
}
static int uvc_ioctl_g_parm(struct file *file , void *fh , struct v4l2_streamparm *parm )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  tmp = uvc_v4l2_get_streamparm(stream, parm);
  }
  return (tmp);
}
}
static int uvc_ioctl_s_parm(struct file *file , void *fh , struct v4l2_streamparm *parm )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int ret ;
  int tmp ;
  {
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  ret = uvc_acquire_privileges(handle);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  tmp = uvc_v4l2_set_streamparm(stream, parm);
  }
  return (tmp);
}
}
static int uvc_ioctl_enum_framesizes(struct file *file , void *fh , struct v4l2_frmsizeenum *fsize )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  struct uvc_format *format ;
  struct uvc_frame *frame ;
  int i ;
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  format = (struct uvc_format *)0;
  i = 0;
  goto ldv_39632;
  ldv_39631: ;
  if ((stream->format + (unsigned long )i)->fcc == fsize->pixel_format) {
    format = stream->format + (unsigned long )i;
    goto ldv_39630;
  } else {
  }
  i = i + 1;
  ldv_39632: ;
  if ((unsigned int )i < stream->nformats) {
    goto ldv_39631;
  } else {
  }
  ldv_39630: ;
  if ((unsigned long )format == (unsigned long )((struct uvc_format *)0)) {
    return (-22);
  } else {
  }
  if (fsize->index >= format->nframes) {
    return (-22);
  } else {
  }
  frame = format->frame + (unsigned long )fsize->index;
  fsize->type = 1U;
  fsize->__annonCompField73.discrete.width = (__u32 )frame->wWidth;
  fsize->__annonCompField73.discrete.height = (__u32 )frame->wHeight;
  return (0);
}
}
static int uvc_ioctl_enum_frameintervals(struct file *file , void *fh , struct v4l2_frmivalenum *fival )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  struct uvc_format *format ;
  struct uvc_frame *frame ;
  int i ;
  {
  handle = (struct uvc_fh *)fh;
  stream = handle->stream;
  format = (struct uvc_format *)0;
  frame = (struct uvc_frame *)0;
  i = 0;
  goto ldv_39645;
  ldv_39644: ;
  if ((stream->format + (unsigned long )i)->fcc == fival->pixel_format) {
    format = stream->format + (unsigned long )i;
    goto ldv_39643;
  } else {
  }
  i = i + 1;
  ldv_39645: ;
  if ((unsigned int )i < stream->nformats) {
    goto ldv_39644;
  } else {
  }
  ldv_39643: ;
  if ((unsigned long )format == (unsigned long )((struct uvc_format *)0)) {
    return (-22);
  } else {
  }
  i = 0;
  goto ldv_39648;
  ldv_39647: ;
  if ((__u32 )(format->frame + (unsigned long )i)->wWidth == fival->width && (__u32 )(format->frame + (unsigned long )i)->wHeight == fival->height) {
    frame = format->frame + (unsigned long )i;
    goto ldv_39646;
  } else {
  }
  i = i + 1;
  ldv_39648: ;
  if ((unsigned int )i < format->nframes) {
    goto ldv_39647;
  } else {
  }
  ldv_39646: ;
  if ((unsigned long )frame == (unsigned long )((struct uvc_frame *)0)) {
    return (-22);
  } else {
  }
  if ((unsigned int )frame->bFrameIntervalType != 0U) {
    if (fival->index >= (__u32 )frame->bFrameIntervalType) {
      return (-22);
    } else {
    }
    {
    fival->type = 1U;
    fival->__annonCompField74.discrete.numerator = *(frame->dwFrameInterval + (unsigned long )fival->index);
    fival->__annonCompField74.discrete.denominator = 10000000U;
    uvc_simplify_fraction(& fival->__annonCompField74.discrete.numerator, & fival->__annonCompField74.discrete.denominator,
                          8U, 333U);
    }
  } else {
    {
    fival->type = 3U;
    fival->__annonCompField74.stepwise.min.numerator = *(frame->dwFrameInterval);
    fival->__annonCompField74.stepwise.min.denominator = 10000000U;
    fival->__annonCompField74.stepwise.max.numerator = *(frame->dwFrameInterval + 1UL);
    fival->__annonCompField74.stepwise.max.denominator = 10000000U;
    fival->__annonCompField74.stepwise.step.numerator = *(frame->dwFrameInterval + 2UL);
    fival->__annonCompField74.stepwise.step.denominator = 10000000U;
    uvc_simplify_fraction(& fival->__annonCompField74.stepwise.min.numerator, & fival->__annonCompField74.stepwise.min.denominator,
                          8U, 333U);
    uvc_simplify_fraction(& fival->__annonCompField74.stepwise.max.numerator, & fival->__annonCompField74.stepwise.max.denominator,
                          8U, 333U);
    uvc_simplify_fraction(& fival->__annonCompField74.stepwise.step.numerator, & fival->__annonCompField74.stepwise.step.denominator,
                          8U, 333U);
    }
  }
  return (0);
}
}
static int uvc_ioctl_subscribe_event(struct v4l2_fh *fh , struct v4l2_event_subscription const *sub )
{
  int tmp ;
  {
  {
  if (sub->type == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_3:
  {
  tmp = v4l2_event_subscribe(fh, sub, 0U, & uvc_ctrl_sub_ev_ops);
  }
  return (tmp);
  switch_default: ;
  return (-22);
  switch_break: ;
  }
}
}
static long uvc_ioctl_default(struct file *file , void *fh , bool valid_prio , unsigned int cmd ,
                              void *arg )
{
  struct uvc_fh *handle ;
  struct uvc_video_chain *chain ;
  int tmp ;
  int tmp___0 ;
  {
  handle = (struct uvc_fh *)fh;
  chain = handle->chain;
  {
  if (cmd == 3227546912U) {
    goto case_3227546912;
  } else {
  }
  if (cmd == 3222304033U) {
    goto case_3222304033;
  } else {
  }
  goto switch_default;
  case_3227546912:
  {
  tmp = uvc_ioctl_ctrl_map(chain, (struct uvc_xu_control_mapping *)arg);
  }
  return ((long )tmp);
  case_3222304033:
  {
  tmp___0 = uvc_xu_ctrl_query(chain, (struct uvc_xu_control_query *)arg);
  }
  return ((long )tmp___0);
  switch_default: ;
  return (-25L);
  switch_break: ;
  }
}
}
static int uvc_v4l2_get_xu_mapping(struct uvc_xu_control_mapping *kp , struct uvc_xu_control_mapping32 const *up___0 )
{
  struct uvc_menu_info *umenus ;
  struct uvc_menu_info *kmenus ;
  compat_caddr_t p ;
  struct thread_info *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int __gu_err ;
  unsigned long __gu_val ;
  int tmp___4 ;
  int __gu_err___0 ;
  unsigned long __gu_val___0 ;
  int tmp___5 ;
  void *tmp___6 ;
  struct thread_info *tmp___7 ;
  bool tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  void *tmp___11 ;
  unsigned long tmp___12 ;
  {
  {
  tmp = current_thread_info();
  tmp___0 = __chk_range_not_ok((unsigned long )up___0, 88UL, tmp->addr_limit.seg);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  {
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  }
  if (tmp___2 == 0L) {
    return (-14);
  } else {
    {
    tmp___3 = __copy_from_user((void *)kp, (void const *)up___0, 64U);
    }
    if (tmp___3 != 0) {
      return (-14);
    } else {
      __gu_err = 0;
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
      __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                           "=q" (__gu_val): "m" (*((struct __large_struct *)(& up___0->menu_count))),
                           "i" (-14), "0" (__gu_err));
      goto ldv_39690;
      case_2:
      __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                           "=r" (__gu_val): "m" (*((struct __large_struct *)(& up___0->menu_count))),
                           "i" (-14), "0" (__gu_err));
      goto ldv_39690;
      case_4:
      __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                           "=r" (__gu_val): "m" (*((struct __large_struct *)(& up___0->menu_count))),
                           "i" (-14), "0" (__gu_err));
      goto ldv_39690;
      case_8:
      __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                           "=r" (__gu_val): "m" (*((struct __large_struct *)(& up___0->menu_count))),
                           "i" (-14), "0" (__gu_err));
      goto ldv_39690;
      switch_default:
      {
      tmp___4 = __get_user_bad();
      __gu_val = (unsigned long )tmp___4;
      }
      switch_break: ;
      }
      ldv_39690:
      kp->menu_count = (unsigned int )__gu_val;
      if (__gu_err != 0) {
        return (-14);
      } else {
      }
    }
  }
  {
  memset((void *)(& kp->reserved), 0, 16UL);
  }
  if (kp->menu_count == 0U) {
    kp->menu_info = (struct uvc_menu_info *)0;
    return (0);
  } else {
  }
  __gu_err___0 = 0;
  {
  if (4UL == 1UL) {
    goto case_1___0;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___0;
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
  case_1___0:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err___0),
                       "=q" (__gu_val___0): "m" (*((struct __large_struct *)(& up___0->menu_info))),
                       "i" (-14), "0" (__gu_err___0));
  goto ldv_39699;
  case_2___0:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err___0),
                       "=r" (__gu_val___0): "m" (*((struct __large_struct *)(& up___0->menu_info))),
                       "i" (-14), "0" (__gu_err___0));
  goto ldv_39699;
  case_4___0:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err___0),
                       "=r" (__gu_val___0): "m" (*((struct __large_struct *)(& up___0->menu_info))),
                       "i" (-14), "0" (__gu_err___0));
  goto ldv_39699;
  case_8___0:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err___0),
                       "=r" (__gu_val___0): "m" (*((struct __large_struct *)(& up___0->menu_info))),
                       "i" (-14), "0" (__gu_err___0));
  goto ldv_39699;
  switch_default___0:
  {
  tmp___5 = __get_user_bad();
  __gu_val___0 = (unsigned long )tmp___5;
  }
  switch_break___0: ;
  }
  ldv_39699:
  p = (unsigned int )__gu_val___0;
  if (__gu_err___0 != 0) {
    return (-14);
  } else {
  }
  {
  tmp___6 = compat_ptr(p);
  umenus = (struct uvc_menu_info *)tmp___6;
  tmp___7 = current_thread_info();
  tmp___8 = __chk_range_not_ok((unsigned long )umenus, (unsigned long )kp->menu_count * 36UL,
                               tmp___7->addr_limit.seg);
  }
  if (tmp___8) {
    tmp___9 = 0;
  } else {
    tmp___9 = 1;
  }
  {
  tmp___10 = ldv__builtin_expect((long )tmp___9, 1L);
  }
  if (tmp___10 == 0L) {
    return (-14);
  } else {
  }
  {
  tmp___11 = compat_alloc_user_space((unsigned long )kp->menu_count * 36UL);
  kmenus = (struct uvc_menu_info *)tmp___11;
  }
  if ((unsigned long )kmenus == (unsigned long )((struct uvc_menu_info *)0)) {
    return (-14);
  } else {
  }
  {
  kp->menu_info = kmenus;
  tmp___12 = copy_in_user((void *)kmenus, (void const *)umenus, kp->menu_count * 36U);
  }
  if (tmp___12 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int uvc_v4l2_put_xu_mapping(struct uvc_xu_control_mapping const *kp , struct uvc_xu_control_mapping32 *up___0 )
{
  struct uvc_menu_info *umenus ;
  struct uvc_menu_info *kmenus ;
  compat_caddr_t p ;
  struct thread_info *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int __pu_err ;
  unsigned long tmp___4 ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  void *tmp___5 ;
  unsigned long tmp___6 ;
  {
  {
  kmenus = kp->menu_info;
  tmp = current_thread_info();
  tmp___0 = __chk_range_not_ok((unsigned long )up___0, 88UL, tmp->addr_limit.seg);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  {
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  }
  if (tmp___2 == 0L) {
    return (-14);
  } else {
    {
    tmp___3 = __copy_to_user((void *)up___0, (void const *)kp, 64U);
    }
    if (tmp___3 != 0) {
      return (-14);
    } else {
      __pu_err = 0;
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
      __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "iq" (kp->menu_count),
                           "m" (*((struct __large_struct *)(& up___0->menu_count))),
                           "i" (-14), "0" (__pu_err));
      goto ldv_39716;
      case_2:
      __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" (kp->menu_count),
                           "m" (*((struct __large_struct *)(& up___0->menu_count))),
                           "i" (-14), "0" (__pu_err));
      goto ldv_39716;
      case_4:
      __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" (kp->menu_count),
                           "m" (*((struct __large_struct *)(& up___0->menu_count))),
                           "i" (-14), "0" (__pu_err));
      goto ldv_39716;
      case_8:
      __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "er" (kp->menu_count),
                           "m" (*((struct __large_struct *)(& up___0->menu_count))),
                           "i" (-14), "0" (__pu_err));
      goto ldv_39716;
      switch_default:
      {
      __put_user_bad();
      }
      switch_break: ;
      }
      ldv_39716: ;
      if (__pu_err != 0) {
        return (-14);
      } else {
      }
    }
  }
  {
  tmp___4 = __clear_user((void *)(& up___0->reserved), 16UL);
  }
  if (tmp___4 != 0UL) {
    return (-14);
  } else {
  }
  if ((unsigned int )kp->menu_count == 0U) {
    return (0);
  } else {
  }
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" (& up___0->menu_info),
                       "i" (4UL));
  p = (unsigned int )__val_gu;
  }
  if (__ret_gu != 0) {
    return (-14);
  } else {
  }
  {
  tmp___5 = compat_ptr(p);
  umenus = (struct uvc_menu_info *)tmp___5;
  tmp___6 = copy_in_user((void *)umenus, (void const *)kmenus, (unsigned int )kp->menu_count * 36U);
  }
  if (tmp___6 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int uvc_v4l2_get_xu_query(struct uvc_xu_control_query *kp , struct uvc_xu_control_query32 const *up___0 )
{
  u8 *udata ;
  u8 *kdata ;
  compat_caddr_t p ;
  struct thread_info *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int __gu_err ;
  unsigned long __gu_val ;
  int tmp___4 ;
  void *tmp___5 ;
  struct thread_info *tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  void *tmp___10 ;
  unsigned long tmp___11 ;
  {
  {
  tmp = current_thread_info();
  tmp___0 = __chk_range_not_ok((unsigned long )up___0, 12UL, tmp->addr_limit.seg);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  {
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  }
  if (tmp___2 == 0L) {
    return (-14);
  } else {
    {
    tmp___3 = __copy_from_user((void *)kp, (void const *)up___0, 8U);
    }
    if (tmp___3 != 0) {
      return (-14);
    } else {
    }
  }
  if ((unsigned int )kp->size == 0U) {
    kp->data = (__u8 *)0U;
    return (0);
  } else {
  }
  __gu_err = 0;
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
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=q" (__gu_val): "m" (*((struct __large_struct *)(& up___0->data))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_39742;
  case_2:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)(& up___0->data))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_39742;
  case_4:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)(& up___0->data))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_39742;
  case_8:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)(& up___0->data))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_39742;
  switch_default:
  {
  tmp___4 = __get_user_bad();
  __gu_val = (unsigned long )tmp___4;
  }
  switch_break: ;
  }
  ldv_39742:
  p = (unsigned int )__gu_val;
  if (__gu_err != 0) {
    return (-14);
  } else {
  }
  {
  tmp___5 = compat_ptr(p);
  udata = (u8 *)tmp___5;
  tmp___6 = current_thread_info();
  tmp___7 = __chk_range_not_ok((unsigned long )udata, (unsigned long )kp->size, tmp___6->addr_limit.seg);
  }
  if (tmp___7) {
    tmp___8 = 0;
  } else {
    tmp___8 = 1;
  }
  {
  tmp___9 = ldv__builtin_expect((long )tmp___8, 1L);
  }
  if (tmp___9 == 0L) {
    return (-14);
  } else {
  }
  {
  tmp___10 = compat_alloc_user_space((unsigned long )kp->size);
  kdata = (u8 *)tmp___10;
  }
  if ((unsigned long )kdata == (unsigned long )((u8 *)0U)) {
    return (-14);
  } else {
  }
  {
  kp->data = kdata;
  tmp___11 = copy_in_user((void *)kdata, (void const *)udata, (unsigned int )kp->size);
  }
  if (tmp___11 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int uvc_v4l2_put_xu_query(struct uvc_xu_control_query const *kp , struct uvc_xu_control_query32 *up___0 )
{
  u8 *udata ;
  u8 *kdata ;
  compat_caddr_t p ;
  struct thread_info *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  void *tmp___4 ;
  struct thread_info *tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  long tmp___8 ;
  unsigned long tmp___9 ;
  {
  {
  kdata = (u8 *)kp->data;
  tmp = current_thread_info();
  tmp___0 = __chk_range_not_ok((unsigned long )up___0, 12UL, tmp->addr_limit.seg);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  {
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  }
  if (tmp___2 == 0L) {
    return (-14);
  } else {
    {
    tmp___3 = __copy_to_user((void *)up___0, (void const *)kp, 8U);
    }
    if (tmp___3 != 0) {
      return (-14);
    } else {
    }
  }
  if ((unsigned int )((unsigned short )kp->size) == 0U) {
    return (0);
  } else {
  }
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" (& up___0->data),
                       "i" (4UL));
  p = (unsigned int )__val_gu;
  }
  if (__ret_gu != 0) {
    return (-14);
  } else {
  }
  {
  tmp___4 = compat_ptr(p);
  udata = (u8 *)tmp___4;
  tmp___5 = current_thread_info();
  tmp___6 = __chk_range_not_ok((unsigned long )udata, (unsigned long )kp->size, tmp___5->addr_limit.seg);
  }
  if (tmp___6) {
    tmp___7 = 0;
  } else {
    tmp___7 = 1;
  }
  {
  tmp___8 = ldv__builtin_expect((long )tmp___7, 1L);
  }
  if (tmp___8 == 0L) {
    return (-14);
  } else {
  }
  {
  tmp___9 = copy_in_user((void *)udata, (void const *)kdata, (unsigned int )kp->size);
  }
  if (tmp___9 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static long uvc_v4l2_compat_ioctl32(struct file *file , unsigned int cmd , unsigned long arg )
{
  union __anonunion_karg_294 karg ;
  void *up___0 ;
  void *tmp ;
  mm_segment_t old_fs ;
  long ret ;
  int tmp___0 ;
  int tmp___1 ;
  struct thread_info *tmp___2 ;
  struct thread_info *tmp___3 ;
  mm_segment_t __constr_expr_0 ;
  struct thread_info *tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  {
  tmp = compat_ptr((compat_uptr_t )arg);
  up___0 = tmp;
  }
  {
  if (cmd == 3227022624U) {
    goto case_3227022624;
  } else {
  }
  if (cmd == 3222041889U) {
    goto case_3222041889;
  } else {
  }
  goto switch_default;
  case_3227022624:
  {
  cmd = 3227546912U;
  tmp___0 = uvc_v4l2_get_xu_mapping(& karg.xmap, (struct uvc_xu_control_mapping32 const *)up___0);
  ret = (long )tmp___0;
  }
  goto ldv_39774;
  case_3222041889:
  {
  cmd = 3222304033U;
  tmp___1 = uvc_v4l2_get_xu_query(& karg.xqry, (struct uvc_xu_control_query32 const *)up___0);
  ret = (long )tmp___1;
  }
  goto ldv_39774;
  switch_default: ;
  return (-515L);
  switch_break: ;
  }
  ldv_39774:
  {
  tmp___2 = current_thread_info();
  old_fs = tmp___2->addr_limit;
  tmp___3 = current_thread_info();
  __constr_expr_0.seg = 0xffffffffffffffffUL;
  tmp___3->addr_limit = __constr_expr_0;
  ret = video_ioctl2(file, cmd, (unsigned long )(& karg));
  tmp___4 = current_thread_info();
  tmp___4->addr_limit = old_fs;
  }
  if (ret < 0L) {
    return (ret);
  } else {
  }
  {
  if (cmd == 3227546912U) {
    goto case_3227546912;
  } else {
  }
  if (cmd == 3222304033U) {
    goto case_3222304033;
  } else {
  }
  goto switch_break___0;
  case_3227546912:
  {
  tmp___5 = uvc_v4l2_put_xu_mapping((struct uvc_xu_control_mapping const *)(& karg.xmap),
                                    (struct uvc_xu_control_mapping32 *)up___0);
  ret = (long )tmp___5;
  }
  goto ldv_39779;
  case_3222304033:
  {
  tmp___6 = uvc_v4l2_put_xu_query((struct uvc_xu_control_query const *)(& karg.xqry),
                                  (struct uvc_xu_control_query32 *)up___0);
  ret = (long )tmp___6;
  }
  goto ldv_39779;
  switch_break___0: ;
  }
  ldv_39779: ;
  return (ret);
}
}
static ssize_t uvc_v4l2_read(struct file *file , char *data , size_t count , loff_t *ppos )
{
  {
  if ((uvc_trace_param & 32U) != 0U) {
    {
    printk("\017uvcvideo: uvc_v4l2_read: not implemented.\n");
    }
  } else {
  }
  return (-22L);
}
}
static int uvc_v4l2_mmap(struct file *file , struct vm_area_struct *vma )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  int tmp ;
  {
  handle = (struct uvc_fh *)file->private_data;
  stream = handle->stream;
  if ((uvc_trace_param & 32U) != 0U) {
    {
    printk("\017uvcvideo: uvc_v4l2_mmap\n");
    }
  } else {
  }
  {
  tmp = uvc_queue_mmap(& stream->queue, vma);
  }
  return (tmp);
}
}
static unsigned int uvc_v4l2_poll(struct file *file , poll_table *wait )
{
  struct uvc_fh *handle ;
  struct uvc_streaming *stream ;
  unsigned int tmp ;
  {
  handle = (struct uvc_fh *)file->private_data;
  stream = handle->stream;
  if ((uvc_trace_param & 32U) != 0U) {
    {
    printk("\017uvcvideo: uvc_v4l2_poll\n");
    }
  } else {
  }
  {
  tmp = uvc_queue_poll(& stream->queue, file, wait);
  }
  return (tmp);
}
}
struct v4l2_ioctl_ops const uvc_ioctl_ops =
     {& uvc_ioctl_querycap, 0, 0, & uvc_ioctl_enum_fmt_vid_cap, 0, & uvc_ioctl_enum_fmt_vid_out,
    0, 0, 0, & uvc_ioctl_g_fmt_vid_cap, 0, & uvc_ioctl_g_fmt_vid_out, 0, 0, 0, 0,
    0, 0, 0, 0, & uvc_ioctl_s_fmt_vid_cap, 0, & uvc_ioctl_s_fmt_vid_out, 0, 0, 0,
    0, 0, 0, 0, 0, & uvc_ioctl_try_fmt_vid_cap, 0, & uvc_ioctl_try_fmt_vid_out, 0,
    0, 0, 0, 0, 0, 0, 0, & uvc_ioctl_reqbufs, & uvc_ioctl_querybuf, & uvc_ioctl_qbuf,
    0, & uvc_ioctl_dqbuf, & uvc_ioctl_create_bufs, 0, 0, 0, 0, & uvc_ioctl_streamon,
    & uvc_ioctl_streamoff, 0, 0, 0, & uvc_ioctl_enum_input, & uvc_ioctl_g_input, & uvc_ioctl_s_input,
    0, 0, 0, & uvc_ioctl_queryctrl, 0, & uvc_ioctl_g_ctrl, & uvc_ioctl_s_ctrl, & uvc_ioctl_g_ext_ctrls,
    & uvc_ioctl_s_ext_ctrls, & uvc_ioctl_try_ext_ctrls, & uvc_ioctl_querymenu, 0,
    0, 0, 0, 0, 0, 0, 0, & uvc_ioctl_cropcap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & uvc_ioctl_g_parm,
    & uvc_ioctl_s_parm, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & uvc_ioctl_enum_framesizes,
    & uvc_ioctl_enum_frameintervals, 0, 0, 0, 0, 0, 0, 0, & uvc_ioctl_subscribe_event,
    & v4l2_event_unsubscribe, & uvc_ioctl_default};
struct v4l2_file_operations const uvc_fops =
     {& __this_module, & uvc_v4l2_read, 0, & uvc_v4l2_poll, 0, & video_ioctl2, & uvc_v4l2_compat_ioctl32,
    0, & uvc_v4l2_mmap, & uvc_v4l2_open, & uvc_v4l2_release};
void ldv_io_instance_callback_9_19(long long (*arg0)(struct file * , long long ,
                                                     int ) , struct file *arg1 ,
                                   long long arg2 , int arg3 ) ;
void ldv_io_instance_callback_9_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_io_instance_callback_9_23(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_9_24(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_9_27(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_9_4(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                  struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
int ldv_io_instance_probe_9_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_9_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
struct ldv_thread ldv_thread_9 ;
void ldv_dummy_resourceless_instance_callback_4_11(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 )
{
  {
  {
  uvc_ioctl_dqbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_14(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_fmtdesc * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_fmtdesc *arg3 )
{
  {
  {
  uvc_ioctl_enum_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_15(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_fmtdesc * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_fmtdesc *arg3 )
{
  {
  {
  uvc_ioctl_enum_fmt_vid_out(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_16(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_frmivalenum * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_frmivalenum *arg3 )
{
  {
  {
  uvc_ioctl_enum_frameintervals(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_17(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_frmsizeenum * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_frmsizeenum *arg3 )
{
  {
  {
  uvc_ioctl_enum_framesizes(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_18(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_input * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_input *arg3 )
{
  {
  {
  uvc_ioctl_enum_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_19(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_control * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_control *arg3 )
{
  {
  {
  uvc_ioctl_g_ctrl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_20(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_ext_controls * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_ext_controls *arg3 )
{
  {
  {
  uvc_ioctl_g_ext_ctrls(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_21(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  uvc_ioctl_g_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_22(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  uvc_ioctl_g_fmt_vid_out(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_23(int (*arg0)(struct file * , void * ,
                                                               unsigned int * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   unsigned int *arg3 )
{
  {
  {
  uvc_ioctl_g_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_26(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_streamparm * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_streamparm *arg3 )
{
  {
  {
  uvc_ioctl_g_parm(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_27(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 )
{
  {
  {
  uvc_ioctl_qbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_create_buffers * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_create_buffers *arg3 )
{
  {
  {
  uvc_ioctl_create_bufs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_30(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 )
{
  {
  {
  uvc_ioctl_querybuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_33(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_capability * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_capability *arg3 )
{
  {
  {
  uvc_ioctl_querycap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_34(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_queryctrl * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_queryctrl *arg3 )
{
  {
  {
  uvc_ioctl_queryctrl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_35(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_querymenu * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_querymenu *arg3 )
{
  {
  {
  uvc_ioctl_querymenu(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_36(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_requestbuffers * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_requestbuffers *arg3 )
{
  {
  {
  uvc_ioctl_reqbufs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_37(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_control * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_control *arg3 )
{
  {
  {
  uvc_ioctl_s_ctrl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_38(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_ext_controls * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_ext_controls *arg3 )
{
  {
  {
  uvc_ioctl_s_ext_ctrls(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_39(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  uvc_ioctl_s_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_40(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  uvc_ioctl_s_fmt_vid_out(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_41(int (*arg0)(struct file * , void * ,
                                                               unsigned int ) , struct file *arg1 ,
                                                   void *arg2 , unsigned int arg3 )
{
  {
  {
  uvc_ioctl_s_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_44(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_streamparm * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_streamparm *arg3 )
{
  {
  {
  uvc_ioctl_s_parm(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_45(int (*arg0)(struct file * , void * ,
                                                               enum v4l2_buf_type ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   enum v4l2_buf_type arg3 )
{
  {
  {
  uvc_ioctl_streamoff(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_46(int (*arg0)(struct file * , void * ,
                                                               enum v4l2_buf_type ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   enum v4l2_buf_type arg3 )
{
  {
  {
  uvc_ioctl_streamon(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_47(int (*arg0)(struct v4l2_fh * ,
                                                               struct v4l2_event_subscription * ) ,
                                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  uvc_ioctl_subscribe_event(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_48(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_ext_controls * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_ext_controls *arg3 )
{
  {
  {
  uvc_ioctl_try_ext_ctrls(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_49(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  uvc_ioctl_try_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_50(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  uvc_ioctl_try_fmt_vid_out(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_51(int (*arg0)(struct v4l2_fh * ,
                                                               struct v4l2_event_subscription * ) ,
                                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_event_unsubscribe(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_7(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_cropcap * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_cropcap *arg3 )
{
  {
  {
  uvc_ioctl_cropcap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_8(long (*arg0)(struct file * , void * ,
                                                               _Bool , unsigned int ,
                                                               void * ) , struct file *arg1 ,
                                                  void *arg2 , _Bool arg3 , unsigned int arg4 ,
                                                  void *arg5 )
{
  {
  {
  uvc_ioctl_default(arg1, arg2, (int )arg3, arg4, arg5);
  }
  return;
}
}
void ldv_io_instance_callback_9_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  uvc_v4l2_mmap(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_9_23(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  uvc_v4l2_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_9_24(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  uvc_v4l2_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_9_27(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_9_4(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                  struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  uvc_v4l2_compat_ioctl32(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_io_instance_probe_9_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = uvc_v4l2_open(arg1);
  }
  return (tmp);
}
}
void ldv_io_instance_release_9_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  uvc_v4l2_release(arg1);
  }
  return;
}
}
void ldv_v4l2_file_operations_io_instance_9(void *arg0 )
{
  long (*ldv_9_callback_compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
  long long (*ldv_9_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_9_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_9_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_9_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_9_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct v4l2_file_operations *ldv_9_container_v4l2_file_operations ;
  long long ldv_9_ldv_param_19_1_default ;
  int ldv_9_ldv_param_19_2_default ;
  char *ldv_9_ldv_param_24_1_default ;
  unsigned long ldv_9_ldv_param_24_2_default ;
  long long *ldv_9_ldv_param_24_3_default ;
  unsigned int ldv_9_ldv_param_27_1_default ;
  unsigned long ldv_9_ldv_param_27_2_default ;
  unsigned int ldv_9_ldv_param_4_1_default ;
  unsigned long ldv_9_ldv_param_4_2_default ;
  struct file *ldv_9_resource_file ;
  struct poll_table_struct *ldv_9_resource_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_9_resource_struct_vm_area_struct_ptr ;
  int ldv_9_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  {
  {
  ldv_9_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_9_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(16UL);
  ldv_9_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___0;
  tmp___1 = ldv_xmalloc(184UL);
  ldv_9_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___1;
  }
  goto ldv_main_9;
  return;
  ldv_main_9:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_9_ret_default = ldv_io_instance_probe_9_11(ldv_9_container_v4l2_file_operations->open,
                                                   ldv_9_resource_file);
    ldv_9_ret_default = ldv_filter_err_code(ldv_9_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_9_ret_default == 0);
      }
      goto ldv_call_9;
    } else {
      {
      ldv_assume(ldv_9_ret_default != 0);
      }
      goto ldv_main_9;
    }
  } else {
    {
    ldv_free((void *)ldv_9_resource_file);
    ldv_free((void *)ldv_9_resource_struct_poll_table_struct_ptr);
    ldv_free((void *)ldv_9_resource_struct_vm_area_struct_ptr);
    }
    return;
  }
  return;
  ldv_call_9:
  {
  tmp___7 = ldv_undef_int();
  }
  if (tmp___7 != 0) {
    {
    ldv_io_instance_release_9_2(ldv_9_container_v4l2_file_operations->release, ldv_9_resource_file);
    }
    goto ldv_main_9;
  } else {
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
    goto switch_default;
    case_1:
    {
    ldv_io_instance_callback_9_27(ldv_9_callback_unlocked_ioctl, ldv_9_resource_file,
                                  ldv_9_ldv_param_27_1_default, ldv_9_ldv_param_27_2_default);
    }
    goto ldv_40537;
    case_2:
    {
    tmp___5 = ldv_xmalloc(1UL);
    ldv_9_ldv_param_24_1_default = (char *)tmp___5;
    tmp___6 = ldv_xmalloc(8UL);
    ldv_9_ldv_param_24_3_default = (long long *)tmp___6;
    ldv_io_instance_callback_9_24(ldv_9_callback_read, ldv_9_resource_file, ldv_9_ldv_param_24_1_default,
                                  ldv_9_ldv_param_24_2_default, ldv_9_ldv_param_24_3_default);
    ldv_free((void *)ldv_9_ldv_param_24_1_default);
    ldv_free((void *)ldv_9_ldv_param_24_3_default);
    }
    goto ldv_40537;
    case_3:
    {
    ldv_io_instance_callback_9_23(ldv_9_callback_poll, ldv_9_resource_file, ldv_9_resource_struct_poll_table_struct_ptr);
    }
    goto ldv_40537;
    case_4:
    {
    ldv_io_instance_callback_9_22(ldv_9_callback_mmap, ldv_9_resource_file, ldv_9_resource_struct_vm_area_struct_ptr);
    }
    goto ldv_40537;
    case_5:
    {
    ldv_io_instance_callback_9_19(ldv_9_callback_llseek, ldv_9_resource_file, ldv_9_ldv_param_19_1_default,
                                  ldv_9_ldv_param_19_2_default);
    }
    goto ldv_40537;
    case_6:
    {
    ldv_io_instance_callback_9_4(ldv_9_callback_compat_ioctl32, ldv_9_resource_file,
                                 ldv_9_ldv_param_4_1_default, ldv_9_ldv_param_4_2_default);
    }
    goto ldv_40537;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_40537: ;
  }
  goto ldv_call_9;
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
static void ldv_mutex_lock_98___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_99___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_100___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_101___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_102___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_103___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_104___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_105___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_106___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_107___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_109___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_110___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_lock_of_uvc_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_111___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_lock_of_uvc_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_112(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_lock_of_uvc_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_113(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_lock_of_uvc_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_lock_of_uvc_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_115(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_116(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_117(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_118(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_119(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_120(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_121(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_122(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_streaming(ldv_func_arg1);
  }
  return;
}
}
void *ldv_linux_usb_coherent_usb_alloc_coherent(void) ;
struct urb *ldv_linux_usb_urb_usb_alloc_urb(void) ;
long ldv_is_err(void const *ptr ) ;
void ldv_linux_usb_coherent_usb_free_coherent(void *addr ) ;
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
extern int scnprintf(char * , size_t , char const * , ...) ;
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
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_98___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100___0(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_uvc_clock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_uvc_clock(void) ;
void ldv_linux_usb_urb_usb_free_urb(struct urb *urb ) ;
__inline static void ldv_spin_unlock_irqrestore_97___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
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
extern void ktime_get_ts64(struct timespec * ) ;
extern void getnstimeofday64(struct timespec * ) ;
__inline static void ktime_get_ts(struct timespec *ts )
{
  {
  {
  ktime_get_ts64(ts);
  }
  return;
}
}
__inline static void ktime_get_real_ts(struct timespec *ts )
{
  {
  {
  getnstimeofday64(ts);
  }
  return;
}
}
__inline static int usb_endpoint_maxp(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->wMaxPacketSize);
}
}
extern int usb_get_current_frame_number(struct usb_device * ) ;
__inline static void usb_fill_bulk_urb(struct urb *urb , struct usb_device *dev ,
                                       unsigned int pipe , void *transfer_buffer ,
                                       int buffer_length , void (*complete_fn)(struct urb * ) ,
                                       void *context )
{
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  return;
}
}
static struct urb *ldv_usb_alloc_urb_106(int ldv_func_arg1 , gfp_t flags ) ;
static struct urb *ldv_usb_alloc_urb_107(int ldv_func_arg1 , gfp_t flags ) ;
static void ldv_usb_free_urb_105(struct urb *urb ) ;
static int ldv_usb_submit_urb_102(struct urb *ldv_func_arg1 , gfp_t flags ) ;
static int ldv_usb_submit_urb_108(struct urb *ldv_func_arg1 , gfp_t flags ) ;
extern void usb_kill_urb(struct urb * ) ;
void *ldv_malloc(size_t size ) ;
static void *ldv_usb_alloc_coherent_104(struct usb_device *ldv_func_arg1 , size_t ldv_func_arg2 ,
                                        gfp_t flags , dma_addr_t *ldv_func_arg4 ) ;
static void ldv_usb_free_coherent_103(struct usb_device *dev , size_t size , void *addr ,
                                      dma_addr_t dma ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
extern int usb_clear_halt(struct usb_device * , int ) ;
extern int usb_set_interface(struct usb_device * , int , int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void put_unaligned_le32(u32 val , void *p )
{
  {
  *((__le32 *)p) = val;
  return;
}
}
void uvc_video_decode_isight(struct urb *urb , struct uvc_streaming *stream , struct uvc_buffer *buf ) ;
size_t uvc_video_stats_dump(struct uvc_streaming *stream , char *buf , size_t size ) ;
static int __uvc_query_ctrl(struct uvc_device *dev , __u8 query , __u8 unit , __u8 intfnum ,
                            __u8 cs , void *data , __u16 size , int timeout )
{
  __u8 type ;
  unsigned int pipe ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  type = 33U;
  if ((int )((signed char )query) < 0) {
    {
    tmp = __create_pipe(dev->udev, 0U);
    pipe = tmp | 2147483776U;
    }
  } else {
    {
    tmp___0 = __create_pipe(dev->udev, 0U);
    pipe = tmp___0 | 2147483648U;
    }
  }
  {
  type = (__u8 )((int )((signed char )type) | ((int )((signed char )query) & -128));
  tmp___1 = usb_control_msg(dev->udev, pipe, (int )query, (int )type, (int )((__u16 )cs) << 8U,
                            (int )((__u16 )((int )((short )((int )unit << 8)) | (int )((short )intfnum))),
                            data, (int )size, timeout);
  }
  return (tmp___1);
}
}
static char const *uvc_query_name(__u8 query )
{
  {
  {
  if ((int )query == 1) {
    goto case_1;
  } else {
  }
  if ((int )query == 129) {
    goto case_129;
  } else {
  }
  if ((int )query == 130) {
    goto case_130;
  } else {
  }
  if ((int )query == 131) {
    goto case_131;
  } else {
  }
  if ((int )query == 132) {
    goto case_132;
  } else {
  }
  if ((int )query == 133) {
    goto case_133;
  } else {
  }
  if ((int )query == 134) {
    goto case_134;
  } else {
  }
  if ((int )query == 135) {
    goto case_135;
  } else {
  }
  goto switch_default;
  case_1: ;
  return ("SET_CUR");
  case_129: ;
  return ("GET_CUR");
  case_130: ;
  return ("GET_MIN");
  case_131: ;
  return ("GET_MAX");
  case_132: ;
  return ("GET_RES");
  case_133: ;
  return ("GET_LEN");
  case_134: ;
  return ("GET_INFO");
  case_135: ;
  return ("GET_DEF");
  switch_default: ;
  return ("<invalid>");
  switch_break: ;
  }
}
}
int uvc_query_ctrl(struct uvc_device *dev , __u8 query , __u8 unit , __u8 intfnum ,
                   __u8 cs , void *data , __u16 size )
{
  int ret ;
  char const *tmp ;
  {
  {
  ret = __uvc_query_ctrl(dev, (int )query, (int )unit, (int )intfnum, (int )cs, data,
                         (int )size, 300);
  }
  if (ret != (int )size) {
    {
    tmp = uvc_query_name((int )query);
    printk("\vuvcvideo: Failed to query (%s) UVC control %u on unit %u: %d (exp. %u).\n",
           tmp, (int )cs, (int )unit, ret, (int )size);
    }
    return (-5);
  } else {
  }
  return (0);
}
}
static void uvc_fixup_video_ctrl(struct uvc_streaming *stream , struct uvc_streaming_control *ctrl )
{
  struct uvc_format *format ;
  struct uvc_frame *frame ;
  unsigned int i ;
  u32 interval ;
  u32 bandwidth ;
  u32 __max1 ;
  u32 __max2 ;
  {
  format = (struct uvc_format *)0;
  frame = (struct uvc_frame *)0;
  i = 0U;
  goto ldv_37051;
  ldv_37050: ;
  if ((int )(stream->format + (unsigned long )i)->index == (int )ctrl->bFormatIndex) {
    format = stream->format + (unsigned long )i;
    goto ldv_37049;
  } else {
  }
  i = i + 1U;
  ldv_37051: ;
  if (i < stream->nformats) {
    goto ldv_37050;
  } else {
  }
  ldv_37049: ;
  if ((unsigned long )format == (unsigned long )((struct uvc_format *)0)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_37054;
  ldv_37053: ;
  if ((int )(format->frame + (unsigned long )i)->bFrameIndex == (int )ctrl->bFrameIndex) {
    frame = format->frame + (unsigned long )i;
    goto ldv_37052;
  } else {
  }
  i = i + 1U;
  ldv_37054: ;
  if (i < format->nframes) {
    goto ldv_37053;
  } else {
  }
  ldv_37052: ;
  if ((unsigned long )frame == (unsigned long )((struct uvc_frame *)0)) {
    return;
  } else {
  }
  if ((format->flags & 1U) == 0U || (ctrl->dwMaxVideoFrameSize == 0U && (unsigned int )(stream->dev)->uvc_version <= 271U)) {
    ctrl->dwMaxVideoFrameSize = frame->dwMaxVideoFrameBufferSize;
  } else {
  }
  if (((format->flags & 1U) == 0U && ((stream->dev)->quirks & 128U) != 0U) && (stream->intf)->num_altsetting > 1U) {
    interval = ctrl->dwFrameInterval > 100000U ? ctrl->dwFrameInterval : *(frame->dwFrameInterval);
    bandwidth = (u32 )((((int )frame->wWidth * (int )frame->wHeight) / 8) * (int )format->bpp);
    bandwidth = bandwidth * (10000000U / interval + 1U);
    bandwidth = bandwidth / 1000U;
    if ((unsigned int )((stream->dev)->udev)->speed == 3U) {
      bandwidth = bandwidth / 8U;
    } else {
    }
    bandwidth = bandwidth + 12U;
    __max1 = bandwidth;
    __max2 = 1024U;
    bandwidth = __max1 > __max2 ? __max1 : __max2;
    ctrl->dwMaxPayloadTransferSize = bandwidth;
  } else {
  }
  return;
}
}
static int uvc_get_video_ctrl(struct uvc_streaming *stream , struct uvc_streaming_control *ctrl ,
                              int probe , __u8 query )
{
  __u8 *data ;
  __u16 size ;
  int ret ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  size = (unsigned int )(stream->dev)->uvc_version > 271U ? 34U : 26U;
  if (((stream->dev)->quirks & 256U) != 0U && (unsigned int )query == 135U) {
    return (-5);
  } else {
  }
  {
  tmp = kmalloc((size_t )size, 208U);
  data = (__u8 *)tmp;
  }
  if ((unsigned long )data == (unsigned long )((__u8 *)0U)) {
    return (-12);
  } else {
  }
  {
  ret = __uvc_query_ctrl(stream->dev, (int )query, 0, (int )((__u8 )stream->intfnum),
                         probe != 0 ? 1 : 2, (void *)data, (int )size, (int )uvc_timeout_param);
  }
  if ((unsigned int )query - 130U <= 1U && ret == 2) {
    {
    tmp___0 = test_and_set_bit(0L, (unsigned long volatile *)(& (stream->dev)->warnings));
    }
    if (tmp___0 == 0) {
      {
      printk("\016uvcvideo: UVC non compliance - GET_MIN/MAX(PROBE) incorrectly supported. Enabling workaround.\n");
      }
    } else {
    }
    {
    memset((void *)ctrl, 0, 34UL);
    ctrl->wCompQuality = __le16_to_cpup((__le16 const *)data);
    ret = 0;
    }
    goto out;
  } else
  if (((unsigned int )query == 135U && probe == 1) && ret != (int )size) {
    {
    tmp___1 = test_and_set_bit(1L, (unsigned long volatile *)(& (stream->dev)->warnings));
    }
    if (tmp___1 == 0) {
      {
      printk("\016uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.\n");
      }
    } else {
    }
    ret = -5;
    goto out;
  } else
  if (ret != (int )size) {
    {
    printk("\vuvcvideo: Failed to query (%u) UVC %s control : %d (exp. %u).\n", (int )query,
           probe != 0 ? (char *)"probe" : (char *)"commit", ret, (int )size);
    ret = -5;
    }
    goto out;
  } else {
  }
  {
  ctrl->bmHint = __le16_to_cpup((__le16 const *)data);
  ctrl->bFormatIndex = *(data + 2UL);
  ctrl->bFrameIndex = *(data + 3UL);
  ctrl->dwFrameInterval = __le32_to_cpup((__le32 const *)data + 4U);
  ctrl->wKeyFrameRate = __le16_to_cpup((__le16 const *)data + 8U);
  ctrl->wPFrameRate = __le16_to_cpup((__le16 const *)data + 10U);
  ctrl->wCompQuality = __le16_to_cpup((__le16 const *)data + 12U);
  ctrl->wCompWindowSize = __le16_to_cpup((__le16 const *)data + 14U);
  ctrl->wDelay = __le16_to_cpup((__le16 const *)data + 16U);
  ctrl->dwMaxVideoFrameSize = get_unaligned_le32((void const *)data + 18U);
  ctrl->dwMaxPayloadTransferSize = get_unaligned_le32((void const *)data + 22U);
  }
  if ((unsigned int )size == 34U) {
    {
    ctrl->dwClockFrequency = get_unaligned_le32((void const *)data + 26U);
    ctrl->bmFramingInfo = *(data + 30UL);
    ctrl->bPreferedVersion = *(data + 31UL);
    ctrl->bMinVersion = *(data + 32UL);
    ctrl->bMaxVersion = *(data + 33UL);
    }
  } else {
    ctrl->dwClockFrequency = (stream->dev)->clock_frequency;
    ctrl->bmFramingInfo = 0U;
    ctrl->bPreferedVersion = 0U;
    ctrl->bMinVersion = 0U;
    ctrl->bMaxVersion = 0U;
  }
  {
  uvc_fixup_video_ctrl(stream, ctrl);
  ret = 0;
  }
  out:
  {
  kfree((void const *)data);
  }
  return (ret);
}
}
static int uvc_set_video_ctrl(struct uvc_streaming *stream , struct uvc_streaming_control *ctrl ,
                              int probe )
{
  __u8 *data ;
  __u16 size ;
  int ret ;
  void *tmp ;
  {
  {
  size = (unsigned int )(stream->dev)->uvc_version > 271U ? 34U : 26U;
  tmp = kzalloc((size_t )size, 208U);
  data = (__u8 *)tmp;
  }
  if ((unsigned long )data == (unsigned long )((__u8 *)0U)) {
    return (-12);
  } else {
  }
  {
  *((__le16 *)data) = ctrl->bmHint;
  *(data + 2UL) = ctrl->bFormatIndex;
  *(data + 3UL) = ctrl->bFrameIndex;
  *((__le32 *)data + 4U) = ctrl->dwFrameInterval;
  *((__le16 *)data + 8U) = ctrl->wKeyFrameRate;
  *((__le16 *)data + 10U) = ctrl->wPFrameRate;
  *((__le16 *)data + 12U) = ctrl->wCompQuality;
  *((__le16 *)data + 14U) = ctrl->wCompWindowSize;
  *((__le16 *)data + 16U) = ctrl->wDelay;
  put_unaligned_le32(ctrl->dwMaxVideoFrameSize, (void *)data + 18U);
  put_unaligned_le32(ctrl->dwMaxPayloadTransferSize, (void *)data + 22U);
  }
  if ((unsigned int )size == 34U) {
    {
    put_unaligned_le32(ctrl->dwClockFrequency, (void *)data + 26U);
    *(data + 30UL) = ctrl->bmFramingInfo;
    *(data + 31UL) = ctrl->bPreferedVersion;
    *(data + 32UL) = ctrl->bMinVersion;
    *(data + 33UL) = ctrl->bMaxVersion;
    }
  } else {
  }
  {
  ret = __uvc_query_ctrl(stream->dev, 1, 0, (int )((__u8 )stream->intfnum), probe != 0 ? 1 : 2,
                         (void *)data, (int )size, (int )uvc_timeout_param);
  }
  if (ret != (int )size) {
    {
    printk("\vuvcvideo: Failed to set UVC %s control : %d (exp. %u).\n", probe != 0 ? (char *)"probe" : (char *)"commit",
           ret, (int )size);
    ret = -5;
    }
  } else {
  }
  {
  kfree((void const *)data);
  }
  return (ret);
}
}
int uvc_probe_video(struct uvc_streaming *stream , struct uvc_streaming_control *probe )
{
  struct uvc_streaming_control probe_min ;
  struct uvc_streaming_control probe_max ;
  __u16 bandwidth ;
  unsigned int i ;
  int ret ;
  {
  {
  ret = uvc_set_video_ctrl(stream, probe, 1);
  }
  if (ret < 0) {
    goto done;
  } else {
  }
  if (((stream->dev)->quirks & 2U) == 0U) {
    {
    ret = uvc_get_video_ctrl(stream, & probe_min, 1, 130);
    }
    if (ret < 0) {
      goto done;
    } else {
    }
    {
    ret = uvc_get_video_ctrl(stream, & probe_max, 1, 131);
    }
    if (ret < 0) {
      goto done;
    } else {
    }
    probe->wCompQuality = probe_max.wCompQuality;
  } else {
  }
  i = 0U;
  goto ldv_37090;
  ldv_37089:
  {
  ret = uvc_set_video_ctrl(stream, probe, 1);
  }
  if (ret < 0) {
    goto done;
  } else {
  }
  {
  ret = uvc_get_video_ctrl(stream, probe, 1, 129);
  }
  if (ret < 0) {
    goto done;
  } else {
  }
  if ((stream->intf)->num_altsetting == 1U) {
    goto ldv_37088;
  } else {
  }
  bandwidth = (__u16 )probe->dwMaxPayloadTransferSize;
  if ((int )bandwidth <= (int )stream->maxpsize) {
    goto ldv_37088;
  } else {
  }
  if (((stream->dev)->quirks & 2U) != 0U) {
    ret = -28;
    goto done;
  } else {
  }
  probe->wKeyFrameRate = probe_min.wKeyFrameRate;
  probe->wPFrameRate = probe_min.wPFrameRate;
  probe->wCompQuality = probe_max.wCompQuality;
  probe->wCompWindowSize = probe_min.wCompWindowSize;
  i = i + 1U;
  ldv_37090: ;
  if (i <= 1U) {
    goto ldv_37089;
  } else {
  }
  ldv_37088: ;
  done: ;
  return (ret);
}
}
static int uvc_commit_video(struct uvc_streaming *stream , struct uvc_streaming_control *probe )
{
  int tmp ;
  {
  {
  tmp = uvc_set_video_ctrl(stream, probe, 0);
  }
  return (tmp);
}
}
__inline static void uvc_video_get_ts(struct timespec *ts )
{
  {
  if (uvc_clock_param == 1U) {
    {
    ktime_get_ts(ts);
    }
  } else {
    {
    ktime_get_real_ts(ts);
    }
  }
  return;
}
}
static void uvc_video_clock_decode(struct uvc_streaming *stream , struct uvc_buffer *buf ,
                                   __u8 const *data , int len )
{
  struct uvc_clock_sample *sample ;
  unsigned int header_size ;
  bool has_pts ;
  bool has_scr ;
  unsigned long flags ;
  struct timespec ts ;
  u16 host_sof ;
  u16 dev_sof ;
  int tmp ;
  u16 delta_sof ;
  {
  has_pts = 0;
  has_scr = 0;
  {
  if (((int )*(data + 1UL) & 12) == 12) {
    goto case_12;
  } else {
  }
  if (((int )*(data + 1UL) & 12) == 4) {
    goto case_4;
  } else {
  }
  if (((int )*(data + 1UL) & 12) == 8) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_12:
  header_size = 12U;
  has_pts = 1;
  has_scr = 1;
  goto ldv_37113;
  case_4:
  header_size = 6U;
  has_pts = 1;
  goto ldv_37113;
  case_8:
  header_size = 8U;
  has_scr = 1;
  goto ldv_37113;
  switch_default:
  header_size = 2U;
  goto ldv_37113;
  switch_break: ;
  }
  ldv_37113: ;
  if ((unsigned int )len < header_size) {
    return;
  } else {
  }
  if ((int )has_pts && (unsigned long )buf != (unsigned long )((struct uvc_buffer *)0)) {
    {
    buf->pts = get_unaligned_le32((void const *)data + 2U);
    }
  } else {
  }
  if (! has_scr) {
    return;
  } else {
  }
  {
  dev_sof = get_unaligned_le16((void const *)data + (unsigned long )(header_size - 2U));
  }
  if ((int )dev_sof == (int )stream->clock.last_sof) {
    return;
  } else {
  }
  {
  stream->clock.last_sof = dev_sof;
  tmp = usb_get_current_frame_number((stream->dev)->udev);
  host_sof = (u16 )tmp;
  uvc_video_get_ts(& ts);
  }
  if ((unsigned int )stream->clock.sof_offset == 65535U) {
    delta_sof = (unsigned int )((u16 )((int )host_sof - (int )dev_sof)) & 255U;
    if ((unsigned int )delta_sof > 9U) {
      stream->clock.sof_offset = delta_sof;
    } else {
      stream->clock.sof_offset = 0U;
    }
  } else {
  }
  {
  dev_sof = (unsigned int )((u16 )((int )dev_sof + (int )stream->clock.sof_offset)) & 2047U;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96___0(& stream->clock.lock);
  sample = stream->clock.samples + (unsigned long )stream->clock.head;
  sample->dev_stc = get_unaligned_le32((void const *)data + (unsigned long )(header_size - 6U));
  sample->dev_sof = dev_sof;
  sample->host_sof = host_sof;
  sample->host_ts = ts;
  stream->clock.head = (stream->clock.head + 1U) % stream->clock.size;
  }
  if (stream->clock.count < stream->clock.size) {
    stream->clock.count = stream->clock.count + 1U;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97___0(& stream->clock.lock, flags);
  }
  return;
}
}
static void uvc_video_clock_reset(struct uvc_streaming *stream )
{
  struct uvc_clock *clock ;
  {
  clock = & stream->clock;
  clock->head = 0U;
  clock->count = 0U;
  clock->last_sof = 65535U;
  clock->sof_offset = 65535U;
  return;
}
}
static int uvc_video_clock_init(struct uvc_streaming *stream )
{
  struct uvc_clock *clock ;
  struct lock_class_key __key ;
  void *tmp ;
  {
  {
  clock = & stream->clock;
  spinlock_check(& clock->lock);
  __raw_spin_lock_init(& clock->lock.__annonCompField18.rlock, "&(&clock->lock)->rlock",
                       & __key);
  clock->size = 32U;
  tmp = kmalloc((unsigned long )clock->size * 32UL, 208U);
  clock->samples = (struct uvc_clock_sample *)tmp;
  }
  if ((unsigned long )clock->samples == (unsigned long )((struct uvc_clock_sample *)0)) {
    return (-12);
  } else {
  }
  {
  uvc_video_clock_reset(stream);
  }
  return (0);
}
}
static void uvc_video_clock_cleanup(struct uvc_streaming *stream )
{
  {
  {
  kfree((void const *)stream->clock.samples);
  stream->clock.samples = (struct uvc_clock_sample *)0;
  }
  return;
}
}
static u16 uvc_video_clock_host_sof(struct uvc_clock_sample const *sample )
{
  s8 delta_sof ;
  {
  delta_sof = (s8 )((int )((unsigned char )sample->host_sof) - (int )((unsigned char )sample->dev_sof));
  return ((unsigned int )((u16 )((int )((unsigned short )sample->dev_sof) + (int )((unsigned short )delta_sof))) & 2047U);
}
}
void uvc_video_clock_update(struct uvc_streaming *stream , struct v4l2_buffer *v4l2_buf ,
                            struct uvc_buffer *buf )
{
  struct uvc_clock *clock ;
  struct uvc_clock_sample *first ;
  struct uvc_clock_sample *last ;
  unsigned long flags ;
  struct timespec ts ;
  u32 delta_stc ;
  u32 y1 ;
  u32 y2 ;
  u32 x1 ;
  u32 x2 ;
  u32 mean ;
  u32 sof ;
  u32 div ;
  u32 rem ;
  u64 y ;
  u64 tmp ;
  u64 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u64 tmp___3 ;
  u64 tmp___4 ;
  {
  {
  clock = & stream->clock;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_98___0(& clock->lock);
  }
  if (clock->count < clock->size) {
    goto done;
  } else {
  }
  first = clock->samples + (unsigned long )clock->head;
  last = clock->samples + (unsigned long )((clock->head - 1U) % clock->size);
  delta_stc = buf->pts - 2147483648U;
  x1 = first->dev_stc - delta_stc;
  x2 = last->dev_stc - delta_stc;
  if (x1 == x2) {
    goto done;
  } else {
  }
  y1 = (u32 )(((int )first->dev_sof + 2048) << 16);
  y2 = (u32 )(((int )last->dev_sof + 2048) << 16);
  if (y2 < y1) {
    y2 = y2 + 134217728U;
  } else {
  }
  {
  y = ((unsigned long long )(y2 - y1) * 2147483648ULL + (unsigned long long )y1 * (unsigned long long )x2) - (unsigned long long )y2 * (unsigned long long )x1;
  y = div_u64(y, x2 - x1);
  sof = (u32 )y;
  }
  if ((uvc_trace_param & 4096U) != 0U) {
    {
    tmp = div_u64(((unsigned long long )sof & 65535ULL) * 1000000ULL, 65536U);
    tmp___0 = div_u64((y & 65535ULL) * 1000000ULL, 65536U);
    printk("\017uvcvideo: %s: PTS %u y %llu.%06llu SOF %u.%06llu (x1 %u x2 %u y1 %u y2 %u SOF offset %u)\n",
           (char *)(& (stream->dev)->name), buf->pts, y >> 16, tmp___0, sof >> 16,
           tmp, x1, x2, y1, y2, (int )clock->sof_offset);
    }
  } else {
  }
  {
  tmp___1 = uvc_video_clock_host_sof((struct uvc_clock_sample const *)first);
  x1 = (u32 )(((int )tmp___1 + 2048) << 16);
  tmp___2 = uvc_video_clock_host_sof((struct uvc_clock_sample const *)last);
  x2 = (u32 )(((int )tmp___2 + 2048) << 16);
  }
  if (x2 < x1) {
    x2 = x2 + 134217728U;
  } else {
  }
  if (x1 == x2) {
    goto done;
  } else {
  }
  {
  ts = timespec_sub(last->host_ts, first->host_ts);
  y1 = 1000000000U;
  y2 = (u32 )(ts.tv_sec + 1L) * 1000000000U + (u32 )ts.tv_nsec;
  mean = (x1 + x2) / 2U;
  }
  if (mean - 67108864U > sof) {
    sof = sof + 134217728U;
  } else
  if (sof > mean + 67108864U) {
    sof = sof - 134217728U;
  } else {
  }
  {
  y = ((unsigned long long )(y2 - y1) * (unsigned long long )sof + (unsigned long long )y1 * (unsigned long long )x2) - (unsigned long long )y2 * (unsigned long long )x1;
  y = div_u64(y, x2 - x1);
  tmp___3 = div_u64_rem(y, 1000000000U, & rem);
  div = (u32 )tmp___3;
  ts.tv_sec = (first->host_ts.tv_sec + -1L) + (__kernel_time_t )div;
  ts.tv_nsec = first->host_ts.tv_nsec + (long )rem;
  }
  if (ts.tv_nsec > 999999999L) {
    ts.tv_sec = ts.tv_sec + 1L;
    ts.tv_nsec = ts.tv_nsec + -1000000000L;
  } else {
  }
  if ((uvc_trace_param & 4096U) != 0U) {
    {
    tmp___4 = div_u64(((unsigned long long )sof & 65535ULL) * 1000000ULL, 65536U);
    printk("\017uvcvideo: %s: SOF %u.%06llu y %llu ts %lu.%06lu buf ts %lu.%06lu (x1 %u/%u/%u x2 %u/%u/%u y1 %u y2 %u)\n",
           (char *)(& (stream->dev)->name), sof >> 16, tmp___4, y, ts.tv_sec, ts.tv_nsec / 1000L,
           v4l2_buf->timestamp.tv_sec, (unsigned long )v4l2_buf->timestamp.tv_usec,
           x1, (int )first->host_sof, (int )first->dev_sof, x2, (int )last->host_sof,
           (int )last->dev_sof, y1, y2);
    }
  } else {
  }
  v4l2_buf->timestamp.tv_sec = ts.tv_sec;
  v4l2_buf->timestamp.tv_usec = ts.tv_nsec / 1000L;
  done:
  {
  ldv_spin_unlock_irqrestore_97___0(& stream->clock.lock, flags);
  }
  return;
}
}
static void uvc_video_stats_decode(struct uvc_streaming *stream , __u8 const *data ,
                                   int len )
{
  unsigned int header_size ;
  bool has_pts ;
  bool has_scr ;
  u16 scr_sof ;
  u32 scr_stc ;
  u32 pts ;
  {
  has_pts = 0;
  has_scr = 0;
  scr_sof = scr_sof;
  scr_stc = scr_stc;
  pts = pts;
  if (stream->stats.stream.nb_frames == 0U && stream->stats.frame.nb_packets == 0U) {
    {
    ktime_get_ts(& stream->stats.stream.start_ts);
    }
  } else {
  }
  {
  if (((int )*(data + 1UL) & 12) == 12) {
    goto case_12;
  } else {
  }
  if (((int )*(data + 1UL) & 12) == 4) {
    goto case_4;
  } else {
  }
  if (((int )*(data + 1UL) & 12) == 8) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_12:
  header_size = 12U;
  has_pts = 1;
  has_scr = 1;
  goto ldv_37167;
  case_4:
  header_size = 6U;
  has_pts = 1;
  goto ldv_37167;
  case_8:
  header_size = 8U;
  has_scr = 1;
  goto ldv_37167;
  switch_default:
  header_size = 2U;
  goto ldv_37167;
  switch_break: ;
  }
  ldv_37167: ;
  if ((unsigned int )len < header_size || (unsigned int )*data < header_size) {
    stream->stats.frame.nb_invalid = stream->stats.frame.nb_invalid + 1U;
    return;
  } else {
  }
  if ((int )has_pts) {
    {
    pts = get_unaligned_le32((void const *)data + 2U);
    }
  } else {
  }
  if ((int )has_scr) {
    {
    scr_stc = get_unaligned_le32((void const *)data + (unsigned long )(header_size - 6U));
    scr_sof = get_unaligned_le16((void const *)data + (unsigned long )(header_size - 2U));
    }
  } else {
  }
  if ((int )has_pts && stream->stats.frame.nb_pts != 0U) {
    if (stream->stats.frame.pts != pts) {
      stream->stats.frame.nb_pts_diffs = stream->stats.frame.nb_pts_diffs + 1U;
      stream->stats.frame.last_pts_diff = stream->stats.frame.nb_packets;
    } else {
    }
  } else {
  }
  if ((int )has_pts) {
    stream->stats.frame.nb_pts = stream->stats.frame.nb_pts + 1U;
    stream->stats.frame.pts = pts;
  } else {
  }
  if (stream->stats.frame.size == 0U) {
    if ((unsigned int )len > header_size) {
      stream->stats.frame.has_initial_pts = has_pts;
    } else {
    }
    if ((unsigned int )len == header_size && (int )has_pts) {
      stream->stats.frame.has_early_pts = 1;
    } else {
    }
  } else {
  }
  if ((int )has_scr && stream->stats.frame.nb_scr != 0U) {
    if (stream->stats.frame.scr_stc != scr_stc) {
      stream->stats.frame.nb_scr_diffs = stream->stats.frame.nb_scr_diffs + 1U;
    } else {
    }
  } else {
  }
  if ((int )has_scr) {
    if (stream->stats.stream.nb_frames != 0U || stream->stats.frame.nb_scr != 0U) {
      stream->stats.stream.scr_sof_count = stream->stats.stream.scr_sof_count + (((unsigned int )scr_sof - stream->stats.stream.scr_sof) & 2047U);
    } else {
    }
    stream->stats.stream.scr_sof = (unsigned int )scr_sof;
    stream->stats.frame.nb_scr = stream->stats.frame.nb_scr + 1U;
    stream->stats.frame.scr_stc = scr_stc;
    stream->stats.frame.scr_sof = scr_sof;
    if ((unsigned int )scr_sof < stream->stats.stream.min_sof) {
      stream->stats.stream.min_sof = (unsigned int )scr_sof;
    } else {
    }
    if ((unsigned int )scr_sof > stream->stats.stream.max_sof) {
      stream->stats.stream.max_sof = (unsigned int )scr_sof;
    } else {
    }
  } else {
  }
  if (stream->stats.frame.size == 0U && (unsigned int )len > header_size) {
    stream->stats.frame.first_data = stream->stats.frame.nb_packets;
  } else {
  }
  stream->stats.frame.size = stream->stats.frame.size + ((unsigned int )len - header_size);
  stream->stats.frame.nb_packets = stream->stats.frame.nb_packets + 1U;
  if ((unsigned int )len > header_size) {
    stream->stats.frame.nb_empty = stream->stats.frame.nb_empty + 1U;
  } else {
  }
  if (((int )*(data + 1UL) & 64) != 0) {
    stream->stats.frame.nb_errors = stream->stats.frame.nb_errors + 1U;
  } else {
  }
  return;
}
}
static void uvc_video_stats_update(struct uvc_streaming *stream )
{
  struct uvc_stats_frame *frame ;
  {
  frame = & stream->stats.frame;
  if ((uvc_trace_param & 2048U) != 0U) {
    {
    printk("\017uvcvideo: frame %u stats: %u/%u/%u packets, %u/%u/%u pts (%searly %sinitial), %u/%u scr, last pts/stc/sof %u/%u/%u\n",
           stream->sequence, frame->first_data, frame->nb_packets - frame->nb_empty,
           frame->nb_packets, frame->nb_pts_diffs, frame->last_pts_diff, frame->nb_pts,
           (int )frame->has_early_pts ? (char *)"" : (char *)"!", (int )frame->has_initial_pts ? (char *)"" : (char *)"!",
           frame->nb_scr_diffs, frame->nb_scr, frame->pts, frame->scr_stc, (int )frame->scr_sof);
    }
  } else {
  }
  stream->stats.stream.nb_frames = stream->stats.stream.nb_frames + 1U;
  stream->stats.stream.nb_packets = stream->stats.stream.nb_packets + stream->stats.frame.nb_packets;
  stream->stats.stream.nb_empty = stream->stats.stream.nb_empty + stream->stats.frame.nb_empty;
  stream->stats.stream.nb_errors = stream->stats.stream.nb_errors + stream->stats.frame.nb_errors;
  stream->stats.stream.nb_invalid = stream->stats.stream.nb_invalid + stream->stats.frame.nb_invalid;
  if ((int )frame->has_early_pts) {
    stream->stats.stream.nb_pts_early = stream->stats.stream.nb_pts_early + 1U;
  } else {
  }
  if ((int )frame->has_initial_pts) {
    stream->stats.stream.nb_pts_initial = stream->stats.stream.nb_pts_initial + 1U;
  } else {
  }
  if (frame->last_pts_diff <= frame->first_data) {
    stream->stats.stream.nb_pts_constant = stream->stats.stream.nb_pts_constant + 1U;
  } else {
  }
  if (frame->nb_scr >= frame->nb_packets - frame->nb_empty) {
    stream->stats.stream.nb_scr_count_ok = stream->stats.stream.nb_scr_count_ok + 1U;
  } else {
  }
  if (frame->nb_scr_diffs + 1U == frame->nb_scr) {
    stream->stats.stream.nb_scr_diffs_ok = stream->stats.stream.nb_scr_diffs_ok + 1U;
  } else {
  }
  {
  memset((void *)(& stream->stats.frame), 0, 60UL);
  }
  return;
}
}
size_t uvc_video_stats_dump(struct uvc_streaming *stream , char *buf , size_t size )
{
  unsigned int scr_sof_freq ;
  unsigned int duration ;
  struct timespec ts ;
  size_t count ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  count = 0UL;
  ts.tv_sec = stream->stats.stream.stop_ts.tv_sec - stream->stats.stream.start_ts.tv_sec;
  ts.tv_nsec = stream->stats.stream.stop_ts.tv_nsec - stream->stats.stream.start_ts.tv_nsec;
  if (ts.tv_nsec < 0L) {
    ts.tv_sec = ts.tv_sec - 1L;
    ts.tv_nsec = ts.tv_nsec + 1000000000L;
  } else {
  }
  duration = (unsigned int )ts.tv_sec * 1000U + (unsigned int )(ts.tv_nsec / 1000000L);
  if (duration != 0U) {
    scr_sof_freq = (stream->stats.stream.scr_sof_count * 1000U) / duration;
  } else {
    scr_sof_freq = 0U;
  }
  {
  tmp = scnprintf(buf + count, size - count, "frames:  %u\npackets: %u\nempty:   %u\nerrors:  %u\ninvalid: %u\n",
                  stream->stats.stream.nb_frames, stream->stats.stream.nb_packets,
                  stream->stats.stream.nb_empty, stream->stats.stream.nb_errors, stream->stats.stream.nb_invalid);
  count = count + (size_t )tmp;
  tmp___0 = scnprintf(buf + count, size - count, "pts: %u early, %u initial, %u ok\n",
                      stream->stats.stream.nb_pts_early, stream->stats.stream.nb_pts_initial,
                      stream->stats.stream.nb_pts_constant);
  count = count + (size_t )tmp___0;
  tmp___1 = scnprintf(buf + count, size - count, "scr: %u count ok, %u diff ok\n",
                      stream->stats.stream.nb_scr_count_ok, stream->stats.stream.nb_scr_diffs_ok);
  count = count + (size_t )tmp___1;
  tmp___2 = scnprintf(buf + count, size - count, "sof: %u <= sof <= %u, freq %u.%03u kHz\n",
                      stream->stats.stream.min_sof, stream->stats.stream.max_sof,
                      scr_sof_freq / 1000U, scr_sof_freq % 1000U);
  count = count + (size_t )tmp___2;
  }
  return (count);
}
}
static void uvc_video_stats_start(struct uvc_streaming *stream )
{
  {
  {
  memset((void *)(& stream->stats), 0, 152UL);
  stream->stats.stream.min_sof = 2048U;
  }
  return;
}
}
static void uvc_video_stats_stop(struct uvc_streaming *stream )
{
  {
  {
  ktime_get_ts(& stream->stats.stream.stop_ts);
  }
  return;
}
}
static int uvc_video_decode_start(struct uvc_streaming *stream , struct uvc_buffer *buf ,
                                  __u8 const *data , int len )
{
  __u8 fid ;
  struct timespec ts ;
  {
  if ((len <= 1 || (unsigned int )((unsigned char )*data) <= 1U) || (int )*data > len) {
    stream->stats.frame.nb_invalid = stream->stats.frame.nb_invalid + 1U;
    return (-22);
  } else {
  }
  fid = (unsigned int )((__u8 )*(data + 1UL)) & 1U;
  if ((int )stream->last_fid != (int )fid) {
    stream->sequence = stream->sequence + 1U;
    if (stream->sequence != 0U) {
      {
      uvc_video_stats_update(stream);
      }
    } else {
    }
  } else {
  }
  {
  uvc_video_clock_decode(stream, buf, data, len);
  uvc_video_stats_decode(stream, data, len);
  }
  if ((unsigned long )buf == (unsigned long )((struct uvc_buffer *)0)) {
    stream->last_fid = fid;
    return (-61);
  } else {
  }
  if (((int )*(data + 1UL) & 64) != 0) {
    if ((uvc_trace_param & 128U) != 0U) {
      {
      printk("\017uvcvideo: Marking buffer as bad (error bit set).\n");
      }
    } else {
    }
    buf->error = 1U;
  } else {
  }
  if ((unsigned int )buf->state != 2U) {
    if ((int )fid == (int )stream->last_fid) {
      if ((uvc_trace_param & 128U) != 0U) {
        {
        printk("\017uvcvideo: Dropping payload (out of sync).\n");
        }
      } else {
      }
      if (((stream->dev)->quirks & 16U) != 0U && ((int )*(data + 1UL) & 2) != 0) {
        stream->last_fid = (__u8 )((unsigned int )stream->last_fid ^ 1U);
      } else {
      }
      return (-61);
    } else {
    }
    {
    uvc_video_get_ts(& ts);
    buf->buf.v4l2_buf.field = 1U;
    buf->buf.v4l2_buf.sequence = stream->sequence;
    buf->buf.v4l2_buf.timestamp.tv_sec = ts.tv_sec;
    buf->buf.v4l2_buf.timestamp.tv_usec = ts.tv_nsec / 1000L;
    buf->state = 2;
    }
  } else {
  }
  if ((int )fid != (int )stream->last_fid && buf->bytesused != 0U) {
    if ((uvc_trace_param & 128U) != 0U) {
      {
      printk("\017uvcvideo: Frame complete (FID bit toggled).\n");
      }
    } else {
    }
    buf->state = 3;
    return (-11);
  } else {
  }
  stream->last_fid = fid;
  return ((int )*data);
}
}
static void uvc_video_decode_data(struct uvc_streaming *stream , struct uvc_buffer *buf ,
                                  __u8 const *data , int len )
{
  unsigned int maxlen ;
  unsigned int nbytes ;
  void *mem ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  {
  if (len <= 0) {
    return;
  } else {
  }
  {
  maxlen = buf->length - buf->bytesused;
  mem = buf->mem + (unsigned long )buf->bytesused;
  _min1 = (unsigned int )len;
  _min2 = maxlen;
  nbytes = _min1 < _min2 ? _min1 : _min2;
  memcpy(mem, (void const *)data, (size_t )nbytes);
  buf->bytesused = buf->bytesused + nbytes;
  }
  if ((unsigned int )len > maxlen) {
    if ((uvc_trace_param & 128U) != 0U) {
      {
      printk("\017uvcvideo: Frame complete (overflow).\n");
      }
    } else {
    }
    buf->state = 3;
  } else {
  }
  return;
}
}
static void uvc_video_decode_end(struct uvc_streaming *stream , struct uvc_buffer *buf ,
                                 __u8 const *data , int len )
{
  {
  if (((int )*(data + 1UL) & 2) != 0 && buf->bytesused != 0U) {
    if ((uvc_trace_param & 128U) != 0U) {
      {
      printk("\017uvcvideo: Frame complete (EOF found).\n");
      }
    } else {
    }
    if ((int )*data == len) {
      if ((uvc_trace_param & 128U) != 0U) {
        {
        printk("\017uvcvideo: EOF in empty payload.\n");
        }
      } else {
      }
    } else {
    }
    buf->state = 3;
    if (((stream->dev)->quirks & 16U) != 0U) {
      stream->last_fid = (__u8 )((unsigned int )stream->last_fid ^ 1U);
    } else {
    }
  } else {
  }
  return;
}
}
static int uvc_video_encode_header(struct uvc_streaming *stream , struct uvc_buffer *buf ,
                                   __u8 *data , int len )
{
  {
  *data = 2U;
  *(data + 1UL) = (__u8 )(((int )((signed char )stream->last_fid) & 1) | -126);
  return (2);
}
}
static int uvc_video_encode_data(struct uvc_streaming *stream , struct uvc_buffer *buf ,
                                 __u8 *data , int len )
{
  struct uvc_video_queue *queue ;
  unsigned int nbytes ;
  void *mem ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  __u32 _min1___0 ;
  unsigned int _min2___0 ;
  {
  {
  queue = & stream->queue;
  mem = buf->mem + (unsigned long )queue->buf_used;
  _min1 = (unsigned int )len;
  _min2 = buf->bytesused - queue->buf_used;
  nbytes = _min1 < _min2 ? _min1 : _min2;
  _min1___0 = stream->bulk.max_payload_size - stream->bulk.payload_size;
  _min2___0 = nbytes;
  nbytes = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  memcpy((void *)data, (void const *)mem, (size_t )nbytes);
  queue->buf_used = queue->buf_used + nbytes;
  }
  return ((int )nbytes);
}
}
static void uvc_video_validate_buffer(struct uvc_streaming const *stream , struct uvc_buffer *buf )
{
  {
  if ((unsigned int )stream->ctrl.dwMaxVideoFrameSize != buf->bytesused && ((stream->cur_format)->flags & 1U) == 0U) {
    buf->error = 1U;
  } else {
  }
  return;
}
}
static void uvc_video_decode_isoc(struct urb *urb , struct uvc_streaming *stream ,
                                  struct uvc_buffer *buf )
{
  u8 *mem ;
  int ret ;
  int i ;
  {
  i = 0;
  goto ldv_37253;
  ldv_37252: ;
  if (urb->iso_frame_desc[i].status < 0) {
    if ((uvc_trace_param & 128U) != 0U) {
      {
      printk("\017uvcvideo: USB isochronous frame lost (%d).\n", urb->iso_frame_desc[i].status);
      }
    } else {
    }
    if ((unsigned long )buf != (unsigned long )((struct uvc_buffer *)0)) {
      buf->error = 1U;
    } else {
    }
    goto ldv_37249;
  } else {
  }
  mem = (u8 *)urb->transfer_buffer + (unsigned long )urb->iso_frame_desc[i].offset;
  ldv_37250:
  {
  ret = uvc_video_decode_start(stream, buf, (__u8 const *)mem, (int )urb->iso_frame_desc[i].actual_length);
  }
  if (ret == -11) {
    {
    uvc_video_validate_buffer((struct uvc_streaming const *)stream, buf);
    buf = uvc_queue_next_buffer(& stream->queue, buf);
    }
  } else {
  }
  if (ret == -11) {
    goto ldv_37250;
  } else {
  }
  if (ret < 0) {
    goto ldv_37249;
  } else {
  }
  {
  uvc_video_decode_data(stream, buf, (__u8 const *)mem + (unsigned long )ret, (int )(urb->iso_frame_desc[i].actual_length - (unsigned int )ret));
  uvc_video_decode_end(stream, buf, (__u8 const *)mem, (int )urb->iso_frame_desc[i].actual_length);
  }
  if ((unsigned int )buf->state == 3U) {
    {
    uvc_video_validate_buffer((struct uvc_streaming const *)stream, buf);
    buf = uvc_queue_next_buffer(& stream->queue, buf);
    }
  } else {
  }
  ldv_37249:
  i = i + 1;
  ldv_37253: ;
  if (i < urb->number_of_packets) {
    goto ldv_37252;
  } else {
  }
  return;
}
}
static void uvc_video_decode_bulk(struct urb *urb , struct uvc_streaming *stream ,
                                  struct uvc_buffer *buf )
{
  u8 *mem ;
  int len ;
  int ret ;
  {
  if (urb->actual_length == 0U && stream->bulk.header_size == 0U) {
    return;
  } else {
  }
  mem = (u8 *)urb->transfer_buffer;
  len = (int )urb->actual_length;
  stream->bulk.payload_size = stream->bulk.payload_size + (__u32 )len;
  if (*((unsigned long *)stream + 213UL) == 0UL) {
    ldv_37263:
    {
    ret = uvc_video_decode_start(stream, buf, (__u8 const *)mem, len);
    }
    if (ret == -11) {
      {
      buf = uvc_queue_next_buffer(& stream->queue, buf);
      }
    } else {
    }
    if (ret == -11) {
      goto ldv_37263;
    } else {
    }
    if (ret < 0 || (unsigned long )buf == (unsigned long )((struct uvc_buffer *)0)) {
      stream->bulk.skip_payload = 1;
    } else {
      {
      memcpy((void *)(& stream->bulk.header), (void const *)mem, (size_t )ret);
      stream->bulk.header_size = (unsigned int )ret;
      mem = mem + (unsigned long )ret;
      len = len - ret;
      }
    }
  } else {
  }
  if (stream->bulk.skip_payload == 0 && (unsigned long )buf != (unsigned long )((struct uvc_buffer *)0)) {
    {
    uvc_video_decode_data(stream, buf, (__u8 const *)mem, len);
    }
  } else {
  }
  if (urb->actual_length < urb->transfer_buffer_length || stream->bulk.payload_size >= stream->bulk.max_payload_size) {
    if (stream->bulk.skip_payload == 0 && (unsigned long )buf != (unsigned long )((struct uvc_buffer *)0)) {
      {
      uvc_video_decode_end(stream, buf, (__u8 const *)(& stream->bulk.header), (int )stream->bulk.payload_size);
      }
      if ((unsigned int )buf->state == 3U) {
        {
        buf = uvc_queue_next_buffer(& stream->queue, buf);
        }
      } else {
      }
    } else {
    }
    stream->bulk.header_size = 0U;
    stream->bulk.skip_payload = 0;
    stream->bulk.payload_size = 0U;
  } else {
  }
  return;
}
}
static void uvc_video_encode_bulk(struct urb *urb , struct uvc_streaming *stream ,
                                  struct uvc_buffer *buf )
{
  u8 *mem ;
  int len ;
  int ret ;
  {
  mem = (u8 *)urb->transfer_buffer;
  len = (int )stream->urb_size;
  if ((unsigned long )buf == (unsigned long )((struct uvc_buffer *)0)) {
    urb->transfer_buffer_length = 0U;
    return;
  } else {
  }
  if (stream->bulk.header_size == 0U) {
    {
    ret = uvc_video_encode_header(stream, buf, mem, len);
    stream->bulk.header_size = (unsigned int )ret;
    stream->bulk.payload_size = stream->bulk.payload_size + (__u32 )ret;
    mem = mem + (unsigned long )ret;
    len = len - ret;
    }
  } else {
  }
  {
  ret = uvc_video_encode_data(stream, buf, mem, len);
  stream->bulk.payload_size = stream->bulk.payload_size + (__u32 )ret;
  len = len - ret;
  }
  if (buf->bytesused == stream->queue.buf_used || stream->bulk.payload_size == stream->bulk.max_payload_size) {
    if (buf->bytesused == stream->queue.buf_used) {
      {
      stream->queue.buf_used = 0U;
      buf->state = 3;
      stream->sequence = stream->sequence + 1U;
      buf->buf.v4l2_buf.sequence = stream->sequence;
      uvc_queue_next_buffer(& stream->queue, buf);
      stream->last_fid = (__u8 )((unsigned int )stream->last_fid ^ 1U);
      }
    } else {
    }
    stream->bulk.header_size = 0U;
    stream->bulk.payload_size = 0U;
  } else {
  }
  urb->transfer_buffer_length = stream->urb_size - (unsigned int )len;
  return;
}
}
static void uvc_video_complete(struct urb *urb )
{
  struct uvc_streaming *stream ;
  struct uvc_video_queue *queue ;
  struct uvc_buffer *buf ;
  unsigned long flags ;
  int ret ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  stream = (struct uvc_streaming *)urb->context;
  queue = & stream->queue;
  buf = (struct uvc_buffer *)0;
  {
  if (urb->status == 0) {
    goto case_0;
  } else {
  }
  if (urb->status == -2) {
    goto case_neg_2;
  } else {
  }
  if (urb->status == -104) {
    goto case_neg_104;
  } else {
  }
  if (urb->status == -108) {
    goto case_neg_108;
  } else {
  }
  goto switch_default;
  case_0: ;
  goto ldv_37282;
  switch_default:
  {
  printk("\fuvcvideo: Non-zero status (%d) in video completion handler.\n", urb->status);
  }
  case_neg_2: ;
  if ((unsigned int )*((unsigned char *)stream + 328UL) != 0U) {
    return;
  } else {
  }
  case_neg_104: ;
  case_neg_108:
  {
  uvc_queue_cancel(queue, urb->status == -108);
  }
  return;
  switch_break: ;
  }
  ldv_37282:
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100___0(& queue->irqlock);
  tmp = list_empty((struct list_head const *)(& queue->irqqueue));
  }
  if (tmp == 0) {
    __mptr = (struct list_head const *)queue->irqqueue.next;
    buf = (struct uvc_buffer *)__mptr + 0xfffffffffffffc60UL;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& queue->irqlock, flags);
  (*(stream->decode))(urb, stream, buf);
  ret = ldv_usb_submit_urb_102(urb, 32U);
  }
  if (ret < 0) {
    {
    printk("\vuvcvideo: Failed to resubmit video URB (%d).\n", ret);
    }
  } else {
  }
  return;
}
}
static void uvc_free_urb_buffers(struct uvc_streaming *stream )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_37294;
  ldv_37293: ;
  if ((unsigned long )stream->urb_buffer[i] != (unsigned long )((char *)0)) {
    {
    ldv_usb_free_coherent_103((stream->dev)->udev, (size_t )stream->urb_size, (void *)stream->urb_buffer[i],
                              stream->urb_dma[i]);
    stream->urb_buffer[i] = (char *)0;
    }
  } else {
  }
  i = i + 1U;
  ldv_37294: ;
  if (i <= 4U) {
    goto ldv_37293;
  } else {
  }
  stream->urb_size = 0U;
  return;
}
}
static int uvc_alloc_urb_buffers(struct uvc_streaming *stream , unsigned int size ,
                                 unsigned int psize , gfp_t gfp_flags )
{
  unsigned int npackets ;
  unsigned int i ;
  void *tmp ;
  {
  if (stream->urb_size != 0U) {
    return ((int )(stream->urb_size / psize));
  } else {
  }
  npackets = ((size + psize) - 1U) / psize;
  if (npackets > 32U) {
    npackets = 32U;
  } else {
  }
  goto ldv_37308;
  ldv_37307:
  i = 0U;
  goto ldv_37306;
  ldv_37305:
  {
  stream->urb_size = psize * npackets;
  tmp = ldv_usb_alloc_coherent_104((stream->dev)->udev, (size_t )stream->urb_size,
                                   gfp_flags | 512U, (dma_addr_t *)(& stream->urb_dma) + (unsigned long )i);
  stream->urb_buffer[i] = (char *)tmp;
  }
  if ((unsigned long )stream->urb_buffer[i] == (unsigned long )((char *)0)) {
    {
    uvc_free_urb_buffers(stream);
    }
    goto ldv_37304;
  } else {
  }
  i = i + 1U;
  ldv_37306: ;
  if (i <= 4U) {
    goto ldv_37305;
  } else {
  }
  ldv_37304: ;
  if (i == 5U) {
    if ((uvc_trace_param & 1024U) != 0U) {
      {
      printk("\017uvcvideo: Allocated %u URB buffers of %ux%u bytes each.\n", 5, npackets,
             psize);
      }
    } else {
    }
    return ((int )npackets);
  } else {
  }
  npackets = npackets / 2U;
  ldv_37308: ;
  if (npackets > 1U) {
    goto ldv_37307;
  } else {
  }
  if ((uvc_trace_param & 1024U) != 0U) {
    {
    printk("\017uvcvideo: Failed to allocate URB buffers (%u bytes per packet).\n",
           psize);
    }
  } else {
  }
  return (0);
}
}
static void uvc_uninit_video(struct uvc_streaming *stream , int free_buffers )
{
  struct urb *urb ;
  unsigned int i ;
  {
  {
  uvc_video_stats_stop(stream);
  i = 0U;
  }
  goto ldv_37318;
  ldv_37317:
  urb = stream->urb[i];
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    goto ldv_37316;
  } else {
  }
  {
  usb_kill_urb(urb);
  ldv_usb_free_urb_105(urb);
  stream->urb[i] = (struct urb *)0;
  }
  ldv_37316:
  i = i + 1U;
  ldv_37318: ;
  if (i <= 4U) {
    goto ldv_37317;
  } else {
  }
  if (free_buffers != 0) {
    {
    uvc_free_urb_buffers(stream);
    }
  } else {
  }
  return;
}
}
static unsigned int uvc_endpoint_max_bpi(struct usb_device *dev , struct usb_host_endpoint *ep )
{
  u16 psize ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  if ((unsigned int )dev->speed == 5U) {
    goto case_5;
  } else {
  }
  if ((unsigned int )dev->speed == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )dev->speed == 4U) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_5: ;
  return ((unsigned int )ep->ss_ep_comp.wBytesPerInterval);
  case_3:
  {
  tmp = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
  psize = (u16 )tmp;
  }
  return ((unsigned int )(((int )psize & 2047) * ((((int )psize >> 11) & 3) + 1)));
  case_4:
  {
  tmp___0 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
  psize = (u16 )tmp___0;
  }
  return ((unsigned int )psize);
  switch_default:
  {
  tmp___1 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
  psize = (u16 )tmp___1;
  }
  return ((unsigned int )psize & 2047U);
  switch_break: ;
  }
}
}
static int uvc_init_video_isoc(struct uvc_streaming *stream , struct usb_host_endpoint *ep ,
                               gfp_t gfp_flags )
{
  struct urb *urb ;
  unsigned int npackets ;
  unsigned int i ;
  unsigned int j ;
  u16 psize ;
  u32 size ;
  unsigned int tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  tmp = uvc_endpoint_max_bpi((stream->dev)->udev, ep);
  psize = (u16 )tmp;
  size = stream->ctrl.dwMaxVideoFrameSize;
  tmp___0 = uvc_alloc_urb_buffers(stream, size, (unsigned int )psize, gfp_flags);
  npackets = (unsigned int )tmp___0;
  }
  if (npackets == 0U) {
    return (-12);
  } else {
  }
  size = npackets * (unsigned int )psize;
  i = 0U;
  goto ldv_37344;
  ldv_37343:
  {
  urb = ldv_usb_alloc_urb_106((int )npackets, gfp_flags);
  }
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    {
    uvc_uninit_video(stream, 1);
    }
    return (-12);
  } else {
  }
  {
  urb->dev = (stream->dev)->udev;
  urb->context = (void *)stream;
  tmp___1 = __create_pipe((stream->dev)->udev, (unsigned int )ep->desc.bEndpointAddress);
  urb->pipe = tmp___1 | 128U;
  urb->transfer_flags = 6U;
  urb->transfer_dma = stream->urb_dma[i];
  urb->interval = (int )ep->desc.bInterval;
  urb->transfer_buffer = (void *)stream->urb_buffer[i];
  urb->complete = & uvc_video_complete;
  urb->number_of_packets = (int )npackets;
  urb->transfer_buffer_length = size;
  j = 0U;
  }
  goto ldv_37341;
  ldv_37340:
  urb->iso_frame_desc[j].offset = j * (unsigned int )psize;
  urb->iso_frame_desc[j].length = (unsigned int )psize;
  j = j + 1U;
  ldv_37341: ;
  if (j < npackets) {
    goto ldv_37340;
  } else {
  }
  stream->urb[i] = urb;
  i = i + 1U;
  ldv_37344: ;
  if (i <= 4U) {
    goto ldv_37343;
  } else {
  }
  return (0);
}
}
static int uvc_init_video_bulk(struct uvc_streaming *stream , struct usb_host_endpoint *ep ,
                               gfp_t gfp_flags )
{
  struct urb *urb ;
  unsigned int npackets ;
  unsigned int pipe ;
  unsigned int i ;
  u16 psize ;
  u32 size ;
  int tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
  psize = (unsigned int )((u16 )tmp) & 2047U;
  size = stream->ctrl.dwMaxPayloadTransferSize;
  stream->bulk.max_payload_size = size;
  tmp___0 = uvc_alloc_urb_buffers(stream, size, (unsigned int )psize, gfp_flags);
  npackets = (unsigned int )tmp___0;
  }
  if (npackets == 0U) {
    return (-12);
  } else {
  }
  {
  size = npackets * (unsigned int )psize;
  tmp___3 = usb_endpoint_dir_in((struct usb_endpoint_descriptor const *)(& ep->desc));
  }
  if (tmp___3 != 0) {
    {
    tmp___1 = __create_pipe((stream->dev)->udev, (unsigned int )ep->desc.bEndpointAddress);
    pipe = tmp___1 | 3221225600U;
    }
  } else {
    {
    tmp___2 = __create_pipe((stream->dev)->udev, (unsigned int )ep->desc.bEndpointAddress);
    pipe = tmp___2 | 3221225472U;
    }
  }
  if ((unsigned int )stream->type == 2U) {
    size = 0U;
  } else {
  }
  i = 0U;
  goto ldv_37358;
  ldv_37357:
  {
  urb = ldv_usb_alloc_urb_107(0, gfp_flags);
  }
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    {
    uvc_uninit_video(stream, 1);
    }
    return (-12);
  } else {
  }
  {
  usb_fill_bulk_urb(urb, (stream->dev)->udev, pipe, (void *)stream->urb_buffer[i],
                    (int )size, & uvc_video_complete, (void *)stream);
  urb->transfer_flags = 4U;
  urb->transfer_dma = stream->urb_dma[i];
  stream->urb[i] = urb;
  i = i + 1U;
  }
  ldv_37358: ;
  if (i <= 4U) {
    goto ldv_37357;
  } else {
  }
  return (0);
}
}
static int uvc_init_video(struct uvc_streaming *stream , gfp_t gfp_flags )
{
  struct usb_interface *intf ;
  struct usb_host_endpoint *ep ;
  unsigned int i ;
  int ret ;
  struct usb_host_endpoint *best_ep ;
  unsigned int best_psize ;
  unsigned int bandwidth ;
  unsigned int altsetting ;
  int intfnum ;
  struct usb_host_interface *alts ;
  unsigned int psize ;
  {
  {
  intf = stream->intf;
  stream->sequence = 4294967295U;
  stream->last_fid = 255U;
  stream->bulk.header_size = 0U;
  stream->bulk.skip_payload = 0;
  stream->bulk.payload_size = 0U;
  uvc_video_stats_start(stream);
  }
  if (intf->num_altsetting > 1U) {
    best_ep = (struct usb_host_endpoint *)0;
    best_psize = 4294967295U;
    altsetting = altsetting;
    intfnum = stream->intfnum;
    bandwidth = stream->ctrl.dwMaxPayloadTransferSize;
    if (bandwidth == 0U) {
      if ((uvc_trace_param & 1024U) != 0U) {
        {
        printk("\017uvcvideo: Device requested null bandwidth, defaulting to lowest.\n");
        }
      } else {
      }
      bandwidth = 1U;
    } else
    if ((uvc_trace_param & 1024U) != 0U) {
      {
      printk("\017uvcvideo: Device requested %u B/frame bandwidth.\n", bandwidth);
      }
    } else {
    }
    i = 0U;
    goto ldv_37377;
    ldv_37376:
    {
    alts = intf->altsetting + (unsigned long )i;
    ep = uvc_find_endpoint(alts, (int )stream->header.bEndpointAddress);
    }
    if ((unsigned long )ep == (unsigned long )((struct usb_host_endpoint *)0)) {
      goto ldv_37375;
    } else {
    }
    {
    psize = uvc_endpoint_max_bpi((stream->dev)->udev, ep);
    }
    if (psize >= bandwidth && psize <= best_psize) {
      altsetting = (unsigned int )alts->desc.bAlternateSetting;
      best_psize = psize;
      best_ep = ep;
    } else {
    }
    ldv_37375:
    i = i + 1U;
    ldv_37377: ;
    if (i < intf->num_altsetting) {
      goto ldv_37376;
    } else {
    }
    if ((unsigned long )best_ep == (unsigned long )((struct usb_host_endpoint *)0)) {
      if ((uvc_trace_param & 1024U) != 0U) {
        {
        printk("\017uvcvideo: No fast enough alt setting for requested bandwidth.\n");
        }
      } else {
      }
      return (-5);
    } else {
    }
    if ((uvc_trace_param & 1024U) != 0U) {
      {
      printk("\017uvcvideo: Selecting alternate setting %u (%u B/frame bandwidth).\n",
             altsetting, best_psize);
      }
    } else {
    }
    {
    ret = usb_set_interface((stream->dev)->udev, intfnum, (int )altsetting);
    }
    if (ret < 0) {
      return (ret);
    } else {
    }
    {
    ret = uvc_init_video_isoc(stream, best_ep, gfp_flags);
    }
  } else {
    {
    ep = uvc_find_endpoint(intf->altsetting, (int )stream->header.bEndpointAddress);
    }
    if ((unsigned long )ep == (unsigned long )((struct usb_host_endpoint *)0)) {
      return (-5);
    } else {
    }
    {
    ret = uvc_init_video_bulk(stream, ep, gfp_flags);
    }
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  i = 0U;
  goto ldv_37380;
  ldv_37379:
  {
  ret = ldv_usb_submit_urb_108(stream->urb[i], gfp_flags);
  }
  if (ret < 0) {
    {
    printk("\vuvcvideo: Failed to submit URB %u (%d).\n", i, ret);
    uvc_uninit_video(stream, 1);
    }
    return (ret);
  } else {
  }
  i = i + 1U;
  ldv_37380: ;
  if (i <= 4U) {
    goto ldv_37379;
  } else {
  }
  if (((stream->dev)->quirks & 1024U) != 0U) {
    {
    uvc_ctrl_restore_values(stream->dev);
    }
  } else {
  }
  return (0);
}
}
int uvc_video_suspend(struct uvc_streaming *stream )
{
  int tmp ;
  {
  {
  tmp = uvc_queue_streaming(& stream->queue);
  }
  if (tmp == 0) {
    return (0);
  } else {
  }
  {
  stream->frozen = 1U;
  uvc_uninit_video(stream, 0);
  usb_set_interface((stream->dev)->udev, stream->intfnum, 0);
  }
  return (0);
}
}
int uvc_video_resume(struct uvc_streaming *stream , int reset )
{
  int ret ;
  int tmp ;
  int tmp___0 ;
  {
  if (reset != 0) {
    {
    usb_set_interface((stream->dev)->udev, stream->intfnum, 0);
    }
  } else {
  }
  {
  stream->frozen = 0U;
  uvc_video_clock_reset(stream);
  tmp = uvc_queue_streaming(& stream->queue);
  }
  if (tmp == 0) {
    return (0);
  } else {
  }
  {
  ret = uvc_commit_video(stream, & stream->ctrl);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  tmp___0 = uvc_init_video(stream, 16U);
  }
  return (tmp___0);
}
}
int uvc_video_init(struct uvc_streaming *stream )
{
  struct uvc_streaming_control *probe ;
  struct uvc_format *format ;
  struct uvc_frame *frame ;
  unsigned int i ;
  int ret ;
  int tmp ;
  {
  probe = & stream->ctrl;
  format = (struct uvc_format *)0;
  frame = (struct uvc_frame *)0;
  if (stream->nformats == 0U) {
    {
    printk("\016uvcvideo: No supported video formats found.\n");
    }
    return (-22);
  } else {
  }
  {
  atomic_set(& stream->active, 0);
  usb_set_interface((stream->dev)->udev, stream->intfnum, 0);
  tmp = uvc_get_video_ctrl(stream, probe, 1, 135);
  }
  if (tmp == 0) {
    {
    uvc_set_video_ctrl(stream, probe, 1);
    }
  } else {
  }
  {
  ret = uvc_get_video_ctrl(stream, probe, 1, 129);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  i = stream->nformats;
  goto ldv_37400;
  ldv_37399:
  format = stream->format + (unsigned long )(i - 1U);
  if ((int )format->index == (int )probe->bFormatIndex) {
    goto ldv_37398;
  } else {
  }
  i = i - 1U;
  ldv_37400: ;
  if (i != 0U) {
    goto ldv_37399;
  } else {
  }
  ldv_37398: ;
  if (format->nframes == 0U) {
    {
    printk("\016uvcvideo: No frame descriptor found for the default format.\n");
    }
    return (-22);
  } else {
  }
  i = format->nframes;
  goto ldv_37403;
  ldv_37402:
  frame = format->frame + (unsigned long )(i - 1U);
  if ((int )frame->bFrameIndex == (int )probe->bFrameIndex) {
    goto ldv_37401;
  } else {
  }
  i = i - 1U;
  ldv_37403: ;
  if (i != 0U) {
    goto ldv_37402;
  } else {
  }
  ldv_37401:
  probe->bFormatIndex = format->index;
  probe->bFrameIndex = frame->bFrameIndex;
  stream->def_format = format;
  stream->cur_format = format;
  stream->cur_frame = frame;
  if ((unsigned int )stream->type == 1U) {
    if (((stream->dev)->quirks & 8U) != 0U) {
      stream->decode = & uvc_video_decode_isight;
    } else
    if ((stream->intf)->num_altsetting > 1U) {
      stream->decode = & uvc_video_decode_isoc;
    } else {
      stream->decode = & uvc_video_decode_bulk;
    }
  } else
  if ((stream->intf)->num_altsetting == 1U) {
    stream->decode = & uvc_video_encode_bulk;
  } else {
    {
    printk("\016uvcvideo: Isochronous endpoints are not supported for video output devices.\n");
    }
    return (-22);
  }
  return (0);
}
}
int uvc_video_enable(struct uvc_streaming *stream , int enable )
{
  int ret ;
  unsigned int epnum ;
  unsigned int dir ;
  unsigned int pipe ;
  unsigned int tmp ;
  {
  if (enable == 0) {
    {
    uvc_uninit_video(stream, 1);
    }
    if ((stream->intf)->num_altsetting > 1U) {
      {
      usb_set_interface((stream->dev)->udev, stream->intfnum, 0);
      }
    } else {
      {
      epnum = (unsigned int )stream->header.bEndpointAddress & 15U;
      dir = (unsigned int )stream->header.bEndpointAddress & 128U;
      tmp = __create_pipe((stream->dev)->udev, epnum);
      pipe = (tmp | dir) | 3221225472U;
      usb_clear_halt((stream->dev)->udev, (int )pipe);
      }
    }
    {
    uvc_video_clock_cleanup(stream);
    }
    return (0);
  } else {
  }
  {
  ret = uvc_video_clock_init(stream);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = uvc_commit_video(stream, & stream->ctrl);
  }
  if (ret < 0) {
    goto error_commit;
  } else {
  }
  {
  ret = uvc_init_video(stream, 208U);
  }
  if (ret < 0) {
    goto error_video;
  } else {
  }
  return (0);
  error_video:
  {
  usb_set_interface((stream->dev)->udev, stream->intfnum, 0);
  }
  error_commit:
  {
  uvc_video_clock_cleanup(stream);
  }
  return (ret);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_uvc_clock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_97___0(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_uvc_clock();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_98___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_uvc_clock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_irqlock_of_uvc_video_queue();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_usb_submit_urb_102(struct urb *ldv_func_arg1 , gfp_t flags )
{
  {
  {
  ldv_check_alloc_flags(flags);
  }
  return __VERIFIER_nondet_int();
}
}
static void ldv_usb_free_coherent_103(struct usb_device *dev , size_t size , void *addr ,
                                      dma_addr_t dma )
{
  {
  {
  ldv_linux_usb_coherent_usb_free_coherent(addr);
  }
  return;
}
}
static void *ldv_usb_alloc_coherent_104(struct usb_device *ldv_func_arg1 , size_t ldv_func_arg2 ,
                                        gfp_t flags , dma_addr_t *ldv_func_arg4 )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = ldv_linux_usb_coherent_usb_alloc_coherent();
  res = tmp;
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  ldv_linux_alloc_irq_check_alloc_flags(flags);
  ldv_linux_alloc_usb_lock_check_alloc_flags(flags);
  }
  return (res);
}
}
static void ldv_usb_free_urb_105(struct urb *urb )
{
  {
  {
  ldv_linux_usb_urb_usb_free_urb(urb);
  }
  return;
}
}
void *ldv_malloc(size_t size ) ;
static struct urb *ldv_usb_alloc_urb_106(int ldv_func_arg1 , gfp_t flags )
{
  struct urb *res ;
  struct urb *tmp ;
  long tmp___0 ;
  {
  {
  tmp = ldv_linux_usb_urb_usb_alloc_urb();
  res = tmp;
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  ldv_linux_alloc_irq_check_alloc_flags(flags);
  ldv_linux_alloc_usb_lock_check_alloc_flags(flags);
  }
  return (res);
}
}
static struct urb *ldv_usb_alloc_urb_107(int ldv_func_arg1 , gfp_t flags )
{
  struct urb *res ;
  struct urb *tmp ;
  long tmp___0 ;
  {
  {
  tmp = ldv_linux_usb_urb_usb_alloc_urb();
  res = tmp;
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  ldv_linux_alloc_irq_check_alloc_flags(flags);
  ldv_linux_alloc_usb_lock_check_alloc_flags(flags);
  }
  return (res);
}
}
static int ldv_usb_submit_urb_108(struct urb *ldv_func_arg1 , gfp_t flags )
{
  {
  {
  ldv_check_alloc_flags(flags);
  }
  return __VERIFIER_nondet_int();
}
}
static void ldv_mutex_lock_104___1(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_98(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_100(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_102(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_106(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_108(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_110(struct mutex *ldv_func_arg1 ) ;
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_ctrl_mutex_of_uvc_video_chain(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_ctrl_mutex_of_uvc_video_chain(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_ctrl_mutex_of_uvc_video_chain(struct mutex *lock ) ;
extern size_t memweight(void const * , size_t ) ;
__inline static void atomic_dec(atomic_t *v ) ;
__inline static int atomic_add_return(int i , atomic_t *v ) ;
static void ldv_mutex_unlock_99___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_101___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_103___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_105___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_107___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_109___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_111___1(struct mutex *ldv_func_arg1 ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_to_user_overflow(void) ;
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
extern int usb_match_one_id(struct usb_interface * , struct usb_device_id const * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void v4l2_ctrl_replace(struct v4l2_event * , struct v4l2_event const * ) ;
extern void v4l2_ctrl_merge(struct v4l2_event const * , struct v4l2_event * ) ;
extern void v4l2_event_queue_fh(struct v4l2_fh * , struct v4l2_event const * ) ;
static struct uvc_control_info uvc_ctrls[35U] =
  { {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 0U,
      2U, 2U, 127U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 1U,
      3U, 2U, 127U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 2U,
      6U, 2U, 255U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 3U,
      7U, 2U, 127U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 4U,
      8U, 2U, 127U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 5U,
      9U, 2U, 127U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 6U,
      10U, 2U, 255U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 7U,
      12U, 4U, 255U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 8U,
      1U, 2U, 127U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 9U,
      4U, 2U, 127U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 10U,
      5U, 1U, 99U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 11U,
      16U, 1U, 99U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 12U,
      11U, 1U, 99U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 13U,
      13U, 1U, 99U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 14U,
      14U, 2U, 127U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 15U,
      15U, 2U, 127U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 16U,
      17U, 1U, 2U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 17U,
      18U, 1U, 2U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 0U,
      1U, 1U, 67U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 1U,
      2U, 1U, 115U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 2U,
      3U, 1U, 67U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 3U,
      4U, 4U, 127U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 4U,
      5U, 1U, 65U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 5U,
      6U, 2U, 255U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 6U,
      7U, 2U, 189U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 7U,
      9U, 2U, 255U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 8U,
      10U, 1U, 129U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 9U,
      11U, 2U, 255U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 10U,
      12U, 3U, 189U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 11U,
      13U, 8U, 255U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 12U,
      14U, 4U, 191U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 13U,
      15U, 2U, 255U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 14U,
      16U, 2U, 189U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 17U,
      8U, 1U, 99U},
        {{0, 0}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 18U,
      17U, 1U, 195U}};
static struct uvc_menu_info power_line_frequency_controls[3U] = { {0U, {'D', 'i', 's', 'a', 'b', 'l', 'e', 'd', '\000'}},
        {1U, {'5', '0', ' ', 'H', 'z', '\000'}},
        {2U, {'6', '0', ' ', 'H', 'z', '\000'}}};
static struct uvc_menu_info exposure_auto_controls[4U] = { {2U, {'A', 'u', 't', 'o', ' ', 'M', 'o', 'd', 'e', '\000'}},
        {1U, {'M', 'a', 'n', 'u', 'a', 'l', ' ', 'M', 'o', 'd', 'e', '\000'}},
        {4U, {'S', 'h', 'u', 't', 't', 'e', 'r', ' ', 'P', 'r', 'i', 'o', 'r', 'i', 't',
           'y', ' ', 'M', 'o', 'd', 'e', '\000'}},
        {8U, {'A', 'p', 'e', 'r', 't', 'u', 'r', 'e', ' ', 'P', 'r', 'i', 'o', 'r', 'i',
           't', 'y', ' ', 'M', 'o', 'd', 'e', '\000'}}};
static __s32 uvc_ctrl_get_zoom(struct uvc_control_mapping *mapping , __u8 query ,
                               __u8 const *data )
{
  __s8 zoom ;
  {
  zoom = (signed char )*data;
  {
  if ((int )query == 129) {
    goto case_129;
  } else {
  }
  if ((int )query == 130) {
    goto case_130;
  } else {
  }
  if ((int )query == 131) {
    goto case_131;
  } else {
  }
  if ((int )query == 132) {
    goto case_132;
  } else {
  }
  if ((int )query == 135) {
    goto case_135;
  } else {
  }
  goto switch_default;
  case_129: ;
  return ((int )zoom != 0 ? ((int )zoom > 0 ? (__s32 )*(data + 2UL) : - ((int )*(data + 2UL))) : 0);
  case_130: ;
  case_131: ;
  case_132: ;
  case_135: ;
  switch_default: ;
  return ((__s32 )*(data + 2UL));
  switch_break: ;
  }
}
}
static void uvc_ctrl_set_zoom(struct uvc_control_mapping *mapping , __s32 value ,
                              __u8 *data )
{
  int _min1 ;
  long ret ;
  int __x___0 ;
  int _min2 ;
  {
  *data = value != 0 ? (value > 0 ? 1U : 255U) : 0U;
  __x___0 = value;
  ret = (long )(__x___0 < 0 ? - __x___0 : __x___0);
  _min1 = (int )ret;
  _min2 = 255;
  *(data + 2UL) = (__u8 )(_min1 < _min2 ? _min1 : _min2);
  return;
}
}
static __s32 uvc_ctrl_get_rel_speed(struct uvc_control_mapping *mapping , __u8 query ,
                                    __u8 const *data )
{
  unsigned int first ;
  __s8 rel ;
  {
  first = (unsigned int )mapping->offset / 8U;
  rel = (signed char )*(data + (unsigned long )first);
  {
  if ((int )query == 129) {
    goto case_129;
  } else {
  }
  if ((int )query == 130) {
    goto case_130;
  } else {
  }
  if ((int )query == 131) {
    goto case_131;
  } else {
  }
  if ((int )query == 132) {
    goto case_132;
  } else {
  }
  if ((int )query == 135) {
    goto case_135;
  } else {
  }
  goto switch_default;
  case_129: ;
  return ((int )rel != 0 ? ((int )rel > 0 ? (__s32 )*(data + (unsigned long )(first + 1U)) : - ((int )*(data + (unsigned long )(first + 1U)))) : 0);
  case_130: ;
  return (- ((int )*(data + (unsigned long )(first + 1U))));
  case_131: ;
  case_132: ;
  case_135: ;
  switch_default: ;
  return ((__s32 )*(data + (unsigned long )(first + 1U)));
  switch_break: ;
  }
}
}
static void uvc_ctrl_set_rel_speed(struct uvc_control_mapping *mapping , __s32 value ,
                                   __u8 *data )
{
  unsigned int first ;
  int __min1 ;
  long ret ;
  int __x___0 ;
  int __min2 ;
  {
  first = (unsigned int )mapping->offset / 8U;
  *(data + (unsigned long )first) = value != 0 ? (value > 0 ? 1U : 255U) : 0U;
  __x___0 = value;
  ret = (long )(__x___0 < 0 ? - __x___0 : __x___0);
  __min1 = (int )ret;
  __min2 = 255;
  *(data + (unsigned long )(first + 1U)) = (__u8 )(__min1 < __min2 ? __min1 : __min2);
  return;
}
}
static struct uvc_control_mapping uvc_ctrl_mappings[29U] =
  { {{0, 0}, {0, 0}, 9963776U, {'B', 'r', 'i', 'g', 'h', 't', 'n', 'e', 's', 's',
                                 '\000'}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U,
                                           0U, 0U, 0U, 0U, 1U, 1U}, 2U, 16U, 0U, 1,
      1U, 0, 0U, 0U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 9963777U, {'C', 'o', 'n', 't', 'r', 'a', 's', 't', '\000'},
      {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 3U, 16U, 0U,
      1, 2U, 0, 0U, 0U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 9963779U, {'H', 'u', 'e', '\000'}, {0U, 0U, 0U, 0U, 0U, 0U,
                                                          0U, 0U, 0U, 0U, 0U, 0U,
                                                          0U, 0U, 1U, 1U}, 6U, 16U,
      0U, 1, 1U, 0, 0U, 9963801U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 9963778U, {'S', 'a', 't', 'u', 'r', 'a', 't', 'i', 'o', 'n',
                                 '\000'}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U,
                                           0U, 0U, 0U, 0U, 1U, 1U}, 7U, 16U, 0U, 1,
      2U, 0, 0U, 0U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 9963803U, {'S', 'h', 'a', 'r', 'p', 'n', 'e', 's', 's', '\000'},
      {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 8U, 16U, 0U,
      1, 2U, 0, 0U, 0U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 9963792U, {'G', 'a', 'm', 'm', 'a', '\000'}, {0U, 0U, 0U, 0U,
                                                                    0U, 0U, 0U, 0U,
                                                                    0U, 0U, 0U, 0U,
                                                                    0U, 0U, 1U, 1U},
      9U, 16U, 0U, 1, 2U, 0, 0U, 0U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 9963804U, {'B', 'a', 'c', 'k', 'l', 'i', 'g', 'h', 't', ' ',
                                 'C', 'o', 'm', 'p', 'e', 'n', 's', 'a', 't', 'i',
                                 'o', 'n', '\000'}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U,
                                                     0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U},
      1U, 16U, 0U, 1, 2U, 0, 0U, 0U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 9963795U, {'G', 'a', 'i', 'n', '\000'}, {0U, 0U, 0U, 0U, 0U,
                                                               0U, 0U, 0U, 0U, 0U,
                                                               0U, 0U, 0U, 0U, 1U,
                                                               1U}, 4U, 16U, 0U, 1,
      2U, 0, 0U, 0U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 9963800U, {'P', 'o', 'w', 'e', 'r', ' ', 'L', 'i', 'n', 'e',
                                 ' ', 'F', 'r', 'e', 'q', 'u', 'e', 'n', 'c', 'y',
                                 '\000'}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U,
                                           0U, 0U, 0U, 0U, 1U, 1U}, 5U, 2U, 0U, 3,
      4U, (struct uvc_menu_info *)(& power_line_frequency_controls), 3U, 0U, 0, {0U,
                                                                                 0U},
      0, 0},
        {{0, 0}, {0, 0}, 9963801U, {'H', 'u', 'e', ',', ' ', 'A', 'u', 't', 'o', '\000'},
      {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 16U, 1U, 0U,
      2, 3U, 0, 0U, 0U, 0, {9963779U}, 0, 0},
        {{0, 0}, {0, 0}, 10094849U, {'E', 'x', 'p', 'o', 's', 'u', 'r', 'e', ',', ' ',
                                  'A', 'u', 't', 'o', '\000'}, {0U, 0U, 0U, 0U, 0U,
                                                                0U, 0U, 0U, 0U, 0U,
                                                                0U, 0U, 0U, 0U, 0U,
                                                                1U}, 2U, 4U, 0U, 3,
      5U, (struct uvc_menu_info *)(& exposure_auto_controls), 4U, 0U, 0, {10094850U},
      0, 0},
        {{0, 0}, {0, 0}, 10094851U, {'E', 'x', 'p', 'o', 's', 'u', 'r', 'e', ',', ' ',
                                  'A', 'u', 't', 'o', ' ', 'P', 'r', 'i', 'o', 'r',
                                  'i', 't', 'y', '\000'}, {0U, 0U, 0U, 0U, 0U, 0U,
                                                           0U, 0U, 0U, 0U, 0U, 0U,
                                                           0U, 0U, 0U, 1U}, 3U, 1U,
      0U, 2, 3U, 0, 0U, 0U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 10094850U, {'E', 'x', 'p', 'o', 's', 'u', 'r', 'e', ' ', '(',
                                  'A', 'b', 's', 'o', 'l', 'u', 't', 'e', ')', '\000'},
      {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 4U, 32U, 0U,
      1, 2U, 0, 0U, 10094849U, 1, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 9963788U, {'W', 'h', 'i', 't', 'e', ' ', 'B', 'a', 'l', 'a',
                                 'n', 'c', 'e', ' ', 'T', 'e', 'm', 'p', 'e', 'r',
                                 'a', 't', 'u', 'r', 'e', ',', ' ', 'A', 'u', 't',
                                 'o', '\000'}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U,
                                                0U, 0U, 0U, 0U, 0U, 1U, 1U}, 11U,
      1U, 0U, 2, 3U, 0, 0U, 0U, 0, {9963802U}, 0, 0},
        {{0, 0}, {0, 0}, 9963802U, {'W', 'h', 'i', 't', 'e', ' ', 'B', 'a', 'l', 'a',
                                 'n', 'c', 'e', ' ', 'T', 'e', 'm', 'p', 'e', 'r',
                                 'a', 't', 'u', 'r', 'e', '\000'}, {0U, 0U, 0U, 0U,
                                                                    0U, 0U, 0U, 0U,
                                                                    0U, 0U, 0U, 0U,
                                                                    0U, 0U, 1U, 1U},
      10U, 16U, 0U, 1, 2U, 0, 0U, 9963788U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 9963788U, {'W', 'h', 'i', 't', 'e', ' ', 'B', 'a', 'l', 'a',
                                 'n', 'c', 'e', ' ', 'C', 'o', 'm', 'p', 'o', 'n',
                                 'e', 'n', 't', ',', ' ', 'A', 'u', 't', 'o', '\000'},
      {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 13U, 1U, 0U,
      2, 3U, 0, 0U, 0U, 0, {9963791U, 9963790U}, 0, 0},
        {{0, 0}, {0, 0}, 9963791U, {'W', 'h', 'i', 't', 'e', ' ', 'B', 'a', 'l', 'a',
                                 'n', 'c', 'e', ' ', 'B', 'l', 'u', 'e', ' ', 'C',
                                 'o', 'm', 'p', 'o', 'n', 'e', 'n', 't', '\000'},
      {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U}, 12U, 16U,
      0U, 1, 1U, 0, 0U, 9963788U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 9963790U, {'W', 'h', 'i', 't', 'e', ' ', 'B', 'a', 'l', 'a',
                                 'n', 'c', 'e', ' ', 'R', 'e', 'd', ' ', 'C', 'o',
                                 'm', 'p', 'o', 'n', 'e', 'n', 't', '\000'}, {0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              1U,
                                                                              1U},
      12U, 16U, 16U, 1, 1U, 0, 0U, 9963788U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 10094858U, {'F', 'o', 'c', 'u', 's', ' ', '(', 'a', 'b', 's',
                                  'o', 'l', 'u', 't', 'e', ')', '\000'}, {0U, 0U,
                                                                          0U, 0U,
                                                                          0U, 0U,
                                                                          0U, 0U,
                                                                          0U, 0U,
                                                                          0U, 0U,
                                                                          0U, 0U,
                                                                          0U, 1U},
      6U, 16U, 0U, 1, 2U, 0, 0U, 10094860U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 10094860U, {'F', 'o', 'c', 'u', 's', ',', ' ', 'A', 'u', 't',
                                  'o', '\000'}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U,
                                                 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 8U,
      1U, 0U, 2, 3U, 0, 0U, 0U, 0, {10094858U}, 0, 0},
        {{0, 0}, {0, 0}, 10094865U, {'I', 'r', 'i', 's', ',', ' ', 'A', 'b', 's', 'o',
                                  'l', 'u', 't', 'e', '\000'}, {0U, 0U, 0U, 0U, 0U,
                                                                0U, 0U, 0U, 0U, 0U,
                                                                0U, 0U, 0U, 0U, 0U,
                                                                1U}, 9U, 16U, 0U,
      1, 2U, 0, 0U, 0U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 10094866U, {'I', 'r', 'i', 's', ',', ' ', 'R', 'e', 'l', 'a',
                                  't', 'i', 'v', 'e', '\000'}, {0U, 0U, 0U, 0U, 0U,
                                                                0U, 0U, 0U, 0U, 0U,
                                                                0U, 0U, 0U, 0U, 0U,
                                                                1U}, 10U, 8U, 0U,
      1, 1U, 0, 0U, 0U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 10094861U, {'Z', 'o', 'o', 'm', ',', ' ', 'A', 'b', 's', 'o',
                                  'l', 'u', 't', 'e', '\000'}, {0U, 0U, 0U, 0U, 0U,
                                                                0U, 0U, 0U, 0U, 0U,
                                                                0U, 0U, 0U, 0U, 0U,
                                                                1U}, 11U, 16U, 0U,
      1, 2U, 0, 0U, 0U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 10094863U, {'Z', 'o', 'o', 'm', ',', ' ', 'C', 'o', 'n', 't',
                                  'i', 'n', 'u', 'o', 'u', 's', '\000'}, {0U, 0U,
                                                                          0U, 0U,
                                                                          0U, 0U,
                                                                          0U, 0U,
                                                                          0U, 0U,
                                                                          0U, 0U,
                                                                          0U, 0U,
                                                                          0U, 1U},
      12U, 0U, 0U, 1, 1U, 0, 0U, 0U, 0, {0U, 0U}, & uvc_ctrl_get_zoom, & uvc_ctrl_set_zoom},
        {{0,
       0}, {0, 0}, 10094856U, {'P', 'a', 'n', ' ', '(', 'A', 'b', 's', 'o', 'l', 'u',
                               't', 'e', ')', '\000'}, {0U, 0U, 0U, 0U, 0U, 0U, 0U,
                                                        0U, 0U, 0U, 0U, 0U, 0U, 0U,
                                                        0U, 1U}, 13U, 32U, 0U, 1,
      1U, 0, 0U, 0U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 10094857U, {'T', 'i', 'l', 't', ' ', '(', 'A', 'b', 's', 'o',
                                  'l', 'u', 't', 'e', ')', '\000'}, {0U, 0U, 0U, 0U,
                                                                     0U, 0U, 0U, 0U,
                                                                     0U, 0U, 0U, 0U,
                                                                     0U, 0U, 0U, 1U},
      13U, 32U, 32U, 1, 1U, 0, 0U, 0U, 0, {0U, 0U}, 0, 0},
        {{0, 0}, {0, 0}, 10094880U, {'P', 'a', 'n', ' ', '(', 'S', 'p', 'e', 'e', 'd',
                                  ')', '\000'}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U,
                                                 0U, 0U, 0U, 0U, 0U, 0U, 1U}, 14U,
      16U, 0U, 1, 1U, 0, 0U, 0U, 0, {0U, 0U}, & uvc_ctrl_get_rel_speed, & uvc_ctrl_set_rel_speed},
        {{0,
       0}, {0, 0}, 10094881U, {'T', 'i', 'l', 't', ' ', '(', 'S', 'p', 'e', 'e', 'd',
                               ')', '\000'}, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U,
                                              0U, 0U, 0U, 0U, 0U, 0U, 1U}, 14U, 16U,
      16U, 1, 1U, 0, 0U, 0U, 0, {0U, 0U}, & uvc_ctrl_get_rel_speed, & uvc_ctrl_set_rel_speed},
        {{0,
       0}, {0, 0}, 10094864U, {'P', 'r', 'i', 'v', 'a', 'c', 'y', '\000'}, {0U, 0U,
                                                                            0U, 0U,
                                                                            0U, 0U,
                                                                            0U, 0U,
                                                                            0U, 0U,
                                                                            0U, 0U,
                                                                            0U, 0U,
                                                                            0U, 1U},
      17U, 1U, 0U, 2, 3U, 0, 0U, 0U, 0, {0U, 0U}, 0, 0}};
__inline static __u8 *uvc_ctrl_data(struct uvc_control *ctrl , int id )
{
  {
  return (ctrl->uvc_data + (unsigned long )(id * (int )ctrl->info.size));
}
}
__inline static int uvc_test_bit(__u8 const *data , int bit )
{
  {
  return (((int )*(data + (unsigned long )(bit >> 3)) >> (bit & 7)) & 1);
}
}
__inline static void uvc_clear_bit(__u8 *data , int bit )
{
  {
  *(data + (unsigned long )(bit >> 3)) = (__u8 )((int )((signed char )*(data + (unsigned long )(bit >> 3))) & ~ ((int )((signed char )(1 << (bit & 7)))));
  return;
}
}
static __s32 uvc_get_le_value(struct uvc_control_mapping *mapping , __u8 query , __u8 const *data )
{
  int bits ;
  int offset ;
  __s32 value ;
  __u8 mask ;
  __u8 byte ;
  {
  bits = (int )mapping->size;
  offset = (int )mapping->offset;
  value = 0;
  data = data + (unsigned long )(offset / 8);
  offset = offset & 7;
  mask = (__u8 )(((1LL << bits) + -1LL) << offset);
  goto ldv_37352;
  ldv_37351:
  byte = (__u8 )((int )((unsigned char )*data) & (int )mask);
  value = value | (offset > 0 ? (int )byte >> offset : (int )byte << - offset);
  bits = bits + ((0 > offset ? 0 : offset) + -8);
  offset = offset + -8;
  mask = (unsigned int )((__u8 )(1 << bits)) + 255U;
  data = data + 1;
  ldv_37352: ;
  if (bits > 0) {
    goto ldv_37351;
  } else {
  }
  if (mapping->data_type == 1U) {
    value = value | - (value & (1 << ((int )mapping->size + -1)));
  } else {
  }
  return (value);
}
}
static void uvc_set_le_value(struct uvc_control_mapping *mapping , __s32 value , __u8 *data )
{
  int bits ;
  int offset ;
  __u8 mask ;
  {
  bits = (int )mapping->size;
  offset = (int )mapping->offset;
  if ((unsigned int )mapping->v4l2_type == 4U) {
    value = -1;
  } else {
  }
  data = data + (unsigned long )(offset / 8);
  offset = offset & 7;
  goto ldv_37363;
  ldv_37362:
  mask = (__u8 )(((1LL << bits) + -1LL) << offset);
  *data = (__u8 )(((int )((signed char )*data) & ~ ((int )((signed char )mask))) | ((int )((signed char )(value << offset)) & (int )((signed char )mask)));
  value = value >> (offset != 0 ? offset : 8);
  bits = bits + (offset + -8);
  offset = 0;
  data = data + 1;
  ldv_37363: ;
  if (bits > 0) {
    goto ldv_37362;
  } else {
  }
  return;
}
}
static __u8 const uvc_processing_guid[16U] =
  { 0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 1U, 1U};
static __u8 const uvc_camera_guid[16U] =
  { 0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 1U};
static __u8 const uvc_media_transport_input_guid[16U] =
  { 0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 3U};
static int uvc_entity_match_guid(struct uvc_entity const *entity , __u8 const *guid )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  if (((int )entity->type & 32767) == 513) {
    goto case_513;
  } else {
  }
  if (((int )entity->type & 32767) == 514) {
    goto case_514;
  } else {
  }
  if (((int )entity->type & 32767) == 5) {
    goto case_5;
  } else {
  }
  if (((int )entity->type & 32767) == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_513:
  {
  tmp = memcmp((void const *)(& uvc_camera_guid), (void const *)guid, 16UL);
  }
  return (tmp == 0);
  case_514:
  {
  tmp___0 = memcmp((void const *)(& uvc_media_transport_input_guid), (void const *)guid,
                   16UL);
  }
  return (tmp___0 == 0);
  case_5:
  {
  tmp___1 = memcmp((void const *)(& uvc_processing_guid), (void const *)guid,
                   16UL);
  }
  return (tmp___1 == 0);
  case_6:
  {
  tmp___2 = memcmp((void const *)(& entity->__annonCompField85.extension.guidExtensionCode),
                   (void const *)guid, 16UL);
  }
  return (tmp___2 == 0);
  switch_default: ;
  return (0);
  switch_break: ;
  }
}
}
static void __uvc_find_control(struct uvc_entity *entity , __u32 v4l2_id , struct uvc_control_mapping **mapping ,
                               struct uvc_control **control , int next )
{
  struct uvc_control *ctrl ;
  struct uvc_control_mapping *map ;
  unsigned int i ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  if ((unsigned long )entity == (unsigned long )((struct uvc_entity *)0)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_37396;
  ldv_37395:
  ctrl = entity->controls + (unsigned long )i;
  if ((unsigned int )*((unsigned char *)ctrl + 49UL) == 0U) {
    goto ldv_37387;
  } else {
  }
  __mptr = (struct list_head const *)ctrl->info.mappings.next;
  map = (struct uvc_control_mapping *)__mptr;
  goto ldv_37393;
  ldv_37392: ;
  if (map->id == v4l2_id && next == 0) {
    *control = ctrl;
    *mapping = map;
    return;
  } else {
  }
  if (((unsigned long )*mapping == (unsigned long )((struct uvc_control_mapping *)0) || (*mapping)->id > map->id) && (map->id > v4l2_id && next != 0)) {
    *control = ctrl;
    *mapping = map;
  } else {
  }
  __mptr___0 = (struct list_head const *)map->list.next;
  map = (struct uvc_control_mapping *)__mptr___0;
  ldv_37393: ;
  if ((unsigned long )(& map->list) != (unsigned long )(& ctrl->info.mappings)) {
    goto ldv_37392;
  } else {
  }
  ldv_37387:
  i = i + 1U;
  ldv_37396: ;
  if (i < entity->ncontrols) {
    goto ldv_37395;
  } else {
  }
  return;
}
}
static struct uvc_control *uvc_find_control(struct uvc_video_chain *chain , __u32 v4l2_id ,
                                            struct uvc_control_mapping **mapping )
{
  struct uvc_control *ctrl ;
  struct uvc_entity *entity ;
  int next ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  ctrl = (struct uvc_control *)0;
  next = (long )((int )v4l2_id) & (-0x7FFFFFFF-1);
  *mapping = (struct uvc_control_mapping *)0;
  v4l2_id = v4l2_id & 268435455U;
  __mptr = (struct list_head const *)chain->entities.next;
  entity = (struct uvc_entity *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_37411;
  ldv_37410:
  {
  __uvc_find_control(entity, v4l2_id, mapping, & ctrl, next);
  }
  if ((unsigned long )ctrl != (unsigned long )((struct uvc_control *)0) && next == 0) {
    return (ctrl);
  } else {
  }
  __mptr___0 = (struct list_head const *)entity->chain.next;
  entity = (struct uvc_entity *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_37411: ;
  if ((unsigned long )(& entity->chain) != (unsigned long )(& chain->entities)) {
    goto ldv_37410;
  } else {
  }
  if ((unsigned long )ctrl == (unsigned long )((struct uvc_control *)0) && next == 0) {
    if ((uvc_trace_param & 4U) != 0U) {
      {
      printk("\017uvcvideo: Control 0x%08x not found.\n", v4l2_id);
      }
    } else {
    }
  } else {
  }
  return (ctrl);
}
}
static int uvc_ctrl_populate_cache(struct uvc_video_chain *chain , struct uvc_control *ctrl )
{
  int ret ;
  __u8 *tmp ;
  __u8 *tmp___0 ;
  __u8 *tmp___1 ;
  __u8 *tmp___2 ;
  int tmp___3 ;
  __u8 *tmp___4 ;
  {
  if ((ctrl->info.flags & 32U) != 0U) {
    {
    tmp = uvc_ctrl_data(ctrl, 5);
    ret = uvc_query_ctrl(chain->dev, 135, (int )(ctrl->entity)->id, (int )((__u8 )(chain->dev)->intfnum),
                         (int )ctrl->info.selector, (void *)tmp, (int )ctrl->info.size);
    }
    if (ret < 0) {
      return (ret);
    } else {
    }
  } else {
  }
  if ((ctrl->info.flags & 4U) != 0U) {
    {
    tmp___0 = uvc_ctrl_data(ctrl, 2);
    ret = uvc_query_ctrl(chain->dev, 130, (int )(ctrl->entity)->id, (int )((__u8 )(chain->dev)->intfnum),
                         (int )ctrl->info.selector, (void *)tmp___0, (int )ctrl->info.size);
    }
    if (ret < 0) {
      return (ret);
    } else {
    }
  } else {
  }
  if ((ctrl->info.flags & 8U) != 0U) {
    {
    tmp___1 = uvc_ctrl_data(ctrl, 3);
    ret = uvc_query_ctrl(chain->dev, 131, (int )(ctrl->entity)->id, (int )((__u8 )(chain->dev)->intfnum),
                         (int )ctrl->info.selector, (void *)tmp___1, (int )ctrl->info.size);
    }
    if (ret < 0) {
      return (ret);
    } else {
    }
  } else {
  }
  if ((ctrl->info.flags & 16U) != 0U) {
    {
    tmp___2 = uvc_ctrl_data(ctrl, 4);
    ret = uvc_query_ctrl(chain->dev, 132, (int )(ctrl->entity)->id, (int )((__u8 )(chain->dev)->intfnum),
                         (int )ctrl->info.selector, (void *)tmp___2, (int )ctrl->info.size);
    }
    if (ret < 0) {
      if (((int )(ctrl->entity)->type & 32767) != 6) {
        return (ret);
      } else {
      }
      {
      tmp___3 = test_and_set_bit(2L, (unsigned long volatile *)(& (chain->dev)->warnings));
      }
      if (tmp___3 == 0) {
        {
        printk("\016uvcvideo: UVC non compliance - GET_RES failed on an XU control. Enabling workaround.\n");
        }
      } else {
      }
      {
      tmp___4 = uvc_ctrl_data(ctrl, 4);
      memset((void *)tmp___4, 0, (size_t )ctrl->info.size);
      }
    } else {
    }
  } else {
  }
  ctrl->cached = 1U;
  return (0);
}
}
static int __uvc_ctrl_get(struct uvc_video_chain *chain , struct uvc_control *ctrl ,
                          struct uvc_control_mapping *mapping , s32 *value )
{
  struct uvc_menu_info *menu ;
  unsigned int i ;
  int ret ;
  __u8 *tmp ;
  __u8 *tmp___0 ;
  {
  if ((ctrl->info.flags & 2U) == 0U) {
    return (-13);
  } else {
  }
  if ((unsigned int )*((unsigned char *)ctrl + 49UL) == 0U) {
    {
    tmp = uvc_ctrl_data(ctrl, 0);
    ret = uvc_query_ctrl(chain->dev, 129, (int )(ctrl->entity)->id, (int )((__u8 )(chain->dev)->intfnum),
                         (int )ctrl->info.selector, (void *)tmp, (int )ctrl->info.size);
    }
    if (ret < 0) {
      return (ret);
    } else {
    }
    ctrl->loaded = 1U;
  } else {
  }
  {
  tmp___0 = uvc_ctrl_data(ctrl, 0);
  *value = (*(mapping->get))(mapping, 129, (__u8 const *)tmp___0);
  }
  if ((unsigned int )mapping->v4l2_type == 3U) {
    menu = mapping->menu_info;
    i = 0U;
    goto ldv_37429;
    ldv_37428: ;
    if (menu->value == (__u32 )*value) {
      *value = (s32 )i;
      goto ldv_37427;
    } else {
    }
    i = i + 1U;
    menu = menu + 1;
    ldv_37429: ;
    if (i < mapping->menu_count) {
      goto ldv_37428;
    } else {
    }
    ldv_37427: ;
  } else {
  }
  return (0);
}
}
static int __uvc_query_v4l2_ctrl(struct uvc_video_chain *chain , struct uvc_control *ctrl ,
                                 struct uvc_control_mapping *mapping , struct v4l2_queryctrl *v4l2_ctrl )
{
  struct uvc_control_mapping *master_map ;
  struct uvc_control *master_ctrl ;
  struct uvc_menu_info *menu ;
  unsigned int i ;
  s32 val ;
  int ret ;
  int tmp ;
  int ret___0 ;
  int tmp___0 ;
  __u8 *tmp___1 ;
  __u8 *tmp___2 ;
  __u8 *tmp___3 ;
  __u8 *tmp___4 ;
  {
  {
  master_map = (struct uvc_control_mapping *)0;
  master_ctrl = (struct uvc_control *)0;
  memset((void *)v4l2_ctrl, 0, 68UL);
  v4l2_ctrl->id = mapping->id;
  v4l2_ctrl->type = (__u32 )mapping->v4l2_type;
  strlcpy((char *)(& v4l2_ctrl->name), (char const *)(& mapping->name), 32UL);
  v4l2_ctrl->flags = 0U;
  }
  if ((ctrl->info.flags & 2U) == 0U) {
    v4l2_ctrl->flags = v4l2_ctrl->flags | 64U;
  } else {
  }
  if ((ctrl->info.flags & 1U) == 0U) {
    v4l2_ctrl->flags = v4l2_ctrl->flags | 4U;
  } else {
  }
  if (mapping->master_id != 0U) {
    {
    __uvc_find_control(ctrl->entity, mapping->master_id, & master_map, & master_ctrl,
                       0);
    }
  } else {
  }
  if ((unsigned long )master_ctrl != (unsigned long )((struct uvc_control *)0) && (master_ctrl->info.flags & 2U) != 0U) {
    {
    tmp = __uvc_ctrl_get(chain, master_ctrl, master_map, & val);
    ret = tmp;
    }
    if (ret < 0) {
      return (ret);
    } else {
    }
    if (val != mapping->master_manual) {
      v4l2_ctrl->flags = v4l2_ctrl->flags | 16U;
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)ctrl + 49UL) == 0U) {
    {
    tmp___0 = uvc_ctrl_populate_cache(chain, ctrl);
    ret___0 = tmp___0;
    }
    if (ret___0 < 0) {
      return (ret___0);
    } else {
    }
  } else {
  }
  if ((ctrl->info.flags & 32U) != 0U) {
    {
    tmp___1 = uvc_ctrl_data(ctrl, 5);
    v4l2_ctrl->default_value = (*(mapping->get))(mapping, 135, (__u8 const *)tmp___1);
    }
  } else {
  }
  {
  if ((unsigned int )mapping->v4l2_type == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )mapping->v4l2_type == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )mapping->v4l2_type == 4U) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_3:
  v4l2_ctrl->minimum = 0;
  v4l2_ctrl->maximum = (__s32 )(mapping->menu_count - 1U);
  v4l2_ctrl->step = 1;
  menu = mapping->menu_info;
  i = 0U;
  goto ldv_37446;
  ldv_37445: ;
  if (menu->value == (__u32 )v4l2_ctrl->default_value) {
    v4l2_ctrl->default_value = (__s32 )i;
    goto ldv_37444;
  } else {
  }
  i = i + 1U;
  menu = menu + 1;
  ldv_37446: ;
  if (i < mapping->menu_count) {
    goto ldv_37445;
  } else {
  }
  ldv_37444: ;
  return (0);
  case_2:
  v4l2_ctrl->minimum = 0;
  v4l2_ctrl->maximum = 1;
  v4l2_ctrl->step = 1;
  return (0);
  case_4:
  v4l2_ctrl->minimum = 0;
  v4l2_ctrl->maximum = 0;
  v4l2_ctrl->step = 0;
  return (0);
  switch_default: ;
  goto ldv_37450;
  switch_break: ;
  }
  ldv_37450: ;
  if ((ctrl->info.flags & 4U) != 0U) {
    {
    tmp___2 = uvc_ctrl_data(ctrl, 2);
    v4l2_ctrl->minimum = (*(mapping->get))(mapping, 130, (__u8 const *)tmp___2);
    }
  } else {
  }
  if ((ctrl->info.flags & 8U) != 0U) {
    {
    tmp___3 = uvc_ctrl_data(ctrl, 3);
    v4l2_ctrl->maximum = (*(mapping->get))(mapping, 131, (__u8 const *)tmp___3);
    }
  } else {
  }
  if ((ctrl->info.flags & 16U) != 0U) {
    {
    tmp___4 = uvc_ctrl_data(ctrl, 4);
    v4l2_ctrl->step = (*(mapping->get))(mapping, 132, (__u8 const *)tmp___4);
    }
  } else {
  }
  return (0);
}
}
int uvc_query_v4l2_ctrl(struct uvc_video_chain *chain , struct v4l2_queryctrl *v4l2_ctrl )
{
  struct uvc_control *ctrl ;
  struct uvc_control_mapping *mapping ;
  int ret ;
  {
  {
  ret = ldv_mutex_lock_interruptible_98(& chain->ctrl_mutex);
  }
  if (ret < 0) {
    return (-512);
  } else {
  }
  {
  ctrl = uvc_find_control(chain, v4l2_ctrl->id, & mapping);
  }
  if ((unsigned long )ctrl == (unsigned long )((struct uvc_control *)0)) {
    ret = -22;
    goto done;
  } else {
  }
  {
  ret = __uvc_query_v4l2_ctrl(chain, ctrl, mapping, v4l2_ctrl);
  }
  done:
  {
  ldv_mutex_unlock_99___1(& chain->ctrl_mutex);
  }
  return (ret);
}
}
int uvc_query_v4l2_menu(struct uvc_video_chain *chain , struct v4l2_querymenu *query_menu )
{
  struct uvc_menu_info *menu_info ;
  struct uvc_control_mapping *mapping ;
  struct uvc_control *ctrl ;
  u32 index ;
  u32 id ;
  int ret ;
  s32 bitmap ;
  __u8 *tmp ;
  {
  {
  index = query_menu->index;
  id = query_menu->id;
  memset((void *)query_menu, 0, 44UL);
  query_menu->id = id;
  query_menu->index = index;
  ret = ldv_mutex_lock_interruptible_100(& chain->ctrl_mutex);
  }
  if (ret < 0) {
    return (-512);
  } else {
  }
  {
  ctrl = uvc_find_control(chain, query_menu->id, & mapping);
  }
  if ((unsigned long )ctrl == (unsigned long )((struct uvc_control *)0) || (unsigned int )mapping->v4l2_type != 3U) {
    ret = -22;
    goto done;
  } else {
  }
  if (query_menu->index >= mapping->menu_count) {
    ret = -22;
    goto done;
  } else {
  }
  menu_info = mapping->menu_info + (unsigned long )query_menu->index;
  if (mapping->data_type == 5U && (ctrl->info.flags & 16U) != 0U) {
    if ((unsigned int )*((unsigned char *)ctrl + 49UL) == 0U) {
      {
      ret = uvc_ctrl_populate_cache(chain, ctrl);
      }
      if (ret < 0) {
        goto done;
      } else {
      }
    } else {
    }
    {
    tmp = uvc_ctrl_data(ctrl, 4);
    bitmap = (*(mapping->get))(mapping, 132, (__u8 const *)tmp);
    }
    if (((__u32 )bitmap & menu_info->value) == 0U) {
      ret = -22;
      goto done;
    } else {
    }
  } else {
  }
  {
  strlcpy((char *)(& query_menu->__annonCompField78.name), (char const *)(& menu_info->name),
          32UL);
  }
  done:
  {
  ldv_mutex_unlock_101___1(& chain->ctrl_mutex);
  }
  return (ret);
}
}
static void uvc_ctrl_fill_event(struct uvc_video_chain *chain , struct v4l2_event *ev ,
                                struct uvc_control *ctrl , struct uvc_control_mapping *mapping ,
                                s32 value , u32 changes )
{
  struct v4l2_queryctrl v4l2_ctrl ;
  {
  {
  __uvc_query_v4l2_ctrl(chain, ctrl, mapping, & v4l2_ctrl);
  memset((void *)(& ev->reserved), 0, 32UL);
  ev->type = 3U;
  ev->id = v4l2_ctrl.id;
  ev->u.ctrl.__annonCompField82.value = value;
  ev->u.ctrl.changes = changes;
  ev->u.ctrl.type = v4l2_ctrl.type;
  ev->u.ctrl.flags = v4l2_ctrl.flags;
  ev->u.ctrl.minimum = v4l2_ctrl.minimum;
  ev->u.ctrl.maximum = v4l2_ctrl.maximum;
  ev->u.ctrl.step = v4l2_ctrl.step;
  ev->u.ctrl.default_value = v4l2_ctrl.default_value;
  }
  return;
}
}
static void uvc_ctrl_send_event(struct uvc_fh *handle , struct uvc_control *ctrl ,
                                struct uvc_control_mapping *mapping , s32 value ,
                                u32 changes )
{
  struct v4l2_subscribed_event *sev ;
  struct v4l2_event ev ;
  int tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  tmp = list_empty((struct list_head const *)(& mapping->ev_subs));
  }
  if (tmp != 0) {
    return;
  } else {
  }
  {
  uvc_ctrl_fill_event(handle->chain, & ev, ctrl, mapping, value, changes);
  __mptr = (struct list_head const *)mapping->ev_subs.next;
  sev = (struct v4l2_subscribed_event *)__mptr + 0xffffffffffffffd8UL;
  }
  goto ldv_37494;
  ldv_37493: ;
  if ((unsigned long )sev->fh != (unsigned long )((struct v4l2_fh *)0) && (((unsigned long )sev->fh != (unsigned long )(& handle->vfh) || (sev->flags & 2U) != 0U) || (changes & 2U) != 0U)) {
    {
    v4l2_event_queue_fh(sev->fh, (struct v4l2_event const *)(& ev));
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)sev->node.next;
  sev = (struct v4l2_subscribed_event *)__mptr___0 + 0xffffffffffffffd8UL;
  ldv_37494: ;
  if ((unsigned long )(& sev->node) != (unsigned long )(& mapping->ev_subs)) {
    goto ldv_37493;
  } else {
  }
  return;
}
}
static void uvc_ctrl_send_slave_event(struct uvc_fh *handle , struct uvc_control *master ,
                                      u32 slave_id , struct v4l2_ext_control const *xctrls ,
                                      unsigned int xctrls_count )
{
  struct uvc_control_mapping *mapping ;
  struct uvc_control *ctrl ;
  u32 changes ;
  unsigned int i ;
  s32 val ;
  int tmp ;
  {
  mapping = (struct uvc_control_mapping *)0;
  ctrl = (struct uvc_control *)0;
  changes = 2U;
  val = 0;
  i = 0U;
  goto ldv_37509;
  ldv_37508: ;
  if ((unsigned int )(xctrls + (unsigned long )i)->id == slave_id) {
    return;
  } else {
  }
  i = i + 1U;
  ldv_37509: ;
  if (i < xctrls_count) {
    goto ldv_37508;
  } else {
  }
  {
  __uvc_find_control(master->entity, slave_id, & mapping, & ctrl, 0);
  }
  if ((unsigned long )ctrl == (unsigned long )((struct uvc_control *)0)) {
    return;
  } else {
  }
  {
  tmp = __uvc_ctrl_get(handle->chain, ctrl, mapping, & val);
  }
  if (tmp == 0) {
    changes = changes | 1U;
  } else {
  }
  {
  uvc_ctrl_send_event(handle, ctrl, mapping, val, changes);
  }
  return;
}
}
static void uvc_ctrl_send_events(struct uvc_fh *handle , struct v4l2_ext_control const *xctrls ,
                                 unsigned int xctrls_count )
{
  struct uvc_control_mapping *mapping ;
  struct uvc_control *ctrl ;
  u32 changes ;
  unsigned int i ;
  unsigned int j ;
  {
  changes = 1U;
  i = 0U;
  goto ldv_37530;
  ldv_37529:
  {
  ctrl = uvc_find_control(handle->chain, (xctrls + (unsigned long )i)->id, & mapping);
  j = 0U;
  }
  goto ldv_37525;
  ldv_37524: ;
  if (mapping->slave_ids[j] == 0U) {
    goto ldv_37523;
  } else {
  }
  {
  uvc_ctrl_send_slave_event(handle, ctrl, mapping->slave_ids[j], xctrls, xctrls_count);
  j = j + 1U;
  }
  ldv_37525: ;
  if (j <= 1U) {
    goto ldv_37524;
  } else {
  }
  ldv_37523: ;
  if (mapping->master_id != 0U) {
    j = 0U;
    goto ldv_37528;
    ldv_37527: ;
    if ((unsigned int )(xctrls + (unsigned long )j)->id == mapping->master_id) {
      changes = changes | 2U;
      goto ldv_37526;
    } else {
    }
    j = j + 1U;
    ldv_37528: ;
    if (j < xctrls_count) {
      goto ldv_37527;
    } else {
    }
    ldv_37526: ;
  } else {
  }
  {
  uvc_ctrl_send_event(handle, ctrl, mapping, (xctrls + (unsigned long )i)->__annonCompField77.value,
                      changes);
  i = i + 1U;
  }
  ldv_37530: ;
  if (i < xctrls_count) {
    goto ldv_37529;
  } else {
  }
  return;
}
}
static int uvc_ctrl_add_event(struct v4l2_subscribed_event *sev , unsigned int elems )
{
  struct uvc_fh *handle ;
  struct v4l2_fh const *__mptr ;
  struct uvc_control_mapping *mapping ;
  struct uvc_control *ctrl ;
  int ret ;
  struct v4l2_event ev ;
  u32 changes ;
  s32 val ;
  int tmp ;
  {
  {
  __mptr = (struct v4l2_fh const *)sev->fh;
  handle = (struct uvc_fh *)__mptr;
  ret = ldv_mutex_lock_interruptible_102(& (handle->chain)->ctrl_mutex);
  }
  if (ret < 0) {
    return (-512);
  } else {
  }
  {
  ctrl = uvc_find_control(handle->chain, sev->id, & mapping);
  }
  if ((unsigned long )ctrl == (unsigned long )((struct uvc_control *)0)) {
    ret = -22;
    goto done;
  } else {
  }
  {
  list_add_tail(& sev->node, & mapping->ev_subs);
  }
  if ((int )sev->flags & 1) {
    {
    changes = 2U;
    val = 0;
    tmp = __uvc_ctrl_get(handle->chain, ctrl, mapping, & val);
    }
    if (tmp == 0) {
      changes = changes | 1U;
    } else {
    }
    {
    uvc_ctrl_fill_event(handle->chain, & ev, ctrl, mapping, val, changes);
    sev->elems = elems;
    v4l2_event_queue_fh(sev->fh, (struct v4l2_event const *)(& ev));
    }
  } else {
  }
  done:
  {
  ldv_mutex_unlock_103___1(& (handle->chain)->ctrl_mutex);
  }
  return (ret);
}
}
static void uvc_ctrl_del_event(struct v4l2_subscribed_event *sev )
{
  struct uvc_fh *handle ;
  struct v4l2_fh const *__mptr ;
  {
  {
  __mptr = (struct v4l2_fh const *)sev->fh;
  handle = (struct uvc_fh *)__mptr;
  ldv_mutex_lock_104___1(& (handle->chain)->ctrl_mutex);
  list_del(& sev->node);
  ldv_mutex_unlock_105___1(& (handle->chain)->ctrl_mutex);
  }
  return;
}
}
struct v4l2_subscribed_event_ops const uvc_ctrl_sub_ev_ops = {& uvc_ctrl_add_event, & uvc_ctrl_del_event, & v4l2_ctrl_replace, & v4l2_ctrl_merge};
int uvc_ctrl_begin(struct uvc_video_chain *chain )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_lock_interruptible_106(& chain->ctrl_mutex);
  }
  return (tmp != 0 ? -512 : 0);
}
}
static int uvc_ctrl_commit_entity(struct uvc_device *dev , struct uvc_entity *entity ,
                                  int rollback )
{
  struct uvc_control *ctrl ;
  unsigned int i ;
  int ret ;
  __u8 *tmp ;
  __u8 *tmp___0 ;
  __u8 *tmp___1 ;
  {
  if ((unsigned long )entity == (unsigned long )((struct uvc_entity *)0)) {
    return (0);
  } else {
  }
  i = 0U;
  goto ldv_37566;
  ldv_37565:
  ctrl = entity->controls + (unsigned long )i;
  if ((unsigned int )*((unsigned char *)ctrl + 49UL) == 0U) {
    goto ldv_37564;
  } else {
  }
  if (*((unsigned int *)ctrl + 11UL) != 2U) {
    ctrl->loaded = 0U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ctrl + 49UL) == 0U) {
    goto ldv_37564;
  } else {
  }
  if (rollback == 0) {
    {
    tmp = uvc_ctrl_data(ctrl, 0);
    ret = uvc_query_ctrl(dev, 1, (int )(ctrl->entity)->id, (int )((__u8 )dev->intfnum),
                         (int )ctrl->info.selector, (void *)tmp, (int )ctrl->info.size);
    }
  } else {
    ret = 0;
  }
  if (rollback != 0 || ret < 0) {
    {
    tmp___0 = uvc_ctrl_data(ctrl, 1);
    tmp___1 = uvc_ctrl_data(ctrl, 0);
    memcpy((void *)tmp___1, (void const *)tmp___0, (size_t )ctrl->info.size);
    }
  } else {
  }
  ctrl->dirty = 0U;
  if (ret < 0) {
    return (ret);
  } else {
  }
  ldv_37564:
  i = i + 1U;
  ldv_37566: ;
  if (i < entity->ncontrols) {
    goto ldv_37565;
  } else {
  }
  return (0);
}
}
int __uvc_ctrl_commit(struct uvc_fh *handle , int rollback , struct v4l2_ext_control const *xctrls ,
                      unsigned int xctrls_count )
{
  struct uvc_video_chain *chain ;
  struct uvc_entity *entity ;
  int ret ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  chain = handle->chain;
  ret = 0;
  __mptr = (struct list_head const *)chain->entities.next;
  entity = (struct uvc_entity *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_37583;
  ldv_37582:
  {
  ret = uvc_ctrl_commit_entity(chain->dev, entity, rollback);
  }
  if (ret < 0) {
    goto done;
  } else {
  }
  __mptr___0 = (struct list_head const *)entity->chain.next;
  entity = (struct uvc_entity *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_37583: ;
  if ((unsigned long )(& entity->chain) != (unsigned long )(& chain->entities)) {
    goto ldv_37582;
  } else {
  }
  if (rollback == 0) {
    {
    uvc_ctrl_send_events(handle, xctrls, xctrls_count);
    }
  } else {
  }
  done:
  {
  ldv_mutex_unlock_107___1(& chain->ctrl_mutex);
  }
  return (ret);
}
}
int uvc_ctrl_get(struct uvc_video_chain *chain , struct v4l2_ext_control *xctrl )
{
  struct uvc_control *ctrl ;
  struct uvc_control_mapping *mapping ;
  int tmp ;
  {
  {
  ctrl = uvc_find_control(chain, xctrl->id, & mapping);
  }
  if ((unsigned long )ctrl == (unsigned long )((struct uvc_control *)0)) {
    return (-22);
  } else {
  }
  {
  tmp = __uvc_ctrl_get(chain, ctrl, mapping, & xctrl->__annonCompField77.value);
  }
  return (tmp);
}
}
int uvc_ctrl_set(struct uvc_video_chain *chain , struct v4l2_ext_control *xctrl )
{
  struct uvc_control *ctrl ;
  struct uvc_control_mapping *mapping ;
  s32 value ;
  u32 step ;
  s32 min ;
  s32 max ;
  int ret ;
  __u8 *tmp ;
  __u8 *tmp___0 ;
  __u8 *tmp___1 ;
  __s32 tmp___2 ;
  int _min1 ;
  __s32 _max1 ;
  s32 _max2 ;
  s32 _min2 ;
  u32 __min1 ;
  u32 __max1 ;
  u32 __max2 ;
  u32 __min2 ;
  int _min1___0 ;
  __s32 _max1___0 ;
  int _max2___0 ;
  int _min2___0 ;
  __u8 *tmp___3 ;
  __s32 tmp___4 ;
  __u8 *tmp___5 ;
  __u8 *tmp___6 ;
  __u8 *tmp___7 ;
  __u8 *tmp___8 ;
  __u8 *tmp___9 ;
  {
  {
  ctrl = uvc_find_control(chain, xctrl->id, & mapping);
  }
  if ((unsigned long )ctrl == (unsigned long )((struct uvc_control *)0)) {
    return (-22);
  } else {
  }
  if ((ctrl->info.flags & 1U) == 0U) {
    return (-13);
  } else {
  }
  {
  if ((unsigned int )mapping->v4l2_type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )mapping->v4l2_type == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )mapping->v4l2_type == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  if ((unsigned int )*((unsigned char *)ctrl + 49UL) == 0U) {
    {
    ret = uvc_ctrl_populate_cache(chain, ctrl);
    }
    if (ret < 0) {
      return (ret);
    } else {
    }
  } else {
  }
  {
  tmp = uvc_ctrl_data(ctrl, 2);
  min = (*(mapping->get))(mapping, 130, (__u8 const *)tmp);
  tmp___0 = uvc_ctrl_data(ctrl, 3);
  max = (*(mapping->get))(mapping, 131, (__u8 const *)tmp___0);
  tmp___1 = uvc_ctrl_data(ctrl, 4);
  tmp___2 = (*(mapping->get))(mapping, 132, (__u8 const *)tmp___1);
  step = (u32 )tmp___2;
  }
  if (step == 0U) {
    step = 1U;
  } else {
  }
  xctrl->__annonCompField77.value = (__s32 )((unsigned int )min + (((unsigned int )(xctrl->__annonCompField77.value - min) + step / 2U) / step) * step);
  if (mapping->data_type == 1U) {
    _max1 = xctrl->__annonCompField77.value;
    _max2 = min;
    _min1 = _max1 > _max2 ? _max1 : _max2;
    _min2 = max;
    xctrl->__annonCompField77.value = _min1 < _min2 ? _min1 : _min2;
  } else {
    __max1 = (u32 )xctrl->__annonCompField77.value;
    __max2 = (u32 )min;
    __min1 = __max1 > __max2 ? __max1 : __max2;
    __min2 = (u32 )max;
    xctrl->__annonCompField77.value = (__s32 )(__min1 < __min2 ? __min1 : __min2);
  }
  value = xctrl->__annonCompField77.value;
  goto ldv_37618;
  case_2:
  _max1___0 = xctrl->__annonCompField77.value;
  _max2___0 = 0;
  _min1___0 = _max1___0 > _max2___0 ? _max1___0 : _max2___0;
  _min2___0 = 1;
  xctrl->__annonCompField77.value = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  value = xctrl->__annonCompField77.value;
  goto ldv_37618;
  case_3: ;
  if (xctrl->__annonCompField77.value < 0 || (__u32 )xctrl->__annonCompField77.value >= mapping->menu_count) {
    return (-34);
  } else {
  }
  value = (s32 )(mapping->menu_info + (unsigned long )xctrl->__annonCompField77.value)->value;
  if (mapping->data_type == 5U && (ctrl->info.flags & 16U) != 0U) {
    if ((unsigned int )*((unsigned char *)ctrl + 49UL) == 0U) {
      {
      ret = uvc_ctrl_populate_cache(chain, ctrl);
      }
      if (ret < 0) {
        return (ret);
      } else {
      }
    } else {
    }
    {
    tmp___3 = uvc_ctrl_data(ctrl, 4);
    tmp___4 = (*(mapping->get))(mapping, 132, (__u8 const *)tmp___3);
    step = (u32 )tmp___4;
    }
    if ((step & (u32 )value) == 0U) {
      return (-22);
    } else {
    }
  } else {
  }
  goto ldv_37618;
  switch_default:
  value = xctrl->__annonCompField77.value;
  goto ldv_37618;
  switch_break: ;
  }
  ldv_37618: ;
  if ((unsigned int )*((unsigned char *)ctrl + 49UL) == 0U && (int )ctrl->info.size * 8 != (int )mapping->size) {
    if ((ctrl->info.flags & 2U) == 0U) {
      {
      tmp___5 = uvc_ctrl_data(ctrl, 0);
      memset((void *)tmp___5, 0, (size_t )ctrl->info.size);
      }
    } else {
      {
      tmp___6 = uvc_ctrl_data(ctrl, 0);
      ret = uvc_query_ctrl(chain->dev, 129, (int )(ctrl->entity)->id, (int )((__u8 )(chain->dev)->intfnum),
                           (int )ctrl->info.selector, (void *)tmp___6, (int )ctrl->info.size);
      }
      if (ret < 0) {
        return (ret);
      } else {
      }
    }
    ctrl->loaded = 1U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ctrl + 49UL) == 0U) {
    {
    tmp___7 = uvc_ctrl_data(ctrl, 0);
    tmp___8 = uvc_ctrl_data(ctrl, 1);
    memcpy((void *)tmp___8, (void const *)tmp___7, (size_t )ctrl->info.size);
    }
  } else {
  }
  {
  tmp___9 = uvc_ctrl_data(ctrl, 0);
  (*(mapping->set))(mapping, value, tmp___9);
  ctrl->dirty = 1U;
  ctrl->modified = 1U;
  }
  return (0);
}
}
static void uvc_ctrl_fixup_xu_info(struct uvc_device *dev , struct uvc_control const *ctrl ,
                                   struct uvc_control_info *info )
{
  struct uvc_ctrl_fixup fixups[3U] ;
  unsigned int i ;
  int tmp ;
  {
  fixups[0].id.match_flags = 3U;
  fixups[0].id.idVendor = 1133U;
  fixups[0].id.idProduct = 2242U;
  fixups[0].id.bcdDevice_lo = (unsigned short)0;
  fixups[0].id.bcdDevice_hi = (unsigned short)0;
  fixups[0].id.bDeviceClass = (unsigned char)0;
  fixups[0].id.bDeviceSubClass = (unsigned char)0;
  fixups[0].id.bDeviceProtocol = (unsigned char)0;
  fixups[0].id.bInterfaceClass = (unsigned char)0;
  fixups[0].id.bInterfaceSubClass = (unsigned char)0;
  fixups[0].id.bInterfaceProtocol = (unsigned char)0;
  fixups[0].id.bInterfaceNumber = (unsigned char)0;
  fixups[0].id.driver_info = 0UL;
  fixups[0].entity = 9U;
  fixups[0].selector = 1U;
  fixups[0].flags = 173U;
  fixups[1].id.match_flags = 3U;
  fixups[1].id.idVendor = 1133U;
  fixups[1].id.idProduct = 2252U;
  fixups[1].id.bcdDevice_lo = (unsigned short)0;
  fixups[1].id.bcdDevice_hi = (unsigned short)0;
  fixups[1].id.bDeviceClass = (unsigned char)0;
  fixups[1].id.bDeviceSubClass = (unsigned char)0;
  fixups[1].id.bDeviceProtocol = (unsigned char)0;
  fixups[1].id.bInterfaceClass = (unsigned char)0;
  fixups[1].id.bInterfaceSubClass = (unsigned char)0;
  fixups[1].id.bInterfaceProtocol = (unsigned char)0;
  fixups[1].id.bInterfaceNumber = (unsigned char)0;
  fixups[1].id.driver_info = 0UL;
  fixups[1].entity = 9U;
  fixups[1].selector = 1U;
  fixups[1].flags = 173U;
  fixups[2].id.match_flags = 3U;
  fixups[2].id.idVendor = 1133U;
  fixups[2].id.idProduct = 2452U;
  fixups[2].id.bcdDevice_lo = (unsigned short)0;
  fixups[2].id.bcdDevice_hi = (unsigned short)0;
  fixups[2].id.bDeviceClass = (unsigned char)0;
  fixups[2].id.bDeviceSubClass = (unsigned char)0;
  fixups[2].id.bDeviceProtocol = (unsigned char)0;
  fixups[2].id.bInterfaceClass = (unsigned char)0;
  fixups[2].id.bInterfaceSubClass = (unsigned char)0;
  fixups[2].id.bInterfaceProtocol = (unsigned char)0;
  fixups[2].id.bInterfaceNumber = (unsigned char)0;
  fixups[2].id.driver_info = 0UL;
  fixups[2].entity = 9U;
  fixups[2].selector = 1U;
  fixups[2].flags = 173U;
  i = 0U;
  goto ldv_37647;
  ldv_37646:
  {
  tmp = usb_match_one_id(dev->intf, & fixups[i].id);
  }
  if (tmp == 0) {
    goto ldv_37645;
  } else {
  }
  if ((int )fixups[i].entity == (int )(ctrl->entity)->id && (int )fixups[i].selector == (int )info->selector) {
    info->flags = (__u32 )fixups[i].flags;
    return;
  } else {
  }
  ldv_37645:
  i = i + 1U;
  ldv_37647: ;
  if (i <= 2U) {
    goto ldv_37646;
  } else {
  }
  return;
}
}
static int uvc_ctrl_fill_xu_info(struct uvc_device *dev , struct uvc_control const *ctrl ,
                                 struct uvc_control_info *info )
{
  u8 *data ;
  int ret ;
  void *tmp ;
  {
  {
  tmp = kmalloc(2UL, 208U);
  data = (u8 *)tmp;
  }
  if ((unsigned long )data == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  {
  memcpy((void *)(& info->entity), (void const *)(& (ctrl->entity)->__annonCompField85.extension.guidExtensionCode),
           16UL);
  info->index = ctrl->index;
  info->selector = (unsigned int )((__u8 )ctrl->index) + 1U;
  ret = uvc_query_ctrl(dev, 133, (int )(ctrl->entity)->id, (int )((__u8 )dev->intfnum),
                       (int )info->selector, (void *)data, 2);
  }
  if (ret < 0) {
    if ((uvc_trace_param & 4U) != 0U) {
      {
      printk("\017uvcvideo: GET_LEN failed on control %pUl/%u (%d).\n", (__u8 *)(& info->entity),
             (int )info->selector, ret);
      }
    } else {
    }
    goto done;
  } else {
  }
  {
  info->size = __le16_to_cpup((__le16 const *)data);
  ret = uvc_query_ctrl(dev, 134, (int )(ctrl->entity)->id, (int )((__u8 )dev->intfnum),
                       (int )info->selector, (void *)data, 1);
  }
  if (ret < 0) {
    if ((uvc_trace_param & 4U) != 0U) {
      {
      printk("\017uvcvideo: GET_INFO failed on control %pUl/%u (%d).\n", (__u8 *)(& info->entity),
             (int )info->selector, ret);
      }
    } else {
    }
    goto done;
  } else {
  }
  {
  info->flags = (__u32 )((((int )*data & 1 ? 62 : 60) | (((int )*data & 2) != 0)) | (((int )*data & 8) != 0 ? 128 : 0));
  uvc_ctrl_fixup_xu_info(dev, ctrl, info);
  }
  if ((uvc_trace_param & 4U) != 0U) {
    {
    printk("\017uvcvideo: XU control %pUl/%u queried: len %u, flags { get %u set %u auto %u }.\n",
           (__u8 *)(& info->entity), (int )info->selector, (int )info->size, (info->flags & 2U) != 0U,
           (int )info->flags & 1, (info->flags & 128U) != 0U);
    }
  } else {
  }
  done:
  {
  kfree((void const *)data);
  }
  return (ret);
}
}
static int uvc_ctrl_add_info(struct uvc_device *dev , struct uvc_control *ctrl , struct uvc_control_info const *info ) ;
static int uvc_ctrl_init_xu_ctrl(struct uvc_device *dev , struct uvc_control *ctrl )
{
  struct uvc_control_info info ;
  int ret ;
  {
  if ((unsigned int )*((unsigned char *)ctrl + 49UL) != 0U) {
    return (0);
  } else {
  }
  {
  ret = uvc_ctrl_fill_xu_info(dev, (struct uvc_control const *)ctrl, & info);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = uvc_ctrl_add_info(dev, ctrl, (struct uvc_control_info const *)(& info));
  }
  if (ret < 0) {
    if ((uvc_trace_param & 4U) != 0U) {
      {
      printk("\017uvcvideo: Failed to initialize control %pUl/%u on device %s entity %u\n",
             (__u8 *)(& info.entity), (int )info.selector, (char *)(& (dev->udev)->devpath),
             (int )(ctrl->entity)->id);
      }
    } else {
    }
  } else {
  }
  return (ret);
}
}
int uvc_xu_ctrl_query(struct uvc_video_chain *chain , struct uvc_xu_control_query *xqry )
{
  struct uvc_entity *entity ;
  struct uvc_control *ctrl ;
  unsigned int i ;
  unsigned int found ;
  __u32 reqflags ;
  __u16 size ;
  __u8 *data ;
  int ret ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  void *tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  {
  found = 0U;
  data = (__u8 *)0U;
  __mptr = (struct list_head const *)chain->entities.next;
  entity = (struct uvc_entity *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_37685;
  ldv_37684: ;
  if (((int )entity->type & 32767) == 6 && (int )entity->id == (int )xqry->unit) {
    goto ldv_37683;
  } else {
  }
  __mptr___0 = (struct list_head const *)entity->chain.next;
  entity = (struct uvc_entity *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_37685: ;
  if ((unsigned long )(& entity->chain) != (unsigned long )(& chain->entities)) {
    goto ldv_37684;
  } else {
  }
  ldv_37683: ;
  if ((int )entity->id != (int )xqry->unit) {
    if ((uvc_trace_param & 4U) != 0U) {
      {
      printk("\017uvcvideo: Extension unit %u not found.\n", (int )xqry->unit);
      }
    } else {
    }
    return (-2);
  } else {
  }
  i = 0U;
  goto ldv_37688;
  ldv_37687:
  ctrl = entity->controls + (unsigned long )i;
  if ((int )ctrl->index == (int )xqry->selector + -1) {
    found = 1U;
    goto ldv_37686;
  } else {
  }
  i = i + 1U;
  ldv_37688: ;
  if (i < entity->ncontrols) {
    goto ldv_37687;
  } else {
  }
  ldv_37686: ;
  if (found == 0U) {
    if ((uvc_trace_param & 4U) != 0U) {
      {
      printk("\017uvcvideo: Control %pUl/%u not found.\n", (__u8 *)(& entity->__annonCompField85.extension.guidExtensionCode),
             (int )xqry->selector);
      }
    } else {
    }
    return (-2);
  } else {
  }
  {
  tmp = ldv_mutex_lock_interruptible_108(& chain->ctrl_mutex);
  }
  if (tmp != 0) {
    return (-512);
  } else {
  }
  {
  ret = uvc_ctrl_init_xu_ctrl(chain->dev, ctrl);
  }
  if (ret < 0) {
    ret = -2;
    goto done;
  } else {
  }
  reqflags = 0U;
  size = ctrl->info.size;
  {
  if ((int )xqry->query == 129) {
    goto case_129;
  } else {
  }
  if ((int )xqry->query == 130) {
    goto case_130;
  } else {
  }
  if ((int )xqry->query == 131) {
    goto case_131;
  } else {
  }
  if ((int )xqry->query == 135) {
    goto case_135;
  } else {
  }
  if ((int )xqry->query == 132) {
    goto case_132;
  } else {
  }
  if ((int )xqry->query == 1) {
    goto case_1;
  } else {
  }
  if ((int )xqry->query == 133) {
    goto case_133;
  } else {
  }
  if ((int )xqry->query == 134) {
    goto case_134;
  } else {
  }
  goto switch_default;
  case_129:
  reqflags = 2U;
  goto ldv_37691;
  case_130:
  reqflags = 4U;
  goto ldv_37691;
  case_131:
  reqflags = 8U;
  goto ldv_37691;
  case_135:
  reqflags = 32U;
  goto ldv_37691;
  case_132:
  reqflags = 16U;
  goto ldv_37691;
  case_1:
  reqflags = 1U;
  goto ldv_37691;
  case_133:
  size = 2U;
  goto ldv_37691;
  case_134:
  size = 1U;
  goto ldv_37691;
  switch_default:
  ret = -22;
  goto done;
  switch_break: ;
  }
  ldv_37691: ;
  if ((int )size != (int )xqry->size) {
    ret = -105;
    goto done;
  } else {
  }
  if (reqflags != 0U && (ctrl->info.flags & reqflags) == 0U) {
    ret = -56;
    goto done;
  } else {
  }
  {
  tmp___0 = kmalloc((size_t )size, 208U);
  data = (__u8 *)tmp___0;
  }
  if ((unsigned long )data == (unsigned long )((__u8 *)0U)) {
    ret = -12;
    goto done;
  } else {
  }
  if ((unsigned int )xqry->query == 1U) {
    {
    tmp___1 = copy_from_user((void *)data, (void const *)xqry->data, (unsigned long )size);
    }
    if (tmp___1 != 0UL) {
      ret = -14;
      goto done;
    } else {
    }
  } else {
  }
  {
  ret = uvc_query_ctrl(chain->dev, (int )xqry->query, (int )xqry->unit, (int )((__u8 )(chain->dev)->intfnum),
                       (int )xqry->selector, (void *)data, (int )size);
  }
  if (ret < 0) {
    goto done;
  } else {
  }
  if ((unsigned int )xqry->query != 1U) {
    {
    tmp___2 = copy_to_user((void *)xqry->data, (void const *)data, (unsigned long )size);
    }
    if (tmp___2 != 0UL) {
      ret = -14;
    } else {
    }
  } else {
  }
  done:
  {
  kfree((void const *)data);
  ldv_mutex_unlock_109___1(& chain->ctrl_mutex);
  }
  return (ret);
}
}
int uvc_ctrl_restore_values(struct uvc_device *dev )
{
  struct uvc_control *ctrl ;
  struct uvc_entity *entity ;
  unsigned int i ;
  int ret ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)dev->entities.next;
  entity = (struct uvc_entity *)__mptr;
  goto ldv_37716;
  ldv_37715:
  i = 0U;
  goto ldv_37713;
  ldv_37712:
  ctrl = entity->controls + (unsigned long )i;
  if ((unsigned int )*((unsigned char *)ctrl + 49UL) != 20U || (ctrl->info.flags & 64U) == 0U) {
    goto ldv_37711;
  } else {
  }
  {
  printk("\016restoring control %pUl/%u/%u\n", (__u8 *)(& ctrl->info.entity), (int )ctrl->info.index,
         (int )ctrl->info.selector);
  ctrl->dirty = 1U;
  }
  ldv_37711:
  i = i + 1U;
  ldv_37713: ;
  if (i < entity->ncontrols) {
    goto ldv_37712;
  } else {
  }
  {
  ret = uvc_ctrl_commit_entity(dev, entity, 0);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  __mptr___0 = (struct list_head const *)entity->list.next;
  entity = (struct uvc_entity *)__mptr___0;
  ldv_37716: ;
  if ((unsigned long )(& entity->list) != (unsigned long )(& dev->entities)) {
    goto ldv_37715;
  } else {
  }
  return (0);
}
}
static int uvc_ctrl_add_info(struct uvc_device *dev , struct uvc_control *ctrl , struct uvc_control_info const *info )
{
  int ret ;
  void *tmp ;
  {
  {
  ret = 0;
  ctrl->info = *info;
  INIT_LIST_HEAD(& ctrl->info.mappings);
  tmp = kzalloc((size_t )((int )ctrl->info.size * 6 + 1), 208U);
  ctrl->uvc_data = (__u8 *)tmp;
  }
  if ((unsigned long )ctrl->uvc_data == (unsigned long )((__u8 *)0U)) {
    ret = -12;
    goto done;
  } else {
  }
  ctrl->initialized = 1U;
  if ((uvc_trace_param & 4U) != 0U) {
    {
    printk("\017uvcvideo: Added control %pUl/%u to device %s entity %u\n", (__u8 *)(& ctrl->info.entity),
           (int )ctrl->info.selector, (char *)(& (dev->udev)->devpath), (int )(ctrl->entity)->id);
    }
  } else {
  }
  done: ;
  if (ret < 0) {
    {
    kfree((void const *)ctrl->uvc_data);
    }
  } else {
  }
  return (ret);
}
}
static int __uvc_ctrl_add_mapping(struct uvc_device *dev , struct uvc_control *ctrl ,
                                  struct uvc_control_mapping const *mapping )
{
  struct uvc_control_mapping *map ;
  unsigned int size ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = kmemdup((void const *)mapping, 144UL, 208U);
  map = (struct uvc_control_mapping *)tmp;
  }
  if ((unsigned long )map == (unsigned long )((struct uvc_control_mapping *)0)) {
    return (-12);
  } else {
  }
  {
  INIT_LIST_HEAD(& map->ev_subs);
  size = (unsigned int )mapping->menu_count * 36U;
  tmp___0 = kmemdup((void const *)mapping->menu_info, (size_t )size, 208U);
  map->menu_info = (struct uvc_menu_info *)tmp___0;
  }
  if ((unsigned long )map->menu_info == (unsigned long )((struct uvc_menu_info *)0)) {
    {
    kfree((void const *)map);
    }
    return (-12);
  } else {
  }
  if ((unsigned long )map->get == (unsigned long )((__s32 (*)(struct uvc_control_mapping * ,
                                                              __u8 , __u8 const * ))0)) {
    map->get = & uvc_get_le_value;
  } else {
  }
  if ((unsigned long )map->set == (unsigned long )((void (*)(struct uvc_control_mapping * ,
                                                             __s32 , __u8 * ))0)) {
    map->set = & uvc_set_le_value;
  } else {
  }
  {
  list_add_tail(& map->list, & ctrl->info.mappings);
  }
  if ((uvc_trace_param & 4U) != 0U) {
    {
    printk("\017uvcvideo: Adding mapping \'%s\' to control %pUl/%u.\n", (__u8 *)(& map->name),
           (__u8 *)(& ctrl->info.entity), (int )ctrl->info.selector);
    }
  } else {
  }
  return (0);
}
}
int uvc_ctrl_add_mapping(struct uvc_video_chain *chain , struct uvc_control_mapping const *mapping )
{
  struct uvc_device *dev ;
  struct uvc_control_mapping *map ;
  struct uvc_entity *entity ;
  struct uvc_control *ctrl ;
  int found ;
  int ret ;
  struct list_head const *__mptr ;
  unsigned int i ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  int tmp___1 ;
  {
  dev = chain->dev;
  found = 0;
  if (((unsigned int )mapping->id & 4026531840U) != 0U) {
    if ((uvc_trace_param & 4U) != 0U) {
      {
      printk("\017uvcvideo: Can\'t add mapping \'%s\', control id 0x%08x is invalid.\n",
             (__u8 const *)(& mapping->name), mapping->id);
      }
    } else {
    }
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)chain->entities.next;
  entity = (struct uvc_entity *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_37753;
  ldv_37752: ;
  if (((int )entity->type & 32767) != 6) {
    goto ldv_37747;
  } else {
    {
    tmp = uvc_entity_match_guid((struct uvc_entity const *)entity, (__u8 const *)(& mapping->entity));
    }
    if (tmp == 0) {
      goto ldv_37747;
    } else {
    }
  }
  i = 0U;
  goto ldv_37750;
  ldv_37749:
  ctrl = entity->controls + (unsigned long )i;
  if ((int )ctrl->index == (int )mapping->selector + -1) {
    found = 1;
    goto ldv_37748;
  } else {
  }
  i = i + 1U;
  ldv_37750: ;
  if (i < entity->ncontrols) {
    goto ldv_37749;
  } else {
  }
  ldv_37748: ;
  if (found != 0) {
    goto ldv_37751;
  } else {
  }
  ldv_37747:
  __mptr___0 = (struct list_head const *)entity->chain.next;
  entity = (struct uvc_entity *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_37753: ;
  if ((unsigned long )(& entity->chain) != (unsigned long )(& chain->entities)) {
    goto ldv_37752;
  } else {
  }
  ldv_37751: ;
  if (found == 0) {
    return (-2);
  } else {
  }
  {
  tmp___0 = ldv_mutex_lock_interruptible_110(& chain->ctrl_mutex);
  }
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  {
  ret = uvc_ctrl_init_xu_ctrl(dev, ctrl);
  }
  if (ret < 0) {
    ret = -2;
    goto done;
  } else {
  }
  __mptr___1 = (struct list_head const *)ctrl->info.mappings.next;
  map = (struct uvc_control_mapping *)__mptr___1;
  goto ldv_37760;
  ldv_37759: ;
  if ((unsigned int )mapping->id == map->id) {
    if ((uvc_trace_param & 4U) != 0U) {
      {
      printk("\017uvcvideo: Can\'t add mapping \'%s\', control id 0x%08x already exists.\n",
             (__u8 const *)(& mapping->name), mapping->id);
      }
    } else {
    }
    ret = -17;
    goto done;
  } else {
  }
  __mptr___2 = (struct list_head const *)map->list.next;
  map = (struct uvc_control_mapping *)__mptr___2;
  ldv_37760: ;
  if ((unsigned long )(& map->list) != (unsigned long )(& ctrl->info.mappings)) {
    goto ldv_37759;
  } else {
  }
  {
  tmp___1 = atomic_add_return(1, & dev->nmappings);
  }
  if (tmp___1 > 1024) {
    {
    atomic_dec(& dev->nmappings);
    }
    if ((uvc_trace_param & 4U) != 0U) {
      {
      printk("\017uvcvideo: Can\'t add mapping \'%s\', maximum mappings count (%u) exceeded.\n",
             (__u8 const *)(& mapping->name), 1024);
      }
    } else {
    }
    ret = -12;
    goto done;
  } else {
  }
  {
  ret = __uvc_ctrl_add_mapping(dev, ctrl, mapping);
  }
  if (ret < 0) {
    {
    atomic_dec(& dev->nmappings);
    }
  } else {
  }
  done:
  {
  ldv_mutex_unlock_111___1(& chain->ctrl_mutex);
  }
  return (ret);
}
}
static void uvc_ctrl_prune_entity(struct uvc_device *dev , struct uvc_entity *entity )
{
  struct uvc_ctrl_blacklist processing_blacklist[3U] ;
  struct uvc_ctrl_blacklist camera_blacklist[1U] ;
  struct uvc_ctrl_blacklist const *blacklist ;
  unsigned int size ;
  unsigned int count ;
  unsigned int i ;
  u8 *controls ;
  int tmp ;
  int tmp___0 ;
  {
  processing_blacklist[0].id.match_flags = 3U;
  processing_blacklist[0].id.idVendor = 5075U;
  processing_blacklist[0].id.idProduct = 20635U;
  processing_blacklist[0].id.bcdDevice_lo = (unsigned short)0;
  processing_blacklist[0].id.bcdDevice_hi = (unsigned short)0;
  processing_blacklist[0].id.bDeviceClass = (unsigned char)0;
  processing_blacklist[0].id.bDeviceSubClass = (unsigned char)0;
  processing_blacklist[0].id.bDeviceProtocol = (unsigned char)0;
  processing_blacklist[0].id.bInterfaceClass = (unsigned char)0;
  processing_blacklist[0].id.bInterfaceSubClass = (unsigned char)0;
  processing_blacklist[0].id.bInterfaceProtocol = (unsigned char)0;
  processing_blacklist[0].id.bInterfaceNumber = (unsigned char)0;
  processing_blacklist[0].id.driver_info = 0UL;
  processing_blacklist[0].index = 9U;
  processing_blacklist[1].id.match_flags = 3U;
  processing_blacklist[1].id.idVendor = 7247U;
  processing_blacklist[1].id.idProduct = 12288U;
  processing_blacklist[1].id.bcdDevice_lo = (unsigned short)0;
  processing_blacklist[1].id.bcdDevice_hi = (unsigned short)0;
  processing_blacklist[1].id.bDeviceClass = (unsigned char)0;
  processing_blacklist[1].id.bDeviceSubClass = (unsigned char)0;
  processing_blacklist[1].id.bDeviceProtocol = (unsigned char)0;
  processing_blacklist[1].id.bInterfaceClass = (unsigned char)0;
  processing_blacklist[1].id.bInterfaceSubClass = (unsigned char)0;
  processing_blacklist[1].id.bInterfaceProtocol = (unsigned char)0;
  processing_blacklist[1].id.bInterfaceNumber = (unsigned char)0;
  processing_blacklist[1].id.driver_info = 0UL;
  processing_blacklist[1].index = 6U;
  processing_blacklist[2].id.match_flags = 3U;
  processing_blacklist[2].id.idVendor = 22918U;
  processing_blacklist[2].id.idProduct = 577U;
  processing_blacklist[2].id.bcdDevice_lo = (unsigned short)0;
  processing_blacklist[2].id.bcdDevice_hi = (unsigned short)0;
  processing_blacklist[2].id.bDeviceClass = (unsigned char)0;
  processing_blacklist[2].id.bDeviceSubClass = (unsigned char)0;
  processing_blacklist[2].id.bDeviceProtocol = (unsigned char)0;
  processing_blacklist[2].id.bInterfaceClass = (unsigned char)0;
  processing_blacklist[2].id.bInterfaceSubClass = (unsigned char)0;
  processing_blacklist[2].id.bInterfaceProtocol = (unsigned char)0;
  processing_blacklist[2].id.bInterfaceNumber = (unsigned char)0;
  processing_blacklist[2].id.driver_info = 0UL;
  processing_blacklist[2].index = 2U;
  camera_blacklist[0].id.match_flags = 3U;
  camera_blacklist[0].id.idVendor = 1784U;
  camera_blacklist[0].id.idProduct = 12293U;
  camera_blacklist[0].id.bcdDevice_lo = (unsigned short)0;
  camera_blacklist[0].id.bcdDevice_hi = (unsigned short)0;
  camera_blacklist[0].id.bDeviceClass = (unsigned char)0;
  camera_blacklist[0].id.bDeviceSubClass = (unsigned char)0;
  camera_blacklist[0].id.bDeviceProtocol = (unsigned char)0;
  camera_blacklist[0].id.bInterfaceClass = (unsigned char)0;
  camera_blacklist[0].id.bInterfaceSubClass = (unsigned char)0;
  camera_blacklist[0].id.bInterfaceProtocol = (unsigned char)0;
  camera_blacklist[0].id.bInterfaceNumber = (unsigned char)0;
  camera_blacklist[0].id.driver_info = 0UL;
  camera_blacklist[0].index = 9U;
  {
  if (((int )entity->type & 32767) == 5) {
    goto case_5;
  } else {
  }
  if (((int )entity->type & 32767) == 513) {
    goto case_513;
  } else {
  }
  goto switch_default;
  case_5:
  blacklist = (struct uvc_ctrl_blacklist const *)(& processing_blacklist);
  count = 3U;
  controls = entity->__annonCompField85.processing.bmControls;
  size = (unsigned int )entity->__annonCompField85.processing.bControlSize;
  goto ldv_37779;
  case_513:
  blacklist = (struct uvc_ctrl_blacklist const *)(& camera_blacklist);
  count = 1U;
  controls = entity->__annonCompField85.camera.bmControls;
  size = (unsigned int )entity->__annonCompField85.camera.bControlSize;
  goto ldv_37779;
  switch_default: ;
  return;
  switch_break: ;
  }
  ldv_37779:
  i = 0U;
  goto ldv_37786;
  ldv_37785:
  {
  tmp = usb_match_one_id(dev->intf, & (blacklist + (unsigned long )i)->id);
  }
  if (tmp == 0) {
    goto ldv_37784;
  } else {
  }
  if ((unsigned int )(blacklist + (unsigned long )i)->index >= size * 8U) {
    goto ldv_37784;
  } else {
    {
    tmp___0 = uvc_test_bit((__u8 const *)controls, (int )(blacklist + (unsigned long )i)->index);
    }
    if (tmp___0 == 0) {
      goto ldv_37784;
    } else {
    }
  }
  if ((uvc_trace_param & 4U) != 0U) {
    {
    printk("\017uvcvideo: %u/%u control is black listed, removing it.\n", (int )entity->id,
           (int )(blacklist + (unsigned long )i)->index);
    }
  } else {
  }
  {
  uvc_clear_bit(controls, (int )(blacklist + (unsigned long )i)->index);
  }
  ldv_37784:
  i = i + 1U;
  ldv_37786: ;
  if (i < count) {
    goto ldv_37785;
  } else {
  }
  return;
}
}
static void uvc_ctrl_init_ctrl(struct uvc_device *dev , struct uvc_control *ctrl )
{
  struct uvc_control_info const *info ;
  struct uvc_control_info const *iend ;
  struct uvc_control_mapping const *mapping ;
  struct uvc_control_mapping const *mend ;
  int tmp ;
  int tmp___0 ;
  {
  info = (struct uvc_control_info const *)(& uvc_ctrls);
  iend = info + 35UL;
  mapping = (struct uvc_control_mapping const *)(& uvc_ctrl_mappings);
  mend = mapping + 29UL;
  if (((int )(ctrl->entity)->type & 32767) == 6) {
    return;
  } else {
  }
  goto ldv_37802;
  ldv_37801:
  {
  tmp = uvc_entity_match_guid((struct uvc_entity const *)ctrl->entity, (__u8 const *)(& info->entity));
  }
  if (tmp != 0 && (int )ctrl->index == (int )((unsigned char )info->index)) {
    {
    uvc_ctrl_add_info(dev, ctrl, info);
    }
    goto ldv_37800;
  } else {
  }
  info = info + 1;
  ldv_37802: ;
  if ((unsigned long )info < (unsigned long )iend) {
    goto ldv_37801;
  } else {
  }
  ldv_37800: ;
  if ((unsigned int )*((unsigned char *)ctrl + 49UL) == 0U) {
    return;
  } else {
  }
  goto ldv_37804;
  ldv_37803:
  {
  tmp___0 = uvc_entity_match_guid((struct uvc_entity const *)ctrl->entity, (__u8 const *)(& mapping->entity));
  }
  if (tmp___0 != 0 && (int )ctrl->info.selector == (int )((unsigned char )mapping->selector)) {
    {
    __uvc_ctrl_add_mapping(dev, ctrl, mapping);
    }
  } else {
  }
  mapping = mapping + 1;
  ldv_37804: ;
  if ((unsigned long )mapping < (unsigned long )mend) {
    goto ldv_37803;
  } else {
  }
  return;
}
}
int uvc_ctrl_init_device(struct uvc_device *dev )
{
  struct uvc_entity *entity ;
  unsigned int i ;
  struct list_head const *__mptr ;
  struct uvc_control *ctrl ;
  unsigned int bControlSize ;
  unsigned int ncontrols ;
  __u8 *bmControls ;
  size_t tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)dev->entities.next;
  entity = (struct uvc_entity *)__mptr;
  goto ldv_37825;
  ldv_37824:
  bControlSize = 0U;
  bmControls = (__u8 *)0U;
  if (((int )entity->type & 32767) == 6) {
    bmControls = entity->__annonCompField85.extension.bmControls;
    bControlSize = (unsigned int )entity->__annonCompField85.extension.bControlSize;
  } else
  if (((int )entity->type & 32767) == 5) {
    bmControls = entity->__annonCompField85.processing.bmControls;
    bControlSize = (unsigned int )entity->__annonCompField85.processing.bControlSize;
  } else
  if (((int )entity->type & 32767) == 513) {
    bmControls = entity->__annonCompField85.camera.bmControls;
    bControlSize = (unsigned int )entity->__annonCompField85.camera.bControlSize;
  } else {
  }
  {
  uvc_ctrl_prune_entity(dev, entity);
  tmp = memweight((void const *)bmControls, (size_t )bControlSize);
  ncontrols = (unsigned int )tmp;
  }
  if (ncontrols == 0U) {
    goto ldv_37819;
  } else {
  }
  {
  tmp___0 = kcalloc((size_t )ncontrols, 64UL, 208U);
  entity->controls = (struct uvc_control *)tmp___0;
  }
  if ((unsigned long )entity->controls == (unsigned long )((struct uvc_control *)0)) {
    return (-12);
  } else {
  }
  entity->ncontrols = ncontrols;
  ctrl = entity->controls;
  i = 0U;
  goto ldv_37822;
  ldv_37821:
  {
  tmp___1 = uvc_test_bit((__u8 const *)bmControls, (int )i);
  }
  if (tmp___1 == 0) {
    goto ldv_37820;
  } else {
  }
  {
  ctrl->entity = entity;
  ctrl->index = (__u8 )i;
  uvc_ctrl_init_ctrl(dev, ctrl);
  ctrl = ctrl + 1;
  }
  ldv_37820:
  i = i + 1U;
  ldv_37822: ;
  if (i < bControlSize * 8U) {
    goto ldv_37821;
  } else {
  }
  ldv_37819:
  __mptr___0 = (struct list_head const *)entity->list.next;
  entity = (struct uvc_entity *)__mptr___0;
  ldv_37825: ;
  if ((unsigned long )(& entity->list) != (unsigned long )(& dev->entities)) {
    goto ldv_37824;
  } else {
  }
  return (0);
}
}
static void uvc_ctrl_cleanup_mappings(struct uvc_device *dev , struct uvc_control *ctrl )
{
  struct uvc_control_mapping *mapping ;
  struct uvc_control_mapping *nm ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)ctrl->info.mappings.next;
  mapping = (struct uvc_control_mapping *)__mptr;
  __mptr___0 = (struct list_head const *)mapping->list.next;
  nm = (struct uvc_control_mapping *)__mptr___0;
  goto ldv_37840;
  ldv_37839:
  {
  list_del(& mapping->list);
  kfree((void const *)mapping->menu_info);
  kfree((void const *)mapping);
  mapping = nm;
  __mptr___1 = (struct list_head const *)nm->list.next;
  nm = (struct uvc_control_mapping *)__mptr___1;
  }
  ldv_37840: ;
  if ((unsigned long )(& mapping->list) != (unsigned long )(& ctrl->info.mappings)) {
    goto ldv_37839;
  } else {
  }
  return;
}
}
void uvc_ctrl_cleanup_device(struct uvc_device *dev )
{
  struct uvc_entity *entity ;
  unsigned int i ;
  struct list_head const *__mptr ;
  struct uvc_control *ctrl ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)dev->entities.next;
  entity = (struct uvc_entity *)__mptr;
  goto ldv_37857;
  ldv_37856:
  i = 0U;
  goto ldv_37854;
  ldv_37853:
  ctrl = entity->controls + (unsigned long )i;
  if ((unsigned int )*((unsigned char *)ctrl + 49UL) == 0U) {
    goto ldv_37852;
  } else {
  }
  {
  uvc_ctrl_cleanup_mappings(dev, ctrl);
  kfree((void const *)ctrl->uvc_data);
  }
  ldv_37852:
  i = i + 1U;
  ldv_37854: ;
  if (i < entity->ncontrols) {
    goto ldv_37853;
  } else {
  }
  {
  kfree((void const *)entity->controls);
  __mptr___0 = (struct list_head const *)entity->list.next;
  entity = (struct uvc_entity *)__mptr___0;
  }
  ldv_37857: ;
  if ((unsigned long )(& entity->list) != (unsigned long )(& dev->entities)) {
    goto ldv_37856;
  } else {
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct uvc_control_mapping * ,
                                                              unsigned char , unsigned char * ) ,
                                                  struct uvc_control_mapping *arg1 ,
                                                  unsigned char arg2 , unsigned char *arg3 )
{
  {
  {
  uvc_ctrl_get_rel_speed(arg1, (int )arg2, (__u8 const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_9(void (*arg0)(struct uvc_control_mapping * ,
                                                               int , unsigned char * ) ,
                                                  struct uvc_control_mapping *arg1 ,
                                                  int arg2 , unsigned char *arg3 )
{
  {
  {
  uvc_ctrl_set_rel_speed(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct uvc_control_mapping * ,
                                                              unsigned char , unsigned char * ) ,
                                                  struct uvc_control_mapping *arg1 ,
                                                  unsigned char arg2 , unsigned char *arg3 )
{
  {
  {
  uvc_ctrl_get_zoom(arg1, (int )arg2, (__u8 const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_9(void (*arg0)(struct uvc_control_mapping * ,
                                                               int , unsigned char * ) ,
                                                  struct uvc_control_mapping *arg1 ,
                                                  int arg2 , unsigned char *arg3 )
{
  {
  {
  uvc_ctrl_set_zoom(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_10(void (*arg0)(struct v4l2_event * ,
                                                                struct v4l2_event * ) ,
                                                   struct v4l2_event *arg1 , struct v4l2_event *arg2 )
{
  {
  {
  v4l2_ctrl_merge((struct v4l2_event const *)arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_13(void (*arg0)(struct v4l2_event * ,
                                                                struct v4l2_event * ) ,
                                                   struct v4l2_event *arg1 , struct v4l2_event *arg2 )
{
  {
  {
  v4l2_ctrl_replace(arg1, (struct v4l2_event const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct v4l2_subscribed_event * ,
                                                              unsigned int ) , struct v4l2_subscribed_event *arg1 ,
                                                  unsigned int arg2 )
{
  {
  {
  uvc_ctrl_add_event(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_9(void (*arg0)(struct v4l2_subscribed_event * ) ,
                                                  struct v4l2_subscribed_event *arg1 )
{
  {
  {
  uvc_ctrl_del_event(arg1);
  }
  return;
}
}
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_malloc_unknown_size();
  ldv_after_alloc(res);
  }
  return (res);
}
}
static int ldv_mutex_lock_interruptible_98(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_ctrl_mutex_of_uvc_video_chain(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_99___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ctrl_mutex_of_uvc_video_chain(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_100(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_ctrl_mutex_of_uvc_video_chain(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_101___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ctrl_mutex_of_uvc_video_chain(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_102(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_ctrl_mutex_of_uvc_video_chain(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_103___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ctrl_mutex_of_uvc_video_chain(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_104___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_ctrl_mutex_of_uvc_video_chain(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_105___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ctrl_mutex_of_uvc_video_chain(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_106(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_ctrl_mutex_of_uvc_video_chain(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_107___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ctrl_mutex_of_uvc_video_chain(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_108(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_ctrl_mutex_of_uvc_video_chain(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_109___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ctrl_mutex_of_uvc_video_chain(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_110(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_ctrl_mutex_of_uvc_video_chain(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_111___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ctrl_mutex_of_uvc_video_chain(ldv_func_arg1);
  }
  return;
}
}
__inline static void __set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static int fls(int x )
{
  int r ;
  {
  __asm__ ("bsrl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
__inline static void usb_fill_int_urb(struct urb *urb , struct usb_device *dev , unsigned int pipe ,
                                      void *transfer_buffer , int buffer_length ,
                                      void (*complete_fn)(struct urb * ) , void *context ,
                                      int interval )
{
  int _min1 ;
  int _max1 ;
  int _max2 ;
  int _min2 ;
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  if ((unsigned int )dev->speed == 3U || (unsigned int )dev->speed == 5U) {
    _max1 = interval;
    _max2 = 1;
    _min1 = _max1 > _max2 ? _max1 : _max2;
    _min2 = 16;
    interval = _min1 < _min2 ? _min1 : _min2;
    urb->interval = 1 << (interval + -1);
  } else {
    urb->interval = interval;
  }
  urb->start_frame = -1;
  return;
}
}
static struct urb *ldv_usb_alloc_urb_97(int ldv_func_arg1 , gfp_t flags ) ;
static void ldv_usb_free_urb_98(struct urb *urb ) ;
static int ldv_usb_submit_urb_96(struct urb *ldv_func_arg1 , gfp_t flags ) ;
static int ldv_usb_submit_urb_99(struct urb *ldv_func_arg1 , gfp_t flags ) ;
struct input_dev *input_allocate_device(void) {
       return kzalloc(sizeof(struct input_dev), 0x10u | 0x40u | 0x80u);
}
extern void input_free_device(struct input_dev * ) ;
extern int input_register_device(struct input_dev * ) ;
extern void input_unregister_device(struct input_dev * ) ;
extern void input_event(struct input_dev * , unsigned int , unsigned int , int ) ;
__inline static void input_report_key(struct input_dev *dev , unsigned int code ,
                                      int value )
{
  {
  {
  input_event(dev, 1U, code, value != 0);
  }
  return;
}
}
__inline static void input_sync(struct input_dev *dev )
{
  {
  {
  input_event(dev, 0U, 0U, 0);
  }
  return;
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void usb_to_input_id(struct usb_device const *dev , struct input_id *id )
{
  {
  id->bustype = 3U;
  id->vendor = dev->descriptor.idVendor;
  id->product = dev->descriptor.idProduct;
  id->version = dev->descriptor.bcdDevice;
  return;
}
}
static int uvc_input_init(struct uvc_device *dev )
{
  struct input_dev *input ;
  int ret ;
  {
  {
  input = input_allocate_device();
  }
  if ((unsigned long )input == (unsigned long )((struct input_dev *)0)) {
    return (-12);
  } else {
  }
  {
  usb_make_path(dev->udev, (char *)(& dev->input_phys), 64UL);
  strlcat((char *)(& dev->input_phys), "/button", 64UL);
  input->name = (char const *)(& dev->name);
  input->phys = (char const *)(& dev->input_phys);
  usb_to_input_id((struct usb_device const *)dev->udev, & input->id);
  input->dev.parent = & (dev->intf)->dev;
  __set_bit(1L, (unsigned long volatile *)(& input->evbit));
  __set_bit(212L, (unsigned long volatile *)(& input->keybit));
  ret = input_register_device(input);
  }
  if (ret < 0) {
    goto error;
  } else {
  }
  dev->input = input;
  return (0);
  error:
  {
  input_free_device(input);
  }
  return (ret);
}
}
static void uvc_input_cleanup(struct uvc_device *dev )
{
  {
  if ((unsigned long )dev->input != (unsigned long )((struct input_dev *)0)) {
    {
    input_unregister_device(dev->input);
    }
  } else {
  }
  return;
}
}
static void uvc_input_report_key(struct uvc_device *dev , unsigned int code , int value )
{
  {
  if ((unsigned long )dev->input != (unsigned long )((struct input_dev *)0)) {
    {
    input_report_key(dev->input, code, value);
    input_sync(dev->input);
    }
  } else {
  }
  return;
}
}
static void uvc_event_streaming(struct uvc_device *dev , __u8 *data , int len )
{
  {
  if (len <= 2) {
    if ((uvc_trace_param & 512U) != 0U) {
      {
      printk("\017uvcvideo: Invalid streaming status event received.\n");
      }
    } else {
    }
    return;
  } else {
  }
  if ((unsigned int )*(data + 2UL) == 0U) {
    if (len <= 3) {
      return;
    } else {
    }
    if ((uvc_trace_param & 512U) != 0U) {
      {
      printk("\017uvcvideo: Button (intf %u) %s len %d\n", (int )*(data + 1UL), (unsigned int )*(data + 3UL) != 0U ? (char *)"pressed" : (char *)"released",
             len);
      }
    } else {
    }
    {
    uvc_input_report_key(dev, 212U, (int )*(data + 3UL));
    }
  } else
  if ((uvc_trace_param & 512U) != 0U) {
    {
    printk("\017uvcvideo: Stream %u error event %02x %02x len %d.\n", (int )*(data + 1UL),
           (int )*(data + 2UL), (int )*(data + 3UL), len);
    }
  } else {
  }
  return;
}
}
static void uvc_event_control(struct uvc_device *dev , __u8 *data , int len )
{
  char *attrs[3U] ;
  {
  attrs[0] = (char *)"value";
  attrs[1] = (char *)"info";
  attrs[2] = (char *)"failure";
  if ((len <= 5 || (unsigned int )*(data + 2UL) != 0U) || (unsigned int )*(data + 4UL) > 2U) {
    if ((uvc_trace_param & 512U) != 0U) {
      {
      printk("\017uvcvideo: Invalid control status event received.\n");
      }
    } else {
    }
    return;
  } else {
  }
  if ((uvc_trace_param & 512U) != 0U) {
    {
    printk("\017uvcvideo: Control %u/%u %s change len %d.\n", (int )*(data + 1UL),
           (int )*(data + 3UL), attrs[(int )*(data + 4UL)], len);
    }
  } else {
  }
  return;
}
}
static void uvc_status_complete(struct urb *urb )
{
  struct uvc_device *dev ;
  int len ;
  int ret ;
  {
  dev = (struct uvc_device *)urb->context;
  {
  if (urb->status == 0) {
    goto case_0;
  } else {
  }
  if (urb->status == -2) {
    goto case_neg_2;
  } else {
  }
  if (urb->status == -104) {
    goto case_neg_104;
  } else {
  }
  if (urb->status == -108) {
    goto case_neg_108;
  } else {
  }
  if (urb->status == -71) {
    goto case_neg_71;
  } else {
  }
  goto switch_default;
  case_0: ;
  goto ldv_36571;
  case_neg_2: ;
  case_neg_104: ;
  case_neg_108: ;
  case_neg_71: ;
  return;
  switch_default:
  {
  printk("\fuvcvideo: Non-zero status (%d) in status completion handler.\n", urb->status);
  }
  return;
  switch_break: ;
  }
  ldv_36571:
  len = (int )urb->actual_length;
  if (len > 0) {
    {
    if (((int )*(dev->status) & 15) == 1) {
      goto case_1;
    } else {
    }
    if (((int )*(dev->status) & 15) == 2) {
      goto case_2;
    } else {
    }
    goto switch_default___0;
    case_1:
    {
    uvc_event_control(dev, dev->status, len);
    }
    goto ldv_36578;
    case_2:
    {
    uvc_event_streaming(dev, dev->status, len);
    }
    goto ldv_36578;
    switch_default___0: ;
    if ((uvc_trace_param & 512U) != 0U) {
      {
      printk("\017uvcvideo: Unknown status event type %u.\n", (int )*(dev->status));
      }
    } else {
    }
    goto ldv_36578;
    switch_break___0: ;
    }
    ldv_36578: ;
  } else {
  }
  {
  urb->interval = (int )(dev->int_ep)->desc.bInterval;
  ret = ldv_usb_submit_urb_96(urb, 32U);
  }
  if (ret < 0) {
    {
    printk("\vuvcvideo: Failed to resubmit status URB (%d).\n", ret);
    }
  } else {
  }
  return;
}
}
int uvc_status_init(struct uvc_device *dev )
{
  struct usb_host_endpoint *ep ;
  unsigned int pipe ;
  int interval ;
  void *tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  ep = dev->int_ep;
  if ((unsigned long )ep == (unsigned long )((struct usb_host_endpoint *)0)) {
    return (0);
  } else {
  }
  {
  uvc_input_init(dev);
  tmp = kzalloc(16UL, 208U);
  dev->status = (__u8 *)tmp;
  }
  if ((unsigned long )dev->status == (unsigned long )((__u8 *)0U)) {
    return (-12);
  } else {
  }
  {
  dev->int_urb = ldv_usb_alloc_urb_97(0, 208U);
  }
  if ((unsigned long )dev->int_urb == (unsigned long )((struct urb *)0)) {
    {
    kfree((void const *)dev->status);
    }
    return (-12);
  } else {
  }
  {
  tmp___0 = __create_pipe(dev->udev, (unsigned int )ep->desc.bEndpointAddress);
  pipe = tmp___0 | 1073741952U;
  interval = (int )ep->desc.bInterval;
  }
  if ((interval > 16 && (unsigned int )(dev->udev)->speed == 3U) && (int )dev->quirks & 1) {
    {
    tmp___1 = fls(interval);
    interval = tmp___1 + -1;
    }
  } else {
  }
  {
  usb_fill_int_urb(dev->int_urb, dev->udev, pipe, (void *)dev->status, 16, & uvc_status_complete,
                   (void *)dev, interval);
  }
  return (0);
}
}
void uvc_status_cleanup(struct uvc_device *dev )
{
  {
  {
  usb_kill_urb(dev->int_urb);
  ldv_usb_free_urb_98(dev->int_urb);
  kfree((void const *)dev->status);
  uvc_input_cleanup(dev);
  }
  return;
}
}
int uvc_status_start(struct uvc_device *dev , gfp_t flags )
{
  int tmp ;
  {
  if ((unsigned long )dev->int_urb == (unsigned long )((struct urb *)0)) {
    return (0);
  } else {
  }
  {
  tmp = ldv_usb_submit_urb_99(dev->int_urb, flags);
  }
  return (tmp);
}
}
void uvc_status_stop(struct uvc_device *dev )
{
  {
  {
  usb_kill_urb(dev->int_urb);
  }
  return;
}
}
static int ldv_usb_submit_urb_96(struct urb *ldv_func_arg1 , gfp_t flags )
{
  {
  {
  ldv_check_alloc_flags(flags);
  }
  return __VERIFIER_nondet_int();
}
}
static struct urb *ldv_usb_alloc_urb_97(int ldv_func_arg1 , gfp_t flags )
{
  struct urb *res ;
  struct urb *tmp ;
  long tmp___0 ;
  {
  {
  tmp = ldv_linux_usb_urb_usb_alloc_urb();
  res = tmp;
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  ldv_linux_alloc_irq_check_alloc_flags(flags);
  ldv_linux_alloc_usb_lock_check_alloc_flags(flags);
  }
  return (res);
}
}
static void ldv_usb_free_urb_98(struct urb *urb )
{
  {
  {
  ldv_linux_usb_urb_usb_free_urb(urb);
  }
  return;
}
}
static int ldv_usb_submit_urb_99(struct urb *ldv_func_arg1 , gfp_t flags )
{
  {
  {
  ldv_check_alloc_flags(flags);
  }
  return __VERIFIER_nondet_int();
}
}
static int isight_decode(struct uvc_video_queue *queue , struct uvc_buffer *buf ,
                         __u8 const *data , unsigned int len )
{
  __u8 hdr[12U] ;
  unsigned int maxlen ;
  unsigned int nbytes ;
  __u8 *mem ;
  int is_header ;
  int tmp ;
  int tmp___0 ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  {
  hdr[0] = 17U;
  hdr[1] = 34U;
  hdr[2] = 51U;
  hdr[3] = 68U;
  hdr[4] = 222U;
  hdr[5] = 173U;
  hdr[6] = 190U;
  hdr[7] = 239U;
  hdr[8] = 222U;
  hdr[9] = 173U;
  hdr[10] = 250U;
  hdr[11] = 206U;
  is_header = 0;
  if ((unsigned long )buf == (unsigned long )((struct uvc_buffer *)0)) {
    return (0);
  } else {
  }
  if (len > 13U) {
    {
    tmp = memcmp((void const *)data + 2U, (void const *)(& hdr), 12UL);
    }
    if (tmp == 0) {
      goto _L;
    } else {
      goto _L___0;
    }
  } else
  _L___0:
  if (len > 14U) {
    {
    tmp___0 = memcmp((void const *)data + 3U, (void const *)(& hdr), 12UL);
    }
    if (tmp___0 == 0) {
      _L:
      if ((uvc_trace_param & 128U) != 0U) {
        {
        printk("\017uvcvideo: iSight header found\n");
        }
      } else {
      }
      is_header = 1;
    } else {
    }
  } else {
  }
  if ((unsigned int )buf->state != 2U) {
    if (is_header == 0) {
      if ((uvc_trace_param & 128U) != 0U) {
        {
        printk("\017uvcvideo: Dropping packet (out of sync).\n");
        }
      } else {
      }
      return (0);
    } else {
    }
    buf->state = 2;
  } else {
  }
  if (is_header != 0 && buf->bytesused != 0U) {
    buf->state = 4;
    return (-11);
  } else {
  }
  if (is_header == 0) {
    {
    maxlen = buf->length - buf->bytesused;
    mem = (__u8 *)buf->mem + (unsigned long )buf->bytesused;
    _min1 = len;
    _min2 = maxlen;
    nbytes = _min1 < _min2 ? _min1 : _min2;
    memcpy((void *)mem, (void const *)data, (size_t )nbytes);
    buf->bytesused = buf->bytesused + nbytes;
    }
    if (len > maxlen || buf->bytesused == buf->length) {
      if ((uvc_trace_param & 128U) != 0U) {
        {
        printk("\017uvcvideo: Frame complete (overflow).\n");
        }
      } else {
      }
      buf->state = 4;
    } else {
    }
  } else {
  }
  return (0);
}
}
void uvc_video_decode_isight(struct urb *urb , struct uvc_streaming *stream , struct uvc_buffer *buf )
{
  int ret ;
  int i ;
  {
  i = 0;
  goto ldv_36128;
  ldv_36127: ;
  if (urb->iso_frame_desc[i].status < 0) {
    if ((uvc_trace_param & 128U) != 0U) {
      {
      printk("\017uvcvideo: USB isochronous frame lost (%d).\n", urb->iso_frame_desc[i].status);
      }
    } else {
    }
  } else {
  }
  ldv_36126:
  {
  ret = isight_decode(& stream->queue, buf, (__u8 const *)urb->transfer_buffer + (unsigned long )urb->iso_frame_desc[i].offset,
                      urb->iso_frame_desc[i].actual_length);
  }
  if ((unsigned long )buf == (unsigned long )((struct uvc_buffer *)0)) {
    goto ldv_36125;
  } else {
  }
  if ((unsigned int )buf->state - 4U <= 1U) {
    {
    buf = uvc_queue_next_buffer(& stream->queue, buf);
    }
  } else {
  }
  if (ret == -11) {
    goto ldv_36126;
  } else {
  }
  ldv_36125:
  i = i + 1;
  ldv_36128: ;
  if (i < urb->number_of_packets) {
    goto ldv_36127;
  } else {
  }
  return;
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
extern loff_t no_llseek(struct file * , loff_t , int ) ;
extern ssize_t simple_read_from_buffer(void * , size_t , loff_t * , void const * ,
                                       size_t ) ;
extern struct dentry *usb_debug_root ;
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
extern void debugfs_remove_recursive(struct dentry * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
static int uvc_debugfs_stats_open(struct inode *inode , struct file *file )
{
  struct uvc_streaming *stream ;
  struct uvc_debugfs_buffer *buf ;
  void *tmp ;
  {
  {
  stream = (struct uvc_streaming *)inode->i_private;
  tmp = kmalloc(1032UL, 208U);
  buf = (struct uvc_debugfs_buffer *)tmp;
  }
  if ((unsigned long )buf == (unsigned long )((struct uvc_debugfs_buffer *)0)) {
    return (-12);
  } else {
  }
  {
  buf->count = uvc_video_stats_dump(stream, (char *)(& buf->data), 1024UL);
  file->private_data = (void *)buf;
  }
  return (0);
}
}
static ssize_t uvc_debugfs_stats_read(struct file *file , char *user_buf , size_t nbytes ,
                                      loff_t *ppos )
{
  struct uvc_debugfs_buffer *buf ;
  ssize_t tmp ;
  {
  {
  buf = (struct uvc_debugfs_buffer *)file->private_data;
  tmp = simple_read_from_buffer((void *)user_buf, nbytes, ppos, (void const *)(& buf->data),
                                buf->count);
  }
  return (tmp);
}
}
static int uvc_debugfs_stats_release(struct inode *inode , struct file *file )
{
  {
  {
  kfree((void const *)file->private_data);
  file->private_data = (void *)0;
  }
  return (0);
}
}
static struct file_operations const uvc_debugfs_stats_fops =
     {& __this_module, & no_llseek, & uvc_debugfs_stats_read, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, & uvc_debugfs_stats_open, 0, & uvc_debugfs_stats_release, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct dentry *uvc_debugfs_root_dir ;
int uvc_debugfs_init_stream(struct uvc_streaming *stream )
{
  struct usb_device *udev ;
  struct dentry *dent ;
  char dir_name[32U] ;
  bool tmp ;
  bool tmp___0 ;
  {
  udev = (stream->dev)->udev;
  if ((unsigned long )uvc_debugfs_root_dir == (unsigned long )((struct dentry *)0)) {
    return (-19);
  } else {
  }
  {
  sprintf((char *)(& dir_name), "%u-%u", (udev->bus)->busnum, udev->devnum);
  dent = debugfs_create_dir((char const *)(& dir_name), uvc_debugfs_root_dir);
  tmp = IS_ERR_OR_NULL((void const *)dent);
  }
  if ((int )tmp) {
    {
    printk("\016uvcvideo: Unable to create debugfs %s directory.\n", (char *)(& dir_name));
    }
    return (-19);
  } else {
  }
  {
  stream->debugfs_dir = dent;
  dent = debugfs_create_file("stats", 292, stream->debugfs_dir, (void *)stream, & uvc_debugfs_stats_fops);
  tmp___0 = IS_ERR_OR_NULL((void const *)dent);
  }
  if ((int )tmp___0) {
    {
    printk("\016uvcvideo: Unable to create debugfs stats file.\n");
    uvc_debugfs_cleanup_stream(stream);
    }
    return (-19);
  } else {
  }
  return (0);
}
}
void uvc_debugfs_cleanup_stream(struct uvc_streaming *stream )
{
  {
  if ((unsigned long )stream->debugfs_dir == (unsigned long )((struct dentry *)0)) {
    return;
  } else {
  }
  {
  debugfs_remove_recursive(stream->debugfs_dir);
  stream->debugfs_dir = (struct dentry *)0;
  }
  return;
}
}
int uvc_debugfs_init(void)
{
  struct dentry *dir ;
  bool tmp ;
  {
  {
  dir = debugfs_create_dir("uvcvideo", usb_debug_root);
  tmp = IS_ERR_OR_NULL((void const *)dir);
  }
  if ((int )tmp) {
    {
    printk("\016uvcvideo: Unable to create debugfs directory\n");
    }
    return (-61);
  } else {
  }
  uvc_debugfs_root_dir = dir;
  return (0);
}
}
void uvc_debugfs_cleanup(void)
{
  {
  if ((unsigned long )uvc_debugfs_root_dir != (unsigned long )((struct dentry *)0)) {
    {
    debugfs_remove_recursive(uvc_debugfs_root_dir);
    }
  } else {
  }
  return;
}
}
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
struct ldv_thread ldv_thread_0 ;
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  struct file_operations *ldv_0_container_file_operations ;
  char *ldv_0_ldv_param_4_1_default ;
  long long *ldv_0_ldv_param_4_3_default ;
  struct file *ldv_0_resource_file ;
  struct inode *ldv_0_resource_inode ;
  int ldv_0_ret_default ;
  unsigned long ldv_0_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  {
  ldv_0_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_0_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_0_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_0_size_cnt_write_size = (unsigned long )tmp___1;
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
  goto switch_default;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume(ldv_0_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_0_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_0_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_0_container_file_operations->write,
                                           ldv_0_resource_file, ldv_0_ldv_param_4_1_default,
                                           ldv_0_size_cnt_write_size, ldv_0_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_0_ldv_param_4_1_default);
  ldv_free((void *)ldv_0_ldv_param_4_3_default);
  }
  goto ldv_call_0;
  case_2: ;
  goto ldv_call_0;
  goto ldv_call_0;
  case_3: ;
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
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = uvc_debugfs_stats_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_io_instance_callback_9_19(long long (*arg0)(struct file * , long long ,
                                                     int ) , struct file *arg1 ,
                                   long long arg2 , int arg3 )
{
  {
  {
  no_llseek(arg1, arg2, arg3);
  }
  return;
}
}
extern int media_entity_init(struct media_entity * , u16 , struct media_pad * , u16 ) ;
extern void media_entity_cleanup(struct media_entity * ) ;
extern int media_entity_create_link(struct media_entity * , u16 , struct media_entity * ,
                                    u16 , u32 ) ;
extern void v4l2_subdev_init(struct v4l2_subdev * , struct v4l2_subdev_ops const * ) ;
extern int v4l2_device_register_subdev(struct v4l2_device * , struct v4l2_subdev * ) ;
static int uvc_mc_register_entity(struct uvc_video_chain *chain , struct uvc_entity *entity )
{
  u32 flags ;
  struct media_entity *sink ;
  unsigned int i ;
  int ret ;
  struct media_entity *source ;
  struct uvc_entity *remote ;
  u8 remote_pad ;
  int tmp ;
  {
  flags = 3U;
  sink = ((int )entity->type & 32767) == 257 ? ((unsigned long )entity->vdev != (unsigned long )((struct video_device *)0) ? & (entity->vdev)->entity : (struct media_entity *)0) : & entity->subdev.entity;
  if ((unsigned long )sink == (unsigned long )((struct media_entity *)0)) {
    return (0);
  } else {
  }
  i = 0U;
  goto ldv_36117;
  ldv_36116: ;
  if (((entity->pads + (unsigned long )i)->flags & 1UL) == 0UL) {
    goto ldv_36115;
  } else {
  }
  {
  remote = uvc_entity_by_id(chain->dev, (int )*(entity->baSourceID + (unsigned long )i));
  }
  if ((unsigned long )remote == (unsigned long )((struct uvc_entity *)0)) {
    return (-22);
  } else {
  }
  source = ((int )remote->type & 32767) == 257 ? ((unsigned long )remote->vdev != (unsigned long )((struct video_device *)0) ? & (remote->vdev)->entity : (struct media_entity *)0) : & remote->subdev.entity;
  if ((unsigned long )source == (unsigned long )((struct media_entity *)0)) {
    goto ldv_36115;
  } else {
  }
  {
  remote_pad = (unsigned int )((u8 )remote->num_pads) - 1U;
  ret = media_entity_create_link(source, (int )remote_pad, sink, (int )((u16 )i),
                                 flags);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  ldv_36115:
  i = i + 1U;
  ldv_36117: ;
  if (i < entity->num_pads) {
    goto ldv_36116;
  } else {
  }
  if (((int )entity->type & 32767) == 257) {
    return (0);
  } else {
  }
  {
  tmp = v4l2_device_register_subdev(& (chain->dev)->vdev, & entity->subdev);
  }
  return (tmp);
}
}
static struct v4l2_subdev_ops uvc_subdev_ops =
     {0, 0, 0, 0, 0, 0, 0, 0};
void uvc_mc_cleanup_entity(struct uvc_entity *entity )
{
  {
  if (((int )entity->type & 32767) != 257) {
    {
    media_entity_cleanup(& entity->subdev.entity);
    }
  } else
  if ((unsigned long )entity->vdev != (unsigned long )((struct video_device *)0)) {
    {
    media_entity_cleanup(& (entity->vdev)->entity);
    }
  } else {
  }
  return;
}
}
static int uvc_mc_init_entity(struct uvc_entity *entity )
{
  int ret ;
  {
  if (((int )entity->type & 32767) != 257) {
    {
    v4l2_subdev_init(& entity->subdev, (struct v4l2_subdev_ops const *)(& uvc_subdev_ops));
    strlcpy((char *)(& entity->subdev.name), (char const *)(& entity->name), 32UL);
    ret = media_entity_init(& entity->subdev.entity, (int )((u16 )entity->num_pads),
                            entity->pads, 0);
    }
  } else
  if ((unsigned long )entity->vdev != (unsigned long )((struct video_device *)0)) {
    {
    ret = media_entity_init(& (entity->vdev)->entity, (int )((u16 )entity->num_pads),
                            entity->pads, 0);
    }
    if ((int )entity->flags & 1) {
      (entity->vdev)->entity.flags = (entity->vdev)->entity.flags | 1UL;
    } else {
    }
  } else {
    ret = 0;
  }
  return (ret);
}
}
int uvc_mc_register_entities(struct uvc_video_chain *chain )
{
  struct uvc_entity *entity ;
  int ret ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  __mptr = (struct list_head const *)chain->entities.next;
  entity = (struct uvc_entity *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_36137;
  ldv_36136:
  {
  ret = uvc_mc_init_entity(entity);
  }
  if (ret < 0) {
    {
    printk("\016uvcvideo: Failed to initialize entity for entity %u\n", (int )entity->id);
    }
    return (ret);
  } else {
  }
  __mptr___0 = (struct list_head const *)entity->chain.next;
  entity = (struct uvc_entity *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_36137: ;
  if ((unsigned long )(& entity->chain) != (unsigned long )(& chain->entities)) {
    goto ldv_36136;
  } else {
  }
  __mptr___1 = (struct list_head const *)chain->entities.next;
  entity = (struct uvc_entity *)__mptr___1 + 0xfffffffffffffff0UL;
  goto ldv_36144;
  ldv_36143:
  {
  ret = uvc_mc_register_entity(chain, entity);
  }
  if (ret < 0) {
    {
    printk("\016uvcvideo: Failed to register entity for entity %u\n", (int )entity->id);
    }
    return (ret);
  } else {
  }
  __mptr___2 = (struct list_head const *)entity->chain.next;
  entity = (struct uvc_entity *)__mptr___2 + 0xfffffffffffffff0UL;
  ldv_36144: ;
  if ((unsigned long )(& entity->chain) != (unsigned long )(& chain->entities)) {
    goto ldv_36143;
  } else {
  }
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ctrl_mutex_of_uvc_video_chain ;
void ldv_linux_kernel_locking_mutex_mutex_lock_ctrl_mutex_of_uvc_video_chain(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ctrl_mutex_of_uvc_video_chain);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ctrl_mutex_of_uvc_video_chain = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_ctrl_mutex_of_uvc_video_chain(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ctrl_mutex_of_uvc_video_chain);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ctrl_mutex_of_uvc_video_chain = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_ctrl_mutex_of_uvc_video_chain(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ctrl_mutex_of_uvc_video_chain) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_ctrl_mutex_of_uvc_video_chain(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ctrl_mutex_of_uvc_video_chain);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_ctrl_mutex_of_uvc_video_chain(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ctrl_mutex_of_uvc_video_chain = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_ctrl_mutex_of_uvc_video_chain(atomic_t *cnt ,
                                                                                           struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_ctrl_mutex_of_uvc_video_chain(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_ctrl_mutex_of_uvc_video_chain(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ctrl_mutex_of_uvc_video_chain);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ctrl_mutex_of_uvc_video_chain = 0;
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_uvc_device ;
void ldv_linux_kernel_locking_mutex_mutex_lock_lock_of_uvc_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_uvc_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_uvc_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_lock_of_uvc_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_uvc_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_uvc_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_lock_of_uvc_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_uvc_device) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_lock_of_uvc_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_uvc_device);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_lock_of_uvc_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_uvc_device = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_lock_of_uvc_device(atomic_t *cnt ,
                                                                                struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_lock_of_uvc_device(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_lock_of_uvc_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_uvc_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_uvc_device = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_v4l2_ctrl_handler ;
void ldv_linux_kernel_locking_mutex_mutex_lock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_v4l2_ctrl_handler);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_v4l2_ctrl_handler = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_v4l2_ctrl_handler);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_v4l2_ctrl_handler = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_v4l2_ctrl_handler) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_v4l2_ctrl_handler);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_lock_of_v4l2_ctrl_handler(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_v4l2_ctrl_handler = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_lock_of_v4l2_ctrl_handler(atomic_t *cnt ,
                                                                                       struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_lock_of_v4l2_ctrl_handler(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_v4l2_ctrl_handler);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_v4l2_ctrl_handler = 0;
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_streaming ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_streaming(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_streaming);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_streaming = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_mutex_of_uvc_streaming(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_streaming);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_streaming = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_uvc_streaming(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_streaming) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_mutex_of_uvc_streaming(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_streaming);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_uvc_streaming(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_streaming = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_mutex_of_uvc_streaming(atomic_t *cnt ,
                                                                                    struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_streaming(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_streaming(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_streaming);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_streaming = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_video_queue ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_video_queue(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_video_queue);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_video_queue = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_mutex_of_uvc_video_queue(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_video_queue);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_video_queue = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_uvc_video_queue(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_video_queue) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_mutex_of_uvc_video_queue(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_video_queue);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_uvc_video_queue(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_video_queue = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_mutex_of_uvc_video_queue(atomic_t *cnt ,
                                                                                      struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_uvc_video_queue(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_uvc_video_queue(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_video_queue);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_video_queue = 0;
  }
  return;
}
}
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ctrl_mutex_of_uvc_video_chain = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_uvc_device = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_v4l2_ctrl_handler = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_streaming = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_video_queue = 0;
  return;
}
}
void ldv_linux_kernel_locking_mutex_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ctrl_mutex_of_uvc_video_chain);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_uvc_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_v4l2_ctrl_handler);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_streaming);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_uvc_video_queue);
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
static int ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_irqlock_of_uvc_video_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue == 1);
  ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_irqlock_of_uvc_video_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue == 2);
  ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_irqlock_of_uvc_video_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_irqlock_of_uvc_video_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_irqlock_of_uvc_video_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_irqlock_of_uvc_video_queue(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_irqlock_of_uvc_video_queue();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_irqlock_of_uvc_video_queue(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_irqlock_of_uvc_video_queue(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue = 2;
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
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_uvc_clock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_uvc_clock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_uvc_clock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_uvc_clock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_uvc_clock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_uvc_clock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_uvc_clock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_uvc_clock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_uvc_clock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock = 2;
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
void ldv_linux_kernel_locking_spinlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
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
  if (ldv_linux_kernel_locking_spinlock_spin_irqlock_of_uvc_video_queue == 2) {
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
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_uvc_clock == 2) {
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
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __clear_user(void *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t *arg0) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __media_device_register(struct media_device *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void *external_alloc(void);
void *compat_alloc_user_space(unsigned long arg0) {
  return (void *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int copy_in_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void *external_alloc(void);
struct dentry *debugfs_create_dir(const char *arg0, struct dentry *arg1) {
  return (struct dentry *)external_alloc();
}
void *external_alloc(void);
struct dentry *debugfs_create_file(const char *arg0, umode_t arg1, struct dentry *arg2, void *arg3, const struct file_operations *arg4) {
  return (struct dentry *)external_alloc();
}
void debugfs_remove_recursive(struct dentry *arg0) {
  return;
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void getnstimeofday64(struct timespec *arg0) {
  return;
}
void input_event(struct input_dev *arg0, unsigned int arg1, unsigned int arg2, int arg3) {
  return;
}
void input_free_device(struct input_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int input_register_device(struct input_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void input_unregister_device(struct input_dev *arg0) {
  return;
}
void *external_alloc(void);
void *kmemdup(const void *arg0, size_t arg1, gfp_t arg2) {
  return (void *)external_alloc();
}
void ktime_get_ts64(struct timespec *arg0) {
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
void media_device_unregister(struct media_device *arg0) {
  return;
}
void media_entity_cleanup(struct media_entity *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int media_entity_create_link(struct media_entity *arg0, u16 arg1, struct media_entity *arg2, u16 arg3, u32 arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int media_entity_init(struct media_entity *arg0, u16 arg1, struct media_pad *arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t memweight(const void *arg0, size_t arg1) {
  return __VERIFIER_nondet_ulong();
}
void might_fault() {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t no_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scnprintf(char *arg0, size_t arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void set_normalized_timespec(struct timespec *arg0, time_t arg1, s64 arg2) {
  return;
}
long __VERIFIER_nondet_long(void);
ssize_t simple_read_from_buffer(void *arg0, size_t arg1, loff_t *arg2, const void *arg3, size_t arg4) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int strcasecmp(const char *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcat(char *arg0, const char *arg1, __kernel_size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int strncasecmp(const char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_autopm_get_interface(struct usb_interface *arg0) {
  return __VERIFIER_nondet_int();
}
void usb_autopm_put_interface(struct usb_interface *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_clear_halt(struct usb_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_driver_claim_interface(struct usb_driver *arg0, struct usb_interface *arg1, void *arg2) {
  return __VERIFIER_nondet_int();
}
void usb_driver_release_interface(struct usb_driver *arg0, struct usb_interface *arg1) {
  return;
}
void usb_enable_autosuspend(struct usb_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_get_current_frame_number(struct usb_device *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct usb_interface *usb_get_intf(struct usb_interface *arg0) {
  return (struct usb_interface *)external_alloc();
}
void *external_alloc(void);
struct usb_interface *usb_ifnum_to_if(const struct usb_device *arg0, unsigned int arg1) {
  return (struct usb_interface *)external_alloc();
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_match_one_id(struct usb_interface *arg0, const struct usb_device_id *arg1) {
  return __VERIFIER_nondet_int();
}
void usb_put_intf(struct usb_interface *arg0) {
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
int __VERIFIER_nondet_int(void);
int usb_string(struct usb_device *arg0, int arg1, char *arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
void v4l2_ctrl_merge(const struct v4l2_event *arg0, struct v4l2_event *arg1) {
  return;
}
void v4l2_ctrl_replace(struct v4l2_event *arg0, const struct v4l2_event *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register_subdev(struct v4l2_device *arg0, struct v4l2_subdev *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
void v4l2_event_queue_fh(struct v4l2_fh *arg0, const struct v4l2_event *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_event_subscribe(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1, unsigned int arg2, const struct v4l2_subscribed_event_ops *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_event_unsubscribe(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_fh_add(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_del(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_exit(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_init(struct v4l2_fh *arg0, struct video_device *arg1) {
  return;
}
void v4l2_prio_init(struct v4l2_prio_state *arg0) {
  return;
}
void v4l2_subdev_init(struct v4l2_subdev *arg0, const struct v4l2_subdev_ops *arg1) {
  return;
}
void vb2_buffer_done(struct vb2_buffer *arg0, enum vb2_buffer_state arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int vb2_create_bufs(struct vb2_queue *arg0, struct v4l2_create_buffers *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_dqbuf(struct vb2_queue *arg0, struct v4l2_buffer *arg1, bool arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_mmap(struct vb2_queue *arg0, struct vm_area_struct *arg1) {
  return __VERIFIER_nondet_int();
}
void vb2_ops_wait_finish(struct vb2_queue *arg0) {
  return;
}
void vb2_ops_wait_prepare(struct vb2_queue *arg0) {
  return;
}
void *external_alloc(void);
void *vb2_plane_vaddr(struct vb2_buffer *arg0, unsigned int arg1) {
  return (void *)external_alloc();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int vb2_poll(struct vb2_queue *arg0, struct file *arg1, poll_table *arg2) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int vb2_qbuf(struct vb2_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_querybuf(struct vb2_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_queue_init(struct vb2_queue *arg0) {
  return __VERIFIER_nondet_int();
}
void vb2_queue_release(struct vb2_queue *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int vb2_reqbufs(struct vb2_queue *arg0, struct v4l2_requestbuffers *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_streamoff(struct vb2_queue *arg0, enum v4l2_buf_type arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_streamon(struct vb2_queue *arg0, enum v4l2_buf_type arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct video_device *video_devdata(struct file *arg0) {
  return (struct video_device *)external_alloc();
}
void *external_alloc(void);
struct video_device *video_device_alloc() {
  return (struct video_device *)external_alloc();
}
void video_device_release(struct video_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
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
