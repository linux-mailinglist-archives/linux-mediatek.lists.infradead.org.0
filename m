Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6613D5E012
	for <lists+linux-mediatek@lfdr.de>; Wed,  3 Jul 2019 10:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RoFKJhPAR/7vxnF/LroQxIpmnNlkNjC6/6VGPmwkfK0=; b=Zz+kttzViGfFtt
	fveDwWDseq9383va+RpESD5tmlPe25LDvlgRDhwsFEGvwl0/IbPn6dCEftfKa6q4ICQiAT1DtqTQ4
	xc71yfavl29FnYsB0Y6E7TRRkgMNmApABWDju+/3S51bi7y/0I2/AN9UfCyZL95u9gAqBNc6s5qzX
	nEcqJTBnJQTIs+72z/LbczGu+Sxin1hBrotJYavrY3s4uP7dVo92nhCGwg8hIJKE9tB/Km7GWoEou
	FmInUzsPjUdCSr+bdleDIbf1MKdpdc/DXu4DiqmQtOVptquzATshwD/CV19HjO8J7OHChi8H5WRl5
	A3I2/AUC1bzfZ504m1OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiar8-0007ao-Nk; Wed, 03 Jul 2019 08:43:10 +0000
Received: from smtprelay0125.hostedemail.com ([216.40.44.125]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiar4-0007aO-TI
 for linux-mediatek@lists.infradead.org; Wed, 03 Jul 2019 08:43:08 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 204E2283D;
 Wed,  3 Jul 2019 08:42:58 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:599:960:968:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:1981:2194:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3870:3871:3872:4321:4605:5007:7904:10004:10226:10400:10848:11232:11658:11914:12296:12297:12679:12740:12760:12895:13069:13311:13357:13439:14096:14097:14659:14721:21080:21451:21627:30054:30070:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: wing47_36df97e909a43
X-Filterd-Recvd-Size: 1658
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf10.hostedemail.com (Postfix) with ESMTPA;
 Wed,  3 Jul 2019 08:42:56 +0000 (UTC)
Message-ID: <be8a97c15249ff8a613910db5792c5bcdc75333c.camel@perches.com>
Subject: Re: [PATCH] checkpatch: avoid default n
From: Joe Perches <joe@perches.com>
To: Miles Chen <miles.chen@mediatek.com>, Andy Whitcroft <apw@canonical.com>
Date: Wed, 03 Jul 2019 01:42:55 -0700
In-Reply-To: <20190703083031.2950-1-miles.chen@mediatek.com>
References: <20190703083031.2950-1-miles.chen@mediatek.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_014307_014201_190ED0A4 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-07-03 at 16:30 +0800, Miles Chen wrote:
> This change reports a warning when "default n" is used.
> 
> I have seen several "remove default n" patches, so I think
> it might be helpful to add this test in checkpatch.
> 
> tested:
> WARNING: 'default n' is the default value, no need to write it explicitly.
> +       default n

I don't think this is reasonable as there are
several uses like:

		default y
		default n if <foo>

For instance:

arch/alpha/Kconfig-config ALPHA_WTINT
arch/alpha/Kconfig-     bool "Use WTINT" if ALPHA_SRM || ALPHA_GENERIC
arch/alpha/Kconfig-     default y if ALPHA_QEMU
arch/alpha/Kconfig:     default n if ALPHA_EV5 || ALPHA_EV56 || (ALPHA_EV4 && !ALPHA_LCA)
arch/alpha/Kconfig:     default n if !ALPHA_SRM && !ALPHA_GENERIC



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
