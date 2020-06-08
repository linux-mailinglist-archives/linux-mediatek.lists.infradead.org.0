Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 909A91F1A6A
	for <lists+linux-mediatek@lfdr.de>; Mon,  8 Jun 2020 15:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vSt4vc/CPBY/RsJ6zyuzehcCcuayz8bS0RHHAqf74ik=; b=FLyjMW2GdiPq7dltzJxLjEcNd
	J6nMiBDqZU8a2BirTN0JC6gRypxX3pJ7By5ng9qZulYKeJq06wnnahtQrfXPCUVg1A81PQ2auxXEw
	/SDbENA0gxcnz/Zp/cSUDyDXnbftWAbt5Zdg/7MX+xH0SdxmYCVC4ptzZipmCsMNiqPdJrGONAELO
	XLKaEfc1+FpgrPlPtQiE8ptgMhYOKt0Fl6XxOtDa8osbqzBsAilZNv9IqPxoSqSFe0/fFisrB/WzA
	VSJUUDLmNcWFKeMIhQovuD3r1FiCa36iVMUm4HJB9+08yzLvkB2+ELCxcrooxNfV2YOljUtwH/hZ5
	XerE/hSWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiIAQ-0005SI-8t; Mon, 08 Jun 2020 13:50:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiIA5-0002q4-6I; Mon, 08 Jun 2020 13:50:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E896831B;
 Mon,  8 Jun 2020 06:49:59 -0700 (PDT)
Received: from [10.37.12.95] (unknown [10.37.12.95])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A53A3F52E;
 Mon,  8 Jun 2020 06:49:56 -0700 (PDT)
Subject: Re: [PATCH v8 4/8] PM / EM: add support for other devices than CPUs
 in Energy Model
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200608115155.GY30374@kadam>
 <b347fb60-46d3-e59c-59fa-a2b10932fc49@arm.com> <20200608125127.GN22511@kadam>
 <da0debe1-73da-33f1-c24e-154c2123c522@arm.com> <20200608132507.GP22511@kadam>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <f52c83d1-8968-25a2-2d6f-f3eeceae15cb@arm.com>
Date: Mon, 8 Jun 2020 14:49:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200608132507.GP22511@kadam>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_065001_273476_2408B890 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kbuild-all@lists.01.org, lkp@intel.com, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, kbuild@lists.01.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 cw00.choi@samsung.com, linux-mediatek@lists.infradead.org, linux-imx@nxp.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, Dan Carpenter <error27@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 6/8/20 2:25 PM, Dan Carpenter wrote:
> It's not really a proper bug report so it doesn't deserve a reported-by.
> 
> Thanks, though!
> 
> regards,
> dan carpenter
> 

Thank you Dan for your work. This is very much appreciated!

Lukasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
