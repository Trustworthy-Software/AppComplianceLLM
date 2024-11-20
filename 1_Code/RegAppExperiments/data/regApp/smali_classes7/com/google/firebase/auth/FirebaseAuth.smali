.class public Lcom/google/firebase/auth/FirebaseAuth;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/firebase/auth/internal/InternalAuthProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;,
        Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;,
        Lcom/google/firebase/auth/FirebaseAuth$zza;,
        Lcom/google/firebase/auth/FirebaseAuth$zzb;,
        Lcom/google/firebase/auth/FirebaseAuth$zzc;
    }
.end annotation


# instance fields
.field private zza:Lcom/google/firebase/FirebaseApp;

.field private final zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/IdTokenListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

.field private zzf:Lcom/google/firebase/auth/FirebaseUser;

.field private zzg:Lcom/google/firebase/auth/internal/zzw;

.field private final zzh:Ljava/lang/Object;

.field private zzi:Ljava/lang/String;

.field private final zzj:Ljava/lang/Object;

.field private zzk:Ljava/lang/String;

.field private zzl:Lcom/google/firebase/auth/internal/zzbn;

.field private final zzm:Lcom/google/android/recaptcha/RecaptchaAction;

.field private final zzn:Lcom/google/android/recaptcha/RecaptchaAction;

.field private final zzo:Lcom/google/android/recaptcha/RecaptchaAction;

.field private final zzp:Lcom/google/firebase/auth/internal/zzbr;

.field private final zzq:Lcom/google/firebase/auth/internal/zzbx;

.field private final zzr:Lcom/google/firebase/auth/internal/zzb;

.field private final zzs:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final zzt:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatController;",
            ">;"
        }
    .end annotation
.end field

.field private zzu:Lcom/google/firebase/auth/internal/zzbu;

.field private final zzv:Ljava/util/concurrent/Executor;

.field private final zzw:Ljava/util/concurrent/Executor;

.field private final zzx:Ljava/util/concurrent/Executor;

