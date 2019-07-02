Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7615D088
	for <lists+linux-mediatek@lfdr.de>; Tue,  2 Jul 2019 15:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=376kGj9Qvjy94soY56EwtXfNgKH/YI10nTm/PD2AdpQ=; b=Qr4nKqHoaMYjk2
	bpCY4iyXcnKva2XY7qpzEbiBzhMcVChVurnMndu+VBLXtmkl5HuO3S/PiX3Y0Qlpyo2dK4jiOdEjH
	I+m6ZK2DqCNU5gB3dJdWMZaG9YfXj7ftUGRy+yY4j4+MD6y317T+9GpgPo4IkoLhcEOS1mw+Shxk5
	QmihUZhzu38V3hxs4goxjw0dwX5omflV3iPtGDrUIRZFUw4Ti2xy32rbuzkn5R1+XDJ2cq9h0BipC
	GKPbYRqClt4VM4YH2U2oUlAwF+mBJURVsOjmIIgKNMqV2l8xfSYLvQbD6D29BuUy0ejZ9B5tS2m9h
	yiXjYg9JbuJ59r5ROw4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiIlU-00056v-Tk; Tue, 02 Jul 2019 13:24:09 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIlA-0004ua-Gn; Tue, 02 Jul 2019 13:23:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4vVWFuLsHpIWVPpgwHNuzXCST8lBvsaqqrIguyqY5+I=; b=evOQZPp90942wbrSoURbVGwyAd
 xYvOl9kc49jpgfzfyuo92IfubYXYnX5+Ui904ENWMQnsj8iweMbMbxNHcK/MtnJloI480OunE8PFu
 e2ddWhoT1B2Iwb3swRWDaP1Jv45EHg9E9yt7yF+aJF7XB7dvICs24CQfE1wQoHDj6Orc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hiIl0-0005l5-1e; Tue, 02 Jul 2019 15:23:38 +0200
Date: Tue, 2 Jul 2019 15:23:38 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH 1/3] add doc and MAINTAINERS for poweroff
Message-ID: <20190702132338.GB20191@lunn.ch>
References: <20190702094045.3652-1-frank-w@public-files.de>
 <20190702094045.3652-2-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702094045.3652-2-frank-w@public-files.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_062348_715478_9890A25E 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 11:40:43AM +0200, Frank Wunderlich wrote:
> From: Josef Friedl <josef.friedl@speed.at>
> 
> poweroff for BPI-R2
> Suggested-by: Frank Wunderlich <frank-w@public-files.de>
> 
> Signed-off-by: Josef Friedl <josef.friedl@speed.at>

Hi Frank

This needs you own Signed-off-by as well. Anybody who touches the
patch, passes it upwards on the submitter/maintainer chain needs to
add there own SOB.

     Andrew


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
