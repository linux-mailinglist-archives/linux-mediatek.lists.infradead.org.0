Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1573357BA
	for <lists+linux-mediatek@lfdr.de>; Wed,  5 Jun 2019 09:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kYBk8XGWN4zk/iG4mvoigx55P4kHUsfZslNemD39s/8=; b=N9bx7U+ZZyfyHmMLTx00aZf0P
	GCV/ejBroCsVOobzTrH8ZU+ZBzzflMVhbF9qHDx8rCWGD09gDspr3qHV1Cm/rvE0UKy0ImRxLjifE
	knGkqxWFrzdPrSqKTBrds4sxEVwG7vcB/tSQ9V3tL/hAqL1WLcgg0CyFUCm1O8GgTN2TkIEWUOOBd
	wj3okhWMBiENI6as3zAPHtZUQjZVHaimxSoWGWbgNt/494dMyPGLr+Sxb8O91roDmVdzH14VFsxV2
	mnvP57VkyFuukGE5FGR2Z+IUL4BjAhk65b/G90FCVPeWef0Ngq9zt6pKbGvFySwH52wsy8EZG3psK
	VUBqYOuLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQLq-000127-9l; Wed, 05 Jun 2019 07:28:50 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQLn-00011k-D7; Wed, 05 Jun 2019 07:28:48 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 00:28:46 -0700
X-ExtLoop1: 1
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by orsmga006.jf.intel.com with ESMTP; 05 Jun 2019 00:28:44 -0700
From: Felipe Balbi <felipe.balbi@linux.intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] USB: move usb debugfs directory creation to the usb
 common core
In-Reply-To: <20190604124349.GA10203@kroah.com>
References: <20190604093258.GB30054@kroah.com>
 <87tvd5illh.fsf@linux.intel.com> <20190604124349.GA10203@kroah.com>
Date: Wed, 05 Jun 2019 10:28:12 +0300
Message-ID: <871s08ebjn.fsf@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_002847_515861_229BDC91 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1634419474102699535=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

--===============1634419474102699535==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:
>> Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:
>> > diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
>> > index 7fcb9f782931..f3d6b1ab80cb 100644
>> > --- a/drivers/usb/core/usb.c
>> > +++ b/drivers/usb/core/usb.c
>> > @@ -1185,19 +1185,17 @@ static struct notifier_block usb_bus_nb =3D {
>> >  	.notifier_call =3D usb_bus_notify,
>> >  };
>> >=20=20
>> > -struct dentry *usb_debug_root;
>> > -EXPORT_SYMBOL_GPL(usb_debug_root);
>> > +static struct dentry *usb_devices_root;
>> >=20=20
>> >  static void usb_debugfs_init(void)
>> >  {
>> > -	usb_debug_root =3D debugfs_create_dir("usb", NULL);
>> > -	debugfs_create_file("devices", 0444, usb_debug_root, NULL,
>> > -			    &usbfs_devices_fops);
>> > +	usb_devices_root =3D debugfs_create_file("devices", 0444, usb_debug_=
root,
>>=20
>> don't we have a race now? Can usbcore ever probe before usb common?
>
> How can that happen if usb_debug_root is in usb common?  The module
> loader will not let that happen.  Or it shouldn't :)

argh, indeed. The very fact that usbcore tries to resolve usb_debug_root
already forces a dependency :-p

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAlz3bwwACgkQzL64meEa
mQYjnQ/9ERfLIDtB7Gh0eaevRNVrN6PGvd94Q4mu7LJ5qDfm/+UbfGucwDeINNVH
CggpHymmca0HA3+OsdoUDf5x15oMPauyDulSrIK2Ldbvdupvq7MOsODxm0il0kO2
ItTKb7gdV7k1oULdemrz3ONNTyB6glyAA1ed+6w0bbK88ZEmg1+el8ZHNA2w78Kx
UnA5uHAa9P2eJ3fDDOw895EqD/NnZLO0hWVxEN+TvHc/iKI7afjejdwPgjcjF1f2
yVeZXyJcMglpCc5zrzRPLzSBy3ysn99tQFWkuPUiDIaV8f795Zgb0m16YFjUCfZt
/u3K71bO3b0rKgSsJgmuMFw8dZaf2Cz54uXvHY3tw2EBtSbQ1aMlRXJZjt2MXRJB
zmyejHBzTC0zQVWsJpZZmL+dNXaIcSH/NU12CVzlo5F36vmbQ/lyfiEbvnfh/t7H
VnliozWmqZxUI676WvFL/tRVsVLw6TtOLcD4ZRveIX6iUstun++SuKLw/tAj+jex
2O04C/yPRCoerZ7HiWT6kBfcZlQsMua4BhM7jB0mdp3P3ReyqSsnUrRbE8/b1BEv
aKm/SCbUdGo09YakAsVT2gRosjH6Aygd9NqsO+uyRCaA/sSvSit6wKNhQsC2apK2
S7C3MnT6a8w1pyZ8kA3Fl3+VYub8N5Z22op6YYVM7FHS+Smtlpw=
=88ax
-----END PGP SIGNATURE-----
--=-=-=--


--===============1634419474102699535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============1634419474102699535==--

