Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1356FD46B
	for <lists+linux-mediatek@lfdr.de>; Fri, 15 Nov 2019 06:33:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZEw1jAOZY/qrcB1yitx5Ek5jknYeHFV3Ei8C+hMe2o=; b=XmZaafSIbF0OHc
	UuDYmzgbMABdCPX1QX63iRd9stpHeJ58/HR9MyczK98ki35hp3j99S2ADfi/Zg52ZF4fYSR/bnWlK
	Iatp4UwY6Ij+EVXNTRdEXWPpkaniPstld8sDVC58lwgp5LDZEwne96q8pqd1FPfhEQ9gH8RFOSbc7
	bOJS7vFnP2FbF0ket2aQcnUuVv5MfIDbjSPZ7vdOaXQ9QSiKHvBL8jYAqq/niSlQfZR3JMnizrqsu
	iEW4g5qJ+TTyt/5yuf44xov2Iq2VvKBlN2JBnGRan/28oSeXTTvMWyhTEnVYZJHIp/dfiH3jWSS82
	lvx8B8jlr9lvnuPXrYyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVUEn-0002pM-Ql; Fri, 15 Nov 2019 05:33:41 +0000
Received: from mail-eopbgr1400091.outbound.protection.outlook.com
 ([40.107.140.91] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVUEc-0002iJ-Ji; Fri, 15 Nov 2019 05:33:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AHyMe8Qdb/jDcIyQQ3FFsQg18eP0uTejrY8N8QJSERGVVslmu0yigB4zEtK59d4CiXQKrEmx7OyWlznawXZDHtdqVIRRa3dwEsZACqcmRsmyrkF/Dhwsuup3l+kG7dKiWMnnOFvDBO2SRrPkwu6p7FGSYtQxDpEOVUkeXDI57EKZ3tn2VWV5vcr9nPOXn/DdxqMk2SKI7Ztx0kZkxkd8/NFnQe8leO9FPVLacVtVXQw8Vbw2Xk+jWdI1h9QqIum7P/YxtN9oNwQyBYPuJ7+xq2h4jFanp9QUtS+d9RUCyP0tpjJnQo7t/+NlX63PaMIJY2fML+PCplQ5NWygNKa7ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j/QjK9zXBEM2paHzNigaYicDA3fBZrq+OXX76JnzceQ=;
 b=coqxvdPX48/jQerU63eQFgWsrZOBPIGwXA0l1VWGviHIQcCzX6BYp4JUqGj7a8fz2ilmNL1vbCNzvjFTg4zcYs+moCC30MEGZYCOrSbxuKkKFPY9CAwE8A0PnizdvHRPKMWKSIQheMN8x7iVStut58Iomil1Fzx9jeTlHHClbe2qhGqJqpDp/PTY1GsM/kmSRXjr2aFKgPTjgvES/FHyxdAnbg8mCBxf97SNLQK4m5xCa0PbcP7noh+5VTFozx0eMqH+6c7FLeCmDFwBNMDbawVk/iB6+G00zuNOr4zBl0Nzfka1v/NA14GCAAezJ+RUhSLuTi7bH401JaP/STWH2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j/QjK9zXBEM2paHzNigaYicDA3fBZrq+OXX76JnzceQ=;
 b=lla8BEypY6/YMvfvnpPhKpraAytko8sjZPnxdruYcNgmI6Kfbl/fDBQ2qPUIawDpiH6ZV4N9TOoPxO7sv6lZSYMjpCwBt98riOhQb6EXbocJ18XVdyA1EJMwQEOcsVGpinRW3rpm09y1c4nhcUxhtZWyWWuy3p2SrSr8smkAO2M=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB3567.jpnprd01.prod.outlook.com (20.178.137.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.28; Fri, 15 Nov 2019 05:33:25 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::6998:f6cf:8cf1:2528]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::6998:f6cf:8cf1:2528%5]) with mapi id 15.20.2451.024; Fri, 15 Nov 2019
 05:33:25 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Felipe Balbi <balbi@kernel.org>
Subject: RE: [PATCH v3 10/13] usb: gadget: udc: renesas_usb3: create debugfs
 directory under usb root
Thread-Topic: [PATCH v3 10/13] usb: gadget: udc: renesas_usb3: create debugfs
 directory under usb root
