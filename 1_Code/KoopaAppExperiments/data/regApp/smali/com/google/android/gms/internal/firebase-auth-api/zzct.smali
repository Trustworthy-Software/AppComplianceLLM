.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzct;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzmq;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza:Ljava/util/logging/Logger;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzd:Ljava/util/concurrent/ConcurrentMap;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbp;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbr;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzrx;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcr;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcq;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    nop

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zze:Ljava/util/Set;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzbs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbs<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    nop

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzbs;

    move-result-object p0

    .line 3
    return-object p0
.end method

.method public static declared-synchronized zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzbs;

    move-result-object v1

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 11
    :cond_0
    :try_start_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzf()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newKey-operation not permitted for key type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzbs;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzco;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzco;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzco;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "manager for key type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " is not a PrivateKeyManager"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zza(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 13
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznr;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zznr;->zza(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcg;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcg<",
            "TB;>;",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznr;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznr;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcg;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuy;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzuy;",
            ")TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzbs;

    move-result-object v0

    .line 18
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbs;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Ljava/lang/Object;

    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuy;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzuy;",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahd;",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;

    invoke-virtual {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzbs;

    move-result-object p0

    .line 22
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbs;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/lang/String;[BLjava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcp<",
            "TB;TP;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    monitor-enter v0

    .line 63
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznr;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznr;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zznr;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v0

    return-void

    .line 62
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized zza(Lcom/google/android/gms/internal/firebase-auth-api/zznb;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyProtoT::",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakb;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zznb<",
            "TKeyProtoT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-class p1, Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    monitor-enter p1

    .line 56
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzmq;)V

    .line 57
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznb;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zze()Ljava/lang/String;

    move-result-object p0

    .line 59
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;Z)V

    .line 60
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p1

    return-void

    .line 55
    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public static declared-synchronized zza(Lcom/google/android/gms/internal/firebase-auth-api/zzop;Lcom/google/android/gms/internal/firebase-auth-api/zznb;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyProtoT::",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakb;",
            "PublicKeyProtoT::",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakb;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzop<",
            "TKeyProtoT;TPublicKeyProtoT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zznb<",
            "TPublicKeyProtoT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    monitor-enter p2

    .line 46
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzmq;)V

    .line 47
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzop;Lcom/google/android/gms/internal/firebase-auth-api/zznb;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zze()Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zze()Ljava/lang/String;

    move-result-object p1

    .line 50
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;Z)V

    .line 51
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Ljava/lang/String;Z)V

    .line 52
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v4, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v4, p1, p0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p2

    return-void

    .line 45
    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method private static declared-synchronized zza(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    monitor-enter v0

    .line 43
    if-eqz p1, :cond_1

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New keys are already disallowed for key type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 45
    :cond_1
    :goto_0
    monitor-exit v0

    return-void
.end method
