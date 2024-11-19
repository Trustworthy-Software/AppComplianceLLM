.class public final Lcom/google/firebase/auth/PhoneAuthOptions;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/firebase/auth/FirebaseAuth;

.field private zzb:Ljava/lang/Long;

.field private zzc:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

.field private zzd:Ljava/util/concurrent/Executor;

.field private zze:Ljava/lang/String;

.field private zzf:Landroid/app/Activity;

.field private zzg:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

.field private zzh:Lcom/google/firebase/auth/MultiFactorSession;

.field private zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

.field private zzj:Z

.field private zzk:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;Lcom/google/firebase/auth/MultiFactorSession;Lcom/google/firebase/auth/PhoneMultiFactorInfo;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    .line 14
    iput-object p5, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zze:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzb:Ljava/lang/Long;

    .line 16
    iput-object p3, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzc:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    .line 17
    iput-object p6, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzf:Landroid/app/Activity;

    .line 18
    iput-object p4, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzd:Ljava/util/concurrent/Executor;

    .line 19
    iput-object p7, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzg:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 20
    iput-object p8, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzh:Lcom/google/firebase/auth/MultiFactorSession;

    .line 21
    iput-object p9, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 22
    iput-boolean p10, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzj:Z

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;Lcom/google/firebase/auth/MultiFactorSession;Lcom/google/firebase/auth/PhoneMultiFactorInfo;ZLcom/google/firebase/auth/zzao;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/google/firebase/auth/PhoneAuthOptions;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;Lcom/google/firebase/auth/MultiFactorSession;Lcom/google/firebase/auth/PhoneMultiFactorInfo;Z)V

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 2

    .line 4
    new-instance v0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 1

    .line 5
    new-instance v0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzf:Landroid/app/Activity;

    return-object v0
.end method

.method public final zza(Z)V
    .locals 0

    .line 24
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzk:Z

    .line 25
    return-void
.end method

.method public final zzb()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    return-object v0
.end method

.method public final zzc()Lcom/google/firebase/auth/MultiFactorSession;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzh:Lcom/google/firebase/auth/MultiFactorSession;

    return-object v0
.end method

.method public final zzd()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzg:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    return-object v0
.end method

.method public final zze()Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzc:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    return-object v0
.end method

.method public final zzf()Lcom/google/firebase/auth/PhoneMultiFactorInfo;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    return-object v0
.end method

.method public final zzg()Ljava/lang/Long;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzb:Ljava/lang/Long;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/util/concurrent/Executor;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzd:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzj()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzk:Z

    return v0
.end method

.method public final zzk()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzj:Z

    return v0
.end method

.method public final zzl()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzh:Lcom/google/firebase/auth/MultiFactorSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