Thread-Index: AQHVmtgjs6kjMfHecE2BmiNGnS0AxqeLtQfg
Date: Fri, 15 Nov 2019 05:33:24 +0000
Message-ID: <TYAPR01MB454479F91B948904C213B94CD8700@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1573728085-29016-1-git-send-email-chunfeng.yun@mediatek.com>
 <1573728085-29016-10-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1573728085-29016-10-git-send-email-chunfeng.yun@mediatek.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [150.249.235.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 24511005-60ea-49ab-79b8-08d7698d5624
x-ms-traffictypediagnostic: TYAPR01MB3567:|TYAPR01MB3567:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB35670C3A550C1E32635DEAE8D8700@TYAPR01MB3567.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02229A4115
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(346002)(136003)(39860400002)(376002)(189003)(199004)(6246003)(9686003)(66066001)(66476007)(66446008)(6116002)(71190400001)(71200400001)(14444005)(5660300002)(256004)(64756008)(66556008)(229853002)(8676002)(54906003)(4326008)(81166006)(8936002)(99286004)(55016002)(76116006)(6436002)(316002)(52536014)(110136005)(446003)(2906002)(14454004)(476003)(33656002)(11346002)(86362001)(7416002)(81156014)(7696005)(7406005)(486006)(186003)(478600001)(66946007)(74316002)(76176011)(26005)(7736002)(3846002)(305945005)(6506007)(25786009)(102836004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB3567;
 H:TYAPR01MB4544.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lITUcqsRnYn1Eq8AkwXsMuJODq58lGPlQ7BzIVEzJv8fbhc77IpzvaqDsr5A6YyJJ4dO3wBpj0d5ieXYSuRxMAwIw8cIVwDJL/CNWs8JmfA7RLHEU+6fneDk78YwkQGYf3CtdxWble0JaJvFLZ0SWpn9H1Fp8MKMzE01M6jPqVcPlD9FhQbWY9D1MmFK3SdpCdjPAGUuTOUvR2f84ROyCjTuGKAcUjqTF/vL03JPur8KiOaVQmQSdqOTfVCi8OsT3WxdAPSt0azxlQrHXkewTneRG0GVdF/44jnfJn/VQHMckns11A3qJlJUuBQPa01aNOvrnL3g5Y6178tgh8WXnc17kmnmMfMeun0PGdkgCFwRkGb5qVQv7fcjWbDWwuL5Sxy3VuhY2zMeztp+x5LeG6u2zdsO3YWWDyy0Q7yS7x44gsIVOpGAwyBZL5kYzAB8
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24511005-60ea-49ab-79b8-08d7698d5624
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2019 05:33:24.8893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9wlpzJ/d525cY5R6Qu6qCINh/DW+snSR94J4uPnLnNnC7ujaRZuDpr0shK1TFargAj9z31jtoOoH5kYtEiuVkeN5mTLzLLLymkryYsytu8mIjwj0+dsb0kcFzlhs/bFE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB3567
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_213330_804089_4E1B065F 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.91 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Peter Chen <Peter.Chen@nxp.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Yangtao Li <tiny.windzz@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Fabio Estevam <festevam@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Kevin Cernekee <cernekee@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, NXP Linux Team <linux-imx@nxp.com>,
 Cristian Birsan <cristian.birsan@microchip.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Stephen Boyd <swboyd@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Bin Liu <b-liu@ti.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Biju Das <biju.das@bp.renesas.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Colin Ian King <colin.king@canonical.com>, Shawn Guo <shawnguo@kernel.org>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Chunfeng-san,

> From: Chunfeng Yun, Sent: Thursday, November 14, 2019 7:41 PM
> 
> Now the USB gadget subsystem can use the USB debugfs root directory,
> so move it's directory from the root of the debugfs filesystem into
> the root of usb
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Thank you for the patch! When I apply this patch on the Greg's usb.git /
usb-next branch, the following warning happens:

$ patch -p1 < ~/Downloads/v3-10-13-usb-gadget-udc-renesas_usb3-create-debugfs-directory-under-usb-root.patch
patching file drivers/usb/gadget/udc/renesas_usb3.c
Hunk #1 succeeded at 2536 (offset 1 line).

I'm not sure we should fix it strictly though, this patch seems good to me. So,

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

And, I tested this patch on my environment and confirmed that
the debug file moved from /sys/kernel/debug to /sys/kernel/debug/usb. So,

Tested-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Best regards,
Yoshihiro Shimoda


> ---
> v3: no changes
> 
> v2:
>   1. abandon new API usb_debugfs_create_dir(), and use usb_debug_root
> ---
>  drivers/usb/gadget/udc/renesas_usb3.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/gadget/udc/renesas_usb3.c b/drivers/usb/gadget/udc/renesas_usb3.c
> index e098f16c01cb..4dde69e7f6b1 100644
> --- a/drivers/usb/gadget/udc/renesas_usb3.c
> +++ b/drivers/usb/gadget/udc/renesas_usb3.c
> @@ -2535,7 +2535,7 @@ static const struct file_operations renesas_usb3_b_device_fops = {
>  static void renesas_usb3_debugfs_init(struct renesas_usb3 *usb3,
>  				      struct device *dev)
>  {
> -	usb3->dentry = debugfs_create_dir(dev_name(dev), NULL);
> +	usb3->dentry = debugfs_create_dir(dev_name(dev), usb_debug_root);
> 
>  	debugfs_create_file("b_device", 0644, usb3->dentry, usb3,
>  			    &renesas_usb3_b_device_fops);
> --
> 2.23.0

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
