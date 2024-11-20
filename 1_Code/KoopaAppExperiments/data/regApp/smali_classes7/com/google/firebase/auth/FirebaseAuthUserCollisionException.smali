.class public final Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;
.super Lcom/google/firebase/auth/FirebaseAuthException;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private zza:Lcom/google/firebase/auth/AuthCredential;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuthException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public final getEmail()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdatedCredential()Lcom/google/firebase/auth/AuthCredential;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;->zza:Lcom/google/firebase/auth/AuthCredential;

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;->zza:Lcom/google/firebase/auth/AuthCredential;

    .line 3
    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;->zzb:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;->zzc:Ljava/lang/String;

    .line 7
    return-object p0
.end method
