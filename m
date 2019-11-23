Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D5210800A
	for <lists+linux-mediatek@lfdr.de>; Sat, 23 Nov 2019 19:39:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSBNpi1HheOT07xf6VZFkzy1y4kJ5ER8M42Av1mUtUc=; b=KoN3okHePOWvfs
	DQig65ns2FYnnYd7tH24vD+l7u5Vr9lzaRohrixmfZqgp9Hwo0otVIxSX+0MSF6+Mf4BYF8Pw2KpG
	vzDpexAC9JT+zZi9Tsa3K7fORXzbBRbQq5Wut7at5MNlnq44MN3ONCoROfTuluTcRtYiJGvJ9boCi
	XqlXpO35RY11NE7QF50cNA6lGuysmJuw+me+Mn9uftkgZQ7p2Ye2Rtn7eifKgBUZzmN2PZPR9SADE
	oHfrq477kwxYdLA0xW2MZs2KYk76fWllsptrrTBAQtu56W25jk9brO+Xa/ubXzFRSU/1i9GKcyPDd
	1pP8qgPC2o2cfx2OyACQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYaJ1-0000rs-6C; Sat, 23 Nov 2019 18:38:51 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYaIx-0000r7-IO
 for linux-mediatek@lists.infradead.org; Sat, 23 Nov 2019 18:38:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id 6so520102pgk.0
 for <linux-mediatek@lists.infradead.org>; Sat, 23 Nov 2019 10:38:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=nDRorgsBSVXUioZFMrZk0EkNmQVKU+AZrP50cmXnyC4=;
 b=uEsVTv/IY5hG62Wu9vwmfYFRVZtJMQEmvbpSxd8EASyANasSlZHDLbnv19sgBybHPZ
 sLaFJZ4ptRzpx2pp8bzaDde5oUsHabEPhJbnYrt8i/cBsmVfH40RjfsGk4MNOWiUF9e0
 p8b0FNKNG2LJhSAXzZGlcy2QGKRkFwep6PbcXeYJxDW2ICh5V5aFtBne8QHoXwSBmeTb
 VOWx7vsReEMXwyuVr4A7IBBksaZ2w0+u512zQ3uiZgWpiuk+uwyT4RU+vS1D9XA58mGM
 j527Jxpoegjg53FzKsvTEvOfUlUWr1ykfKHB1GNaYEGCPObTDePqloRawIEjCkgB6ibX
 NWcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=nDRorgsBSVXUioZFMrZk0EkNmQVKU+AZrP50cmXnyC4=;
 b=V9HyVMCXwE/HdH7DwyZBBfZFeXi3c5MtEzvSoyvauCHfDQ4HVuJ0S/oXFn6d8xYZRQ
 JKKfoK/qB00Pnl/E74t9OR9x5YeV0XgLyaCpZY6h8HgHc00VUYKk9yR1reLDYRh0zX4s
 4VNHMiSi3BSBhgFqnU+ysyxU9yDgwh8DHsH/imuvKaeC7siYL7yV10ip0xqdkmtUn6w6
 cPQHAF9qM8PvP/sTE7TjEk6lQdoohK23ENYPlt+ZvuimgQjd24tO6IdQL3IYL7Sdm2uN
 o90EZlaZs9qKW/Bqa1oJYQNkLvIpZ0e6lbe1MhPpDBE9Zalxb30zQV62cgREYKuWXkzi
 9Bjw==
X-Gm-Message-State: APjAAAVZeypGzn4Y1A3Bb38oBxxf6AB3SYhKvkTDAr4wl1BCldcH2nHt
 7GxapXyClHUGq3i+/UA43Q0reA==
X-Google-Smtp-Source: APXvYqz1czMH9OjFLmttmObRqksQ19SQZuwNAxgR+QJ3jRnmZqw4PC8qOzxHsQAhx9c2AwtLrQZJyw==
X-Received: by 2002:a62:6404:: with SMTP id y4mr24169935pfb.170.1574534326304; 
 Sat, 23 Nov 2019 10:38:46 -0800 (PST)
Received: from cakuba.netronome.com (c-73-202-202-92.hsd1.ca.comcast.net.
 [73.202.202.92])
 by smtp.gmail.com with ESMTPSA id v3sm2350025pfn.129.2019.11.23.10.38.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 10:38:45 -0800 (PST)
Date: Sat, 23 Nov 2019 10:38:40 -0800
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Florian Fainelli
 <f.fainelli@gmail.com>
Subject: Re: [CFT PATCH net-next v2] net: phylink: rename mac_link_state()
 op to mac_pcs_get_state()
Message-ID: <20191123103840.76c5d63f@cakuba.netronome.com>
In-Reply-To: <20191122092136.GJ25745@shell.armlinux.org.uk>
References: <E1iXaSM-0004t1-9L@rmk-PC.armlinux.org.uk>
 <20191121.191417.1339124115325210078.davem@davemloft.net>
 <0a9e016b-4ee3-1f1c-0222-74180f130e6c@gmail.com>
 <20191122092136.GJ25745@shell.armlinux.org.uk>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_103847_611937_0132D672 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, nbd@openwrt.org, sean.wang@mediatek.com,
 alexandre.torgue@st.com, netdev@vger.kernel.org, peppe.cavallaro@st.com,
 radhey.shyam.pandey@xilinx.com, michal.simek@xilinx.com,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 joabreu@synopsys.com, linux-mediatek@lists.infradead.org,
 thomas.petazzoni@bootlin.com, john@phrozen.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com, hkallweit1@gmail.com,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Mark-MC.Lee@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 22 Nov 2019 09:21:37 +0000, Russell King - ARM Linux admin
wrote:
> On Thu, Nov 21, 2019 at 07:36:44PM -0800, Florian Fainelli wrote:
> > Russell, which of this patch or: http://patchwork.ozlabs.org/patch/1197425/
> > 
> > would you consider worthy of merging?  
> 
> Let's go with v2 for now - it gets the rename done with less risk that
> there'll be a problem.  I can always do the remainder in a separate
> patch after the merge window as a separate patch.

Florian, I assume you asked because you wanted to do some testing?
Please let me know if you need more time, otherwise I'll apply this
later today.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
