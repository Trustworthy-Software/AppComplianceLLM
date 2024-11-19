.class abstract Lcom/google/android/gms/internal/firebase-auth-api/zzact;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzact$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzade<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field protected final zza:I

.field private zzaa:Lcom/google/android/gms/common/api/Status;

.field protected final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzacv;"
        }
    .end annotation
.end field

.field protected zzc:Lcom/google/firebase/FirebaseApp;

.field protected zzd:Lcom/google/firebase/auth/FirebaseUser;

.field protected zze:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field protected zzf:Lcom/google/firebase/auth/internal/zzao;

.field protected zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzacu<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field protected final zzh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field protected zzi:Ljava/util/concurrent/Executor;

.field protected zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

.field protected zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

.field protected zzl:Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;

.field protected zzm:Lcom/google/android/gms/internal/firebase-auth-api/zzafr;

.field protected zzn:Ljava/lang/String;

.field protected zzo:Ljava/lang/String;

.field protected zzp:Lcom/google/firebase/auth/AuthCredential;

.field protected zzq:Ljava/lang/String;

.field protected zzr:Ljava/lang/String;

.field protected zzs:Lcom/google/android/gms/internal/firebase-auth-api/zzyk;

.field protected zzt:Lcom/google/android/gms/internal/firebase-auth-api/zzaff;

.field protected zzu:Lcom/google/android/gms/internal/firebase-auth-api/zzafa;

.field protected zzv:Lcom/google/android/gms/internal/firebase-auth-api/zzafz;

.field zzw:Z

.field private zzx:Z

.field private zzy:Z

.field private zzz:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzh:Ljava/util/List;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzx:Z

    .line 30
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    .line 31
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V
    .locals 1

    .line 18
    nop

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzb()V

    .line 20
    iget-boolean p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzy:Z

    const-string v0, "no success or failure set on method implementation"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 21
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 22
    nop

    .line 23
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzf:Lcom/google/firebase/auth/internal/zzao;

    if-eqz p0, :cond_0

    .line 24
    invoke-interface {p0, p1}, Lcom/google/firebase/auth/internal/zzao;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 25
    :cond_0
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzy:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzact<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    .line 5
    const-string v0, "firebaseApp cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzc:Lcom/google/firebase/FirebaseApp;

    .line 6
    return-object p0
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzact<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    .line 7
    const-string v0, "firebaseUser cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/FirebaseUser;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzd:Lcom/google/firebase/auth/FirebaseUser;

    .line 8
    return-object p0
.end method

.method public final zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzact<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    .line 9
    nop

    .line 10
    invoke-static {p4, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Lcom/google/android/gms/internal/firebase-auth-api/zzact;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object p1

    .line 11
    iget-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzh:Ljava/util/List;

    monitor-enter p4

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzh:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzh:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact$zza;->zza(Landroid/app/Activity;Ljava/util/List;)V

    .line 16
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzi:Ljava/util/concurrent/Executor;

    .line 17
    return-object p0

    .line 13
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/internal/zzao;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzact<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    .line 3
    const-string v0, "external failure callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzao;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzf:Lcom/google/firebase/auth/internal/zzao;

    .line 4
    return-object p0
.end method

.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzact<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    .line 1
    const-string v0, "external callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zze:Ljava/lang/Object;

    .line 2
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzy:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzw:Z

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzaa:Lcom/google/android/gms/common/api/Status;

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacu;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacu;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    .line 36
    return-void
.end method

.method public abstract zzb()V
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzy:Z

    .line 38
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzw:Z

    .line 39
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzz:Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacu;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacu;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    .line 41
    return-void
.end method
