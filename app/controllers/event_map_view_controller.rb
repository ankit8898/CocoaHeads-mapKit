class EventMapViewController < UIViewController

  attr_accessor :event


  def loadView    
    self.view = UIView.alloc.initWithFrame( UIScreen.mainScreen.bounds )
    self.view.backgroundColor = UIColor.whiteColor
  end
    

  def viewDidLoad    
    super       
    
    
    self.view.addSubview( segmentedControlWithMapOptions )
    self.view.addSubview( buttonToCloseScreen )   

    
  end



  def mapViewWithEventLocation
    
  end  

  

  def segmentedControlWithMapOptions
    segmented_control_with_map_options = UISegmentedControl.alloc.initWithItems(['Standard', 'Satellite', 'Hybrid'])
    segmented_control_with_map_options.frame = [[40, 400], [280,40]]
    segmented_control_with_map_options.addTarget(self,
                                       action:"switch_map_type:",
                                       forControlEvents:UIControlEventValueChanged)
    segmented_control_with_map_options.setEnabled(true, forSegmentAtIndex:0)
    segmented_control_with_map_options
  end  

  def buttonToCloseScreen
    close_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    close_button.setTitle("Close", forState:UIControlStateNormal)
    close_button.frame = [[250, 5], [60, 40]]
    close_button.addTarget(self, action:"close", forControlEvents:UIControlEventTouchUpInside)    
    close_button
  end  

  def switch_map_type(segmented_control)    
    
  end     

  def close
    self.view.removeFromSuperview
  end  

  def viewDidUnload
    super
    @map_view_for_event = nil
  end

  

  def shouldAutorotateToInterfaceOrientation(interfaceOrientation)
    interfaceOrientation == UIInterfaceOrientationPortrait
  end
end
