Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C63FA8241C
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 19:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:MIME-Version:To:
	Message-ID:References:In-Reply-To:Subject:From:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3J479Pk6GbiVGesBvelmfJ9QMsiHqlNva+t/ukrD8I4=; b=c3NONwpDXTY1iL
	TkSPv9wq2cFw18MwuGisi1LlJZgSDRBcNa4HUx4iswj+q6H1ovyNGEwl5uM5R1jpBKUWIJQvZhIL4
	EPZsZkVD4UVTS0gTAYTRStXCdfcQsXZbkjlT6ocu7n71tcZCwgjueUnud16zNgTF7VL1RYE4weIod
	ywDtssm5RbtVoRRe/0wlXRUoOlhcWioCR/k9BdSUTWE6MSgqqWx4wxDCPcSwzki4F7qSwBph2lrgl
	om0bqTSlKozDWlcOTYGNdW+cskPf1dcH+6QgdmOWViUo13bnKEDj3vrXpyzkd/S4f0Q9M5OltSEER
	nsUVWhj9sD/oSkhK2mww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugx0-0003e1-1m; Mon, 05 Aug 2019 17:39:14 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hugwv-0003dB-Er; Mon, 05 Aug 2019 17:39:10 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 74DB8C056807;
 Mon,  5 Aug 2019 17:39:06 +0000 (UTC)
Received: from rt4.app.eng.rdu2.redhat.com (rt4.app.eng.rdu2.redhat.com
 [10.10.161.56])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D7C3E5DA60;
 Mon,  5 Aug 2019 17:39:01 +0000 (UTC)
Received: from rt4.app.eng.rdu2.redhat.com (localhost [127.0.0.1])
 by rt4.app.eng.rdu2.redhat.com (8.14.4/8.14.4) with ESMTP id x75Hd0BJ023399;
 Mon, 5 Aug 2019 13:39:00 -0400
Received: (from apache@localhost)
 by rt4.app.eng.rdu2.redhat.com (8.14.4/8.14.4/Submit) id x75Hcnwa023396;
 Mon, 5 Aug 2019 13:38:49 -0400
From: Red Hat Product Security <secalert@redhat.com>
X-PGP-Public-Key: https://www.redhat.com/security/650d5882.txt
Subject: [engineering.redhat.com #494100] Question on submitting patch for a
 security bug
In-Reply-To: <CAJ7L_Gp2HJoFOVxTgakCJw3LMuiPY0+60-giOtw3OwRD6zyNTQ@mail.gmail.com>
References: <RT-Ticket-494100@engineering.redhat.com>
 <CAJ7L_Gp2HJoFOVxTgakCJw3LMuiPY0+60-giOtw3OwRD6zyNTQ@mail.gmail.com>
Message-ID: <rt-4.0.13-23214-1565026728-1358.494100-5-0@engineering.redhat.com>
Precedence: bulk
X-RT-Loop-Prevention: engineering.redhat.com
RT-Ticket: engineering.redhat.com #494100
Managed-BY: RT 4.0.13 (http://www.bestpractical.com/rt/)
RT-Originator: pjp@redhat.com
To: b.zolnierkie@samsung.com, bob.liu@oracle.com, chuck.lever@oracle.com,
 davem@davemloft.net, emamd001@umn.edu, gregkh@linuxfoundation.org,
 kubakici@wp.pl, kvalo@codeaurora.org, navid.emamdoost@gmail.com,
 sam@ravnborg.org
MIME-Version: 1.0
X-RT-Original-Encoding: utf-8
Date: Mon, 5 Aug 2019 13:38:48 -0400
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Mon, 05 Aug 2019 17:39:08 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_103909_541741_B08F8FDC 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Reply-To: secalert@redhat.com
Cc: kstewart@linuxfoundation.org, alexandre.belloni@bootlin.com,
 airlied@linux.ie, dri-devel@lists.freedesktop.org, bfields@fieldses.org,
 linux-ide@vger.kernel.org, thierry.reding@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, devel@driverdev.osuosl.org,
 joabreu@synopsys.com, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, jslaby@suse.com, matthias@redhat.com,
 alexandre.torgue@st.com, smccaman@umn.edu, kjlu@umn.edu, josef@toxicpanda.com,
 johnfwhitmore@gmail.com, nbd@other.debian.org, linux-block@vger.kernel.org,
 linux-mediatek@lists.infradead.org, nishkadg.linux@gmail.com,
 matthias.bgg@gmail.com, peppe.cavallaro@st.com, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, trond.myklebust@hammerspace.com,
 allison@lohutok.net, axboe@kernel.dk, mcoquelin.stm32@gmail.com,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 unglinuxdriver@microchip.com, vkoul@kernel.org, vishal@chelsio.com,
 daniel@ffwll.ch, colin.king@canonical.com, anna.schumaker@netapp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hello Navid,

On Thu, 18 Jul 2019 01:30:20 GMT, emamd001@umn.edu wrote:
> I've found a null dereference bug in the Linux kernel source code. I was
> wondering should I cc the patch to you as well (along with the
> maintainers)?

No. Please do not cc <secalert@redhat.com> on the upstream kernel patches.
It is meant for reporting security issues only.

Going through the patches here

1. Issues in ../staging/ drivers are not considered for CVE, they are not to be
used
in production environment.

2. Many of the patches listed fix NULL pointer dereference when memory
allocation
fails and returns NULL.

3. Do you happen to have reproducers for these issues? Could an unprivileged
user trigger them?

> Also, I was wondering what are the steps to get CVE for the bug (this is
> the first time I am reporting a bug)?

Generally CVE is assigned after confirming that a given issue really is a
security issue. And it may
have impact ranging from information leakage, DoS to privilege escalation or
maybe arbitrary code
execution. Every NULL pointer dereference is not security issue.


Hope it helps. Thank you.
---
Prasad J Pandit / Red Hat Product Security Team


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
