.class public final Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/PhoneAuthOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/firebase/auth/FirebaseAuth;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/Long;

.field private zzd:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

.field private zze:Ljava/util/concurrent/Executor;

.field private zzf:Landroid/app/Activity;

.field private zzg:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

.field private zzh:Lcom/google/firebase/auth/MultiFactorSession;

.field private zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

.field private zzj:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    .line 41
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/firebase/auth/PhoneAuthOptions;
    .locals 14

    .line 17
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, "FirebaseAuth instance cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzc:Ljava/lang/Long;

    const-string v1, "You must specify an auto-retrieval timeout; please call #setTimeout()"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzd:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    const-string v1, "You must specify callbacks on your PhoneAuthOptions. Please call #setCallbacks()"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzg()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zze:Ljava/util/concurrent/Executor;

    .line 21
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzc:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzc:Ljava/lang/Long;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x78

    cmp-long v0, v0, v2

    if-gtz v0, :cond_8

    .line 24
    nop

    .line 25
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzh:Lcom/google/firebase/auth/MultiFactorSession;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 26
    :goto_0
    const-string v4, "A phoneMultiFactorInfo must be set for second factor sign-in."

    if-eqz v3, :cond_2

    .line 27
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzb:Ljava/lang/String;

    const-string v3, "The given phoneNumber is empty. Please set a non-empty phone number with #setPhoneNumber()"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    iget-boolean v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzj:Z

    xor-int/2addr v0, v2

    const-string v3, "You cannot require sms validation without setting a multi-factor session."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_3

    .line 30
    :cond_2
    nop

    .line 31
    if-eqz v0, :cond_3

    check-cast v0, Lcom/google/firebase/auth/internal/zzag;

    .line 32
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzag;->zzd()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 33
    :goto_1
    if-eqz v0, :cond_5

    .line 34
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    if-nez v0, :cond_4

    move v1, v2

    :cond_4
    const-string v0, "Invalid MultiFactorSession - use the getSession method in MultiFactorResolver to get a valid sign-in session."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_3

    .line 36
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzb:Ljava/lang/String;

    if-nez v0, :cond_7

    move v1, v2

    :cond_7
    const-string v0, "A phone number must not be set for MFA sign-in. A PhoneMultiFactorInfo should be set instead."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 38
    :goto_3
    new-instance v0, Lcom/google/firebase/auth/PhoneAuthOptions;

    iget-object v3, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v4, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzc:Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzd:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    iget-object v6, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zze:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzb:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzf:Landroid/app/Activity;

    iget-object v9, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzg:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    iget-object v10, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzh:Lcom/google/firebase/auth/MultiFactorSession;

    iget-object v11, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    iget-boolean v12, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzj:Z

    const/4 v13, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/google/firebase/auth/PhoneAuthOptions;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;Lcom/google/firebase/auth/MultiFactorSession;Lcom/google/firebase/auth/PhoneMultiFactorInfo;ZLcom/google/firebase/auth/zzao;)V

    return-object v0

    .line 23
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We only support 0-120 seconds for sms-auto-retrieval timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireSmsValidation(Z)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzj:Z

    .line 2
    return-object p0
.end method

.method public final setActivity(Landroid/app/Activity;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzf:Landroid/app/Activity;

    .line 4
    return-object p0
.end method

.method public final setCallbacks(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzd:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    .line 6
    return-object p0
.end method

.method public final setForceResendingToken(Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzg:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 8
    return-object p0
.end method

.method public final setMultiFactorHint(Lcom/google/firebase/auth/PhoneMultiFactorInfo;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 10
    return-object p0
.end method

.method public final setMultiFactorSession(Lcom/google/firebase/auth/MultiFactorSession;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzh:Lcom/google/firebase/auth/MultiFactorSession;

    .line 12
    return-object p0
.end method

.method public final setPhoneNumber(Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzb:Ljava/lang/String;

    .line 14
    return-object p0
.end method

.method public final setTimeout(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 3

    .line 15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzc:Ljava/lang/Long;

    .line 16
    return-object p0
.end method
