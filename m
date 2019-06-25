Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B72455254B
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 09:51:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Content-ID:MIME-Version
	:Subject:To:References:In-Reply-To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCQSD92yqVDonLppIiBuDV+I80C15vDa5F/IJr38eTE=; b=HXifK64OLSo0BO
	ALk68KmdZ1aUbMcO6ZLXQ70koYyrP2/KB1ui9f2hk+kKY2HxmPntfSqStVOotI39czRTesQv5CEPq
	O6dAbP+Ace/fyPQFSoERvBb7DVtYKNt2JBqvnE+3umetAdBGeNlKnh0SR69nED6L7xOYY9ru2C46X
	nE39451NDavy3Isg+hfzVci3HAb6On4Zkctog89Pp8Qao0H547XCfhfmxs9izd2b+3iFEz7op3klj
	b+ki2IaEIanXH0mbU0+NEzrlTipxc19h2NIYDKNHW12T4dWxsJVbs6sSR3T+5YiNUJ0O0pmbbf/KC
	xih6ETQufUhcECnUVvfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgF1-0006c9-BU; Tue, 25 Jun 2019 07:51:47 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgEs-0006Zg-9q; Tue, 25 Jun 2019 07:51:39 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D5019307D932;
 Tue, 25 Jun 2019 07:51:26 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-120-57.rdu2.redhat.com
 [10.10.120.57])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AC7AF6085B;
 Tue, 25 Jun 2019 07:51:02 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20190624165012.GH3436@hirez.programming.kicks-ass.net>
References: <20190624165012.GH3436@hirez.programming.kicks-ass.net>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [RFC][PATCH] wake_up_var() memory ordering
MIME-Version: 1.0
Content-ID: <32378.1561449061.1@warthog.procyon.org.uk>
Date: Tue, 25 Jun 2019 08:51:01 +0100
Message-ID: <32379.1561449061@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 25 Jun 2019 07:51:37 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_005138_469131_955D16DB 
X-CRM114-Status: GOOD (  17.74  )
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
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Martin Brandenburg <martin@omnibond.com>, linux-cachefs@redhat.com,
 Mike Snitzer <snitzer@redhat.com>, linux-aio@kvack.org,
 David Airlie <airlied@linux.ie>, samba-technical@lists.samba.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Will Deacon <will.deacon@arm.com>, dri-devel@lists.freedesktop.org,
 dhowells@redhat.com, Chris Mason <clm@fb.com>, dm-devel@redhat.com,
 keyrings@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 linux-afs@lists.infradead.org, Alasdair Kergon <agk@redhat.com>,
 Mike Marshall <hubcap@omnibond.com>, linux-cifs@vger.kernel.org,
 rds-devel@oss.oracle.com, Andreas Gruenbacher <agruenba@redhat.com>,
 linux-rdma@vger.kernel.org, James Morris <jmorris@namei.org>,
 cluster-devel@redhat.com, Antti Palosaari <crope@iki.fi>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Paul McKenney <paulmck@linux.vnet.ibm.com>, intel-gfx@lists.freedesktop.org,
 devel@lists.orangefs.org, "Serge E. Hallyn" <serge@hallyn.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, Marcel Holtmann <marcel@holtmann.org>,
 Sean Wang <sean.wang@mediatek.com>, Josef Bacik <josef@toxicpanda.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, linux-fsdevel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Sterba <dsterba@suse.com>,
 MauroCarvalho Chehab <mchehab@kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-arm-kernel@lists.infradead.org, "J. Bruce Fields" <bfields@fieldses.org>,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Steve French <sfrench@samba.org>,
 linux-bluetooth@vger.kernel.org, linux-security-module@vger.kernel.org,
 Benjamin LaHaise <bcrl@kvack.org>, Daniel Vetter <daniel@ffwll.ch>,
 Bob Peterson <rpeterso@redhat.com>, linux-media@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Peter Zijlstra <peterz@infradead.org> wrote:

> I tried using wake_up_var() today and accidentally noticed that it
> didn't imply an smp_mb() and specifically requires it through
> wake_up_bit() / waitqueue_active().

Thinking about it again, I'm not sure why you need to add the barrier when
wake_up() (which this is a wrapper around) is required to impose a barrier at
the front if there's anything to wake up (ie. the wait queue isn't empty).

If this is insufficient, does it make sense just to have wake_up*() functions
do an unconditional release or full barrier right at the front, rather than it
being conditional on something being woken up?

> @@ -619,9 +614,7 @@ static int dvb_usb_fe_sleep(struct dvb_frontend *fe)
>  err:
>  	if (!adap->suspend_resume_active) {
>  		adap->active_fe = -1;

I'm wondering if there's a missing barrier here.  Should the clear_bit() on
the next line be clear_bit_unlock() or clear_bit_release()?

> -		clear_bit(ADAP_SLEEP, &adap->state_bits);
> -		smp_mb__after_atomic();
> -		wake_up_bit(&adap->state_bits, ADAP_SLEEP);
> +		clear_and_wake_up_bit(ADAP_SLEEP, &adap->state_bits);
>  	}
>  
>  	dev_dbg(&d->udev->dev, "%s: ret=%d\n", __func__, ret);
> diff --git a/fs/afs/fs_probe.c b/fs/afs/fs_probe.c
> index cfe62b154f68..377ee07d5f76 100644
> --- a/fs/afs/fs_probe.c
> +++ b/fs/afs/fs_probe.c
> @@ -18,6 +18,7 @@ static bool afs_fs_probe_done(struct afs_server *server)
>  
>  	wake_up_var(&server->probe_outstanding);
>  	clear_bit_unlock(AFS_SERVER_FL_PROBING, &server->flags);
> +	smp_mb__after_atomic();
>  	wake_up_bit(&server->flags, AFS_SERVER_FL_PROBING);
>  	return true;
>  }

Looking at this and the dvb one, does it make sense to stick the release
semantics of clear_bit_unlock() into clear_and_wake_up_bit()?

Also, should clear_bit_unlock() be renamed to clear_bit_release() (and
similarly test_and_set_bit_lock() -> test_and_set_bit_acquire()) if we seem to
be trying to standardise on that terminology.

David

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