.field private zzy:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzaag;Lcom/google/firebase/auth/internal/zzbr;Lcom/google/firebase/auth/internal/zzbx;Lcom/google/firebase/auth/internal/zzb;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaag;",
            "Lcom/google/firebase/auth/internal/zzbr;",
            "Lcom/google/firebase/auth/internal/zzbx;",
            "Lcom/google/firebase/auth/internal/zzb;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatController;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance p8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzb:Ljava/util/List;

    .line 316
    new-instance p8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    .line 317
    new-instance p8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzd:Ljava/util/List;

    .line 318
    new-instance p8, Ljava/lang/Object;

    invoke-direct {p8}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzh:Ljava/lang/Object;

    .line 319
    new-instance p8, Ljava/lang/Object;

    invoke-direct {p8}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzj:Ljava/lang/Object;

    .line 320
    const-string p8, "getOobCode"

    invoke-static {p8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p8

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 321
    const-string p8, "signInWithPassword"

    invoke-static {p8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p8

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzn:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 322
    const-string p8, "signUpPassword"

    invoke-static {p8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p8

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzo:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 323
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 324
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    .line 325
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzbr;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzp:Lcom/google/firebase/auth/internal/zzbr;

    .line 326
    new-instance p2, Lcom/google/firebase/auth/internal/zzw;

    invoke-direct {p2}, Lcom/google/firebase/auth/internal/zzw;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzg:Lcom/google/firebase/auth/internal/zzw;

    .line 327
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/auth/internal/zzbx;

    iput-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzq:Lcom/google/firebase/auth/internal/zzbx;

    .line 328
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/firebase/auth/internal/zzb;

    iput-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzr:Lcom/google/firebase/auth/internal/zzb;

    .line 329
    iput-object p6, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzs:Lcom/google/firebase/inject/Provider;

    .line 330
    iput-object p7, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzt:Lcom/google/firebase/inject/Provider;

    .line 331
    iput-object p9, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzv:Ljava/util/concurrent/Executor;

    .line 332
    iput-object p10, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzw:Ljava/util/concurrent/Executor;

    .line 333
    iput-object p11, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzx:Ljava/util/concurrent/Executor;

    .line 334
    nop

    .line 335
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzbr;->zza()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    .line 336
    if-eqz p3, :cond_0

    .line 337
    invoke-virtual {p1, p3}, Lcom/google/firebase/auth/internal/zzbr;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    move-result-object p1

    .line 338
    if-eqz p1, :cond_0

    .line 339
    iget-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    const/4 p4, 0x0

    invoke-static {p0, p3, p1, p4, p4}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;ZZ)V

    .line 340
    :cond_0
    invoke-virtual {p2, p0}, Lcom/google/firebase/auth/internal/zzbx;->zza(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 341
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatController;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 305
    nop

    .line 306
    nop

    .line 307
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    move-object v1, p1

    move-object/from16 v9, p5

    move-object/from16 v0, p7

    invoke-direct {v2, p1, v9, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 308
    new-instance v3, Lcom/google/firebase/auth/internal/zzbr;

    .line 309
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/firebase/auth/internal/zzbr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/google/firebase/auth/internal/zzbx;->zzc()Lcom/google/firebase/auth/internal/zzbx;

    move-result-object v4

    .line 311
    invoke-static {}, Lcom/google/firebase/auth/internal/zzb;->zza()Lcom/google/firebase/auth/internal/zzb;

    move-result-object v5

    .line 312
    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/google/firebase/auth/FirebaseAuth;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzaag;Lcom/google/firebase/auth/internal/zzbr;Lcom/google/firebase/auth/internal/zzbx;Lcom/google/firebase/auth/internal/zzb;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 313
    return-void
.end method

.method public static getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 2

    .line 272
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 273
    const-class v1, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    .line 274
    const-class v0, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method private final zza(Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 268
    new-instance v0, Lcom/google/firebase/auth/zzab;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/google/firebase/auth/zzab;-><init>(Lcom/google/firebase/auth/FirebaseAuth;ZLcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;)V

    .line 269
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 270
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    const-string p3, "EMAIL_PASSWORD_PROVIDER"

    invoke-virtual {v0, p0, p2, p1, p3}, Lcom/google/firebase/auth/internal/zzbi;->zza(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Z)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/google/firebase/auth/zzaa;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/google/firebase/auth/zzaa;-><init>(Lcom/google/firebase/auth/FirebaseAuth;ZLcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;)V

    .line 263
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    .line 264
    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lcom/google/android/recaptcha/RecaptchaAction;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzn:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 265
    :goto_0
    const-string p3, "EMAIL_PASSWORD_PROVIDER"

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/auth/internal/zzbi;->zza(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v7, Lcom/google/firebase/auth/zzy;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/auth/zzy;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;ZLcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzn:Lcom/google/android/recaptcha/RecaptchaAction;

    const-string p2, "EMAIL_PASSWORD_PROVIDER"

    invoke-virtual {v7, p0, p3, p1, p2}, Lcom/google/firebase/auth/internal/zzbi;->zza(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method static bridge synthetic zza(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/FirebaseApp;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method static bridge synthetic zza(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzg:Lcom/google/firebase/auth/internal/zzw;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzw;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzg:Lcom/google/firebase/auth/internal/zzw;

    .line 281
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzw;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    nop

    .line 283
    new-instance p1, Lcom/google/firebase/auth/zzn;

    invoke-direct {p1, p0, p2}, Lcom/google/firebase/auth/zzn;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)V

    .line 284
    move-object p2, p1

    .line 285
    :cond_0
    return-object p2
.end method

.method public static zza(Lcom/google/firebase/FirebaseException;Lcom/google/firebase/auth/PhoneAuthOptions;Ljava/lang/String;)V
    .locals 2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invoking verification failure callback for phone number/uid - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseAuth"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    nop

    .line 367
    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneAuthOptions;->zze()Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Lcom/google/android/gms/internal/firebase-auth-api/zzact;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object p2

    .line 368
    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzi()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/auth/zzj;

    invoke-direct {v0, p2, p0}, Lcom/google/firebase/auth/zzj;-><init>(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Lcom/google/firebase/FirebaseException;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method

.method private static zza(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 3

    .line 409
    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notifying auth state listeners about user ( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " )."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :cond_0
    const-string p1, "Notifying auth state listeners about a sign-out event."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzx:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/firebase/auth/zzx;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/zzx;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method

.method private static zza(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;ZZ)V
    .locals 4

    .line 421
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 425
    :goto_0
    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 426
    return-void

    .line 427
    :cond_1
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    if-nez p4, :cond_2

    .line 428
    nop

    .line 429
    move v1, v2

    goto :goto_2

    .line 430
    :cond_2
    invoke-virtual {p4}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    move-result-object p4

    .line 431
    invoke-virtual {p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzc()Ljava/lang/String;

    move-result-object p4

    .line 432
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzc()Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    .line 434
    xor-int/2addr p4, v2

    if-eqz v0, :cond_3

    if-nez p4, :cond_3

    .line 435
    move p4, v1

    goto :goto_1

    .line 436
    :cond_3
    move p4, v2

    .line 437
    :goto_1
    if-nez v0, :cond_4

    move v1, v2

    :cond_4
    move v2, p4

    .line 438
    :goto_2
    nop

    .line 439
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz p4, :cond_7

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    goto :goto_3

    .line 442
    :cond_5
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getProviderData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/firebase/auth/FirebaseUser;->zza(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;

    .line 443
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result p4

    if-nez p4, :cond_6

    .line 444
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {p4}, Lcom/google/firebase/auth/FirebaseUser;->zzb()Lcom/google/firebase/auth/FirebaseUser;

    .line 445
    :cond_6
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getMultiFactor()Lcom/google/firebase/auth/MultiFactor;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/firebase/auth/MultiFactor;->getEnrolledFactors()Ljava/util/List;

    move-result-object p4

    .line 446
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v0, p4}, Lcom/google/firebase/auth/FirebaseUser;->zzb(Ljava/util/List;)V

    goto :goto_4

    .line 441
    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    .line 447
    :goto_4
    if-eqz p3, :cond_8

    .line 448
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzp:Lcom/google/firebase/auth/internal/zzbr;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {p4, v0}, Lcom/google/firebase/auth/internal/zzbr;->zzb(Lcom/google/firebase/auth/FirebaseUser;)V

    .line 449
    :cond_8
    if-eqz v2, :cond_a

    .line 450
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz p4, :cond_9

    .line 451
    invoke-virtual {p4, p2}, Lcom/google/firebase/auth/FirebaseUser;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafe;)V

    .line 452
    :cond_9
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-static {p0, p4}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 453
    :cond_a
    if-eqz v1, :cond_b

    .line 454
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-static {p0, p4}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 455
    :cond_b
    if-eqz p3, :cond_c

    .line 456
    iget-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzp:Lcom/google/firebase/auth/internal/zzbr;

    invoke-virtual {p3, p1, p2}, Lcom/google/firebase/auth/internal/zzbr;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;)V

    .line 457
    :cond_c
    nop

    .line 458
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    .line 459
    if-eqz p1, :cond_d

    .line 460
    invoke-static {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzj(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/internal/zzbu;

    move-result-object p0

    .line 461
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/internal/zzbu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafe;)V

    .line 462
    :cond_d
    return-void
.end method

.method public static zza(Lcom/google/firebase/auth/PhoneAuthOptions;)V
    .locals 14

    .line 470
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 471
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzb()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 472
    nop

    .line 473
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzc()Lcom/google/firebase/auth/MultiFactorSession;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/internal/zzag;

    .line 474
    invoke-virtual {v1}, Lcom/google/firebase/auth/internal/zzag;->zzd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    move-object v3, v1

    move-object v7, v3

    goto :goto_0

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzf()Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 478
    invoke-virtual {v1}, Lcom/google/firebase/auth/MultiFactorInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-virtual {v1}, Lcom/google/firebase/auth/PhoneMultiFactorInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v7, v2

    .line 480
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzd()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 481
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zze()Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object v1

    .line 482
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zza()Landroid/app/Activity;

    move-result-object v2

    .line 483
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzi()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 484
    invoke-static {v7, v1, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 485
    :cond_1
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->zzr:Lcom/google/firebase/auth/internal/zzb;

    .line 486
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zza()Landroid/app/Activity;

    move-result-object v4

    .line 487
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzi()Z

    move-result v5

    .line 488
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzj()Z

    move-result v6

    .line 489
    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/auth/internal/zzb;->zza(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZ)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/auth/zzk;

    invoke-direct {v2, v0, p0, v7}, Lcom/google/firebase/auth/zzk;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/PhoneAuthOptions;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 491
    :cond_2
    return-void

    .line 492
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzb()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 493
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzd()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 495
    :goto_1
    if-nez v2, :cond_5

    .line 496
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zze()Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zza()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzi()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 497
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 498
    :cond_5
    iget-object v8, v0, Lcom/google/firebase/auth/FirebaseAuth;->zzr:Lcom/google/firebase/auth/internal/zzb;

    .line 499
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zza()Landroid/app/Activity;

    move-result-object v11

    .line 500
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzi()Z

    move-result v12

    .line 501
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzj()Z

    move-result v13

    .line 502
    move-object v9, v0

    move-object v10, v1

    invoke-virtual/range {v8 .. v13}, Lcom/google/firebase/auth/internal/zzb;->zza(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZ)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/auth/zzl;

    invoke-direct {v3, v0, p0, v1}, Lcom/google/firebase/auth/zzl;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/PhoneAuthOptions;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 504
    :cond_6
    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/FirebaseUser;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    return-object p0
.end method

.method private static zzb(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 4

    .line 414
    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_0

    .line 415
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Notifying id token listeners about user ( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    :cond_0
    const-string v1, "Notifying id token listeners about a sign-out event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzd()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 418
    :goto_1
    new-instance v0, Lcom/google/firebase/internal/InternalTokenResult;

    invoke-direct {v0, p1}, Lcom/google/firebase/internal/InternalTokenResult;-><init>(Ljava/lang/String;)V

    .line 419
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzx:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/auth/zzu;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/auth/zzu;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/internal/InternalTokenResult;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 420
    return-void
.end method

.method private final zzb(Ljava/lang/String;)Z
    .locals 1

    .line 523
    invoke-static {p1}, Lcom/google/firebase/auth/ActionCodeUrl;->parseLink(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeUrl;

    move-result-object p1

    .line 524
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/auth/ActionCodeUrl;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static bridge synthetic zzc(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/android/gms/internal/firebase-auth-api/zzaag;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/internal/zzw;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzg:Lcom/google/firebase/auth/internal/zzw;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzd:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzb:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    return-object p0
.end method

.method private final declared-synchronized zzj()Lcom/google/firebase/auth/internal/zzbu;
    .locals 1

    monitor-enter p0

    .line 287
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzj(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/internal/zzbu;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static zzj(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/internal/zzbu;
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzu:Lcom/google/firebase/auth/internal/zzbu;

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/FirebaseApp;

    .line 290
    new-instance v1, Lcom/google/firebase/auth/internal/zzbu;

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/internal/zzbu;-><init>(Lcom/google/firebase/FirebaseApp;)V

    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzu:Lcom/google/firebase/auth/internal/zzbu;

    .line 291
    :cond_0
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzu:Lcom/google/firebase/auth/internal/zzbu;

    return-object p0
.end method


# virtual methods
.method public addAuthStateListener(Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzx:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/auth/zzs;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/auth/zzs;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method

.method public addIdTokenListener(Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzx:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/auth/zzi;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/auth/zzi;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method public addIdTokenListener(Lcom/google/firebase/auth/internal/IdTokenListener;)V
    .locals 1

    .line 348
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzj()Lcom/google/firebase/auth/internal/zzbu;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/internal/zzbu;->zza(I)V

    .line 351
    return-void
.end method

.method public applyActionCode(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public checkActionCode(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/ActionCodeResult;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public confirmPasswordReset(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public createUserWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    new-instance v0, Lcom/google/firebase/auth/zzp;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/auth/zzp;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzo:Lcom/google/android/recaptcha/RecaptchaAction;

    const-string v1, "EMAIL_PASSWORD_PROVIDER"

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/firebase/auth/internal/zzbi;->zza(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public fetchSignInMethodsForEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/SignInMethodQueryResult;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zzc(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getAccessToken(Z)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getApp()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method public getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    return-object v0
.end method

.method public getCustomAuthDomain()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzy:Ljava/lang/String;

    return-object v0
.end method

.method public getFirebaseAuthSettings()Lcom/google/firebase/auth/FirebaseAuthSettings;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzg:Lcom/google/firebase/auth/internal/zzw;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzh:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPendingAuthResult()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzq:Lcom/google/firebase/auth/internal/zzbx;

    .line 39
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzbx;->zza()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 40
    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzj:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeRecaptchaConfig()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lcom/google/firebase/auth/internal/zzbn;

    if-nez v0, :cond_0

    .line 44
    nop

    .line 45
    new-instance v0, Lcom/google/firebase/auth/internal/zzbn;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/auth/internal/zzbn;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 46
    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lcom/google/firebase/auth/internal/zzbn;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lcom/google/firebase/auth/internal/zzbn;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    .line 48
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/auth/internal/zzbn;->zza(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/zzz;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/zzz;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method public isSignInWithEmailLink(Ljava/lang/String;)Z
    .locals 0

    .line 522
    invoke-static {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zza(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeAuthStateListener(Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 371
    return-void
.end method

.method public removeIdTokenListener(Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 373
    return-void
.end method

.method public removeIdTokenListener(Lcom/google/firebase/auth/internal/IdTokenListener;)V
    .locals 1

    .line 374
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 376
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzj()Lcom/google/firebase/auth/internal/zzbu;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/internal/zzbu;->zza(I)V

    .line 377
    return-void
.end method

.method public sendPasswordResetEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->sendPasswordResetEmail(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public sendPasswordResetEmail(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    if-nez p2, :cond_0

    .line 120
    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->zzb()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object p2

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p2, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Ljava/lang/String;)V

    .line 123
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(I)V

    .line 124
    nop

    .line 125
    new-instance v0, Lcom/google/firebase/auth/zzo;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/auth/zzo;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V

    .line 126
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lcom/google/android/recaptcha/RecaptchaAction;

    const-string v1, "EMAIL_PASSWORD_PROVIDER"

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/firebase/auth/internal/zzbi;->zza(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public sendSignInLinkToEmail(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p2}, Lcom/google/firebase/auth/ActionCodeSettings;->canHandleCodeInApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p2, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Ljava/lang/String;)V

    .line 133
    :cond_0
    new-instance v0, Lcom/google/firebase/auth/zzr;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/auth/zzr;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V

    .line 134
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lcom/google/android/recaptcha/RecaptchaAction;

    const-string v1, "EMAIL_PASSWORD_PROVIDER"

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/firebase/auth/internal/zzbi;->zza(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 130
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must set canHandleCodeInApp in your ActionCodeSettings to true for Email-Link Sign-in."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCustomAuthDomain(Ljava/lang/String;)V
    .locals 4

    .line 378
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 379
    const-string v0, "chrome-extension://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzy:Ljava/lang/String;

    .line 381
    return-void

    .line 382
    :cond_0
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzy:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    const/4 v1, 0x4

    const-string v2, "FirebaseAuth"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error parsing URL: \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\', "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_2
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzy:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setFirebaseUIVersion(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .locals 1

    .line 391
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzh:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    .line 394
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTenantId(Ljava/lang/String;)V
    .locals 1

    .line 397
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzj:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    .line 400
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public signInAnonymously()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    check-cast v0, Lcom/google/firebase/auth/internal/zzv;

    .line 138
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/internal/zzv;->zza(Z)V

    .line 139
    new-instance v1, Lcom/google/firebase/auth/internal/zzp;

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/internal/zzp;-><init>(Lcom/google/firebase/auth/internal/zzv;)V

    .line 140
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/internal/zzg;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p1}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    .line 144
    instance-of v0, p1, Lcom/google/firebase/auth/EmailAuthCredential;

    if-eqz v0, :cond_2

    .line 145
    check-cast p1, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 146
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    nop

    .line 148
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzc()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 150
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 153
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 154
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 155
    :cond_2
    instance-of v0, p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz v0, :cond_3

    .line 156
    check-cast p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 157
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public signInWithCustomToken(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 161
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public signInWithEmailLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-static {p1, p2}, Lcom/google/firebase/auth/EmailAuthProvider;->getCredentialWithLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public signOut()V
    .locals 1

    .line 405
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzh()V

    .line 406
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzu:Lcom/google/firebase/auth/internal/zzbu;

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzbu;->zza()V

    .line 408
    :cond_0
    return-void
.end method

.method public startActivityForSignInWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/auth/FederatedAuthProvider;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 197
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 200
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzq:Lcom/google/firebase/auth/internal/zzbx;

    .line 201
    invoke-virtual {v1, p1, v0, p0}, Lcom/google/firebase/auth/internal/zzbx;->zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;)Z

    move-result v1

    .line 202
    if-nez v1, :cond_0

    .line 203
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a1

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 204
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 205
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 206
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 207
    invoke-static {v1, p0}, Lcom/google/firebase/auth/internal/zzbe;->zza(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 208
    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/FederatedAuthProvider;->zzc(Landroid/app/Activity;)V

    .line 209
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public updateCurrentUser(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 224
    if-eqz p1, :cond_4

    .line 226
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getTenantId()Ljava/lang/String;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 229
    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 230
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 231
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 232
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zza()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzg()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0, p1}, Lcom/google/firebase/auth/internal/zzv;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    .line 236
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Z)V

    .line 237
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 238
    :cond_3
    new-instance v0, Lcom/google/firebase/auth/FirebaseAuth$zzc;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzc;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 225
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot update current user with null user!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public useAppLanguage()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzh:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzacr;->zza()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    .line 465
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public useEmulator(Ljava/lang/String;I)V
    .locals 2

    .line 466
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 467
    if-ltz p2, :cond_0

    const v0, 0xffff

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Port number must be in the range 0-65535"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 468
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzady;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;I)V

    .line 469
    return-void
.end method

.method public verifyPasswordResetCode(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zzd(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafa;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/auth/FederatedAuthProvider;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 165
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzq:Lcom/google/firebase/auth/internal/zzbx;

    .line 170
    invoke-virtual {v1, p1, v0, p0, p3}, Lcom/google/firebase/auth/internal/zzbx;->zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Z

    move-result v1

    .line 171
    if-nez v1, :cond_0

    .line 172
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a1

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 173
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 174
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 175
    :cond_0
    nop

    .line 176
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 177
    nop

    .line 178
    invoke-static {v1, p0, p3}, Lcom/google/firebase/auth/internal/zzbe;->zza(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 179
    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/FederatedAuthProvider;->zza(Landroid/app/Activity;)V

    .line 180
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 112
    if-nez p1, :cond_0

    .line 113
    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->zzb()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object p1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Ljava/lang/String;)V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    new-instance v1, Lcom/google/firebase/auth/zzt;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/auth/zzt;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzal;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 54
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    move-result-object p2

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 55
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/MultiFactorAssertion;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/MultiFactorAssertion;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    instance-of v0, p2, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;

    if-eqz v0, :cond_0

    .line 17
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v3, p2

    check-cast v3, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v4, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/PhoneMultiFactorAssertion;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 18
    :cond_0
    instance-of v0, p2, Lcom/google/firebase/auth/TotpMultiFactorAssertion;

    if-eqz v0, :cond_1

    .line 19
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v3, p2

    check-cast v3, Lcom/google/firebase/auth/TotpMultiFactorAssertion;

    iget-object v6, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v7, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v7, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v4, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/TotpMultiFactorAssertion;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 20
    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x445b

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 245
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 248
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/auth/PhoneAuthCredential;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 249
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/UserProfileChangeRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 250
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 215
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 218
    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/auth/zzq;

    invoke-direct {p2, p0}, Lcom/google/firebase/auth/zzq;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 219
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 220
    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4457

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzg()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 32
    nop

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzay;->zza(Ljava/lang/String;)Lcom/google/firebase/auth/GetTokenResult;

    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 35
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzd()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/auth/zzw;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/zzw;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 37
    invoke-virtual {p2, v1, p1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/MultiFactorAssertion;Lcom/google/firebase/auth/internal/zzag;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/MultiFactorAssertion;",
            "Lcom/google/firebase/auth/internal/zzag;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    instance-of v0, p1, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v4, p1

    check-cast v4, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;

    .line 103
    invoke-virtual {p2}, Lcom/google/firebase/auth/internal/zzag;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 104
    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneMultiFactorAssertion;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 105
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/auth/TotpMultiFactorAssertion;

    if-eqz v0, :cond_1

    .line 106
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v4, p1

    check-cast v4, Lcom/google/firebase/auth/TotpMultiFactorAssertion;

    .line 107
    invoke-virtual {p2}, Lcom/google/firebase/auth/internal/zzag;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v7, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v7, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 108
    move-object v3, p3

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/TotpMultiFactorAssertion;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "multiFactorAssertion must be either PhoneMultiFactorAssertion or TotpMultiFactorAssertion."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/internal/zzag;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/TotpSecret;",
            ">;"
        }
    .end annotation

    .line 210
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    .line 212
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/auth/internal/zzag;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/auth/zzv;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/zzv;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 213
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 214
    return-object p1
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaff;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 253
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    if-nez p3, :cond_0

    .line 256
    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->zzb()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object p3

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p3, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Ljava/lang/String;)V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/firebase/auth/PhoneAuthOptions;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
    .locals 1

    .line 277
    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    return-object p2

    .line 279
    :cond_0
    new-instance v0, Lcom/google/firebase/auth/zzm;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/auth/zzm;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/PhoneAuthOptions;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)V

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Z)V
    .locals 1

    .line 401
    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;ZZ)V

    .line 402
    return-void
.end method

.method final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;ZZ)V
    .locals 0

    .line 403
    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;ZZ)V

    .line 404
    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/PhoneAuthOptions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 505
    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzg()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 506
    nop

    .line 507
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-ltz v0, :cond_2

    const-wide/16 v0, 0x78

    cmp-long v0, v3, v0

    if-gtz v0, :cond_2

    .line 509
    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    new-instance v11, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;

    .line 511
    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzd()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v5, v1

    iget-object v6, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    .line 512
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzi()Z

    move-result v10

    move-object v1, v11

    move-object v2, v0

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;-><init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 513
    nop

    .line 514
    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneAuthOptions;->zze()Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object p3

    .line 515
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 516
    invoke-virtual {p0, p1, p3}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/PhoneAuthOptions;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object p2

    move-object v8, p2

    goto :goto_1

    .line 515
    :cond_1
    move-object v8, p3

    .line 517
    :goto_1
    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v6, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 518
    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneAuthOptions;->zza()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzi()Ljava/util/concurrent/Executor;

    move-result-object v10

    .line 519
    move-object v7, v11

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzafq;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)V

    .line 520
    return-void

    .line 508
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "We only support 0-120 seconds for sms-auto-retrieval timeout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/firebase/auth/internal/zzbn;)V
    .locals 0

    monitor-enter p0

    .line 395
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lcom/google/firebase/auth/internal/zzbn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    .line 394
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/auth/FederatedAuthProvider;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 185
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzq:Lcom/google/firebase/auth/internal/zzbx;

    .line 186
    invoke-virtual {v1, p1, v0, p0, p3}, Lcom/google/firebase/auth/internal/zzbx;->zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Z

    move-result v1

    .line 187
    if-nez v1, :cond_0

    .line 188
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a1

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 189
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 190
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 191
    :cond_0
    nop

    .line 192
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 193
    nop

    .line 194
    invoke-static {v1, p0, p3}, Lcom/google/firebase/auth/internal/zzbe;->zza(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 195
    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/FederatedAuthProvider;->zzb(Landroid/app/Activity;)V

    .line 196
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    move-result-object v3

    .line 59
    instance-of p2, v3, Lcom/google/firebase/auth/EmailAuthCredential;

    if-eqz p2, :cond_2

    .line 60
    check-cast v3, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 61
    nop

    .line 62
    invoke-virtual {v3}, Lcom/google/firebase/auth/AuthCredential;->getSignInMethod()Ljava/lang/String;

    move-result-object p2

    .line 63
    const-string v0, "password"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 64
    const/4 p2, 0x0

    invoke-direct {p0, p1, v3, p2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zze()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 66
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42b0

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 68
    :cond_1
    const/4 p2, 0x1

    invoke-direct {p0, p1, v3, p2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 69
    :cond_2
    instance-of p2, v3, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz p2, :cond_3

    .line 70
    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v7, v3

    check-cast v7, Lcom/google/firebase/auth/PhoneAuthCredential;

    iget-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v9, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v9, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 72
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getTenantId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 73
    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 221
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized zzb()Lcom/google/firebase/auth/internal/zzbn;
    .locals 1

    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lcom/google/firebase/auth/internal/zzbn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzc(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    move-result-object v3

    .line 77
    instance-of p2, v3, Lcom/google/firebase/auth/EmailAuthCredential;

    if-eqz p2, :cond_2

    .line 78
    check-cast v3, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 79
    nop

    .line 80
    invoke-virtual {v3}, Lcom/google/firebase/auth/AuthCredential;->getSignInMethod()Ljava/lang/String;

    move-result-object p2

    .line 81
    const-string v0, "password"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 82
    nop

    .line 83
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zzc()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zzd()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getTenantId()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    .line 86
    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zze()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 88
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42b0

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 89
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 90
    :cond_1
    const/4 p2, 0x1

    invoke-direct {p0, v3, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 91
    :cond_2
    instance-of p2, v3, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz p2, :cond_3

    .line 92
    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v7, v3

    check-cast v7, Lcom/google/firebase/auth/PhoneAuthCredential;

    iget-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v9, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v9, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 94
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getTenantId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 95
    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 239
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zzc(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Lcom/google/firebase/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzs:Lcom/google/firebase/inject/Provider;

    return-object v0
.end method

.method public final zzd(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 242
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zzd(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()Lcom/google/firebase/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatController;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzt:Lcom/google/firebase/inject/Provider;

    return-object v0
.end method

.method public final zze()Ljava/util/concurrent/Executor;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzv:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzf()Ljava/util/concurrent/Executor;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzw:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzg()Ljava/util/concurrent/Executor;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzx:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzh()V
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzp:Lcom/google/firebase/auth/internal/zzbr;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 354
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzp:Lcom/google/firebase/auth/internal/zzbr;

    .line 355
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/firebase/auth/internal/zzbr;->zza(Ljava/lang/String;)V

    .line 357
    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzp:Lcom/google/firebase/auth/internal/zzbr;

    .line 359
    const-string v2, "com.google.firebase.auth.FIREBASE_USER"

    invoke-virtual {v0, v2}, Lcom/google/firebase/auth/internal/zzbr;->zza(Ljava/lang/String;)V

    .line 360
    nop

    .line 361
    invoke-static {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 362
    nop

    .line 363
    invoke-static {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 364
    return-void
.end method

.method final zzi()Z
    .locals 1

    .line 521
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzach;->zza(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
