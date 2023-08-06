; ModuleID = 'obj\Release\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [106 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 5
	i64 232391251801502327, ; 1: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 27
	i64 276473666272823710, ; 2: Xamarin.Forms.GoogleMaps => 0x3d63b55abf1099e => 33
	i64 456145817121827372, ; 3: App1.dll => 0x6548e343353aa2c => 2
	i64 687654259221141486, ; 4: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 39
	i64 702024105029695270, ; 5: System.Drawing.Common => 0x9be17343c0e7726 => 51
	i64 720058930071658100, ; 6: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 21
	i64 872800313462103108, ; 7: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 19
	i64 996343623809489702, ; 8: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 35
	i64 1000557547492888992, ; 9: Mono.Security.dll => 0xde2b1c9cba651a0 => 52
	i64 1120440138749646132, ; 10: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 37
	i64 1425944114962822056, ; 11: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 1
	i64 1624659445732251991, ; 12: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 13
	i64 1795316252682057001, ; 13: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 14
	i64 1836611346387731153, ; 14: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 27
	i64 1981742497975770890, ; 15: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 24
	i64 2064708342624596306, ; 16: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 46
	i64 2262844636196693701, ; 17: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 19
	i64 2329709569556905518, ; 18: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 23
	i64 2470498323731680442, ; 19: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 16
	i64 2547086958574651984, ; 20: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 12
	i64 2592350477072141967, ; 21: System.Xml.dll => 0x23f9e10627330e8f => 11
	i64 2624866290265602282, ; 22: mscorlib.dll => 0x246d65fbde2db8ea => 6
	i64 2960931600190307745, ; 23: Xamarin.Forms.Core => 0x2917579a49927da1 => 31
	i64 3017704767998173186, ; 24: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 37
	i64 3289520064315143713, ; 25: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 22
	i64 3344514922410554693, ; 26: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 49
	i64 3411255996856937470, ; 27: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 40
	i64 3522470458906976663, ; 28: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 28
	i64 3531994851595924923, ; 29: System.Numerics => 0x31042a9aade235bb => 10
	i64 3727469159507183293, ; 30: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 26
	i64 3936216335706411319, ; 31: Xamarin.Forms.GoogleMaps.dll => 0x36a03fe700ded137 => 33
	i64 4247996603072512073, ; 32: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 42
	i64 4525561845656915374, ; 33: System.ServiceModel.Internals => 0x3ece06856b710dae => 50
	i64 4794310189461587505, ; 34: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 12
	i64 4795410492532947900, ; 35: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 28
	i64 5142919913060024034, ; 36: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 34
	i64 5203618020066742981, ; 37: Xamarin.Essentials => 0x4836f704f0e652c5 => 30
	i64 5507995362134886206, ; 38: System.Core.dll => 0x4c705499688c873e => 7
	i64 5917160574407189813, ; 39: App1 => 0x521dfa31247ca535 => 2
	i64 6085203216496545422, ; 40: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 35
	i64 6086316965293125504, ; 41: FormsViewGroup.dll => 0x5476f10882baef80 => 3
	i64 6401687960814735282, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 23
	i64 6548213210057960872, ; 43: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 18
	i64 6659513131007730089, ; 44: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 21
	i64 7141281584637745974, ; 45: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 41
	i64 7330419912715392478, ; 46: Xamarin.Forms.GoogleMaps.Android => 0x65bae21287d9d5de => 32
	i64 7635363394907363464, ; 47: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 31
	i64 7637365915383206639, ; 48: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 30
	i64 7654504624184590948, ; 49: System.Net.Http => 0x6a3a4366801b8264 => 9
	i64 7735352534559001595, ; 50: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 45
	i64 7836164640616011524, ; 51: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 13
	i64 8083354569033831015, ; 52: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 22
	i64 8167236081217502503, ; 53: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 4
	i64 8187640529827139739, ; 54: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 48
	i64 8626175481042262068, ; 55: Java.Interop => 0x77b654e585b55834 => 4
	i64 8853378295825400934, ; 56: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 44
	i64 9324707631942237306, ; 57: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 14
	i64 9662334977499516867, ; 58: System.Numerics.dll => 0x8617827802b0cfc3 => 10
	i64 9678050649315576968, ; 59: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 16
	i64 9808709177481450983, ; 60: Mono.Android.dll => 0x881f890734e555e7 => 5
	i64 9875200773399460291, ; 61: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 39
	i64 9998632235833408227, ; 62: Mono.Security => 0x8ac2470b209ebae3 => 52
	i64 10038780035334861115, ; 63: System.Net.Http.dll => 0x8b50e941206af13b => 9
	i64 10226222362177979215, ; 64: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 46
	i64 10229024438826829339, ; 65: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 18
	i64 10321854143672141184, ; 66: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 43
	i64 10406448008575299332, ; 67: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 49
	i64 10430153318873392755, ; 68: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 17
	i64 11023048688141570732, ; 69: System.Core => 0x98f9bc61168392ac => 7
	i64 11037814507248023548, ; 70: System.Xml => 0x992e31d0412bf7fc => 11
	i64 11162124722117608902, ; 71: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 29
	i64 11529969570048099689, ; 72: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 29
	i64 12451044538927396471, ; 73: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 20
	i64 12466513435562512481, ; 74: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 25
	i64 12538491095302438457, ; 75: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 15
	i64 12828192437253469131, ; 76: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 47
	i64 12963446364377008305, ; 77: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 51
	i64 13291835053457086558, ; 78: Xamarin.Forms.GoogleMaps.Android.dll => 0xb876158ed665185e => 32
	i64 13370592475155966277, ; 79: System.Runtime.Serialization => 0xb98de304062ea945 => 1
	i64 13454009404024712428, ; 80: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 38
	i64 13465488254036897740, ; 81: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 45
	i64 13572454107664307259, ; 82: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 26
	i64 13828521679616088467, ; 83: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 44
	i64 13959074834287824816, ; 84: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 20
	i64 13967638549803255703, ; 85: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 34
	i64 14124974489674258913, ; 86: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 15
	i64 14245281962029974950, ; 87: App1.Android.dll => 0xc5b16878401385a6 => 0
	i64 14792063746108907174, ; 88: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 38
	i64 15279429628684179188, ; 89: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 48
	i64 15370334346939861994, ; 90: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 17
	i64 15609085926864131306, ; 91: System.dll => 0xd89e9cf3334914ea => 8
	i64 15810740023422282496, ; 92: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 36
	i64 15930129725311349754, ; 93: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 42
	i64 15989880706848381038, ; 94: App1.Android => 0xdde777c8ec91d86e => 0
	i64 16154507427712707110, ; 95: System => 0xe03056ea4e39aa26 => 8
	i64 16423015068819898779, ; 96: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 47
	i64 16833383113903931215, ; 97: mscorlib => 0xe99c30c1484d7f4f => 6
	i64 17704177640604968747, ; 98: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 25
	i64 17710060891934109755, ; 99: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 24
	i64 17882897186074144999, ; 100: FormsViewGroup => 0xf82cd03e3ac830e7 => 3
	i64 17891337867145587222, ; 101: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 43
	i64 17892495832318972303, ; 102: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 36
	i64 17969331831154222830, ; 103: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 41
	i64 17986907704309214542, ; 104: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 40
	i64 18129453464017766560 ; 105: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 50
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [106 x i32] [
	i32 5, i32 27, i32 33, i32 2, i32 39, i32 51, i32 21, i32 19, ; 0..7
	i32 35, i32 52, i32 37, i32 1, i32 13, i32 14, i32 27, i32 24, ; 8..15
	i32 46, i32 19, i32 23, i32 16, i32 12, i32 11, i32 6, i32 31, ; 16..23
	i32 37, i32 22, i32 49, i32 40, i32 28, i32 10, i32 26, i32 33, ; 24..31
	i32 42, i32 50, i32 12, i32 28, i32 34, i32 30, i32 7, i32 2, ; 32..39
	i32 35, i32 3, i32 23, i32 18, i32 21, i32 41, i32 32, i32 31, ; 40..47
	i32 30, i32 9, i32 45, i32 13, i32 22, i32 4, i32 48, i32 4, ; 48..55
	i32 44, i32 14, i32 10, i32 16, i32 5, i32 39, i32 52, i32 9, ; 56..63
	i32 46, i32 18, i32 43, i32 49, i32 17, i32 7, i32 11, i32 29, ; 64..71
	i32 29, i32 20, i32 25, i32 15, i32 47, i32 51, i32 32, i32 1, ; 72..79
	i32 38, i32 45, i32 26, i32 44, i32 20, i32 34, i32 15, i32 0, ; 80..87
	i32 38, i32 48, i32 17, i32 8, i32 36, i32 42, i32 0, i32 8, ; 88..95
	i32 47, i32 6, i32 25, i32 24, i32 3, i32 43, i32 36, i32 41, ; 96..103
	i32 40, i32 50 ; 104..105
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
